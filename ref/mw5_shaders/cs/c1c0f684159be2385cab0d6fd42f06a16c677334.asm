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
; shader hash: 13ae124b9a915c20b5c3d4b0728d3114
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

define void @cs_probes_mixed_blend_5to8_tex() {
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
  br i1 %17, label %18, label %1045, !dx.controlflow.hints !28

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %21 = lshr i32 %14, 4
  %22 = add i32 %20, %21
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = shl i32 %14, 1
  %28 = and i32 %27, 30
  %29 = lshr i32 %26, %28
  %30 = shl i32 1, %28
  %31 = add i32 %30, -1
  %32 = and i32 %26, %31
  %33 = and i32 %32, 1431655765
  %34 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %33)  ; Countbits(value)
  %35 = and i32 %32, -1431655766
  %36 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %35)  ; Countbits(value)
  %37 = shl i32 %36, 1
  %38 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %39 = mul i32 %14, 5
  %40 = add i32 %24, %39
  %41 = add i32 %40, %34
  %42 = add i32 %41, %37
  %43 = add i32 %42, %38
  %44 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %45 = add i32 %44, %14
  %46 = shl i32 %45, 5
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = extractvalue %dx.types.ResRet.i32 %47, 2
  %51 = extractvalue %dx.types.ResRet.i32 %47, 3
  %52 = or i32 %46, 16
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = extractvalue %dx.types.ResRet.i32 %53, 1
  %56 = extractvalue %dx.types.ResRet.i32 %53, 2
  %57 = shl i32 %48, 4
  %58 = and i32 %57, 32752
  %59 = call float @dx.op.legacyF16ToF32(i32 131, i32 %58)  ; LegacyF16ToF32(value)
  %60 = lshr i32 %48, 7
  %61 = and i32 %60, 32752
  %62 = call float @dx.op.legacyF16ToF32(i32 131, i32 %61)  ; LegacyF16ToF32(value)
  %63 = lshr i32 %48, 22
  %64 = shl nuw nsw i32 %63, 5
  %65 = call float @dx.op.legacyF16ToF32(i32 131, i32 %64)  ; LegacyF16ToF32(value)
  %66 = and i32 %49, 255
  %67 = uitofp i32 %66 to float
  %68 = fmul fast float %67, 0x3F80204080000000
  %69 = fadd fast float %68, -1.000000e+00
  %70 = lshr i32 %49, 8
  %71 = and i32 %70, 255
  %72 = uitofp i32 %71 to float
  %73 = fmul fast float %72, 0x3F80204080000000
  %74 = fadd fast float %73, -1.000000e+00
  %75 = lshr i32 %49, 16
  %76 = and i32 %75, 255
  %77 = uitofp i32 %76 to float
  %78 = fmul fast float %77, 0x3F80204080000000
  %79 = fadd fast float %78, -1.000000e+00
  %80 = lshr i32 %49, 24
  %81 = uitofp i32 %80 to float
  %82 = fmul fast float %81, 0x3F80204080000000
  %83 = fadd fast float %82, -1.000000e+00
  %84 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %85 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %86 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %87 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %88 = fmul fast float %59, 0x3FFBB67AE0000000
  %89 = fmul fast float %88, %69
  %90 = fmul fast float %89, %84
  %91 = fmul fast float %88, %74
  %92 = fmul fast float %91, %85
  %93 = fmul fast float %88, %79
  %94 = fmul fast float %93, %86
  %95 = fmul fast float %59, 0x3FFEFBDEC0000000
  %96 = fmul fast float %95, %83
  %97 = fmul fast float %96, %87
  %98 = and i32 %50, 255
  %99 = uitofp i32 %98 to float
  %100 = fmul fast float %99, 0x3F80204080000000
  %101 = fadd fast float %100, -1.000000e+00
  %102 = lshr i32 %50, 8
  %103 = and i32 %102, 255
  %104 = uitofp i32 %103 to float
  %105 = fmul fast float %104, 0x3F80204080000000
  %106 = fadd fast float %105, -1.000000e+00
  %107 = lshr i32 %50, 16
  %108 = and i32 %107, 255
  %109 = uitofp i32 %108 to float
  %110 = fmul fast float %109, 0x3F80204080000000
  %111 = fadd fast float %110, -1.000000e+00
  %112 = lshr i32 %50, 24
  %113 = uitofp i32 %112 to float
  %114 = fmul fast float %113, 0x3F80204080000000
  %115 = fadd fast float %114, -1.000000e+00
  %116 = call float @dx.op.unary.f32(i32 6, float %101)  ; FAbs(value)
  %117 = call float @dx.op.unary.f32(i32 6, float %106)  ; FAbs(value)
  %118 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %119 = call float @dx.op.unary.f32(i32 6, float %115)  ; FAbs(value)
  %120 = fmul fast float %95, %101
  %121 = fmul fast float %120, %116
  %122 = fmul fast float %59, 0x4001E377A0000000
  %123 = fmul fast float %122, %106
  %124 = fmul fast float %123, %117
  %125 = fmul fast float %95, %111
  %126 = fmul fast float %125, %118
  %127 = fmul fast float %95, %115
  %128 = fmul fast float %127, %119
  %129 = and i32 %51, 255
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %130, 0x3F80204080000000
  %132 = fadd fast float %131, -1.000000e+00
  %133 = lshr i32 %51, 8
  %134 = and i32 %133, 255
  %135 = uitofp i32 %134 to float
  %136 = fmul fast float %135, 0x3F80204080000000
  %137 = fadd fast float %136, -1.000000e+00
  %138 = lshr i32 %51, 16
  %139 = and i32 %138, 255
  %140 = uitofp i32 %139 to float
  %141 = fmul fast float %140, 0x3F80204080000000
  %142 = fadd fast float %141, -1.000000e+00
  %143 = lshr i32 %51, 24
  %144 = uitofp i32 %143 to float
  %145 = fmul fast float %144, 0x3F80204080000000
  %146 = fadd fast float %145, -1.000000e+00
  %147 = call float @dx.op.unary.f32(i32 6, float %132)  ; FAbs(value)
  %148 = call float @dx.op.unary.f32(i32 6, float %137)  ; FAbs(value)
  %149 = call float @dx.op.unary.f32(i32 6, float %142)  ; FAbs(value)
  %150 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %151 = fmul fast float %62, 0x3FFBB67AE0000000
  %152 = fmul fast float %151, %132
  %153 = fmul fast float %152, %147
  %154 = fmul fast float %151, %137
  %155 = fmul fast float %154, %148
  %156 = fmul fast float %151, %142
  %157 = fmul fast float %156, %149
  %158 = fmul fast float %62, 0x3FFEFBDEC0000000
  %159 = fmul fast float %158, %146
  %160 = fmul fast float %159, %150
  %161 = and i32 %54, 255
  %162 = uitofp i32 %161 to float
  %163 = fmul fast float %162, 0x3F80204080000000
  %164 = fadd fast float %163, -1.000000e+00
  %165 = lshr i32 %54, 8
  %166 = and i32 %165, 255
  %167 = uitofp i32 %166 to float
  %168 = fmul fast float %167, 0x3F80204080000000
  %169 = fadd fast float %168, -1.000000e+00
  %170 = lshr i32 %54, 16
  %171 = and i32 %170, 255
  %172 = uitofp i32 %171 to float
  %173 = fmul fast float %172, 0x3F80204080000000
  %174 = fadd fast float %173, -1.000000e+00
  %175 = lshr i32 %54, 24
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F80204080000000
  %178 = fadd fast float %177, -1.000000e+00
  %179 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %180 = call float @dx.op.unary.f32(i32 6, float %169)  ; FAbs(value)
  %181 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %182 = call float @dx.op.unary.f32(i32 6, float %178)  ; FAbs(value)
  %183 = fmul fast float %158, %164
  %184 = fmul fast float %183, %179
  %185 = fmul fast float %62, 0x4001E377A0000000
  %186 = fmul fast float %185, %169
  %187 = fmul fast float %186, %180
  %188 = fmul fast float %158, %174
  %189 = fmul fast float %188, %181
  %190 = fmul fast float %158, %178
  %191 = fmul fast float %190, %182
  %192 = and i32 %55, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F80204080000000
  %195 = fadd fast float %194, -1.000000e+00
  %196 = lshr i32 %55, 8
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F80204080000000
  %200 = fadd fast float %199, -1.000000e+00
  %201 = lshr i32 %55, 16
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F80204080000000
  %205 = fadd fast float %204, -1.000000e+00
  %206 = lshr i32 %55, 24
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F80204080000000
  %209 = fadd fast float %208, -1.000000e+00
  %210 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %211 = call float @dx.op.unary.f32(i32 6, float %200)  ; FAbs(value)
  %212 = call float @dx.op.unary.f32(i32 6, float %205)  ; FAbs(value)
  %213 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %214 = fmul fast float %65, 0x3FFBB67AE0000000
  %215 = fmul fast float %214, %195
  %216 = fmul fast float %215, %210
  %217 = fmul fast float %214, %200
  %218 = fmul fast float %217, %211
  %219 = fmul fast float %214, %205
  %220 = fmul fast float %219, %212
  %221 = fmul fast float %65, 0x3FFEFBDEC0000000
  %222 = fmul fast float %221, %209
  %223 = fmul fast float %222, %213
  %224 = and i32 %56, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F80204080000000
  %227 = fadd fast float %226, -1.000000e+00
  %228 = lshr i32 %56, 8
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F80204080000000
  %232 = fadd fast float %231, -1.000000e+00
  %233 = lshr i32 %56, 16
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F80204080000000
  %237 = fadd fast float %236, -1.000000e+00
  %238 = lshr i32 %56, 24
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F80204080000000
  %241 = fadd fast float %240, -1.000000e+00
  %242 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %243 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %244 = call float @dx.op.unary.f32(i32 6, float %237)  ; FAbs(value)
  %245 = call float @dx.op.unary.f32(i32 6, float %241)  ; FAbs(value)
  %246 = fmul fast float %221, %227
  %247 = fmul fast float %246, %242
  %248 = fmul fast float %65, 0x4001E377A0000000
  %249 = fmul fast float %248, %232
  %250 = fmul fast float %249, %243
  %251 = fmul fast float %221, %237
  %252 = fmul fast float %251, %244
  %253 = fmul fast float %221, %241
  %254 = fmul fast float %253, %245
  %255 = add i32 %24, %38
  %256 = add i32 %255, %34
  %257 = add i32 %256, %39
  %258 = add i32 %257, %37
  br label %259

