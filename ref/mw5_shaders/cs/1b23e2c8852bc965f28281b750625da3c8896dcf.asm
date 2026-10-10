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
; shader hash: bb951aab143e17868cf8ec5763fd5fca
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

define void @cs_skinning_weight_blend_unified_main() {
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
  %28 = and i32 %26, 2147483647
  %29 = add nuw nsw i32 %14, 32
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = extractvalue %dx.types.ResRet.i32 %30, 1
  %33 = extractvalue %dx.types.ResRet.i32 %30, 2
  %34 = extractvalue %dx.types.ResRet.i32 %30, 3
  %35 = bitcast i32 %31 to float
  %36 = bitcast i32 %32 to float
  %37 = bitcast i32 %33 to float
  %38 = bitcast i32 %34 to float
  %39 = add nuw nsw i32 %14, 48
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = extractvalue %dx.types.ResRet.i32 %40, 1
  %43 = extractvalue %dx.types.ResRet.i32 %40, 2
  %44 = bitcast i32 %41 to float
  %45 = bitcast i32 %42 to float
  %46 = bitcast i32 %43 to float
  %47 = add nuw nsw i32 %14, 64
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = extractvalue %dx.types.ResRet.i32 %48, 1
  %51 = extractvalue %dx.types.ResRet.i32 %48, 2
  %52 = extractvalue %dx.types.ResRet.i32 %48, 3
  %53 = bitcast i32 %49 to float
  %54 = bitcast i32 %50 to float
  %55 = bitcast i32 %51 to float
  %56 = bitcast i32 %52 to float
  %57 = shl nuw nsw i32 %16, 3
  %58 = add nuw nsw i32 %57, 72
  %59 = add nuw nsw i32 %58, %14
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = icmp ult i32 %8, %15
  br i1 %62, label %63, label %813, !dx.controlflow.hints !17

; <label>:63                                      ; preds = %0
  %64 = extractvalue %dx.types.ResRet.i32 %60, 1
  %65 = lshr i32 %12, 16
  %66 = add i32 %65, %8
  %67 = add i32 %64, %66
  %68 = shl i32 %67, 2
  %69 = lshr i32 %67, 8
  %70 = and i32 %69, 4194303
  %71 = add i32 %70, %21
  %72 = shl i32 %71, 2
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = shl i32 %74, 10
  %76 = and i32 %68, 1020
  %77 = or i32 %75, %76
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = and i32 %79, 65535
  %81 = add i32 %80, %23
  %82 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %81, i32 0)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = extractvalue %dx.types.ResRet.f32 %82, 3
  %87 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %81, i32 16)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = extractvalue %dx.types.ResRet.f32 %87, 3
  %92 = icmp slt i32 %26, 0
  %93 = shl i32 %66, 3
  %94 = shl i32 %66, 2
  br i1 %92, label %95, label %103, !dx.controlflow.hints !18

; <label>:95                                      ; preds = %63
  %96 = add i32 %28, %93
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = extractvalue %dx.types.ResRet.i32 %97, 1
  %100 = add i32 %27, %94
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  br label %127

; <label>:103                                     ; preds = %63
  %104 = lshr i32 %66, 7
  %105 = and i32 %104, 4194303
  %106 = add i32 %105, %19
  %107 = shl i32 %106, 2
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %107, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = shl i32 %109, 10
  %111 = and i32 %93, 1016
  %112 = or i32 %110, %111
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = extractvalue %dx.types.ResRet.i32 %113, 1
  %116 = lshr i32 %66, 8
  %117 = and i32 %116, 4194303
  %118 = add i32 %117, %20
  %119 = shl i32 %118, 2
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = shl i32 %121, 10
  %123 = and i32 %94, 1020
  %124 = or i32 %122, %123
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  br label %127

