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
; shader hash: e6450f6e3d13ec3b344dbe252cf9ffce
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture    byte         r/o      T2             t3     1
;                                   texture    byte         r/o      T3             t4     1
;                                   texture    byte         r/o      T4             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<UDQ>" = type { %struct.UDQ }
%struct.UDQ = type { <4 x float>, <4 x float> }
%struct.RWByteAddressBuffer = type { i32 }

define void @cs_skinning_weight_blend_unified_unpacked_positions_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %8 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %9 = shl i32 %7, 3
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %9, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = extractvalue %dx.types.ResRet.i32 %10, 1
  %13 = and i32 %11, 65535
  %14 = mul nuw nsw i32 %13, 144
  %15 = lshr i32 %11, 16
  %16 = and i32 %12, 65535
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = extractvalue %dx.types.ResRet.i32 %17, 1
  %20 = extractvalue %dx.types.ResRet.i32 %17, 2
  %21 = extractvalue %dx.types.ResRet.i32 %17, 3
  %22 = icmp ne i32 %18, -1
  %23 = select i1 %22, i32 %18, i32 0
  %24 = add nuw nsw i32 %14, 16
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = extractvalue %dx.types.ResRet.i32 %25, 1
  %28 = extractvalue %dx.types.ResRet.i32 %25, 2
  %29 = and i32 %26, 2147483647
  %30 = add nuw nsw i32 %14, 32
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = extractvalue %dx.types.ResRet.i32 %31, 1
  %34 = extractvalue %dx.types.ResRet.i32 %31, 2
  %35 = extractvalue %dx.types.ResRet.i32 %31, 3
  %36 = bitcast i32 %32 to float
  %37 = bitcast i32 %33 to float
  %38 = bitcast i32 %34 to float
  %39 = bitcast i32 %35 to float
  %40 = add nuw nsw i32 %14, 48
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = bitcast i32 %42 to float
  %46 = bitcast i32 %43 to float
  %47 = bitcast i32 %44 to float
  %48 = add nuw nsw i32 %14, 64
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = extractvalue %dx.types.ResRet.i32 %49, 3
  %54 = bitcast i32 %50 to float
  %55 = bitcast i32 %51 to float
  %56 = bitcast i32 %52 to float
  %57 = bitcast i32 %53 to float
  %58 = shl nuw nsw i32 %16, 3
  %59 = add nuw nsw i32 %58, 72
  %60 = add nuw nsw i32 %59, %14
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = icmp ult i32 %8, %15
  br i1 %63, label %64, label %819, !dx.controlflow.hints !17

; <label>:64                                      ; preds = %0
  %65 = extractvalue %dx.types.ResRet.i32 %61, 1
  %66 = lshr i32 %12, 16
  %67 = add i32 %66, %8
  %68 = add i32 %65, %67
  %69 = shl i32 %68, 2
  %70 = lshr i32 %68, 8
  %71 = and i32 %70, 4194303
  %72 = add i32 %71, %21
  %73 = shl i32 %72, 2
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = shl i32 %75, 10
  %77 = and i32 %69, 1020
  %78 = or i32 %76, %77
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = and i32 %80, 65535
  %82 = add i32 %81, %23
  %83 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %82, i32 0)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = extractvalue %dx.types.ResRet.f32 %83, 3
  %88 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %82, i32 16)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = extractvalue %dx.types.ResRet.f32 %88, 1
  %91 = extractvalue %dx.types.ResRet.f32 %88, 2
  %92 = extractvalue %dx.types.ResRet.f32 %88, 3
  %93 = icmp slt i32 %26, 0
  %94 = shl i32 %67, 3
  %95 = shl i32 %67, 2
  br i1 %93, label %96, label %104, !dx.controlflow.hints !18

; <label>:96                                      ; preds = %64
  %97 = add i32 %29, %94
  %98 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.i32 %98, 0
  %100 = extractvalue %dx.types.ResRet.i32 %98, 1
  %101 = add i32 %27, %95
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  br label %128

; <label>:104                                     ; preds = %64
  %105 = lshr i32 %67, 7
  %106 = and i32 %105, 4194303
  %107 = add i32 %106, %19
  %108 = shl i32 %107, 2
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = shl i32 %110, 10
  %112 = and i32 %94, 1016
  %113 = or i32 %111, %112
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = extractvalue %dx.types.ResRet.i32 %114, 1
  %117 = lshr i32 %67, 8
  %118 = and i32 %117, 4194303
  %119 = add i32 %118, %20
  %120 = shl i32 %119, 2
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = shl i32 %122, 10
  %124 = and i32 %95, 1020
  %125 = or i32 %123, %124
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  br label %128

