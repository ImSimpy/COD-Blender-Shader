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
; shader hash: 805ca5411d7c04aa5306b9d199f06176
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
;                                   texture     f32         buf      T4             t1     1
;                                   texture    byte         r/o      T5             t5     1
;                                   texture     u32         buf      T6             t6     1
;                                   texture     u32         buf      T7             t7     1
;                                   texture     u32         buf      T8             t8     1
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
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%GfxDynLightProbeShared = type { <3 x i32>, i32, i32, i32, i32, i32 }
%GfxDynLightProbeOpt = type { i32, i32, i32, i32 }

define void @cs_probes_mixed_blend_9to16_tex() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %1050, !dx.controlflow.hints !28

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %21 = lshr i32 %14, 3
  %22 = add i32 %20, %21
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = shl i32 %14, 2
  %28 = and i32 %27, 28
  %29 = lshr i32 %26, %28
  %30 = shl i32 1, %28
  %31 = add i32 %30, -1
  %32 = and i32 %26, %31
  %33 = and i32 %32, 286331153
  %34 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %33)  ; Countbits(value)
  %35 = and i32 %32, 572662306
  %36 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %35)  ; Countbits(value)
  %37 = shl i32 %36, 1
  %38 = and i32 %32, 1145324612
  %39 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %38)  ; Countbits(value)
  %40 = shl i32 %39, 2
  %41 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %42 = mul i32 %14, 9
  %43 = add i32 %24, %42
  %44 = add i32 %43, %34
  %45 = add i32 %44, %37
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %49 = add i32 %48, %14
  %50 = shl i32 %49, 5
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = extractvalue %dx.types.ResRet.i32 %51, 2
  %55 = extractvalue %dx.types.ResRet.i32 %51, 3
  %56 = or i32 %50, 16
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = extractvalue %dx.types.ResRet.i32 %57, 1
  %60 = extractvalue %dx.types.ResRet.i32 %57, 2
  %61 = shl i32 %52, 4
  %62 = and i32 %61, 32752
  %63 = call float @dx.op.legacyF16ToF32(i32 131, i32 %62)  ; LegacyF16ToF32(value)
  %64 = lshr i32 %52, 7
  %65 = and i32 %64, 32752
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = lshr i32 %52, 22
  %68 = shl nuw nsw i32 %67, 5
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = and i32 %53, 255
  %71 = uitofp i32 %70 to float
  %72 = fmul fast float %71, 0x3F80204080000000
  %73 = fadd fast float %72, -1.000000e+00
  %74 = lshr i32 %53, 8
  %75 = and i32 %74, 255
  %76 = uitofp i32 %75 to float
  %77 = fmul fast float %76, 0x3F80204080000000
  %78 = fadd fast float %77, -1.000000e+00
  %79 = lshr i32 %53, 16
  %80 = and i32 %79, 255
  %81 = uitofp i32 %80 to float
  %82 = fmul fast float %81, 0x3F80204080000000
  %83 = fadd fast float %82, -1.000000e+00
  %84 = lshr i32 %53, 24
  %85 = uitofp i32 %84 to float
  %86 = fmul fast float %85, 0x3F80204080000000
  %87 = fadd fast float %86, -1.000000e+00
  %88 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %89 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %90 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %91 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %92 = fmul fast float %63, 0x3FFBB67AE0000000
  %93 = fmul fast float %92, %73
  %94 = fmul fast float %93, %88
  %95 = fmul fast float %92, %78
  %96 = fmul fast float %95, %89
  %97 = fmul fast float %92, %83
  %98 = fmul fast float %97, %90
  %99 = fmul fast float %63, 0x3FFEFBDEC0000000
  %100 = fmul fast float %99, %87
  %101 = fmul fast float %100, %91
  %102 = and i32 %54, 255
  %103 = uitofp i32 %102 to float
  %104 = fmul fast float %103, 0x3F80204080000000
  %105 = fadd fast float %104, -1.000000e+00
  %106 = lshr i32 %54, 8
  %107 = and i32 %106, 255
  %108 = uitofp i32 %107 to float
  %109 = fmul fast float %108, 0x3F80204080000000
  %110 = fadd fast float %109, -1.000000e+00
  %111 = lshr i32 %54, 16
  %112 = and i32 %111, 255
  %113 = uitofp i32 %112 to float
  %114 = fmul fast float %113, 0x3F80204080000000
  %115 = fadd fast float %114, -1.000000e+00
  %116 = lshr i32 %54, 24
  %117 = uitofp i32 %116 to float
  %118 = fmul fast float %117, 0x3F80204080000000
  %119 = fadd fast float %118, -1.000000e+00
  %120 = call float @dx.op.unary.f32(i32 6, float %105)  ; FAbs(value)
  %121 = call float @dx.op.unary.f32(i32 6, float %110)  ; FAbs(value)
  %122 = call float @dx.op.unary.f32(i32 6, float %115)  ; FAbs(value)
  %123 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %124 = fmul fast float %99, %105
  %125 = fmul fast float %124, %120
  %126 = fmul fast float %63, 0x4001E377A0000000
  %127 = fmul fast float %126, %110
  %128 = fmul fast float %127, %121
  %129 = fmul fast float %99, %115
  %130 = fmul fast float %129, %122
  %131 = fmul fast float %99, %119
  %132 = fmul fast float %131, %123
  %133 = and i32 %55, 255
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %134, 0x3F80204080000000
  %136 = fadd fast float %135, -1.000000e+00
  %137 = lshr i32 %55, 8
  %138 = and i32 %137, 255
  %139 = uitofp i32 %138 to float
  %140 = fmul fast float %139, 0x3F80204080000000
  %141 = fadd fast float %140, -1.000000e+00
  %142 = lshr i32 %55, 16
  %143 = and i32 %142, 255
  %144 = uitofp i32 %143 to float
  %145 = fmul fast float %144, 0x3F80204080000000
  %146 = fadd fast float %145, -1.000000e+00
  %147 = lshr i32 %55, 24
  %148 = uitofp i32 %147 to float
  %149 = fmul fast float %148, 0x3F80204080000000
  %150 = fadd fast float %149, -1.000000e+00
  %151 = call float @dx.op.unary.f32(i32 6, float %136)  ; FAbs(value)
  %152 = call float @dx.op.unary.f32(i32 6, float %141)  ; FAbs(value)
  %153 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %154 = call float @dx.op.unary.f32(i32 6, float %150)  ; FAbs(value)
  %155 = fmul fast float %66, 0x3FFBB67AE0000000
  %156 = fmul fast float %155, %136
  %157 = fmul fast float %156, %151
  %158 = fmul fast float %155, %141
  %159 = fmul fast float %158, %152
  %160 = fmul fast float %155, %146
  %161 = fmul fast float %160, %153
  %162 = fmul fast float %66, 0x3FFEFBDEC0000000
  %163 = fmul fast float %162, %150
  %164 = fmul fast float %163, %154
  %165 = and i32 %58, 255
  %166 = uitofp i32 %165 to float
  %167 = fmul fast float %166, 0x3F80204080000000
  %168 = fadd fast float %167, -1.000000e+00
  %169 = lshr i32 %58, 8
  %170 = and i32 %169, 255
  %171 = uitofp i32 %170 to float
  %172 = fmul fast float %171, 0x3F80204080000000
  %173 = fadd fast float %172, -1.000000e+00
  %174 = lshr i32 %58, 16
  %175 = and i32 %174, 255
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F80204080000000
  %178 = fadd fast float %177, -1.000000e+00
  %179 = lshr i32 %58, 24
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F80204080000000
  %182 = fadd fast float %181, -1.000000e+00
  %183 = call float @dx.op.unary.f32(i32 6, float %168)  ; FAbs(value)
  %184 = call float @dx.op.unary.f32(i32 6, float %173)  ; FAbs(value)
  %185 = call float @dx.op.unary.f32(i32 6, float %178)  ; FAbs(value)
  %186 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %187 = fmul fast float %162, %168
  %188 = fmul fast float %187, %183
  %189 = fmul fast float %66, 0x4001E377A0000000
  %190 = fmul fast float %189, %173
  %191 = fmul fast float %190, %184
  %192 = fmul fast float %162, %178
  %193 = fmul fast float %192, %185
  %194 = fmul fast float %162, %182
  %195 = fmul fast float %194, %186
  %196 = and i32 %59, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F80204080000000
  %199 = fadd fast float %198, -1.000000e+00
  %200 = lshr i32 %59, 8
  %201 = and i32 %200, 255
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F80204080000000
  %204 = fadd fast float %203, -1.000000e+00
  %205 = lshr i32 %59, 16
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F80204080000000
  %209 = fadd fast float %208, -1.000000e+00
  %210 = lshr i32 %59, 24
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F80204080000000
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %215 = call float @dx.op.unary.f32(i32 6, float %204)  ; FAbs(value)
  %216 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %217 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %218 = fmul fast float %69, 0x3FFBB67AE0000000
  %219 = fmul fast float %218, %199
  %220 = fmul fast float %219, %214
  %221 = fmul fast float %218, %204
  %222 = fmul fast float %221, %215
  %223 = fmul fast float %218, %209
  %224 = fmul fast float %223, %216
  %225 = fmul fast float %69, 0x3FFEFBDEC0000000
  %226 = fmul fast float %225, %213
  %227 = fmul fast float %226, %217
  %228 = and i32 %60, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F80204080000000
  %231 = fadd fast float %230, -1.000000e+00
  %232 = lshr i32 %60, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F80204080000000
  %236 = fadd fast float %235, -1.000000e+00
  %237 = lshr i32 %60, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F80204080000000
  %241 = fadd fast float %240, -1.000000e+00
  %242 = lshr i32 %60, 24
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F80204080000000
  %245 = fadd fast float %244, -1.000000e+00
  %246 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %247 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %248 = call float @dx.op.unary.f32(i32 6, float %241)  ; FAbs(value)
  %249 = call float @dx.op.unary.f32(i32 6, float %245)  ; FAbs(value)
  %250 = fmul fast float %225, %231
  %251 = fmul fast float %250, %246
  %252 = fmul fast float %69, 0x4001E377A0000000
  %253 = fmul fast float %252, %236
  %254 = fmul fast float %253, %247
  %255 = fmul fast float %225, %241
  %256 = fmul fast float %255, %248
  %257 = fmul fast float %225, %245
  %258 = fmul fast float %257, %249
  %259 = add i32 %24, %41
  %260 = add i32 %259, %34
  %261 = add i32 %260, %42
  %262 = add i32 %261, %40
  %263 = add i32 %262, %37
  br label %264

