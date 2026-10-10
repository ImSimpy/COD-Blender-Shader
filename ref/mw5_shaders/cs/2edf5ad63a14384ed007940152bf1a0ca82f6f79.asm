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
; shader hash: 288670f1989dcccc45c2d7e1b5e46827
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }

define void @cs_blendshapes_unified_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = extractvalue %dx.types.ResRet.i32 %7, 1
  %10 = extractvalue %dx.types.ResRet.i32 %7, 2
  %11 = shl i32 %5, 2
  %12 = add i32 %10, %11
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = and i32 %14, 65535
  %16 = lshr i32 %14, 16
  %17 = add i32 %16, %6
  %18 = mul nuw nsw i32 %15, 48
  %19 = add i32 %18, %8
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = extractvalue %dx.types.ResRet.i32 %20, 1
  %23 = extractvalue %dx.types.ResRet.i32 %20, 2
  %24 = extractvalue %dx.types.ResRet.i32 %20, 3
  %25 = add i32 %8, 16
  %26 = add i32 %25, %18
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = add i32 %8, 32
  %30 = add i32 %29, %18
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = extractvalue %dx.types.ResRet.i32 %31, 1
  %34 = bitcast i32 %21 to float
  %35 = bitcast i32 %22 to float
  %36 = bitcast i32 %23 to float
  %37 = bitcast i32 %24 to float
  %38 = icmp ult i32 %17, %33
  br i1 %38, label %39, label %437, !dx.controlflow.hints !14