; <label>:128                                     ; preds = %104, %96
  %129 = phi i32 [ %99, %96 ], [ %115, %104 ]
  %130 = phi i32 [ %100, %96 ], [ %116, %104 ]
  %131 = phi i32 [ %103, %96 ], [ %127, %104 ]
  %132 = and i32 %129, 2097151
  %133 = uitofp i32 %132 to float
  %134 = lshr i32 %129, 21
  %135 = shl i32 %130, 11
  %136 = and i32 %135, 2095104
  %137 = or i32 %136, %134
  %138 = uitofp i32 %137 to float
  %139 = lshr i32 %130, 10
  %140 = and i32 %139, 2097151
  %141 = uitofp i32 %140 to float
  %142 = fdiv float %133, 2.097151e+06
  %143 = fdiv float %138, 2.097151e+06
  %144 = fdiv float %141, 2.097151e+06
  %145 = fmul float %142, 2.000000e+00
  %146 = fmul float %143, 2.000000e+00
  %147 = fmul float %144, 2.000000e+00
  %148 = fadd float %145, -1.000000e+00
  %149 = fadd float %146, -1.000000e+00
  %150 = fadd float %147, -1.000000e+00
  %151 = fmul float %39, %148
  %152 = fmul float %39, %149
  %153 = fmul float %39, %150
  %154 = fadd float %36, %151
  %155 = fadd float %37, %152
  %156 = fadd float %38, %153
  %157 = lshr i32 %131, 30
  %158 = and i32 %131, 1023
  %159 = uitofp i32 %158 to float
  %160 = lshr i32 %131, 10
  %161 = and i32 %160, 1023
  %162 = uitofp i32 %161 to float
  %163 = lshr i32 %131, 20
  %164 = and i32 %163, 511
  %165 = uitofp i32 %164 to float
  %166 = fmul fast float %159, 0x3F56A64800000000
  %167 = fadd fast float %166, 0xBFE6A09E60000000
  %168 = fmul fast float %162, 0x3F56A64800000000
  %169 = fadd fast float %168, 0xBFE6A09E60000000
  %170 = fmul fast float %165, 0x3F66ABF460000000
  %171 = fadd fast float %170, 0xBFE6A09E60000000
  %172 = call float @dx.op.dot3.f32(i32 55, float %167, float %169, float %171, float %167, float %169, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = fsub fast float 1.000000e+00, %173
  %175 = call float @dx.op.unary.f32(i32 24, float %174)  ; Sqrt(value)
  %176 = icmp eq i32 %157, 0
  br i1 %176, label %183, label %177, !dx.controlflow.hints !19

; <label>:177                                     ; preds = %128
  %178 = icmp eq i32 %157, 1
  br i1 %178, label %183, label %179, !dx.controlflow.hints !20

; <label>:179                                     ; preds = %177
  %180 = icmp eq i32 %157, 2
  %181 = select i1 %180, float %175, float %171
  %182 = select i1 %180, float %171, float %175
  br label %183

; <label>:183                                     ; preds = %179, %177, %128
  %184 = phi float [ %175, %128 ], [ %167, %177 ], [ %167, %179 ]
  %185 = phi float [ %167, %128 ], [ %175, %177 ], [ %169, %179 ]
  %186 = phi float [ %169, %128 ], [ %169, %177 ], [ %181, %179 ]
  %187 = phi float [ %171, %128 ], [ %171, %177 ], [ %182, %179 ]
  %188 = and i32 %131, 536870912
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float -1.000000e+00, float 1.000000e+00
  %191 = lshr i32 %80, 16
  %192 = uitofp i32 %191 to float
  %193 = fdiv float %192, 6.553500e+04
  %194 = icmp ugt i32 %16, 1
  br i1 %194, label %195, label %379

; <label>:195                                     ; preds = %183
  %196 = and i32 %12, 65535
  br label %197

; <label>:197                                     ; preds = %368, %195
  %198 = phi float [ %261, %368 ], [ 0.000000e+00, %195 ]
  %199 = phi float [ %262, %368 ], [ 0.000000e+00, %195 ]
  %200 = phi float [ %263, %368 ], [ 0.000000e+00, %195 ]
  %201 = phi float [ %264, %368 ], [ 0.000000e+00, %195 ]
  %202 = phi float [ %253, %368 ], [ 0.000000e+00, %195 ]
  %203 = phi float [ %254, %368 ], [ 0.000000e+00, %195 ]
  %204 = phi float [ %255, %368 ], [ 0.000000e+00, %195 ]
  %205 = phi float [ %256, %368 ], [ 0.000000e+00, %195 ]
  %206 = phi float [ %234, %368 ], [ 0.000000e+00, %195 ]
  %207 = phi float [ %369, %368 ], [ 0.000000e+00, %195 ]
  %208 = phi float [ %370, %368 ], [ 0.000000e+00, %195 ]
  %209 = phi float [ %371, %368 ], [ 0.000000e+00, %195 ]
  %210 = phi float [ %372, %368 ], [ 0.000000e+00, %195 ]
  %211 = phi float [ %373, %368 ], [ 0.000000e+00, %195 ]
  %212 = phi float [ %374, %368 ], [ 0.000000e+00, %195 ]
  %213 = phi float [ %375, %368 ], [ 0.000000e+00, %195 ]
  %214 = phi i32 [ %376, %368 ], [ 1, %195 ]
  %215 = mul i32 %214, %62
  %216 = add i32 %68, %215
  %217 = shl i32 %216, 2
  %218 = lshr i32 %216, 8
  %219 = and i32 %218, 4194303
  %220 = add i32 %219, %21
  %221 = shl i32 %220, 2
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = shl i32 %223, 10
  %225 = and i32 %217, 1020
  %226 = or i32 %224, %225
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = lshr i32 %228, 16
  %231 = uitofp i32 %230 to float
  %232 = fmul float %231, 0x3EF0000000000000
  %233 = add i32 %229, %23
  %234 = fadd float %206, %232
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %233, i32 0)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = extractvalue %dx.types.ResRet.f32 %235, 3
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %233, i32 16)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = call float @dx.op.dot4.f32(i32 56, float %84, float %85, float %86, float %87, float %236, float %237, float %238, float %239), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %246 = fcmp olt float %245, 0.000000e+00
  %247 = fsub float -0.000000e+00, %232
  %248 = select i1 %246, float %247, float %232
  %249 = fmul float %236, %248
  %250 = fmul float %237, %248
  %251 = fmul float %238, %248
  %252 = fmul float %239, %248
  %253 = fadd float %202, %249
  %254 = fadd float %203, %250
  %255 = fadd float %204, %251
  %256 = fadd float %205, %252
  %257 = fmul float %241, %248
  %258 = fmul float %242, %248
  %259 = fmul float %243, %248
  %260 = fmul float %244, %248
  %261 = fadd float %198, %257
  %262 = fadd float %199, %258
  %263 = fadd float %200, %259
  %264 = fadd float %201, %260
  %265 = fcmp une float %193, 0.000000e+00
  br i1 %265, label %266, label %368, !dx.controlflow.hints !22