; <label>:259                                     ; preds = %259, %18
  %260 = phi float [ %254, %18 ], [ %557, %259 ]
  %261 = phi float [ %252, %18 ], [ %553, %259 ]
  %262 = phi float [ %250, %18 ], [ %549, %259 ]
  %263 = phi float [ %247, %18 ], [ %544, %259 ]
  %264 = phi float [ %223, %18 ], [ %540, %259 ]
  %265 = phi float [ %220, %18 ], [ %535, %259 ]
  %266 = phi float [ %218, %18 ], [ %531, %259 ]
  %267 = phi float [ %216, %18 ], [ %527, %259 ]
  %268 = phi float [ %65, %18 ], [ %522, %259 ]
  %269 = phi float [ %191, %18 ], [ %520, %259 ]
  %270 = phi float [ %189, %18 ], [ %516, %259 ]
  %271 = phi float [ %187, %18 ], [ %512, %259 ]
  %272 = phi float [ %184, %18 ], [ %507, %259 ]
  %273 = phi float [ %160, %18 ], [ %503, %259 ]
  %274 = phi float [ %157, %18 ], [ %498, %259 ]
  %275 = phi float [ %155, %18 ], [ %494, %259 ]
  %276 = phi float [ %153, %18 ], [ %490, %259 ]
  %277 = phi float [ %62, %18 ], [ %485, %259 ]
  %278 = phi float [ %128, %18 ], [ %483, %259 ]
  %279 = phi float [ %126, %18 ], [ %479, %259 ]
  %280 = phi float [ %124, %18 ], [ %475, %259 ]
  %281 = phi float [ %121, %18 ], [ %470, %259 ]
  %282 = phi float [ %97, %18 ], [ %466, %259 ]
  %283 = phi float [ %94, %18 ], [ %461, %259 ]
  %284 = phi float [ %92, %18 ], [ %457, %259 ]
  %285 = phi float [ %90, %18 ], [ %453, %259 ]
  %286 = phi float [ %59, %18 ], [ %448, %259 ]
  %287 = phi i32 [ %43, %18 ], [ %558, %259 ]
  %288 = phi i32 [ 0, %18 ], [ %559, %259 ]
  %289 = shl i32 %287, 5
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = extractvalue %dx.types.ResRet.i32 %290, 1
  %293 = extractvalue %dx.types.ResRet.i32 %290, 2
  %294 = extractvalue %dx.types.ResRet.i32 %290, 3
  %295 = or i32 %289, 16
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = extractvalue %dx.types.ResRet.i32 %296, 1
  %299 = extractvalue %dx.types.ResRet.i32 %296, 2
  %300 = extractvalue %dx.types.ResRet.i32 %296, 3
  %301 = shl i32 %291, 4
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %291, 7
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %291, 22
  %308 = shl nuw nsw i32 %307, 5
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = and i32 %292, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F80204080000000
  %313 = fadd fast float %312, -1.000000e+00
  %314 = lshr i32 %292, 8
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F80204080000000
  %318 = fadd fast float %317, -1.000000e+00
  %319 = lshr i32 %292, 16
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F80204080000000
  %323 = fadd fast float %322, -1.000000e+00
  %324 = lshr i32 %292, 24
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F80204080000000
  %327 = fadd fast float %326, -1.000000e+00
  %328 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %329 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %330 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %331 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %332 = and i32 %293, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F80204080000000
  %335 = fadd fast float %334, -1.000000e+00
  %336 = lshr i32 %293, 8
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F80204080000000
  %340 = fadd fast float %339, -1.000000e+00
  %341 = lshr i32 %293, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F80204080000000
  %345 = fadd fast float %344, -1.000000e+00
  %346 = lshr i32 %293, 24
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F80204080000000
  %349 = fadd fast float %348, -1.000000e+00
  %350 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %351 = call float @dx.op.unary.f32(i32 6, float %340)  ; FAbs(value)
  %352 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %353 = call float @dx.op.unary.f32(i32 6, float %349)  ; FAbs(value)
  %354 = and i32 %294, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3F80204080000000
  %357 = fadd fast float %356, -1.000000e+00
  %358 = lshr i32 %294, 8
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F80204080000000
  %362 = fadd fast float %361, -1.000000e+00
  %363 = lshr i32 %294, 16
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F80204080000000
  %367 = fadd fast float %366, -1.000000e+00
  %368 = lshr i32 %294, 24
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F80204080000000
  %371 = fadd fast float %370, -1.000000e+00
  %372 = call float @dx.op.unary.f32(i32 6, float %357)  ; FAbs(value)
  %373 = call float @dx.op.unary.f32(i32 6, float %362)  ; FAbs(value)
  %374 = call float @dx.op.unary.f32(i32 6, float %367)  ; FAbs(value)
  %375 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %376 = and i32 %297, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F80204080000000
  %379 = fadd fast float %378, -1.000000e+00
  %380 = lshr i32 %297, 8
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F80204080000000
  %384 = fadd fast float %383, -1.000000e+00
  %385 = lshr i32 %297, 16
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F80204080000000
  %389 = fadd fast float %388, -1.000000e+00
  %390 = lshr i32 %297, 24
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F80204080000000
  %393 = fadd fast float %392, -1.000000e+00
  %394 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %395 = call float @dx.op.unary.f32(i32 6, float %384)  ; FAbs(value)
  %396 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %397 = call float @dx.op.unary.f32(i32 6, float %393)  ; FAbs(value)
  %398 = and i32 %298, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F80204080000000
  %401 = fadd fast float %400, -1.000000e+00
  %402 = lshr i32 %298, 8
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F80204080000000
  %406 = fadd fast float %405, -1.000000e+00
  %407 = lshr i32 %298, 16
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F80204080000000
  %411 = fadd fast float %410, -1.000000e+00
  %412 = lshr i32 %298, 24
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F80204080000000
  %415 = fadd fast float %414, -1.000000e+00
  %416 = call float @dx.op.unary.f32(i32 6, float %401)  ; FAbs(value)
  %417 = call float @dx.op.unary.f32(i32 6, float %406)  ; FAbs(value)
  %418 = call float @dx.op.unary.f32(i32 6, float %411)  ; FAbs(value)
  %419 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %420 = and i32 %299, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F80204080000000
  %423 = fadd fast float %422, -1.000000e+00
  %424 = lshr i32 %299, 8
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F80204080000000
  %428 = fadd fast float %427, -1.000000e+00
  %429 = lshr i32 %299, 16
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F80204080000000
  %433 = fadd fast float %432, -1.000000e+00
  %434 = lshr i32 %299, 24
  %435 = uitofp i32 %434 to float
  %436 = fmul fast float %435, 0x3F80204080000000
  %437 = fadd fast float %436, -1.000000e+00
  %438 = call float @dx.op.unary.f32(i32 6, float %423)  ; FAbs(value)
  %439 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  %440 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  %441 = call float @dx.op.unary.f32(i32 6, float %437)  ; FAbs(value)
  %442 = and i32 %300, 255
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = fmul fast float %444, %303
  %448 = fadd fast float %447, %286
  %449 = fmul fast float %303, 0x3FFBB67AE0000000
  %450 = fmul fast float %449, %313
  %451 = fmul fast float %450, %328
  %452 = fmul fast float %451, %444
  %453 = fadd fast float %452, %285
  %454 = fmul fast float %449, %318
  %455 = fmul fast float %454, %329
  %456 = fmul fast float %455, %444
  %457 = fadd fast float %456, %284
  %458 = fmul fast float %449, %323
  %459 = fmul fast float %458, %330
  %460 = fmul fast float %459, %444
  %461 = fadd fast float %460, %283
  %462 = fmul fast float %303, 0x3FFEFBDEC0000000
  %463 = fmul fast float %462, %327
  %464 = fmul fast float %463, %331
  %465 = fmul fast float %464, %444
  %466 = fadd fast float %465, %282
  %467 = fmul fast float %462, %335
  %468 = fmul fast float %467, %350
  %469 = fmul fast float %468, %444
  %470 = fadd fast float %469, %281
  %471 = fmul fast float %303, 0x4001E377A0000000
  %472 = fmul fast float %471, %340
  %473 = fmul fast float %472, %351
  %474 = fmul fast float %473, %444
  %475 = fadd fast float %474, %280
  %476 = fmul fast float %462, %345
  %477 = fmul fast float %476, %352
  %478 = fmul fast float %477, %444
  %479 = fadd fast float %478, %279
  %480 = fmul fast float %462, %349
  %481 = fmul fast float %480, %353
  %482 = fmul fast float %481, %444
  %483 = fadd fast float %482, %278
  %484 = fmul fast float %445, %306
  %485 = fadd fast float %484, %277
  %486 = fmul fast float %306, 0x3FFBB67AE0000000
  %487 = fmul fast float %486, %357
  %488 = fmul fast float %487, %372
  %489 = fmul fast float %488, %445
  %490 = fadd fast float %489, %276
  %491 = fmul fast float %486, %362
  %492 = fmul fast float %491, %373
  %493 = fmul fast float %492, %445
  %494 = fadd fast float %493, %275
  %495 = fmul fast float %486, %367
  %496 = fmul fast float %495, %374
  %497 = fmul fast float %496, %445
  %498 = fadd fast float %497, %274
  %499 = fmul fast float %306, 0x3FFEFBDEC0000000
  %500 = fmul fast float %499, %371
  %501 = fmul fast float %500, %375
  %502 = fmul fast float %501, %445
  %503 = fadd fast float %502, %273
  %504 = fmul fast float %499, %379
  %505 = fmul fast float %504, %394
  %506 = fmul fast float %505, %445
  %507 = fadd fast float %506, %272
  %508 = fmul fast float %306, 0x4001E377A0000000
  %509 = fmul fast float %508, %384
  %510 = fmul fast float %509, %395
  %511 = fmul fast float %510, %445
  %512 = fadd fast float %511, %271
  %513 = fmul fast float %499, %389
  %514 = fmul fast float %513, %396
  %515 = fmul fast float %514, %445
  %516 = fadd fast float %515, %270
  %517 = fmul fast float %499, %393
  %518 = fmul fast float %517, %397
  %519 = fmul fast float %518, %445
  %520 = fadd fast float %519, %269
  %521 = fmul fast float %446, %309
  %522 = fadd fast float %521, %268
  %523 = fmul fast float %309, 0x3FFBB67AE0000000
  %524 = fmul fast float %523, %401
  %525 = fmul fast float %524, %416
  %526 = fmul fast float %525, %446
  %527 = fadd fast float %526, %267
  %528 = fmul fast float %523, %406
  %529 = fmul fast float %528, %417
  %530 = fmul fast float %529, %446
  %531 = fadd fast float %530, %266
  %532 = fmul fast float %523, %411
  %533 = fmul fast float %532, %418
  %534 = fmul fast float %533, %446
  %535 = fadd fast float %534, %265
  %536 = fmul fast float %309, 0x3FFEFBDEC0000000
  %537 = fmul fast float %536, %415
  %538 = fmul fast float %537, %419
  %539 = fmul fast float %538, %446
  %540 = fadd fast float %539, %264
  %541 = fmul fast float %536, %423
  %542 = fmul fast float %541, %438
  %543 = fmul fast float %542, %446
  %544 = fadd fast float %543, %263
  %545 = fmul fast float %309, 0x4001E377A0000000
  %546 = fmul fast float %545, %428
  %547 = fmul fast float %546, %439
  %548 = fmul fast float %547, %446
  %549 = fadd fast float %548, %262
  %550 = fmul fast float %536, %433
  %551 = fmul fast float %550, %440
  %552 = fmul fast float %551, %446
  %553 = fadd fast float %552, %261
  %554 = fmul fast float %536, %437
  %555 = fmul fast float %554, %441
  %556 = fmul fast float %555, %446
  %557 = fadd fast float %556, %260
  %558 = add i32 %287, 1
  %559 = add nuw nsw i32 %288, 1
  %560 = icmp eq i32 %559, 5
  br i1 %560, label %561, label %259