; <label>:127                                     ; preds = %103, %95
  %128 = phi i32 [ %98, %95 ], [ %114, %103 ]
  %129 = phi i32 [ %99, %95 ], [ %115, %103 ]
  %130 = phi i32 [ %102, %95 ], [ %126, %103 ]
  %131 = and i32 %128, 2097151
  %132 = uitofp i32 %131 to float
  %133 = lshr i32 %128, 21
  %134 = shl i32 %129, 11
  %135 = and i32 %134, 2095104
  %136 = or i32 %135, %133
  %137 = uitofp i32 %136 to float
  %138 = lshr i32 %129, 10
  %139 = and i32 %138, 2097151
  %140 = uitofp i32 %139 to float
  %141 = fdiv float %132, 2.097151e+06
  %142 = fdiv float %137, 2.097151e+06
  %143 = fdiv float %140, 2.097151e+06
  %144 = fmul float %141, 2.000000e+00
  %145 = fmul float %142, 2.000000e+00
  %146 = fmul float %143, 2.000000e+00
  %147 = fadd float %144, -1.000000e+00
  %148 = fadd float %145, -1.000000e+00
  %149 = fadd float %146, -1.000000e+00
  %150 = fmul float %38, %147
  %151 = fmul float %38, %148
  %152 = fmul float %38, %149
  %153 = fadd float %35, %150
  %154 = fadd float %36, %151
  %155 = fadd float %37, %152
  %156 = lshr i32 %130, 30
  %157 = and i32 %130, 1023
  %158 = uitofp i32 %157 to float
  %159 = lshr i32 %130, 10
  %160 = and i32 %159, 1023
  %161 = uitofp i32 %160 to float
  %162 = lshr i32 %130, 20
  %163 = and i32 %162, 511
  %164 = uitofp i32 %163 to float
  %165 = fmul fast float %158, 0x3F56A64800000000
  %166 = fadd fast float %165, 0xBFE6A09E60000000
  %167 = fmul fast float %161, 0x3F56A64800000000
  %168 = fadd fast float %167, 0xBFE6A09E60000000
  %169 = fmul fast float %164, 0x3F66ABF460000000
  %170 = fadd fast float %169, 0xBFE6A09E60000000
  %171 = call float @dx.op.dot3.f32(i32 55, float %166, float %168, float %170, float %166, float %168, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  %173 = fsub fast float 1.000000e+00, %172
  %174 = call float @dx.op.unary.f32(i32 24, float %173)  ; Sqrt(value)
  %175 = icmp eq i32 %156, 0
  br i1 %175, label %182, label %176, !dx.controlflow.hints !19

; <label>:176                                     ; preds = %127
  %177 = icmp eq i32 %156, 1
  br i1 %177, label %182, label %178, !dx.controlflow.hints !20

; <label>:178                                     ; preds = %176
  %179 = icmp eq i32 %156, 2
  %180 = select i1 %179, float %174, float %170
  %181 = select i1 %179, float %170, float %174
  br label %182

; <label>:182                                     ; preds = %178, %176, %127
  %183 = phi float [ %174, %127 ], [ %166, %176 ], [ %166, %178 ]
  %184 = phi float [ %166, %127 ], [ %174, %176 ], [ %168, %178 ]
  %185 = phi float [ %168, %127 ], [ %168, %176 ], [ %180, %178 ]
  %186 = phi float [ %170, %127 ], [ %170, %176 ], [ %181, %178 ]
  %187 = and i32 %130, 536870912
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %188, float -1.000000e+00, float 1.000000e+00
  %190 = lshr i32 %79, 16
  %191 = uitofp i32 %190 to float
  %192 = fdiv float %191, 6.553500e+04
  %193 = icmp ugt i32 %16, 1
  br i1 %193, label %194, label %378

; <label>:194                                     ; preds = %182
  %195 = and i32 %12, 65535
  br label %196

; <label>:196                                     ; preds = %367, %194
  %197 = phi float [ %260, %367 ], [ 0.000000e+00, %194 ]
  %198 = phi float [ %261, %367 ], [ 0.000000e+00, %194 ]
  %199 = phi float [ %262, %367 ], [ 0.000000e+00, %194 ]
  %200 = phi float [ %263, %367 ], [ 0.000000e+00, %194 ]
  %201 = phi float [ %252, %367 ], [ 0.000000e+00, %194 ]
  %202 = phi float [ %253, %367 ], [ 0.000000e+00, %194 ]
  %203 = phi float [ %254, %367 ], [ 0.000000e+00, %194 ]
  %204 = phi float [ %255, %367 ], [ 0.000000e+00, %194 ]
  %205 = phi float [ %233, %367 ], [ 0.000000e+00, %194 ]
  %206 = phi float [ %368, %367 ], [ 0.000000e+00, %194 ]
  %207 = phi float [ %369, %367 ], [ 0.000000e+00, %194 ]
  %208 = phi float [ %370, %367 ], [ 0.000000e+00, %194 ]
  %209 = phi float [ %371, %367 ], [ 0.000000e+00, %194 ]
  %210 = phi float [ %372, %367 ], [ 0.000000e+00, %194 ]
  %211 = phi float [ %373, %367 ], [ 0.000000e+00, %194 ]
  %212 = phi float [ %374, %367 ], [ 0.000000e+00, %194 ]
  %213 = phi i32 [ %375, %367 ], [ 1, %194 ]
  %214 = mul i32 %213, %61
  %215 = add i32 %67, %214
  %216 = shl i32 %215, 2
  %217 = lshr i32 %215, 8
  %218 = and i32 %217, 4194303
  %219 = add i32 %218, %21
  %220 = shl i32 %219, 2
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = shl i32 %222, 10
  %224 = and i32 %216, 1020
  %225 = or i32 %223, %224
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 65535
  %229 = lshr i32 %227, 16
  %230 = uitofp i32 %229 to float
  %231 = fmul float %230, 0x3EF0000000000000
  %232 = add i32 %228, %23
  %233 = fadd float %205, %231
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %232, i32 0)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = extractvalue %dx.types.ResRet.f32 %234, 3
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %232, i32 16)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = extractvalue %dx.types.ResRet.f32 %239, 3
  %244 = call float @dx.op.dot4.f32(i32 56, float %83, float %84, float %85, float %86, float %235, float %236, float %237, float %238), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %245 = fcmp olt float %244, 0.000000e+00
  %246 = fsub float -0.000000e+00, %231
  %247 = select i1 %245, float %246, float %231
  %248 = fmul float %235, %247
  %249 = fmul float %236, %247
  %250 = fmul float %237, %247
  %251 = fmul float %238, %247
  %252 = fadd float %201, %248
  %253 = fadd float %202, %249
  %254 = fadd float %203, %250
  %255 = fadd float %204, %251
  %256 = fmul float %240, %247
  %257 = fmul float %241, %247
  %258 = fmul float %242, %247
  %259 = fmul float %243, %247
  %260 = fadd float %197, %256
  %261 = fadd float %198, %257
  %262 = fadd float %199, %258
  %263 = fadd float %200, %259
  %264 = fcmp une float %192, 0.000000e+00
  br i1 %264, label %265, label %367, !dx.controlflow.hints !22

