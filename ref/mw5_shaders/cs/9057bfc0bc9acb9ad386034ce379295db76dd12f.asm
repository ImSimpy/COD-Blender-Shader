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
; shader hash: 68809c0035dc3263666322f66c5bc5df
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

define void @cs_skinning_unified_unpacked_positions_main() {
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
  br i1 %63, label %64, label %542, !dx.controlflow.hints !17

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
  %191 = icmp ugt i32 %16, 1
  br i1 %191, label %192, label %258

; <label>:192                                     ; preds = %183
  %193 = and i32 %12, 65535
  br label %194

; <label>:194                                     ; preds = %194, %192
  %195 = phi float [ %251, %194 ], [ 0.000000e+00, %192 ]
  %196 = phi float [ %252, %194 ], [ 0.000000e+00, %192 ]
  %197 = phi float [ %253, %194 ], [ 0.000000e+00, %192 ]
  %198 = phi float [ %254, %194 ], [ 0.000000e+00, %192 ]
  %199 = phi float [ %243, %194 ], [ 0.000000e+00, %192 ]
  %200 = phi float [ %244, %194 ], [ 0.000000e+00, %192 ]
  %201 = phi float [ %245, %194 ], [ 0.000000e+00, %192 ]
  %202 = phi float [ %246, %194 ], [ 0.000000e+00, %192 ]
  %203 = phi float [ %224, %194 ], [ 0.000000e+00, %192 ]
  %204 = phi i32 [ %255, %194 ], [ 1, %192 ]
  %205 = mul i32 %204, %62
  %206 = add i32 %68, %205
  %207 = shl i32 %206, 2
  %208 = lshr i32 %206, 8
  %209 = and i32 %208, 4194303
  %210 = add i32 %209, %21
  %211 = shl i32 %210, 2
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = shl i32 %213, 10
  %215 = and i32 %207, 1020
  %216 = or i32 %214, %215
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 65535
  %220 = lshr i32 %218, 16
  %221 = uitofp i32 %220 to float
  %222 = fmul float %221, 0x3EF0000000000000
  %223 = add i32 %219, %23
  %224 = fadd float %203, %222
  %225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %223, i32 0)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = extractvalue %dx.types.ResRet.f32 %225, 3
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %223, i32 16)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = extractvalue %dx.types.ResRet.f32 %230, 3
  %235 = call float @dx.op.dot4.f32(i32 56, float %84, float %85, float %86, float %87, float %226, float %227, float %228, float %229), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %236 = fcmp olt float %235, 0.000000e+00
  %237 = fsub float -0.000000e+00, %222
  %238 = select i1 %236, float %237, float %222
  %239 = fmul float %226, %238
  %240 = fmul float %227, %238
  %241 = fmul float %228, %238
  %242 = fmul float %229, %238
  %243 = fadd float %199, %239
  %244 = fadd float %200, %240
  %245 = fadd float %201, %241
  %246 = fadd float %202, %242
  %247 = fmul float %231, %238
  %248 = fmul float %232, %238
  %249 = fmul float %233, %238
  %250 = fmul float %234, %238
  %251 = fadd float %195, %247
  %252 = fadd float %196, %248
  %253 = fadd float %197, %249
  %254 = fadd float %198, %250
  %255 = add nuw nsw i32 %204, 1
  %256 = icmp eq i32 %255, %193
  br i1 %256, label %257, label %194, !llvm.loop !22

; <label>:257                                     ; preds = %194
  br label %258

