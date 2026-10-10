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
; shader hash: fadf169c4c9f3b7edc3734b35cf74d53
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
;                                   texture     u32         buf      T6             t8     1
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

define void @cs_probes_opt_blend_1to4_tex() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = and i32 %14, 1073741823
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %687, !dx.controlflow.hints !26

; <label>:17                                      ; preds = %0
  %18 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %19 = add i32 %18, %12
  %20 = shl i32 %19, 5
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = extractvalue %dx.types.ResRet.i32 %21, 1
  %24 = extractvalue %dx.types.ResRet.i32 %21, 2
  %25 = extractvalue %dx.types.ResRet.i32 %21, 3
  %26 = or i32 %20, 16
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = extractvalue %dx.types.ResRet.i32 %27, 1
  %30 = extractvalue %dx.types.ResRet.i32 %27, 2
  %31 = shl i32 %22, 4
  %32 = and i32 %31, 32752
  %33 = call float @dx.op.legacyF16ToF32(i32 131, i32 %32)  ; LegacyF16ToF32(value)
  %34 = lshr i32 %22, 7
  %35 = and i32 %34, 32752
  %36 = call float @dx.op.legacyF16ToF32(i32 131, i32 %35)  ; LegacyF16ToF32(value)
  %37 = lshr i32 %22, 22
  %38 = shl nuw nsw i32 %37, 5
  %39 = call float @dx.op.legacyF16ToF32(i32 131, i32 %38)  ; LegacyF16ToF32(value)
  %40 = and i32 %23, 255
  %41 = uitofp i32 %40 to float
  %42 = fmul fast float %41, 0x3F80204080000000
  %43 = fadd fast float %42, -1.000000e+00
  %44 = lshr i32 %23, 8
  %45 = and i32 %44, 255
  %46 = uitofp i32 %45 to float
  %47 = fmul fast float %46, 0x3F80204080000000
  %48 = fadd fast float %47, -1.000000e+00
  %49 = lshr i32 %23, 16
  %50 = and i32 %49, 255
  %51 = uitofp i32 %50 to float
  %52 = fmul fast float %51, 0x3F80204080000000
  %53 = fadd fast float %52, -1.000000e+00
  %54 = lshr i32 %23, 24
  %55 = uitofp i32 %54 to float
  %56 = fmul fast float %55, 0x3F80204080000000
  %57 = fadd fast float %56, -1.000000e+00
  %58 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %59 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %60 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %61 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %62 = fmul fast float %33, 0x3FFBB67AE0000000
  %63 = fmul fast float %62, %43
  %64 = fmul fast float %63, %58
  %65 = fmul fast float %62, %48
  %66 = fmul fast float %65, %59
  %67 = fmul fast float %62, %53
  %68 = fmul fast float %67, %60
  %69 = fmul fast float %33, 0x3FFEFBDEC0000000
  %70 = fmul fast float %69, %57
  %71 = fmul fast float %70, %61
  %72 = and i32 %24, 255
  %73 = uitofp i32 %72 to float
  %74 = fmul fast float %73, 0x3F80204080000000
  %75 = fadd fast float %74, -1.000000e+00
  %76 = lshr i32 %24, 8
  %77 = and i32 %76, 255
  %78 = uitofp i32 %77 to float
  %79 = fmul fast float %78, 0x3F80204080000000
  %80 = fadd fast float %79, -1.000000e+00
  %81 = lshr i32 %24, 16
  %82 = and i32 %81, 255
  %83 = uitofp i32 %82 to float
  %84 = fmul fast float %83, 0x3F80204080000000
  %85 = fadd fast float %84, -1.000000e+00
  %86 = lshr i32 %24, 24
  %87 = uitofp i32 %86 to float
  %88 = fmul fast float %87, 0x3F80204080000000
  %89 = fadd fast float %88, -1.000000e+00
  %90 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %91 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %92 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %93 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %94 = fmul fast float %69, %75
  %95 = fmul fast float %94, %90
  %96 = fmul fast float %33, 0x4001E377A0000000
  %97 = fmul fast float %96, %80
  %98 = fmul fast float %97, %91
  %99 = fmul fast float %69, %85
  %100 = fmul fast float %99, %92
  %101 = fmul fast float %69, %89
  %102 = fmul fast float %101, %93
  %103 = and i32 %25, 255
  %104 = uitofp i32 %103 to float
  %105 = fmul fast float %104, 0x3F80204080000000
  %106 = fadd fast float %105, -1.000000e+00
  %107 = lshr i32 %25, 8
  %108 = and i32 %107, 255
  %109 = uitofp i32 %108 to float
  %110 = fmul fast float %109, 0x3F80204080000000
  %111 = fadd fast float %110, -1.000000e+00
  %112 = lshr i32 %25, 16
  %113 = and i32 %112, 255
  %114 = uitofp i32 %113 to float
  %115 = fmul fast float %114, 0x3F80204080000000
  %116 = fadd fast float %115, -1.000000e+00
  %117 = lshr i32 %25, 24
  %118 = uitofp i32 %117 to float
  %119 = fmul fast float %118, 0x3F80204080000000
  %120 = fadd fast float %119, -1.000000e+00
  %121 = call float @dx.op.unary.f32(i32 6, float %106)  ; FAbs(value)
  %122 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %123 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %124 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %125 = fmul fast float %36, 0x3FFBB67AE0000000
  %126 = fmul fast float %125, %106
  %127 = fmul fast float %126, %121
  %128 = fmul fast float %125, %111
  %129 = fmul fast float %128, %122
  %130 = fmul fast float %125, %116
  %131 = fmul fast float %130, %123
  %132 = fmul fast float %36, 0x3FFEFBDEC0000000
  %133 = fmul fast float %132, %120
  %134 = fmul fast float %133, %124
  %135 = and i32 %28, 255
  %136 = uitofp i32 %135 to float
  %137 = fmul fast float %136, 0x3F80204080000000
  %138 = fadd fast float %137, -1.000000e+00
  %139 = lshr i32 %28, 8
  %140 = and i32 %139, 255
  %141 = uitofp i32 %140 to float
  %142 = fmul fast float %141, 0x3F80204080000000
  %143 = fadd fast float %142, -1.000000e+00
  %144 = lshr i32 %28, 16
  %145 = and i32 %144, 255
  %146 = uitofp i32 %145 to float
  %147 = fmul fast float %146, 0x3F80204080000000
  %148 = fadd fast float %147, -1.000000e+00
  %149 = lshr i32 %28, 24
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, 0x3F80204080000000
  %152 = fadd fast float %151, -1.000000e+00
  %153 = call float @dx.op.unary.f32(i32 6, float %138)  ; FAbs(value)
  %154 = call float @dx.op.unary.f32(i32 6, float %143)  ; FAbs(value)
  %155 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %156 = call float @dx.op.unary.f32(i32 6, float %152)  ; FAbs(value)
  %157 = fmul fast float %132, %138
  %158 = fmul fast float %157, %153
  %159 = fmul fast float %36, 0x4001E377A0000000
  %160 = fmul fast float %159, %143
  %161 = fmul fast float %160, %154
  %162 = fmul fast float %132, %148
  %163 = fmul fast float %162, %155
  %164 = fmul fast float %132, %152
  %165 = fmul fast float %164, %156
  %166 = and i32 %29, 255
  %167 = uitofp i32 %166 to float
  %168 = fmul fast float %167, 0x3F80204080000000
  %169 = fadd fast float %168, -1.000000e+00
  %170 = lshr i32 %29, 8
  %171 = and i32 %170, 255
  %172 = uitofp i32 %171 to float
  %173 = fmul fast float %172, 0x3F80204080000000
  %174 = fadd fast float %173, -1.000000e+00
  %175 = lshr i32 %29, 16
  %176 = and i32 %175, 255
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F80204080000000
  %179 = fadd fast float %178, -1.000000e+00
  %180 = lshr i32 %29, 24
  %181 = uitofp i32 %180 to float
  %182 = fmul fast float %181, 0x3F80204080000000
  %183 = fadd fast float %182, -1.000000e+00
  %184 = call float @dx.op.unary.f32(i32 6, float %169)  ; FAbs(value)
  %185 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %186 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %187 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %188 = fmul fast float %39, 0x3FFBB67AE0000000
  %189 = fmul fast float %188, %169
  %190 = fmul fast float %189, %184
  %191 = fmul fast float %188, %174
  %192 = fmul fast float %191, %185
  %193 = fmul fast float %188, %179
  %194 = fmul fast float %193, %186
  %195 = fmul fast float %39, 0x3FFEFBDEC0000000
  %196 = fmul fast float %195, %183
  %197 = fmul fast float %196, %187
  %198 = and i32 %30, 255
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F80204080000000
  %201 = fadd fast float %200, -1.000000e+00
  %202 = lshr i32 %30, 8
  %203 = and i32 %202, 255
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F80204080000000
  %206 = fadd fast float %205, -1.000000e+00
  %207 = lshr i32 %30, 16
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F80204080000000
  %211 = fadd fast float %210, -1.000000e+00
  %212 = lshr i32 %30, 24
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F80204080000000
  %215 = fadd fast float %214, -1.000000e+00
  %216 = call float @dx.op.unary.f32(i32 6, float %201)  ; FAbs(value)
  %217 = call float @dx.op.unary.f32(i32 6, float %206)  ; FAbs(value)
  %218 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %219 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %220 = fmul fast float %195, %201
  %221 = fmul fast float %220, %216
  %222 = fmul fast float %39, 0x4001E377A0000000
  %223 = fmul fast float %222, %206
  %224 = fmul fast float %223, %217
  %225 = fmul fast float %195, %211
  %226 = fmul fast float %225, %218
  %227 = fmul fast float %195, %215
  %228 = fmul fast float %227, %219
  %229 = lshr i32 %14, 30
  br label %230

