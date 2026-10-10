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
; shader hash: af54a216dc62b376486c39d76d0851cd
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

define void @cs_skinning_unified_main() {
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
  br i1 %62, label %63, label %536, !dx.controlflow.hints !17

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
  %190 = icmp ugt i32 %16, 1
  br i1 %190, label %191, label %257

; <label>:191                                     ; preds = %182
  %192 = and i32 %12, 65535
  br label %193

; <label>:193                                     ; preds = %193, %191
  %194 = phi float [ %250, %193 ], [ 0.000000e+00, %191 ]
  %195 = phi float [ %251, %193 ], [ 0.000000e+00, %191 ]
  %196 = phi float [ %252, %193 ], [ 0.000000e+00, %191 ]
  %197 = phi float [ %253, %193 ], [ 0.000000e+00, %191 ]
  %198 = phi float [ %242, %193 ], [ 0.000000e+00, %191 ]
  %199 = phi float [ %243, %193 ], [ 0.000000e+00, %191 ]
  %200 = phi float [ %244, %193 ], [ 0.000000e+00, %191 ]
  %201 = phi float [ %245, %193 ], [ 0.000000e+00, %191 ]
  %202 = phi float [ %223, %193 ], [ 0.000000e+00, %191 ]
  %203 = phi i32 [ %254, %193 ], [ 1, %191 ]
  %204 = mul i32 %203, %61
  %205 = add i32 %67, %204
  %206 = shl i32 %205, 2
  %207 = lshr i32 %205, 8
  %208 = and i32 %207, 4194303
  %209 = add i32 %208, %21
  %210 = shl i32 %209, 2
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = shl i32 %212, 10
  %214 = and i32 %206, 1020
  %215 = or i32 %213, %214
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 65535
  %219 = lshr i32 %217, 16
  %220 = uitofp i32 %219 to float
  %221 = fmul float %220, 0x3EF0000000000000
  %222 = add i32 %218, %23
  %223 = fadd float %202, %221
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %222, i32 0)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = extractvalue %dx.types.ResRet.f32 %224, 1
  %227 = extractvalue %dx.types.ResRet.f32 %224, 2
  %228 = extractvalue %dx.types.ResRet.f32 %224, 3
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %222, i32 16)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = extractvalue %dx.types.ResRet.f32 %229, 1
  %232 = extractvalue %dx.types.ResRet.f32 %229, 2
  %233 = extractvalue %dx.types.ResRet.f32 %229, 3
  %234 = call float @dx.op.dot4.f32(i32 56, float %83, float %84, float %85, float %86, float %225, float %226, float %227, float %228), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %235 = fcmp olt float %234, 0.000000e+00
  %236 = fsub float -0.000000e+00, %221
  %237 = select i1 %235, float %236, float %221
  %238 = fmul float %225, %237
  %239 = fmul float %226, %237
  %240 = fmul float %227, %237
  %241 = fmul float %228, %237
  %242 = fadd float %198, %238
  %243 = fadd float %199, %239
  %244 = fadd float %200, %240
  %245 = fadd float %201, %241
  %246 = fmul float %230, %237
  %247 = fmul float %231, %237
  %248 = fmul float %232, %237
  %249 = fmul float %233, %237
  %250 = fadd float %194, %246
  %251 = fadd float %195, %247
  %252 = fadd float %196, %248
  %253 = fadd float %197, %249
  %254 = add nuw nsw i32 %203, 1
  %255 = icmp eq i32 %254, %192
  br i1 %255, label %256, label %193, !llvm.loop !22

; <label>:256                                     ; preds = %193
  br label %257