; <label>:264                                     ; preds = %264, %18
  %265 = phi float [ %258, %18 ], [ %562, %264 ]
  %266 = phi float [ %256, %18 ], [ %558, %264 ]
  %267 = phi float [ %254, %18 ], [ %554, %264 ]
  %268 = phi float [ %251, %18 ], [ %549, %264 ]
  %269 = phi float [ %227, %18 ], [ %545, %264 ]
  %270 = phi float [ %224, %18 ], [ %540, %264 ]
  %271 = phi float [ %222, %18 ], [ %536, %264 ]
  %272 = phi float [ %220, %18 ], [ %532, %264 ]
  %273 = phi float [ %69, %18 ], [ %527, %264 ]
  %274 = phi float [ %195, %18 ], [ %525, %264 ]
  %275 = phi float [ %193, %18 ], [ %521, %264 ]
  %276 = phi float [ %191, %18 ], [ %517, %264 ]
  %277 = phi float [ %188, %18 ], [ %512, %264 ]
  %278 = phi float [ %164, %18 ], [ %508, %264 ]
  %279 = phi float [ %161, %18 ], [ %503, %264 ]
  %280 = phi float [ %159, %18 ], [ %499, %264 ]
  %281 = phi float [ %157, %18 ], [ %495, %264 ]
  %282 = phi float [ %66, %18 ], [ %490, %264 ]
  %283 = phi float [ %132, %18 ], [ %488, %264 ]
  %284 = phi float [ %130, %18 ], [ %484, %264 ]
  %285 = phi float [ %128, %18 ], [ %480, %264 ]
  %286 = phi float [ %125, %18 ], [ %475, %264 ]
  %287 = phi float [ %101, %18 ], [ %471, %264 ]
  %288 = phi float [ %98, %18 ], [ %466, %264 ]
  %289 = phi float [ %96, %18 ], [ %462, %264 ]
  %290 = phi float [ %94, %18 ], [ %458, %264 ]
  %291 = phi float [ %63, %18 ], [ %453, %264 ]
  %292 = phi i32 [ %47, %18 ], [ %563, %264 ]
  %293 = phi i32 [ 0, %18 ], [ %564, %264 ]
  %294 = shl i32 %292, 5
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = extractvalue %dx.types.ResRet.i32 %295, 1
  %298 = extractvalue %dx.types.ResRet.i32 %295, 2
  %299 = extractvalue %dx.types.ResRet.i32 %295, 3
  %300 = or i32 %294, 16
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = extractvalue %dx.types.ResRet.i32 %301, 1
  %304 = extractvalue %dx.types.ResRet.i32 %301, 2
  %305 = extractvalue %dx.types.ResRet.i32 %301, 3
  %306 = shl i32 %296, 4
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %296, 7
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %296, 22
  %313 = shl nuw nsw i32 %312, 5
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = and i32 %297, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F80204080000000
  %318 = fadd fast float %317, -1.000000e+00
  %319 = lshr i32 %297, 8
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F80204080000000
  %323 = fadd fast float %322, -1.000000e+00
  %324 = lshr i32 %297, 16
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F80204080000000
  %328 = fadd fast float %327, -1.000000e+00
  %329 = lshr i32 %297, 24
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F80204080000000
  %332 = fadd fast float %331, -1.000000e+00
  %333 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %334 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %335 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  %336 = call float @dx.op.unary.f32(i32 6, float %332)  ; FAbs(value)
  %337 = and i32 %298, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F80204080000000
  %340 = fadd fast float %339, -1.000000e+00
  %341 = lshr i32 %298, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F80204080000000
  %345 = fadd fast float %344, -1.000000e+00
  %346 = lshr i32 %298, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F80204080000000
  %350 = fadd fast float %349, -1.000000e+00
  %351 = lshr i32 %298, 24
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F80204080000000
  %354 = fadd fast float %353, -1.000000e+00
  %355 = call float @dx.op.unary.f32(i32 6, float %340)  ; FAbs(value)
  %356 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %357 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %358 = call float @dx.op.unary.f32(i32 6, float %354)  ; FAbs(value)
  %359 = and i32 %299, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F80204080000000
  %362 = fadd fast float %361, -1.000000e+00
  %363 = lshr i32 %299, 8
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F80204080000000
  %367 = fadd fast float %366, -1.000000e+00
  %368 = lshr i32 %299, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F80204080000000
  %372 = fadd fast float %371, -1.000000e+00
  %373 = lshr i32 %299, 24
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F80204080000000
  %376 = fadd fast float %375, -1.000000e+00
  %377 = call float @dx.op.unary.f32(i32 6, float %362)  ; FAbs(value)
  %378 = call float @dx.op.unary.f32(i32 6, float %367)  ; FAbs(value)
  %379 = call float @dx.op.unary.f32(i32 6, float %372)  ; FAbs(value)
  %380 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %381 = and i32 %302, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F80204080000000
  %384 = fadd fast float %383, -1.000000e+00
  %385 = lshr i32 %302, 8
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F80204080000000
  %389 = fadd fast float %388, -1.000000e+00
  %390 = lshr i32 %302, 16
  %391 = and i32 %390, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F80204080000000
  %394 = fadd fast float %393, -1.000000e+00
  %395 = lshr i32 %302, 24
  %396 = uitofp i32 %395 to float
  %397 = fmul fast float %396, 0x3F80204080000000
  %398 = fadd fast float %397, -1.000000e+00
  %399 = call float @dx.op.unary.f32(i32 6, float %384)  ; FAbs(value)
  %400 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %401 = call float @dx.op.unary.f32(i32 6, float %394)  ; FAbs(value)
  %402 = call float @dx.op.unary.f32(i32 6, float %398)  ; FAbs(value)
  %403 = and i32 %303, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F80204080000000
  %406 = fadd fast float %405, -1.000000e+00
  %407 = lshr i32 %303, 8
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F80204080000000
  %411 = fadd fast float %410, -1.000000e+00
  %412 = lshr i32 %303, 16
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F80204080000000
  %416 = fadd fast float %415, -1.000000e+00
  %417 = lshr i32 %303, 24
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F80204080000000
  %420 = fadd fast float %419, -1.000000e+00
  %421 = call float @dx.op.unary.f32(i32 6, float %406)  ; FAbs(value)
  %422 = call float @dx.op.unary.f32(i32 6, float %411)  ; FAbs(value)
  %423 = call float @dx.op.unary.f32(i32 6, float %416)  ; FAbs(value)
  %424 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %425 = and i32 %304, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F80204080000000
  %428 = fadd fast float %427, -1.000000e+00
  %429 = lshr i32 %304, 8
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F80204080000000
  %433 = fadd fast float %432, -1.000000e+00
  %434 = lshr i32 %304, 16
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F80204080000000
  %438 = fadd fast float %437, -1.000000e+00
  %439 = lshr i32 %304, 24
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F80204080000000
  %442 = fadd fast float %441, -1.000000e+00
  %443 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  %444 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  %445 = call float @dx.op.unary.f32(i32 6, float %438)  ; FAbs(value)
  %446 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  %447 = and i32 %305, 255
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = fmul fast float %449, %308
  %453 = fadd fast float %452, %291
  %454 = fmul fast float %308, 0x3FFBB67AE0000000
  %455 = fmul fast float %454, %318
  %456 = fmul fast float %455, %333
  %457 = fmul fast float %456, %449
  %458 = fadd fast float %457, %290
  %459 = fmul fast float %454, %323
  %460 = fmul fast float %459, %334
  %461 = fmul fast float %460, %449
  %462 = fadd fast float %461, %289
  %463 = fmul fast float %454, %328
  %464 = fmul fast float %463, %335
  %465 = fmul fast float %464, %449
  %466 = fadd fast float %465, %288
  %467 = fmul fast float %308, 0x3FFEFBDEC0000000
  %468 = fmul fast float %467, %332
  %469 = fmul fast float %468, %336
  %470 = fmul fast float %469, %449
  %471 = fadd fast float %470, %287
  %472 = fmul fast float %467, %340
  %473 = fmul fast float %472, %355
  %474 = fmul fast float %473, %449
  %475 = fadd fast float %474, %286
  %476 = fmul fast float %308, 0x4001E377A0000000
  %477 = fmul fast float %476, %345
  %478 = fmul fast float %477, %356
  %479 = fmul fast float %478, %449
  %480 = fadd fast float %479, %285
  %481 = fmul fast float %467, %350
  %482 = fmul fast float %481, %357
  %483 = fmul fast float %482, %449
  %484 = fadd fast float %483, %284
  %485 = fmul fast float %467, %354
  %486 = fmul fast float %485, %358
  %487 = fmul fast float %486, %449
  %488 = fadd fast float %487, %283
  %489 = fmul fast float %450, %311
  %490 = fadd fast float %489, %282
  %491 = fmul fast float %311, 0x3FFBB67AE0000000
  %492 = fmul fast float %491, %362
  %493 = fmul fast float %492, %377
  %494 = fmul fast float %493, %450
  %495 = fadd fast float %494, %281
  %496 = fmul fast float %491, %367
  %497 = fmul fast float %496, %378
  %498 = fmul fast float %497, %450
  %499 = fadd fast float %498, %280
  %500 = fmul fast float %491, %372
  %501 = fmul fast float %500, %379
  %502 = fmul fast float %501, %450
  %503 = fadd fast float %502, %279
  %504 = fmul fast float %311, 0x3FFEFBDEC0000000
  %505 = fmul fast float %504, %376
  %506 = fmul fast float %505, %380
  %507 = fmul fast float %506, %450
  %508 = fadd fast float %507, %278
  %509 = fmul fast float %504, %384
  %510 = fmul fast float %509, %399
  %511 = fmul fast float %510, %450
  %512 = fadd fast float %511, %277
  %513 = fmul fast float %311, 0x4001E377A0000000
  %514 = fmul fast float %513, %389
  %515 = fmul fast float %514, %400
  %516 = fmul fast float %515, %450
  %517 = fadd fast float %516, %276
  %518 = fmul fast float %504, %394
  %519 = fmul fast float %518, %401
  %520 = fmul fast float %519, %450
  %521 = fadd fast float %520, %275
  %522 = fmul fast float %504, %398
  %523 = fmul fast float %522, %402
  %524 = fmul fast float %523, %450
  %525 = fadd fast float %524, %274
  %526 = fmul fast float %451, %314
  %527 = fadd fast float %526, %273
  %528 = fmul fast float %314, 0x3FFBB67AE0000000
  %529 = fmul fast float %528, %406
  %530 = fmul fast float %529, %421
  %531 = fmul fast float %530, %451
  %532 = fadd fast float %531, %272
  %533 = fmul fast float %528, %411
  %534 = fmul fast float %533, %422
  %535 = fmul fast float %534, %451
  %536 = fadd fast float %535, %271
  %537 = fmul fast float %528, %416
  %538 = fmul fast float %537, %423
  %539 = fmul fast float %538, %451
  %540 = fadd fast float %539, %270
  %541 = fmul fast float %314, 0x3FFEFBDEC0000000
  %542 = fmul fast float %541, %420
  %543 = fmul fast float %542, %424
  %544 = fmul fast float %543, %451
  %545 = fadd fast float %544, %269
  %546 = fmul fast float %541, %428
  %547 = fmul fast float %546, %443
  %548 = fmul fast float %547, %451
  %549 = fadd fast float %548, %268
  %550 = fmul fast float %314, 0x4001E377A0000000
  %551 = fmul fast float %550, %433
  %552 = fmul fast float %551, %444
  %553 = fmul fast float %552, %451
  %554 = fadd fast float %553, %267
  %555 = fmul fast float %541, %438
  %556 = fmul fast float %555, %445
  %557 = fmul fast float %556, %451
  %558 = fadd fast float %557, %266
  %559 = fmul fast float %541, %442
  %560 = fmul fast float %559, %446
  %561 = fmul fast float %560, %451
  %562 = fadd fast float %561, %265
  %563 = add i32 %292, 1
  %564 = add nuw nsw i32 %293, 1
  %565 = icmp eq i32 %564, 9
  br i1 %565, label %566, label %264

