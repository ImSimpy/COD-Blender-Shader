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
; shader hash: ab05d1cae3e31dd1bf48798b3d1ff6f6
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
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture    byte         r/o      T0             t2     1
;                                   texture  struct         r/o      T1             t3     1
;                                   texture    byte         r/o      T2             t4     1
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     u32         buf      T4             t8     1
;                                       UAV     f32          3d      U0             u1     1
;                                       UAVunorm_f32          3d      U1             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxGpuDynLightsetsLGVReference>" = type { %struct.GfxGpuDynLightsetsLGVReference }
%struct.GfxGpuDynLightsetsLGVReference = type { i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%GfxDynLightProbeShared = type { <3 x i32>, i32, i32, i32, i32, i32 }
%GfxDynLightProbeOpt = type { i32, i32, i32, i32 }

define void @cs_probes_opt_copy_tex() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %347, !dx.controlflow.hints !24

; <label>:14                                      ; preds = %0
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %17 = add i32 %16, %10
  %18 = shl i32 %17, 5
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = extractvalue %dx.types.ResRet.i32 %19, 1
  %22 = extractvalue %dx.types.ResRet.i32 %19, 2
  %23 = extractvalue %dx.types.ResRet.i32 %19, 3
  %24 = or i32 %18, 16
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = extractvalue %dx.types.ResRet.i32 %25, 1
  %28 = extractvalue %dx.types.ResRet.i32 %25, 2
  %29 = shl i32 %20, 4
  %30 = and i32 %29, 32752
  %31 = call float @dx.op.legacyF16ToF32(i32 131, i32 %30)  ; LegacyF16ToF32(value)
  %32 = lshr i32 %20, 7
  %33 = and i32 %32, 32752
  %34 = call float @dx.op.legacyF16ToF32(i32 131, i32 %33)  ; LegacyF16ToF32(value)
  %35 = lshr i32 %20, 22
  %36 = shl nuw nsw i32 %35, 5
  %37 = call float @dx.op.legacyF16ToF32(i32 131, i32 %36)  ; LegacyF16ToF32(value)
  %38 = and i32 %21, 255
  %39 = uitofp i32 %38 to float
  %40 = fmul fast float %39, 0x3F80204080000000
  %41 = fadd fast float %40, -1.000000e+00
  %42 = lshr i32 %21, 8
  %43 = and i32 %42, 255
  %44 = uitofp i32 %43 to float
  %45 = fmul fast float %44, 0x3F80204080000000
  %46 = fadd fast float %45, -1.000000e+00
  %47 = lshr i32 %21, 16
  %48 = and i32 %47, 255
  %49 = uitofp i32 %48 to float
  %50 = fmul fast float %49, 0x3F80204080000000
  %51 = fadd fast float %50, -1.000000e+00
  %52 = lshr i32 %21, 24
  %53 = uitofp i32 %52 to float
  %54 = fmul fast float %53, 0x3F80204080000000
  %55 = fadd fast float %54, -1.000000e+00
  %56 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %57 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %58 = call float @dx.op.unary.f32(i32 6, float %51)  ; FAbs(value)
  %59 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %60 = and i32 %22, 255
  %61 = uitofp i32 %60 to float
  %62 = fmul fast float %61, 0x3F80204080000000
  %63 = fadd fast float %62, -1.000000e+00
  %64 = lshr i32 %22, 8
  %65 = and i32 %64, 255
  %66 = uitofp i32 %65 to float
  %67 = fmul fast float %66, 0x3F80204080000000
  %68 = fadd fast float %67, -1.000000e+00
  %69 = lshr i32 %22, 16
  %70 = and i32 %69, 255
  %71 = uitofp i32 %70 to float
  %72 = fmul fast float %71, 0x3F80204080000000
  %73 = fadd fast float %72, -1.000000e+00
  %74 = lshr i32 %22, 24
  %75 = uitofp i32 %74 to float
  %76 = fmul fast float %75, 0x3F80204080000000
  %77 = fadd fast float %76, -1.000000e+00
  %78 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %79 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %80 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %81 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %82 = and i32 %23, 255
  %83 = uitofp i32 %82 to float
  %84 = fmul fast float %83, 0x3F80204080000000
  %85 = fadd fast float %84, -1.000000e+00
  %86 = lshr i32 %23, 8
  %87 = and i32 %86, 255
  %88 = uitofp i32 %87 to float
  %89 = fmul fast float %88, 0x3F80204080000000
  %90 = fadd fast float %89, -1.000000e+00
  %91 = lshr i32 %23, 16
  %92 = and i32 %91, 255
  %93 = uitofp i32 %92 to float
  %94 = fmul fast float %93, 0x3F80204080000000
  %95 = fadd fast float %94, -1.000000e+00
  %96 = lshr i32 %23, 24
  %97 = uitofp i32 %96 to float
  %98 = fmul fast float %97, 0x3F80204080000000
  %99 = fadd fast float %98, -1.000000e+00
  %100 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %101 = call float @dx.op.unary.f32(i32 6, float %90)  ; FAbs(value)
  %102 = call float @dx.op.unary.f32(i32 6, float %95)  ; FAbs(value)
  %103 = call float @dx.op.unary.f32(i32 6, float %99)  ; FAbs(value)
  %104 = and i32 %26, 255
  %105 = uitofp i32 %104 to float
  %106 = fmul fast float %105, 0x3F80204080000000
  %107 = fadd fast float %106, -1.000000e+00
  %108 = lshr i32 %26, 8
  %109 = and i32 %108, 255
  %110 = uitofp i32 %109 to float
  %111 = fmul fast float %110, 0x3F80204080000000
  %112 = fadd fast float %111, -1.000000e+00
  %113 = lshr i32 %26, 16
  %114 = and i32 %113, 255
  %115 = uitofp i32 %114 to float
  %116 = fmul fast float %115, 0x3F80204080000000
  %117 = fadd fast float %116, -1.000000e+00
  %118 = lshr i32 %26, 24
  %119 = uitofp i32 %118 to float
  %120 = fmul fast float %119, 0x3F80204080000000
  %121 = fadd fast float %120, -1.000000e+00
  %122 = call float @dx.op.unary.f32(i32 6, float %107)  ; FAbs(value)
  %123 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %124 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %125 = call float @dx.op.unary.f32(i32 6, float %121)  ; FAbs(value)
  %126 = and i32 %27, 255
  %127 = uitofp i32 %126 to float
  %128 = fmul fast float %127, 0x3F80204080000000
  %129 = fadd fast float %128, -1.000000e+00
  %130 = lshr i32 %27, 8
  %131 = and i32 %130, 255
  %132 = uitofp i32 %131 to float
  %133 = fmul fast float %132, 0x3F80204080000000
  %134 = fadd fast float %133, -1.000000e+00
  %135 = lshr i32 %27, 16
  %136 = and i32 %135, 255
  %137 = uitofp i32 %136 to float
  %138 = fmul fast float %137, 0x3F80204080000000
  %139 = fadd fast float %138, -1.000000e+00
  %140 = lshr i32 %27, 24
  %141 = uitofp i32 %140 to float
  %142 = fmul fast float %141, 0x3F80204080000000
  %143 = fadd fast float %142, -1.000000e+00
  %144 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %145 = call float @dx.op.unary.f32(i32 6, float %134)  ; FAbs(value)
  %146 = call float @dx.op.unary.f32(i32 6, float %139)  ; FAbs(value)
  %147 = call float @dx.op.unary.f32(i32 6, float %143)  ; FAbs(value)
  %148 = and i32 %28, 255
  %149 = uitofp i32 %148 to float
  %150 = fmul fast float %149, 0x3F80204080000000
  %151 = fadd fast float %150, -1.000000e+00
  %152 = lshr i32 %28, 8
  %153 = and i32 %152, 255
  %154 = uitofp i32 %153 to float
  %155 = fmul fast float %154, 0x3F80204080000000
  %156 = fadd fast float %155, -1.000000e+00
  %157 = lshr i32 %28, 16
  %158 = and i32 %157, 255
  %159 = uitofp i32 %158 to float
  %160 = fmul fast float %159, 0x3F80204080000000
  %161 = fadd fast float %160, -1.000000e+00
  %162 = lshr i32 %28, 24
  %163 = uitofp i32 %162 to float
  %164 = fmul fast float %163, 0x3F80204080000000
  %165 = fadd fast float %164, -1.000000e+00
  %166 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  %167 = call float @dx.op.unary.f32(i32 6, float %156)  ; FAbs(value)
  %168 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %169 = call float @dx.op.unary.f32(i32 6, float %165)  ; FAbs(value)
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %171, i32 4)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %229, label %175, !dx.controlflow.hints !25