; <label>:39                                      ; preds = %0
  %40 = extractvalue %dx.types.ResRet.i32 %27, 2
  %41 = extractvalue %dx.types.ResRet.i32 %27, 1
  %42 = shl i32 %17, 3
  %43 = lshr i32 %17, 7
  %44 = and i32 %43, 4194303
  %45 = add i32 %28, %44
  %46 = shl i32 %45, 2
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = shl i32 %48, 10
  %50 = and i32 %42, 1016
  %51 = or i32 %49, %50
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = extractvalue %dx.types.ResRet.i32 %52, 1
  %55 = and i32 %53, 65535
  %56 = lshr i32 %53, 16
  %57 = add i32 %56, %54
  %58 = shl nuw nsw i32 %55, 3
  %59 = add i32 %58, %41
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = extractvalue %dx.types.ResRet.i32 %60, 1
  %63 = shl nuw nsw i32 %55, 2
  %64 = add i32 %63, %40
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = lshr i32 %66, 30
  %68 = and i32 %66, 1023
  %69 = uitofp i32 %68 to float
  %70 = lshr i32 %66, 10
  %71 = and i32 %70, 1023
  %72 = uitofp i32 %71 to float
  %73 = lshr i32 %66, 20
  %74 = and i32 %73, 511
  %75 = uitofp i32 %74 to float
  %76 = fmul fast float %69, 0x3F56A64800000000
  %77 = fadd fast float %76, 0xBFE6A09E60000000
  %78 = fmul fast float %72, 0x3F56A64800000000
  %79 = fadd fast float %78, 0xBFE6A09E60000000
  %80 = fmul fast float %75, 0x3F66ABF460000000
  %81 = fadd fast float %80, 0xBFE6A09E60000000
  %82 = call float @dx.op.dot3.f32(i32 55, float %77, float %79, float %81, float %77, float %79, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = call float @dx.op.unary.f32(i32 7, float %82)  ; Saturate(value)
  %84 = fsub fast float 1.000000e+00, %83
  %85 = call float @dx.op.unary.f32(i32 24, float %84)  ; Sqrt(value)
  %86 = icmp eq i32 %67, 0
  br i1 %86, label %93, label %87, !dx.controlflow.hints !15

; <label>:87                                      ; preds = %39
  %88 = icmp eq i32 %67, 1
  br i1 %88, label %93, label %89, !dx.controlflow.hints !16

; <label>:89                                      ; preds = %87
  %90 = icmp eq i32 %67, 2
  %91 = select i1 %90, float %85, float %81
  %92 = select i1 %90, float %81, float %85
  br label %93

; <label>:93                                      ; preds = %89, %87, %39
  %94 = phi float [ %85, %39 ], [ %77, %87 ], [ %77, %89 ]
  %95 = phi float [ %77, %39 ], [ %85, %87 ], [ %79, %89 ]
  %96 = phi float [ %79, %39 ], [ %79, %87 ], [ %91, %89 ]
  %97 = phi float [ %81, %39 ], [ %81, %87 ], [ %92, %89 ]
  %98 = and i32 %66, 536870912
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %99, float -1.000000e+00, float 1.000000e+00
  %101 = fmul fast float %95, %95
  %102 = fmul fast float %101, 2.000000e+00
  %103 = fsub fast float 1.000000e+00, %102
  %104 = fmul fast float %96, %96
  %105 = fmul fast float %104, 2.000000e+00
  %106 = fsub fast float %103, %105
  %107 = fmul fast float %96, %94
  %108 = fmul fast float %97, %95
  %109 = fadd fast float %108, %107
  %110 = fmul fast float %109, 2.000000e+00
  %111 = fmul fast float %95, %94
  %112 = fmul fast float %97, %96
  %113 = fadd fast float %112, %111
  %114 = fmul fast float %113, 2.000000e+00
  %115 = fmul fast float %95, 2.000000e+00
  %116 = fmul fast float %115, %96
  %117 = fmul fast float %94, 2.000000e+00
  %118 = fmul fast float %117, %97
  %119 = fsub fast float %116, %118
  %120 = fmul fast float %117, %96
  %121 = fmul fast float %115, %97
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %94, %94
  %124 = fmul fast float %123, 2.000000e+00
  %125 = fsub fast float 1.000000e+00, %124
  %126 = fsub fast float %125, %102
  %127 = and i32 %61, 2097151
  %128 = uitofp i32 %127 to float
  %129 = lshr i32 %61, 21
  %130 = shl i32 %62, 11
  %131 = and i32 %130, 2095104
  %132 = or i32 %131, %129
  %133 = uitofp i32 %132 to float
  %134 = lshr i32 %62, 10
  %135 = and i32 %134, 2097151
  %136 = uitofp i32 %135 to float
  %137 = fdiv float %128, 2.097151e+06
  %138 = fdiv float %133, 2.097151e+06
  %139 = fdiv float %136, 2.097151e+06
  %140 = fmul float %137, 2.000000e+00
  %141 = fmul float %138, 2.000000e+00
  %142 = fmul float %139, 2.000000e+00
  %143 = fadd float %140, -1.000000e+00
  %144 = fadd float %141, -1.000000e+00
  %145 = fadd float %142, -1.000000e+00
  %146 = fmul float %37, %143
  %147 = fmul float %37, %144
  %148 = fmul float %37, %145
  %149 = fadd float %34, %146
  %150 = fadd float %35, %147
  %151 = fadd float %36, %148
  %152 = shl i32 %32, 2
  %153 = and i32 %152, 262140
  %154 = add i32 %153, %9
  %155 = icmp ult i32 %54, %57
  br i1 %155, label %156, label %243

; <label>:156                                     ; preds = %93
  br label %157

; <label>:157                                     ; preds = %157, %156
  %158 = phi float [ %197, %157 ], [ %149, %156 ]
  %159 = phi float [ %198, %157 ], [ %150, %156 ]
  %160 = phi float [ %199, %157 ], [ %151, %156 ]
  %161 = phi float [ %217, %157 ], [ %110, %156 ]
  %162 = phi float [ %218, %157 ], [ %119, %156 ]
  %163 = phi float [ %219, %157 ], [ %126, %156 ]
  %164 = phi float [ %237, %157 ], [ %106, %156 ]
  %165 = phi float [ %238, %157 ], [ %114, %156 ]
  %166 = phi float [ %239, %157 ], [ %122, %156 ]
  %167 = phi i32 [ %240, %157 ], [ %54, %156 ]
  %168 = shl i32 %167, 4
  %169 = lshr i32 %167, 6
  %170 = and i32 %169, 4194303
  %171 = add i32 %170, %28
  %172 = shl i32 %171, 2
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = shl i32 %174, 10
  %176 = and i32 %168, 1008
  %177 = or i32 %175, %176
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = extractvalue %dx.types.ResRet.i32 %178, 1
  %181 = extractvalue %dx.types.ResRet.i32 %178, 2
  %182 = extractvalue %dx.types.ResRet.i32 %178, 3
  %183 = shl i32 %179, 2
  %184 = and i32 %183, 262140
  %185 = add i32 %154, %184
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = bitcast i32 %187 to float
  %189 = lshr i32 %180, 16
  %190 = lshr i32 %179, 16
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %189), !dx.precise !17  ; LegacyF16ToF32(value)
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180), !dx.precise !17  ; LegacyF16ToF32(value)
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190), !dx.precise !17  ; LegacyF16ToF32(value)
  %194 = fmul float %191, %188
  %195 = fmul float %192, %188
  %196 = fmul float %188, %193
  %197 = fadd float %158, %194
  %198 = fadd float %159, %195
  %199 = fadd float %160, %196
  %200 = and i32 %181, 1023
  %201 = uitofp i32 %200 to float
  %202 = lshr i32 %181, 10
  %203 = and i32 %202, 1023
  %204 = uitofp i32 %203 to float
  %205 = lshr i32 %181, 20
  %206 = and i32 %205, 1023
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %201, 0x3F60040100000000
  %209 = fmul fast float %204, 0x3F60040100000000
  %210 = fmul fast float %207, 0x3F60040100000000
  %211 = fadd fast float %208, -1.000000e+00
  %212 = fadd fast float %209, -1.000000e+00
  %213 = fadd fast float %210, -1.000000e+00
  %214 = fmul fast float %211, %188
  %215 = fmul fast float %212, %188
  %216 = fmul fast float %213, %188
  %217 = fadd fast float %214, %161
  %218 = fadd fast float %215, %162
  %219 = fadd fast float %216, %163
  %220 = and i32 %182, 1023
  %221 = uitofp i32 %220 to float
  %222 = lshr i32 %182, 10
  %223 = and i32 %222, 1023
  %224 = uitofp i32 %223 to float
  %225 = lshr i32 %182, 20
  %226 = and i32 %225, 1023
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %221, 0x3F60040100000000
  %229 = fmul fast float %224, 0x3F60040100000000
  %230 = fmul fast float %227, 0x3F60040100000000
  %231 = fadd fast float %228, -1.000000e+00
  %232 = fadd fast float %229, -1.000000e+00
  %233 = fadd fast float %230, -1.000000e+00
  %234 = fmul fast float %231, %188
  %235 = fmul fast float %232, %188
  %236 = fmul fast float %233, %188
  %237 = fadd fast float %234, %164
  %238 = fadd fast float %235, %165
  %239 = fadd fast float %236, %166
  %240 = add nuw i32 %167, 1
  %241 = icmp eq i32 %240, %57
  br i1 %241, label %242, label %157, !llvm.loop !18