; <label>:230                                     ; preds = %230, %17
  %231 = phi float [ %228, %17 ], [ %536, %230 ]
  %232 = phi float [ %226, %17 ], [ %532, %230 ]
  %233 = phi float [ %224, %17 ], [ %528, %230 ]
  %234 = phi float [ %221, %17 ], [ %523, %230 ]
  %235 = phi float [ %197, %17 ], [ %519, %230 ]
  %236 = phi float [ %194, %17 ], [ %514, %230 ]
  %237 = phi float [ %192, %17 ], [ %510, %230 ]
  %238 = phi float [ %190, %17 ], [ %506, %230 ]
  %239 = phi float [ %39, %17 ], [ %501, %230 ]
  %240 = phi float [ %165, %17 ], [ %499, %230 ]
  %241 = phi float [ %163, %17 ], [ %495, %230 ]
  %242 = phi float [ %161, %17 ], [ %491, %230 ]
  %243 = phi float [ %158, %17 ], [ %486, %230 ]
  %244 = phi float [ %134, %17 ], [ %482, %230 ]
  %245 = phi float [ %131, %17 ], [ %477, %230 ]
  %246 = phi float [ %129, %17 ], [ %473, %230 ]
  %247 = phi float [ %127, %17 ], [ %469, %230 ]
  %248 = phi float [ %36, %17 ], [ %464, %230 ]
  %249 = phi float [ %102, %17 ], [ %462, %230 ]
  %250 = phi float [ %100, %17 ], [ %458, %230 ]
  %251 = phi float [ %98, %17 ], [ %454, %230 ]
  %252 = phi float [ %95, %17 ], [ %449, %230 ]
  %253 = phi float [ %71, %17 ], [ %445, %230 ]
  %254 = phi float [ %68, %17 ], [ %440, %230 ]
  %255 = phi float [ %66, %17 ], [ %436, %230 ]
  %256 = phi float [ %64, %17 ], [ %432, %230 ]
  %257 = phi float [ %33, %17 ], [ %427, %230 ]
  %258 = phi i32 [ 0, %17 ], [ %537, %230 ]
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 2
  %261 = add i32 %260, %12
  %262 = extractvalue %dx.types.CBufRet.i32 %259, 3
  %263 = mul nuw nsw i32 %258, 3
  %264 = lshr i32 %262, %263
  %265 = and i32 %264, 7
  %266 = mul i32 %265, %15
  %267 = add i32 %261, %266
  %268 = shl i32 %267, 5
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = extractvalue %dx.types.ResRet.i32 %269, 1
  %272 = extractvalue %dx.types.ResRet.i32 %269, 2
  %273 = extractvalue %dx.types.ResRet.i32 %269, 3
  %274 = or i32 %268, 16
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = extractvalue %dx.types.ResRet.i32 %275, 1
  %278 = extractvalue %dx.types.ResRet.i32 %275, 2
  %279 = extractvalue %dx.types.ResRet.i32 %275, 3
  %280 = shl i32 %270, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %270, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %270, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = and i32 %271, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F80204080000000
  %292 = fadd fast float %291, -1.000000e+00
  %293 = lshr i32 %271, 8
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F80204080000000
  %297 = fadd fast float %296, -1.000000e+00
  %298 = lshr i32 %271, 16
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F80204080000000
  %302 = fadd fast float %301, -1.000000e+00
  %303 = lshr i32 %271, 24
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F80204080000000
  %306 = fadd fast float %305, -1.000000e+00
  %307 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %308 = call float @dx.op.unary.f32(i32 6, float %297)  ; FAbs(value)
  %309 = call float @dx.op.unary.f32(i32 6, float %302)  ; FAbs(value)
  %310 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %311 = and i32 %272, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F80204080000000
  %314 = fadd fast float %313, -1.000000e+00
  %315 = lshr i32 %272, 8
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F80204080000000
  %319 = fadd fast float %318, -1.000000e+00
  %320 = lshr i32 %272, 16
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F80204080000000
  %324 = fadd fast float %323, -1.000000e+00
  %325 = lshr i32 %272, 24
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F80204080000000
  %328 = fadd fast float %327, -1.000000e+00
  %329 = call float @dx.op.unary.f32(i32 6, float %314)  ; FAbs(value)
  %330 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %331 = call float @dx.op.unary.f32(i32 6, float %324)  ; FAbs(value)
  %332 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  %333 = and i32 %273, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F80204080000000
  %336 = fadd fast float %335, -1.000000e+00
  %337 = lshr i32 %273, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F80204080000000
  %341 = fadd fast float %340, -1.000000e+00
  %342 = lshr i32 %273, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F80204080000000
  %346 = fadd fast float %345, -1.000000e+00
  %347 = lshr i32 %273, 24
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F80204080000000
  %350 = fadd fast float %349, -1.000000e+00
  %351 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %352 = call float @dx.op.unary.f32(i32 6, float %341)  ; FAbs(value)
  %353 = call float @dx.op.unary.f32(i32 6, float %346)  ; FAbs(value)
  %354 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %355 = and i32 %276, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F80204080000000
  %358 = fadd fast float %357, -1.000000e+00
  %359 = lshr i32 %276, 8
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F80204080000000
  %363 = fadd fast float %362, -1.000000e+00
  %364 = lshr i32 %276, 16
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F80204080000000
  %368 = fadd fast float %367, -1.000000e+00
  %369 = lshr i32 %276, 24
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F80204080000000
  %372 = fadd fast float %371, -1.000000e+00
  %373 = call float @dx.op.unary.f32(i32 6, float %358)  ; FAbs(value)
  %374 = call float @dx.op.unary.f32(i32 6, float %363)  ; FAbs(value)
  %375 = call float @dx.op.unary.f32(i32 6, float %368)  ; FAbs(value)
  %376 = call float @dx.op.unary.f32(i32 6, float %372)  ; FAbs(value)
  %377 = and i32 %277, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F80204080000000
  %380 = fadd fast float %379, -1.000000e+00
  %381 = lshr i32 %277, 8
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F80204080000000
  %385 = fadd fast float %384, -1.000000e+00
  %386 = lshr i32 %277, 16
  %387 = and i32 %386, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F80204080000000
  %390 = fadd fast float %389, -1.000000e+00
  %391 = lshr i32 %277, 24
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F80204080000000
  %394 = fadd fast float %393, -1.000000e+00
  %395 = call float @dx.op.unary.f32(i32 6, float %380)  ; FAbs(value)
  %396 = call float @dx.op.unary.f32(i32 6, float %385)  ; FAbs(value)
  %397 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %398 = call float @dx.op.unary.f32(i32 6, float %394)  ; FAbs(value)
  %399 = and i32 %278, 255
  %400 = uitofp i32 %399 to float
  %401 = fmul fast float %400, 0x3F80204080000000
  %402 = fadd fast float %401, -1.000000e+00
  %403 = lshr i32 %278, 8
  %404 = and i32 %403, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F80204080000000
  %407 = fadd fast float %406, -1.000000e+00
  %408 = lshr i32 %278, 16
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F80204080000000
  %412 = fadd fast float %411, -1.000000e+00
  %413 = lshr i32 %278, 24
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F80204080000000
  %416 = fadd fast float %415, -1.000000e+00
  %417 = call float @dx.op.unary.f32(i32 6, float %402)  ; FAbs(value)
  %418 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %419 = call float @dx.op.unary.f32(i32 6, float %412)  ; FAbs(value)
  %420 = call float @dx.op.unary.f32(i32 6, float %416)  ; FAbs(value)
  %421 = and i32 %279, 255
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = fmul fast float %423, %282
  %427 = fadd fast float %426, %257
  %428 = fmul fast float %282, 0x3FFBB67AE0000000
  %429 = fmul fast float %428, %292
  %430 = fmul fast float %429, %307
  %431 = fmul fast float %430, %423
  %432 = fadd fast float %431, %256
  %433 = fmul fast float %428, %297
  %434 = fmul fast float %433, %308
  %435 = fmul fast float %434, %423
  %436 = fadd fast float %435, %255
  %437 = fmul fast float %428, %302
  %438 = fmul fast float %437, %309
  %439 = fmul fast float %438, %423
  %440 = fadd fast float %439, %254
  %441 = fmul fast float %282, 0x3FFEFBDEC0000000
  %442 = fmul fast float %441, %306
  %443 = fmul fast float %442, %310
  %444 = fmul fast float %443, %423
  %445 = fadd fast float %444, %253
  %446 = fmul fast float %441, %314
  %447 = fmul fast float %446, %329
  %448 = fmul fast float %447, %423
  %449 = fadd fast float %448, %252
  %450 = fmul fast float %282, 0x4001E377A0000000
  %451 = fmul fast float %450, %319
  %452 = fmul fast float %451, %330
  %453 = fmul fast float %452, %423
  %454 = fadd fast float %453, %251
  %455 = fmul fast float %441, %324
  %456 = fmul fast float %455, %331
  %457 = fmul fast float %456, %423
  %458 = fadd fast float %457, %250
  %459 = fmul fast float %441, %328
  %460 = fmul fast float %459, %332
  %461 = fmul fast float %460, %423
  %462 = fadd fast float %461, %249
  %463 = fmul fast float %424, %285
  %464 = fadd fast float %463, %248
  %465 = fmul fast float %285, 0x3FFBB67AE0000000
  %466 = fmul fast float %465, %336
  %467 = fmul fast float %466, %351
  %468 = fmul fast float %467, %424
  %469 = fadd fast float %468, %247
  %470 = fmul fast float %465, %341
  %471 = fmul fast float %470, %352
  %472 = fmul fast float %471, %424
  %473 = fadd fast float %472, %246
  %474 = fmul fast float %465, %346
  %475 = fmul fast float %474, %353
  %476 = fmul fast float %475, %424
  %477 = fadd fast float %476, %245
  %478 = fmul fast float %285, 0x3FFEFBDEC0000000
  %479 = fmul fast float %478, %350
  %480 = fmul fast float %479, %354
  %481 = fmul fast float %480, %424
  %482 = fadd fast float %481, %244
  %483 = fmul fast float %478, %358
  %484 = fmul fast float %483, %373
  %485 = fmul fast float %484, %424
  %486 = fadd fast float %485, %243
  %487 = fmul fast float %285, 0x4001E377A0000000
  %488 = fmul fast float %487, %363
  %489 = fmul fast float %488, %374
  %490 = fmul fast float %489, %424
  %491 = fadd fast float %490, %242
  %492 = fmul fast float %478, %368
  %493 = fmul fast float %492, %375
  %494 = fmul fast float %493, %424
  %495 = fadd fast float %494, %241
  %496 = fmul fast float %478, %372
  %497 = fmul fast float %496, %376
  %498 = fmul fast float %497, %424
  %499 = fadd fast float %498, %240
  %500 = fmul fast float %425, %288
  %501 = fadd fast float %500, %239
  %502 = fmul fast float %288, 0x3FFBB67AE0000000
  %503 = fmul fast float %502, %380
  %504 = fmul fast float %503, %395
  %505 = fmul fast float %504, %425
  %506 = fadd fast float %505, %238
  %507 = fmul fast float %502, %385
  %508 = fmul fast float %507, %396
  %509 = fmul fast float %508, %425
  %510 = fadd fast float %509, %237
  %511 = fmul fast float %502, %390
  %512 = fmul fast float %511, %397
  %513 = fmul fast float %512, %425
  %514 = fadd fast float %513, %236
  %515 = fmul fast float %288, 0x3FFEFBDEC0000000
  %516 = fmul fast float %515, %394
  %517 = fmul fast float %516, %398
  %518 = fmul fast float %517, %425
  %519 = fadd fast float %518, %235
  %520 = fmul fast float %515, %402
  %521 = fmul fast float %520, %417
  %522 = fmul fast float %521, %425
  %523 = fadd fast float %522, %234
  %524 = fmul fast float %288, 0x4001E377A0000000
  %525 = fmul fast float %524, %407
  %526 = fmul fast float %525, %418
  %527 = fmul fast float %526, %425
  %528 = fadd fast float %527, %233
  %529 = fmul fast float %515, %412
  %530 = fmul fast float %529, %419
  %531 = fmul fast float %530, %425
  %532 = fadd fast float %531, %232
  %533 = fmul fast float %515, %416
  %534 = fmul fast float %533, %420
  %535 = fmul fast float %534, %425
  %536 = fadd fast float %535, %231
  %537 = add nuw nsw i32 %258, 1
  %538 = icmp eq i32 %258, %229
  br i1 %538, label %539, label %230, !llvm.loop !27

