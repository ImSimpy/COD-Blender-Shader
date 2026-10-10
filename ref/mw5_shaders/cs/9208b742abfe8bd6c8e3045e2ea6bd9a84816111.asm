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
; shader hash: f145668ddb0632cbf8493763236b7d8a
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
;                                   texture    byte         r/o      T0             t0     1
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

define void @cs_face_point_mayhem() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 0
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %817, !dx.controlflow.hints !14

; <label>:8                                       ; preds = %0
  %9 = shl i32 %4, 3
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %9, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = extractvalue %dx.types.ResRet.i32 %10, 1
  %13 = extractvalue %dx.types.CBufRet.i32 %5, 1
  %14 = icmp ult i32 %4, %13
  br i1 %14, label %15, label %444, !dx.controlflow.hints !15

; <label>:15                                      ; preds = %8
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %18 = and i32 %11, 65535
  %19 = add i32 %17, %18
  %20 = lshr i32 %11, 16
  %21 = add i32 %17, %20
  %22 = and i32 %12, 65535
  %23 = add i32 %17, %22
  %24 = lshr i32 %12, 16
  %25 = add i32 %17, %24
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 1
  %29 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = shl i32 %19, 3
  %34 = add i32 %32, %33
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = extractvalue %dx.types.ResRet.i32 %35, 1
  %38 = and i32 %36, 2097151
  %39 = uitofp i32 %38 to float
  %40 = lshr i32 %36, 21
  %41 = shl i32 %37, 11
  %42 = and i32 %41, 2095104
  %43 = or i32 %42, %40
  %44 = uitofp i32 %43 to float
  %45 = lshr i32 %37, 10
  %46 = and i32 %45, 2097151
  %47 = uitofp i32 %46 to float
  %48 = fdiv float %39, 2.097151e+06
  %49 = fdiv float %44, 2.097151e+06
  %50 = fdiv float %47, 2.097151e+06
  %51 = fmul float %48, 2.000000e+00
  %52 = fmul float %49, 2.000000e+00
  %53 = fmul float %50, 2.000000e+00
  %54 = fadd float %51, -1.000000e+00
  %55 = fadd float %52, -1.000000e+00
  %56 = fadd float %53, -1.000000e+00
  %57 = fmul float %30, %54
  %58 = fmul float %30, %55
  %59 = fmul float %30, %56
  %60 = fadd float %27, %57
  %61 = fadd float %28, %58
  %62 = fadd float %29, %59
  %63 = fmul float %60, 2.500000e-01
  %64 = fmul float %61, 2.500000e-01
  %65 = fmul float %62, 2.500000e-01
  %66 = fadd float %63, 0.000000e+00
  %67 = fadd float %64, 0.000000e+00
  %68 = fadd float %65, 0.000000e+00
  %69 = shl i32 %21, 3
  %70 = add i32 %32, %69
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %70, i32 undef)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 0
  %73 = extractvalue %dx.types.ResRet.i32 %71, 1
  %74 = and i32 %72, 2097151
  %75 = uitofp i32 %74 to float
  %76 = lshr i32 %72, 21
  %77 = shl i32 %73, 11
  %78 = and i32 %77, 2095104
  %79 = or i32 %78, %76
  %80 = uitofp i32 %79 to float
  %81 = lshr i32 %73, 10
  %82 = and i32 %81, 2097151
  %83 = uitofp i32 %82 to float
  %84 = fdiv float %75, 2.097151e+06
  %85 = fdiv float %80, 2.097151e+06
  %86 = fdiv float %83, 2.097151e+06
  %87 = fmul float %84, 2.000000e+00
  %88 = fmul float %85, 2.000000e+00
  %89 = fmul float %86, 2.000000e+00
  %90 = fadd float %87, -1.000000e+00
  %91 = fadd float %88, -1.000000e+00
  %92 = fadd float %89, -1.000000e+00
  %93 = fmul float %30, %90
  %94 = fmul float %30, %91
  %95 = fmul float %30, %92
  %96 = fadd float %27, %93
  %97 = fadd float %28, %94
  %98 = fadd float %29, %95
  %99 = fmul float %96, 2.500000e-01
  %100 = fmul float %97, 2.500000e-01
  %101 = fmul float %98, 2.500000e-01
  %102 = fadd float %66, %99
  %103 = fadd float %67, %100
  %104 = fadd float %68, %101
  %105 = shl i32 %23, 3
  %106 = add i32 %32, %105
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = extractvalue %dx.types.ResRet.i32 %107, 1
  %110 = and i32 %108, 2097151
  %111 = uitofp i32 %110 to float
  %112 = lshr i32 %108, 21
  %113 = shl i32 %109, 11
  %114 = and i32 %113, 2095104
  %115 = or i32 %114, %112
  %116 = uitofp i32 %115 to float
  %117 = lshr i32 %109, 10
  %118 = and i32 %117, 2097151
  %119 = uitofp i32 %118 to float
  %120 = fdiv float %111, 2.097151e+06
  %121 = fdiv float %116, 2.097151e+06
  %122 = fdiv float %119, 2.097151e+06
  %123 = fmul float %120, 2.000000e+00
  %124 = fmul float %121, 2.000000e+00
  %125 = fmul float %122, 2.000000e+00
  %126 = fadd float %123, -1.000000e+00
  %127 = fadd float %124, -1.000000e+00
  %128 = fadd float %125, -1.000000e+00
  %129 = fmul float %30, %126
  %130 = fmul float %30, %127
  %131 = fmul float %30, %128
  %132 = fadd float %27, %129
  %133 = fadd float %28, %130
  %134 = fadd float %29, %131
  %135 = fmul float %132, 2.500000e-01
  %136 = fmul float %133, 2.500000e-01
  %137 = fmul float %134, 2.500000e-01
  %138 = fadd float %102, %135
  %139 = fadd float %103, %136
  %140 = fadd float %104, %137
  %141 = shl i32 %25, 3
  %142 = add i32 %32, %141
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = extractvalue %dx.types.ResRet.i32 %143, 1
  %146 = and i32 %144, 2097151
  %147 = uitofp i32 %146 to float
  %148 = lshr i32 %144, 21
  %149 = shl i32 %145, 11
  %150 = and i32 %149, 2095104
  %151 = or i32 %150, %148
  %152 = uitofp i32 %151 to float
  %153 = lshr i32 %145, 10
  %154 = and i32 %153, 2097151
  %155 = uitofp i32 %154 to float
  %156 = fdiv float %147, 2.097151e+06
  %157 = fdiv float %152, 2.097151e+06
  %158 = fdiv float %155, 2.097151e+06
  %159 = fmul float %156, 2.000000e+00
  %160 = fmul float %157, 2.000000e+00
  %161 = fmul float %158, 2.000000e+00
  %162 = fadd float %159, -1.000000e+00
  %163 = fadd float %160, -1.000000e+00
  %164 = fadd float %161, -1.000000e+00
  %165 = fmul float %30, %162
  %166 = fmul float %30, %163
  %167 = fmul float %30, %164
  %168 = fadd float %27, %165
  %169 = fadd float %28, %166
  %170 = fadd float %29, %167
  %171 = fmul float %168, 2.500000e-01
  %172 = fmul float %169, 2.500000e-01
  %173 = fmul float %170, 2.500000e-01
  %174 = fadd float %138, %171
  %175 = fadd float %139, %172
  %176 = fadd float %140, %173
  %177 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %178 = shl i32 %19, 2
  %179 = add i32 %177, %178
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 536870912
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float -1.000000e+00, float 1.000000e+00
  %185 = lshr i32 %181, 30
  %186 = and i32 %181, 1023
  %187 = uitofp i32 %186 to float
  %188 = lshr i32 %181, 10
  %189 = and i32 %188, 1023
  %190 = uitofp i32 %189 to float
  %191 = lshr i32 %181, 20
  %192 = and i32 %191, 511
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %187, 0x3F56A64800000000
  %195 = fadd fast float %194, 0xBFE6A09E60000000
  %196 = fmul fast float %190, 0x3F56A64800000000
  %197 = fadd fast float %196, 0xBFE6A09E60000000
  %198 = fmul fast float %193, 0x3F66ABF460000000
  %199 = fadd fast float %198, 0xBFE6A09E60000000
  %200 = call float @dx.op.dot3.f32(i32 55, float %195, float %197, float %199, float %195, float %197, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %202 = fsub fast float 1.000000e+00, %201
  %203 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %204 = icmp eq i32 %185, 0
  br i1 %204, label %211, label %205, !dx.controlflow.hints !16

; <label>:205                                     ; preds = %15
  %206 = icmp eq i32 %185, 1
  br i1 %206, label %211, label %207, !dx.controlflow.hints !17

; <label>:207                                     ; preds = %205
  %208 = icmp eq i32 %185, 2
  %209 = select i1 %208, float %203, float %199
  %210 = select i1 %208, float %199, float %203
  br label %211

; <label>:211                                     ; preds = %207, %205, %15
  %212 = phi float [ %203, %15 ], [ %195, %205 ], [ %195, %207 ]
  %213 = phi float [ %195, %15 ], [ %203, %205 ], [ %197, %207 ]
  %214 = phi float [ %197, %15 ], [ %197, %205 ], [ %209, %207 ]
  %215 = phi float [ %199, %15 ], [ %199, %205 ], [ %210, %207 ]
  %216 = fmul fast float %213, %213
  %217 = fmul fast float %216, 2.000000e+00
  %218 = fmul fast float %214, %214
  %219 = fmul fast float %218, 2.000000e+00
  %220 = fmul fast float %213, %212
  %221 = fmul fast float %215, %214
  %222 = fmul fast float %214, %212
  %223 = fmul fast float %213, 2.000000e+00
  %224 = fmul fast float %223, %215
  %225 = shl i32 %21, 2
  %226 = add i32 %177, %225
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = lshr i32 %228, 30
  %230 = and i32 %228, 1023
  %231 = uitofp i32 %230 to float
  %232 = lshr i32 %228, 10
  %233 = and i32 %232, 1023
  %234 = uitofp i32 %233 to float
  %235 = lshr i32 %228, 20
  %236 = and i32 %235, 511
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %231, 0x3F56A64800000000
  %239 = fadd fast float %238, 0xBFE6A09E60000000
  %240 = fmul fast float %234, 0x3F56A64800000000
  %241 = fadd fast float %240, 0xBFE6A09E60000000
  %242 = fmul fast float %237, 0x3F66ABF460000000
  %243 = fadd fast float %242, 0xBFE6A09E60000000
  %244 = call float @dx.op.dot3.f32(i32 55, float %239, float %241, float %243, float %239, float %241, float %243)  ; Dot3(ax,ay,az,bx,by,bz)
  %245 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %246 = fsub fast float 1.000000e+00, %245
  %247 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %248 = icmp eq i32 %229, 0
  br i1 %248, label %255, label %249, !dx.controlflow.hints !16

; <label>:249                                     ; preds = %211
  %250 = icmp eq i32 %229, 1
  br i1 %250, label %255, label %251, !dx.controlflow.hints !17

; <label>:251                                     ; preds = %249
  %252 = icmp eq i32 %229, 2
  %253 = select i1 %252, float %247, float %243
  %254 = select i1 %252, float %243, float %247
  br label %255

; <label>:255                                     ; preds = %251, %249, %211
  %256 = phi float [ %247, %211 ], [ %239, %249 ], [ %239, %251 ]
  %257 = phi float [ %239, %211 ], [ %247, %249 ], [ %241, %251 ]
  %258 = phi float [ %241, %211 ], [ %241, %249 ], [ %253, %251 ]
  %259 = phi float [ %243, %211 ], [ %243, %249 ], [ %254, %251 ]
  %260 = fmul fast float %257, %257
  %261 = fmul fast float %260, 2.000000e+00
  %262 = fmul fast float %258, %258
  %263 = fmul fast float %262, 2.000000e+00
  %264 = fmul fast float %257, %256
  %265 = fmul fast float %259, %258
  %266 = fmul fast float %258, %256
  %267 = fmul fast float %257, -2.000000e+00
  %268 = fmul fast float %267, %259
  %269 = shl i32 %23, 2
  %270 = add i32 %177, %269
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 30
  %274 = and i32 %272, 1023
  %275 = uitofp i32 %274 to float
  %276 = lshr i32 %272, 10
  %277 = and i32 %276, 1023
  %278 = uitofp i32 %277 to float
  %279 = lshr i32 %272, 20
  %280 = and i32 %279, 511
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %275, 0x3F56A64800000000
  %283 = fadd fast float %282, 0xBFE6A09E60000000
  %284 = fmul fast float %278, 0x3F56A64800000000
  %285 = fadd fast float %284, 0xBFE6A09E60000000
  %286 = fmul fast float %281, 0x3F66ABF460000000
  %287 = fadd fast float %286, 0xBFE6A09E60000000
  %288 = call float @dx.op.dot3.f32(i32 55, float %283, float %285, float %287, float %283, float %285, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %290 = fsub fast float 1.000000e+00, %289
  %291 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %292 = icmp eq i32 %273, 0
  br i1 %292, label %299, label %293, !dx.controlflow.hints !16

; <label>:293                                     ; preds = %255
  %294 = icmp eq i32 %273, 1
  br i1 %294, label %299, label %295, !dx.controlflow.hints !17

; <label>:295                                     ; preds = %293
  %296 = icmp eq i32 %273, 2
  %297 = select i1 %296, float %291, float %287
  %298 = select i1 %296, float %287, float %291
  br label %299

; <label>:299                                     ; preds = %295, %293, %255
  %300 = phi float [ %291, %255 ], [ %283, %293 ], [ %283, %295 ]
  %301 = phi float [ %283, %255 ], [ %291, %293 ], [ %285, %295 ]
  %302 = phi float [ %285, %255 ], [ %285, %293 ], [ %297, %295 ]
  %303 = phi float [ %287, %255 ], [ %287, %293 ], [ %298, %295 ]
  %304 = fmul fast float %301, %301
  %305 = fmul fast float %304, -2.000000e+00
  %306 = fmul fast float %302, %302
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fmul fast float %301, %300
  %309 = fmul fast float %303, %302
  %310 = fmul fast float %302, %300
  %311 = fmul fast float %301, -2.000000e+00
  %312 = fmul fast float %311, %303
  %313 = shl i32 %25, 2
  %314 = add i32 %177, %313
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = lshr i32 %316, 30
  %318 = and i32 %316, 1023
  %319 = uitofp i32 %318 to float
  %320 = lshr i32 %316, 10
  %321 = and i32 %320, 1023
  %322 = uitofp i32 %321 to float
  %323 = lshr i32 %316, 20
  %324 = and i32 %323, 511
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %319, 0x3F56A64800000000
  %327 = fadd fast float %326, 0xBFE6A09E60000000
  %328 = fmul fast float %322, 0x3F56A64800000000
  %329 = fadd fast float %328, 0xBFE6A09E60000000
  %330 = fmul fast float %325, 0x3F66ABF460000000
  %331 = fadd fast float %330, 0xBFE6A09E60000000
  %332 = call float @dx.op.dot3.f32(i32 55, float %327, float %329, float %331, float %327, float %329, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = call float @dx.op.unary.f32(i32 7, float %332)  ; Saturate(value)
  %334 = fsub fast float 1.000000e+00, %333
  %335 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %336 = icmp eq i32 %317, 0
  br i1 %336, label %343, label %337, !dx.controlflow.hints !16

; <label>:337                                     ; preds = %299
  %338 = icmp eq i32 %317, 1
  br i1 %338, label %343, label %339, !dx.controlflow.hints !17

; <label>:339                                     ; preds = %337
  %340 = icmp eq i32 %317, 2
  %341 = select i1 %340, float %335, float %331
  %342 = select i1 %340, float %331, float %335
  br label %343

; <label>:343                                     ; preds = %339, %337, %299
  %344 = phi float [ %335, %299 ], [ %327, %337 ], [ %327, %339 ]
  %345 = phi float [ %327, %299 ], [ %335, %337 ], [ %329, %339 ]
  %346 = phi float [ %329, %299 ], [ %329, %337 ], [ %341, %339 ]
  %347 = phi float [ %331, %299 ], [ %331, %337 ], [ %342, %339 ]
  %348 = fmul fast float %345, %345
  %349 = fmul fast float %348, -2.000000e+00
  %350 = fmul fast float %346, %346
  %351 = fmul fast float %350, -2.000000e+00
  %352 = fmul fast float %345, %344
  %353 = fmul fast float %347, %346
  %354 = fmul fast float %346, %344
  %355 = fmul fast float %345, -2.000000e+00
  %356 = fmul fast float %355, %347
  %357 = fsub fast float 4.000000e+00, %217
  %358 = fsub fast float %357, %219
  %359 = fsub fast float %358, %261
  %360 = fsub fast float %359, %263
  %361 = fadd fast float %360, %305
  %362 = fsub fast float %361, %307
  %363 = fadd fast float %362, %349
  %364 = fadd fast float %363, %351
  %365 = fmul fast float %364, 2.500000e-01
  %366 = fadd fast float %221, %220
  %367 = fadd fast float %366, %264
  %368 = fadd fast float %367, %265
  %369 = fadd fast float %368, %308
  %370 = fadd fast float %369, %309
  %371 = fadd fast float %370, %352
  %372 = fadd fast float %371, %353
  %373 = fmul fast float %372, 5.000000e-01
  %374 = fadd fast float %266, %222
  %375 = fadd fast float %374, %310
  %376 = fadd fast float %375, %354
  %377 = fmul fast float %376, 2.000000e+00
  %378 = fsub fast float %268, %224
  %379 = fadd fast float %378, %312
  %380 = fadd fast float %379, %356
  %381 = fadd fast float %380, %377
  %382 = fmul fast float %381, 2.500000e-01
  %383 = extractvalue %dx.types.CBufRet.i32 %31, 2
  %384 = shl i32 %19, 4
  %385 = add i32 %383, %384
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = extractvalue %dx.types.ResRet.i32 %386, 1
  %389 = extractvalue %dx.types.ResRet.i32 %386, 2
  %390 = extractvalue %dx.types.ResRet.i32 %386, 3
  %391 = bitcast i32 %387 to float
  %392 = bitcast i32 %388 to float
  %393 = bitcast i32 %389 to float
  %394 = bitcast i32 %390 to float
  %395 = shl i32 %21, 4
  %396 = add i32 %383, %395
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = extractvalue %dx.types.ResRet.i32 %397, 1
  %400 = extractvalue %dx.types.ResRet.i32 %397, 2
  %401 = extractvalue %dx.types.ResRet.i32 %397, 3
  %402 = bitcast i32 %398 to float
  %403 = bitcast i32 %399 to float
  %404 = bitcast i32 %400 to float
  %405 = bitcast i32 %401 to float
  %406 = fadd fast float %402, %391
  %407 = fadd fast float %403, %392
  %408 = fadd fast float %404, %393
  %409 = fadd fast float %405, %394
  %410 = shl i32 %23, 4
  %411 = add i32 %383, %410
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = extractvalue %dx.types.ResRet.i32 %412, 1
  %415 = extractvalue %dx.types.ResRet.i32 %412, 2
  %416 = extractvalue %dx.types.ResRet.i32 %412, 3
  %417 = bitcast i32 %413 to float
  %418 = bitcast i32 %414 to float
  %419 = bitcast i32 %415 to float
  %420 = bitcast i32 %416 to float
  %421 = fadd fast float %406, %417
  %422 = fadd fast float %407, %418
  %423 = fadd fast float %408, %419
  %424 = fadd fast float %409, %420
  %425 = shl i32 %25, 4
  %426 = add i32 %383, %425
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = extractvalue %dx.types.ResRet.i32 %427, 1
  %430 = extractvalue %dx.types.ResRet.i32 %427, 2
  %431 = extractvalue %dx.types.ResRet.i32 %427, 3
  %432 = bitcast i32 %428 to float
  %433 = bitcast i32 %429 to float
  %434 = bitcast i32 %430 to float
  %435 = bitcast i32 %431 to float
  %436 = fadd fast float %421, %432
  %437 = fmul fast float %436, 2.500000e-01
  %438 = fadd fast float %422, %433
  %439 = fmul fast float %438, 2.500000e-01
  %440 = fadd fast float %423, %434
  %441 = fmul fast float %440, 2.500000e-01
  %442 = fadd fast float %424, %435
  %443 = fmul fast float %442, 2.500000e-01
  br label %596

; <label>:444                                     ; preds = %8
  %445 = call i32 @dx.op.binary.i32(i32 40, i32 %12, i32 64)  ; UMin(a,b)
  %446 = uitofp i32 %445 to float
  %447 = fdiv float 1.000000e+00, %446
  %448 = icmp eq i32 %445, 0
  br i1 %448, label %596, label %449

; <label>:449                                     ; preds = %444
  %450 = shl i32 %11, 2
  br label %451

; <label>:451                                     ; preds = %546, %449
  %452 = phi float [ %509, %546 ], [ 0.000000e+00, %449 ]
  %453 = phi float [ %510, %546 ], [ 0.000000e+00, %449 ]
  %454 = phi float [ %511, %546 ], [ 0.000000e+00, %449 ]
  %455 = phi float [ %569, %546 ], [ 0.000000e+00, %449 ]
  %456 = phi float [ %570, %546 ], [ 0.000000e+00, %449 ]
  %457 = phi float [ %571, %546 ], [ 0.000000e+00, %449 ]
  %458 = phi float [ %588, %546 ], [ 0.000000e+00, %449 ]
  %459 = phi float [ %589, %546 ], [ 0.000000e+00, %449 ]
  %460 = phi float [ %590, %546 ], [ 0.000000e+00, %449 ]
  %461 = phi float [ %591, %546 ], [ 0.000000e+00, %449 ]
  %462 = phi i32 [ %593, %546 ], [ %450, %449 ]
  %463 = phi i32 [ %592, %546 ], [ 0, %449 ]
  %464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.i32 %464, 0
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %467, %465
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 0
  %471 = extractvalue %dx.types.CBufRet.f32 %469, 1
  %472 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %473 = extractvalue %dx.types.CBufRet.f32 %469, 3
  %474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.i32 %474, 0
  %476 = shl i32 %468, 3
  %477 = add i32 %475, %476
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = extractvalue %dx.types.ResRet.i32 %478, 1
  %481 = and i32 %479, 2097151
  %482 = uitofp i32 %481 to float
  %483 = lshr i32 %479, 21
  %484 = shl i32 %480, 11
  %485 = and i32 %484, 2095104
  %486 = or i32 %485, %483
  %487 = uitofp i32 %486 to float
  %488 = lshr i32 %480, 10
  %489 = and i32 %488, 2097151
  %490 = uitofp i32 %489 to float
  %491 = fdiv float %482, 2.097151e+06
  %492 = fdiv float %487, 2.097151e+06
  %493 = fdiv float %490, 2.097151e+06
  %494 = fmul float %491, 2.000000e+00
  %495 = fmul float %492, 2.000000e+00
  %496 = fmul float %493, 2.000000e+00
  %497 = fadd float %494, -1.000000e+00
  %498 = fadd float %495, -1.000000e+00
  %499 = fadd float %496, -1.000000e+00
  %500 = fmul float %473, %497
  %501 = fmul float %473, %498
  %502 = fmul float %473, %499
  %503 = fadd float %470, %500
  %504 = fadd float %471, %501
  %505 = fadd float %472, %502
  %506 = fmul float %447, %503
  %507 = fmul float %447, %504
  %508 = fmul float %447, %505
  %509 = fadd float %452, %506
  %510 = fadd float %453, %507
  %511 = fadd float %454, %508
  %512 = extractvalue %dx.types.CBufRet.i32 %474, 1
  %513 = shl i32 %468, 2
  %514 = add i32 %512, %513
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 536870912
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float -1.000000e+00, float 1.000000e+00
  %520 = lshr i32 %516, 30
  %521 = and i32 %516, 1023
  %522 = uitofp i32 %521 to float
  %523 = lshr i32 %516, 10
  %524 = and i32 %523, 1023
  %525 = uitofp i32 %524 to float
  %526 = lshr i32 %516, 20
  %527 = and i32 %526, 511
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %522, 0x3F56A64800000000
  %530 = fadd fast float %529, 0xBFE6A09E60000000
  %531 = fmul fast float %525, 0x3F56A64800000000
  %532 = fadd fast float %531, 0xBFE6A09E60000000
  %533 = fmul fast float %528, 0x3F66ABF460000000
  %534 = fadd fast float %533, 0xBFE6A09E60000000
  %535 = call float @dx.op.dot3.f32(i32 55, float %530, float %532, float %534, float %530, float %532, float %534)  ; Dot3(ax,ay,az,bx,by,bz)
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  %537 = fsub fast float 1.000000e+00, %536
  %538 = call float @dx.op.unary.f32(i32 24, float %537)  ; Sqrt(value)
  %539 = icmp eq i32 %520, 0
  br i1 %539, label %546, label %540, !dx.controlflow.hints !16

; <label>:540                                     ; preds = %451
  %541 = icmp eq i32 %520, 1
  br i1 %541, label %546, label %542, !dx.controlflow.hints !17

; <label>:542                                     ; preds = %540
  %543 = icmp eq i32 %520, 2
  %544 = select i1 %543, float %538, float %534
  %545 = select i1 %543, float %534, float %538
  br label %546

; <label>:546                                     ; preds = %542, %540, %451
  %547 = phi float [ %538, %451 ], [ %530, %540 ], [ %530, %542 ]
  %548 = phi float [ %530, %451 ], [ %538, %540 ], [ %532, %542 ]
  %549 = phi float [ %532, %451 ], [ %532, %540 ], [ %544, %542 ]
  %550 = phi float [ %534, %451 ], [ %534, %540 ], [ %545, %542 ]
  %551 = fmul fast float %548, %548
  %552 = fmul fast float %551, 2.000000e+00
  %553 = fsub fast float 1.000000e+00, %552
  %554 = fmul fast float %549, %549
  %555 = fmul fast float %554, 2.000000e+00
  %556 = fsub fast float %553, %555
  %557 = fmul fast float %548, %547
  %558 = fmul fast float %550, %549
  %559 = fadd fast float %558, %557
  %560 = fmul fast float %547, 2.000000e+00
  %561 = fmul fast float %560, %549
  %562 = fmul fast float %548, 2.000000e+00
  %563 = fmul fast float %562, %550
  %564 = fsub fast float %561, %563
  %565 = fmul fast float %556, %447
  %566 = fmul fast float %447, 2.000000e+00
  %567 = fmul fast float %566, %559
  %568 = fmul fast float %564, %447
  %569 = fadd fast float %565, %455
  %570 = fadd fast float %567, %456
  %571 = fadd fast float %568, %457
  %572 = extractvalue %dx.types.CBufRet.i32 %474, 2
  %573 = shl i32 %468, 4
  %574 = add i32 %572, %573
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = extractvalue %dx.types.ResRet.i32 %575, 1
  %578 = extractvalue %dx.types.ResRet.i32 %575, 2
  %579 = extractvalue %dx.types.ResRet.i32 %575, 3
  %580 = bitcast i32 %576 to float
  %581 = bitcast i32 %577 to float
  %582 = bitcast i32 %578 to float
  %583 = bitcast i32 %579 to float
  %584 = fmul fast float %580, %447
  %585 = fmul fast float %581, %447
  %586 = fmul fast float %582, %447
  %587 = fmul fast float %583, %447
  %588 = fadd fast float %584, %458
  %589 = fadd fast float %585, %459
  %590 = fadd fast float %586, %460
  %591 = fadd fast float %587, %461
  %592 = add nuw i32 %463, 1
  %593 = add i32 %462, 4
  %594 = icmp eq i32 %592, %445
  br i1 %594, label %595, label %451

; <label>:595                                     ; preds = %546
  br label %596

; <label>:596                                     ; preds = %595, %444, %343
  %597 = phi float [ %174, %343 ], [ 0.000000e+00, %444 ], [ %509, %595 ]
  %598 = phi float [ %175, %343 ], [ 0.000000e+00, %444 ], [ %510, %595 ]
  %599 = phi float [ %176, %343 ], [ 0.000000e+00, %444 ], [ %511, %595 ]
  %600 = phi float [ %184, %343 ], [ 1.000000e+00, %444 ], [ %519, %595 ]
  %601 = phi float [ %365, %343 ], [ 0.000000e+00, %444 ], [ %569, %595 ]
  %602 = phi float [ %373, %343 ], [ 0.000000e+00, %444 ], [ %570, %595 ]
  %603 = phi float [ %382, %343 ], [ 0.000000e+00, %444 ], [ %571, %595 ]
  %604 = phi float [ %437, %343 ], [ 0.000000e+00, %444 ], [ %588, %595 ]
  %605 = phi float [ %439, %343 ], [ 0.000000e+00, %444 ], [ %589, %595 ]
  %606 = phi float [ %441, %343 ], [ 0.000000e+00, %444 ], [ %590, %595 ]
  %607 = phi float [ %443, %343 ], [ 0.000000e+00, %444 ], [ %591, %595 ]
  %608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.i32 %608, 1
  %610 = add i32 %609, %4
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %615 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %616 = fsub float %597, %612
  %617 = fsub float %598, %613
  %618 = fsub float %599, %614
  %619 = fdiv float 1.000000e+00, %615
  %620 = fmul float %619, %616
  %621 = fmul float %619, %617
  %622 = fmul float %619, %618
  %623 = fmul float %620, 5.000000e-01
  %624 = fmul float %621, 5.000000e-01
  %625 = fmul float %622, 5.000000e-01
  %626 = fadd float %623, 5.000000e-01
  %627 = fadd float %624, 5.000000e-01
  %628 = fadd float %625, 5.000000e-01
  %629 = call float @dx.op.unary.f32(i32 7, float %626), !dx.precise !18  ; Saturate(value)
  %630 = call float @dx.op.unary.f32(i32 7, float %627), !dx.precise !18  ; Saturate(value)
  %631 = call float @dx.op.unary.f32(i32 7, float %628), !dx.precise !18  ; Saturate(value)
  %632 = fmul float %629, 2.097151e+06
  %633 = fmul float %630, 2.097151e+06
  %634 = fmul float %631, 2.097151e+06
  %635 = fptoui float %632 to i32
  %636 = fptoui float %633 to i32
  %637 = fptoui float %634 to i32
  %638 = shl i32 %636, 21
  %639 = or i32 %638, %635
  %640 = lshr i32 %636, 11
  %641 = shl i32 %637, 10
  %642 = or i32 %641, %640
  %643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.i32 %643, 0
  %645 = shl i32 %610, 3
  %646 = add i32 %644, %645
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %646, i32 undef, i32 %639, i32 %642, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %647 = call float @dx.op.dot3.f32(i32 55, float %601, float %602, float %603, float %601, float %602, float %603)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = call float @dx.op.unary.f32(i32 25, float %647)  ; Rsqrt(value)
  %649 = fmul fast float %648, %601
  %650 = fmul fast float %648, %602
  %651 = fmul fast float %648, %603
  %652 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %653 = fcmp fast olt float %652, 0x3FECCCCCC0000000
  %654 = select i1 %653, float 0.000000e+00, float 1.000000e+00
  %655 = select i1 %653, float 1.000000e+00, float 0.000000e+00
  %656 = fmul fast float %655, %650
  %657 = fmul fast float %654, %651
  %658 = fmul fast float %655, %649
  %659 = fsub fast float %657, %658
  %660 = fmul fast float %650, %654
  %661 = fsub fast float -0.000000e+00, %660
  %662 = call float @dx.op.dot3.f32(i32 55, float %656, float %659, float %661, float %656, float %659, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call float @dx.op.unary.f32(i32 25, float %662)  ; Rsqrt(value)
  %664 = fmul fast float %656, %663
  %665 = fmul fast float %659, %663
  %666 = fmul fast float %663, %661
  %667 = fmul fast float %665, %651
  %668 = fmul fast float %666, %650
  %669 = fsub fast float %667, %668
  %670 = fmul fast float %666, %649
  %671 = fmul fast float %664, %651
  %672 = fsub fast float %670, %671
  %673 = fmul fast float %664, %650
  %674 = fmul fast float %665, %649
  %675 = fsub fast float %673, %674
  %676 = fadd fast float %666, %649
  %677 = fadd fast float %676, %672
  %678 = fcmp fast ogt float %677, 0.000000e+00
  br i1 %678, label %679, label %690, !dx.controlflow.hints !19

; <label>:679                                     ; preds = %596
  %680 = fadd fast float %677, 1.000000e+00
  %681 = fsub fast float %675, %665
  %682 = fsub fast float %664, %651
  %683 = fsub fast float %650, %669
  %684 = call float @dx.op.unary.f32(i32 25, float %680)  ; Rsqrt(value)
  %685 = fmul fast float %684, 5.000000e-01
  %686 = fmul fast float %685, %681
  %687 = fmul fast float %685, %682
  %688 = fmul fast float %685, %683
  %689 = fmul fast float %685, %680
  br label %733

; <label>:690                                     ; preds = %596
  %691 = fcmp fast ogt float %649, %672
  %692 = fcmp fast ogt float %649, %666
  %693 = and i1 %692, %691
  br i1 %693, label %694, label %707, !dx.controlflow.hints !20

; <label>:694                                     ; preds = %690
  %695 = fadd fast float %649, 1.000000e+00
  %696 = fsub fast float %695, %666
  %697 = fsub fast float %696, %672
  %698 = fsub fast float %675, %665
  %699 = fadd fast float %669, %650
  %700 = fadd fast float %664, %651
  %701 = call float @dx.op.unary.f32(i32 25, float %697)  ; Rsqrt(value)
  %702 = fmul fast float %701, 5.000000e-01
  %703 = fmul fast float %702, %697
  %704 = fmul fast float %702, %699
  %705 = fmul fast float %702, %700
  %706 = fmul fast float %702, %698
  br label %733

; <label>:707                                     ; preds = %690
  %708 = fcmp fast ogt float %672, %666
  %709 = fsub fast float 1.000000e+00, %649
  %710 = fadd fast float %675, %665
  br i1 %708, label %711, label %722, !dx.controlflow.hints !21

; <label>:711                                     ; preds = %707
  %712 = fsub fast float %709, %666
  %713 = fadd fast float %712, %672
  %714 = fsub fast float %664, %651
  %715 = fadd fast float %669, %650
  %716 = call float @dx.op.unary.f32(i32 25, float %713)  ; Rsqrt(value)
  %717 = fmul fast float %716, 5.000000e-01
  %718 = fmul fast float %717, %715
  %719 = fmul fast float %717, %713
  %720 = fmul fast float %717, %710
  %721 = fmul fast float %717, %714
  br label %733

; <label>:722                                     ; preds = %707
  %723 = fadd fast float %709, %666
  %724 = fsub fast float %723, %672
  %725 = fsub fast float %650, %669
  %726 = fadd fast float %664, %651
  %727 = call float @dx.op.unary.f32(i32 25, float %724)  ; Rsqrt(value)
  %728 = fmul fast float %727, 5.000000e-01
  %729 = fmul fast float %728, %726
  %730 = fmul fast float %728, %710
  %731 = fmul fast float %728, %724
  %732 = fmul fast float %728, %725
  br label %733

; <label>:733                                     ; preds = %722, %711, %694, %679
  %734 = phi float [ %686, %679 ], [ %703, %694 ], [ %718, %711 ], [ %729, %722 ]
  %735 = phi float [ %687, %679 ], [ %704, %694 ], [ %719, %711 ], [ %730, %722 ]
  %736 = phi float [ %688, %679 ], [ %705, %694 ], [ %720, %711 ], [ %731, %722 ]
  %737 = phi float [ %689, %679 ], [ %706, %694 ], [ %721, %711 ], [ %732, %722 ]
  %738 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %739 = call float @dx.op.unary.f32(i32 6, float %734)  ; FAbs(value)
  %740 = fcmp fast oge float %738, %739
  %741 = call float @dx.op.unary.f32(i32 6, float %735)  ; FAbs(value)
  %742 = fcmp fast oge float %738, %741
  %743 = and i1 %740, %742
  br i1 %743, label %744, label %747, !dx.controlflow.hints !22

; <label>:744                                     ; preds = %733
  %745 = fcmp fast olt float %736, 0.000000e+00
  %746 = select i1 %745, float 5.000000e+00, float 4.000000e+00
  br label %755

; <label>:747                                     ; preds = %733
  %748 = fcmp fast ult float %741, %739
  br i1 %748, label %752, label %749, !dx.controlflow.hints !23

; <label>:749                                     ; preds = %747
  %750 = fcmp fast olt float %735, 0.000000e+00
  %751 = select i1 %750, float 3.000000e+00, float 2.000000e+00
  br label %755

; <label>:752                                     ; preds = %747
  %753 = fcmp fast olt float %734, 0.000000e+00
  %754 = select i1 %753, float 1.000000e+00, float 0.000000e+00
  br label %755

; <label>:755                                     ; preds = %752, %749, %744
  %756 = phi float [ %746, %744 ], [ %751, %749 ], [ %754, %752 ]
  %757 = fmul fast float %756, 5.000000e-01
  %758 = fptoui float %757 to i32
  %759 = call float @dx.op.unary.f32(i32 6, float %737)  ; FAbs(value)
  %760 = call float @dx.op.binary.f32(i32 35, float %741, float %738)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 35, float %739, float %760)  ; FMax(a,b)
  %762 = fcmp fast ogt float %759, %761
  %763 = select i1 %762, i32 3, i32 %758
  %764 = icmp eq i32 %763, 0
  %765 = select i1 %764, float %735, float %734
  %766 = select i1 %764, float %736, float %735
  %767 = select i1 %764, float %737, float %736
  %768 = select i1 %764, float %734, float %737
  %769 = icmp eq i32 %763, 1
  %770 = select i1 %769, float %767, float %766
  %771 = select i1 %769, float %768, float %767
  %772 = select i1 %769, float %766, float %768
  %773 = icmp eq i32 %763, 2
  %774 = select i1 %773, float %772, float %771
  %775 = select i1 %773, float %771, float %772
  %776 = fcmp fast ogt float %775, 0.000000e+00
  %777 = select i1 %776, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %778 = fmul fast float %777, %765
  %779 = fmul fast float %777, %770
  %780 = fmul fast float %777, %774
  %781 = fadd fast float %778, 1.000000e+00
  %782 = fmul fast float %781, 5.000000e-01
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = fmul fast float %783, 1.023000e+03
  %785 = fptoui float %784 to i32
  %786 = fadd fast float %779, 1.000000e+00
  %787 = fmul fast float %786, 5.000000e-01
  %788 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %789 = fmul fast float %788, 1.023000e+03
  %790 = fptoui float %789 to i32
  %791 = fadd fast float %780, 1.000000e+00
  %792 = fmul fast float %791, 5.000000e-01
  %793 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %794 = fmul fast float %793, 5.110000e+02
  %795 = fptoui float %794 to i32
  %796 = shl i32 %790, 10
  %797 = shl i32 %795, 20
  %798 = fcmp fast ogt float %600, 0.000000e+00
  %799 = select i1 %798, i32 0, i32 536870912
  %800 = shl i32 %763, 30
  %801 = or i32 %785, %799
  %802 = or i32 %801, %800
  %803 = or i32 %802, %796
  %804 = or i32 %803, %797
  %805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.i32 %805, 1
  %807 = shl i32 %610, 2
  %808 = add i32 %806, %807
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %808, i32 undef, i32 %804, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %809 = bitcast float %604 to i32
  %810 = bitcast float %605 to i32
  %811 = bitcast float %606 to i32
  %812 = bitcast float %607 to i32
  %813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.i32 %813, 2
  %815 = shl i32 %610, 4
  %816 = add i32 %814, %815
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %816, i32 undef, i32 %809, i32 %810, i32 %811, i32 %812, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %817

; <label>:817                                     ; preds = %755, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %SubdivConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!11 = !{void ()* @cs_face_point_mayhem, !"cs_face_point_mayhem", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}