; <label>:566                                     ; preds = %264
  %567 = and i32 %29, 7
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %875, label %569

; <label>:569                                     ; preds = %566
  %570 = add i32 %263, 9
  %571 = and i32 %29, 7
  br label %572

; <label>:572                                     ; preds = %572, %569
  %573 = phi float [ %870, %572 ], [ %562, %569 ]
  %574 = phi float [ %866, %572 ], [ %558, %569 ]
  %575 = phi float [ %862, %572 ], [ %554, %569 ]
  %576 = phi float [ %857, %572 ], [ %549, %569 ]
  %577 = phi float [ %853, %572 ], [ %545, %569 ]
  %578 = phi float [ %848, %572 ], [ %540, %569 ]
  %579 = phi float [ %844, %572 ], [ %536, %569 ]
  %580 = phi float [ %840, %572 ], [ %532, %569 ]
  %581 = phi float [ %835, %572 ], [ %527, %569 ]
  %582 = phi float [ %833, %572 ], [ %525, %569 ]
  %583 = phi float [ %829, %572 ], [ %521, %569 ]
  %584 = phi float [ %825, %572 ], [ %517, %569 ]
  %585 = phi float [ %820, %572 ], [ %512, %569 ]
  %586 = phi float [ %816, %572 ], [ %508, %569 ]
  %587 = phi float [ %811, %572 ], [ %503, %569 ]
  %588 = phi float [ %807, %572 ], [ %499, %569 ]
  %589 = phi float [ %803, %572 ], [ %495, %569 ]
  %590 = phi float [ %798, %572 ], [ %490, %569 ]
  %591 = phi float [ %796, %572 ], [ %488, %569 ]
  %592 = phi float [ %792, %572 ], [ %484, %569 ]
  %593 = phi float [ %788, %572 ], [ %480, %569 ]
  %594 = phi float [ %783, %572 ], [ %475, %569 ]
  %595 = phi float [ %779, %572 ], [ %471, %569 ]
  %596 = phi float [ %774, %572 ], [ %466, %569 ]
  %597 = phi float [ %770, %572 ], [ %462, %569 ]
  %598 = phi float [ %766, %572 ], [ %458, %569 ]
  %599 = phi float [ %761, %572 ], [ %453, %569 ]
  %600 = phi i32 [ %871, %572 ], [ %570, %569 ]
  %601 = phi i32 [ %872, %572 ], [ 0, %569 ]
  %602 = shl i32 %600, 5
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = extractvalue %dx.types.ResRet.i32 %603, 1
  %606 = extractvalue %dx.types.ResRet.i32 %603, 2
  %607 = extractvalue %dx.types.ResRet.i32 %603, 3
  %608 = or i32 %602, 16
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = extractvalue %dx.types.ResRet.i32 %609, 1
  %612 = extractvalue %dx.types.ResRet.i32 %609, 2
  %613 = extractvalue %dx.types.ResRet.i32 %609, 3
  %614 = shl i32 %604, 4
  %615 = and i32 %614, 32752
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = lshr i32 %604, 7
  %618 = and i32 %617, 32752
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %604, 22
  %621 = shl nuw nsw i32 %620, 5
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = and i32 %605, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F80204080000000
  %626 = fadd fast float %625, -1.000000e+00
  %627 = lshr i32 %605, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F80204080000000
  %631 = fadd fast float %630, -1.000000e+00
  %632 = lshr i32 %605, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F80204080000000
  %636 = fadd fast float %635, -1.000000e+00
  %637 = lshr i32 %605, 24
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F80204080000000
  %640 = fadd fast float %639, -1.000000e+00
  %641 = call float @dx.op.unary.f32(i32 6, float %626)  ; FAbs(value)
  %642 = call float @dx.op.unary.f32(i32 6, float %631)  ; FAbs(value)
  %643 = call float @dx.op.unary.f32(i32 6, float %636)  ; FAbs(value)
  %644 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %645 = and i32 %606, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F80204080000000
  %648 = fadd fast float %647, -1.000000e+00
  %649 = lshr i32 %606, 8
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F80204080000000
  %653 = fadd fast float %652, -1.000000e+00
  %654 = lshr i32 %606, 16
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F80204080000000
  %658 = fadd fast float %657, -1.000000e+00
  %659 = lshr i32 %606, 24
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F80204080000000
  %662 = fadd fast float %661, -1.000000e+00
  %663 = call float @dx.op.unary.f32(i32 6, float %648)  ; FAbs(value)
  %664 = call float @dx.op.unary.f32(i32 6, float %653)  ; FAbs(value)
  %665 = call float @dx.op.unary.f32(i32 6, float %658)  ; FAbs(value)
  %666 = call float @dx.op.unary.f32(i32 6, float %662)  ; FAbs(value)
  %667 = and i32 %607, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F80204080000000
  %670 = fadd fast float %669, -1.000000e+00
  %671 = lshr i32 %607, 8
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F80204080000000
  %675 = fadd fast float %674, -1.000000e+00
  %676 = lshr i32 %607, 16
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F80204080000000
  %680 = fadd fast float %679, -1.000000e+00
  %681 = lshr i32 %607, 24
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F80204080000000
  %684 = fadd fast float %683, -1.000000e+00
  %685 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %686 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %687 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %688 = call float @dx.op.unary.f32(i32 6, float %684)  ; FAbs(value)
  %689 = and i32 %610, 255
  %690 = uitofp i32 %689 to float
  %691 = fmul fast float %690, 0x3F80204080000000
  %692 = fadd fast float %691, -1.000000e+00
  %693 = lshr i32 %610, 8
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, 0x3F80204080000000
  %697 = fadd fast float %696, -1.000000e+00
  %698 = lshr i32 %610, 16
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F80204080000000
  %702 = fadd fast float %701, -1.000000e+00
  %703 = lshr i32 %610, 24
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F80204080000000
  %706 = fadd fast float %705, -1.000000e+00
  %707 = call float @dx.op.unary.f32(i32 6, float %692)  ; FAbs(value)
  %708 = call float @dx.op.unary.f32(i32 6, float %697)  ; FAbs(value)
  %709 = call float @dx.op.unary.f32(i32 6, float %702)  ; FAbs(value)
  %710 = call float @dx.op.unary.f32(i32 6, float %706)  ; FAbs(value)
  %711 = and i32 %611, 255
  %712 = uitofp i32 %711 to float
  %713 = fmul fast float %712, 0x3F80204080000000
  %714 = fadd fast float %713, -1.000000e+00
  %715 = lshr i32 %611, 8
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, 0x3F80204080000000
  %719 = fadd fast float %718, -1.000000e+00
  %720 = lshr i32 %611, 16
  %721 = and i32 %720, 255
  %722 = uitofp i32 %721 to float
  %723 = fmul fast float %722, 0x3F80204080000000
  %724 = fadd fast float %723, -1.000000e+00
  %725 = lshr i32 %611, 24
  %726 = uitofp i32 %725 to float
  %727 = fmul fast float %726, 0x3F80204080000000
  %728 = fadd fast float %727, -1.000000e+00
  %729 = call float @dx.op.unary.f32(i32 6, float %714)  ; FAbs(value)
  %730 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %731 = call float @dx.op.unary.f32(i32 6, float %724)  ; FAbs(value)
  %732 = call float @dx.op.unary.f32(i32 6, float %728)  ; FAbs(value)
  %733 = and i32 %612, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F80204080000000
  %736 = fadd fast float %735, -1.000000e+00
  %737 = lshr i32 %612, 8
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %739, 0x3F80204080000000
  %741 = fadd fast float %740, -1.000000e+00
  %742 = lshr i32 %612, 16
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F80204080000000
  %746 = fadd fast float %745, -1.000000e+00
  %747 = lshr i32 %612, 24
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F80204080000000
  %750 = fadd fast float %749, -1.000000e+00
  %751 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %752 = call float @dx.op.unary.f32(i32 6, float %741)  ; FAbs(value)
  %753 = call float @dx.op.unary.f32(i32 6, float %746)  ; FAbs(value)
  %754 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %755 = and i32 %613, 255
  %756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = fmul fast float %757, %616
  %761 = fadd fast float %760, %599
  %762 = fmul fast float %616, 0x3FFBB67AE0000000
  %763 = fmul fast float %762, %626
  %764 = fmul fast float %763, %641
  %765 = fmul fast float %764, %757
  %766 = fadd fast float %765, %598
  %767 = fmul fast float %762, %631
  %768 = fmul fast float %767, %642
  %769 = fmul fast float %768, %757
  %770 = fadd fast float %769, %597
  %771 = fmul fast float %762, %636
  %772 = fmul fast float %771, %643
  %773 = fmul fast float %772, %757
  %774 = fadd fast float %773, %596
  %775 = fmul fast float %616, 0x3FFEFBDEC0000000
  %776 = fmul fast float %775, %640
  %777 = fmul fast float %776, %644
  %778 = fmul fast float %777, %757
  %779 = fadd fast float %778, %595
  %780 = fmul fast float %775, %648
  %781 = fmul fast float %780, %663
  %782 = fmul fast float %781, %757
  %783 = fadd fast float %782, %594
  %784 = fmul fast float %616, 0x4001E377A0000000
  %785 = fmul fast float %784, %653
  %786 = fmul fast float %785, %664
  %787 = fmul fast float %786, %757
  %788 = fadd fast float %787, %593
  %789 = fmul fast float %775, %658
  %790 = fmul fast float %789, %665
  %791 = fmul fast float %790, %757
  %792 = fadd fast float %791, %592
  %793 = fmul fast float %775, %662
  %794 = fmul fast float %793, %666
  %795 = fmul fast float %794, %757
  %796 = fadd fast float %795, %591
  %797 = fmul fast float %758, %619
  %798 = fadd fast float %797, %590
  %799 = fmul fast float %619, 0x3FFBB67AE0000000
  %800 = fmul fast float %799, %670
  %801 = fmul fast float %800, %685
  %802 = fmul fast float %801, %758
  %803 = fadd fast float %802, %589
  %804 = fmul fast float %799, %675
  %805 = fmul fast float %804, %686
  %806 = fmul fast float %805, %758
  %807 = fadd fast float %806, %588
  %808 = fmul fast float %799, %680
  %809 = fmul fast float %808, %687
  %810 = fmul fast float %809, %758
  %811 = fadd fast float %810, %587
  %812 = fmul fast float %619, 0x3FFEFBDEC0000000
  %813 = fmul fast float %812, %684
  %814 = fmul fast float %813, %688
  %815 = fmul fast float %814, %758
  %816 = fadd fast float %815, %586
  %817 = fmul fast float %812, %692
  %818 = fmul fast float %817, %707
  %819 = fmul fast float %818, %758
  %820 = fadd fast float %819, %585
  %821 = fmul fast float %619, 0x4001E377A0000000
  %822 = fmul fast float %821, %697
  %823 = fmul fast float %822, %708
  %824 = fmul fast float %823, %758
  %825 = fadd fast float %824, %584
  %826 = fmul fast float %812, %702
  %827 = fmul fast float %826, %709
  %828 = fmul fast float %827, %758
  %829 = fadd fast float %828, %583
  %830 = fmul fast float %812, %706
  %831 = fmul fast float %830, %710
  %832 = fmul fast float %831, %758
  %833 = fadd fast float %832, %582
  %834 = fmul fast float %759, %622
  %835 = fadd fast float %834, %581
  %836 = fmul fast float %622, 0x3FFBB67AE0000000
  %837 = fmul fast float %836, %714
  %838 = fmul fast float %837, %729
  %839 = fmul fast float %838, %759
  %840 = fadd fast float %839, %580
  %841 = fmul fast float %836, %719
  %842 = fmul fast float %841, %730
  %843 = fmul fast float %842, %759
  %844 = fadd fast float %843, %579
  %845 = fmul fast float %836, %724
  %846 = fmul fast float %845, %731
  %847 = fmul fast float %846, %759
  %848 = fadd fast float %847, %578
  %849 = fmul fast float %622, 0x3FFEFBDEC0000000
  %850 = fmul fast float %849, %728
  %851 = fmul fast float %850, %732
  %852 = fmul fast float %851, %759
  %853 = fadd fast float %852, %577
  %854 = fmul fast float %849, %736
  %855 = fmul fast float %854, %751
  %856 = fmul fast float %855, %759
  %857 = fadd fast float %856, %576
  %858 = fmul fast float %622, 0x4001E377A0000000
  %859 = fmul fast float %858, %741
  %860 = fmul fast float %859, %752
  %861 = fmul fast float %860, %759
  %862 = fadd fast float %861, %575
  %863 = fmul fast float %849, %746
  %864 = fmul fast float %863, %753
  %865 = fmul fast float %864, %759
  %866 = fadd fast float %865, %574
  %867 = fmul fast float %849, %750
  %868 = fmul fast float %867, %754
  %869 = fmul fast float %868, %759
  %870 = fadd fast float %869, %573
  %871 = add i32 %600, 1
  %872 = add nuw nsw i32 %601, 1
  %873 = icmp eq i32 %872, %571
  br i1 %873, label %874, label %572, !llvm.loop !29

