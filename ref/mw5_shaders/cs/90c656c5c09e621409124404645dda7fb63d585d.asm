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
; shader hash: 3e35ae701ce9d58a0950ad2ab939193c
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

define void @cs_face_point() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 0
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %720, !dx.controlflow.hints !14

; <label>:8                                       ; preds = %0
  %9 = shl i32 %4, 3
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %9, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = extractvalue %dx.types.ResRet.i32 %10, 1
  %13 = extractvalue %dx.types.CBufRet.i32 %5, 1
  %14 = icmp ult i32 %4, %13
  br i1 %14, label %15, label %383, !dx.controlflow.hints !15

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
  br label %511

; <label>:383                                     ; preds = %8
  %384 = call i32 @dx.op.binary.i32(i32 40, i32 %12, i32 64)  ; UMin(a,b)
  %385 = uitofp i32 %384 to float
  %386 = fdiv float 1.000000e+00, %385
  %387 = icmp eq i32 %384, 0
  br i1 %387, label %511, label %388

; <label>:388                                     ; preds = %383
  %389 = shl i32 %11, 2
  br label %390

; <label>:390                                     ; preds = %481, %388
  %391 = phi float [ %444, %481 ], [ 0.000000e+00, %388 ]
  %392 = phi float [ %445, %481 ], [ 0.000000e+00, %388 ]
  %393 = phi float [ %446, %481 ], [ 0.000000e+00, %388 ]
  %394 = phi float [ %504, %481 ], [ 0.000000e+00, %388 ]
  %395 = phi float [ %505, %481 ], [ 0.000000e+00, %388 ]
  %396 = phi float [ %506, %481 ], [ 0.000000e+00, %388 ]
  %397 = phi i32 [ %508, %481 ], [ %389, %388 ]
  %398 = phi i32 [ %507, %481 ], [ 0, %388 ]
  %399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.i32 %399, 0
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add i32 %402, %400
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %408 = extractvalue %dx.types.CBufRet.f32 %404, 3
  %409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.i32 %409, 0
  %411 = shl i32 %403, 3
  %412 = add i32 %410, %411
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = extractvalue %dx.types.ResRet.i32 %413, 1
  %416 = and i32 %414, 2097151
  %417 = uitofp i32 %416 to float
  %418 = lshr i32 %414, 21
  %419 = shl i32 %415, 11
  %420 = and i32 %419, 2095104
  %421 = or i32 %420, %418
  %422 = uitofp i32 %421 to float
  %423 = lshr i32 %415, 10
  %424 = and i32 %423, 2097151
  %425 = uitofp i32 %424 to float
  %426 = fdiv float %417, 2.097151e+06
  %427 = fdiv float %422, 2.097151e+06
  %428 = fdiv float %425, 2.097151e+06
  %429 = fmul float %426, 2.000000e+00
  %430 = fmul float %427, 2.000000e+00
  %431 = fmul float %428, 2.000000e+00
  %432 = fadd float %429, -1.000000e+00
  %433 = fadd float %430, -1.000000e+00
  %434 = fadd float %431, -1.000000e+00
  %435 = fmul float %408, %432
  %436 = fmul float %408, %433
  %437 = fmul float %408, %434
  %438 = fadd float %405, %435
  %439 = fadd float %406, %436
  %440 = fadd float %407, %437
  %441 = fmul float %386, %438
  %442 = fmul float %386, %439
  %443 = fmul float %386, %440
  %444 = fadd float %391, %441
  %445 = fadd float %392, %442
  %446 = fadd float %393, %443
  %447 = extractvalue %dx.types.CBufRet.i32 %409, 1
  %448 = shl i32 %403, 2
  %449 = add i32 %447, %448
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 536870912
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float -1.000000e+00, float 1.000000e+00
  %455 = lshr i32 %451, 30
  %456 = and i32 %451, 1023
  %457 = uitofp i32 %456 to float
  %458 = lshr i32 %451, 10
  %459 = and i32 %458, 1023
  %460 = uitofp i32 %459 to float
  %461 = lshr i32 %451, 20
  %462 = and i32 %461, 511
  %463 = uitofp i32 %462 to float
  %464 = fmul fast float %457, 0x3F56A64800000000
  %465 = fadd fast float %464, 0xBFE6A09E60000000
  %466 = fmul fast float %460, 0x3F56A64800000000
  %467 = fadd fast float %466, 0xBFE6A09E60000000
  %468 = fmul fast float %463, 0x3F66ABF460000000
  %469 = fadd fast float %468, 0xBFE6A09E60000000
  %470 = call float @dx.op.dot3.f32(i32 55, float %465, float %467, float %469, float %465, float %467, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fsub fast float 1.000000e+00, %471
  %473 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %474 = icmp eq i32 %455, 0
  br i1 %474, label %481, label %475, !dx.controlflow.hints !16

; <label>:475                                     ; preds = %390
  %476 = icmp eq i32 %455, 1
  br i1 %476, label %481, label %477, !dx.controlflow.hints !17

; <label>:477                                     ; preds = %475
  %478 = icmp eq i32 %455, 2
  %479 = select i1 %478, float %473, float %469
  %480 = select i1 %478, float %469, float %473
  br label %481

; <label>:481                                     ; preds = %477, %475, %390
  %482 = phi float [ %473, %390 ], [ %465, %475 ], [ %465, %477 ]
  %483 = phi float [ %465, %390 ], [ %473, %475 ], [ %467, %477 ]
  %484 = phi float [ %467, %390 ], [ %467, %475 ], [ %479, %477 ]
  %485 = phi float [ %469, %390 ], [ %469, %475 ], [ %480, %477 ]
  %486 = fmul fast float %483, %483
  %487 = fmul fast float %486, 2.000000e+00
  %488 = fsub fast float 1.000000e+00, %487
  %489 = fmul fast float %484, %484
  %490 = fmul fast float %489, 2.000000e+00
  %491 = fsub fast float %488, %490
  %492 = fmul fast float %483, %482
  %493 = fmul fast float %485, %484
  %494 = fadd fast float %493, %492
  %495 = fmul fast float %482, 2.000000e+00
  %496 = fmul fast float %495, %484
  %497 = fmul fast float %483, 2.000000e+00
  %498 = fmul fast float %497, %485
  %499 = fsub fast float %496, %498
  %500 = fmul fast float %491, %386
  %501 = fmul fast float %386, 2.000000e+00
  %502 = fmul fast float %501, %494
  %503 = fmul fast float %499, %386
  %504 = fadd fast float %500, %394
  %505 = fadd fast float %502, %395
  %506 = fadd fast float %503, %396
  %507 = add nuw i32 %398, 1
  %508 = add i32 %397, 4
  %509 = icmp eq i32 %507, %384
  br i1 %509, label %510, label %390

; <label>:510                                     ; preds = %481
  br label %511

; <label>:511                                     ; preds = %510, %383, %343
  %512 = phi float [ %174, %343 ], [ 0.000000e+00, %383 ], [ %444, %510 ]
  %513 = phi float [ %175, %343 ], [ 0.000000e+00, %383 ], [ %445, %510 ]
  %514 = phi float [ %176, %343 ], [ 0.000000e+00, %383 ], [ %446, %510 ]
  %515 = phi float [ %184, %343 ], [ 1.000000e+00, %383 ], [ %454, %510 ]
  %516 = phi float [ %365, %343 ], [ 0.000000e+00, %383 ], [ %504, %510 ]
  %517 = phi float [ %373, %343 ], [ 0.000000e+00, %383 ], [ %505, %510 ]
  %518 = phi float [ %382, %343 ], [ 0.000000e+00, %383 ], [ %506, %510 ]
  %519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.i32 %519, 1
  %521 = add i32 %520, %4
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %526 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %527 = fsub float %512, %523
  %528 = fsub float %513, %524
  %529 = fsub float %514, %525
  %530 = fdiv float 1.000000e+00, %526
  %531 = fmul float %530, %527
  %532 = fmul float %530, %528
  %533 = fmul float %530, %529
  %534 = fmul float %531, 5.000000e-01
  %535 = fmul float %532, 5.000000e-01
  %536 = fmul float %533, 5.000000e-01
  %537 = fadd float %534, 5.000000e-01
  %538 = fadd float %535, 5.000000e-01
  %539 = fadd float %536, 5.000000e-01
  %540 = call float @dx.op.unary.f32(i32 7, float %537), !dx.precise !18  ; Saturate(value)
  %541 = call float @dx.op.unary.f32(i32 7, float %538), !dx.precise !18  ; Saturate(value)
  %542 = call float @dx.op.unary.f32(i32 7, float %539), !dx.precise !18  ; Saturate(value)
  %543 = fmul float %540, 2.097151e+06
  %544 = fmul float %541, 2.097151e+06
  %545 = fmul float %542, 2.097151e+06
  %546 = fptoui float %543 to i32
  %547 = fptoui float %544 to i32
  %548 = fptoui float %545 to i32
  %549 = shl i32 %547, 21
  %550 = or i32 %549, %546
  %551 = lshr i32 %547, 11
  %552 = shl i32 %548, 10
  %553 = or i32 %552, %551
  %554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.i32 %554, 0
  %556 = shl i32 %521, 3
  %557 = add i32 %555, %556
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %557, i32 undef, i32 %550, i32 %553, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %558 = call float @dx.op.dot3.f32(i32 55, float %516, float %517, float %518, float %516, float %517, float %518)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.unary.f32(i32 25, float %558)  ; Rsqrt(value)
  %560 = fmul fast float %559, %516
  %561 = fmul fast float %559, %517
  %562 = fmul fast float %559, %518
  %563 = call float @dx.op.unary.f32(i32 6, float %562)  ; FAbs(value)
  %564 = fcmp fast olt float %563, 0x3FECCCCCC0000000
  %565 = select i1 %564, float 0.000000e+00, float 1.000000e+00
  %566 = select i1 %564, float 1.000000e+00, float 0.000000e+00
  %567 = fmul fast float %566, %561
  %568 = fmul fast float %565, %562
  %569 = fmul fast float %566, %560
  %570 = fsub fast float %568, %569
  %571 = fmul fast float %561, %565
  %572 = fsub fast float -0.000000e+00, %571
  %573 = call float @dx.op.dot3.f32(i32 55, float %567, float %570, float %572, float %567, float %570, float %572)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call float @dx.op.unary.f32(i32 25, float %573)  ; Rsqrt(value)
  %575 = fmul fast float %567, %574
  %576 = fmul fast float %570, %574
  %577 = fmul fast float %574, %572
  %578 = fmul fast float %576, %562
  %579 = fmul fast float %577, %561
  %580 = fsub fast float %578, %579
  %581 = fmul fast float %577, %560
  %582 = fmul fast float %575, %562
  %583 = fsub fast float %581, %582
  %584 = fmul fast float %575, %561
  %585 = fmul fast float %576, %560
  %586 = fsub fast float %584, %585
  %587 = fadd fast float %577, %560
  %588 = fadd fast float %587, %583
  %589 = fcmp fast ogt float %588, 0.000000e+00
  br i1 %589, label %590, label %601, !dx.controlflow.hints !19

; <label>:590                                     ; preds = %511
  %591 = fadd fast float %588, 1.000000e+00
  %592 = fsub fast float %586, %576
  %593 = fsub fast float %575, %562
  %594 = fsub fast float %561, %580
  %595 = call float @dx.op.unary.f32(i32 25, float %591)  ; Rsqrt(value)
  %596 = fmul fast float %595, 5.000000e-01
  %597 = fmul fast float %596, %592
  %598 = fmul fast float %596, %593
  %599 = fmul fast float %596, %594
  %600 = fmul fast float %596, %591
  br label %644

; <label>:601                                     ; preds = %511
  %602 = fcmp fast ogt float %560, %583
  %603 = fcmp fast ogt float %560, %577
  %604 = and i1 %603, %602
  br i1 %604, label %605, label %618, !dx.controlflow.hints !20

; <label>:605                                     ; preds = %601
  %606 = fadd fast float %560, 1.000000e+00
  %607 = fsub fast float %606, %577
  %608 = fsub fast float %607, %583
  %609 = fsub fast float %586, %576
  %610 = fadd fast float %580, %561
  %611 = fadd fast float %575, %562
  %612 = call float @dx.op.unary.f32(i32 25, float %608)  ; Rsqrt(value)
  %613 = fmul fast float %612, 5.000000e-01
  %614 = fmul fast float %613, %608
  %615 = fmul fast float %613, %610
  %616 = fmul fast float %613, %611
  %617 = fmul fast float %613, %609
  br label %644

; <label>:618                                     ; preds = %601
  %619 = fcmp fast ogt float %583, %577
  %620 = fsub fast float 1.000000e+00, %560
  %621 = fadd fast float %586, %576
  br i1 %619, label %622, label %633, !dx.controlflow.hints !21

; <label>:622                                     ; preds = %618
  %623 = fsub fast float %620, %577
  %624 = fadd fast float %623, %583
  %625 = fsub fast float %575, %562
  %626 = fadd fast float %580, %561
  %627 = call float @dx.op.unary.f32(i32 25, float %624)  ; Rsqrt(value)
  %628 = fmul fast float %627, 5.000000e-01
  %629 = fmul fast float %628, %626
  %630 = fmul fast float %628, %624
  %631 = fmul fast float %628, %621
  %632 = fmul fast float %628, %625
  br label %644

; <label>:633                                     ; preds = %618
  %634 = fadd fast float %620, %577
  %635 = fsub fast float %634, %583
  %636 = fsub fast float %561, %580
  %637 = fadd fast float %575, %562
  %638 = call float @dx.op.unary.f32(i32 25, float %635)  ; Rsqrt(value)
  %639 = fmul fast float %638, 5.000000e-01
  %640 = fmul fast float %639, %637
  %641 = fmul fast float %639, %621
  %642 = fmul fast float %639, %635
  %643 = fmul fast float %639, %636
  br label %644

; <label>:644                                     ; preds = %633, %622, %605, %590
  %645 = phi float [ %597, %590 ], [ %614, %605 ], [ %629, %622 ], [ %640, %633 ]
  %646 = phi float [ %598, %590 ], [ %615, %605 ], [ %630, %622 ], [ %641, %633 ]
  %647 = phi float [ %599, %590 ], [ %616, %605 ], [ %631, %622 ], [ %642, %633 ]
  %648 = phi float [ %600, %590 ], [ %617, %605 ], [ %632, %622 ], [ %643, %633 ]
  %649 = call float @dx.op.unary.f32(i32 6, float %647)  ; FAbs(value)
  %650 = call float @dx.op.unary.f32(i32 6, float %645)  ; FAbs(value)
  %651 = fcmp fast oge float %649, %650
  %652 = call float @dx.op.unary.f32(i32 6, float %646)  ; FAbs(value)
  %653 = fcmp fast oge float %649, %652
  %654 = and i1 %651, %653
  br i1 %654, label %655, label %658, !dx.controlflow.hints !22

; <label>:655                                     ; preds = %644
  %656 = fcmp fast olt float %647, 0.000000e+00
  %657 = select i1 %656, float 5.000000e+00, float 4.000000e+00
  br label %666

; <label>:658                                     ; preds = %644
  %659 = fcmp fast ult float %652, %650
  br i1 %659, label %663, label %660, !dx.controlflow.hints !23

; <label>:660                                     ; preds = %658
  %661 = fcmp fast olt float %646, 0.000000e+00
  %662 = select i1 %661, float 3.000000e+00, float 2.000000e+00
  br label %666

; <label>:663                                     ; preds = %658
  %664 = fcmp fast olt float %645, 0.000000e+00
  %665 = select i1 %664, float 1.000000e+00, float 0.000000e+00
  br label %666

; <label>:666                                     ; preds = %663, %660, %655
  %667 = phi float [ %657, %655 ], [ %662, %660 ], [ %665, %663 ]
  %668 = fmul fast float %667, 5.000000e-01
  %669 = fptoui float %668 to i32
  %670 = call float @dx.op.unary.f32(i32 6, float %648)  ; FAbs(value)
  %671 = call float @dx.op.binary.f32(i32 35, float %652, float %649)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 35, float %650, float %671)  ; FMax(a,b)
  %673 = fcmp fast ogt float %670, %672
  %674 = select i1 %673, i32 3, i32 %669
  %675 = icmp eq i32 %674, 0
  %676 = select i1 %675, float %646, float %645
  %677 = select i1 %675, float %647, float %646
  %678 = select i1 %675, float %648, float %647
  %679 = select i1 %675, float %645, float %648
  %680 = icmp eq i32 %674, 1
  %681 = select i1 %680, float %678, float %677
  %682 = select i1 %680, float %679, float %678
  %683 = select i1 %680, float %677, float %679
  %684 = icmp eq i32 %674, 2
  %685 = select i1 %684, float %683, float %682
  %686 = select i1 %684, float %682, float %683
  %687 = fcmp fast ogt float %686, 0.000000e+00
  %688 = select i1 %687, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %689 = fmul fast float %688, %676
  %690 = fmul fast float %688, %681
  %691 = fmul fast float %688, %685
  %692 = fadd fast float %689, 1.000000e+00
  %693 = fmul fast float %692, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = fmul fast float %694, 1.023000e+03
  %696 = fptoui float %695 to i32
  %697 = fadd fast float %690, 1.000000e+00
  %698 = fmul fast float %697, 5.000000e-01
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fmul fast float %699, 1.023000e+03
  %701 = fptoui float %700 to i32
  %702 = fadd fast float %691, 1.000000e+00
  %703 = fmul fast float %702, 5.000000e-01
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = fmul fast float %704, 5.110000e+02
  %706 = fptoui float %705 to i32
  %707 = shl i32 %701, 10
  %708 = shl i32 %706, 20
  %709 = fcmp fast ogt float %515, 0.000000e+00
  %710 = select i1 %709, i32 0, i32 536870912
  %711 = shl i32 %674, 30
  %712 = or i32 %696, %710
  %713 = or i32 %712, %711
  %714 = or i32 %713, %707
  %715 = or i32 %714, %708
  %716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.i32 %716, 1
  %718 = shl i32 %521, 2
  %719 = add i32 %717, %718
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %719, i32 undef, i32 %715, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %720

; <label>:720                                     ; preds = %666, %0
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
!11 = !{void ()* @cs_face_point, !"cs_face_point", null, !4, !12}
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