; <label>:265                                     ; preds = %196
  %266 = fsub float -0.000000e+00, %235
  %267 = fsub float -0.000000e+00, %236
  %268 = fsub float -0.000000e+00, %237
  %269 = fmul float %243, %266
  %270 = fmul float %243, %267
  %271 = fmul float %243, %268
  %272 = fmul float %238, %240
  %273 = fmul float %238, %241
  %274 = fmul float %238, %242
  %275 = fadd float %269, %272
  %276 = fadd float %270, %273
  %277 = fadd float %271, %274
  %278 = fmul float %241, %268
  %279 = fmul float %242, %267
  %280 = fsub float %278, %279
  %281 = fmul float %242, %266
  %282 = fmul float %240, %268
  %283 = fsub float %281, %282
  %284 = fmul float %240, %267
  %285 = fmul float %241, %266
  %286 = fsub float %284, %285
  %287 = fadd float %275, %280
  %288 = fadd float %276, %283
  %289 = fadd float %277, %286
  %290 = fmul float %287, 2.000000e+00
  %291 = fmul float %288, 2.000000e+00
  %292 = fmul float %289, 2.000000e+00
  %293 = fmul float %155, %236
  %294 = fmul float %154, %237
  %295 = fsub float %293, %294
  %296 = fmul float %153, %237
  %297 = fmul float %155, %235
  %298 = fsub float %296, %297
  %299 = fmul float %154, %235
  %300 = fmul float %153, %236
  %301 = fsub float %299, %300
  %302 = fmul float %295, 2.000000e+00
  %303 = fmul float %298, 2.000000e+00
  %304 = fmul float %301, 2.000000e+00
  %305 = fmul float %238, %302
  %306 = fmul float %238, %303
  %307 = fmul float %238, %304
  %308 = fadd float %153, %305
  %309 = fadd float %154, %306
  %310 = fadd float %155, %307
  %311 = fmul float %236, %304
  %312 = fmul float %237, %303
  %313 = fsub float %311, %312
  %314 = fmul float %237, %302
  %315 = fmul float %235, %304
  %316 = fsub float %314, %315
  %317 = fmul float %235, %303
  %318 = fmul float %236, %302
  %319 = fsub float %317, %318
  %320 = fadd float %308, %313
  %321 = fadd float %309, %316
  %322 = fadd float %310, %319
  %323 = fadd float %290, %320
  %324 = fadd float %291, %321
  %325 = fadd float %292, %322
  %326 = fmul float %231, %323
  %327 = fmul float %231, %324
  %328 = fmul float %231, %325
  %329 = fadd float %210, %326
  %330 = fadd float %211, %327
  %331 = fadd float %212, %328
  %332 = fmul fast float %238, %183
  %333 = fmul fast float %238, %184
  %334 = fmul fast float %238, %185
  %335 = fmul fast float %235, %186
  %336 = fmul fast float %236, %186
  %337 = fmul fast float %237, %186
  %338 = fadd fast float %332, %335
  %339 = fadd fast float %333, %336
  %340 = fadd fast float %334, %337
  %341 = fmul fast float %236, %185
  %342 = fmul fast float %237, %184
  %343 = fsub fast float %341, %342
  %344 = fmul fast float %237, %183
  %345 = fmul fast float %235, %185
  %346 = fsub fast float %344, %345
  %347 = fmul fast float %235, %184
  %348 = fmul fast float %236, %183
  %349 = fsub fast float %347, %348
  %350 = fadd fast float %338, %343
  %351 = fadd fast float %339, %346
  %352 = fadd fast float %340, %349
  %353 = fmul fast float %238, %186
  %354 = call float @dx.op.dot3.f32(i32 55, float %235, float %236, float %237, float %183, float %184, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = fsub fast float %353, %354
  %356 = call float @dx.op.dot4.f32(i32 56, float %206, float %207, float %208, float %209, float %350, float %351, float %352, float %355)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %357 = fcmp fast olt float %356, 0.000000e+00
  %358 = select i1 %357, float %246, float %231
  %359 = fmul fast float %358, %350
  %360 = fmul fast float %358, %351
  %361 = fmul fast float %358, %352
  %362 = fmul fast float %358, %355
  %363 = fadd fast float %359, %206
  %364 = fadd fast float %360, %207
  %365 = fadd fast float %361, %208
  %366 = fadd fast float %362, %209
  br label %367

; <label>:367                                     ; preds = %265, %196
  %368 = phi float [ %363, %265 ], [ %206, %196 ]
  %369 = phi float [ %364, %265 ], [ %207, %196 ]
  %370 = phi float [ %365, %265 ], [ %208, %196 ]
  %371 = phi float [ %366, %265 ], [ %209, %196 ]
  %372 = phi float [ %329, %265 ], [ %210, %196 ]
  %373 = phi float [ %330, %265 ], [ %211, %196 ]
  %374 = phi float [ %331, %265 ], [ %212, %196 ]
  %375 = add nuw nsw i32 %213, 1
  %376 = icmp eq i32 %375, %195
  br i1 %376, label %377, label %196, !llvm.loop !23

; <label>:377                                     ; preds = %367
  br label %378

; <label>:378                                     ; preds = %377, %182
  %379 = phi float [ 0.000000e+00, %182 ], [ %260, %377 ]
  %380 = phi float [ 0.000000e+00, %182 ], [ %261, %377 ]
  %381 = phi float [ 0.000000e+00, %182 ], [ %262, %377 ]
  %382 = phi float [ 0.000000e+00, %182 ], [ %263, %377 ]
  %383 = phi float [ 0.000000e+00, %182 ], [ %252, %377 ]
  %384 = phi float [ 0.000000e+00, %182 ], [ %253, %377 ]
  %385 = phi float [ 0.000000e+00, %182 ], [ %254, %377 ]
  %386 = phi float [ 0.000000e+00, %182 ], [ %255, %377 ]
  %387 = phi float [ 0.000000e+00, %182 ], [ %233, %377 ]
  %388 = phi float [ 0.000000e+00, %182 ], [ %368, %377 ]
  %389 = phi float [ 0.000000e+00, %182 ], [ %369, %377 ]
  %390 = phi float [ 0.000000e+00, %182 ], [ %370, %377 ]
  %391 = phi float [ 0.000000e+00, %182 ], [ %371, %377 ]
  %392 = phi float [ 0.000000e+00, %182 ], [ %372, %377 ]
  %393 = phi float [ 0.000000e+00, %182 ], [ %373, %377 ]
  %394 = phi float [ 0.000000e+00, %182 ], [ %374, %377 ]
  %395 = fsub float 1.000000e+00, %387
  %396 = fmul float %83, %395
  %397 = fmul float %84, %395
  %398 = fmul float %85, %395
  %399 = fmul float %86, %395
  %400 = fadd float %383, %396
  %401 = fadd float %384, %397
  %402 = fadd float %385, %398
  %403 = fadd float %386, %399
  %404 = fmul float %88, %395
  %405 = fmul float %89, %395
  %406 = fmul float %90, %395
  %407 = fmul float %91, %395
  %408 = fadd float %379, %404
  %409 = fadd float %380, %405
  %410 = fadd float %381, %406
  %411 = fadd float %382, %407
  %412 = call float @dx.op.dot4.f32(i32 56, float %400, float %401, float %402, float %403, float %400, float %401, float %402, float %403), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %413 = call float @dx.op.unary.f32(i32 24, float %412), !dx.precise !21  ; Sqrt(value)
  %414 = fdiv float 1.000000e+00, %413
  %415 = fmul float %403, %414
  %416 = fmul float %400, %414
  %417 = fmul float %401, %414
  %418 = fmul float %402, %414
  %419 = fmul float %411, %414
  %420 = fmul float %408, %414
  %421 = fmul float %409, %414
  %422 = fmul float %410, %414
  %423 = fmul float %155, %417
  %424 = fmul float %154, %418
  %425 = fsub float %423, %424
  %426 = fmul float %153, %418
  %427 = fmul float %155, %416
  %428 = fsub float %426, %427
  %429 = fmul float %154, %416
  %430 = fmul float %153, %417
  %431 = fsub float %429, %430
  %432 = fmul float %153, %415
  %433 = fmul float %154, %415
  %434 = fmul float %155, %415
  %435 = fadd float %432, %425
  %436 = fadd float %433, %428
  %437 = fadd float %434, %431
  %438 = fmul float %420, %415
  %439 = fmul float %421, %415
  %440 = fmul float %422, %415
  %441 = fmul float %416, %419
  %442 = fmul float %417, %419
  %443 = fmul float %418, %419
  %444 = fsub float %438, %441
  %445 = fsub float %439, %442
  %446 = fsub float %440, %443
  %447 = fmul float %417, %422
  %448 = fmul float %418, %421
  %449 = fsub float %447, %448
  %450 = fmul float %418, %420
  %451 = fmul float %416, %422
  %452 = fsub float %450, %451
  %453 = fmul float %416, %421
  %454 = fmul float %417, %420
  %455 = fsub float %453, %454
  %456 = fadd float %444, %449
  %457 = fadd float %445, %452
  %458 = fadd float %446, %455
  %459 = fmul float %456, 2.000000e+00
  %460 = fmul float %457, 2.000000e+00
  %461 = fmul float %458, 2.000000e+00
  %462 = fadd float %153, %459
  %463 = fadd float %154, %460
  %464 = fadd float %155, %461
  %465 = fmul float %416, 2.000000e+00
  %466 = fmul float %417, 2.000000e+00
  %467 = fmul float %418, 2.000000e+00
  %468 = fmul float %466, %437
  %469 = fmul float %467, %436
  %470 = fsub float %468, %469
  %471 = fmul float %467, %435
  %472 = fmul float %465, %437
  %473 = fsub float %471, %472
  %474 = fmul float %465, %436
  %475 = fmul float %466, %435
  %476 = fsub float %474, %475
  %477 = fadd float %462, %470
  %478 = fadd float %463, %473
  %479 = fadd float %464, %476
  %480 = fmul fast float %415, %183
  %481 = fmul fast float %415, %184
  %482 = fmul fast float %415, %185
  %483 = fmul fast float %416, %186
  %484 = fmul fast float %417, %186
  %485 = fmul fast float %418, %186
  %486 = fadd fast float %480, %483
  %487 = fadd fast float %481, %484
  %488 = fadd fast float %482, %485
  %489 = fmul fast float %417, %185
  %490 = fmul fast float %418, %184
  %491 = fsub fast float %489, %490
  %492 = fmul fast float %418, %183
  %493 = fmul fast float %416, %185
  %494 = fsub fast float %492, %493
  %495 = fmul fast float %416, %184
  %496 = fmul fast float %417, %183
  %497 = fsub fast float %495, %496
  %498 = fadd fast float %486, %491
  %499 = fadd fast float %487, %494
  %500 = fadd fast float %488, %497
  %501 = fmul fast float %415, %186
  %502 = call float @dx.op.dot3.f32(i32 55, float %416, float %417, float %418, float %183, float %184, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %503 = fsub fast float %501, %502
  %504 = fcmp une float %192, 0.000000e+00
  br i1 %504, label %505, label %645, !dx.controlflow.hints !25

; <label>:505                                     ; preds = %378
  %506 = fsub float -0.000000e+00, %83
  %507 = fsub float -0.000000e+00, %84
  %508 = fsub float -0.000000e+00, %85
  %509 = fmul float %91, %506
  %510 = fmul float %91, %507
  %511 = fmul float %91, %508
  %512 = fmul float %86, %88
  %513 = fmul float %86, %89
  %514 = fmul float %86, %90
  %515 = fadd float %509, %512
  %516 = fadd float %510, %513
  %517 = fadd float %511, %514
  %518 = fmul float %89, %508
  %519 = fmul float %90, %507
  %520 = fsub float %518, %519
  %521 = fmul float %90, %506
  %522 = fmul float %88, %508
  %523 = fsub float %521, %522
  %524 = fmul float %88, %507
  %525 = fmul float %89, %506
  %526 = fsub float %524, %525
  %527 = fadd float %515, %520
  %528 = fadd float %516, %523
  %529 = fadd float %517, %526
  %530 = fmul float %527, 2.000000e+00
  %531 = fmul float %528, 2.000000e+00
  %532 = fmul float %529, 2.000000e+00
  %533 = fmul float %84, %155
  %534 = fmul float %85, %154
  %535 = fsub float %533, %534
  %536 = fmul float %85, %153
  %537 = fmul float %83, %155
  %538 = fsub float %536, %537
  %539 = fmul float %83, %154
  %540 = fmul float %84, %153
  %541 = fsub float %539, %540
  %542 = fmul float %535, 2.000000e+00
  %543 = fmul float %538, 2.000000e+00
  %544 = fmul float %541, 2.000000e+00
  %545 = fmul float %86, %542
  %546 = fmul float %86, %543
  %547 = fmul float %86, %544
  %548 = fadd float %153, %545
  %549 = fadd float %154, %546
  %550 = fadd float %155, %547
  %551 = fmul float %84, %544
  %552 = fmul float %85, %543
  %553 = fsub float %551, %552
  %554 = fmul float %85, %542
  %555 = fmul float %83, %544
  %556 = fsub float %554, %555
  %557 = fmul float %83, %543
  %558 = fmul float %84, %542
  %559 = fsub float %557, %558
  %560 = fadd float %548, %553
  %561 = fadd float %549, %556
  %562 = fadd float %550, %559
  %563 = fadd float %530, %560
  %564 = fadd float %531, %561
  %565 = fadd float %532, %562
  %566 = fmul float %563, %395
  %567 = fmul float %564, %395
  %568 = fmul float %565, %395
  %569 = fadd float %566, %392
  %570 = fadd float %567, %393
  %571 = fadd float %568, %394
  %572 = fmul fast float %183, %86
  %573 = fmul fast float %184, %86
  %574 = fmul fast float %185, %86
  %575 = fmul fast float %186, %83
  %576 = fmul fast float %186, %84
  %577 = fmul fast float %186, %85
  %578 = fadd fast float %575, %572
  %579 = fadd fast float %576, %573
  %580 = fmul fast float %185, %84
  %581 = fmul fast float %184, %85
  %582 = fsub fast float %580, %581
  %583 = fmul fast float %183, %85
  %584 = fmul fast float %185, %83
  %585 = fsub fast float %583, %584
  %586 = fmul fast float %184, %83
  %587 = fmul fast float %183, %84
  %588 = fsub fast float %586, %587
  %589 = fadd fast float %578, %582
  %590 = fadd fast float %579, %585
  %591 = fadd fast float %588, %574
  %592 = fadd fast float %591, %577
  %593 = fmul fast float %186, %86
  %594 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %183, float %184, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = fsub fast float %593, %594
  %596 = call float @dx.op.dot4.f32(i32 56, float %388, float %389, float %390, float %391, float %589, float %590, float %592, float %595)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %597 = fcmp fast olt float %596, 0.000000e+00
  %598 = fsub fast float -0.000000e+00, %395
  %599 = select i1 %597, float %598, float %395
  %600 = fmul fast float %599, %589
  %601 = fmul fast float %599, %590
  %602 = fmul fast float %599, %592
  %603 = fmul fast float %599, %595
  %604 = fadd fast float %600, %388
  %605 = fadd fast float %601, %389
  %606 = fadd fast float %602, %390
  %607 = fadd fast float %603, %391
  %608 = fsub float %569, %477
  %609 = fsub float %570, %478
  %610 = fsub float %571, %479
  %611 = fmul float %192, %608
  %612 = fmul float %192, %609
  %613 = fmul float %192, %610
  %614 = fadd float %477, %611
  %615 = fadd float %478, %612
  %616 = fadd float %479, %613
  %617 = call float @dx.op.dot4.f32(i32 56, float %604, float %605, float %606, float %607, float %498, float %499, float %500, float %503)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %618 = fcmp fast olt float %617, 0.000000e+00
  %619 = fsub fast float -0.000000e+00, %604
  %620 = fsub fast float -0.000000e+00, %605
  %621 = fsub fast float -0.000000e+00, %606
  %622 = fsub fast float -0.000000e+00, %607
  %623 = select i1 %618, float %619, float %604
  %624 = select i1 %618, float %620, float %605
  %625 = select i1 %618, float %621, float %606
  %626 = select i1 %618, float %622, float %607
  %627 = fsub fast float %623, %498
  %628 = fsub fast float %624, %499
  %629 = fsub fast float %625, %500
  %630 = fsub fast float %626, %503
  %631 = fmul fast float %627, %192
  %632 = fmul fast float %628, %192
  %633 = fmul fast float %629, %192
  %634 = fmul fast float %630, %192
  %635 = fadd fast float %631, %498
  %636 = fadd fast float %632, %499
  %637 = fadd fast float %633, %500
  %638 = fadd fast float %634, %503
  %639 = call float @dx.op.dot4.f32(i32 56, float %635, float %636, float %637, float %638, float %635, float %636, float %637, float %638)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %640 = call float @dx.op.unary.f32(i32 25, float %639)  ; Rsqrt(value)
  %641 = fmul fast float %635, %640
  %642 = fmul fast float %636, %640
  %643 = fmul fast float %637, %640
  %644 = fmul fast float %638, %640
  br label %645

; <label>:645                                     ; preds = %505, %378
  %646 = phi float [ %641, %505 ], [ %498, %378 ]
  %647 = phi float [ %642, %505 ], [ %499, %378 ]
  %648 = phi float [ %643, %505 ], [ %500, %378 ]
  %649 = phi float [ %644, %505 ], [ %503, %378 ]
  %650 = phi float [ %614, %505 ], [ %477, %378 ]
  %651 = phi float [ %615, %505 ], [ %478, %378 ]
  %652 = phi float [ %616, %505 ], [ %479, %378 ]
  %653 = fsub float %650, %44
  %654 = fsub float %651, %45
  %655 = fsub float %652, %46
  %656 = fmul float %54, %655
  %657 = fmul float %55, %654
  %658 = fsub float %656, %657
  %659 = fmul float %55, %653
  %660 = fmul float %53, %655
  %661 = fsub float %659, %660
  %662 = fmul float %53, %654
  %663 = fmul float %54, %653
  %664 = fsub float %662, %663
  %665 = fmul float %658, 2.000000e+00
  %666 = fmul float %661, 2.000000e+00
  %667 = fmul float %664, 2.000000e+00
  %668 = fmul float %56, %665
  %669 = fmul float %56, %666
  %670 = fmul float %56, %667
  %671 = fsub float %653, %668
  %672 = fsub float %654, %669
  %673 = fsub float %655, %670
  %674 = fmul float %54, %667
  %675 = fmul float %55, %666
  %676 = fsub float %674, %675
  %677 = fmul float %55, %665
  %678 = fmul float %53, %667
  %679 = fsub float %677, %678
  %680 = fmul float %53, %666
  %681 = fmul float %54, %665
  %682 = fsub float %680, %681
  %683 = fadd float %671, %676
  %684 = fadd float %672, %679
  %685 = fadd float %673, %682
  %686 = fsub fast float -0.000000e+00, %53
  %687 = fsub fast float -0.000000e+00, %54
  %688 = fsub fast float -0.000000e+00, %55
  %689 = fmul fast float %646, %56
  %690 = fmul fast float %647, %56
  %691 = fmul fast float %648, %56
  %692 = fmul fast float %649, %686
  %693 = fmul fast float %649, %687
  %694 = fmul fast float %649, %688
  %695 = fadd fast float %692, %689
  %696 = fadd fast float %693, %690
  %697 = fmul fast float %648, %687
  %698 = fmul fast float %647, %688
  %699 = fsub fast float %697, %698
  %700 = fmul fast float %646, %688
  %701 = fmul fast float %648, %686
  %702 = fsub fast float %700, %701
  %703 = fmul fast float %647, %686
  %704 = fmul fast float %646, %687
  %705 = fsub fast float %703, %704
  %706 = fadd fast float %695, %699
  %707 = fadd fast float %696, %702
  %708 = fadd fast float %705, %691
  %709 = fadd fast float %708, %694
  %710 = fmul fast float %649, %56
  %711 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %646, float %647, float %648)  ; Dot3(ax,ay,az,bx,by,bz)
  %712 = fsub fast float %710, %711
  %713 = fsub float %683, %35
  %714 = fsub float %684, %36
  %715 = fsub float %685, %37
  %716 = fdiv float 1.000000e+00, %38
  %717 = fmul float %716, %713
  %718 = fmul float %716, %714
  %719 = fmul float %716, %715
  %720 = fmul float %717, 5.000000e-01
  %721 = fmul float %718, 5.000000e-01
  %722 = fmul float %719, 5.000000e-01
  %723 = fadd float %720, 5.000000e-01
  %724 = fadd float %721, 5.000000e-01
  %725 = fadd float %722, 5.000000e-01
  %726 = call float @dx.op.unary.f32(i32 7, float %723), !dx.precise !21  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %724), !dx.precise !21  ; Saturate(value)
  %728 = call float @dx.op.unary.f32(i32 7, float %725), !dx.precise !21  ; Saturate(value)
  %729 = fmul float %726, 2.097151e+06
  %730 = fmul float %727, 2.097151e+06
  %731 = fmul float %728, 2.097151e+06
  %732 = fptoui float %729 to i32
  %733 = fptoui float %730 to i32
  %734 = fptoui float %731 to i32
  %735 = shl i32 %733, 21
  %736 = or i32 %735, %732
  %737 = lshr i32 %733, 11
  %738 = shl i32 %734, 10
  %739 = or i32 %738, %737
  %740 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %741 = call float @dx.op.unary.f32(i32 6, float %706)  ; FAbs(value)
  %742 = fcmp fast oge float %740, %741
  %743 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %744 = fcmp fast oge float %740, %743
  %745 = and i1 %742, %744
  br i1 %745, label %746, label %749, !dx.controlflow.hints !26