; <label>:561                                     ; preds = %259
  %562 = and i32 %29, 3
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %870, label %564

; <label>:564                                     ; preds = %561
  %565 = add i32 %258, 5
  %566 = and i32 %29, 3
  br label %567

; <label>:567                                     ; preds = %567, %564
  %568 = phi float [ %865, %567 ], [ %557, %564 ]
  %569 = phi float [ %861, %567 ], [ %553, %564 ]
  %570 = phi float [ %857, %567 ], [ %549, %564 ]
  %571 = phi float [ %852, %567 ], [ %544, %564 ]
  %572 = phi float [ %848, %567 ], [ %540, %564 ]
  %573 = phi float [ %843, %567 ], [ %535, %564 ]
  %574 = phi float [ %839, %567 ], [ %531, %564 ]
  %575 = phi float [ %835, %567 ], [ %527, %564 ]
  %576 = phi float [ %830, %567 ], [ %522, %564 ]
  %577 = phi float [ %828, %567 ], [ %520, %564 ]
  %578 = phi float [ %824, %567 ], [ %516, %564 ]
  %579 = phi float [ %820, %567 ], [ %512, %564 ]
  %580 = phi float [ %815, %567 ], [ %507, %564 ]
  %581 = phi float [ %811, %567 ], [ %503, %564 ]
  %582 = phi float [ %806, %567 ], [ %498, %564 ]
  %583 = phi float [ %802, %567 ], [ %494, %564 ]
  %584 = phi float [ %798, %567 ], [ %490, %564 ]
  %585 = phi float [ %793, %567 ], [ %485, %564 ]
  %586 = phi float [ %791, %567 ], [ %483, %564 ]
  %587 = phi float [ %787, %567 ], [ %479, %564 ]
  %588 = phi float [ %783, %567 ], [ %475, %564 ]
  %589 = phi float [ %778, %567 ], [ %470, %564 ]
  %590 = phi float [ %774, %567 ], [ %466, %564 ]
  %591 = phi float [ %769, %567 ], [ %461, %564 ]
  %592 = phi float [ %765, %567 ], [ %457, %564 ]
  %593 = phi float [ %761, %567 ], [ %453, %564 ]
  %594 = phi float [ %756, %567 ], [ %448, %564 ]
  %595 = phi i32 [ %866, %567 ], [ %565, %564 ]
  %596 = phi i32 [ %867, %567 ], [ 0, %564 ]
  %597 = shl i32 %595, 5
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = extractvalue %dx.types.ResRet.i32 %598, 1
  %601 = extractvalue %dx.types.ResRet.i32 %598, 2
  %602 = extractvalue %dx.types.ResRet.i32 %598, 3
  %603 = or i32 %597, 16
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = extractvalue %dx.types.ResRet.i32 %604, 1
  %607 = extractvalue %dx.types.ResRet.i32 %604, 2
  %608 = extractvalue %dx.types.ResRet.i32 %604, 3
  %609 = shl i32 %599, 4
  %610 = and i32 %609, 32752
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %599, 7
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %599, 22
  %616 = shl nuw nsw i32 %615, 5
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %600, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F80204080000000
  %621 = fadd fast float %620, -1.000000e+00
  %622 = lshr i32 %600, 8
  %623 = and i32 %622, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F80204080000000
  %626 = fadd fast float %625, -1.000000e+00
  %627 = lshr i32 %600, 16
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F80204080000000
  %631 = fadd fast float %630, -1.000000e+00
  %632 = lshr i32 %600, 24
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F80204080000000
  %635 = fadd fast float %634, -1.000000e+00
  %636 = call float @dx.op.unary.f32(i32 6, float %621)  ; FAbs(value)
  %637 = call float @dx.op.unary.f32(i32 6, float %626)  ; FAbs(value)
  %638 = call float @dx.op.unary.f32(i32 6, float %631)  ; FAbs(value)
  %639 = call float @dx.op.unary.f32(i32 6, float %635)  ; FAbs(value)
  %640 = and i32 %601, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F80204080000000
  %643 = fadd fast float %642, -1.000000e+00
  %644 = lshr i32 %601, 8
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F80204080000000
  %648 = fadd fast float %647, -1.000000e+00
  %649 = lshr i32 %601, 16
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F80204080000000
  %653 = fadd fast float %652, -1.000000e+00
  %654 = lshr i32 %601, 24
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F80204080000000
  %657 = fadd fast float %656, -1.000000e+00
  %658 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %659 = call float @dx.op.unary.f32(i32 6, float %648)  ; FAbs(value)
  %660 = call float @dx.op.unary.f32(i32 6, float %653)  ; FAbs(value)
  %661 = call float @dx.op.unary.f32(i32 6, float %657)  ; FAbs(value)
  %662 = and i32 %602, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F80204080000000
  %665 = fadd fast float %664, -1.000000e+00
  %666 = lshr i32 %602, 8
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F80204080000000
  %670 = fadd fast float %669, -1.000000e+00
  %671 = lshr i32 %602, 16
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F80204080000000
  %675 = fadd fast float %674, -1.000000e+00
  %676 = lshr i32 %602, 24
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F80204080000000
  %679 = fadd fast float %678, -1.000000e+00
  %680 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %681 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %682 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %683 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %684 = and i32 %605, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F80204080000000
  %687 = fadd fast float %686, -1.000000e+00
  %688 = lshr i32 %605, 8
  %689 = and i32 %688, 255
  %690 = uitofp i32 %689 to float
  %691 = fmul fast float %690, 0x3F80204080000000
  %692 = fadd fast float %691, -1.000000e+00
  %693 = lshr i32 %605, 16
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, 0x3F80204080000000
  %697 = fadd fast float %696, -1.000000e+00
  %698 = lshr i32 %605, 24
  %699 = uitofp i32 %698 to float
  %700 = fmul fast float %699, 0x3F80204080000000
  %701 = fadd fast float %700, -1.000000e+00
  %702 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %703 = call float @dx.op.unary.f32(i32 6, float %692)  ; FAbs(value)
  %704 = call float @dx.op.unary.f32(i32 6, float %697)  ; FAbs(value)
  %705 = call float @dx.op.unary.f32(i32 6, float %701)  ; FAbs(value)
  %706 = and i32 %606, 255
  %707 = uitofp i32 %706 to float
  %708 = fmul fast float %707, 0x3F80204080000000
  %709 = fadd fast float %708, -1.000000e+00
  %710 = lshr i32 %606, 8
  %711 = and i32 %710, 255
  %712 = uitofp i32 %711 to float
  %713 = fmul fast float %712, 0x3F80204080000000
  %714 = fadd fast float %713, -1.000000e+00
  %715 = lshr i32 %606, 16
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, 0x3F80204080000000
  %719 = fadd fast float %718, -1.000000e+00
  %720 = lshr i32 %606, 24
  %721 = uitofp i32 %720 to float
  %722 = fmul fast float %721, 0x3F80204080000000
  %723 = fadd fast float %722, -1.000000e+00
  %724 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %725 = call float @dx.op.unary.f32(i32 6, float %714)  ; FAbs(value)
  %726 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %727 = call float @dx.op.unary.f32(i32 6, float %723)  ; FAbs(value)
  %728 = and i32 %607, 255
  %729 = uitofp i32 %728 to float
  %730 = fmul fast float %729, 0x3F80204080000000
  %731 = fadd fast float %730, -1.000000e+00
  %732 = lshr i32 %607, 8
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F80204080000000
  %736 = fadd fast float %735, -1.000000e+00
  %737 = lshr i32 %607, 16
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %739, 0x3F80204080000000
  %741 = fadd fast float %740, -1.000000e+00
  %742 = lshr i32 %607, 24
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F80204080000000
  %745 = fadd fast float %744, -1.000000e+00
  %746 = call float @dx.op.unary.f32(i32 6, float %731)  ; FAbs(value)
  %747 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %748 = call float @dx.op.unary.f32(i32 6, float %741)  ; FAbs(value)
  %749 = call float @dx.op.unary.f32(i32 6, float %745)  ; FAbs(value)
  %750 = and i32 %608, 255
  %751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = extractvalue %dx.types.ResRet.f32 %751, 2
  %755 = fmul fast float %752, %611
  %756 = fadd fast float %755, %594
  %757 = fmul fast float %611, 0x3FFBB67AE0000000
  %758 = fmul fast float %757, %621
  %759 = fmul fast float %758, %636
  %760 = fmul fast float %759, %752
  %761 = fadd fast float %760, %593
  %762 = fmul fast float %757, %626
  %763 = fmul fast float %762, %637
  %764 = fmul fast float %763, %752
  %765 = fadd fast float %764, %592
  %766 = fmul fast float %757, %631
  %767 = fmul fast float %766, %638
  %768 = fmul fast float %767, %752
  %769 = fadd fast float %768, %591
  %770 = fmul fast float %611, 0x3FFEFBDEC0000000
  %771 = fmul fast float %770, %635
  %772 = fmul fast float %771, %639
  %773 = fmul fast float %772, %752
  %774 = fadd fast float %773, %590
  %775 = fmul fast float %770, %643
  %776 = fmul fast float %775, %658
  %777 = fmul fast float %776, %752
  %778 = fadd fast float %777, %589
  %779 = fmul fast float %611, 0x4001E377A0000000
  %780 = fmul fast float %779, %648
  %781 = fmul fast float %780, %659
  %782 = fmul fast float %781, %752
  %783 = fadd fast float %782, %588
  %784 = fmul fast float %770, %653
  %785 = fmul fast float %784, %660
  %786 = fmul fast float %785, %752
  %787 = fadd fast float %786, %587
  %788 = fmul fast float %770, %657
  %789 = fmul fast float %788, %661
  %790 = fmul fast float %789, %752
  %791 = fadd fast float %790, %586
  %792 = fmul fast float %753, %614
  %793 = fadd fast float %792, %585
  %794 = fmul fast float %614, 0x3FFBB67AE0000000
  %795 = fmul fast float %794, %665
  %796 = fmul fast float %795, %680
  %797 = fmul fast float %796, %753
  %798 = fadd fast float %797, %584
  %799 = fmul fast float %794, %670
  %800 = fmul fast float %799, %681
  %801 = fmul fast float %800, %753
  %802 = fadd fast float %801, %583
  %803 = fmul fast float %794, %675
  %804 = fmul fast float %803, %682
  %805 = fmul fast float %804, %753
  %806 = fadd fast float %805, %582
  %807 = fmul fast float %614, 0x3FFEFBDEC0000000
  %808 = fmul fast float %807, %679
  %809 = fmul fast float %808, %683
  %810 = fmul fast float %809, %753
  %811 = fadd fast float %810, %581
  %812 = fmul fast float %807, %687
  %813 = fmul fast float %812, %702
  %814 = fmul fast float %813, %753
  %815 = fadd fast float %814, %580
  %816 = fmul fast float %614, 0x4001E377A0000000
  %817 = fmul fast float %816, %692
  %818 = fmul fast float %817, %703
  %819 = fmul fast float %818, %753
  %820 = fadd fast float %819, %579
  %821 = fmul fast float %807, %697
  %822 = fmul fast float %821, %704
  %823 = fmul fast float %822, %753
  %824 = fadd fast float %823, %578
  %825 = fmul fast float %807, %701
  %826 = fmul fast float %825, %705
  %827 = fmul fast float %826, %753
  %828 = fadd fast float %827, %577
  %829 = fmul fast float %754, %617
  %830 = fadd fast float %829, %576
  %831 = fmul fast float %617, 0x3FFBB67AE0000000
  %832 = fmul fast float %831, %709
  %833 = fmul fast float %832, %724
  %834 = fmul fast float %833, %754
  %835 = fadd fast float %834, %575
  %836 = fmul fast float %831, %714
  %837 = fmul fast float %836, %725
  %838 = fmul fast float %837, %754
  %839 = fadd fast float %838, %574
  %840 = fmul fast float %831, %719
  %841 = fmul fast float %840, %726
  %842 = fmul fast float %841, %754
  %843 = fadd fast float %842, %573
  %844 = fmul fast float %617, 0x3FFEFBDEC0000000
  %845 = fmul fast float %844, %723
  %846 = fmul fast float %845, %727
  %847 = fmul fast float %846, %754
  %848 = fadd fast float %847, %572
  %849 = fmul fast float %844, %731
  %850 = fmul fast float %849, %746
  %851 = fmul fast float %850, %754
  %852 = fadd fast float %851, %571
  %853 = fmul fast float %617, 0x4001E377A0000000
  %854 = fmul fast float %853, %736
  %855 = fmul fast float %854, %747
  %856 = fmul fast float %855, %754
  %857 = fadd fast float %856, %570
  %858 = fmul fast float %844, %741
  %859 = fmul fast float %858, %748
  %860 = fmul fast float %859, %754
  %861 = fadd fast float %860, %569
  %862 = fmul fast float %844, %745
  %863 = fmul fast float %862, %749
  %864 = fmul fast float %863, %754
  %865 = fadd fast float %864, %568
  %866 = add i32 %595, 1
  %867 = add nuw nsw i32 %596, 1
  %868 = icmp eq i32 %867, %566
  br i1 %868, label %869, label %567, !llvm.loop !29

