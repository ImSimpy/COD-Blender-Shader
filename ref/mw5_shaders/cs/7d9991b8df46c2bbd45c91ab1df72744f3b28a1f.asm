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
; shader hash: 6c13ec9d09e029fe14610407e809a564
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
;                                   texture    byte         r/o      T0             t1     1
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

define void @cs_edge_point_mayhem() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 2
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %526, !dx.controlflow.hints !14

; <label>:8                                       ; preds = %0
  %9 = shl i32 %4, 3
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %9, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = extractvalue %dx.types.ResRet.i32 %10, 1
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = and i32 %11, 65535
  %16 = add i32 %14, %15
  %17 = lshr i32 %11, 16
  %18 = add i32 %14, %17
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 0
  %21 = extractvalue %dx.types.CBufRet.f32 %19, 1
  %22 = extractvalue %dx.types.CBufRet.f32 %19, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %19, 3
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = shl i32 %16, 3
  %27 = add i32 %25, %26
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = extractvalue %dx.types.ResRet.i32 %28, 1
  %31 = and i32 %29, 2097151
  %32 = uitofp i32 %31 to float
  %33 = lshr i32 %29, 21
  %34 = shl i32 %30, 11
  %35 = and i32 %34, 2095104
  %36 = or i32 %35, %33
  %37 = uitofp i32 %36 to float
  %38 = lshr i32 %30, 10
  %39 = and i32 %38, 2097151
  %40 = uitofp i32 %39 to float
  %41 = fdiv float %32, 2.097151e+06
  %42 = fdiv float %37, 2.097151e+06
  %43 = fdiv float %40, 2.097151e+06
  %44 = fmul float %41, 2.000000e+00
  %45 = fmul float %42, 2.000000e+00
  %46 = fmul float %43, 2.000000e+00
  %47 = fadd float %44, -1.000000e+00
  %48 = fadd float %45, -1.000000e+00
  %49 = fadd float %46, -1.000000e+00
  %50 = fmul float %23, %47
  %51 = fmul float %23, %48
  %52 = fmul float %23, %49
  %53 = fadd float %20, %50
  %54 = fadd float %21, %51
  %55 = fadd float %22, %52
  %56 = fmul float %53, 5.000000e-01
  %57 = fmul float %54, 5.000000e-01
  %58 = fmul float %55, 5.000000e-01
  %59 = fadd float %56, 0.000000e+00
  %60 = fadd float %57, 0.000000e+00
  %61 = fadd float %58, 0.000000e+00
  %62 = shl i32 %18, 3
  %63 = add i32 %25, %62
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = extractvalue %dx.types.ResRet.i32 %64, 1
  %67 = and i32 %65, 2097151
  %68 = uitofp i32 %67 to float
  %69 = lshr i32 %65, 21
  %70 = shl i32 %66, 11
  %71 = and i32 %70, 2095104
  %72 = or i32 %71, %69
  %73 = uitofp i32 %72 to float
  %74 = lshr i32 %66, 10
  %75 = and i32 %74, 2097151
  %76 = uitofp i32 %75 to float
  %77 = fdiv float %68, 2.097151e+06
  %78 = fdiv float %73, 2.097151e+06
  %79 = fdiv float %76, 2.097151e+06
  %80 = fmul float %77, 2.000000e+00
  %81 = fmul float %78, 2.000000e+00
  %82 = fmul float %79, 2.000000e+00
  %83 = fadd float %80, -1.000000e+00
  %84 = fadd float %81, -1.000000e+00
  %85 = fadd float %82, -1.000000e+00
  %86 = fmul float %23, %83
  %87 = fmul float %23, %84
  %88 = fmul float %23, %85
  %89 = fadd float %20, %86
  %90 = fadd float %21, %87
  %91 = fadd float %22, %88
  %92 = fmul float %89, 5.000000e-01
  %93 = fmul float %90, 5.000000e-01
  %94 = fmul float %91, 5.000000e-01
  %95 = fadd float %59, %92
  %96 = fadd float %60, %93
  %97 = fadd float %61, %94
  %98 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.i32 %98, 0
  %100 = icmp ult i32 %4, %99
  br i1 %100, label %101, label %182, !dx.controlflow.hints !15

