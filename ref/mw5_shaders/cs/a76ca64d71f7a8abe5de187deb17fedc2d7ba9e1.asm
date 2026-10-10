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
; shader hash: e4a66070062b4eb71745ee5fc4505c49
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
;                                   texture    byte         r/o      T0             t2     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%SubdivConstants = type { <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @cs_vertex_point_mayhem() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 1
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %588, !dx.controlflow.hints !14

; <label>:8                                       ; preds = %0
  %9 = extractvalue %dx.types.CBufRet.i32 %5, 2
  %10 = icmp ult i32 %4, %9
  br i1 %10, label %11, label %19, !dx.controlflow.hints !15

; <label>:11                                      ; preds = %8
  %12 = mul i32 %4, 20
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = lshr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = call i32 @dx.op.binary.i32(i32 40, i32 %16, i32 64)  ; UMin(a,b)
  %18 = add i32 %12, 4
  br label %30

; <label>:19                                      ; preds = %8
  %20 = mul i32 %9, 20
  %21 = sub i32 %4, %9
  %22 = shl i32 %21, 3
  %23 = add i32 %22, %20
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  %27 = lshr i32 %25, 8
  %28 = and i32 %27, 255
  %29 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 64)  ; UMin(a,b)
  br label %30

; <label>:30                                      ; preds = %19, %11
  %31 = phi i32 [ %14, %11 ], [ %25, %19 ]
  %32 = phi i32 [ %17, %11 ], [ %29, %19 ]
  %33 = phi i32 [ %18, %11 ], [ %26, %19 ]
  %34 = lshr i32 %31, 16
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = add i32 %36, %34
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = shl i32 %37, 3
  %46 = add i32 %44, %45
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = and i32 %48, 2097151
  %51 = uitofp i32 %50 to float
  %52 = lshr i32 %48, 21
  %53 = shl i32 %49, 11
  %54 = and i32 %53, 2095104
  %55 = or i32 %54, %52
  %56 = uitofp i32 %55 to float
  %57 = lshr i32 %49, 10
  %58 = and i32 %57, 2097151
  %59 = uitofp i32 %58 to float
  %60 = fdiv float %51, 2.097151e+06
  %61 = fdiv float %56, 2.097151e+06
  %62 = fdiv float %59, 2.097151e+06
  %63 = fmul float %60, 2.000000e+00
  %64 = fmul float %61, 2.000000e+00
  %65 = fmul float %62, 2.000000e+00
  %66 = fadd float %63, -1.000000e+00
  %67 = fadd float %64, -1.000000e+00
  %68 = fadd float %65, -1.000000e+00
  %69 = fmul float %42, %66
  %70 = fmul float %42, %67
  %71 = fmul float %42, %68
  %72 = fadd float %39, %69
  %73 = fadd float %40, %70
  %74 = fadd float %41, %71
  %75 = and i32 %31, 3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %521, !dx.controlflow.hints !16

; <label>:77                                      ; preds = %30
  %78 = uitofp i32 %32 to float
  %79 = fadd float %78, -2.000000e+00
  %80 = fdiv float %79, %78
  %81 = mul i32 %32, %32
  %82 = uitofp i32 %81 to float
  %83 = fdiv float 1.000000e+00, %82
  %84 = fmul float %72, %80
  %85 = fmul float %73, %80
  %86 = fmul float %74, %80
  %87 = icmp eq i32 %32, 0
  br i1 %10, label %88, label %421, !dx.controlflow.hints !17

; <label>:88                                      ; preds = %77
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = extractvalue %dx.types.ResRet.i32 %89, 1
  %92 = extractvalue %dx.types.ResRet.i32 %89, 2
  %93 = extractvalue %dx.types.ResRet.i32 %89, 3
  br i1 %87, label %172, label %94, !dx.controlflow.hints !18