; <label>:539                                     ; preds = %230
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %541, i32 4)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = icmp eq i32 %543, -1
  br i1 %544, label %599, label %545, !dx.controlflow.hints !29

; <label>:545                                     ; preds = %539
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %541, i32 0)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.i32 %548, 3
  %550 = shl i32 %549, 3
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = or i32 %550, 4
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 16777215
  %557 = add i32 %556, %547
  %558 = shl i32 %557, 5
  %559 = or i32 %558, 12
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = or i32 %558, 16
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = lshr i32 %555, 24
  %568 = and i32 %567, 3
  %569 = add nuw nsw i32 %568, 3
  %570 = shl i32 1, %569
  %571 = lshr i32 %555, 29
  %572 = lshr i32 %555, 23
  %573 = and i32 %572, 56
  %574 = shl nuw nsw i32 %571, 3
  %575 = lshr i32 %552, 16
  %576 = and i32 %552, 65535
  %577 = uitofp i32 %570 to float
  %578 = uitofp i32 %575 to float
  %579 = fmul fast float %577, %564
  %580 = fmul fast float %577, %565
  %581 = fmul fast float %566, %578
  %582 = fptosi float %579 to i32
  %583 = fptosi float %580 to i32
  %584 = fptosi float %581 to i32
  %585 = add i32 %582, %573
  %586 = and i32 %561, 255
  %587 = lshr i32 %561, 8
  %588 = and i32 %587, 255
  %589 = mul nuw nsw i32 %588, %586
  %590 = udiv i32 %543, %589
  %591 = urem i32 %543, %589
  %592 = udiv i32 %591, %586
  %593 = urem i32 %591, %586
  %594 = add i32 %585, %593
  %595 = add nuw nsw i32 %592, %574
  %596 = add i32 %595, %583
  %597 = add i32 %590, %576
  %598 = add i32 %597, %584
  br label %599

