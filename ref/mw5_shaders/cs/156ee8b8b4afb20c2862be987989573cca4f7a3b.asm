;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: e6fc563bd4ae1d2c139f3026441762c6
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture     u32         buf      T1             t8     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GfxDynLightProbeShared = type { <3 x i32>, i32, i32, i32, i32, i32 }
%GfxDynLightProbeOpt = type { i32, i32, i32, i32 }

define void @cs_probes_opt_copy() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %506, !dx.controlflow.hints !17

; <label>:10                                      ; preds = %0
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %13 = add i32 %12, %6
  %14 = shl i32 %13, 5
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = extractvalue %dx.types.ResRet.i32 %15, 1
  %18 = extractvalue %dx.types.ResRet.i32 %15, 2
  %19 = extractvalue %dx.types.ResRet.i32 %15, 3
  %20 = or i32 %14, 16
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = extractvalue %dx.types.ResRet.i32 %21, 1
  %24 = extractvalue %dx.types.ResRet.i32 %21, 2
  %25 = extractvalue %dx.types.ResRet.i32 %21, 3
  %26 = shl i32 %16, 4
  %27 = and i32 %26, 32752
  %28 = call float @dx.op.legacyF16ToF32(i32 131, i32 %27)  ; LegacyF16ToF32(value)
  %29 = lshr i32 %16, 7
  %30 = and i32 %29, 32752
  %31 = call float @dx.op.legacyF16ToF32(i32 131, i32 %30)  ; LegacyF16ToF32(value)
  %32 = lshr i32 %16, 22
  %33 = shl nuw nsw i32 %32, 5
  %34 = call float @dx.op.legacyF16ToF32(i32 131, i32 %33)  ; LegacyF16ToF32(value)
  %35 = and i32 %17, 255
  %36 = uitofp i32 %35 to float
  %37 = fmul fast float %36, 0x3F80204080000000
  %38 = fadd fast float %37, -1.000000e+00
  %39 = lshr i32 %17, 8
  %40 = and i32 %39, 255
  %41 = uitofp i32 %40 to float
  %42 = fmul fast float %41, 0x3F80204080000000
  %43 = fadd fast float %42, -1.000000e+00
  %44 = lshr i32 %17, 16
  %45 = and i32 %44, 255
  %46 = uitofp i32 %45 to float
  %47 = fmul fast float %46, 0x3F80204080000000
  %48 = fadd fast float %47, -1.000000e+00
  %49 = lshr i32 %17, 24
  %50 = uitofp i32 %49 to float
  %51 = fmul fast float %50, 0x3F80204080000000
  %52 = fadd fast float %51, -1.000000e+00
  %53 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %54 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %55 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %56 = call float @dx.op.unary.f32(i32 6, float %52)  ; FAbs(value)
  %57 = and i32 %18, 255
  %58 = uitofp i32 %57 to float
  %59 = fmul fast float %58, 0x3F80204080000000
  %60 = fadd fast float %59, -1.000000e+00
  %61 = lshr i32 %18, 8
  %62 = and i32 %61, 255
  %63 = uitofp i32 %62 to float
  %64 = fmul fast float %63, 0x3F80204080000000
  %65 = fadd fast float %64, -1.000000e+00
  %66 = lshr i32 %18, 16
  %67 = and i32 %66, 255
  %68 = uitofp i32 %67 to float
  %69 = fmul fast float %68, 0x3F80204080000000
  %70 = fadd fast float %69, -1.000000e+00
  %71 = lshr i32 %18, 24
  %72 = uitofp i32 %71 to float
  %73 = fmul fast float %72, 0x3F80204080000000
  %74 = fadd fast float %73, -1.000000e+00
  %75 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %76 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %77 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %78 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %79 = and i32 %19, 255
  %80 = uitofp i32 %79 to float
  %81 = fmul fast float %80, 0x3F80204080000000
  %82 = fadd fast float %81, -1.000000e+00
  %83 = lshr i32 %19, 8
  %84 = and i32 %83, 255
  %85 = uitofp i32 %84 to float
  %86 = fmul fast float %85, 0x3F80204080000000
  %87 = fadd fast float %86, -1.000000e+00
  %88 = lshr i32 %19, 16
  %89 = and i32 %88, 255
  %90 = uitofp i32 %89 to float
  %91 = fmul fast float %90, 0x3F80204080000000
  %92 = fadd fast float %91, -1.000000e+00
  %93 = lshr i32 %19, 24
  %94 = uitofp i32 %93 to float
  %95 = fmul fast float %94, 0x3F80204080000000
  %96 = fadd fast float %95, -1.000000e+00
  %97 = call float @dx.op.unary.f32(i32 6, float %82)  ; FAbs(value)
  %98 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %99 = call float @dx.op.unary.f32(i32 6, float %92)  ; FAbs(value)
  %100 = call float @dx.op.unary.f32(i32 6, float %96)  ; FAbs(value)
  %101 = and i32 %22, 255
  %102 = uitofp i32 %101 to float
  %103 = fmul fast float %102, 0x3F80204080000000
  %104 = fadd fast float %103, -1.000000e+00
  %105 = lshr i32 %22, 8
  %106 = and i32 %105, 255
  %107 = uitofp i32 %106 to float
  %108 = fmul fast float %107, 0x3F80204080000000
  %109 = fadd fast float %108, -1.000000e+00
  %110 = lshr i32 %22, 16
  %111 = and i32 %110, 255
  %112 = uitofp i32 %111 to float
  %113 = fmul fast float %112, 0x3F80204080000000
  %114 = fadd fast float %113, -1.000000e+00
  %115 = lshr i32 %22, 24
  %116 = uitofp i32 %115 to float
  %117 = fmul fast float %116, 0x3F80204080000000
  %118 = fadd fast float %117, -1.000000e+00
  %119 = call float @dx.op.unary.f32(i32 6, float %104)  ; FAbs(value)
  %120 = call float @dx.op.unary.f32(i32 6, float %109)  ; FAbs(value)
  %121 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %122 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %123 = and i32 %23, 255
  %124 = uitofp i32 %123 to float
  %125 = fmul fast float %124, 0x3F80204080000000
  %126 = fadd fast float %125, -1.000000e+00
  %127 = lshr i32 %23, 8
  %128 = and i32 %127, 255
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %129, 0x3F80204080000000
  %131 = fadd fast float %130, -1.000000e+00
  %132 = lshr i32 %23, 16
  %133 = and i32 %132, 255
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %134, 0x3F80204080000000
  %136 = fadd fast float %135, -1.000000e+00
  %137 = lshr i32 %23, 24
  %138 = uitofp i32 %137 to float
  %139 = fmul fast float %138, 0x3F80204080000000
  %140 = fadd fast float %139, -1.000000e+00
  %141 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %142 = call float @dx.op.unary.f32(i32 6, float %131)  ; FAbs(value)
  %143 = call float @dx.op.unary.f32(i32 6, float %136)  ; FAbs(value)
  %144 = call float @dx.op.unary.f32(i32 6, float %140)  ; FAbs(value)
  %145 = and i32 %24, 255
  %146 = uitofp i32 %145 to float
  %147 = fmul fast float %146, 0x3F80204080000000
  %148 = fadd fast float %147, -1.000000e+00
  %149 = lshr i32 %24, 8
  %150 = and i32 %149, 255
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %151, 0x3F80204080000000
  %153 = fadd fast float %152, -1.000000e+00
  %154 = lshr i32 %24, 16
  %155 = and i32 %154, 255
  %156 = uitofp i32 %155 to float
  %157 = fmul fast float %156, 0x3F80204080000000
  %158 = fadd fast float %157, -1.000000e+00
  %159 = lshr i32 %24, 24
  %160 = uitofp i32 %159 to float
  %161 = fmul fast float %160, 0x3F80204080000000
  %162 = fadd fast float %161, -1.000000e+00
  %163 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %164 = call float @dx.op.unary.f32(i32 6, float %153)  ; FAbs(value)
  %165 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %166 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %167 = lshr i32 %25, 8
  %168 = and i32 %167, 255
  %169 = uitofp i32 %168 to float
  %170 = fmul fast float %169, 0x3F70101020000000
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %13, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 0
  %175 = add i32 %174, %172
  %176 = call i32 @dx.op.legacyF32ToF16(i32 130, float %28)  ; LegacyF32ToF16(value)
  %177 = call i32 @dx.op.legacyF32ToF16(i32 130, float %31)  ; LegacyF32ToF16(value)
  %178 = call i32 @dx.op.legacyF32ToF16(i32 130, float %34)  ; LegacyF32ToF16(value)
  %179 = lshr i32 %176, 4
  %180 = and i32 %179, 2047
  %181 = shl i32 %177, 7
  %182 = and i32 %181, 4192256
  %183 = or i32 %182, %180
  %184 = lshr i32 %178, 5
  %185 = shl i32 %184, 22
  %186 = or i32 %183, %185
  %187 = fcmp fast ogt float %28, 0.000000e+00
  %188 = fdiv fast float 1.000000e+00, %28
  %189 = select i1 %187, float %188, float 0.000000e+00
  %190 = fcmp fast ogt float %31, 0.000000e+00
  %191 = fdiv fast float 1.000000e+00, %31
  %192 = select i1 %190, float %191, float 0.000000e+00
  %193 = fcmp fast ogt float %34, 0.000000e+00
  %194 = fdiv fast float 1.000000e+00, %34
  %195 = select i1 %193, float %194, float 0.000000e+00
  %196 = fmul fast float %28, 0x3FEFFFFFE0000000
  %197 = fmul fast float %196, %38
  %198 = fmul fast float %197, %53
  %199 = fmul fast float %198, %189
  %200 = fmul fast float %196, %43
  %201 = fmul fast float %200, %54
  %202 = fmul fast float %201, %189
  %203 = fmul fast float %196, %48
  %204 = fmul fast float %203, %55
  %205 = fmul fast float %204, %189
  %206 = fmul fast float %28, %52
  %207 = fmul fast float %206, %56
  %208 = fmul fast float %207, %189
  %209 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %210 = call float @dx.op.unary.f32(i32 6, float %202)  ; FAbs(value)
  %211 = call float @dx.op.unary.f32(i32 6, float %205)  ; FAbs(value)
  %212 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %213 = call float @dx.op.unary.f32(i32 7, float %209)  ; Saturate(value)
  %214 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %215 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %216 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %217 = fcmp fast olt float %199, 0.000000e+00
  %218 = fsub fast float -0.000000e+00, %213
  %219 = select i1 %217, float %218, float %213
  %220 = fcmp fast olt float %202, 0.000000e+00
  %221 = fsub fast float -0.000000e+00, %214
  %222 = select i1 %220, float %221, float %214
  %223 = fcmp fast olt float %205, 0.000000e+00
  %224 = fsub fast float -0.000000e+00, %215
  %225 = select i1 %223, float %224, float %215
  %226 = fcmp fast olt float %208, 0.000000e+00
  %227 = fsub fast float -0.000000e+00, %216
  %228 = select i1 %226, float %227, float %216
  %229 = fmul fast float %219, 1.270000e+02
  %230 = fmul fast float %222, 1.270000e+02
  %231 = fmul fast float %225, 1.270000e+02
  %232 = fmul fast float %228, 1.270000e+02
  %233 = fadd fast float %229, 1.275000e+02
  %234 = fadd fast float %230, 1.275000e+02
  %235 = fadd fast float %231, 1.275000e+02
  %236 = fadd fast float %232, 1.275000e+02
  %237 = fptoui float %233 to i32
  %238 = fptoui float %234 to i32
  %239 = fptoui float %235 to i32
  %240 = fptoui float %236 to i32
  %241 = shl i32 %238, 8
  %242 = or i32 %241, %237
  %243 = shl i32 %239, 16
  %244 = or i32 %242, %243
  %245 = shl i32 %240, 24
  %246 = or i32 %244, %245
  %247 = fmul fast float %28, %60
  %248 = fmul fast float %247, %75
  %249 = fmul fast float %248, %189
  %250 = fmul fast float %28, %65
  %251 = fmul fast float %250, %76
  %252 = fmul fast float %251, %189
  %253 = fmul fast float %28, %70
  %254 = fmul fast float %253, %77
  %255 = fmul fast float %254, %189
  %256 = fmul fast float %28, %74
  %257 = fmul fast float %256, %78
  %258 = fmul fast float %257, %189
  %259 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %260 = call float @dx.op.unary.f32(i32 6, float %252)  ; FAbs(value)
  %261 = call float @dx.op.unary.f32(i32 6, float %255)  ; FAbs(value)
  %262 = call float @dx.op.unary.f32(i32 6, float %258)  ; FAbs(value)
  %263 = call float @dx.op.unary.f32(i32 7, float %259)  ; Saturate(value)
  %264 = call float @dx.op.unary.f32(i32 7, float %260)  ; Saturate(value)
  %265 = call float @dx.op.unary.f32(i32 7, float %261)  ; Saturate(value)
  %266 = call float @dx.op.unary.f32(i32 7, float %262)  ; Saturate(value)
  %267 = fcmp fast olt float %249, 0.000000e+00
  %268 = fsub fast float -0.000000e+00, %263
  %269 = select i1 %267, float %268, float %263
  %270 = fcmp fast olt float %252, 0.000000e+00
  %271 = fsub fast float -0.000000e+00, %264
  %272 = select i1 %270, float %271, float %264
  %273 = fcmp fast olt float %255, 0.000000e+00
  %274 = fsub fast float -0.000000e+00, %265
  %275 = select i1 %273, float %274, float %265
  %276 = fcmp fast olt float %258, 0.000000e+00
  %277 = fsub fast float -0.000000e+00, %266
  %278 = select i1 %276, float %277, float %266
  %279 = fmul fast float %269, 1.270000e+02
  %280 = fmul fast float %272, 1.270000e+02
  %281 = fmul fast float %275, 1.270000e+02
  %282 = fmul fast float %278, 1.270000e+02
  %283 = fadd fast float %279, 1.275000e+02
  %284 = fadd fast float %280, 1.275000e+02
  %285 = fadd fast float %281, 1.275000e+02
  %286 = fadd fast float %282, 1.275000e+02
  %287 = fptoui float %283 to i32
  %288 = fptoui float %284 to i32
  %289 = fptoui float %285 to i32
  %290 = fptoui float %286 to i32
  %291 = shl i32 %288, 8
  %292 = or i32 %291, %287
  %293 = shl i32 %289, 16
  %294 = or i32 %292, %293
  %295 = shl i32 %290, 24
  %296 = or i32 %294, %295
  %297 = fmul fast float %31, 0x3FEFFFFFE0000000
  %298 = fmul fast float %297, %82
  %299 = fmul fast float %298, %97
  %300 = fmul fast float %299, %192
  %301 = fmul fast float %297, %87
  %302 = fmul fast float %301, %98
  %303 = fmul fast float %302, %192
  %304 = fmul fast float %297, %92
  %305 = fmul fast float %304, %99
  %306 = fmul fast float %305, %192
  %307 = fmul fast float %31, %96
  %308 = fmul fast float %307, %100
  %309 = fmul fast float %308, %192
  %310 = call float @dx.op.unary.f32(i32 6, float %300)  ; FAbs(value)
  %311 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %312 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %313 = call float @dx.op.unary.f32(i32 6, float %309)  ; FAbs(value)
  %314 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %315 = call float @dx.op.unary.f32(i32 7, float %311)  ; Saturate(value)
  %316 = call float @dx.op.unary.f32(i32 7, float %312)  ; Saturate(value)
  %317 = call float @dx.op.unary.f32(i32 7, float %313)  ; Saturate(value)
  %318 = fcmp fast olt float %300, 0.000000e+00
  %319 = fsub fast float -0.000000e+00, %314
  %320 = select i1 %318, float %319, float %314
  %321 = fcmp fast olt float %303, 0.000000e+00
  %322 = fsub fast float -0.000000e+00, %315
  %323 = select i1 %321, float %322, float %315
  %324 = fcmp fast olt float %306, 0.000000e+00
  %325 = fsub fast float -0.000000e+00, %316
  %326 = select i1 %324, float %325, float %316
  %327 = fcmp fast olt float %309, 0.000000e+00
  %328 = fsub fast float -0.000000e+00, %317
  %329 = select i1 %327, float %328, float %317
  %330 = fmul fast float %320, 1.270000e+02
  %331 = fmul fast float %323, 1.270000e+02
  %332 = fmul fast float %326, 1.270000e+02
  %333 = fmul fast float %329, 1.270000e+02
  %334 = fadd fast float %330, 1.275000e+02
  %335 = fadd fast float %331, 1.275000e+02
  %336 = fadd fast float %332, 1.275000e+02
  %337 = fadd fast float %333, 1.275000e+02
  %338 = fptoui float %334 to i32
  %339 = fptoui float %335 to i32
  %340 = fptoui float %336 to i32
  %341 = fptoui float %337 to i32
  %342 = shl i32 %339, 8
  %343 = or i32 %342, %338
  %344 = shl i32 %340, 16
  %345 = or i32 %343, %344
  %346 = shl i32 %341, 24
  %347 = or i32 %345, %346
  %348 = fmul fast float %31, %104
  %349 = fmul fast float %348, %119
  %350 = fmul fast float %349, %192
  %351 = fmul fast float %31, %109
  %352 = fmul fast float %351, %120
  %353 = fmul fast float %352, %192
  %354 = fmul fast float %31, %114
  %355 = fmul fast float %354, %121
  %356 = fmul fast float %355, %192
  %357 = fmul fast float %31, %118
  %358 = fmul fast float %357, %122
  %359 = fmul fast float %358, %192
  %360 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %361 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %362 = call float @dx.op.unary.f32(i32 6, float %356)  ; FAbs(value)
  %363 = call float @dx.op.unary.f32(i32 6, float %359)  ; FAbs(value)
  %364 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %365 = call float @dx.op.unary.f32(i32 7, float %361)  ; Saturate(value)
  %366 = call float @dx.op.unary.f32(i32 7, float %362)  ; Saturate(value)
  %367 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %368 = fcmp fast olt float %350, 0.000000e+00
  %369 = fsub fast float -0.000000e+00, %364
  %370 = select i1 %368, float %369, float %364
  %371 = fcmp fast olt float %353, 0.000000e+00
  %372 = fsub fast float -0.000000e+00, %365
  %373 = select i1 %371, float %372, float %365
  %374 = fcmp fast olt float %356, 0.000000e+00
  %375 = fsub fast float -0.000000e+00, %366
  %376 = select i1 %374, float %375, float %366
  %377 = fcmp fast olt float %359, 0.000000e+00
  %378 = fsub fast float -0.000000e+00, %367
  %379 = select i1 %377, float %378, float %367
  %380 = fmul fast float %370, 1.270000e+02
  %381 = fmul fast float %373, 1.270000e+02
  %382 = fmul fast float %376, 1.270000e+02
  %383 = fmul fast float %379, 1.270000e+02
  %384 = fadd fast float %380, 1.275000e+02
  %385 = fadd fast float %381, 1.275000e+02
  %386 = fadd fast float %382, 1.275000e+02
  %387 = fadd fast float %383, 1.275000e+02
  %388 = fptoui float %384 to i32
  %389 = fptoui float %385 to i32
  %390 = fptoui float %386 to i32
  %391 = fptoui float %387 to i32
  %392 = shl i32 %389, 8
  %393 = or i32 %392, %388
  %394 = shl i32 %390, 16
  %395 = or i32 %393, %394
  %396 = shl i32 %391, 24
  %397 = or i32 %395, %396
  %398 = fmul fast float %34, 0x3FEFFFFFE0000000
  %399 = fmul fast float %398, %126
  %400 = fmul fast float %399, %141
  %401 = fmul fast float %400, %195
  %402 = fmul fast float %398, %131
  %403 = fmul fast float %402, %142
  %404 = fmul fast float %403, %195
  %405 = fmul fast float %398, %136
  %406 = fmul fast float %405, %143
  %407 = fmul fast float %406, %195
  %408 = fmul fast float %34, %140
  %409 = fmul fast float %408, %144
  %410 = fmul fast float %409, %195
  %411 = call float @dx.op.unary.f32(i32 6, float %401)  ; FAbs(value)
  %412 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %413 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %414 = call float @dx.op.unary.f32(i32 6, float %410)  ; FAbs(value)
  %415 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %416 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %417 = call float @dx.op.unary.f32(i32 7, float %413)  ; Saturate(value)
  %418 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %419 = fcmp fast olt float %401, 0.000000e+00
  %420 = fsub fast float -0.000000e+00, %415
  %421 = select i1 %419, float %420, float %415
  %422 = fcmp fast olt float %404, 0.000000e+00
  %423 = fsub fast float -0.000000e+00, %416
  %424 = select i1 %422, float %423, float %416
  %425 = fcmp fast olt float %407, 0.000000e+00
  %426 = fsub fast float -0.000000e+00, %417
  %427 = select i1 %425, float %426, float %417
  %428 = fcmp fast olt float %410, 0.000000e+00
  %429 = fsub fast float -0.000000e+00, %418
  %430 = select i1 %428, float %429, float %418
  %431 = fmul fast float %421, 1.270000e+02
  %432 = fmul fast float %424, 1.270000e+02
  %433 = fmul fast float %427, 1.270000e+02
  %434 = fmul fast float %430, 1.270000e+02
  %435 = fadd fast float %431, 1.275000e+02
  %436 = fadd fast float %432, 1.275000e+02
  %437 = fadd fast float %433, 1.275000e+02
  %438 = fadd fast float %434, 1.275000e+02
  %439 = fptoui float %435 to i32
  %440 = fptoui float %436 to i32
  %441 = fptoui float %437 to i32
  %442 = fptoui float %438 to i32
  %443 = shl i32 %440, 8
  %444 = or i32 %443, %439
  %445 = shl i32 %441, 16
  %446 = or i32 %444, %445
  %447 = shl i32 %442, 24
  %448 = or i32 %446, %447
  %449 = fmul fast float %34, %148
  %450 = fmul fast float %449, %163
  %451 = fmul fast float %450, %195
  %452 = fmul fast float %34, %153
  %453 = fmul fast float %452, %164
  %454 = fmul fast float %453, %195
  %455 = fmul fast float %34, %158
  %456 = fmul fast float %455, %165
  %457 = fmul fast float %456, %195
  %458 = fmul fast float %34, %162
  %459 = fmul fast float %458, %166
  %460 = fmul fast float %459, %195
  %461 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  %462 = call float @dx.op.unary.f32(i32 6, float %454)  ; FAbs(value)
  %463 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  %464 = call float @dx.op.unary.f32(i32 6, float %460)  ; FAbs(value)
  %465 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %466 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %467 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %468 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %469 = fcmp fast olt float %451, 0.000000e+00
  %470 = fsub fast float -0.000000e+00, %465
  %471 = select i1 %469, float %470, float %465
  %472 = fcmp fast olt float %454, 0.000000e+00
  %473 = fsub fast float -0.000000e+00, %466
  %474 = select i1 %472, float %473, float %466
  %475 = fcmp fast olt float %457, 0.000000e+00
  %476 = fsub fast float -0.000000e+00, %467
  %477 = select i1 %475, float %476, float %467
  %478 = fcmp fast olt float %460, 0.000000e+00
  %479 = fsub fast float -0.000000e+00, %468
  %480 = select i1 %478, float %479, float %468
  %481 = fmul fast float %471, 1.270000e+02
  %482 = fmul fast float %474, 1.270000e+02
  %483 = fmul fast float %477, 1.270000e+02
  %484 = fmul fast float %480, 1.270000e+02
  %485 = fadd fast float %481, 1.275000e+02
  %486 = fadd fast float %482, 1.275000e+02
  %487 = fadd fast float %483, 1.275000e+02
  %488 = fadd fast float %484, 1.275000e+02
  %489 = fptoui float %485 to i32
  %490 = fptoui float %486 to i32
  %491 = fptoui float %487 to i32
  %492 = fptoui float %488 to i32
  %493 = shl i32 %490, 8
  %494 = or i32 %493, %489
  %495 = shl i32 %491, 16
  %496 = or i32 %494, %495
  %497 = shl i32 %492, 24
  %498 = or i32 %496, %497
  %499 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  %500 = fmul fast float %499, 2.550000e+02
  %501 = fadd fast float %500, 5.000000e-01
  %502 = fptoui float %501 to i32
  %503 = shl i32 %502, 8
  %504 = shl i32 %175, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %504, i32 undef, i32 %186, i32 %246, i32 %296, i32 %347, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %505 = or i32 %504, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %505, i32 undef, i32 %397, i32 %448, i32 %498, i32 %503, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %506

; <label>:506                                     ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !8}
!8 = !{i32 0, i32 5}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12, !13}
!12 = !{i32 0, %GfxDynLightProbeShared* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{i32 1, %GfxDynLightProbeOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!14 = !{void ()* @cs_probes_opt_copy, !"cs_probes_opt_copy", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