; <label>:94                                      ; preds = %88
  %95 = and i32 %90, 65535
  %96 = lshr i32 %90, 16
  %97 = add i32 %36, %95
  %98 = shl i32 %97, 3
  %99 = add i32 %44, %98
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = extractvalue %dx.types.ResRet.i32 %100, 1
  %103 = and i32 %101, 2097151
  %104 = uitofp i32 %103 to float
  %105 = lshr i32 %101, 21
  %106 = shl i32 %102, 11
  %107 = and i32 %106, 2095104
  %108 = or i32 %107, %105
  %109 = uitofp i32 %108 to float
  %110 = lshr i32 %102, 10
  %111 = and i32 %110, 2097151
  %112 = uitofp i32 %111 to float
  %113 = fdiv float %104, 2.097151e+06
  %114 = fdiv float %109, 2.097151e+06
  %115 = fdiv float %112, 2.097151e+06
  %116 = fmul float %113, 2.000000e+00
  %117 = fmul float %114, 2.000000e+00
  %118 = fmul float %115, 2.000000e+00
  %119 = fadd float %116, -1.000000e+00
  %120 = fadd float %117, -1.000000e+00
  %121 = fadd float %118, -1.000000e+00
  %122 = fmul float %42, %119
  %123 = fmul float %42, %120
  %124 = fmul float %42, %121
  %125 = fadd float %39, %122
  %126 = fadd float %40, %123
  %127 = fadd float %41, %124
  %128 = fmul float %83, %125
  %129 = fmul float %83, %126
  %130 = fmul float %83, %127
  %131 = fadd float %84, %128
  %132 = fadd float %85, %129
  %133 = fadd float %86, %130
  %134 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %135 = add i32 %134, %96
  %136 = shl i32 %135, 3
  %137 = add i32 %44, %136
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = extractvalue %dx.types.ResRet.i32 %138, 1
  %141 = and i32 %139, 2097151
  %142 = uitofp i32 %141 to float
  %143 = lshr i32 %139, 21
  %144 = shl i32 %140, 11
  %145 = and i32 %144, 2095104
  %146 = or i32 %145, %143
  %147 = uitofp i32 %146 to float
  %148 = lshr i32 %140, 10
  %149 = and i32 %148, 2097151
  %150 = uitofp i32 %149 to float
  %151 = fdiv float %142, 2.097151e+06
  %152 = fdiv float %147, 2.097151e+06
  %153 = fdiv float %150, 2.097151e+06
  %154 = fmul float %151, 2.000000e+00
  %155 = fmul float %152, 2.000000e+00
  %156 = fmul float %153, 2.000000e+00
  %157 = fadd float %154, -1.000000e+00
  %158 = fadd float %155, -1.000000e+00
  %159 = fadd float %156, -1.000000e+00
  %160 = fmul float %42, %157
  %161 = fmul float %42, %158
  %162 = fmul float %42, %159
  %163 = fadd float %39, %160
  %164 = fadd float %40, %161
  %165 = fadd float %41, %162
  %166 = fmul float %83, %163
  %167 = fmul float %83, %164
  %168 = fmul float %83, %165
  %169 = fadd float %131, %166
  %170 = fadd float %132, %167
  %171 = fadd float %133, %168
  br label %172

; <label>:172                                     ; preds = %94, %88
  %173 = phi float [ %169, %94 ], [ %84, %88 ]
  %174 = phi float [ %170, %94 ], [ %85, %88 ]
  %175 = phi float [ %171, %94 ], [ %86, %88 ]
  %176 = icmp ugt i32 %32, 1
  br i1 %176, label %177, label %255, !dx.controlflow.hints !19