; <label>:175                                     ; preds = %14
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %171, i32 0)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.i32 %178, 3
  %180 = shl i32 %179, 3
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = or i32 %180, 4
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 16777215
  %187 = add i32 %186, %177
  %188 = shl i32 %187, 5
  %189 = or i32 %188, 12
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = or i32 %188, 16
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = extractvalue %dx.types.ResRet.f32 %193, 2
  %197 = lshr i32 %185, 24
  %198 = and i32 %197, 3
  %199 = add nuw nsw i32 %198, 3
  %200 = shl i32 1, %199
  %201 = lshr i32 %185, 29
  %202 = lshr i32 %185, 23
  %203 = and i32 %202, 56
  %204 = shl nuw nsw i32 %201, 3
  %205 = lshr i32 %182, 16
  %206 = and i32 %182, 65535
  %207 = uitofp i32 %200 to float
  %208 = uitofp i32 %205 to float
  %209 = fmul fast float %207, %194
  %210 = fmul fast float %207, %195
  %211 = fmul fast float %196, %208
  %212 = fptosi float %209 to i32
  %213 = fptosi float %210 to i32
  %214 = fptosi float %211 to i32
  %215 = add i32 %212, %203
  %216 = and i32 %191, 255
  %217 = lshr i32 %191, 8
  %218 = and i32 %217, 255
  %219 = mul nuw nsw i32 %218, %216
  %220 = udiv i32 %173, %219
  %221 = urem i32 %173, %219
  %222 = udiv i32 %221, %216
  %223 = urem i32 %221, %216
  %224 = add i32 %215, %223
  %225 = add nuw nsw i32 %222, %204
  %226 = add i32 %225, %213
  %227 = add i32 %220, %206
  %228 = add i32 %227, %214
  br label %229

