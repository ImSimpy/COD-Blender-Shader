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
; shader hash: 63b6e62d8d31ffe1c1f286ddaa5bc477
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

define void @cs_edge_point() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 2
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %487, !dx.controlflow.hints !14

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
  %291 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.i32 %292, 0
  %294 = add i32 %291, %4
  %295 = add i32 %294, %293
  %296 = fsub float %183, %20
  %297 = fsub float %184, %21
  %298 = fsub float %185, %22
  %299 = fdiv float 1.000000e+00, %23
  %300 = fmul float %299, %296
  %301 = fmul float %299, %297
  %302 = fmul float %299, %298
  %303 = fmul float %300, 5.000000e-01
  %304 = fmul float %301, 5.000000e-01
  %305 = fmul float %302, 5.000000e-01
  %306 = fadd float %303, 5.000000e-01
  %307 = fadd float %304, 5.000000e-01
  %308 = fadd float %305, 5.000000e-01
  %309 = call float @dx.op.unary.f32(i32 7, float %306), !dx.precise !18  ; Saturate(value)
  %310 = call float @dx.op.unary.f32(i32 7, float %307), !dx.precise !18  ; Saturate(value)
  %311 = call float @dx.op.unary.f32(i32 7, float %308), !dx.precise !18  ; Saturate(value)
  %312 = fmul float %309, 2.097151e+06
  %313 = fmul float %310, 2.097151e+06
  %314 = fmul float %311, 2.097151e+06
  %315 = fptoui float %312 to i32
  %316 = fptoui float %313 to i32
  %317 = fptoui float %314 to i32
  %318 = shl i32 %316, 21
  %319 = or i32 %318, %315
  %320 = lshr i32 %316, 11
  %321 = shl i32 %317, 10
  %322 = or i32 %321, %320
  %323 = shl i32 %295, 3
  %324 = add i32 %25, %323
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %324, i32 undef, i32 %319, i32 %322, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %325 = call float @dx.op.dot3.f32(i32 55, float %282, float %285, float %290, float %282, float %285, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = call float @dx.op.unary.f32(i32 25, float %325)  ; Rsqrt(value)
  %327 = fmul fast float %326, %282
  %328 = fmul fast float %326, %285
  %329 = fmul fast float %326, %290
  %330 = call float @dx.op.unary.f32(i32 6, float %329)  ; FAbs(value)
  %331 = fcmp fast olt float %330, 0x3FECCCCCC0000000
  %332 = select i1 %331, float 0.000000e+00, float 1.000000e+00
  %333 = select i1 %331, float 1.000000e+00, float 0.000000e+00
  %334 = fmul fast float %333, %328
  %335 = fmul fast float %332, %329
  %336 = fmul fast float %333, %327
  %337 = fsub fast float %335, %336
  %338 = fmul fast float %328, %332
  %339 = fsub fast float -0.000000e+00, %338
  %340 = call float @dx.op.dot3.f32(i32 55, float %334, float %337, float %339, float %334, float %337, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %341 = call float @dx.op.unary.f32(i32 25, float %340)  ; Rsqrt(value)
  %342 = fmul fast float %334, %341
  %343 = fmul fast float %337, %341
  %344 = fmul fast float %341, %339
  %345 = fmul fast float %343, %329
  %346 = fmul fast float %344, %328
  %347 = fsub fast float %345, %346
  %348 = fmul fast float %344, %327
  %349 = fmul fast float %342, %329
  %350 = fsub fast float %348, %349
  %351 = fmul fast float %342, %328
  %352 = fmul fast float %343, %327
  %353 = fsub fast float %351, %352
  %354 = fadd fast float %344, %327
  %355 = fadd fast float %354, %350
  %356 = fcmp fast ogt float %355, 0.000000e+00
  br i1 %356, label %357, label %368, !dx.controlflow.hints !19

; <label>:357                                     ; preds = %264
  %358 = fadd fast float %355, 1.000000e+00
  %359 = fsub fast float %353, %343
  %360 = fsub fast float %342, %329
  %361 = fsub fast float %328, %347
  %362 = call float @dx.op.unary.f32(i32 25, float %358)  ; Rsqrt(value)
  %363 = fmul fast float %362, 5.000000e-01
  %364 = fmul fast float %363, %359
  %365 = fmul fast float %363, %360
  %366 = fmul fast float %363, %361
  %367 = fmul fast float %363, %358
  br label %411

; <label>:368                                     ; preds = %264
  %369 = fcmp fast ogt float %327, %350
  %370 = fcmp fast ogt float %327, %344
  %371 = and i1 %370, %369
  br i1 %371, label %372, label %385, !dx.controlflow.hints !20

; <label>:372                                     ; preds = %368
  %373 = fadd fast float %327, 1.000000e+00
  %374 = fsub fast float %373, %344
  %375 = fsub fast float %374, %350
  %376 = fsub fast float %353, %343
  %377 = fadd fast float %347, %328
  %378 = fadd fast float %342, %329
  %379 = call float @dx.op.unary.f32(i32 25, float %375)  ; Rsqrt(value)
  %380 = fmul fast float %379, 5.000000e-01
  %381 = fmul fast float %380, %375
  %382 = fmul fast float %380, %377
  %383 = fmul fast float %380, %378
  %384 = fmul fast float %380, %376
  br label %411

; <label>:385                                     ; preds = %368
  %386 = fcmp fast ogt float %350, %344
  %387 = fsub fast float 1.000000e+00, %327
  %388 = fadd fast float %353, %343
  br i1 %386, label %389, label %400, !dx.controlflow.hints !21

; <label>:389                                     ; preds = %385
  %390 = fsub fast float %387, %344
  %391 = fadd fast float %390, %350
  %392 = fsub fast float %342, %329
  %393 = fadd fast float %347, %328
  %394 = call float @dx.op.unary.f32(i32 25, float %391)  ; Rsqrt(value)
  %395 = fmul fast float %394, 5.000000e-01
  %396 = fmul fast float %395, %393
  %397 = fmul fast float %395, %391
  %398 = fmul fast float %395, %388
  %399 = fmul fast float %395, %392
  br label %411

; <label>:400                                     ; preds = %385
  %401 = fadd fast float %387, %344
  %402 = fsub fast float %401, %350
  %403 = fsub fast float %328, %347
  %404 = fadd fast float %342, %329
  %405 = call float @dx.op.unary.f32(i32 25, float %402)  ; Rsqrt(value)
  %406 = fmul fast float %405, 5.000000e-01
  %407 = fmul fast float %406, %404
  %408 = fmul fast float %406, %388
  %409 = fmul fast float %406, %402
  %410 = fmul fast float %406, %403
  br label %411

; <label>:411                                     ; preds = %400, %389, %372, %357
  %412 = phi float [ %364, %357 ], [ %381, %372 ], [ %396, %389 ], [ %407, %400 ]
  %413 = phi float [ %365, %357 ], [ %382, %372 ], [ %397, %389 ], [ %408, %400 ]
  %414 = phi float [ %366, %357 ], [ %383, %372 ], [ %398, %389 ], [ %409, %400 ]
  %415 = phi float [ %367, %357 ], [ %384, %372 ], [ %399, %389 ], [ %410, %400 ]
  %416 = call float @dx.op.unary.f32(i32 6, float %414)  ; FAbs(value)
  %417 = call float @dx.op.unary.f32(i32 6, float %412)  ; FAbs(value)
  %418 = fcmp fast oge float %416, %417
  %419 = call float @dx.op.unary.f32(i32 6, float %413)  ; FAbs(value)
  %420 = fcmp fast oge float %416, %419
  %421 = and i1 %418, %420
  br i1 %421, label %422, label %425, !dx.controlflow.hints !22

; <label>:422                                     ; preds = %411
  %423 = fcmp fast olt float %414, 0.000000e+00
  %424 = select i1 %423, float 5.000000e+00, float 4.000000e+00
  br label %433

; <label>:425                                     ; preds = %411
  %426 = fcmp fast ult float %419, %417
  br i1 %426, label %430, label %427, !dx.controlflow.hints !23

; <label>:427                                     ; preds = %425
  %428 = fcmp fast olt float %413, 0.000000e+00
  %429 = select i1 %428, float 3.000000e+00, float 2.000000e+00
  br label %433

; <label>:430                                     ; preds = %425
  %431 = fcmp fast olt float %412, 0.000000e+00
  %432 = select i1 %431, float 1.000000e+00, float 0.000000e+00
  br label %433

; <label>:433                                     ; preds = %430, %427, %422
  %434 = phi float [ %424, %422 ], [ %429, %427 ], [ %432, %430 ]
  %435 = fmul fast float %434, 5.000000e-01
  %436 = fptoui float %435 to i32
  %437 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %438 = call float @dx.op.binary.f32(i32 35, float %419, float %416)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %417, float %438)  ; FMax(a,b)
  %440 = fcmp fast ogt float %437, %439
  %441 = select i1 %440, i32 3, i32 %436
  %442 = icmp eq i32 %441, 0
  %443 = select i1 %442, float %413, float %412
  %444 = select i1 %442, float %414, float %413
  %445 = select i1 %442, float %415, float %414
  %446 = select i1 %442, float %412, float %415
  %447 = icmp eq i32 %441, 1
  %448 = select i1 %447, float %445, float %444
  %449 = select i1 %447, float %446, float %445
  %450 = select i1 %447, float %444, float %446
  %451 = icmp eq i32 %441, 2
  %452 = select i1 %451, float %450, float %449
  %453 = select i1 %451, float %449, float %450
  %454 = fcmp fast ogt float %453, 0.000000e+00
  %455 = select i1 %454, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %456 = fmul fast float %455, %443
  %457 = fmul fast float %455, %448
  %458 = fmul fast float %455, %452
  %459 = fadd fast float %456, 1.000000e+00
  %460 = fmul fast float %459, 5.000000e-01
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %461, 1.023000e+03
  %463 = fptoui float %462 to i32
  %464 = fadd fast float %457, 1.000000e+00
  %465 = fmul fast float %464, 5.000000e-01
  %466 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %467 = fmul fast float %466, 1.023000e+03
  %468 = fptoui float %467 to i32
  %469 = fadd fast float %458, 1.000000e+00
  %470 = fmul fast float %469, 5.000000e-01
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fmul fast float %471, 5.110000e+02
  %473 = fptoui float %472 to i32
  %474 = shl i32 %468, 10
  %475 = shl i32 %473, 20
  %476 = fcmp fast ogt float %193, 0.000000e+00
  %477 = select i1 %476, i32 0, i32 536870912
  %478 = shl i32 %441, 30
  %479 = or i32 %463, %477
  %480 = or i32 %479, %478
  %481 = or i32 %480, %474
  %482 = or i32 %481, %475
  %483 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.i32 %483, 1
  %485 = shl i32 %295, 2
  %486 = add i32 %484, %485
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %486, i32 undef, i32 %482, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %487

; <label>:487                                     ; preds = %433, %0
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
!11 = !{void ()* @cs_edge_point, !"cs_edge_point", null, !4, !12}
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