; <label>:257                                     ; preds = %256, %182
  %258 = phi float [ 0.000000e+00, %182 ], [ %250, %256 ]
  %259 = phi float [ 0.000000e+00, %182 ], [ %251, %256 ]
  %260 = phi float [ 0.000000e+00, %182 ], [ %252, %256 ]
  %261 = phi float [ 0.000000e+00, %182 ], [ %253, %256 ]
  %262 = phi float [ 0.000000e+00, %182 ], [ %242, %256 ]
  %263 = phi float [ 0.000000e+00, %182 ], [ %243, %256 ]
  %264 = phi float [ 0.000000e+00, %182 ], [ %244, %256 ]
  %265 = phi float [ 0.000000e+00, %182 ], [ %245, %256 ]
  %266 = phi float [ 0.000000e+00, %182 ], [ %223, %256 ]
  %267 = fsub float 1.000000e+00, %266
  %268 = fmul float %83, %267
  %269 = fmul float %84, %267
  %270 = fmul float %85, %267
  %271 = fmul float %86, %267
  %272 = fadd float %262, %268
  %273 = fadd float %263, %269
  %274 = fadd float %264, %270
  %275 = fadd float %265, %271
  %276 = fmul float %88, %267
  %277 = fmul float %89, %267
  %278 = fmul float %90, %267
  %279 = fmul float %91, %267
  %280 = fadd float %258, %276
  %281 = fadd float %259, %277
  %282 = fadd float %260, %278
  %283 = fadd float %261, %279
  %284 = call float @dx.op.dot4.f32(i32 56, float %272, float %273, float %274, float %275, float %272, float %273, float %274, float %275), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %285 = call float @dx.op.unary.f32(i32 24, float %284), !dx.precise !21  ; Sqrt(value)
  %286 = fdiv float 1.000000e+00, %285
  %287 = fmul float %275, %286
  %288 = fmul float %272, %286
  %289 = fmul float %273, %286
  %290 = fmul float %274, %286
  %291 = fmul float %283, %286
  %292 = fmul float %280, %286
  %293 = fmul float %281, %286
  %294 = fmul float %282, %286
  %295 = fmul float %155, %289
  %296 = fmul float %154, %290
  %297 = fsub float %295, %296
  %298 = fmul float %153, %290
  %299 = fmul float %155, %288
  %300 = fsub float %298, %299
  %301 = fmul float %154, %288
  %302 = fmul float %153, %289
  %303 = fsub float %301, %302
  %304 = fmul float %153, %287
  %305 = fmul float %154, %287
  %306 = fmul float %155, %287
  %307 = fadd float %304, %297
  %308 = fadd float %305, %300
  %309 = fadd float %306, %303
  %310 = fmul float %292, %287
  %311 = fmul float %293, %287
  %312 = fmul float %294, %287
  %313 = fmul float %288, %291
  %314 = fmul float %289, %291
  %315 = fmul float %290, %291
  %316 = fsub float %310, %313
  %317 = fsub float %311, %314
  %318 = fsub float %312, %315
  %319 = fmul float %289, %294
  %320 = fmul float %290, %293
  %321 = fsub float %319, %320
  %322 = fmul float %290, %292
  %323 = fmul float %288, %294
  %324 = fsub float %322, %323
  %325 = fmul float %288, %293
  %326 = fmul float %289, %292
  %327 = fsub float %325, %326
  %328 = fadd float %316, %321
  %329 = fadd float %317, %324
  %330 = fadd float %318, %327
  %331 = fmul float %328, 2.000000e+00
  %332 = fmul float %329, 2.000000e+00
  %333 = fmul float %330, 2.000000e+00
  %334 = fadd float %153, %331
  %335 = fadd float %154, %332
  %336 = fadd float %155, %333
  %337 = fmul float %288, 2.000000e+00
  %338 = fmul float %289, 2.000000e+00
  %339 = fmul float %290, 2.000000e+00
  %340 = fmul float %338, %309
  %341 = fmul float %339, %308
  %342 = fsub float %340, %341
  %343 = fmul float %339, %307
  %344 = fmul float %337, %309
  %345 = fsub float %343, %344
  %346 = fmul float %337, %308
  %347 = fmul float %338, %307
  %348 = fsub float %346, %347
  %349 = fadd float %334, %342
  %350 = fadd float %335, %345
  %351 = fadd float %336, %348
  %352 = fmul fast float %287, %183
  %353 = fmul fast float %287, %184
  %354 = fmul fast float %287, %185
  %355 = fmul fast float %288, %186
  %356 = fmul fast float %289, %186
  %357 = fmul fast float %290, %186
  %358 = fadd fast float %352, %355
  %359 = fadd fast float %353, %356
  %360 = fadd fast float %354, %357
  %361 = fmul fast float %289, %185
  %362 = fmul fast float %290, %184
  %363 = fsub fast float %361, %362
  %364 = fmul fast float %290, %183
  %365 = fmul fast float %288, %185
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %288, %184
  %368 = fmul fast float %289, %183
  %369 = fsub fast float %367, %368
  %370 = fadd fast float %358, %363
  %371 = fadd fast float %359, %366
  %372 = fadd fast float %360, %369
  %373 = fmul fast float %287, %186
  %374 = call float @dx.op.dot3.f32(i32 55, float %288, float %289, float %290, float %183, float %184, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fsub fast float %373, %374
  %376 = fsub float %349, %44
  %377 = fsub float %350, %45
  %378 = fsub float %351, %46
  %379 = fmul float %54, %378
  %380 = fmul float %55, %377
  %381 = fsub float %379, %380
  %382 = fmul float %55, %376
  %383 = fmul float %53, %378
  %384 = fsub float %382, %383
  %385 = fmul float %53, %377
  %386 = fmul float %54, %376
  %387 = fsub float %385, %386
  %388 = fmul float %381, 2.000000e+00
  %389 = fmul float %384, 2.000000e+00
  %390 = fmul float %387, 2.000000e+00
  %391 = fmul float %56, %388
  %392 = fmul float %56, %389
  %393 = fmul float %56, %390
  %394 = fsub float %376, %391
  %395 = fsub float %377, %392
  %396 = fsub float %378, %393
  %397 = fmul float %54, %390
  %398 = fmul float %55, %389
  %399 = fsub float %397, %398
  %400 = fmul float %55, %388
  %401 = fmul float %53, %390
  %402 = fsub float %400, %401
  %403 = fmul float %53, %389
  %404 = fmul float %54, %388
  %405 = fsub float %403, %404
  %406 = fadd float %394, %399
  %407 = fadd float %395, %402
  %408 = fadd float %396, %405
  %409 = fsub fast float -0.000000e+00, %53
  %410 = fsub fast float -0.000000e+00, %54
  %411 = fsub fast float -0.000000e+00, %55
  %412 = fmul fast float %370, %56
  %413 = fmul fast float %371, %56
  %414 = fmul fast float %372, %56
  %415 = fmul fast float %375, %409
  %416 = fmul fast float %375, %410
  %417 = fmul fast float %375, %411
  %418 = fadd fast float %412, %415
  %419 = fadd fast float %413, %416
  %420 = fadd fast float %414, %417
  %421 = fmul fast float %372, %410
  %422 = fmul fast float %371, %411
  %423 = fsub fast float %421, %422
  %424 = fmul fast float %370, %411
  %425 = fmul fast float %372, %409
  %426 = fsub fast float %424, %425
  %427 = fmul fast float %371, %409
  %428 = fmul fast float %370, %410
  %429 = fsub fast float %427, %428
  %430 = fadd fast float %418, %423
  %431 = fadd fast float %419, %426
  %432 = fadd fast float %420, %429
  %433 = fmul fast float %375, %56
  %434 = call float @dx.op.dot3.f32(i32 55, float %409, float %410, float %411, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = fsub fast float %433, %434
  %436 = fsub float %406, %35
  %437 = fsub float %407, %36
  %438 = fsub float %408, %37
  %439 = fdiv float 1.000000e+00, %38
  %440 = fmul float %439, %436
  %441 = fmul float %439, %437
  %442 = fmul float %439, %438
  %443 = fmul float %440, 5.000000e-01
  %444 = fmul float %441, 5.000000e-01
  %445 = fmul float %442, 5.000000e-01
  %446 = fadd float %443, 5.000000e-01
  %447 = fadd float %444, 5.000000e-01
  %448 = fadd float %445, 5.000000e-01
  %449 = call float @dx.op.unary.f32(i32 7, float %446), !dx.precise !21  ; Saturate(value)
  %450 = call float @dx.op.unary.f32(i32 7, float %447), !dx.precise !21  ; Saturate(value)
  %451 = call float @dx.op.unary.f32(i32 7, float %448), !dx.precise !21  ; Saturate(value)
  %452 = fmul float %449, 2.097151e+06
  %453 = fmul float %450, 2.097151e+06
  %454 = fmul float %451, 2.097151e+06
  %455 = fptoui float %452 to i32
  %456 = fptoui float %453 to i32
  %457 = fptoui float %454 to i32
  %458 = shl i32 %456, 21
  %459 = or i32 %458, %455
  %460 = lshr i32 %456, 11
  %461 = shl i32 %457, 10
  %462 = or i32 %461, %460
  %463 = call float @dx.op.unary.f32(i32 6, float %432)  ; FAbs(value)
  %464 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %465 = fcmp fast oge float %463, %464
  %466 = call float @dx.op.unary.f32(i32 6, float %431)  ; FAbs(value)
  %467 = fcmp fast oge float %463, %466
  %468 = and i1 %465, %467
  br i1 %468, label %469, label %472, !dx.controlflow.hints !24

; <label>:469                                     ; preds = %257
  %470 = fcmp fast olt float %432, 0.000000e+00
  %471 = select i1 %470, float 5.000000e+00, float 4.000000e+00
  br label %480

; <label>:472                                     ; preds = %257
  %473 = fcmp fast ult float %466, %464
  br i1 %473, label %477, label %474, !dx.controlflow.hints !25

; <label>:474                                     ; preds = %472
  %475 = fcmp fast olt float %431, 0.000000e+00
  %476 = select i1 %475, float 3.000000e+00, float 2.000000e+00
  br label %480

; <label>:477                                     ; preds = %472
  %478 = fcmp fast olt float %430, 0.000000e+00
  %479 = select i1 %478, float 1.000000e+00, float 0.000000e+00
  br label %480

; <label>:480                                     ; preds = %477, %474, %469
  %481 = phi float [ %471, %469 ], [ %476, %474 ], [ %479, %477 ]
  %482 = fmul fast float %481, 5.000000e-01
  %483 = fptoui float %482 to i32
  %484 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %485 = call float @dx.op.binary.f32(i32 35, float %466, float %463)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %464, float %485)  ; FMax(a,b)
  %487 = fcmp fast ogt float %484, %486
  %488 = select i1 %487, i32 3, i32 %483
  %489 = icmp eq i32 %488, 0
  %490 = select i1 %489, float %431, float %430
  %491 = select i1 %489, float %432, float %431
  %492 = select i1 %489, float %435, float %432
  %493 = select i1 %489, float %430, float %435
  %494 = icmp eq i32 %488, 1
  %495 = select i1 %494, float %492, float %491
  %496 = select i1 %494, float %493, float %492
  %497 = select i1 %494, float %491, float %493
  %498 = icmp eq i32 %488, 2
  %499 = select i1 %498, float %497, float %496
  %500 = select i1 %498, float %496, float %497
  %501 = fcmp fast ogt float %500, 0.000000e+00
  %502 = select i1 %501, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %503 = fmul fast float %502, %490
  %504 = fmul fast float %502, %495
  %505 = fmul fast float %502, %499
  %506 = fadd fast float %503, 1.000000e+00
  %507 = fmul fast float %506, 5.000000e-01
  %508 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  %509 = fmul fast float %508, 1.023000e+03
  %510 = fptoui float %509 to i32
  %511 = fadd fast float %504, 1.000000e+00
  %512 = fmul fast float %511, 5.000000e-01
  %513 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %514 = fmul fast float %513, 1.023000e+03
  %515 = fptoui float %514 to i32
  %516 = fadd fast float %505, 1.000000e+00
  %517 = fmul fast float %516, 5.000000e-01
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = fmul fast float %518, 5.110000e+02
  %520 = fptoui float %519 to i32
  %521 = shl i32 %515, 10
  %522 = shl i32 %520, 20
  %523 = fcmp fast ogt float %189, 0.000000e+00
  %524 = select i1 %523, i32 0, i32 536870912
  %525 = shl i32 %488, 30
  %526 = or i32 %510, %524
  %527 = or i32 %526, %525
  %528 = or i32 %527, %521
  %529 = or i32 %528, %522
  %530 = select i1 %22, i32 %459, i32 0
  %531 = select i1 %22, i32 %462, i32 0
  %532 = shl i32 %66, 3
  %533 = add i32 %28, %532
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %533, i32 undef, i32 %530, i32 %531, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %534 = shl i32 %66, 2
  %535 = add i32 %27, %534
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %535, i32 undef, i32 %529, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %536

; <label>:536                                     ; preds = %480, %0
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
!14 = !{void ()* @cs_skinning_unified_main, !"cs_skinning_unified_main", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{i32 1}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