; <label>:177                                     ; preds = %172
  %178 = and i32 %91, 65535
  %179 = lshr i32 %91, 16
  %180 = add i32 %36, %178
  %181 = shl i32 %180, 3
  %182 = add i32 %44, %181
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = extractvalue %dx.types.ResRet.i32 %183, 1
  %186 = and i32 %184, 2097151
  %187 = uitofp i32 %186 to float
  %188 = lshr i32 %184, 21
  %189 = shl i32 %185, 11
  %190 = and i32 %189, 2095104
  %191 = or i32 %190, %188
  %192 = uitofp i32 %191 to float
  %193 = lshr i32 %185, 10
  %194 = and i32 %193, 2097151
  %195 = uitofp i32 %194 to float
  %196 = fdiv float %187, 2.097151e+06
  %197 = fdiv float %192, 2.097151e+06
  %198 = fdiv float %195, 2.097151e+06
  %199 = fmul float %196, 2.000000e+00
  %200 = fmul float %197, 2.000000e+00
  %201 = fmul float %198, 2.000000e+00
  %202 = fadd float %199, -1.000000e+00
  %203 = fadd float %200, -1.000000e+00
  %204 = fadd float %201, -1.000000e+00
  %205 = fmul float %42, %202
  %206 = fmul float %42, %203
  %207 = fmul float %42, %204
  %208 = fadd float %39, %205
  %209 = fadd float %40, %206
  %210 = fadd float %41, %207
  %211 = fmul float %83, %208
  %212 = fmul float %83, %209
  %213 = fmul float %83, %210
  %214 = fadd float %173, %211
  %215 = fadd float %174, %212
  %216 = fadd float %175, %213
  %217 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %218 = add i32 %217, %179
  %219 = shl i32 %218, 3
  %220 = add i32 %44, %219
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = extractvalue %dx.types.ResRet.i32 %221, 1
  %224 = and i32 %222, 2097151
  %225 = uitofp i32 %224 to float
  %226 = lshr i32 %222, 21
  %227 = shl i32 %223, 11
  %228 = and i32 %227, 2095104
  %229 = or i32 %228, %226
  %230 = uitofp i32 %229 to float
  %231 = lshr i32 %223, 10
  %232 = and i32 %231, 2097151
  %233 = uitofp i32 %232 to float
  %234 = fdiv float %225, 2.097151e+06
  %235 = fdiv float %230, 2.097151e+06
  %236 = fdiv float %233, 2.097151e+06
  %237 = fmul float %234, 2.000000e+00
  %238 = fmul float %235, 2.000000e+00
  %239 = fmul float %236, 2.000000e+00
  %240 = fadd float %237, -1.000000e+00
  %241 = fadd float %238, -1.000000e+00
  %242 = fadd float %239, -1.000000e+00
  %243 = fmul float %42, %240
  %244 = fmul float %42, %241
  %245 = fmul float %42, %242
  %246 = fadd float %39, %243
  %247 = fadd float %40, %244
  %248 = fadd float %41, %245
  %249 = fmul float %83, %246
  %250 = fmul float %83, %247
  %251 = fmul float %83, %248
  %252 = fadd float %214, %249
  %253 = fadd float %215, %250
  %254 = fadd float %216, %251
  br label %255

; <label>:255                                     ; preds = %177, %172
  %256 = phi float [ %252, %177 ], [ %173, %172 ]
  %257 = phi float [ %253, %177 ], [ %174, %172 ]
  %258 = phi float [ %254, %177 ], [ %175, %172 ]
  %259 = icmp ugt i32 %32, 2
  br i1 %259, label %260, label %338, !dx.controlflow.hints !20