; <label>:258                                     ; preds = %257, %183
  %259 = phi float [ 0.000000e+00, %183 ], [ %251, %257 ]
  %260 = phi float [ 0.000000e+00, %183 ], [ %252, %257 ]
  %261 = phi float [ 0.000000e+00, %183 ], [ %253, %257 ]
  %262 = phi float [ 0.000000e+00, %183 ], [ %254, %257 ]
  %263 = phi float [ 0.000000e+00, %183 ], [ %243, %257 ]
  %264 = phi float [ 0.000000e+00, %183 ], [ %244, %257 ]
  %265 = phi float [ 0.000000e+00, %183 ], [ %245, %257 ]
  %266 = phi float [ 0.000000e+00, %183 ], [ %246, %257 ]
  %267 = phi float [ 0.000000e+00, %183 ], [ %224, %257 ]
  %268 = fsub float 1.000000e+00, %267
  %269 = fmul float %84, %268
  %270 = fmul float %85, %268
  %271 = fmul float %86, %268
  %272 = fmul float %87, %268
  %273 = fadd float %263, %269
  %274 = fadd float %264, %270
  %275 = fadd float %265, %271
  %276 = fadd float %266, %272
  %277 = fmul float %89, %268
  %278 = fmul float %90, %268
  %279 = fmul float %91, %268
  %280 = fmul float %92, %268
  %281 = fadd float %259, %277
  %282 = fadd float %260, %278
  %283 = fadd float %261, %279
  %284 = fadd float %262, %280
  %285 = call float @dx.op.dot4.f32(i32 56, float %273, float %274, float %275, float %276, float %273, float %274, float %275, float %276), !dx.precise !21  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %286 = call float @dx.op.unary.f32(i32 24, float %285), !dx.precise !21  ; Sqrt(value)
  %287 = fdiv float 1.000000e+00, %286
  %288 = fmul float %276, %287
  %289 = fmul float %273, %287
  %290 = fmul float %274, %287
  %291 = fmul float %275, %287
  %292 = fmul float %284, %287
  %293 = fmul float %281, %287
  %294 = fmul float %282, %287
  %295 = fmul float %283, %287
  %296 = fmul float %156, %290
  %297 = fmul float %155, %291
  %298 = fsub float %296, %297
  %299 = fmul float %154, %291
  %300 = fmul float %156, %289
  %301 = fsub float %299, %300
  %302 = fmul float %155, %289
  %303 = fmul float %154, %290
  %304 = fsub float %302, %303
  %305 = fmul float %154, %288
  %306 = fmul float %155, %288
  %307 = fmul float %156, %288
  %308 = fadd float %305, %298
  %309 = fadd float %306, %301
  %310 = fadd float %307, %304
  %311 = fmul float %293, %288
  %312 = fmul float %294, %288
  %313 = fmul float %295, %288
  %314 = fmul float %289, %292
  %315 = fmul float %290, %292
  %316 = fmul float %291, %292
  %317 = fsub float %311, %314
  %318 = fsub float %312, %315
  %319 = fsub float %313, %316
  %320 = fmul float %290, %295
  %321 = fmul float %291, %294
  %322 = fsub float %320, %321
  %323 = fmul float %291, %293
  %324 = fmul float %289, %295
  %325 = fsub float %323, %324
  %326 = fmul float %289, %294
  %327 = fmul float %290, %293
  %328 = fsub float %326, %327
  %329 = fadd float %317, %322
  %330 = fadd float %318, %325
  %331 = fadd float %319, %328
  %332 = fmul float %329, 2.000000e+00
  %333 = fmul float %330, 2.000000e+00
  %334 = fmul float %331, 2.000000e+00
  %335 = fadd float %154, %332
  %336 = fadd float %155, %333
  %337 = fadd float %156, %334
  %338 = fmul float %289, 2.000000e+00
  %339 = fmul float %290, 2.000000e+00
  %340 = fmul float %291, 2.000000e+00
  %341 = fmul float %339, %310
  %342 = fmul float %340, %309
  %343 = fsub float %341, %342
  %344 = fmul float %340, %308
  %345 = fmul float %338, %310
  %346 = fsub float %344, %345
  %347 = fmul float %338, %309
  %348 = fmul float %339, %308
  %349 = fsub float %347, %348
  %350 = fadd float %335, %343
  %351 = fadd float %336, %346
  %352 = fadd float %337, %349
  %353 = fmul fast float %288, %184
  %354 = fmul fast float %288, %185
  %355 = fmul fast float %288, %186
  %356 = fmul fast float %289, %187
  %357 = fmul fast float %290, %187
  %358 = fmul fast float %291, %187
  %359 = fadd fast float %353, %356
  %360 = fadd fast float %354, %357
  %361 = fadd fast float %355, %358
  %362 = fmul fast float %290, %186
  %363 = fmul fast float %291, %185
  %364 = fsub fast float %362, %363
  %365 = fmul fast float %291, %184
  %366 = fmul fast float %289, %186
  %367 = fsub fast float %365, %366
  %368 = fmul fast float %289, %185
  %369 = fmul fast float %290, %184
  %370 = fsub fast float %368, %369
  %371 = fadd fast float %359, %364
  %372 = fadd fast float %360, %367
  %373 = fadd fast float %361, %370
  %374 = fmul fast float %288, %187
  %375 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %184, float %185, float %186)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = fsub fast float %374, %375
  %377 = fsub float %350, %45
  %378 = fsub float %351, %46
  %379 = fsub float %352, %47
  %380 = fmul float %55, %379
  %381 = fmul float %56, %378
  %382 = fsub float %380, %381
  %383 = fmul float %56, %377
  %384 = fmul float %54, %379
  %385 = fsub float %383, %384
  %386 = fmul float %54, %378
  %387 = fmul float %55, %377
  %388 = fsub float %386, %387
  %389 = fmul float %382, 2.000000e+00
  %390 = fmul float %385, 2.000000e+00
  %391 = fmul float %388, 2.000000e+00
  %392 = fmul float %57, %389
  %393 = fmul float %57, %390
  %394 = fmul float %57, %391
  %395 = fsub float %377, %392
  %396 = fsub float %378, %393
  %397 = fsub float %379, %394
  %398 = fmul float %55, %391
  %399 = fmul float %56, %390
  %400 = fsub float %398, %399
  %401 = fmul float %56, %389
  %402 = fmul float %54, %391
  %403 = fsub float %401, %402
  %404 = fmul float %54, %390
  %405 = fmul float %55, %389
  %406 = fsub float %404, %405
  %407 = fadd float %395, %400
  %408 = fadd float %396, %403
  %409 = fadd float %397, %406
  %410 = fsub fast float -0.000000e+00, %54
  %411 = fsub fast float -0.000000e+00, %55
  %412 = fsub fast float -0.000000e+00, %56
  %413 = fmul fast float %371, %57
  %414 = fmul fast float %372, %57
  %415 = fmul fast float %373, %57
  %416 = fmul fast float %376, %410
  %417 = fmul fast float %376, %411
  %418 = fmul fast float %376, %412
  %419 = fadd fast float %413, %416
  %420 = fadd fast float %414, %417
  %421 = fadd fast float %415, %418
  %422 = fmul fast float %373, %411
  %423 = fmul fast float %372, %412
  %424 = fsub fast float %422, %423
  %425 = fmul fast float %371, %412
  %426 = fmul fast float %373, %410
  %427 = fsub fast float %425, %426
  %428 = fmul fast float %372, %410
  %429 = fmul fast float %371, %411
  %430 = fsub fast float %428, %429
  %431 = fadd fast float %419, %424
  %432 = fadd fast float %420, %427
  %433 = fadd fast float %421, %430
  %434 = fmul fast float %376, %57
  %435 = call float @dx.op.dot3.f32(i32 55, float %410, float %411, float %412, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %436 = fsub fast float %434, %435
  %437 = fsub float %407, %36
  %438 = fsub float %408, %37
  %439 = fsub float %409, %38
  %440 = fdiv float 1.000000e+00, %39
  %441 = fmul float %440, %437
  %442 = fmul float %440, %438
  %443 = fmul float %440, %439
  %444 = fmul float %441, 5.000000e-01
  %445 = fmul float %442, 5.000000e-01
  %446 = fmul float %443, 5.000000e-01
  %447 = fadd float %444, 5.000000e-01
  %448 = fadd float %445, 5.000000e-01
  %449 = fadd float %446, 5.000000e-01
  %450 = call float @dx.op.unary.f32(i32 7, float %447), !dx.precise !21  ; Saturate(value)
  %451 = call float @dx.op.unary.f32(i32 7, float %448), !dx.precise !21  ; Saturate(value)
  %452 = call float @dx.op.unary.f32(i32 7, float %449), !dx.precise !21  ; Saturate(value)
  %453 = fmul float %450, 2.097151e+06
  %454 = fmul float %451, 2.097151e+06
  %455 = fmul float %452, 2.097151e+06
  %456 = fptoui float %453 to i32
  %457 = fptoui float %454 to i32
  %458 = fptoui float %455 to i32
  %459 = shl i32 %457, 21
  %460 = or i32 %459, %456
  %461 = lshr i32 %457, 11
  %462 = shl i32 %458, 10
  %463 = or i32 %462, %461
  %464 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  %465 = call float @dx.op.unary.f32(i32 6, float %431)  ; FAbs(value)
  %466 = fcmp fast oge float %464, %465
  %467 = call float @dx.op.unary.f32(i32 6, float %432)  ; FAbs(value)
  %468 = fcmp fast oge float %464, %467
  %469 = and i1 %466, %468
  br i1 %469, label %470, label %473, !dx.controlflow.hints !24

; <label>:470                                     ; preds = %258
  %471 = fcmp fast olt float %433, 0.000000e+00
  %472 = select i1 %471, float 5.000000e+00, float 4.000000e+00
  br label %481

; <label>:473                                     ; preds = %258
  %474 = fcmp fast ult float %467, %465
  br i1 %474, label %478, label %475, !dx.controlflow.hints !25

; <label>:475                                     ; preds = %473
  %476 = fcmp fast olt float %432, 0.000000e+00
  %477 = select i1 %476, float 3.000000e+00, float 2.000000e+00
  br label %481

; <label>:478                                     ; preds = %473
  %479 = fcmp fast olt float %431, 0.000000e+00
  %480 = select i1 %479, float 1.000000e+00, float 0.000000e+00
  br label %481

; <label>:481                                     ; preds = %478, %475, %470
  %482 = phi float [ %472, %470 ], [ %477, %475 ], [ %480, %478 ]
  %483 = fmul fast float %482, 5.000000e-01
  %484 = fptoui float %483 to i32
  %485 = call float @dx.op.unary.f32(i32 6, float %436)  ; FAbs(value)
  %486 = call float @dx.op.binary.f32(i32 35, float %467, float %464)  ; FMax(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float %465, float %486)  ; FMax(a,b)
  %488 = fcmp fast ogt float %485, %487
  %489 = select i1 %488, i32 3, i32 %484
  %490 = icmp eq i32 %489, 0
  %491 = select i1 %490, float %432, float %431
  %492 = select i1 %490, float %433, float %432
  %493 = select i1 %490, float %436, float %433
  %494 = select i1 %490, float %431, float %436
  %495 = icmp eq i32 %489, 1
  %496 = select i1 %495, float %493, float %492
  %497 = select i1 %495, float %494, float %493
  %498 = select i1 %495, float %492, float %494
  %499 = icmp eq i32 %489, 2
  %500 = select i1 %499, float %498, float %497
  %501 = select i1 %499, float %497, float %498
  %502 = fcmp fast ogt float %501, 0.000000e+00
  %503 = select i1 %502, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %504 = fmul fast float %503, %491
  %505 = fmul fast float %503, %496
  %506 = fmul fast float %503, %500
  %507 = fadd fast float %504, 1.000000e+00
  %508 = fmul fast float %507, 5.000000e-01
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fmul fast float %509, 1.023000e+03
  %511 = fptoui float %510 to i32
  %512 = fadd fast float %505, 1.000000e+00
  %513 = fmul fast float %512, 5.000000e-01
  %514 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  %515 = fmul fast float %514, 1.023000e+03
  %516 = fptoui float %515 to i32
  %517 = fadd fast float %506, 1.000000e+00
  %518 = fmul fast float %517, 5.000000e-01
  %519 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  %520 = fmul fast float %519, 5.110000e+02
  %521 = fptoui float %520 to i32
  %522 = shl i32 %516, 10
  %523 = shl i32 %521, 20
  %524 = fcmp fast ogt float %190, 0.000000e+00
  %525 = select i1 %524, i32 0, i32 536870912
  %526 = shl i32 %489, 30
  %527 = or i32 %511, %525
  %528 = or i32 %527, %526
  %529 = or i32 %528, %522
  %530 = or i32 %529, %523
  %531 = select i1 %22, i32 %460, i32 0
  %532 = select i1 %22, i32 %463, i32 0
  %533 = shl i32 %67, 3
  %534 = add i32 %29, %533
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %534, i32 undef, i32 %531, i32 %532, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %535 = shl i32 %67, 2
  %536 = add i32 %27, %535
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %536, i32 undef, i32 %530, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %537 = bitcast float %407 to i32
  %538 = bitcast float %408 to i32
  %539 = bitcast float %409 to i32
  %540 = mul i32 %67, 12
  %541 = add i32 %28, %540
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %541, i32 undef, i32 %537, i32 %538, i32 %539, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %542

; <label>:542                                     ; preds = %481, %0
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
!14 = !{void ()* @cs_skinning_unified_unpacked_positions_main, !"cs_skinning_unified_unpacked_positions_main", null, !4, !15}
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