; <label>:101                                     ; preds = %8
  %102 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %103 = lshr i32 %12, 16
  %104 = add i32 %102, %103
  %105 = and i32 %12, 65535
  %106 = add i32 %102, %105
  %107 = fmul float %95, 5.000000e-01
  %108 = fmul float %96, 5.000000e-01
  %109 = fmul float %97, 5.000000e-01
  %110 = shl i32 %106, 3
  %111 = add i32 %25, %110
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = extractvalue %dx.types.ResRet.i32 %112, 1
  %115 = and i32 %113, 2097151
  %116 = uitofp i32 %115 to float
  %117 = lshr i32 %113, 21
  %118 = shl i32 %114, 11
  %119 = and i32 %118, 2095104
  %120 = or i32 %119, %117
  %121 = uitofp i32 %120 to float
  %122 = lshr i32 %114, 10
  %123 = and i32 %122, 2097151
  %124 = uitofp i32 %123 to float
  %125 = fdiv float %116, 2.097151e+06
  %126 = fdiv float %121, 2.097151e+06
  %127 = fdiv float %124, 2.097151e+06
  %128 = fmul float %125, 2.000000e+00
  %129 = fmul float %126, 2.000000e+00
  %130 = fmul float %127, 2.000000e+00
  %131 = fadd float %128, -1.000000e+00
  %132 = fadd float %129, -1.000000e+00
  %133 = fadd float %130, -1.000000e+00
  %134 = fmul float %23, %131
  %135 = fmul float %23, %132
  %136 = fmul float %23, %133
  %137 = fadd float %20, %134
  %138 = fadd float %21, %135
  %139 = fadd float %22, %136
  %140 = fmul float %137, 2.500000e-01
  %141 = fmul float %138, 2.500000e-01
  %142 = fmul float %139, 2.500000e-01
  %143 = fadd float %107, %140
  %144 = fadd float %108, %141
  %145 = fadd float %109, %142
  %146 = shl i32 %104, 3
  %147 = add i32 %25, %146
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = and i32 %149, 2097151
  %152 = uitofp i32 %151 to float
  %153 = lshr i32 %149, 21
  %154 = shl i32 %150, 11
  %155 = and i32 %154, 2095104
  %156 = or i32 %155, %153
  %157 = uitofp i32 %156 to float
  %158 = lshr i32 %150, 10
  %159 = and i32 %158, 2097151
  %160 = uitofp i32 %159 to float
  %161 = fdiv float %152, 2.097151e+06
  %162 = fdiv float %157, 2.097151e+06
  %163 = fdiv float %160, 2.097151e+06
  %164 = fmul float %161, 2.000000e+00
  %165 = fmul float %162, 2.000000e+00
  %166 = fmul float %163, 2.000000e+00
  %167 = fadd float %164, -1.000000e+00
  %168 = fadd float %165, -1.000000e+00
  %169 = fadd float %166, -1.000000e+00
  %170 = fmul float %23, %167
  %171 = fmul float %23, %168
  %172 = fmul float %23, %169
  %173 = fadd float %20, %170
  %174 = fadd float %21, %171
  %175 = fadd float %22, %172
  %176 = fmul float %173, 2.500000e-01
  %177 = fmul float %174, 2.500000e-01
  %178 = fmul float %175, 2.500000e-01
  %179 = fadd float %143, %176
  %180 = fadd float %144, %177
  %181 = fadd float %145, %178
  br label %182