; <label>:266                                     ; preds = %197
  %267 = fsub float -0.000000e+00, %236
  %268 = fsub float -0.000000e+00, %237
  %269 = fsub float -0.000000e+00, %238
  %270 = fmul float %244, %267
  %271 = fmul float %244, %268
  %272 = fmul float %244, %269
  %273 = fmul float %239, %241
  %274 = fmul float %239, %242
  %275 = fmul float %239, %243
  %276 = fadd float %270, %273
  %277 = fadd float %271, %274
  %278 = fadd float %272, %275
  %279 = fmul float %242, %269
  %280 = fmul float %243, %268
  %281 = fsub float %279, %280
  %282 = fmul float %243, %267
  %283 = fmul float %241, %269
  %284 = fsub float %282, %283
  %285 = fmul float %241, %268
  %286 = fmul float %242, %267
  %287 = fsub float %285, %286
  %288 = fadd float %276, %281
  %289 = fadd float %277, %284
  %290 = fadd float %278, %287
  %291 = fmul float %288, 2.000000e+00
  %292 = fmul float %289, 2.000000e+00
  %293 = fmul float %290, 2.000000e+00
  %294 = fmul float %156, %237
  %295 = fmul float %155, %238
  %296 = fsub float %294, %295
  %297 = fmul float %154, %238
  %298 = fmul float %156, %236
  %299 = fsub float %297, %298
  %300 = fmul float %155, %236
  %301 = fmul float %154, %237
  %302 = fsub float %300, %301
  %303 = fmul float %296, 2.000000e+00
  %304 = fmul float %299, 2.000000e+00
  %305 = fmul float %302, 2.000000e+00
  %306 = fmul float %239, %303
  %307 = fmul float %239, %304
  %308 = fmul float %239, %305
  %309 = fadd float %154, %306
  %310 = fadd float %155, %307
  %311 = fadd float %156, %308
  %312 = fmul float %237, %305
  %313 = fmul float %238, %304
  %314 = fsub float %312, %313
  %315 = fmul float %238, %303
  %316 = fmul float %236, %305
  %317 = fsub float %315, %316
  %318 = fmul float %236, %304
  %319 = fmul float %237, %303
  %320 = fsub float %318, %319
  %321 = fadd float %309, %314
  %322 = fadd float %310, %317
  %323 = fadd float %311, %320
  %324 = fadd float %291, %321
  %325 = fadd float %292, %322
  %326 = fadd float %293, %323
  %327 = fmul float %232, %324
  %328 = fmul float %232, %325
  %329 = fmul float %232, %326
  %330 = fadd float %211, %327
  %331 = fadd float %212, %328
  %332 = fadd float %213, %329
  %333 = fmul fast float %239, %184
  %334 = fmul fast float %239, %185
  %335 = fmul fast float %239, %186
  %336 = fmul fast float %236, %187
  %337 = fmul fast float %237, %187
  %338 = fmul fast float %238, %187
  %339 = fadd fast float %333, %336
  %340 = fadd fast float %334, %337
  %341 = fadd fast float %335, %338
  %342 = fmul fast float %237, %186
  %343 = fmul fast float %238, %185
  %344 = fsub fast float %342, %343
  %345 = fmul fast float %238, %184
  %346 = fmul fast float %236, %186
  %347 = fsub fast float %345, %346
  %348 = fmul fast float %236, %185
  %349 = fmul fast float %237, %184
  %350 = fsub fast float %348, %349
  %351 = fadd fast float %339, %344
  %352 = fadd fast float %340, %347
  %353 = fadd fast float %341, %350
  %354 = fmul fast float %239, %187
  %355 = call float @dx.op.dot3.f32(i32 55, float %236, float %237, float %238, float %184, float %185, float %186)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fsub fast float %354, %355
  %357 = call float @dx.op.dot4.f32(i32 56, float %207, float %208, float %209, float %210, float %351, float %352, float %353, float %356)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %358 = fcmp fast olt float %357, 0.000000e+00
  %359 = select i1 %358, float %247, float %232
  %360 = fmul fast float %359, %351
  %361 = fmul fast float %359, %352
  %362 = fmul fast float %359, %353
  %363 = fmul fast float %359, %356
  %364 = fadd fast float %360, %207
  %365 = fadd fast float %361, %208
  %366 = fadd fast float %362, %209
  %367 = fadd fast float %363, %210
  br label %368

