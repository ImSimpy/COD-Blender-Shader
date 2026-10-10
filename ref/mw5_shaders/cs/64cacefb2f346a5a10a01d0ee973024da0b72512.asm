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
; shader hash: c795f29c5aa79c15e7cd1daaac39660f
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
;   [1424 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [76 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [48 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t9     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture  struct         r/o      T2            t11     1
;                                   texture  struct         r/o      T3             t3     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;                                       UAV  struct         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<DecalVolumeMaterialGPU>" = type { %struct.DecalVolumeMaterialGPU }
%struct.DecalVolumeMaterialGPU = type { i32, i32, i32, i32, i32, i32, i32, <3 x float>, float, i32, i32, i32, float, float, i32, i32, i32 }
%"class.StructuredBuffer<DecalVolumeMaskGPU>" = type { %struct.DecalVolumeMaskGPU }
%struct.DecalVolumeMaskGPU = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<DecalVolumeWGV>" = type { %struct.DecalVolumeWGV }
%struct.DecalVolumeWGV = type { %struct.DecalVolume, float }
%struct.DecalVolume = type { <3 x float>, [3 x <3 x float>], <3 x float> }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

define void @cs_decal_volume_generate_draw_data_vt() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %401, !dx.controlflow.hints !24

; <label>:13                                      ; preds = %0
  %14 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.f32 %14, 0
  %16 = extractvalue %dx.types.ResRet.f32 %14, 1
  %17 = extractvalue %dx.types.ResRet.f32 %14, 2
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 12)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 16)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 20)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 24)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 28)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 32)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 36)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 40)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = lshr i32 %19, 30
  %35 = and i32 %19, 1023
  %36 = uitofp i32 %35 to float
  %37 = lshr i32 %19, 10
  %38 = and i32 %37, 1023
  %39 = uitofp i32 %38 to float
  %40 = lshr i32 %19, 20
  %41 = and i32 %40, 511
  %42 = uitofp i32 %41 to float
  %43 = fmul fast float %36, 0x3F56A64800000000
  %44 = fadd fast float %43, 0xBFE6A09E60000000
  %45 = fmul fast float %39, 0x3F56A64800000000
  %46 = fadd fast float %45, 0xBFE6A09E60000000
  %47 = fmul fast float %42, 0x3F66ABF460000000
  %48 = fadd fast float %47, 0xBFE6A09E60000000
  %49 = call float @dx.op.dot3.f32(i32 55, float %44, float %46, float %48, float %44, float %46, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %50 = call float @dx.op.unary.f32(i32 7, float %49)  ; Saturate(value)
  %51 = fsub fast float 1.000000e+00, %50
  %52 = call float @dx.op.unary.f32(i32 24, float %51)  ; Sqrt(value)
  %53 = icmp eq i32 %34, 0
  br i1 %53, label %60, label %54, !dx.controlflow.hints !25

; <label>:54                                      ; preds = %13
  %55 = icmp eq i32 %34, 1
  br i1 %55, label %60, label %56, !dx.controlflow.hints !26

; <label>:56                                      ; preds = %54
  %57 = icmp eq i32 %34, 2
  %58 = select i1 %57, float %52, float %48
  %59 = select i1 %57, float %48, float %52
  br label %60

; <label>:60                                      ; preds = %56, %54, %13
  %61 = phi float [ %52, %13 ], [ %44, %54 ], [ %44, %56 ]
  %62 = phi float [ %44, %13 ], [ %52, %54 ], [ %46, %56 ]
  %63 = phi float [ %46, %13 ], [ %46, %54 ], [ %58, %56 ]
  %64 = phi float [ %48, %13 ], [ %48, %54 ], [ %59, %56 ]
  %65 = fmul fast float %62, %62
  %66 = fmul fast float %65, 2.000000e+00
  %67 = fsub fast float 1.000000e+00, %66
  %68 = fmul fast float %63, %63
  %69 = fmul fast float %68, 2.000000e+00
  %70 = fsub fast float %67, %69
  %71 = fmul fast float %61, 2.000000e+00
  %72 = fmul fast float %71, %62
  %73 = fmul fast float %63, 2.000000e+00
  %74 = fmul fast float %73, %64
  %75 = fsub fast float %72, %74
  %76 = fmul fast float %63, %61
  %77 = fmul fast float %64, %62
  %78 = fadd fast float %77, %76
  %79 = fmul fast float %78, 2.000000e+00
  %80 = fmul fast float %62, %61
  %81 = fmul fast float %64, %63
  %82 = fadd fast float %81, %80
  %83 = fmul fast float %61, %61
  %84 = fmul fast float %83, 2.000000e+00
  %85 = fsub fast float 1.000000e+00, %84
  %86 = fsub fast float %85, %69
  %87 = fmul fast float %62, 2.000000e+00
  %88 = fmul fast float %87, %63
  %89 = fmul fast float %71, %64
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %71, %63
  %92 = fmul fast float %87, %64
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %63, %62
  %95 = fmul fast float %64, %61
  %96 = fadd fast float %95, %94
  %97 = fmul fast float %96, 2.000000e+00
  %98 = fsub fast float %85, %66
  %99 = and i32 %33, 512
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %100, float 1.000000e+00, float -1.000000e+00
  %102 = and i32 %33, 1024
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %103, float -1.000000e+00, float 1.000000e+00
  %105 = fmul fast float %101, %104
  %106 = fmul fast float %70, %105
  %107 = fmul fast float %105, 2.000000e+00
  %108 = fmul fast float %107, %82
  %109 = fmul fast float %93, %105
  %110 = shl i32 %21, 4
  %111 = and i32 %110, 32752
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %21, 7
  %114 = and i32 %113, 32752
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = lshr i32 %21, 22
  %117 = shl nuw nsw i32 %116, 5
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = and i32 %23, 255
  %120 = lshr i32 %23, 8
  %121 = and i32 %120, 255
  %122 = lshr i32 %23, 16
  %123 = and i32 %122, 255
  %124 = lshr i32 %23, 24
  %125 = uitofp i32 %123 to float
  %126 = fmul fast float %125, 0x3F70101020000000
  %127 = uitofp i32 %121 to float
  %128 = fmul fast float %127, 0x3F70101020000000
  %129 = uitofp i32 %119 to float
  %130 = fmul fast float %129, 0x3F70101020000000
  %131 = fcmp fast oge float %130, %128
  %132 = fcmp fast ole float %126, 0.000000e+00
  %133 = or i1 %131, %132
  %134 = select i1 %133, float 1.000000e+00, float %126
  %135 = select i1 %133, float 1.000000e+00, float %128
  %136 = select i1 %133, float 0.000000e+00, float %130
  %137 = fsub fast float %135, %136
  %138 = fdiv fast float 1.000000e+00, %137
  %139 = fmul fast float %138, %134
  %140 = fmul fast float %136, %134
  %141 = fmul fast float %140, %138
  %142 = fsub fast float -0.000000e+00, %141
  %143 = uitofp i32 %124 to float
  %144 = fmul fast float %143, 0x3F70101020000000
  %145 = fcmp fast ogt float %144, 0.000000e+00
  %146 = fdiv fast float 0x406FDFFFE0000000, %143
  %147 = fsub fast float -0.000000e+00, %146
  %148 = select i1 %145, float %147, float -1.000000e+05
  %149 = and i32 %33, 255
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, 0x3F70101020000000
  %152 = and i32 %33, 256
  %153 = icmp ne i32 %152, 0
  %154 = lshr i32 %33, 16
  %155 = and i32 %154, 255
  %156 = lshr i32 %33, 24
  %157 = uitofp i32 %155 to float
  %158 = fmul fast float %157, 0x3F70101020000000
  %159 = fcmp fast ogt float %158, 0.000000e+00
  %160 = fdiv fast float 0x406FDFFFE0000000, %157
  %161 = fsub fast float -0.000000e+00, %160
  %162 = select i1 %159, float %161, float -1.000000e+05
  %163 = uitofp i32 %156 to float
  %164 = fmul fast float %163, 0x3F70101020000000
  %165 = fcmp fast ogt float %164, 0.000000e+00
  %166 = fdiv fast float 0x406FDFFFE0000000, %163
  %167 = fsub fast float -0.000000e+00, %166
  %168 = select i1 %165, float %167, float -1.000000e+05
  %169 = and i32 %25, 65535
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = lshr i32 %25, 16
  %172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %171)  ; LegacyF16ToF32(value)
  %173 = and i32 %27, 65535
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = lshr i32 %27, 16
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = and i32 %29, 65535
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = lshr i32 %29, 16
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = fmul fast float %182, %112
  %186 = fmul fast float %183, %115
  %187 = fmul fast float %184, %118
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = fsub fast float %15, %189
  %193 = fsub fast float %16, %190
  %194 = fsub fast float %17, %191
  %195 = call float @dx.op.binary.f32(i32 35, float %186, float %187)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %185, float %195)  ; FMax(a,b)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = fmul fast float %198, %196
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %203 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %204 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.binary.f32(i32 35, float %204, float 0x3F50624DE0000000)  ; FMax(a,b)
  %206 = fdiv fast float %199, %205
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %211 = fmul fast float %207, %207
  %212 = fmul fast float %211, 0x400921FB60000000
  %213 = fmul fast float %212, %209
  %214 = fmul fast float %213, %210
  %215 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %216 = call float @dx.op.binary.f32(i32 35, float %215, float 1.000000e+00)  ; FMax(a,b)
  %217 = fptoui float %216 to i32
  %218 = add i32 %217, -1
  %219 = lshr i32 %218, 1
  %220 = or i32 %219, %218
  %221 = lshr i32 %220, 2
  %222 = or i32 %221, %220
  %223 = lshr i32 %222, 4
  %224 = or i32 %223, %222
  %225 = lshr i32 %224, 8
  %226 = or i32 %225, %224
  %227 = lshr i32 %226, 16
  %228 = or i32 %227, %226
  %229 = add i32 %228, 1
  %230 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %229)  ; FirstbitLo(value)
  %231 = fmul fast float %192, %192
  %232 = fmul fast float %193, %193
  %233 = fadd fast float %231, %232
  %234 = fmul fast float %194, %194
  %235 = fadd fast float %233, %234
  %236 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %237 = fsub fast float %236, %195
  %238 = call float @dx.op.binary.f32(i32 35, float %237, float 0.000000e+00)  ; FMax(a,b)
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fcmp fast olt float %238, %240
  %242 = and i1 %153, %241
  br i1 %242, label %243, label %249, !dx.controlflow.hints !27