; <label>:182                                     ; preds = %101, %8
  %183 = phi float [ %179, %101 ], [ %95, %8 ]
  %184 = phi float [ %180, %101 ], [ %96, %8 ]
  %185 = phi float [ %181, %101 ], [ %97, %8 ]
  %186 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %187 = shl i32 %16, 2
  %188 = add i32 %186, %187
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 536870912
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %192, float -1.000000e+00, float 1.000000e+00
  %194 = lshr i32 %190, 30
  %195 = and i32 %190, 1023
  %196 = uitofp i32 %195 to float
  %197 = lshr i32 %190, 10
  %198 = and i32 %197, 1023
  %199 = uitofp i32 %198 to float
  %200 = lshr i32 %190, 20
  %201 = and i32 %200, 511
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %196, 0x3F56A64800000000
  %204 = fadd fast float %203, 0xBFE6A09E60000000
  %205 = fmul fast float %199, 0x3F56A64800000000
  %206 = fadd fast float %205, 0xBFE6A09E60000000
  %207 = fmul fast float %202, 0x3F66ABF460000000
  %208 = fadd fast float %207, 0xBFE6A09E60000000
  %209 = call float @dx.op.dot3.f32(i32 55, float %204, float %206, float %208, float %204, float %206, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.unary.f32(i32 7, float %209)  ; Saturate(value)
  %211 = fsub fast float 1.000000e+00, %210
  %212 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %213 = icmp eq i32 %194, 0
  br i1 %213, label %220, label %214, !dx.controlflow.hints !16

; <label>:214                                     ; preds = %182
  %215 = icmp eq i32 %194, 1
  br i1 %215, label %220, label %216, !dx.controlflow.hints !17

; <label>:216                                     ; preds = %214
  %217 = icmp eq i32 %194, 2
  %218 = select i1 %217, float %212, float %208
  %219 = select i1 %217, float %208, float %212
  br label %220

; <label>:220                                     ; preds = %216, %214, %182
  %221 = phi float [ %212, %182 ], [ %204, %214 ], [ %204, %216 ]
  %222 = phi float [ %204, %182 ], [ %212, %214 ], [ %206, %216 ]
  %223 = phi float [ %206, %182 ], [ %206, %214 ], [ %218, %216 ]
  %224 = phi float [ %208, %182 ], [ %208, %214 ], [ %219, %216 ]
  %225 = fmul fast float %222, %222
  %226 = fmul fast float %225, 2.000000e+00
  %227 = fmul fast float %223, %223
  %228 = fmul fast float %227, 2.000000e+00
  %229 = fmul fast float %222, %221
  %230 = fmul fast float %224, %223
  %231 = fmul fast float %223, %221
  %232 = fmul fast float %222, 2.000000e+00
  %233 = fmul fast float %232, %224
  %234 = shl i32 %18, 2
  %235 = add i32 %186, %234
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = lshr i32 %237, 30
  %239 = and i32 %237, 1023
  %240 = uitofp i32 %239 to float
  %241 = lshr i32 %237, 10
  %242 = and i32 %241, 1023
  %243 = uitofp i32 %242 to float
  %244 = lshr i32 %237, 20
  %245 = and i32 %244, 511
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %240, 0x3F56A64800000000
  %248 = fadd fast float %247, 0xBFE6A09E60000000
  %249 = fmul fast float %243, 0x3F56A64800000000
  %250 = fadd fast float %249, 0xBFE6A09E60000000
  %251 = fmul fast float %246, 0x3F66ABF460000000
  %252 = fadd fast float %251, 0xBFE6A09E60000000
  %253 = call float @dx.op.dot3.f32(i32 55, float %248, float %250, float %252, float %248, float %250, float %252)  ; Dot3(ax,ay,az,bx,by,bz)
  %254 = call float @dx.op.unary.f32(i32 7, float %253)  ; Saturate(value)
  %255 = fsub fast float 1.000000e+00, %254
  %256 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %257 = icmp eq i32 %238, 0
  br i1 %257, label %264, label %258, !dx.controlflow.hints !16

; <label>:258                                     ; preds = %220
  %259 = icmp eq i32 %238, 1
  br i1 %259, label %264, label %260, !dx.controlflow.hints !17

; <label>:260                                     ; preds = %258
  %261 = icmp eq i32 %238, 2
  %262 = select i1 %261, float %256, float %252
  %263 = select i1 %261, float %252, float %256
  br label %264

; <label>:264                                     ; preds = %260, %258, %220
  %265 = phi float [ %256, %220 ], [ %248, %258 ], [ %248, %260 ]
  %266 = phi float [ %248, %220 ], [ %256, %258 ], [ %250, %260 ]
  %267 = phi float [ %250, %220 ], [ %250, %258 ], [ %262, %260 ]
  %268 = phi float [ %252, %220 ], [ %252, %258 ], [ %263, %260 ]
  %269 = fmul fast float %266, %266
  %270 = fmul fast float %269, -2.000000e+00
  %271 = fmul fast float %267, %267
  %272 = fmul fast float %271, 2.000000e+00
  %273 = fmul fast float %266, %265
  %274 = fmul fast float %268, %267
  %275 = fmul fast float %267, %265
  %276 = fmul fast float %266, -2.000000e+00
  %277 = fmul fast float %276, %268
  %278 = fsub fast float 2.000000e+00, %226
  %279 = fsub fast float %278, %228
  %280 = fadd fast float %279, %270
  %281 = fsub fast float %280, %272
  %282 = fmul fast float %281, 5.000000e-01
  %283 = fadd fast float %230, %229
  %284 = fadd fast float %283, %273
  %285 = fadd fast float %284, %274
  %286 = fadd fast float %275, %231
  %287 = fmul fast float %286, 2.000000e+00
  %288 = fsub fast float %277, %233
  %289 = fadd fast float %288, %287
  %290 = fmul fast float %289, 5.000000e-01
  %291 = extractvalue %dx.types.CBufRet.i32 %24, 2
  %292 = shl i32 %16, 4
  %293 = add i32 %291, %292
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = extractvalue %dx.types.ResRet.i32 %294, 1
  %297 = extractvalue %dx.types.ResRet.i32 %294, 2
  %298 = extractvalue %dx.types.ResRet.i32 %294, 3
  %299 = bitcast i32 %295 to float
  %300 = bitcast i32 %296 to float
  %301 = bitcast i32 %297 to float
  %302 = bitcast i32 %298 to float
  %303 = shl i32 %18, 4
  %304 = add i32 %291, %303
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = extractvalue %dx.types.ResRet.i32 %305, 1
  %308 = extractvalue %dx.types.ResRet.i32 %305, 2
  %309 = extractvalue %dx.types.ResRet.i32 %305, 3
  %310 = bitcast i32 %306 to float
  %311 = bitcast i32 %307 to float
  %312 = bitcast i32 %308 to float
  %313 = bitcast i32 %309 to float
  %314 = fadd fast float %310, %299
  %315 = fmul fast float %314, 5.000000e-01
  %316 = fadd fast float %311, %300
  %317 = fmul fast float %316, 5.000000e-01
  %318 = fadd fast float %312, %301
  %319 = fmul fast float %318, 5.000000e-01
  %320 = fadd fast float %313, %302
  %321 = fmul fast float %320, 5.000000e-01
  %322 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.i32 %323, 0
  %325 = add i32 %322, %4
  %326 = add i32 %325, %324
  %327 = fsub float %183, %20
  %328 = fsub float %184, %21
  %329 = fsub float %185, %22
  %330 = fdiv float 1.000000e+00, %23
  %331 = fmul float %330, %327
  %332 = fmul float %330, %328
  %333 = fmul float %330, %329
  %334 = fmul float %331, 5.000000e-01
  %335 = fmul float %332, 5.000000e-01
  %336 = fmul float %333, 5.000000e-01
  %337 = fadd float %334, 5.000000e-01
  %338 = fadd float %335, 5.000000e-01
  %339 = fadd float %336, 5.000000e-01
  %340 = call float @dx.op.unary.f32(i32 7, float %337), !dx.precise !18  ; Saturate(value)
  %341 = call float @dx.op.unary.f32(i32 7, float %338), !dx.precise !18  ; Saturate(value)
  %342 = call float @dx.op.unary.f32(i32 7, float %339), !dx.precise !18  ; Saturate(value)
  %343 = fmul float %340, 2.097151e+06
  %344 = fmul float %341, 2.097151e+06
  %345 = fmul float %342, 2.097151e+06
  %346 = fptoui float %343 to i32
  %347 = fptoui float %344 to i32
  %348 = fptoui float %345 to i32
  %349 = shl i32 %347, 21
  %350 = or i32 %349, %346
  %351 = lshr i32 %347, 11
  %352 = shl i32 %348, 10
  %353 = or i32 %352, %351
  %354 = shl i32 %326, 3
  %355 = add i32 %25, %354
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %355, i32 undef, i32 %350, i32 %353, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %356 = call float @dx.op.dot3.f32(i32 55, float %282, float %285, float %290, float %282, float %285, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = call float @dx.op.unary.f32(i32 25, float %356)  ; Rsqrt(value)
  %358 = fmul fast float %357, %282
  %359 = fmul fast float %357, %285
  %360 = fmul fast float %357, %290
  %361 = call float @dx.op.unary.f32(i32 6, float %360)  ; FAbs(value)
  %362 = fcmp fast olt float %361, 0x3FECCCCCC0000000
  %363 = select i1 %362, float 0.000000e+00, float 1.000000e+00
  %364 = select i1 %362, float 1.000000e+00, float 0.000000e+00
  %365 = fmul fast float %364, %359
  %366 = fmul fast float %363, %360
  %367 = fmul fast float %364, %358
  %368 = fsub fast float %366, %367
  %369 = fmul fast float %359, %363
  %370 = fsub fast float -0.000000e+00, %369
  %371 = call float @dx.op.dot3.f32(i32 55, float %365, float %368, float %370, float %365, float %368, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.unary.f32(i32 25, float %371)  ; Rsqrt(value)
  %373 = fmul fast float %365, %372
  %374 = fmul fast float %368, %372
  %375 = fmul fast float %372, %370
  %376 = fmul fast float %374, %360
  %377 = fmul fast float %375, %359
  %378 = fsub fast float %376, %377
  %379 = fmul fast float %375, %358
  %380 = fmul fast float %373, %360
  %381 = fsub fast float %379, %380
  %382 = fmul fast float %373, %359
  %383 = fmul fast float %374, %358
  %384 = fsub fast float %382, %383
  %385 = fadd fast float %375, %358
  %386 = fadd fast float %385, %381
  %387 = fcmp fast ogt float %386, 0.000000e+00
  br i1 %387, label %388, label %399, !dx.controlflow.hints !19

; <label>:388                                     ; preds = %264
  %389 = fadd fast float %386, 1.000000e+00
  %390 = fsub fast float %384, %374
  %391 = fsub fast float %373, %360
  %392 = fsub fast float %359, %378
  %393 = call float @dx.op.unary.f32(i32 25, float %389)  ; Rsqrt(value)
  %394 = fmul fast float %393, 5.000000e-01
  %395 = fmul fast float %394, %390
  %396 = fmul fast float %394, %391
  %397 = fmul fast float %394, %392
  %398 = fmul fast float %394, %389
  br label %442

; <label>:399                                     ; preds = %264
  %400 = fcmp fast ogt float %358, %381
  %401 = fcmp fast ogt float %358, %375
  %402 = and i1 %401, %400
  br i1 %402, label %403, label %416, !dx.controlflow.hints !20

; <label>:403                                     ; preds = %399
  %404 = fadd fast float %358, 1.000000e+00
  %405 = fsub fast float %404, %375
  %406 = fsub fast float %405, %381
  %407 = fsub fast float %384, %374
  %408 = fadd fast float %378, %359
  %409 = fadd fast float %373, %360
  %410 = call float @dx.op.unary.f32(i32 25, float %406)  ; Rsqrt(value)
  %411 = fmul fast float %410, 5.000000e-01
  %412 = fmul fast float %411, %406
  %413 = fmul fast float %411, %408
  %414 = fmul fast float %411, %409
  %415 = fmul fast float %411, %407
  br label %442

; <label>:416                                     ; preds = %399
  %417 = fcmp fast ogt float %381, %375
  %418 = fsub fast float 1.000000e+00, %358
  %419 = fadd fast float %384, %374
  br i1 %417, label %420, label %431, !dx.controlflow.hints !21

; <label>:420                                     ; preds = %416
  %421 = fsub fast float %418, %375
  %422 = fadd fast float %421, %381
  %423 = fsub fast float %373, %360
  %424 = fadd fast float %378, %359
  %425 = call float @dx.op.unary.f32(i32 25, float %422)  ; Rsqrt(value)
  %426 = fmul fast float %425, 5.000000e-01
  %427 = fmul fast float %426, %424
  %428 = fmul fast float %426, %422
  %429 = fmul fast float %426, %419
  %430 = fmul fast float %426, %423
  br label %442

; <label>:431                                     ; preds = %416
  %432 = fadd fast float %418, %375
  %433 = fsub fast float %432, %381
  %434 = fsub fast float %359, %378
  %435 = fadd fast float %373, %360
  %436 = call float @dx.op.unary.f32(i32 25, float %433)  ; Rsqrt(value)
  %437 = fmul fast float %436, 5.000000e-01
  %438 = fmul fast float %437, %435
  %439 = fmul fast float %437, %419
  %440 = fmul fast float %437, %433
  %441 = fmul fast float %437, %434
  br label %442

; <label>:442                                     ; preds = %431, %420, %403, %388
  %443 = phi float [ %395, %388 ], [ %412, %403 ], [ %427, %420 ], [ %438, %431 ]
  %444 = phi float [ %396, %388 ], [ %413, %403 ], [ %428, %420 ], [ %439, %431 ]
  %445 = phi float [ %397, %388 ], [ %414, %403 ], [ %429, %420 ], [ %440, %431 ]
  %446 = phi float [ %398, %388 ], [ %415, %403 ], [ %430, %420 ], [ %441, %431 ]
  %447 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %448 = call float @dx.op.unary.f32(i32 6, float %443)  ; FAbs(value)
  %449 = fcmp fast oge float %447, %448
  %450 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %451 = fcmp fast oge float %447, %450
  %452 = and i1 %449, %451
  br i1 %452, label %453, label %456, !dx.controlflow.hints !22

; <label>:453                                     ; preds = %442
  %454 = fcmp fast olt float %445, 0.000000e+00
  %455 = select i1 %454, float 5.000000e+00, float 4.000000e+00
  br label %464

; <label>:456                                     ; preds = %442
  %457 = fcmp fast ult float %450, %448
  br i1 %457, label %461, label %458, !dx.controlflow.hints !23

; <label>:458                                     ; preds = %456
  %459 = fcmp fast olt float %444, 0.000000e+00
  %460 = select i1 %459, float 3.000000e+00, float 2.000000e+00
  br label %464

; <label>:461                                     ; preds = %456
  %462 = fcmp fast olt float %443, 0.000000e+00
  %463 = select i1 %462, float 1.000000e+00, float 0.000000e+00
  br label %464

; <label>:464                                     ; preds = %461, %458, %453
  %465 = phi float [ %455, %453 ], [ %460, %458 ], [ %463, %461 ]
  %466 = fmul fast float %465, 5.000000e-01
  %467 = fptoui float %466 to i32
  %468 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %469 = call float @dx.op.binary.f32(i32 35, float %450, float %447)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 35, float %448, float %469)  ; FMax(a,b)
  %471 = fcmp fast ogt float %468, %470
  %472 = select i1 %471, i32 3, i32 %467
  %473 = icmp eq i32 %472, 0
  %474 = select i1 %473, float %444, float %443
  %475 = select i1 %473, float %445, float %444
  %476 = select i1 %473, float %446, float %445
  %477 = select i1 %473, float %443, float %446
  %478 = icmp eq i32 %472, 1
  %479 = select i1 %478, float %476, float %475
  %480 = select i1 %478, float %477, float %476
  %481 = select i1 %478, float %475, float %477
  %482 = icmp eq i32 %472, 2
  %483 = select i1 %482, float %481, float %480
  %484 = select i1 %482, float %480, float %481
  %485 = fcmp fast ogt float %484, 0.000000e+00
  %486 = select i1 %485, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %487 = fmul fast float %486, %474
  %488 = fmul fast float %486, %479
  %489 = fmul fast float %486, %483
  %490 = fadd fast float %487, 1.000000e+00
  %491 = fmul fast float %490, 5.000000e-01
  %492 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %493 = fmul fast float %492, 1.023000e+03
  %494 = fptoui float %493 to i32
  %495 = fadd fast float %488, 1.000000e+00
  %496 = fmul fast float %495, 5.000000e-01
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = fmul fast float %497, 1.023000e+03
  %499 = fptoui float %498 to i32
  %500 = fadd fast float %489, 1.000000e+00
  %501 = fmul fast float %500, 5.000000e-01
  %502 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %503 = fmul fast float %502, 5.110000e+02
  %504 = fptoui float %503 to i32
  %505 = shl i32 %499, 10
  %506 = shl i32 %504, 20
  %507 = fcmp fast ogt float %193, 0.000000e+00
  %508 = select i1 %507, i32 0, i32 536870912
  %509 = shl i32 %472, 30
  %510 = or i32 %494, %508
  %511 = or i32 %510, %509
  %512 = or i32 %511, %505
  %513 = or i32 %512, %506
  %514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.i32 %514, 1
  %516 = shl i32 %326, 2
  %517 = add i32 %515, %516
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %517, i32 undef, i32 %513, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %518 = bitcast float %315 to i32
  %519 = bitcast float %317 to i32
  %520 = bitcast float %319 to i32
  %521 = bitcast float %321 to i32
  %522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.i32 %522, 2
  %524 = shl i32 %326, 4
  %525 = add i32 %523, %524
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %525, i32 undef, i32 %518, i32 %519, i32 %520, i32 %521, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %526

; <label>:526                                     ; preds = %464, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

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
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %SubdivConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!11 = !{void ()* @cs_edge_point_mayhem, !"cs_edge_point_mayhem", null, !4, !12}
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