; <label>:869                                     ; preds = %567
  br label %870

; <label>:870                                     ; preds = %869, %561
  %871 = phi float [ %557, %561 ], [ %865, %869 ]
  %872 = phi float [ %553, %561 ], [ %861, %869 ]
  %873 = phi float [ %549, %561 ], [ %857, %869 ]
  %874 = phi float [ %544, %561 ], [ %852, %869 ]
  %875 = phi float [ %540, %561 ], [ %848, %869 ]
  %876 = phi float [ %535, %561 ], [ %843, %869 ]
  %877 = phi float [ %531, %561 ], [ %839, %869 ]
  %878 = phi float [ %527, %561 ], [ %835, %869 ]
  %879 = phi float [ %522, %561 ], [ %830, %869 ]
  %880 = phi float [ %520, %561 ], [ %828, %869 ]
  %881 = phi float [ %516, %561 ], [ %824, %869 ]
  %882 = phi float [ %512, %561 ], [ %820, %869 ]
  %883 = phi float [ %507, %561 ], [ %815, %869 ]
  %884 = phi float [ %503, %561 ], [ %811, %869 ]
  %885 = phi float [ %498, %561 ], [ %806, %869 ]
  %886 = phi float [ %494, %561 ], [ %802, %869 ]
  %887 = phi float [ %490, %561 ], [ %798, %869 ]
  %888 = phi float [ %485, %561 ], [ %793, %869 ]
  %889 = phi float [ %483, %561 ], [ %791, %869 ]
  %890 = phi float [ %479, %561 ], [ %787, %869 ]
  %891 = phi float [ %475, %561 ], [ %783, %869 ]
  %892 = phi float [ %470, %561 ], [ %778, %869 ]
  %893 = phi float [ %466, %561 ], [ %774, %869 ]
  %894 = phi float [ %461, %561 ], [ %769, %869 ]
  %895 = phi float [ %457, %561 ], [ %765, %869 ]
  %896 = phi float [ %453, %561 ], [ %761, %869 ]
  %897 = phi float [ %448, %561 ], [ %756, %869 ]
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %899, i32 4)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = icmp eq i32 %901, -1
  br i1 %902, label %957, label %903, !dx.controlflow.hints !31