; <label>:243                                     ; preds = %60
  %244 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 0
  %247 = icmp ult i32 %244, %246
  br i1 %247, label %248, label %401, !dx.controlflow.hints !28

; <label>:248                                     ; preds = %243
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %244, i32 0, float %15, float %16, float %17, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %244, i32 12, float %106, float %108, float %109, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %244, i32 24, float %75, float %86, float %97, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %244, i32 36, float %79, float %90, float %98, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %244, i32 48, float %112, float %115, float %118, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %244, i32 60, float %151, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %249

; <label>:249                                     ; preds = %248, %60
  %250 = and i32 %31, 2047
  %251 = lshr i32 %31, 11
  %252 = and i32 %251, 2047
  %253 = lshr i32 %31, 22
  %254 = and i32 %253, 3
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %250, i32 0)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = icmp eq i32 %252, 2047
  br i1 %257, label %264, label %258, !dx.controlflow.hints !29

; <label>:258                                     ; preds = %249
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 1
  %261 = add i32 %260, %252
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %261, i32 0)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  br label %264

; <label>:264                                     ; preds = %258, %249
  %265 = phi i32 [ %263, %258 ], [ 2047, %249 ]
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 0)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 4)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 8)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 12)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 16)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 20)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 24)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %256, i32 28)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %256, i32 40)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 44)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 48)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 52)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 64)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 68)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %256, i32 72)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = icmp eq i32 %265, 2047
  br i1 %298, label %302, label %299, !dx.controlflow.hints !30