; <label>:368                                     ; preds = %266, %197
  %369 = phi float [ %364, %266 ], [ %207, %197 ]
  %370 = phi float [ %365, %266 ], [ %208, %197 ]
  %371 = phi float [ %366, %266 ], [ %209, %197 ]
  %372 = phi float [ %367, %266 ], [ %210, %197 ]
  %373 = phi float [ %330, %266 ], [ %211, %197 ]
  %374 = phi float [ %331, %266 ], [ %212, %197 ]
  %375 = phi float [ %332, %266 ], [ %213, %197 ]
  %376 = add nuw nsw i32 %214, 1
  %377 = icmp eq i32 %376, %196
  br i1 %377, label %378, label %197, !llvm.loop !23

; <label>:378                                     ; preds = %368
  br label %379

; <label>:379                                     ; preds = %378, %183
  %380 = phi float [ 0.000000e+00, %183 ], [ %261, %378 ]
  %381 = phi float [ 0.000000e+00, %183 ], [ %262, %378 ]
  %382 = phi float [ 0.000000e+00, %183 ], [ %263, %378 ]
  %383 = phi float [ 0.000000e+00, %183 ], [ %264, %378 ]
  %384 = phi float [ 0.000000e+00, %183 ], [ %253, %378 ]
  %385 = phi float [ 0.000000e+00, %183 ], [ %254, %378 ]
  %386 = phi float [ 0.000000e+00, %183 ], [ %255, %378 ]
  %387 = phi float [ 0.000000e+00, %183 ], [ %256, %378 ]
  %388 = phi float [ 0.000000e+00, %183 ], [ %234, %378 ]
  %389 = phi float [ 0.000000e+00, %183 ], [ %369, %378 ]
  %390 = phi float [ 0.000000e+00, %183 ], [ %370, %378 ]
  %391 = phi float [ 0.000000e+00, %183 ], [ %371, %378 ]
  %392 = phi float [ 0.000000e+00, %183 ], [ %372, %378 ]
  %393 = phi float [ 0.000000e+00, %183 ], [ %373, %378 ]
  %394 = phi float [ 0.000000e+00, %183 ], [ %374, %378 ]
  %395 = phi float [ 0.000000e+00, %183 ], [ %375, %378 ]
  %396 = fsub float 1.000000e+00, %388
  %397 = fmul float %84, %396
  %398 = fmul float %85, %396
  %399 = fmul float %86, %396
  %400 = fmul float %87, %396
  %401 = fadd float %384, %397
  %402 = fadd float %385, %398
  %403 = fadd float %386, %399
  %404 = fadd float %387, %400
  %405 = fmul float %89, %396
  %406 = fmul float %90, %396
  %407 = fmul float %91, %396
  %408 = fmul float %92, %396
  %409 = fadd float %380, %405
  %410 = fadd float %381, %406
  %411 = fadd float %382, %407
  %412 = fadd float %383, %408
  %413 = call float @dx.op.dot4.f32(i32 56, float %401, float %402, float %403, float %404, float %401, float %402, float %403, float %404), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %414 = call float @dx.op.unary.f32(i32 24, float %413), !dx.precise !21  ; Sqrt(value)
  %415 = fdiv float 1.000000e+00, %414
  %416 = fmul float %404, %415
  %417 = fmul float %401, %415
  %418 = fmul float %402, %415
  %419 = fmul float %403, %415
  %420 = fmul float %412, %415
  %421 = fmul float %409, %415
  %422 = fmul float %410, %415
  %423 = fmul float %411, %415
  %424 = fmul float %156, %418
  %425 = fmul float %155, %419
  %426 = fsub float %424, %425
  %427 = fmul float %154, %419
  %428 = fmul float %156, %417
  %429 = fsub float %427, %428
  %430 = fmul float %155, %417
  %431 = fmul float %154, %418
  %432 = fsub float %430, %431
  %433 = fmul float %154, %416
  %434 = fmul float %155, %416
  %435 = fmul float %156, %416
  %436 = fadd float %433, %426
  %437 = fadd float %434, %429
  %438 = fadd float %435, %432
  %439 = fmul float %421, %416
  %440 = fmul float %422, %416
  %441 = fmul float %423, %416
  %442 = fmul float %417, %420
  %443 = fmul float %418, %420
  %444 = fmul float %419, %420
  %445 = fsub float %439, %442
  %446 = fsub float %440, %443
  %447 = fsub float %441, %444
  %448 = fmul float %418, %423
  %449 = fmul float %419, %422
  %450 = fsub float %448, %449
  %451 = fmul float %419, %421
  %452 = fmul float %417, %423
  %453 = fsub float %451, %452
  %454 = fmul float %417, %422
  %455 = fmul float %418, %421
  %456 = fsub float %454, %455
  %457 = fadd float %445, %450
  %458 = fadd float %446, %453
  %459 = fadd float %447, %456
  %460 = fmul float %457, 2.000000e+00
  %461 = fmul float %458, 2.000000e+00
  %462 = fmul float %459, 2.000000e+00
  %463 = fadd float %154, %460
  %464 = fadd float %155, %461
  %465 = fadd float %156, %462
  %466 = fmul float %417, 2.000000e+00
  %467 = fmul float %418, 2.000000e+00
  %468 = fmul float %419, 2.000000e+00
  %469 = fmul float %467, %438
  %470 = fmul float %468, %437
  %471 = fsub float %469, %470
  %472 = fmul float %468, %436
  %473 = fmul float %466, %438
  %474 = fsub float %472, %473
  %475 = fmul float %466, %437
  %476 = fmul float %467, %436
  %477 = fsub float %475, %476
  %478 = fadd float %463, %471
  %479 = fadd float %464, %474
  %480 = fadd float %465, %477
  %481 = fmul fast float %416, %184
  %482 = fmul fast float %416, %185
  %483 = fmul fast float %416, %186
  %484 = fmul fast float %417, %187
  %485 = fmul fast float %418, %187
  %486 = fmul fast float %419, %187
  %487 = fadd fast float %481, %484
  %488 = fadd fast float %482, %485
  %489 = fadd fast float %483, %486
  %490 = fmul fast float %418, %186
  %491 = fmul fast float %419, %185
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %419, %184
  %494 = fmul fast float %417, %186
  %495 = fsub fast float %493, %494
  %496 = fmul fast float %417, %185
  %497 = fmul fast float %418, %184
  %498 = fsub fast float %496, %497
  %499 = fadd fast float %487, %492
  %500 = fadd fast float %488, %495
  %501 = fadd fast float %489, %498
  %502 = fmul fast float %416, %187
  %503 = call float @dx.op.dot3.f32(i32 55, float %417, float %418, float %419, float %184, float %185, float %186)  ; Dot3(ax,ay,az,bx,by,bz)
  %504 = fsub fast float %502, %503
  %505 = fcmp une float %193, 0.000000e+00
  br i1 %505, label %506, label %646, !dx.controlflow.hints !25