; <label>:874                                     ; preds = %572
  br label %875

; <label>:875                                     ; preds = %874, %566
  %876 = phi float [ %562, %566 ], [ %870, %874 ]
  %877 = phi float [ %558, %566 ], [ %866, %874 ]
  %878 = phi float [ %554, %566 ], [ %862, %874 ]
  %879 = phi float [ %549, %566 ], [ %857, %874 ]
  %880 = phi float [ %545, %566 ], [ %853, %874 ]
  %881 = phi float [ %540, %566 ], [ %848, %874 ]
  %882 = phi float [ %536, %566 ], [ %844, %874 ]
  %883 = phi float [ %532, %566 ], [ %840, %874 ]
  %884 = phi float [ %527, %566 ], [ %835, %874 ]
  %885 = phi float [ %525, %566 ], [ %833, %874 ]
  %886 = phi float [ %521, %566 ], [ %829, %874 ]
  %887 = phi float [ %517, %566 ], [ %825, %874 ]
  %888 = phi float [ %512, %566 ], [ %820, %874 ]
  %889 = phi float [ %508, %566 ], [ %816, %874 ]
  %890 = phi float [ %503, %566 ], [ %811, %874 ]
  %891 = phi float [ %499, %566 ], [ %807, %874 ]
  %892 = phi float [ %495, %566 ], [ %803, %874 ]
  %893 = phi float [ %490, %566 ], [ %798, %874 ]
  %894 = phi float [ %488, %566 ], [ %796, %874 ]
  %895 = phi float [ %484, %566 ], [ %792, %874 ]
  %896 = phi float [ %480, %566 ], [ %788, %874 ]
  %897 = phi float [ %475, %566 ], [ %783, %874 ]
  %898 = phi float [ %471, %566 ], [ %779, %874 ]
  %899 = phi float [ %466, %566 ], [ %774, %874 ]
  %900 = phi float [ %462, %566 ], [ %770, %874 ]
  %901 = phi float [ %458, %566 ], [ %766, %874 ]
  %902 = phi float [ %453, %566 ], [ %761, %874 ]
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %904, i32 4)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = icmp eq i32 %906, -1
  br i1 %907, label %962, label %908, !dx.controlflow.hints !31