; <label>:299                                     ; preds = %264
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %265, i32 0)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  br label %302

; <label>:302                                     ; preds = %299, %264
  %303 = phi i32 [ %301, %299 ], [ 0, %264 ]
  %304 = and i32 %297, 255
  %305 = call i32 @dx.op.binary.i32(i32 37, i32 %230, i32 0)  ; IMax(a,b)
  %306 = call i32 @dx.op.binary.i32(i32 38, i32 %305, i32 %304)  ; IMin(a,b)
  %307 = sub nsw i32 %304, %306
  %308 = sitofp i32 %307 to float
  %309 = icmp ne i32 %265, 2047
  %310 = select i1 %309, i32 %303, i32 %275
  %311 = fdiv fast float 1.000000e+00, %185
  %312 = fdiv fast float 1.000000e+00, %186
  %313 = fmul fast float %312, -5.000000e-01
  %314 = fdiv fast float 5.000000e-01, %187
  %315 = fsub fast float -0.000000e+00, %75
  %316 = fsub fast float -0.000000e+00, %86
  %317 = fsub fast float -0.000000e+00, %97
  %318 = fmul fast float %15, %315
  %319 = fmul fast float %16, %316
  %320 = fadd fast float %318, %319
  %321 = fmul fast float %17, %317
  %322 = fadd fast float %320, %321
  %323 = fmul fast float %79, %15
  %324 = fmul fast float %90, %16
  %325 = fmul fast float %98, %17
  %326 = fadd fast float %324, %325
  %327 = fadd fast float %326, %323
  %328 = fmul fast float %106, %15
  %329 = fmul fast float %108, %16
  %330 = fmul fast float %109, %17
  %331 = fadd fast float %330, %328
  %332 = fadd fast float %331, %329
  %333 = fmul fast float %313, %315
  %334 = fmul fast float %313, %316
  %335 = fmul fast float %313, %317
  %336 = fmul fast float %313, %322
  %337 = fsub fast float 5.000000e-01, %336
  %338 = fmul fast float %314, %79
  %339 = fmul fast float %314, %90
  %340 = fmul fast float %314, %98
  %341 = fmul fast float %314, %327
  %342 = fsub fast float 5.000000e-01, %341
  %343 = fmul fast float %311, %106
  %344 = fmul fast float %311, %108
  %345 = fmul fast float %311, %109
  %346 = fmul fast float %332, %311
  %347 = fsub fast float -0.000000e+00, %346
  %348 = and i32 %279, -34
  %349 = and i32 %279, 1
  %350 = icmp eq i32 %254, 0
  %351 = select i1 %350, i32 0, i32 %349
  %352 = icmp eq i32 %254, 1
  %353 = select i1 %352, i32 1, i32 %351
  %354 = or i32 %353, %348
  %355 = bitcast i32 %354 to float
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %358 = select i1 %153, float 1.000000e+00, float %357
  %359 = fmul fast float %358, %151
  %360 = and i32 %279, 8192
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %361, float %359, float 0.000000e+00
  %363 = bitcast i32 %295 to float
  %364 = bitcast i32 %293 to float
  %365 = uitofp i32 %291 to float
  %366 = bitcast i32 %287 to float
  %367 = and i32 %279, 256
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %377, label %369, !dx.controlflow.hints !31