; <label>:242                                     ; preds = %157
  br label %243

; <label>:243                                     ; preds = %242, %93
  %244 = phi float [ %149, %93 ], [ %197, %242 ]
  %245 = phi float [ %150, %93 ], [ %198, %242 ]
  %246 = phi float [ %151, %93 ], [ %199, %242 ]
  %247 = phi float [ %110, %93 ], [ %217, %242 ]
  %248 = phi float [ %119, %93 ], [ %218, %242 ]
  %249 = phi float [ %126, %93 ], [ %219, %242 ]
  %250 = phi float [ %106, %93 ], [ %237, %242 ]
  %251 = phi float [ %114, %93 ], [ %238, %242 ]
  %252 = phi float [ %122, %93 ], [ %239, %242 ]
  %253 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %247, float %248, float %249)  ; Dot3(ax,ay,az,bx,by,bz)
  %254 = call float @dx.op.unary.f32(i32 25, float %253)  ; Rsqrt(value)
  %255 = fmul fast float %254, %247
  %256 = fmul fast float %254, %248
  %257 = fmul fast float %254, %249
  %258 = call float @dx.op.dot3.f32(i32 55, float %250, float %251, float %252, float %255, float %256, float %257)  ; Dot3(ax,ay,az,bx,by,bz)
  %259 = fsub fast float -0.000000e+00, %258
  %260 = fmul fast float %255, %259
  %261 = fmul fast float %256, %259
  %262 = fmul fast float %257, %259
  %263 = fadd fast float %260, %250
  %264 = fadd fast float %261, %251
  %265 = fadd fast float %262, %252
  %266 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = call float @dx.op.unary.f32(i32 25, float %266)  ; Rsqrt(value)
  %268 = fmul fast float %263, %267
  %269 = fmul fast float %264, %267
  %270 = fmul fast float %265, %267
  %271 = fsub float %244, %34
  %272 = fsub float %245, %35
  %273 = fsub float %246, %36
  %274 = fdiv float 1.000000e+00, %37
  %275 = fmul float %271, %274
  %276 = fmul float %272, %274
  %277 = fmul float %273, %274
  %278 = fmul float %275, 5.000000e-01
  %279 = fmul float %276, 5.000000e-01
  %280 = fmul float %277, 5.000000e-01
  %281 = fadd float %278, 5.000000e-01
  %282 = fadd float %279, 5.000000e-01
  %283 = fadd float %280, 5.000000e-01
  %284 = call float @dx.op.unary.f32(i32 7, float %281), !dx.precise !17  ; Saturate(value)
  %285 = call float @dx.op.unary.f32(i32 7, float %282), !dx.precise !17  ; Saturate(value)
  %286 = call float @dx.op.unary.f32(i32 7, float %283), !dx.precise !17  ; Saturate(value)
  %287 = fmul float %284, 2.097151e+06
  %288 = fmul float %285, 2.097151e+06
  %289 = fmul float %286, 2.097151e+06
  %290 = fptoui float %287 to i32
  %291 = fptoui float %288 to i32
  %292 = fptoui float %289 to i32
  %293 = shl i32 %291, 21
  %294 = or i32 %293, %290
  %295 = lshr i32 %291, 11
  %296 = shl i32 %292, 10
  %297 = or i32 %296, %295
  %298 = fmul fast float %270, %256
  %299 = fmul fast float %269, %257
  %300 = fsub fast float %298, %299
  %301 = fmul fast float %268, %257
  %302 = fmul fast float %270, %255
  %303 = fsub fast float %301, %302
  %304 = fmul fast float %269, %255
  %305 = fmul fast float %268, %256
  %306 = fsub fast float %304, %305
  %307 = fadd fast float %268, %257
  %308 = fadd fast float %307, %303
  %309 = fcmp fast ogt float %308, 0.000000e+00
  br i1 %309, label %310, label %321, !dx.controlflow.hints !20

