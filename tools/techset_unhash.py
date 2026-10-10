"""CoD techset unhasher.

Collects the techset hashes (techset_<hash>) from Saluki _mat_info exports and tries to recover their names.

Hash: 64-bit FNV-1a, 63-bit mask, two offset bases seen in modern CoD:
    std  0xCBF29CE484222325   (Saluki's cod_techsets table)
    iw   0x47F5817A5EF961BA   (BO7 image / asset names: $black, $white, wpn_default_thermal ...)
Names are tried as-is and, Treyarch style, as <name>#<8 hex permutation code>. The code is found by meeting in the
middle (FNV-1a is invertible), so all 4.3 billion codes of a base name are searched in milliseconds.

Usage:
    python techset_unhash.py EXPORT_DIR [EXPORT_DIR ...] [--words FILE ...] [--saluki HASH_PKG_DIR]
                             [--prefixes "" mc/ mcs/ wc/ m/] [--out found.csv]
    python techset_unhash.py --check NAME          # print a name's hashes

Word sources: every name in --words files (one per line), plus Saluki's cod_techsets.cdb / cod_semantics.cdb when
--saluki points at its hash_pkg folder. Each base is combined with every --prefix.
"""
import argparse
import csv
import glob
import os
import re
import struct
import sys
import time

import numpy as np

P = 0x100000001B3
M63 = (1 << 63) - 1
P_INV = pow(P, -1, 1 << 63)
BASES = {"std": 0xCBF29CE484222325, "iw": 0x47F5817A5EF961BA}


# ---- Saluki hash packages (.cdb): "PNDB", count, compressed size, size, LZ4 block of names + u64 hashes ------

def _lz4_block(src, out_size):
    dst = bytearray()
    i, n = 0, len(src)
    while i < n:
        tok = src[i]; i += 1
        lit = tok >> 4
        if lit == 15:
            while True:
                b = src[i]; i += 1; lit += b
                if b != 255:
                    break
        dst += src[i:i + lit]; i += lit
        if i >= n:
            break
        off = src[i] | (src[i + 1] << 8); i += 2
        ml = tok & 15
        if ml == 15:
            while True:
                b = src[i]; i += 1; ml += b
                if b != 255:
                    break
        start = len(dst) - off
        for k in range(ml + 4):
            dst.append(dst[start + k])
    return bytes(dst[:out_size])


def read_pndb(path):
    """(names, hashes) of a Saluki .cdb hash package."""
    b = open(path, "rb").read()
    magic, count, csize, usize = struct.unpack_from("<4sIII", b)
    if magic != b"PNDB":
        raise ValueError("%s is not a PNDB package" % path)
    data = _lz4_block(b[16:16 + csize], usize)
    names, pos = [], 0
    for _ in range(count):
        end = data.index(b"\0", pos)
        names.append(data[pos:end].decode("utf-8", "replace"))
        pos = end + 1
    rest = data[pos:]
    hashes = list(struct.unpack_from("<%dQ" % count, rest)) if len(rest) >= 8 * count else []
    return names, hashes


# ---- hashing -------------------------------------------------------------------------------------------------

def fnv63(data, basis):
    x = basis & M63
    for c in data:
        x = ((x ^ c) * P) & M63
    return x


_HEX = np.frombuffer(b"0123456789abcdef", dtype=np.uint8).astype(np.uint64)
_IDX = np.arange(65536, dtype=np.uint64)
_COMBOS = np.stack([_HEX[(_IDX >> np.uint64(s)) & np.uint64(15)] for s in (12, 8, 4, 0)], axis=1)
_Pn, _PIn, _Mn = np.uint64(P), np.uint64(P_INV), np.uint64(M63)


def _code(i):
    return "".join("0123456789abcdef"[(int(i) >> s) & 15] for s in (12, 8, 4, 0))


def _backward_table(targets):
    t = np.array(sorted(targets), dtype=np.uint64)
    x = np.repeat(t, 65536)
    combo = np.tile(np.arange(65536, dtype=np.uint32), len(t))
    digits = _COMBOS[combo]
    for k in (3, 2, 1, 0):
        x = ((x * _PIn) & _Mn) ^ digits[:, k]
    order = np.argsort(x, kind="stable")
    return x[order], np.repeat(np.arange(len(t)), 65536)[order], combo[order], t