; <label>:260                                     ; preds = %255
  %261 = and i32 %92, 65535
  %262 = lshr i32 %92, 16
  %263 = add i32 %36, %261
  %264 = shl i32 %263, 3
  %265 = add i32 %44, %264
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = extractvalue %dx.types.ResRet.i32 %266, 1
  %269 = and i32 %267, 2097151
  %270 = uitofp i32 %269 to float
  %271 = lshr i32 %267, 21
  %272 = shl i32 %268, 11
  %273 = and i32 %272, 2095104
  %274 = or i32 %273, %271
  %275 = uitofp i32 %274 to float
  %276 = lshr i32 %268, 10
  %277 = and i32 %276, 2097151
  %278 = uitofp i32 %277 to float
  %279 = fdiv float %270, 2.097151e+06
  %280 = fdiv float %275, 2.097151e+06
  %281 = fdiv float %278, 2.097151e+06
  %282 = fmul float %279, 2.000000e+00
  %283 = fmul float %280, 2.000000e+00
  %284 = fmul float %281, 2.000000e+00
  %285 = fadd float %282, -1.000000e+00
  %286 = fadd float %283, -1.000000e+00
  %287 = fadd float %284, -1.000000e+00
  %288 = fmul float %42, %285
  %289 = fmul float %42, %286
  %290 = fmul float %42, %287
  %291 = fadd float %39, %288
  %292 = fadd float %40, %289
  %293 = fadd float %41, %290
  %294 = fmul float %83, %291
  %295 = fmul float %83, %292
  %296 = fmul float %83, %293
  %297 = fadd float %256, %294
  %298 = fadd float %257, %295
  %299 = fadd float %258, %296
  %300 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %301 = add i32 %300, %262
  %302 = shl i32 %301, 3
  %303 = add i32 %44, %302
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = extractvalue %dx.types.ResRet.i32 %304, 1
  %307 = and i32 %305, 2097151
  %308 = uitofp i32 %307 to float
  %309 = lshr i32 %305, 21
  %310 = shl i32 %306, 11
  %311 = and i32 %310, 2095104
  %312 = or i32 %311, %309
  %313 = uitofp i32 %312 to float
  %314 = lshr i32 %306, 10
  %315 = and i32 %314, 2097151
  %316 = uitofp i32 %315 to float
  %317 = fdiv float %308, 2.097151e+06
  %318 = fdiv float %313, 2.097151e+06
  %319 = fdiv float %316, 2.097151e+06
  %320 = fmul float %317, 2.000000e+00
  %321 = fmul float %318, 2.000000e+00
  %322 = fmul float %319, 2.000000e+00
  %323 = fadd float %320, -1.000000e+00
  %324 = fadd float %321, -1.000000e+00
  %325 = fadd float %322, -1.000000e+00
  %326 = fmul float %42, %323
  %327 = fmul float %42, %324
  %328 = fmul float %42, %325
  %329 = fadd float %39, %326
  %330 = fadd float %40, %327
  %331 = fadd float %41, %328
  %332 = fmul float %83, %329
  %333 = fmul float %83, %330
  %334 = fmul float %83, %331
  %335 = fadd float %297, %332
  %336 = fadd float %298, %333
  %337 = fadd float %299, %334
  br label %338

; <label>:338                                     ; preds = %260, %255
  %339 = phi float [ %335, %260 ], [ %256, %255 ]
  %340 = phi float [ %336, %260 ], [ %257, %255 ]
  %341 = phi float [ %337, %260 ], [ %258, %255 ]
  %342 = icmp ugt i32 %32, 3
  br i1 %342, label %343, label %521, !dx.controlflow.hints !21

; <label>:343                                     ; preds = %338
  %344 = and i32 %93, 65535
  %345 = lshr i32 %93, 16
  %346 = add i32 %36, %344
  %347 = shl i32 %346, 3
  %348 = add i32 %44, %347
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = extractvalue %dx.types.ResRet.i32 %349, 1
  %352 = and i32 %350, 2097151
  %353 = uitofp i32 %352 to float
  %354 = lshr i32 %350, 21
  %355 = shl i32 %351, 11
  %356 = and i32 %355, 2095104
  %357 = or i32 %356, %354
  %358 = uitofp i32 %357 to float
  %359 = lshr i32 %351, 10
  %360 = and i32 %359, 2097151
  %361 = uitofp i32 %360 to float
  %362 = fdiv float %353, 2.097151e+06
  %363 = fdiv float %358, 2.097151e+06
  %364 = fdiv float %361, 2.097151e+06
  %365 = fmul float %362, 2.000000e+00
  %366 = fmul float %363, 2.000000e+00
  %367 = fmul float %364, 2.000000e+00
  %368 = fadd float %365, -1.000000e+00
  %369 = fadd float %366, -1.000000e+00
  %370 = fadd float %367, -1.000000e+00
  %371 = fmul float %42, %368
  %372 = fmul float %42, %369
  %373 = fmul float %42, %370
  %374 = fadd float %39, %371
  %375 = fadd float %40, %372
  %376 = fadd float %41, %373
  %377 = fmul float %83, %374
  %378 = fmul float %83, %375
  %379 = fmul float %83, %376
  %380 = fadd float %339, %377
  %381 = fadd float %340, %378
  %382 = fadd float %341, %379
  %383 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %384 = add i32 %383, %345
  %385 = shl i32 %384, 3
  %386 = add i32 %44, %385
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
  %409 = fmul float %42, %406
  %410 = fmul float %42, %407
  %411 = fmul float %42, %408
  %412 = fadd float %39, %409
  %413 = fadd float %40, %410
  %414 = fadd float %41, %411
  %415 = fmul float %83, %412
  %416 = fmul float %83, %413
  %417 = fmul float %83, %414
  %418 = fadd float %380, %415
  %419 = fadd float %381, %416
  %420 = fadd float %382, %417
  br label %521