; <label>:903                                     ; preds = %870
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %899, i32 0)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.i32 %906, 3
  %908 = shl i32 %907, 3
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = or i32 %908, 4
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 16777215
  %915 = add i32 %914, %905
  %916 = shl i32 %915, 5
  %917 = or i32 %916, 12
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = or i32 %916, 16
  %921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = lshr i32 %913, 24
  %926 = and i32 %925, 3
  %927 = add nuw nsw i32 %926, 3
  %928 = shl i32 1, %927
  %929 = lshr i32 %913, 29
  %930 = lshr i32 %913, 23
  %931 = and i32 %930, 56
  %932 = shl nuw nsw i32 %929, 3
  %933 = lshr i32 %910, 16
  %934 = and i32 %910, 65535
  %935 = uitofp i32 %928 to float
  %936 = uitofp i32 %933 to float
  %937 = fmul fast float %935, %922
  %938 = fmul fast float %935, %923
  %939 = fmul fast float %924, %936
  %940 = fptosi float %937 to i32
  %941 = fptosi float %938 to i32
  %942 = fptosi float %939 to i32
  %943 = add i32 %940, %931
  %944 = and i32 %919, 255
  %945 = lshr i32 %919, 8
  %946 = and i32 %945, 255
  %947 = mul nuw nsw i32 %946, %944
  %948 = udiv i32 %901, %947
  %949 = urem i32 %901, %947
  %950 = udiv i32 %949, %944
  %951 = urem i32 %949, %944
  %952 = add i32 %943, %951
  %953 = add nuw nsw i32 %950, %932
  %954 = add i32 %953, %941
  %955 = add i32 %948, %934
  %956 = add i32 %955, %942
  br label %957