; <label>:310                                     ; preds = %243
  %311 = fadd fast float %308, 1.000000e+00
  %312 = fsub fast float %306, %256
  %313 = fsub fast float %255, %270
  %314 = fsub fast float %269, %300
  %315 = call float @dx.op.unary.f32(i32 25, float %311)  ; Rsqrt(value)
  %316 = fmul fast float %315, 5.000000e-01
  %317 = fmul fast float %316, %312
  %318 = fmul fast float %316, %313
  %319 = fmul fast float %316, %314
  %320 = fmul fast float %316, %311
  br label %365

; <label>:321                                     ; preds = %243
  %322 = fcmp fast ogt float %268, %303
  %323 = fcmp fast ogt float %268, %257
  %324 = and i1 %323, %322
  br i1 %324, label %325, label %338, !dx.controlflow.hints !21

; <label>:325                                     ; preds = %321
  %326 = fsub fast float 1.000000e+00, %257
  %327 = fadd fast float %326, %268
  %328 = fsub fast float %327, %303
  %329 = fsub fast float %306, %256
  %330 = fadd fast float %300, %269
  %331 = fadd fast float %270, %255
  %332 = call float @dx.op.unary.f32(i32 25, float %328)  ; Rsqrt(value)
  %333 = fmul fast float %332, 5.000000e-01
  %334 = fmul fast float %333, %328
  %335 = fmul fast float %333, %330
  %336 = fmul fast float %333, %331
  %337 = fmul fast float %333, %329
  br label %365

; <label>:338                                     ; preds = %321
  %339 = fcmp fast ogt float %303, %257
  %340 = fadd fast float %306, %256
  br i1 %339, label %341, label %353, !dx.controlflow.hints !22

; <label>:341                                     ; preds = %338
  %342 = fsub fast float 1.000000e+00, %257
  %343 = fsub fast float %342, %268
  %344 = fadd fast float %343, %303
  %345 = fsub fast float %255, %270
  %346 = fadd fast float %300, %269
  %347 = call float @dx.op.unary.f32(i32 25, float %344)  ; Rsqrt(value)
  %348 = fmul fast float %347, 5.000000e-01
  %349 = fmul fast float %348, %346
  %350 = fmul fast float %348, %344
  %351 = fmul fast float %348, %340
  %352 = fmul fast float %348, %345
  br label %365

; <label>:353                                     ; preds = %338
  %354 = fadd fast float %257, 1.000000e+00
  %355 = fsub fast float %354, %268
  %356 = fsub fast float %355, %303
  %357 = fsub fast float %269, %300
  %358 = fadd fast float %270, %255
  %359 = call float @dx.op.unary.f32(i32 25, float %356)  ; Rsqrt(value)
  %360 = fmul fast float %359, 5.000000e-01
  %361 = fmul fast float %360, %358
  %362 = fmul fast float %360, %340
  %363 = fmul fast float %360, %356
  %364 = fmul fast float %360, %357
  br label %365