; <label>:908                                     ; preds = %875
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %904, i32 0)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.i32 %911, 3
  %913 = shl i32 %912, 3
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = or i32 %913, 4
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 16777215
  %920 = add i32 %919, %910
  %921 = shl i32 %920, 5
  %922 = or i32 %921, 12
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = or i32 %921, 16
  %926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = lshr i32 %918, 24
  %931 = and i32 %930, 3
  %932 = add nuw nsw i32 %931, 3
  %933 = shl i32 1, %932
  %934 = lshr i32 %918, 29
  %935 = lshr i32 %918, 23
  %936 = and i32 %935, 56
  %937 = shl nuw nsw i32 %934, 3
  %938 = lshr i32 %915, 16
  %939 = and i32 %915, 65535
  %940 = uitofp i32 %933 to float
  %941 = uitofp i32 %938 to float
  %942 = fmul fast float %940, %927
  %943 = fmul fast float %940, %928
  %944 = fmul fast float %929, %941
  %945 = fptosi float %942 to i32
  %946 = fptosi float %943 to i32
  %947 = fptosi float %944 to i32
  %948 = add i32 %945, %936
  %949 = and i32 %924, 255
  %950 = lshr i32 %924, 8
  %951 = and i32 %950, 255
  %952 = mul nuw nsw i32 %951, %949
  %953 = udiv i32 %906, %952
  %954 = urem i32 %906, %952
  %955 = udiv i32 %954, %949
  %956 = urem i32 %954, %949
  %957 = add i32 %948, %956
  %958 = add nuw nsw i32 %955, %937
  %959 = add i32 %958, %946
  %960 = add i32 %953, %939
  %961 = add i32 %960, %947
  br label %962