; <label>:957                                     ; preds = %903, %870
  %958 = phi i1 [ true, %903 ], [ false, %870 ]
  %959 = phi i32 [ %952, %903 ], [ 0, %870 ]
  %960 = phi i32 [ %954, %903 ], [ 0, %870 ]
  %961 = phi i32 [ %956, %903 ], [ 0, %870 ]
  br i1 %958, label %962, label %1045, !dx.controlflow.hints !32

; <label>:962                                     ; preds = %957
  %963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.i32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.i32 %963, 1
  %966 = fdiv fast float 1.000000e+00, %897
  %967 = fdiv fast float 1.000000e+00, %888
  %968 = fdiv fast float 1.000000e+00, %879
  %969 = fmul fast float %895, 0x3FD279A740000000
  %970 = fmul fast float %969, %966
  %971 = fmul fast float %886, 0x3FD279A740000000
  %972 = fmul fast float %971, %967
  %973 = fmul fast float %877, 0x3FD279A740000000
  %974 = fmul fast float %973, %968
  %975 = fmul fast float %891, 0x3FCC9F25C0000000
  %976 = fmul fast float %975, %966
  %977 = fadd fast float %970, 5.000000e-01
  %978 = fadd fast float %972, 5.000000e-01
  %979 = fadd fast float %974, 5.000000e-01
  %980 = fadd fast float %976, 5.000000e-01
  %981 = fmul fast float %882, 0x3FCC9F25C0000000
  %982 = fmul fast float %981, %967
  %983 = fmul fast float %873, 0x3FCC9F25C0000000
  %984 = fmul fast float %983, %968
  %985 = fmul fast float %896, 0x3FD279A740000000
  %986 = fmul fast float %985, %966
  %987 = fmul fast float %887, 0x3FD279A740000000
  %988 = fmul fast float %987, %967
  %989 = fadd fast float %982, 5.000000e-01
  %990 = fadd fast float %984, 5.000000e-01
  %991 = fadd fast float %986, 5.000000e-01
  %992 = fadd fast float %988, 5.000000e-01
  %993 = fmul fast float %878, 0x3FD279A740000000
  %994 = fmul fast float %993, %968
  %995 = fmul fast float %894, 0x3FD279A740000000
  %996 = fmul fast float %995, %966
  %997 = fmul fast float %885, 0x3FD279A740000000
  %998 = fmul fast float %997, %967
  %999 = fmul fast float %876, 0x3FD279A740000000
  %1000 = fmul fast float %999, %968
  %1001 = fadd fast float %994, 5.000000e-01
  %1002 = fadd fast float %996, 5.000000e-01
  %1003 = fadd fast float %998, 5.000000e-01
  %1004 = fadd fast float %1000, 5.000000e-01
  %1005 = fmul fast float %890, 0x3FD08654A0000000
  %1006 = fmul fast float %1005, %966
  %1007 = fmul fast float %881, 0x3FD08654A0000000
  %1008 = fmul fast float %1007, %967
  %1009 = fmul fast float %872, 0x3FD08654A0000000
  %1010 = fmul fast float %1009, %968
  %1011 = fmul fast float %892, 0x3FD08654A0000000
  %1012 = fmul fast float %1011, %966
  %1013 = fadd fast float %1006, 5.000000e-01
  %1014 = fadd fast float %1008, 5.000000e-01
  %1015 = fadd fast float %1010, 5.000000e-01
  %1016 = fadd fast float %1012, 5.000000e-01
  %1017 = fmul fast float %883, 0x3FD08654A0000000
  %1018 = fmul fast float %1017, %967
  %1019 = fmul fast float %874, 0x3FD08654A0000000
  %1020 = fmul fast float %1019, %968
  %1021 = fmul fast float %889, 0x3FD08654A0000000
  %1022 = fmul fast float %1021, %966
  %1023 = fmul fast float %880, 0x3FD08654A0000000
  %1024 = fmul fast float %1023, %967
  %1025 = fadd fast float %1018, 5.000000e-01
  %1026 = fadd fast float %1020, 5.000000e-01
  %1027 = fadd fast float %1022, 5.000000e-01
  %1028 = fadd fast float %1024, 5.000000e-01
  %1029 = fmul fast float %871, 0x3FD08654A0000000
  %1030 = fmul fast float %1029, %968
  %1031 = fmul fast float %893, 0x3FD08654A0000000
  %1032 = fmul fast float %1031, %966
  %1033 = fmul fast float %884, 0x3FD08654A0000000
  %1034 = fmul fast float %1033, %967
  %1035 = fmul fast float %875, 0x3FD08654A0000000
  %1036 = fmul fast float %1035, %968
  %1037 = fadd fast float %1030, 5.000000e-01
  %1038 = fadd fast float %1032, 5.000000e-01
  %1039 = fadd fast float %1034, 5.000000e-01
  %1040 = fadd fast float %1036, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %959, i32 %960, i32 %961, float %897, float %888, float %879, float %897, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %959, i32 %960, i32 %961, float %977, float %978, float %979, float %980, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1041 = add i32 %964, %959
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1041, i32 %960, i32 %961, float %989, float %990, float %991, float %992, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1042 = add i32 %965, %960
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %959, i32 %1042, i32 %961, float %1001, float %1002, float %1003, float %1004, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1041, i32 %1042, i32 %961, float %1013, float %1014, float %1015, float %1016, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1043 = shl i32 %965, 1
  %1044 = add i32 %1043, %960
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %959, i32 %1044, i32 %961, float %1025, float %1026, float %1027, float %1028, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1041, i32 %1044, i32 %961, float %1037, float %1038, float %1039, float %1040, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1045

; <label>:1045                                    ; preds = %962, %957, %0
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
!25 = !{void ()* @cs_probes_mixed_blend_5to8_tex, !"cs_probes_mixed_blend_5to8_tex", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 64, i32 1, i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