; <label>:746                                     ; preds = %645
  %747 = fcmp fast olt float %709, 0.000000e+00
  %748 = select i1 %747, float 5.000000e+00, float 4.000000e+00
  br label %757

; <label>:749                                     ; preds = %645
  %750 = fcmp fast ult float %743, %741
  br i1 %750, label %754, label %751, !dx.controlflow.hints !27

; <label>:751                                     ; preds = %749
  %752 = fcmp fast olt float %707, 0.000000e+00
  %753 = select i1 %752, float 3.000000e+00, float 2.000000e+00
  br label %757

; <label>:754                                     ; preds = %749
  %755 = fcmp fast olt float %706, 0.000000e+00
  %756 = select i1 %755, float 1.000000e+00, float 0.000000e+00
  br label %757

; <label>:757                                     ; preds = %754, %751, %746
  %758 = phi float [ %748, %746 ], [ %753, %751 ], [ %756, %754 ]
  %759 = fmul fast float %758, 5.000000e-01
  %760 = fptoui float %759 to i32
  %761 = call float @dx.op.unary.f32(i32 6, float %712)  ; FAbs(value)
  %762 = call float @dx.op.binary.f32(i32 35, float %743, float %740)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 35, float %741, float %762)  ; FMax(a,b)
  %764 = fcmp fast ogt float %761, %763
  %765 = select i1 %764, i32 3, i32 %760
  %766 = icmp eq i32 %765, 0
  %767 = select i1 %766, float %707, float %706
  %768 = select i1 %766, float %709, float %707
  %769 = select i1 %766, float %712, float %709
  %770 = select i1 %766, float %706, float %712
  %771 = icmp eq i32 %765, 1
  %772 = select i1 %771, float %769, float %768
  %773 = select i1 %771, float %770, float %769
  %774 = select i1 %771, float %768, float %770
  %775 = icmp eq i32 %765, 2
  %776 = select i1 %775, float %774, float %773
  %777 = select i1 %775, float %773, float %774
  %778 = fcmp fast ogt float %777, 0.000000e+00
  %779 = select i1 %778, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %780 = fmul fast float %779, %767
  %781 = fmul fast float %779, %772
  %782 = fmul fast float %779, %776
  %783 = fadd fast float %780, 1.000000e+00
  %784 = fmul fast float %783, 5.000000e-01
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = fmul fast float %785, 1.023000e+03
  %787 = fptoui float %786 to i32
  %788 = fadd fast float %781, 1.000000e+00
  %789 = fmul fast float %788, 5.000000e-01
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = fmul fast float %790, 1.023000e+03
  %792 = fptoui float %791 to i32
  %793 = fadd fast float %782, 1.000000e+00
  %794 = fmul fast float %793, 5.000000e-01
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %796 = fmul fast float %795, 5.110000e+02
  %797 = fptoui float %796 to i32
  %798 = shl i32 %792, 10
  %799 = shl i32 %797, 20
  %800 = fcmp fast ogt float %189, 0.000000e+00
  %801 = select i1 %800, i32 0, i32 536870912
  %802 = shl i32 %765, 30
  %803 = or i32 %787, %801
  %804 = or i32 %803, %802
  %805 = or i32 %804, %798
  %806 = or i32 %805, %799
  %807 = select i1 %22, i32 %736, i32 0
  %808 = select i1 %22, i32 %739, i32 0
  %809 = shl i32 %66, 3
  %810 = add i32 %28, %809
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %810, i32 undef, i32 %807, i32 %808, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %811 = shl i32 %66, 2
  %812 = add i32 %27, %811
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %812, i32 undef, i32 %806, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %813

; <label>:813                                     ; preds = %757, %0
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
!14 = !{void ()* @cs_skinning_weight_blend_unified_main, !"cs_skinning_weight_blend_unified_main", null, !4, !15}
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