; <label>:599                                     ; preds = %545, %539
  %600 = phi i1 [ true, %545 ], [ false, %539 ]
  %601 = phi i32 [ %594, %545 ], [ 0, %539 ]
  %602 = phi i32 [ %596, %545 ], [ 0, %539 ]
  %603 = phi i32 [ %598, %545 ], [ 0, %539 ]
  br i1 %600, label %604, label %687, !dx.controlflow.hints !30

; <label>:604                                     ; preds = %599
  %605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.i32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.i32 %605, 1
  %608 = fdiv fast float 1.000000e+00, %427
  %609 = fdiv fast float 1.000000e+00, %464
  %610 = fdiv fast float 1.000000e+00, %501
  %611 = fmul fast float %436, 0x3FD279A740000000
  %612 = fmul fast float %611, %608
  %613 = fmul fast float %473, 0x3FD279A740000000
  %614 = fmul fast float %613, %609
  %615 = fmul fast float %510, 0x3FD279A740000000
  %616 = fmul fast float %615, %610
  %617 = fmul fast float %454, 0x3FCC9F25C0000000
  %618 = fmul fast float %617, %608
  %619 = fadd fast float %612, 5.000000e-01
  %620 = fadd fast float %614, 5.000000e-01
  %621 = fadd fast float %616, 5.000000e-01
  %622 = fadd fast float %618, 5.000000e-01
  %623 = fmul fast float %491, 0x3FCC9F25C0000000
  %624 = fmul fast float %623, %609
  %625 = fmul fast float %528, 0x3FCC9F25C0000000
  %626 = fmul fast float %625, %610
  %627 = fmul fast float %432, 0x3FD279A740000000
  %628 = fmul fast float %627, %608
  %629 = fmul fast float %469, 0x3FD279A740000000
  %630 = fmul fast float %629, %609
  %631 = fadd fast float %624, 5.000000e-01
  %632 = fadd fast float %626, 5.000000e-01
  %633 = fadd fast float %628, 5.000000e-01
  %634 = fadd fast float %630, 5.000000e-01
  %635 = fmul fast float %506, 0x3FD279A740000000
  %636 = fmul fast float %635, %610
  %637 = fmul fast float %440, 0x3FD279A740000000
  %638 = fmul fast float %637, %608
  %639 = fmul fast float %477, 0x3FD279A740000000
  %640 = fmul fast float %639, %609
  %641 = fmul fast float %514, 0x3FD279A740000000
  %642 = fmul fast float %641, %610
  %643 = fadd fast float %636, 5.000000e-01
  %644 = fadd fast float %638, 5.000000e-01
  %645 = fadd fast float %640, 5.000000e-01
  %646 = fadd fast float %642, 5.000000e-01
  %647 = fmul fast float %458, 0x3FD08654A0000000
  %648 = fmul fast float %647, %608
  %649 = fmul fast float %495, 0x3FD08654A0000000
  %650 = fmul fast float %649, %609
  %651 = fmul fast float %532, 0x3FD08654A0000000
  %652 = fmul fast float %651, %610
  %653 = fmul fast float %449, 0x3FD08654A0000000
  %654 = fmul fast float %653, %608
  %655 = fadd fast float %648, 5.000000e-01
  %656 = fadd fast float %650, 5.000000e-01
  %657 = fadd fast float %652, 5.000000e-01
  %658 = fadd fast float %654, 5.000000e-01
  %659 = fmul fast float %486, 0x3FD08654A0000000
  %660 = fmul fast float %659, %609
  %661 = fmul fast float %523, 0x3FD08654A0000000
  %662 = fmul fast float %661, %610
  %663 = fmul fast float %462, 0x3FD08654A0000000
  %664 = fmul fast float %663, %608
  %665 = fmul fast float %499, 0x3FD08654A0000000
  %666 = fmul fast float %665, %609
  %667 = fadd fast float %660, 5.000000e-01
  %668 = fadd fast float %662, 5.000000e-01
  %669 = fadd fast float %664, 5.000000e-01
  %670 = fadd fast float %666, 5.000000e-01
  %671 = fmul fast float %536, 0x3FD08654A0000000
  %672 = fmul fast float %671, %610
  %673 = fmul fast float %445, 0x3FD08654A0000000
  %674 = fmul fast float %673, %608
  %675 = fmul fast float %482, 0x3FD08654A0000000
  %676 = fmul fast float %675, %609
  %677 = fmul fast float %519, 0x3FD08654A0000000
  %678 = fmul fast float %677, %610
  %679 = fadd fast float %672, 5.000000e-01
  %680 = fadd fast float %674, 5.000000e-01
  %681 = fadd fast float %676, 5.000000e-01
  %682 = fadd fast float %678, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %601, i32 %602, i32 %603, float %427, float %464, float %501, float %427, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %601, i32 %602, i32 %603, float %619, float %620, float %621, float %622, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %683 = add i32 %606, %601
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %683, i32 %602, i32 %603, float %631, float %632, float %633, float %634, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %684 = add i32 %607, %602
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %601, i32 %684, i32 %603, float %643, float %644, float %645, float %646, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %683, i32 %684, i32 %603, float %655, float %656, float %657, float %658, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %685 = shl i32 %607, 1
  %686 = add i32 %685, %602
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %601, i32 %686, i32 %603, float %667, float %668, float %669, float %670, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %683, i32 %686, i32 %603, float %679, float %680, float %681, float %682, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %687

; <label>:687                                     ; preds = %604, %599, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !20, null}
!5 = !{!6, !7, !9, !10, !11, !13, !14}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<GfxGpuDynLightsetsLGVReference>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 8}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !12}
!12 = !{i32 0, i32 9}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{!17, !18}
!17 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !12}
!18 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i1 false, i1 false, i1 false, !19}
!19 = !{i32 0, i32 14}
!20 = !{!21, !22}
!21 = !{i32 0, %GfxDynLightProbeShared* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!22 = !{i32 1, %GfxDynLightProbeOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!23 = !{void ()* @cs_probes_opt_blend_1to4_tex, !"cs_probes_opt_blend_1to4_tex", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 64, i32 1, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