def search(names, targets, variants=("std", "iw"), progress=None):
    """{target hash: (name, variant)} for names tried plain and as name#<8 hex>."""
    targets = set(targets)
    found = {}
    for var in variants:
        basis = BASES[var]
        for name in names:
            h = fnv63(name.encode(), basis)
            if h in targets:
                found[h] = (name, var)
    if not targets:
        return found
    bx, bt, bc, tarr = _backward_table(targets)
    for var in variants:
        basis = BASES[var]
        for n_i, name in enumerate(names):
            x = np.full(65536, fnv63((name + "#").encode(), basis), dtype=np.uint64)
            for k in range(4):
                x = ((x ^ _COMBOS[:, k]) * _Pn) & _Mn
            pos = np.minimum(np.searchsorted(bx, x), len(bx) - 1)
            for fi in np.nonzero(bx[pos] == x)[0]:
                j = pos[fi]
                while j < len(bx) and bx[j] == x[fi]:
                    full = "%s#%s%s" % (name, _code(fi), _code(bc[j]))
                    target = int(tarr[bt[j]])
                    if fnv63(full.encode(), basis) == target:
                        found[target] = (full, var)
                    j += 1
            if progress and n_i % 500 == 0:
                progress(var, n_i, len(names), len(found))
    return found


# ---- exports -------------------------------------------------------------------------------------------------

def export_techsets(dirs):
    """{hash: set of material names} from techset_<hash> lines in _mat_info files under dirs."""
    out = {}
    for root in dirs:
        for txt in glob.glob(os.path.join(root, "**", "_mat_info", "*.txt"), recursive=True):
            with open(txt, encoding="utf-8", errors="replace") as f:
                for line in f:
                    m = re.match(r"Techset:\s*techset_([0-9a-fA-F]+)", line.strip())
                    if m:
                        out.setdefault(int(m.group(1), 16), set()).add(os.path.basename(txt)[:-4])
    return out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("exports", nargs="*", help="Saluki export folders (searched recursively for _mat_info)")
    ap.add_argument("--words", nargs="*", default=[], help="text files with candidate names, one per line")
    ap.add_argument("--saluki", help="Saluki hash_pkg folder: adds cod_techsets / cod_semantics names")
    ap.add_argument("--prefixes", nargs="*", default=["", "mc/", "mcs/", "wc/", "m/"])
    ap.add_argument("--variants", nargs="*", default=["std", "iw"], choices=sorted(BASES))
    ap.add_argument("--out", default="techsets_found.csv")
    ap.add_argument("--check", help="print the hashes of one name and exit")
    a = ap.parse_args(argv)

    if a.check:
        for var, basis in BASES.items():
            print("%-4s %016x  %s" % (var, fnv63(a.check.lower().encode(), basis), a.check.lower()))
        return 0
    targets = export_techsets(a.exports)
    if not targets:
        print("no techset_<hash> lines found in", a.exports)
        return 1
    bases = set()
    for w in a.words:
        with open(w, encoding="utf-8", errors="replace") as f:
            bases.update(line.strip().lower() for line in f if line.strip())
    if a.saluki:
        for pkg in ("cod_techsets.cdb", "cod_semantics.cdb"):
            p = os.path.join(a.saluki, pkg)
            if os.path.exists(p):
                bases.update(n.lower() for n in read_pndb(p)[0])
    stems = {b.split("#")[0].split("/")[-1] for b in bases}
    cands = sorted({pre + s for s in stems for pre in a.prefixes} | {b.split("#")[0] for b in bases})
    print("%d techsets in the exports, %d candidate names" % (len(targets), len(cands)))
    t0 = time.time()
    found = search(cands, set(targets), a.variants,
                   progress=lambda v, i, n, f: print("  %s %d/%d  found %d" % (v, i, n, f), end="\r"))
    print("\nfound %d / %d in %.0fs" % (len(found), len(targets), time.time() - t0))
    with open(a.out, "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["hash", "name", "variant", "example materials"])
        for h in sorted(targets):
            name, var = found.get(h, ("", ""))
            w.writerow(["techset_%016x" % h, name, var, " ".join(sorted(targets[h])[:5])])
    print("wrote", os.path.abspath(a.out))
    return 0


if __name__ == "__main__":
    sys.exit(main())