; <label>:369                                     ; preds = %302
  %370 = and i32 %289, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %289, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = fmul fast float %312, 5.000000e-01
  %375 = fmul fast float %374, %371
  %376 = fmul fast float %314, %371
  br label %377

; <label>:377                                     ; preds = %369, %302
  %378 = phi float [ %373, %369 ], [ 0.000000e+00, %302 ]
  %379 = phi float [ %371, %369 ], [ 1.000000e+00, %302 ]
  %380 = phi float [ %375, %369 ], [ 1.000000e+00, %302 ]
  %381 = phi float [ %376, %369 ], [ 1.000000e+00, %302 ]
  %382 = call float @dx.op.binary.f32(i32 35, float %115, float %118)  ; FMax(a,b)
  %383 = fptoui float %382 to i32
  %384 = shl i32 %9, 8
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %384, i32 undef, float %333, float %334, float %335, float %337, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %385 = or i32 %384, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %385, i32 undef, float %338, float %339, float %340, float %342, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %386 = or i32 %384, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %386, i32 undef, float %343, float %344, float %345, float %347, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %387 = or i32 %384, 48
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %387, i32 undef, float %106, float %108, float %109, float %355, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %388 = or i32 %384, 64
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %388, i32 undef, i32 %267, i32 %269, i32 %271, i32 %310, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %389 = or i32 %384, 80
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %389, i32 undef, float %139, float %142, float %148, float 1.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %390 = or i32 %384, 96
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %390, i32 undef, float %170, float %172, float %174, float %176, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %391 = or i32 %384, 112
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %391, i32 undef, float %178, float %180, float %285, float %362, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %392 = or i32 %384, 128
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %392, i32 undef, float %75, float %86, float %97, float %363, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %393 = or i32 %384, 144
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %393, i32 undef, float %79, float %90, float %98, float %364, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %394 = or i32 %384, 160
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %394, i32 undef, float %281, float %282, float %283, float %365, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %395 = or i32 %384, 176
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %395, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %396 = or i32 %384, 192
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %396, i32 undef, i32 %273, i32 %277, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %397 = or i32 %384, 208
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %397, i32 undef, float %366, float %308, float %308, float %308, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %398 = or i32 %384, 224
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %398, i32 undef, float %378, float %379, float %380, float %381, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %399 = or i32 %384, 240
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %399, i32 undef, i32 0, i32 %383, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %400 = or i32 %384, 248
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %400, i32 undef, float %162, float %168, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %401

; <label>:401                                     ; preds = %377, %243, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !19, null}
!5 = !{!6, !8, !10, !12}
!6 = !{i32 0, %"class.StructuredBuffer<DecalVolumeMaterialGPU>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 76}
!8 = !{i32 1, %"class.StructuredBuffer<DecalVolumeMaskGPU>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 4}
!12 = !{i32 3, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 48}
!14 = !{!15, !16, !18}
!15 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{i32 1, %"class.RWStructuredBuffer<DecalVolumeWGV>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !17}
!17 = !{i32 1, i32 64}
!18 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!19 = !{!20}
!20 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!21 = !{void ()* @cs_decal_volume_generate_draw_data_vt, !"cs_decal_volume_generate_draw_data_vt", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