; <label>:365                                     ; preds = %353, %341, %325, %310
  %366 = phi float [ %317, %310 ], [ %334, %325 ], [ %349, %341 ], [ %361, %353 ]
  %367 = phi float [ %318, %310 ], [ %335, %325 ], [ %350, %341 ], [ %362, %353 ]
  %368 = phi float [ %319, %310 ], [ %336, %325 ], [ %351, %341 ], [ %363, %353 ]
  %369 = phi float [ %320, %310 ], [ %337, %325 ], [ %352, %341 ], [ %364, %353 ]
  %370 = call float @dx.op.unary.f32(i32 6, float %368)  ; FAbs(value)
  %371 = call float @dx.op.unary.f32(i32 6, float %366)  ; FAbs(value)
  %372 = fcmp fast oge float %370, %371
  %373 = call float @dx.op.unary.f32(i32 6, float %367)  ; FAbs(value)
  %374 = fcmp fast oge float %370, %373
  %375 = and i1 %372, %374
  br i1 %375, label %376, label %379, !dx.controlflow.hints !23

; <label>:376                                     ; preds = %365
  %377 = fcmp fast olt float %368, 0.000000e+00
  %378 = select i1 %377, float 5.000000e+00, float 4.000000e+00
  br label %387

; <label>:379                                     ; preds = %365
  %380 = fcmp fast ult float %373, %371
  br i1 %380, label %384, label %381, !dx.controlflow.hints !24

; <label>:381                                     ; preds = %379
  %382 = fcmp fast olt float %367, 0.000000e+00
  %383 = select i1 %382, float 3.000000e+00, float 2.000000e+00
  br label %387

; <label>:384                                     ; preds = %379
  %385 = fcmp fast olt float %366, 0.000000e+00
  %386 = select i1 %385, float 1.000000e+00, float 0.000000e+00
  br label %387

; <label>:387                                     ; preds = %384, %381, %376
  %388 = phi float [ %378, %376 ], [ %383, %381 ], [ %386, %384 ]
  %389 = fmul fast float %388, 5.000000e-01
  %390 = fptoui float %389 to i32
  %391 = call float @dx.op.unary.f32(i32 6, float %369)  ; FAbs(value)
  %392 = call float @dx.op.binary.f32(i32 35, float %373, float %370)  ; FMax(a,b)
  %393 = call float @dx.op.binary.f32(i32 35, float %371, float %392)  ; FMax(a,b)
  %394 = fcmp fast ogt float %391, %393
  %395 = select i1 %394, i32 3, i32 %390
  %396 = icmp eq i32 %395, 0
  %397 = select i1 %396, float %367, float %366
  %398 = select i1 %396, float %368, float %367
  %399 = select i1 %396, float %369, float %368
  %400 = select i1 %396, float %366, float %369
  %401 = icmp eq i32 %395, 1
  %402 = select i1 %401, float %399, float %398
  %403 = select i1 %401, float %400, float %399
  %404 = select i1 %401, float %398, float %400
  %405 = icmp eq i32 %395, 2
  %406 = select i1 %405, float %404, float %403
  %407 = select i1 %405, float %403, float %404
  %408 = fcmp fast ogt float %407, 0.000000e+00
  %409 = select i1 %408, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %410 = fmul fast float %409, %397
  %411 = fmul fast float %409, %402
  %412 = fmul fast float %409, %406
  %413 = fadd fast float %410, 1.000000e+00
  %414 = fmul fast float %413, 5.000000e-01
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fmul fast float %415, 1.023000e+03
  %417 = fptoui float %416 to i32
  %418 = fadd fast float %411, 1.000000e+00
  %419 = fmul fast float %418, 5.000000e-01
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fmul fast float %420, 1.023000e+03
  %422 = fptoui float %421 to i32
  %423 = fadd fast float %412, 1.000000e+00
  %424 = fmul fast float %423, 5.000000e-01
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, 5.110000e+02
  %427 = fptoui float %426 to i32
  %428 = shl i32 %422, 10
  %429 = shl i32 %427, 20
  %430 = fcmp fast ogt float %100, 0.000000e+00
  %431 = select i1 %430, i32 0, i32 536870912
  %432 = shl i32 %395, 30
  %433 = or i32 %417, %431
  %434 = or i32 %433, %432
  %435 = or i32 %434, %428
  %436 = or i32 %435, %429
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %59, i32 undef, i32 %294, i32 %297, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %64, i32 undef, i32 %436, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %437

; <label>:437                                     ; preds = %387, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!4 = !{!5, !9, null, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{void ()* @cs_blendshapes_unified_main, !"cs_blendshapes_unified_main", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = !{i32 1}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