; <label>:421                                     ; preds = %77
  br i1 %87, label %521, label %422

; <label>:422                                     ; preds = %421
  br label %423

; <label>:423                                     ; preds = %423, %422
  %424 = phi i32 [ %518, %423 ], [ %33, %422 ]
  %425 = phi float [ %514, %423 ], [ %84, %422 ]
  %426 = phi float [ %515, %423 ], [ %85, %422 ]
  %427 = phi float [ %516, %423 ], [ %86, %422 ]
  %428 = phi i32 [ %517, %423 ], [ 0, %422 ]
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = lshr i32 %430, 16
  %433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.i32 %433, 0
  %435 = add i32 %434, %431
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %439 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %440 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.i32 %441, 0
  %443 = shl i32 %435, 3
  %444 = add i32 %442, %443
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = extractvalue %dx.types.ResRet.i32 %445, 1
  %448 = and i32 %446, 2097151
  %449 = uitofp i32 %448 to float
  %450 = lshr i32 %446, 21
  %451 = shl i32 %447, 11
  %452 = and i32 %451, 2095104
  %453 = or i32 %452, %450
  %454 = uitofp i32 %453 to float
  %455 = lshr i32 %447, 10
  %456 = and i32 %455, 2097151
  %457 = uitofp i32 %456 to float
  %458 = fdiv float %449, 2.097151e+06
  %459 = fdiv float %454, 2.097151e+06
  %460 = fdiv float %457, 2.097151e+06
  %461 = fmul float %458, 2.000000e+00
  %462 = fmul float %459, 2.000000e+00
  %463 = fmul float %460, 2.000000e+00
  %464 = fadd float %461, -1.000000e+00
  %465 = fadd float %462, -1.000000e+00
  %466 = fadd float %463, -1.000000e+00
  %467 = fmul float %440, %464
  %468 = fmul float %440, %465
  %469 = fmul float %440, %466
  %470 = fadd float %437, %467
  %471 = fadd float %438, %468
  %472 = fadd float %439, %469
  %473 = fmul float %83, %470
  %474 = fmul float %83, %471
  %475 = fmul float %83, %472
  %476 = fadd float %425, %473
  %477 = fadd float %426, %474
  %478 = fadd float %427, %475
  %479 = extractvalue %dx.types.CBufRet.i32 %433, 1
  %480 = add i32 %479, %432
  %481 = shl i32 %480, 3
  %482 = add i32 %442, %481
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = extractvalue %dx.types.ResRet.i32 %483, 1
  %486 = and i32 %484, 2097151
  %487 = uitofp i32 %486 to float
  %488 = lshr i32 %484, 21
  %489 = shl i32 %485, 11
  %490 = and i32 %489, 2095104
  %491 = or i32 %490, %488
  %492 = uitofp i32 %491 to float
  %493 = lshr i32 %485, 10
  %494 = and i32 %493, 2097151
  %495 = uitofp i32 %494 to float
  %496 = fdiv float %487, 2.097151e+06
  %497 = fdiv float %492, 2.097151e+06
  %498 = fdiv float %495, 2.097151e+06
  %499 = fmul float %496, 2.000000e+00
  %500 = fmul float %497, 2.000000e+00
  %501 = fmul float %498, 2.000000e+00
  %502 = fadd float %499, -1.000000e+00
  %503 = fadd float %500, -1.000000e+00
  %504 = fadd float %501, -1.000000e+00
  %505 = fmul float %440, %502
  %506 = fmul float %440, %503
  %507 = fmul float %440, %504
  %508 = fadd float %437, %505
  %509 = fadd float %438, %506
  %510 = fadd float %439, %507
  %511 = fmul float %83, %508
  %512 = fmul float %83, %509
  %513 = fmul float %83, %510
  %514 = fadd float %476, %511
  %515 = fadd float %477, %512
  %516 = fadd float %478, %513
  %517 = add nuw i32 %428, 1
  %518 = add i32 %424, 4
  %519 = icmp eq i32 %517, %32
  br i1 %519, label %520, label %423