; <label>:229                                     ; preds = %175, %14
  %230 = phi i1 [ true, %175 ], [ false, %14 ]
  %231 = phi i32 [ %224, %175 ], [ 0, %14 ]
  %232 = phi i32 [ %226, %175 ], [ 0, %14 ]
  %233 = phi i32 [ %228, %175 ], [ 0, %14 ]
  br i1 %230, label %234, label %347, !dx.controlflow.hints !26

; <label>:234                                     ; preds = %229
  %235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.i32 %235, 0
  %237 = extractvalue %dx.types.CBufRet.i32 %235, 1
  %238 = fdiv fast float 1.000000e+00, %31
  %239 = fdiv fast float 1.000000e+00, %34
  %240 = fdiv fast float 1.000000e+00, %37
  %241 = fmul fast float %31, 0x3FDFFFFFE0000000
  %242 = fmul fast float %241, %46
  %243 = fmul fast float %242, %57
  %244 = fmul fast float %243, %238
  %245 = fmul fast float %34, 0x3FDFFFFFE0000000
  %246 = fmul fast float %245, %90
  %247 = fmul fast float %246, %101
  %248 = fmul fast float %247, %239
  %249 = fmul fast float %37, 0x3FDFFFFFE0000000
  %250 = fmul fast float %249, %134
  %251 = fmul fast float %250, %145
  %252 = fmul fast float %251, %240
  %253 = fmul fast float %31, 5.000000e-01
  %254 = fmul fast float %253, %68
  %255 = fmul fast float %254, %79
  %256 = fmul fast float %255, %238
  %257 = fadd fast float %244, 5.000000e-01
  %258 = fadd fast float %248, 5.000000e-01
  %259 = fadd fast float %252, 5.000000e-01
  %260 = fadd fast float %256, 5.000000e-01
  %261 = fmul fast float %34, 5.000000e-01
  %262 = fmul fast float %261, %112
  %263 = fmul fast float %262, %123
  %264 = fmul fast float %263, %239
  %265 = fmul fast float %37, 5.000000e-01
  %266 = fmul fast float %265, %156
  %267 = fmul fast float %266, %167
  %268 = fmul fast float %267, %240
  %269 = fmul fast float %241, %41
  %270 = fmul fast float %269, %56
  %271 = fmul fast float %270, %238
  %272 = fmul fast float %245, %85
  %273 = fmul fast float %272, %100
  %274 = fmul fast float %273, %239
  %275 = fadd fast float %264, 5.000000e-01
  %276 = fadd fast float %268, 5.000000e-01
  %277 = fadd fast float %271, 5.000000e-01
  %278 = fadd fast float %274, 5.000000e-01
  %279 = fmul fast float %249, %129
  %280 = fmul fast float %279, %144
  %281 = fmul fast float %280, %240
  %282 = fmul fast float %241, %51
  %283 = fmul fast float %282, %58
  %284 = fmul fast float %283, %238
  %285 = fmul fast float %245, %95
  %286 = fmul fast float %285, %102
  %287 = fmul fast float %286, %239
  %288 = fmul fast float %249, %139
  %289 = fmul fast float %288, %146
  %290 = fmul fast float %289, %240
  %291 = fadd fast float %281, 5.000000e-01
  %292 = fadd fast float %284, 5.000000e-01
  %293 = fadd fast float %287, 5.000000e-01
  %294 = fadd fast float %290, 5.000000e-01
  %295 = fmul fast float %253, %73
  %296 = fmul fast float %295, %80
  %297 = fmul fast float %296, %238
  %298 = fmul fast float %261, %117
  %299 = fmul fast float %298, %124
  %300 = fmul fast float %299, %239
  %301 = fmul fast float %265, %161
  %302 = fmul fast float %301, %168
  %303 = fmul fast float %302, %240
  %304 = fmul fast float %253, %63
  %305 = fmul fast float %304, %78
  %306 = fmul fast float %305, %238
  %307 = fadd fast float %297, 5.000000e-01
  %308 = fadd fast float %300, 5.000000e-01
  %309 = fadd fast float %303, 5.000000e-01
  %310 = fadd fast float %306, 5.000000e-01
  %311 = fmul fast float %261, %107
  %312 = fmul fast float %311, %122
  %313 = fmul fast float %312, %239
  %314 = fmul fast float %265, %151
  %315 = fmul fast float %314, %166
  %316 = fmul fast float %315, %240
  %317 = fmul fast float %253, %77
  %318 = fmul fast float %317, %81
  %319 = fmul fast float %318, %238
  %320 = fmul fast float %261, %121
  %321 = fmul fast float %320, %125
  %322 = fmul fast float %321, %239
  %323 = fadd fast float %313, 5.000000e-01
  %324 = fadd fast float %316, 5.000000e-01
  %325 = fadd fast float %319, 5.000000e-01
  %326 = fadd fast float %322, 5.000000e-01
  %327 = fmul fast float %265, %165
  %328 = fmul fast float %327, %169
  %329 = fmul fast float %328, %240
  %330 = fmul fast float %253, %55
  %331 = fmul fast float %330, %59
  %332 = fmul fast float %331, %238
  %333 = fmul fast float %261, %99
  %334 = fmul fast float %333, %103
  %335 = fmul fast float %334, %239
  %336 = fmul fast float %265, %143
  %337 = fmul fast float %336, %147
  %338 = fmul fast float %337, %240
  %339 = fadd fast float %329, 5.000000e-01
  %340 = fadd fast float %332, 5.000000e-01
  %341 = fadd fast float %335, 5.000000e-01
  %342 = fadd fast float %338, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %231, i32 %232, i32 %233, float %31, float %34, float %37, float %31, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %231, i32 %232, i32 %233, float %257, float %258, float %259, float %260, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %343 = add i32 %236, %231
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %343, i32 %232, i32 %233, float %275, float %276, float %277, float %278, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %344 = add i32 %237, %232
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %231, i32 %344, i32 %233, float %291, float %292, float %293, float %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %343, i32 %344, i32 %233, float %307, float %308, float %309, float %310, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %345 = shl i32 %237, 1
  %346 = add i32 %345, %232
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %231, i32 %346, i32 %233, float %323, float %324, float %325, float %326, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %343, i32 %346, i32 %233, float %339, float %340, float %341, float %342, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %347

; <label>:347                                     ; preds = %234, %229, %0
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

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !13, !18, null}
!5 = !{!6, !7, !9, !10, !11}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<GfxGpuDynLightsetsLGVReference>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 8}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !12}
!12 = !{i32 0, i32 5}
!13 = !{!14, !16}
!14 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !15}
!15 = !{i32 0, i32 9}
!16 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i1 false, i1 false, i1 false, !17}
!17 = !{i32 0, i32 14}
!18 = !{!19, !20}
!19 = !{i32 0, %GfxDynLightProbeShared* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!20 = !{i32 1, %GfxDynLightProbeOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!21 = !{void ()* @cs_probes_opt_copy_tex, !"cs_probes_opt_copy_tex", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