; <label>:506                                     ; preds = %379
  %507 = fsub float -0.000000e+00, %84
  %508 = fsub float -0.000000e+00, %85
  %509 = fsub float -0.000000e+00, %86
  %510 = fmul float %92, %507
  %511 = fmul float %92, %508
  %512 = fmul float %92, %509
  %513 = fmul float %87, %89
  %514 = fmul float %87, %90
  %515 = fmul float %87, %91
  %516 = fadd float %510, %513
  %517 = fadd float %511, %514
  %518 = fadd float %512, %515
  %519 = fmul float %90, %509
  %520 = fmul float %91, %508
  %521 = fsub float %519, %520
  %522 = fmul float %91, %507
  %523 = fmul float %89, %509
  %524 = fsub float %522, %523
  %525 = fmul float %89, %508
  %526 = fmul float %90, %507
  %527 = fsub float %525, %526
  %528 = fadd float %516, %521
  %529 = fadd float %517, %524
  %530 = fadd float %518, %527
  %531 = fmul float %528, 2.000000e+00
  %532 = fmul float %529, 2.000000e+00
  %533 = fmul float %530, 2.000000e+00
  %534 = fmul float %85, %156
  %535 = fmul float %86, %155
  %536 = fsub float %534, %535
  %537 = fmul float %86, %154
  %538 = fmul float %84, %156
  %539 = fsub float %537, %538
  %540 = fmul float %84, %155
  %541 = fmul float %85, %154
  %542 = fsub float %540, %541
  %543 = fmul float %536, 2.000000e+00
  %544 = fmul float %539, 2.000000e+00
  %545 = fmul float %542, 2.000000e+00
  %546 = fmul float %87, %543
  %547 = fmul float %87, %544
  %548 = fmul float %87, %545
  %549 = fadd float %154, %546
  %550 = fadd float %155, %547
  %551 = fadd float %156, %548
  %552 = fmul float %85, %545
  %553 = fmul float %86, %544
  %554 = fsub float %552, %553
  %555 = fmul float %86, %543
  %556 = fmul float %84, %545
  %557 = fsub float %555, %556
  %558 = fmul float %84, %544
  %559 = fmul float %85, %543
  %560 = fsub float %558, %559
  %561 = fadd float %549, %554
  %562 = fadd float %550, %557
  %563 = fadd float %551, %560
  %564 = fadd float %531, %561
  %565 = fadd float %532, %562
  %566 = fadd float %533, %563
  %567 = fmul float %564, %396
  %568 = fmul float %565, %396
  %569 = fmul float %566, %396
  %570 = fadd float %567, %393
  %571 = fadd float %568, %394
  %572 = fadd float %569, %395
  %573 = fmul fast float %184, %87
  %574 = fmul fast float %185, %87
  %575 = fmul fast float %186, %87
  %576 = fmul fast float %187, %84
  %577 = fmul fast float %187, %85
  %578 = fmul fast float %187, %86
  %579 = fadd fast float %576, %573
  %580 = fadd fast float %577, %574
  %581 = fmul fast float %186, %85
  %582 = fmul fast float %185, %86
  %583 = fsub fast float %581, %582
  %584 = fmul fast float %184, %86
  %585 = fmul fast float %186, %84
  %586 = fsub fast float %584, %585
  %587 = fmul fast float %185, %84
  %588 = fmul fast float %184, %85
  %589 = fsub fast float %587, %588
  %590 = fadd fast float %579, %583
  %591 = fadd fast float %580, %586
  %592 = fadd fast float %589, %575
  %593 = fadd fast float %592, %578
  %594 = fmul fast float %187, %87
  %595 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %184, float %185, float %186)  ; Dot3(ax,ay,az,bx,by,bz)
  %596 = fsub fast float %594, %595
  %597 = call float @dx.op.dot4.f32(i32 56, float %389, float %390, float %391, float %392, float %590, float %591, float %593, float %596)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %598 = fcmp fast olt float %597, 0.000000e+00
  %599 = fsub fast float -0.000000e+00, %396
  %600 = select i1 %598, float %599, float %396
  %601 = fmul fast float %600, %590
  %602 = fmul fast float %600, %591
  %603 = fmul fast float %600, %593
  %604 = fmul fast float %600, %596
  %605 = fadd fast float %601, %389
  %606 = fadd fast float %602, %390
  %607 = fadd fast float %603, %391
  %608 = fadd fast float %604, %392
  %609 = fsub float %570, %478
  %610 = fsub float %571, %479
  %611 = fsub float %572, %480
  %612 = fmul float %193, %609
  %613 = fmul float %193, %610
  %614 = fmul float %193, %611
  %615 = fadd float %478, %612
  %616 = fadd float %479, %613
  %617 = fadd float %480, %614
  %618 = call float @dx.op.dot4.f32(i32 56, float %605, float %606, float %607, float %608, float %499, float %500, float %501, float %504)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %619 = fcmp fast olt float %618, 0.000000e+00
  %620 = fsub fast float -0.000000e+00, %605
  %621 = fsub fast float -0.000000e+00, %606
  %622 = fsub fast float -0.000000e+00, %607
  %623 = fsub fast float -0.000000e+00, %608
  %624 = select i1 %619, float %620, float %605
  %625 = select i1 %619, float %621, float %606
  %626 = select i1 %619, float %622, float %607
  %627 = select i1 %619, float %623, float %608
  %628 = fsub fast float %624, %499
  %629 = fsub fast float %625, %500
  %630 = fsub fast float %626, %501
  %631 = fsub fast float %627, %504
  %632 = fmul fast float %628, %193
  %633 = fmul fast float %629, %193
  %634 = fmul fast float %630, %193
  %635 = fmul fast float %631, %193
  %636 = fadd fast float %632, %499
  %637 = fadd fast float %633, %500
  %638 = fadd fast float %634, %501
  %639 = fadd fast float %635, %504
  %640 = call float @dx.op.dot4.f32(i32 56, float %636, float %637, float %638, float %639, float %636, float %637, float %638, float %639)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %641 = call float @dx.op.unary.f32(i32 25, float %640)  ; Rsqrt(value)
  %642 = fmul fast float %636, %641
  %643 = fmul fast float %637, %641
  %644 = fmul fast float %638, %641
  %645 = fmul fast float %639, %641
  br label %646

