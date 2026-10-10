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
; shader hash: 82a96e2200b28fca5d7c22987d80c73d
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t3     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%SubdivConstants = type { <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @cs_normal() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 3
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %681, !dx.controlflow.hints !14

; <label>:8                                       ; preds = %0
  %9 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.i32 %9, 1
  %11 = add i32 %10, %4
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 0
  %14 = extractvalue %dx.types.CBufRet.f32 %12, 1
  %15 = extractvalue %dx.types.CBufRet.f32 %12, 2
  %16 = extractvalue %dx.types.CBufRet.f32 %12, 3
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = shl i32 %11, 3
  %20 = add i32 %18, %19
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = extractvalue %dx.types.ResRet.i32 %21, 1
  %24 = and i32 %22, 2097151
  %25 = uitofp i32 %24 to float
  %26 = lshr i32 %22, 21
  %27 = shl i32 %23, 11
  %28 = and i32 %27, 2095104
  %29 = or i32 %28, %26
  %30 = uitofp i32 %29 to float
  %31 = lshr i32 %23, 10
  %32 = and i32 %31, 2097151
  %33 = uitofp i32 %32 to float
  %34 = fdiv float %25, 2.097151e+06
  %35 = fdiv float %30, 2.097151e+06
  %36 = fdiv float %33, 2.097151e+06
  %37 = fmul float %34, 2.000000e+00
  %38 = fmul float %35, 2.000000e+00
  %39 = fmul float %36, 2.000000e+00
  %40 = fadd float %37, -1.000000e+00
  %41 = fadd float %38, -1.000000e+00
  %42 = fadd float %39, -1.000000e+00
  %43 = fmul float %16, %40
  %44 = fmul float %16, %41
  %45 = fmul float %16, %42
  %46 = fadd float %13, %43
  %47 = fadd float %14, %44
  %48 = fadd float %15, %45
  %49 = shl i32 %4, 2
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = lshr i32 %51, 24
  %53 = call i32 @dx.op.binary.i32(i32 40, i32 %52, i32 64)  ; UMin(a,b)
  %54 = and i32 %51, 16777215
  %55 = icmp eq i32 %53, 4
  br i1 %55, label %56, label %363, !dx.controlflow.hints !15

; <label>:56                                      ; preds = %8
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = extractvalue %dx.types.ResRet.i32 %57, 1
  %60 = extractvalue %dx.types.ResRet.i32 %57, 2
  %61 = extractvalue %dx.types.ResRet.i32 %57, 3
  %62 = and i32 %58, 65535
  %63 = add i32 %10, %62
  %64 = shl i32 %63, 3
  %65 = add i32 %18, %64
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = extractvalue %dx.types.ResRet.i32 %66, 1
  %69 = and i32 %67, 2097151
  %70 = uitofp i32 %69 to float
  %71 = lshr i32 %67, 21
  %72 = shl i32 %68, 11
  %73 = and i32 %72, 2095104
  %74 = or i32 %73, %71
  %75 = uitofp i32 %74 to float
  %76 = lshr i32 %68, 10
  %77 = and i32 %76, 2097151
  %78 = uitofp i32 %77 to float
  %79 = fdiv float %70, 2.097151e+06
  %80 = fdiv float %75, 2.097151e+06
  %81 = fdiv float %78, 2.097151e+06
  %82 = fmul float %79, 2.000000e+00
  %83 = fmul float %80, 2.000000e+00
  %84 = fmul float %81, 2.000000e+00
  %85 = fadd float %82, -1.000000e+00
  %86 = fadd float %83, -1.000000e+00
  %87 = fadd float %84, -1.000000e+00
  %88 = and i32 %59, 65535
  %89 = add i32 %10, %88
  %90 = shl i32 %89, 3
  %91 = add i32 %18, %90
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = extractvalue %dx.types.ResRet.i32 %92, 1
  %95 = and i32 %93, 2097151
  %96 = uitofp i32 %95 to float
  %97 = lshr i32 %93, 21
  %98 = shl i32 %94, 11
  %99 = and i32 %98, 2095104
  %100 = or i32 %99, %97
  %101 = uitofp i32 %100 to float
  %102 = lshr i32 %94, 10
  %103 = and i32 %102, 2097151
  %104 = uitofp i32 %103 to float
  %105 = fdiv float %96, 2.097151e+06
  %106 = fdiv float %101, 2.097151e+06
  %107 = fdiv float %104, 2.097151e+06
  %108 = fmul float %105, 2.000000e+00
  %109 = fmul float %106, 2.000000e+00
  %110 = fmul float %107, 2.000000e+00
  %111 = fadd float %108, -1.000000e+00
  %112 = fadd float %109, -1.000000e+00
  %113 = fadd float %110, -1.000000e+00
  %114 = and i32 %60, 65535
  %115 = add i32 %10, %114
  %116 = shl i32 %115, 3
  %117 = add i32 %18, %116
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = extractvalue %dx.types.ResRet.i32 %118, 1
  %121 = and i32 %119, 2097151
  %122 = uitofp i32 %121 to float
  %123 = lshr i32 %119, 21
  %124 = shl i32 %120, 11
  %125 = and i32 %124, 2095104
  %126 = or i32 %125, %123
  %127 = uitofp i32 %126 to float
  %128 = lshr i32 %120, 10
  %129 = and i32 %128, 2097151
  %130 = uitofp i32 %129 to float
  %131 = fdiv float %122, 2.097151e+06
  %132 = fdiv float %127, 2.097151e+06
  %133 = fdiv float %130, 2.097151e+06
  %134 = fmul float %131, 2.000000e+00
  %135 = fmul float %132, 2.000000e+00
  %136 = fmul float %133, 2.000000e+00
  %137 = fadd float %134, -1.000000e+00
  %138 = fadd float %135, -1.000000e+00
  %139 = fadd float %136, -1.000000e+00
  %140 = and i32 %61, 65535
  %141 = add i32 %10, %140
  %142 = shl i32 %141, 3
  %143 = add i32 %18, %142
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = extractvalue %dx.types.ResRet.i32 %144, 1
  %147 = and i32 %145, 2097151
  %148 = uitofp i32 %147 to float
  %149 = lshr i32 %145, 21
  %150 = shl i32 %146, 11
  %151 = and i32 %150, 2095104
  %152 = or i32 %151, %149
  %153 = uitofp i32 %152 to float
  %154 = lshr i32 %146, 10
  %155 = and i32 %154, 2097151
  %156 = uitofp i32 %155 to float
  %157 = fdiv float %148, 2.097151e+06
  %158 = fdiv float %153, 2.097151e+06
  %159 = fdiv float %156, 2.097151e+06
  %160 = fmul float %157, 2.000000e+00
  %161 = fmul float %158, 2.000000e+00
  %162 = fmul float %159, 2.000000e+00
  %163 = fadd float %160, -1.000000e+00
  %164 = fadd float %161, -1.000000e+00
  %165 = fadd float %162, -1.000000e+00
  %166 = lshr i32 %58, 16
  %167 = add i32 %10, %166
  %168 = shl i32 %167, 3
  %169 = add i32 %18, %168
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = and i32 %171, 2097151
  %174 = uitofp i32 %173 to float
  %175 = lshr i32 %171, 21
  %176 = shl i32 %172, 11
  %177 = and i32 %176, 2095104
  %178 = or i32 %177, %175
  %179 = uitofp i32 %178 to float
  %180 = lshr i32 %172, 10
  %181 = and i32 %180, 2097151
  %182 = uitofp i32 %181 to float
  %183 = fdiv float %174, 2.097151e+06
  %184 = fdiv float %179, 2.097151e+06
  %185 = fdiv float %182, 2.097151e+06
  %186 = fmul float %183, 2.000000e+00
  %187 = fmul float %184, 2.000000e+00
  %188 = fmul float %185, 2.000000e+00
  %189 = fadd float %186, -1.000000e+00
  %190 = fadd float %187, -1.000000e+00
  %191 = fadd float %188, -1.000000e+00
  %192 = lshr i32 %59, 16
  %193 = add i32 %10, %192
  %194 = shl i32 %193, 3
  %195 = add i32 %18, %194
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = extractvalue %dx.types.ResRet.i32 %196, 1
  %199 = and i32 %197, 2097151
  %200 = uitofp i32 %199 to float
  %201 = lshr i32 %197, 21
  %202 = shl i32 %198, 11
  %203 = and i32 %202, 2095104
  %204 = or i32 %203, %201
  %205 = uitofp i32 %204 to float
  %206 = lshr i32 %198, 10
  %207 = and i32 %206, 2097151
  %208 = uitofp i32 %207 to float
  %209 = fdiv float %200, 2.097151e+06
  %210 = fdiv float %205, 2.097151e+06
  %211 = fdiv float %208, 2.097151e+06
  %212 = fmul float %209, 2.000000e+00
  %213 = fmul float %210, 2.000000e+00
  %214 = fmul float %211, 2.000000e+00
  %215 = fadd float %212, -1.000000e+00
  %216 = fadd float %213, -1.000000e+00
  %217 = fadd float %214, -1.000000e+00
  %218 = lshr i32 %60, 16
  %219 = add i32 %10, %218
  %220 = shl i32 %219, 3
  %221 = add i32 %18, %220
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = extractvalue %dx.types.ResRet.i32 %222, 1
  %225 = and i32 %223, 2097151
  %226 = uitofp i32 %225 to float
  %227 = lshr i32 %223, 21
  %228 = shl i32 %224, 11
  %229 = and i32 %228, 2095104
  %230 = or i32 %229, %227
  %231 = uitofp i32 %230 to float
  %232 = lshr i32 %224, 10
  %233 = and i32 %232, 2097151
  %234 = uitofp i32 %233 to float
  %235 = fdiv float %226, 2.097151e+06
  %236 = fdiv float %231, 2.097151e+06
  %237 = fdiv float %234, 2.097151e+06
  %238 = fmul float %235, 2.000000e+00
  %239 = fmul float %236, 2.000000e+00
  %240 = fmul float %237, 2.000000e+00
  %241 = fadd float %238, -1.000000e+00
  %242 = fadd float %239, -1.000000e+00
  %243 = fadd float %240, -1.000000e+00
  %244 = lshr i32 %61, 16
  %245 = add i32 %10, %244
  %246 = shl i32 %245, 3
  %247 = add i32 %18, %246
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = extractvalue %dx.types.ResRet.i32 %248, 1
  %251 = and i32 %249, 2097151
  %252 = uitofp i32 %251 to float
  %253 = lshr i32 %249, 21
  %254 = shl i32 %250, 11
  %255 = and i32 %254, 2095104
  %256 = or i32 %255, %253
  %257 = uitofp i32 %256 to float
  %258 = lshr i32 %250, 10
  %259 = and i32 %258, 2097151
  %260 = uitofp i32 %259 to float
  %261 = fdiv float %252, 2.097151e+06
  %262 = fdiv float %257, 2.097151e+06
  %263 = fdiv float %260, 2.097151e+06
  %264 = fmul float %261, 2.000000e+00
  %265 = fmul float %262, 2.000000e+00
  %266 = fmul float %263, 2.000000e+00
  %267 = fadd float %264, -1.000000e+00
  %268 = fadd float %265, -1.000000e+00
  %269 = fadd float %266, -1.000000e+00
  %270 = fsub fast float %85, %40
  %271 = fmul fast float %16, %270
  %272 = fsub fast float %86, %41
  %273 = fmul fast float %16, %272
  %274 = fsub fast float %87, %42
  %275 = fmul fast float %16, %274
  %276 = fsub fast float %189, %40
  %277 = fmul fast float %16, %276
  %278 = fsub fast float %190, %41
  %279 = fmul fast float %16, %278
  %280 = fsub fast float %191, %42
  %281 = fmul fast float %16, %280
  %282 = fmul fast float %279, %275
  %283 = fmul fast float %281, %273
  %284 = fmul fast float %281, %271
  %285 = fmul fast float %277, %275
  %286 = fmul fast float %277, %273
  %287 = fmul fast float %279, %271
  %288 = fsub fast float %111, %40
  %289 = fmul fast float %16, %288
  %290 = fsub fast float %112, %41
  %291 = fmul fast float %16, %290
  %292 = fsub fast float %113, %42
  %293 = fmul fast float %16, %292
  %294 = fsub fast float %215, %40
  %295 = fmul fast float %16, %294
  %296 = fsub fast float %216, %41
  %297 = fmul fast float %16, %296
  %298 = fsub fast float %217, %42
  %299 = fmul fast float %16, %298
  %300 = fmul fast float %297, %293
  %301 = fmul fast float %299, %291
  %302 = fmul fast float %299, %289
  %303 = fmul fast float %295, %293
  %304 = fmul fast float %295, %291
  %305 = fmul fast float %297, %289
  %306 = fsub fast float %137, %40
  %307 = fmul fast float %16, %306
  %308 = fsub fast float %138, %41
  %309 = fmul fast float %16, %308
  %310 = fsub fast float %139, %42
  %311 = fmul fast float %16, %310
  %312 = fsub fast float %241, %40
  %313 = fmul fast float %16, %312
  %314 = fsub fast float %242, %41
  %315 = fmul fast float %16, %314
  %316 = fsub fast float %243, %42
  %317 = fmul fast float %16, %316
  %318 = fmul fast float %315, %311
  %319 = fmul fast float %317, %309
  %320 = fmul fast float %317, %307
  %321 = fmul fast float %313, %311
  %322 = fmul fast float %313, %309
  %323 = fmul fast float %315, %307
  %324 = fsub fast float %163, %40
  %325 = fmul fast float %16, %324
  %326 = fsub fast float %164, %41
  %327 = fmul fast float %16, %326
  %328 = fsub fast float %165, %42
  %329 = fmul fast float %16, %328
  %330 = fsub fast float %267, %40
  %331 = fmul fast float %16, %330
  %332 = fsub fast float %268, %41
  %333 = fmul fast float %16, %332
  %334 = fsub fast float %269, %42
  %335 = fmul fast float %16, %334
  %336 = fmul fast float %333, %329
  %337 = fmul fast float %335, %327
  %338 = fmul fast float %335, %325
  %339 = fmul fast float %331, %329
  %340 = fmul fast float %331, %327
  %341 = fmul fast float %333, %325
  %342 = fsub fast float %282, %283
  %343 = fadd fast float %342, %300
  %344 = fsub fast float %343, %301
  %345 = fadd fast float %344, %318
  %346 = fsub fast float %345, %319
  %347 = fadd fast float %346, %336
  %348 = fsub fast float %347, %337
  %349 = fsub fast float %284, %285
  %350 = fsub fast float %349, %303
  %351 = fadd fast float %350, %302
  %352 = fsub fast float %351, %321
  %353 = fadd fast float %352, %320
  %354 = fsub fast float %353, %339
  %355 = fadd fast float %354, %338
  %356 = fsub fast float %286, %287
  %357 = fadd fast float %356, %304
  %358 = fsub fast float %357, %305
  %359 = fadd fast float %358, %322
  %360 = fsub fast float %359, %323
  %361 = fadd fast float %360, %340
  %362 = fsub fast float %361, %341
  br label %469

; <label>:363                                     ; preds = %8
  %364 = icmp eq i32 %53, 0
  br i1 %364, label %469, label %365

; <label>:365                                     ; preds = %363
  br label %366

; <label>:366                                     ; preds = %366, %365
  %367 = phi i32 [ %466, %366 ], [ %54, %365 ]
  %368 = phi float [ %462, %366 ], [ 0.000000e+00, %365 ]
  %369 = phi float [ %463, %366 ], [ 0.000000e+00, %365 ]
  %370 = phi float [ %464, %366 ], [ 0.000000e+00, %365 ]
  %371 = phi i32 [ %465, %366 ], [ 0, %365 ]
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.i32 %374, 1
  %376 = and i32 %373, 65535
  %377 = add i32 %375, %376
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.i32 %383, 0
  %385 = shl i32 %377, 3
  %386 = add i32 %384, %385
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = extractvalue %dx.types.ResRet.i32 %387, 1
  %390 = and i32 %388, 2097151
  %391 = uitofp i32 %390 to float
  %392 = lshr i32 %388, 21
  %393 = shl i32 %389, 11
  %394 = and i32 %393, 2095104
  %395 = or i32 %394, %392
  %396 = uitofp i32 %395 to float
  %397 = lshr i32 %389, 10
  %398 = and i32 %397, 2097151
  %399 = uitofp i32 %398 to float
  %400 = fdiv float %391, 2.097151e+06
  %401 = fdiv float %396, 2.097151e+06
  %402 = fdiv float %399, 2.097151e+06
  %403 = fmul float %400, 2.000000e+00
  %404 = fmul float %401, 2.000000e+00
  %405 = fmul float %402, 2.000000e+00
  %406 = fadd float %403, -1.000000e+00
  %407 = fadd float %404, -1.000000e+00
  %408 = fadd float %405, -1.000000e+00
  %409 = fmul float %382, %406
  %410 = fmul float %382, %407
  %411 = fmul float %382, %408
  %412 = fadd float %379, %409
  %413 = fadd float %380, %410
  %414 = fadd float %381, %411
  %415 = lshr i32 %373, 16
  %416 = add i32 %375, %415
  %417 = shl i32 %416, 3
  %418 = add i32 %384, %417
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = extractvalue %dx.types.ResRet.i32 %419, 1
  %422 = and i32 %420, 2097151
  %423 = uitofp i32 %422 to float
  %424 = lshr i32 %420, 21
  %425 = shl i32 %421, 11
  %426 = and i32 %425, 2095104
  %427 = or i32 %426, %424
  %428 = uitofp i32 %427 to float
  %429 = lshr i32 %421, 10
  %430 = and i32 %429, 2097151
  %431 = uitofp i32 %430 to float
  %432 = fdiv float %423, 2.097151e+06
  %433 = fdiv float %428, 2.097151e+06
  %434 = fdiv float %431, 2.097151e+06
  %435 = fmul float %432, 2.000000e+00
  %436 = fmul float %433, 2.000000e+00
  %437 = fmul float %434, 2.000000e+00
  %438 = fadd float %435, -1.000000e+00
  %439 = fadd float %436, -1.000000e+00
  %440 = fadd float %437, -1.000000e+00
  %441 = fmul float %382, %438
  %442 = fmul float %382, %439
  %443 = fmul float %382, %440
  %444 = fadd float %379, %441
  %445 = fadd float %380, %442
  %446 = fadd float %381, %443
  %447 = fsub fast float %412, %46
  %448 = fsub fast float %413, %47
  %449 = fsub fast float %414, %48
  %450 = fsub fast float %444, %46
  %451 = fsub fast float %445, %47
  %452 = fsub fast float %446, %48
  %453 = fmul fast float %451, %449
  %454 = fmul fast float %452, %448
  %455 = fsub fast float %453, %454
  %456 = fmul fast float %452, %447
  %457 = fmul fast float %450, %449
  %458 = fsub fast float %456, %457
  %459 = fmul fast float %450, %448
  %460 = fmul fast float %451, %447
  %461 = fsub fast float %459, %460
  %462 = fadd fast float %455, %368
  %463 = fadd fast float %458, %369
  %464 = fadd fast float %461, %370
  %465 = add nuw i32 %371, 1
  %466 = add i32 %367, 4
  %467 = icmp eq i32 %465, %53
  br i1 %467, label %468, label %366

; <label>:468                                     ; preds = %366
  br label %469

; <label>:469                                     ; preds = %468, %363, %56
  %470 = phi float [ %348, %56 ], [ 0.000000e+00, %363 ], [ %462, %468 ]
  %471 = phi float [ %355, %56 ], [ 0.000000e+00, %363 ], [ %463, %468 ]
  %472 = phi float [ %362, %56 ], [ 0.000000e+00, %363 ], [ %464, %468 ]
  %473 = call float @dx.op.dot3.f32(i32 55, float %470, float %471, float %472, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %474 = call float @dx.op.unary.f32(i32 25, float %473)  ; Rsqrt(value)
  %475 = fmul fast float %474, %470
  %476 = fmul fast float %474, %471
  %477 = fmul fast float %474, %472
  %478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.i32 %478, 1
  %480 = shl i32 %11, 2
  %481 = add i32 %479, %480
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 536870912
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float -1.000000e+00, float 1.000000e+00
  %487 = lshr i32 %483, 30
  %488 = and i32 %483, 1023
  %489 = uitofp i32 %488 to float
  %490 = lshr i32 %483, 10
  %491 = and i32 %490, 1023
  %492 = uitofp i32 %491 to float
  %493 = lshr i32 %483, 20
  %494 = and i32 %493, 511
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %489, 0x3F56A64800000000
  %497 = fadd fast float %496, 0xBFE6A09E60000000
  %498 = fmul fast float %492, 0x3F56A64800000000
  %499 = fadd fast float %498, 0xBFE6A09E60000000
  %500 = fmul fast float %495, 0x3F66ABF460000000
  %501 = fadd fast float %500, 0xBFE6A09E60000000
  %502 = call float @dx.op.dot3.f32(i32 55, float %497, float %499, float %501, float %497, float %499, float %501)  ; Dot3(ax,ay,az,bx,by,bz)
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = fsub fast float 1.000000e+00, %503
  %505 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %506 = icmp eq i32 %487, 0
  br i1 %506, label %513, label %507, !dx.controlflow.hints !16

; <label>:507                                     ; preds = %469
  %508 = icmp eq i32 %487, 1
  br i1 %508, label %513, label %509, !dx.controlflow.hints !17

; <label>:509                                     ; preds = %507
  %510 = icmp eq i32 %487, 2
  %511 = select i1 %510, float %505, float %501
  %512 = select i1 %510, float %501, float %505
  br label %513

; <label>:513                                     ; preds = %509, %507, %469
  %514 = phi float [ %505, %469 ], [ %497, %507 ], [ %497, %509 ]
  %515 = phi float [ %497, %469 ], [ %505, %507 ], [ %499, %509 ]
  %516 = phi float [ %499, %469 ], [ %499, %507 ], [ %511, %509 ]
  %517 = phi float [ %501, %469 ], [ %501, %507 ], [ %512, %509 ]
  %518 = fmul fast float %515, %515
  %519 = fmul fast float %518, 2.000000e+00
  %520 = fsub fast float 1.000000e+00, %519
  %521 = fmul fast float %516, %516
  %522 = fmul fast float %521, 2.000000e+00
  %523 = fsub fast float %520, %522
  %524 = fmul fast float %515, %514
  %525 = fmul fast float %517, %516
  %526 = fadd fast float %525, %524
  %527 = fmul fast float %526, 2.000000e+00
  %528 = fmul fast float %514, 2.000000e+00
  %529 = fmul fast float %528, %516
  %530 = fmul fast float %515, 2.000000e+00
  %531 = fmul fast float %530, %517
  %532 = fsub fast float %529, %531
  %533 = fmul fast float %532, %476
  %534 = fmul fast float %527, %477
  %535 = fsub fast float %533, %534
  %536 = fmul fast float %523, %477
  %537 = fmul fast float %532, %475
  %538 = fsub fast float %536, %537
  %539 = fmul fast float %527, %475
  %540 = fmul fast float %523, %476
  %541 = fsub fast float %539, %540
  %542 = fmul fast float %538, %477
  %543 = fmul fast float %541, %476
  %544 = fsub fast float %542, %543
  %545 = fmul fast float %541, %475
  %546 = fmul fast float %535, %477
  %547 = fsub fast float %545, %546
  %548 = fmul fast float %535, %476
  %549 = fmul fast float %538, %475
  %550 = fsub fast float %548, %549
  %551 = fadd fast float %538, %477
  %552 = fadd fast float %551, %544
  %553 = fcmp fast ogt float %552, 0.000000e+00
  br i1 %553, label %554, label %565, !dx.controlflow.hints !18

; <label>:554                                     ; preds = %513
  %555 = fadd fast float %552, 1.000000e+00
  %556 = fsub fast float %541, %476
  %557 = fsub fast float %475, %550
  %558 = fsub fast float %547, %535
  %559 = call float @dx.op.unary.f32(i32 25, float %555)  ; Rsqrt(value)
  %560 = fmul fast float %559, 5.000000e-01
  %561 = fmul fast float %560, %556
  %562 = fmul fast float %560, %557
  %563 = fmul fast float %560, %558
  %564 = fmul fast float %560, %555
  br label %609

; <label>:565                                     ; preds = %513
  %566 = fcmp fast ogt float %544, %538
  %567 = fcmp fast ogt float %544, %477
  %568 = and i1 %566, %567
  br i1 %568, label %569, label %582, !dx.controlflow.hints !19

; <label>:569                                     ; preds = %565
  %570 = fsub fast float 1.000000e+00, %477
  %571 = fsub fast float %570, %538
  %572 = fadd fast float %571, %544
  %573 = fsub fast float %541, %476
  %574 = fadd fast float %547, %535
  %575 = fadd fast float %550, %475
  %576 = call float @dx.op.unary.f32(i32 25, float %572)  ; Rsqrt(value)
  %577 = fmul fast float %576, 5.000000e-01
  %578 = fmul fast float %577, %572
  %579 = fmul fast float %577, %574
  %580 = fmul fast float %577, %575
  %581 = fmul fast float %577, %573
  br label %609

; <label>:582                                     ; preds = %565
  %583 = fcmp fast ogt float %538, %477
  %584 = fadd fast float %541, %476
  br i1 %583, label %585, label %597, !dx.controlflow.hints !20

; <label>:585                                     ; preds = %582
  %586 = fsub fast float 1.000000e+00, %477
  %587 = fadd fast float %586, %538
  %588 = fsub fast float %587, %544
  %589 = fsub fast float %475, %550
  %590 = fadd fast float %547, %535
  %591 = call float @dx.op.unary.f32(i32 25, float %588)  ; Rsqrt(value)
  %592 = fmul fast float %591, 5.000000e-01
  %593 = fmul fast float %592, %590
  %594 = fmul fast float %592, %588
  %595 = fmul fast float %592, %584
  %596 = fmul fast float %592, %589
  br label %609

; <label>:597                                     ; preds = %582
  %598 = fadd fast float %477, 1.000000e+00
  %599 = fsub fast float %598, %538
  %600 = fsub fast float %599, %544
  %601 = fsub fast float %547, %535
  %602 = fadd fast float %550, %475
  %603 = call float @dx.op.unary.f32(i32 25, float %600)  ; Rsqrt(value)
  %604 = fmul fast float %603, 5.000000e-01
  %605 = fmul fast float %604, %602
  %606 = fmul fast float %604, %584
  %607 = fmul fast float %604, %600
  %608 = fmul fast float %604, %601
  br label %609

; <label>:609                                     ; preds = %597, %585, %569, %554
  %610 = phi float [ %561, %554 ], [ %578, %569 ], [ %593, %585 ], [ %605, %597 ]
  %611 = phi float [ %562, %554 ], [ %579, %569 ], [ %594, %585 ], [ %606, %597 ]
  %612 = phi float [ %563, %554 ], [ %580, %569 ], [ %595, %585 ], [ %607, %597 ]
  %613 = phi float [ %564, %554 ], [ %581, %569 ], [ %596, %585 ], [ %608, %597 ]
  %614 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %615 = call float @dx.op.unary.f32(i32 6, float %610)  ; FAbs(value)
  %616 = fcmp fast oge float %614, %615
  %617 = call float @dx.op.unary.f32(i32 6, float %611)  ; FAbs(value)
  %618 = fcmp fast oge float %614, %617
  %619 = and i1 %616, %618
  br i1 %619, label %620, label %623, !dx.controlflow.hints !21

; <label>:620                                     ; preds = %609
  %621 = fcmp fast olt float %612, 0.000000e+00
  %622 = select i1 %621, float 5.000000e+00, float 4.000000e+00
  br label %631

; <label>:623                                     ; preds = %609
  %624 = fcmp fast ult float %617, %615
  br i1 %624, label %628, label %625, !dx.controlflow.hints !22

; <label>:625                                     ; preds = %623
  %626 = fcmp fast olt float %611, 0.000000e+00
  %627 = select i1 %626, float 3.000000e+00, float 2.000000e+00
  br label %631

; <label>:628                                     ; preds = %623
  %629 = fcmp fast olt float %610, 0.000000e+00
  %630 = select i1 %629, float 1.000000e+00, float 0.000000e+00
  br label %631

; <label>:631                                     ; preds = %628, %625, %620
  %632 = phi float [ %622, %620 ], [ %627, %625 ], [ %630, %628 ]
  %633 = fmul fast float %632, 5.000000e-01
  %634 = fptoui float %633 to i32
  %635 = call float @dx.op.unary.f32(i32 6, float %613)  ; FAbs(value)
  %636 = call float @dx.op.binary.f32(i32 35, float %617, float %614)  ; FMax(a,b)
  %637 = call float @dx.op.binary.f32(i32 35, float %615, float %636)  ; FMax(a,b)
  %638 = fcmp fast ogt float %635, %637
  %639 = select i1 %638, i32 3, i32 %634
  %640 = icmp eq i32 %639, 0
  %641 = select i1 %640, float %611, float %610
  %642 = select i1 %640, float %612, float %611
  %643 = select i1 %640, float %613, float %612
  %644 = select i1 %640, float %610, float %613
  %645 = icmp eq i32 %639, 1
  %646 = select i1 %645, float %643, float %642
  %647 = select i1 %645, float %644, float %643
  %648 = select i1 %645, float %642, float %644
  %649 = icmp eq i32 %639, 2
  %650 = select i1 %649, float %648, float %647
  %651 = select i1 %649, float %647, float %648
  %652 = fcmp fast ogt float %651, 0.000000e+00
  %653 = select i1 %652, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %654 = fmul fast float %653, %641
  %655 = fmul fast float %653, %646
  %656 = fmul fast float %653, %650
  %657 = fadd fast float %654, 1.000000e+00
  %658 = fmul fast float %657, 5.000000e-01
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = fmul fast float %659, 1.023000e+03
  %661 = fptoui float %660 to i32
  %662 = fadd fast float %655, 1.000000e+00
  %663 = fmul fast float %662, 5.000000e-01
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %665 = fmul fast float %664, 1.023000e+03
  %666 = fptoui float %665 to i32
  %667 = fadd fast float %656, 1.000000e+00
  %668 = fmul fast float %667, 5.000000e-01
  %669 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %670 = fmul fast float %669, 5.110000e+02
  %671 = fptoui float %670 to i32
  %672 = shl i32 %666, 10
  %673 = shl i32 %671, 20
  %674 = fcmp fast ogt float %486, 0.000000e+00
  %675 = select i1 %674, i32 0, i32 536870912
  %676 = shl i32 %639, 30
  %677 = or i32 %661, %675
  %678 = or i32 %677, %676
  %679 = or i32 %678, %672
  %680 = or i32 %679, %673
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %481, i32 undef, i32 %680, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %681

; <label>:681                                     ; preds = %631, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !9, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %SubdivConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!11 = !{void ()* @cs_normal, !"cs_normal", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}