; <label>:962                                     ; preds = %908, %875
  %963 = phi i1 [ true, %908 ], [ false, %875 ]
  %964 = phi i32 [ %957, %908 ], [ 0, %875 ]
  %965 = phi i32 [ %959, %908 ], [ 0, %875 ]
  %966 = phi i32 [ %961, %908 ], [ 0, %875 ]
  br i1 %963, label %967, label %1050, !dx.controlflow.hints !32

; <label>:967                                     ; preds = %962
  %968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.i32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.i32 %968, 1
  %971 = fdiv fast float 1.000000e+00, %902
  %972 = fdiv fast float 1.000000e+00, %893
  %973 = fdiv fast float 1.000000e+00, %884
  %974 = fmul fast float %900, 0x3FD279A740000000
  %975 = fmul fast float %974, %971
  %976 = fmul fast float %891, 0x3FD279A740000000
  %977 = fmul fast float %976, %972
  %978 = fmul fast float %882, 0x3FD279A740000000
  %979 = fmul fast float %978, %973
  %980 = fmul fast float %896, 0x3FCC9F25C0000000
  %981 = fmul fast float %980, %971
  %982 = fadd fast float %975, 5.000000e-01
  %983 = fadd fast float %977, 5.000000e-01
  %984 = fadd fast float %979, 5.000000e-01
  %985 = fadd fast float %981, 5.000000e-01
  %986 = fmul fast float %887, 0x3FCC9F25C0000000
  %987 = fmul fast float %986, %972
  %988 = fmul fast float %878, 0x3FCC9F25C0000000
  %989 = fmul fast float %988, %973
  %990 = fmul fast float %901, 0x3FD279A740000000
  %991 = fmul fast float %990, %971
  %992 = fmul fast float %892, 0x3FD279A740000000
  %993 = fmul fast float %992, %972
  %994 = fadd fast float %987, 5.000000e-01
  %995 = fadd fast float %989, 5.000000e-01
  %996 = fadd fast float %991, 5.000000e-01
  %997 = fadd fast float %993, 5.000000e-01
  %998 = fmul fast float %883, 0x3FD279A740000000
  %999 = fmul fast float %998, %973
  %1000 = fmul fast float %899, 0x3FD279A740000000
  %1001 = fmul fast float %1000, %971
  %1002 = fmul fast float %890, 0x3FD279A740000000
  %1003 = fmul fast float %1002, %972
  %1004 = fmul fast float %881, 0x3FD279A740000000
  %1005 = fmul fast float %1004, %973
  %1006 = fadd fast float %999, 5.000000e-01
  %1007 = fadd fast float %1001, 5.000000e-01
  %1008 = fadd fast float %1003, 5.000000e-01
  %1009 = fadd fast float %1005, 5.000000e-01
  %1010 = fmul fast float %895, 0x3FD08654A0000000
  %1011 = fmul fast float %1010, %971
  %1012 = fmul fast float %886, 0x3FD08654A0000000
  %1013 = fmul fast float %1012, %972
  %1014 = fmul fast float %877, 0x3FD08654A0000000
  %1015 = fmul fast float %1014, %973
  %1016 = fmul fast float %897, 0x3FD08654A0000000
  %1017 = fmul fast float %1016, %971
  %1018 = fadd fast float %1011, 5.000000e-01
  %1019 = fadd fast float %1013, 5.000000e-01
  %1020 = fadd fast float %1015, 5.000000e-01
  %1021 = fadd fast float %1017, 5.000000e-01
  %1022 = fmul fast float %888, 0x3FD08654A0000000
  %1023 = fmul fast float %1022, %972
  %1024 = fmul fast float %879, 0x3FD08654A0000000
  %1025 = fmul fast float %1024, %973
  %1026 = fmul fast float %894, 0x3FD08654A0000000
  %1027 = fmul fast float %1026, %971
  %1028 = fmul fast float %885, 0x3FD08654A0000000
  %1029 = fmul fast float %1028, %972
  %1030 = fadd fast float %1023, 5.000000e-01
  %1031 = fadd fast float %1025, 5.000000e-01
  %1032 = fadd fast float %1027, 5.000000e-01
  %1033 = fadd fast float %1029, 5.000000e-01
  %1034 = fmul fast float %876, 0x3FD08654A0000000
  %1035 = fmul fast float %1034, %973
  %1036 = fmul fast float %898, 0x3FD08654A0000000
  %1037 = fmul fast float %1036, %971
  %1038 = fmul fast float %889, 0x3FD08654A0000000
  %1039 = fmul fast float %1038, %972
  %1040 = fmul fast float %880, 0x3FD08654A0000000
  %1041 = fmul fast float %1040, %973
  %1042 = fadd fast float %1035, 5.000000e-01
  %1043 = fadd fast float %1037, 5.000000e-01
  %1044 = fadd fast float %1039, 5.000000e-01
  %1045 = fadd fast float %1041, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %964, i32 %965, i32 %966, float %902, float %893, float %884, float %902, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %964, i32 %965, i32 %966, float %982, float %983, float %984, float %985, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1046 = add i32 %969, %964
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1046, i32 %965, i32 %966, float %994, float %995, float %996, float %997, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1047 = add i32 %970, %965
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %964, i32 %1047, i32 %966, float %1006, float %1007, float %1008, float %1009, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1046, i32 %1047, i32 %966, float %1018, float %1019, float %1020, float %1021, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1048 = shl i32 %970, 1
  %1049 = add i32 %1048, %965
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %964, i32 %1049, i32 %966, float %1030, float %1031, float %1032, float %1033, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1046, i32 %1049, i32 %966, float %1042, float %1043, float %1044, float %1045, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1050

; <label>:1050                                    ; preds = %967, %962, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !22, null}
!5 = !{!6, !7, !9, !10, !11, !13, !14, !16, !17}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<GfxGpuDynLightsetsLGVReference>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 8}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !12}
!12 = !{i32 0, i32 9}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !15}
!17 = !{i32 8, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !15}
!18 = !{!19, !20}
!19 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !12}
!20 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i1 false, i1 false, i1 false, !21}
!21 = !{i32 0, i32 14}
!22 = !{!23, !24}
!23 = !{i32 0, %GfxDynLightProbeShared* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!24 = !{i32 1, %GfxDynLightProbeOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!25 = !{void ()* @cs_probes_mixed_blend_9to16_tex, !"cs_probes_mixed_blend_9to16_tex", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 64, i32 1, i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