; <label>:646                                     ; preds = %506, %379
  %647 = phi float [ %642, %506 ], [ %499, %379 ]
  %648 = phi float [ %643, %506 ], [ %500, %379 ]
  %649 = phi float [ %644, %506 ], [ %501, %379 ]
  %650 = phi float [ %645, %506 ], [ %504, %379 ]
  %651 = phi float [ %615, %506 ], [ %478, %379 ]
  %652 = phi float [ %616, %506 ], [ %479, %379 ]
  %653 = phi float [ %617, %506 ], [ %480, %379 ]
  %654 = fsub float %651, %45
  %655 = fsub float %652, %46
  %656 = fsub float %653, %47
  %657 = fmul float %55, %656
  %658 = fmul float %56, %655
  %659 = fsub float %657, %658
  %660 = fmul float %56, %654
  %661 = fmul float %54, %656
  %662 = fsub float %660, %661
  %663 = fmul float %54, %655
  %664 = fmul float %55, %654
  %665 = fsub float %663, %664
  %666 = fmul float %659, 2.000000e+00
  %667 = fmul float %662, 2.000000e+00
  %668 = fmul float %665, 2.000000e+00
  %669 = fmul float %57, %666
  %670 = fmul float %57, %667
  %671 = fmul float %57, %668
  %672 = fsub float %654, %669
  %673 = fsub float %655, %670
  %674 = fsub float %656, %671
  %675 = fmul float %55, %668
  %676 = fmul float %56, %667
  %677 = fsub float %675, %676
  %678 = fmul float %56, %666
  %679 = fmul float %54, %668
  %680 = fsub float %678, %679
  %681 = fmul float %54, %667
  %682 = fmul float %55, %666
  %683 = fsub float %681, %682
  %684 = fadd float %672, %677
  %685 = fadd float %673, %680
  %686 = fadd float %674, %683
  %687 = fsub fast float -0.000000e+00, %54
  %688 = fsub fast float -0.000000e+00, %55
  %689 = fsub fast float -0.000000e+00, %56
  %690 = fmul fast float %647, %57
  %691 = fmul fast float %648, %57
  %692 = fmul fast float %649, %57
  %693 = fmul fast float %650, %687
  %694 = fmul fast float %650, %688
  %695 = fmul fast float %650, %689
  %696 = fadd fast float %693, %690
  %697 = fadd fast float %694, %691
  %698 = fmul fast float %649, %688
  %699 = fmul fast float %648, %689
  %700 = fsub fast float %698, %699
  %701 = fmul fast float %647, %689
  %702 = fmul fast float %649, %687
  %703 = fsub fast float %701, %702
  %704 = fmul fast float %648, %687
  %705 = fmul fast float %647, %688
  %706 = fsub fast float %704, %705
  %707 = fadd fast float %696, %700
  %708 = fadd fast float %697, %703
  %709 = fadd fast float %706, %692
  %710 = fadd fast float %709, %695
  %711 = fmul fast float %650, %57
  %712 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %647, float %648, float %649)  ; Dot3(ax,ay,az,bx,by,bz)
  %713 = fsub fast float %711, %712
  %714 = fsub float %684, %36
  %715 = fsub float %685, %37
  %716 = fsub float %686, %38
  %717 = fdiv float 1.000000e+00, %39
  %718 = fmul float %717, %714
  %719 = fmul float %717, %715
  %720 = fmul float %717, %716
  %721 = fmul float %718, 5.000000e-01
  %722 = fmul float %719, 5.000000e-01
  %723 = fmul float %720, 5.000000e-01
  %724 = fadd float %721, 5.000000e-01
  %725 = fadd float %722, 5.000000e-01
  %726 = fadd float %723, 5.000000e-01
  %727 = call float @dx.op.unary.f32(i32 7, float %724), !dx.precise !21  ; Saturate(value)
  %728 = call float @dx.op.unary.f32(i32 7, float %725), !dx.precise !21  ; Saturate(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %726), !dx.precise !21  ; Saturate(value)
  %730 = fmul float %727, 2.097151e+06
  %731 = fmul float %728, 2.097151e+06
  %732 = fmul float %729, 2.097151e+06
  %733 = fptoui float %730 to i32
  %734 = fptoui float %731 to i32
  %735 = fptoui float %732 to i32
  %736 = shl i32 %734, 21
  %737 = or i32 %736, %733
  %738 = lshr i32 %734, 11
  %739 = shl i32 %735, 10
  %740 = or i32 %739, %738
  %741 = call float @dx.op.unary.f32(i32 6, float %710)  ; FAbs(value)
  %742 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %743 = fcmp fast oge float %741, %742
  %744 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  %745 = fcmp fast oge float %741, %744
  %746 = and i1 %743, %745
  br i1 %746, label %747, label %750, !dx.controlflow.hints !26