; <label>:520                                     ; preds = %423
  br label %521

; <label>:521                                     ; preds = %520, %421, %343, %338, %30
  %522 = phi float [ %72, %30 ], [ %418, %343 ], [ %339, %338 ], [ %84, %421 ], [ %514, %520 ]
  %523 = phi float [ %73, %30 ], [ %419, %343 ], [ %340, %338 ], [ %85, %421 ], [ %515, %520 ]
  %524 = phi float [ %74, %30 ], [ %420, %343 ], [ %341, %338 ], [ %86, %421 ], [ %516, %520 ]
  %525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.i32 %525, 1
  %527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.i32 %527, 0
  %529 = extractvalue %dx.types.CBufRet.i32 %527, 2
  %530 = add i32 %526, %4
  %531 = add i32 %530, %528
  %532 = add i32 %531, %529
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 0
  %535 = extractvalue %dx.types.CBufRet.f32 %533, 1
  %536 = extractvalue %dx.types.CBufRet.f32 %533, 2
  %537 = extractvalue %dx.types.CBufRet.f32 %533, 3
  %538 = fsub float %522, %534
  %539 = fsub float %523, %535
  %540 = fsub float %524, %536
  %541 = fdiv float 1.000000e+00, %537
  %542 = fmul float %541, %538
  %543 = fmul float %541, %539
  %544 = fmul float %541, %540
  %545 = fmul float %542, 5.000000e-01
  %546 = fmul float %543, 5.000000e-01
  %547 = fmul float %544, 5.000000e-01
  %548 = fadd float %545, 5.000000e-01
  %549 = fadd float %546, 5.000000e-01
  %550 = fadd float %547, 5.000000e-01
  %551 = call float @dx.op.unary.f32(i32 7, float %548), !dx.precise !22  ; Saturate(value)
  %552 = call float @dx.op.unary.f32(i32 7, float %549), !dx.precise !22  ; Saturate(value)
  %553 = call float @dx.op.unary.f32(i32 7, float %550), !dx.precise !22  ; Saturate(value)
  %554 = fmul float %551, 2.097151e+06
  %555 = fmul float %552, 2.097151e+06
  %556 = fmul float %553, 2.097151e+06
  %557 = fptoui float %554 to i32
  %558 = fptoui float %555 to i32
  %559 = fptoui float %556 to i32
  %560 = shl i32 %558, 21
  %561 = or i32 %560, %557
  %562 = lshr i32 %558, 11
  %563 = shl i32 %559, 10
  %564 = or i32 %563, %562
  %565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.i32 %565, 0
  %567 = shl i32 %532, 3
  %568 = add i32 %566, %567
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %568, i32 undef, i32 %561, i32 %564, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.i32 %569, 1
  %571 = shl i32 %37, 2
  %572 = add i32 %570, %571
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = shl i32 %532, 2
  %576 = add i32 %570, %575
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %576, i32 undef, i32 %574, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.i32 %577, 2
  %579 = shl i32 %37, 4
  %580 = add i32 %578, %579
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = extractvalue %dx.types.ResRet.i32 %581, 1
  %584 = extractvalue %dx.types.ResRet.i32 %581, 2
  %585 = extractvalue %dx.types.ResRet.i32 %581, 3
  %586 = shl i32 %532, 4
  %587 = add i32 %578, %586
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %587, i32 undef, i32 %582, i32 %583, i32 %584, i32 %585, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %588

; <label>:588                                     ; preds = %521, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %SubdivConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!11 = !{void ()* @cs_vertex_point_mayhem, !"cs_vertex_point_mayhem", null, !4, !12}
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
!22 = !{i32 1}