; <label>:747                                     ; preds = %646
  %748 = fcmp fast olt float %710, 0.000000e+00
  %749 = select i1 %748, float 5.000000e+00, float 4.000000e+00
  br label %758

; <label>:750                                     ; preds = %646
  %751 = fcmp fast ult float %744, %742
  br i1 %751, label %755, label %752, !dx.controlflow.hints !27

; <label>:752                                     ; preds = %750
  %753 = fcmp fast olt float %708, 0.000000e+00
  %754 = select i1 %753, float 3.000000e+00, float 2.000000e+00
  br label %758

; <label>:755                                     ; preds = %750
  %756 = fcmp fast olt float %707, 0.000000e+00
  %757 = select i1 %756, float 1.000000e+00, float 0.000000e+00
  br label %758

; <label>:758                                     ; preds = %755, %752, %747
  %759 = phi float [ %749, %747 ], [ %754, %752 ], [ %757, %755 ]
  %760 = fmul fast float %759, 5.000000e-01
  %761 = fptoui float %760 to i32
  %762 = call float @dx.op.unary.f32(i32 6, float %713)  ; FAbs(value)
  %763 = call float @dx.op.binary.f32(i32 35, float %744, float %741)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %742, float %763)  ; FMax(a,b)
  %765 = fcmp fast ogt float %762, %764
  %766 = select i1 %765, i32 3, i32 %761
  %767 = icmp eq i32 %766, 0
  %768 = select i1 %767, float %708, float %707
  %769 = select i1 %767, float %710, float %708
  %770 = select i1 %767, float %713, float %710
  %771 = select i1 %767, float %707, float %713
  %772 = icmp eq i32 %766, 1
  %773 = select i1 %772, float %770, float %769
  %774 = select i1 %772, float %771, float %770
  %775 = select i1 %772, float %769, float %771
  %776 = icmp eq i32 %766, 2
  %777 = select i1 %776, float %775, float %774
  %778 = select i1 %776, float %774, float %775
  %779 = fcmp fast ogt float %778, 0.000000e+00
  %780 = select i1 %779, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %781 = fmul fast float %780, %768
  %782 = fmul fast float %780, %773
  %783 = fmul fast float %780, %777
  %784 = fadd fast float %781, 1.000000e+00
  %785 = fmul fast float %784, 5.000000e-01
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %787 = fmul fast float %786, 1.023000e+03
  %788 = fptoui float %787 to i32
  %789 = fadd fast float %782, 1.000000e+00
  %790 = fmul fast float %789, 5.000000e-01
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = fmul fast float %791, 1.023000e+03
  %793 = fptoui float %792 to i32
  %794 = fadd fast float %783, 1.000000e+00
  %795 = fmul fast float %794, 5.000000e-01
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = fmul fast float %796, 5.110000e+02
  %798 = fptoui float %797 to i32
  %799 = shl i32 %793, 10
  %800 = shl i32 %798, 20
  %801 = fcmp fast ogt float %190, 0.000000e+00
  %802 = select i1 %801, i32 0, i32 536870912
  %803 = shl i32 %766, 30
  %804 = or i32 %788, %802
  %805 = or i32 %804, %803
  %806 = or i32 %805, %799
  %807 = or i32 %806, %800
  %808 = select i1 %22, i32 %737, i32 0
  %809 = select i1 %22, i32 %740, i32 0
  %810 = shl i32 %67, 3
  %811 = add i32 %29, %810
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %811, i32 undef, i32 %808, i32 %809, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %812 = shl i32 %67, 2
  %813 = add i32 %27, %812
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %813, i32 undef, i32 %807, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %814 = bitcast float %684 to i32
  %815 = bitcast float %685 to i32
  %816 = bitcast float %686 to i32
  %817 = mul i32 %67, 12
  %818 = add i32 %28, %817
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %818, i32 undef, i32 %814, i32 %815, i32 %816, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %819

; <label>:819                                     ; preds = %758, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, null, null}
!5 = !{!6, !7, !9, !10, !11}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<UDQ>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 32}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!12 = !{!13}
!13 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{void ()* @cs_skinning_weight_blend_unified_unpacked_positions_main, !"cs_skinning_weight_blend_unified_unpacked_positions_main", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

