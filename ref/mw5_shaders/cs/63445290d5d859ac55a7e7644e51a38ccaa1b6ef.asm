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
; shader hash: 8a9b0d348f0b01b9f59c20e8ce678eee
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
;   [16 x i8] (type annotation not present)
;
; }
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
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture    byte         r/o      T2             t3     1
;                                   texture    byte         r/o      T3             t4     1
;                                   texture    byte         r/o      T4             t5     1
;                                   texture    byte         r/o      T5             t6     1
;                                   texture    byte         r/o      T6             t7     1
;                                   texture    byte         r/o      T7             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<UDQ>" = type { %struct.UDQ }
%struct.UDQ = type { <4 x float>, <4 x float> }
%struct.RWByteAddressBuffer = type { i32 }
%SkinningPassConsts_decl = type { %struct.SkinningPassConsts }
%struct.SkinningPassConsts = type { i32, i32, i32, i32 }

define void @cs_skinning_deform_factors_weight_blend_dismember_unified_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %13 = alloca [4 x i32], align 4
  %14 = alloca [4 x i32], align 4
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %17 = add i32 %16, %11
  %18 = shl i32 %17, 3
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = extractvalue %dx.types.ResRet.i32 %19, 1
  %22 = and i32 %20, 65535
  %23 = mul nuw nsw i32 %22, 144
  %24 = lshr i32 %20, 16
  %25 = and i32 %21, 65535
  %26 = lshr i32 %21, 16
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = extractvalue %dx.types.ResRet.i32 %27, 1
  %30 = extractvalue %dx.types.ResRet.i32 %27, 2
  %31 = extractvalue %dx.types.ResRet.i32 %27, 3
  %32 = icmp ne i32 %28, -1
  %33 = select i1 %32, i32 %28, i32 0
  %34 = add nuw nsw i32 %23, 16
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = extractvalue %dx.types.ResRet.i32 %35, 1
  %38 = extractvalue %dx.types.ResRet.i32 %35, 3
  %39 = and i32 %36, 2147483647
  %40 = add nuw nsw i32 %23, 32
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = extractvalue %dx.types.ResRet.i32 %41, 3
  %46 = bitcast i32 %42 to float
  %47 = bitcast i32 %43 to float
  %48 = bitcast i32 %44 to float
  %49 = bitcast i32 %45 to float
  %50 = add nuw nsw i32 %23, 48
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = extractvalue %dx.types.ResRet.i32 %51, 2
  %55 = bitcast i32 %52 to float
  %56 = bitcast i32 %53 to float
  %57 = bitcast i32 %54 to float
  %58 = add nuw nsw i32 %23, 64
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = extractvalue %dx.types.ResRet.i32 %59, 1
  %62 = extractvalue %dx.types.ResRet.i32 %59, 2
  %63 = extractvalue %dx.types.ResRet.i32 %59, 3
  %64 = bitcast i32 %60 to float
  %65 = bitcast i32 %61 to float
  %66 = bitcast i32 %62 to float
  %67 = bitcast i32 %63 to float
  %68 = add nuw nsw i32 %23, 80
  %69 = shl nuw nsw i32 %25, 3
  %70 = add nsw i32 %69, -8
  %71 = add nsw i32 %70, %68
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = extractvalue %dx.types.ResRet.i32 %72, 1
  %75 = icmp ugt i32 %25, 1
  br i1 %75, label %76, label %82, !dx.controlflow.hints !22

; <label>:76                                      ; preds = %0
  %77 = add nsw i32 %69, -16
  %78 = add nsw i32 %77, %68
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = sub i32 %73, %80
  br label %82

; <label>:82                                      ; preds = %76, %0
  %83 = phi i32 [ %81, %76 ], [ %73, %0 ]
  %84 = phi i32 [ %80, %76 ], [ 0, %0 ]
  %85 = extractvalue %dx.types.CBufRet.i32 %15, 3
  %86 = sub i32 %22, %85
  %87 = shl i32 %86, 3
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = extractvalue %dx.types.ResRet.i32 %88, 1
  %91 = icmp ult i32 %12, %24
  br i1 %91, label %92, label %1252, !dx.controlflow.hints !23

; <label>:92                                      ; preds = %82
  %93 = add i32 %26, %12
  %94 = add i32 %74, %93
  %95 = shl i32 %94, 2
  %96 = lshr i32 %94, 8
  %97 = and i32 %96, 4194303
  %98 = add i32 %97, %31
  %99 = shl i32 %98, 2
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = shl i32 %101, 10
  %103 = and i32 %95, 1020
  %104 = or i32 %102, %103
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, 65535
  %108 = add i32 %107, %33
  %109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %108, i32 0)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = extractvalue %dx.types.ResRet.f32 %109, 1
  %112 = extractvalue %dx.types.ResRet.f32 %109, 2
  %113 = extractvalue %dx.types.ResRet.f32 %109, 3
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %108, i32 16)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  %118 = extractvalue %dx.types.ResRet.f32 %114, 3
  %119 = icmp slt i32 %36, 0
  %120 = shl i32 %93, 3
  %121 = shl i32 %93, 2
  br i1 %119, label %122, label %130, !dx.controlflow.hints !24

; <label>:122                                     ; preds = %92
  %123 = add i32 %39, %120
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = extractvalue %dx.types.ResRet.i32 %124, 1
  %127 = add i32 %37, %121
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  br label %154

; <label>:130                                     ; preds = %92
  %131 = lshr i32 %93, 7
  %132 = and i32 %131, 4194303
  %133 = add i32 %132, %29
  %134 = shl i32 %133, 2
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = shl i32 %136, 10
  %138 = and i32 %120, 1016
  %139 = or i32 %137, %138
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %139, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = extractvalue %dx.types.ResRet.i32 %140, 1
  %143 = lshr i32 %93, 8
  %144 = and i32 %143, 4194303
  %145 = add i32 %144, %30
  %146 = shl i32 %145, 2
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %146, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = shl i32 %148, 10
  %150 = and i32 %121, 1020
  %151 = or i32 %149, %150
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  br label %154

; <label>:154                                     ; preds = %130, %122
  %155 = phi i32 [ %125, %122 ], [ %141, %130 ]
  %156 = phi i32 [ %126, %122 ], [ %142, %130 ]
  %157 = phi i32 [ %129, %122 ], [ %153, %130 ]
  %158 = and i32 %155, 2097151
  %159 = uitofp i32 %158 to float
  %160 = lshr i32 %155, 21
  %161 = shl i32 %156, 11
  %162 = and i32 %161, 2095104
  %163 = or i32 %162, %160
  %164 = uitofp i32 %163 to float
  %165 = lshr i32 %156, 10
  %166 = and i32 %165, 2097151
  %167 = uitofp i32 %166 to float
  %168 = fdiv float %159, 2.097151e+06
  %169 = fdiv float %164, 2.097151e+06
  %170 = fdiv float %167, 2.097151e+06
  %171 = fmul float %168, 2.000000e+00
  %172 = fmul float %169, 2.000000e+00
  %173 = fmul float %170, 2.000000e+00
  %174 = fadd float %171, -1.000000e+00
  %175 = fadd float %172, -1.000000e+00
  %176 = fadd float %173, -1.000000e+00
  %177 = fmul float %49, %174
  %178 = fmul float %49, %175
  %179 = fmul float %49, %176
  %180 = fadd float %46, %177
  %181 = fadd float %47, %178
  %182 = fadd float %48, %179
  %183 = lshr i32 %157, 30
  %184 = and i32 %157, 1023
  %185 = uitofp i32 %184 to float
  %186 = lshr i32 %157, 10
  %187 = and i32 %186, 1023
  %188 = uitofp i32 %187 to float
  %189 = lshr i32 %157, 20
  %190 = and i32 %189, 511
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %185, 0x3F56A64800000000
  %193 = fadd fast float %192, 0xBFE6A09E60000000
  %194 = fmul fast float %188, 0x3F56A64800000000
  %195 = fadd fast float %194, 0xBFE6A09E60000000
  %196 = fmul fast float %191, 0x3F66ABF460000000
  %197 = fadd fast float %196, 0xBFE6A09E60000000
  %198 = call float @dx.op.dot3.f32(i32 55, float %193, float %195, float %197, float %193, float %195, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fsub fast float 1.000000e+00, %199
  %201 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %202 = icmp eq i32 %183, 0
  br i1 %202, label %209, label %203, !dx.controlflow.hints !25

; <label>:203                                     ; preds = %154
  %204 = icmp eq i32 %183, 1
  br i1 %204, label %209, label %205, !dx.controlflow.hints !26

; <label>:205                                     ; preds = %203
  %206 = icmp eq i32 %183, 2
  %207 = select i1 %206, float %201, float %197
  %208 = select i1 %206, float %197, float %201
  br label %209

; <label>:209                                     ; preds = %205, %203, %154
  %210 = phi float [ %201, %154 ], [ %193, %203 ], [ %193, %205 ]
  %211 = phi float [ %193, %154 ], [ %201, %203 ], [ %195, %205 ]
  %212 = phi float [ %195, %154 ], [ %195, %203 ], [ %207, %205 ]
  %213 = phi float [ %197, %154 ], [ %197, %203 ], [ %208, %205 ]
  %214 = and i32 %157, 536870912
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %215, float -1.000000e+00, float 1.000000e+00
  %217 = call float @dx.op.dot4.f32(i32 56, float %110, float %111, float %112, float %113, float %110, float %111, float %112, float %113)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %218 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %219 = fdiv fast float 1.000000e+00, %218
  %220 = fmul fast float %219, %113
  %221 = fmul fast float %219, %110
  %222 = fmul fast float %219, %111
  %223 = fmul fast float %219, %112
  %224 = fmul fast float %219, %118
  %225 = fmul fast float %219, %115
  %226 = fmul fast float %219, %116
  %227 = fmul fast float %219, %117
  %228 = fmul fast float %222, %182
  %229 = fmul fast float %223, %181
  %230 = fsub fast float %228, %229
  %231 = fmul fast float %223, %180
  %232 = fmul fast float %221, %182
  %233 = fsub fast float %231, %232
  %234 = fmul fast float %221, %181
  %235 = fmul fast float %222, %180
  %236 = fsub fast float %234, %235
  %237 = fmul fast float %220, %180
  %238 = fmul fast float %220, %181
  %239 = fmul fast float %220, %182
  %240 = fadd fast float %230, %237
  %241 = fadd fast float %233, %238
  %242 = fadd fast float %236, %239
  %243 = fmul fast float %225, %220
  %244 = fmul fast float %226, %220
  %245 = fmul fast float %227, %220
  %246 = fmul fast float %221, %224
  %247 = fmul fast float %222, %224
  %248 = fmul fast float %223, %224
  %249 = fmul fast float %222, %227
  %250 = fmul fast float %223, %226
  %251 = fmul fast float %223, %225
  %252 = fmul fast float %221, %227
  %253 = fmul fast float %221, %226
  %254 = fmul fast float %222, %225
  %255 = fsub fast float %243, %246
  %256 = fsub fast float %255, %250
  %257 = fadd fast float %256, %249
  %258 = fsub fast float %244, %247
  %259 = fsub fast float %258, %252
  %260 = fadd fast float %259, %251
  %261 = fsub fast float %245, %248
  %262 = fsub fast float %261, %254
  %263 = fadd fast float %262, %253
  %264 = fmul fast float %221, 2.000000e+00
  %265 = fmul fast float %222, 2.000000e+00
  %266 = fmul fast float %223, 2.000000e+00
  %267 = fmul fast float %242, %265
  %268 = fmul fast float %241, %266
  %269 = fmul fast float %240, %266
  %270 = fmul fast float %242, %264
  %271 = fmul fast float %241, %264
  %272 = fmul fast float %240, %265
  %273 = lshr i32 %106, 16
  %274 = uitofp i32 %273 to float
  %275 = fdiv float %274, 6.553500e+04
  br i1 %75, label %276, label %612

; <label>:276                                     ; preds = %209
  %277 = and i32 %21, 65535
  br label %278

; <label>:278                                     ; preds = %457, %276
  %279 = phi float [ %350, %457 ], [ 0.000000e+00, %276 ]
  %280 = phi float [ %351, %457 ], [ 0.000000e+00, %276 ]
  %281 = phi float [ %352, %457 ], [ 0.000000e+00, %276 ]
  %282 = phi float [ %353, %457 ], [ 0.000000e+00, %276 ]
  %283 = phi float [ %342, %457 ], [ 0.000000e+00, %276 ]
  %284 = phi float [ %343, %457 ], [ 0.000000e+00, %276 ]
  %285 = phi float [ %344, %457 ], [ 0.000000e+00, %276 ]
  %286 = phi float [ %345, %457 ], [ 0.000000e+00, %276 ]
  %287 = phi float [ %323, %457 ], [ 0.000000e+00, %276 ]
  %288 = phi float [ %607, %457 ], [ 0.000000e+00, %276 ]
  %289 = phi i32 [ %608, %457 ], [ 0, %276 ]
  %290 = phi float [ %579, %457 ], [ 0.000000e+00, %276 ]
  %291 = phi float [ %580, %457 ], [ 0.000000e+00, %276 ]
  %292 = phi float [ %581, %457 ], [ 0.000000e+00, %276 ]
  %293 = phi float [ %458, %457 ], [ 0.000000e+00, %276 ]
  %294 = phi float [ %459, %457 ], [ 0.000000e+00, %276 ]
  %295 = phi float [ %460, %457 ], [ 0.000000e+00, %276 ]
  %296 = phi float [ %461, %457 ], [ 0.000000e+00, %276 ]
  %297 = phi float [ %462, %457 ], [ 0.000000e+00, %276 ]
  %298 = phi float [ %463, %457 ], [ 0.000000e+00, %276 ]
  %299 = phi float [ %464, %457 ], [ 0.000000e+00, %276 ]
  %300 = phi float [ %585, %457 ], [ 0.000000e+00, %276 ]
  %301 = phi float [ %586, %457 ], [ 0.000000e+00, %276 ]
  %302 = phi float [ %587, %457 ], [ 0.000000e+00, %276 ]
  %303 = phi i32 [ %609, %457 ], [ 1, %276 ]
  %304 = mul i32 %303, %83
  %305 = add i32 %94, %304
  %306 = shl i32 %305, 2
  %307 = lshr i32 %305, 8
  %308 = and i32 %307, 4194303
  %309 = add i32 %308, %31
  %310 = shl i32 %309, 2
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = shl i32 %312, 10
  %314 = and i32 %306, 1020
  %315 = or i32 %313, %314
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = lshr i32 %317, 16
  %320 = uitofp i32 %319 to float
  %321 = fmul float %320, 0x3EF0000000000000
  %322 = add i32 %318, %33
  %323 = fadd float %287, %321
  %324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %322, i32 0)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = extractvalue %dx.types.ResRet.f32 %324, 1
  %327 = extractvalue %dx.types.ResRet.f32 %324, 2
  %328 = extractvalue %dx.types.ResRet.f32 %324, 3
  %329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %322, i32 16)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = extractvalue %dx.types.ResRet.f32 %329, 2
  %333 = extractvalue %dx.types.ResRet.f32 %329, 3
  %334 = call float @dx.op.dot4.f32(i32 56, float %110, float %111, float %112, float %113, float %325, float %326, float %327, float %328), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %335 = fcmp olt float %334, 0.000000e+00
  %336 = fsub float -0.000000e+00, %321
  %337 = select i1 %335, float %336, float %321
  %338 = fmul float %325, %337
  %339 = fmul float %326, %337
  %340 = fmul float %327, %337
  %341 = fmul float %328, %337
  %342 = fadd float %283, %338
  %343 = fadd float %284, %339
  %344 = fadd float %285, %340
  %345 = fadd float %286, %341
  %346 = fmul float %330, %337
  %347 = fmul float %331, %337
  %348 = fmul float %332, %337
  %349 = fmul float %333, %337
  %350 = fadd float %279, %346
  %351 = fadd float %280, %347
  %352 = fadd float %281, %348
  %353 = fadd float %282, %349
  %354 = fcmp une float %275, 0.000000e+00
  %355 = fsub float -0.000000e+00, %325
  %356 = fsub float -0.000000e+00, %326
  %357 = fsub float -0.000000e+00, %327
  br i1 %354, label %358, label %457, !dx.controlflow.hints !28

; <label>:358                                     ; preds = %278
  %359 = fmul float %333, %355
  %360 = fmul float %333, %356
  %361 = fmul float %333, %357
  %362 = fmul float %328, %330
  %363 = fmul float %328, %331
  %364 = fmul float %328, %332
  %365 = fadd float %359, %362
  %366 = fadd float %360, %363
  %367 = fadd float %361, %364
  %368 = fmul float %331, %357
  %369 = fmul float %332, %356
  %370 = fsub float %368, %369
  %371 = fmul float %332, %355
  %372 = fmul float %330, %357
  %373 = fsub float %371, %372
  %374 = fmul float %330, %356
  %375 = fmul float %331, %355
  %376 = fsub float %374, %375
  %377 = fadd float %365, %370
  %378 = fadd float %366, %373
  %379 = fadd float %367, %376
  %380 = fmul float %377, 2.000000e+00
  %381 = fmul float %378, 2.000000e+00
  %382 = fmul float %379, 2.000000e+00
  %383 = fmul float %182, %326
  %384 = fmul float %181, %327
  %385 = fsub float %383, %384
  %386 = fmul float %180, %327
  %387 = fmul float %182, %325
  %388 = fsub float %386, %387
  %389 = fmul float %181, %325
  %390 = fmul float %180, %326
  %391 = fsub float %389, %390
  %392 = fmul float %385, 2.000000e+00
  %393 = fmul float %388, 2.000000e+00
  %394 = fmul float %391, 2.000000e+00
  %395 = fmul float %328, %392
  %396 = fmul float %328, %393
  %397 = fmul float %328, %394
  %398 = fadd float %180, %395
  %399 = fadd float %181, %396
  %400 = fadd float %182, %397
  %401 = fmul float %326, %394
  %402 = fmul float %327, %393
  %403 = fsub float %401, %402
  %404 = fmul float %327, %392
  %405 = fmul float %325, %394
  %406 = fsub float %404, %405
  %407 = fmul float %325, %393
  %408 = fmul float %326, %392
  %409 = fsub float %407, %408
  %410 = fadd float %398, %403
  %411 = fadd float %399, %406
  %412 = fadd float %400, %409
  %413 = fadd float %380, %410
  %414 = fadd float %381, %411
  %415 = fadd float %382, %412
  %416 = fmul float %321, %413
  %417 = fmul float %321, %414
  %418 = fmul float %321, %415
  %419 = fadd float %297, %416
  %420 = fadd float %298, %417
  %421 = fadd float %299, %418
  %422 = fmul fast float %328, %210
  %423 = fmul fast float %328, %211
  %424 = fmul fast float %328, %212
  %425 = fmul fast float %325, %213
  %426 = fmul fast float %326, %213
  %427 = fmul fast float %327, %213
  %428 = fadd fast float %422, %425
  %429 = fadd fast float %423, %426
  %430 = fadd fast float %424, %427
  %431 = fmul fast float %326, %212
  %432 = fmul fast float %327, %211
  %433 = fsub fast float %431, %432
  %434 = fmul fast float %327, %210
  %435 = fmul fast float %325, %212
  %436 = fsub fast float %434, %435
  %437 = fmul fast float %325, %211
  %438 = fmul fast float %326, %210
  %439 = fsub fast float %437, %438
  %440 = fadd fast float %428, %433
  %441 = fadd fast float %429, %436
  %442 = fadd fast float %430, %439
  %443 = fmul fast float %328, %213
  %444 = call float @dx.op.dot3.f32(i32 55, float %325, float %326, float %327, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = fsub fast float %443, %444
  %446 = call float @dx.op.dot4.f32(i32 56, float %293, float %294, float %295, float %296, float %440, float %441, float %442, float %445)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %447 = fcmp fast olt float %446, 0.000000e+00
  %448 = select i1 %447, float %336, float %321
  %449 = fmul fast float %448, %440
  %450 = fmul fast float %448, %441
  %451 = fmul fast float %448, %442
  %452 = fmul fast float %448, %445
  %453 = fadd fast float %449, %293
  %454 = fadd fast float %450, %294
  %455 = fadd fast float %451, %295
  %456 = fadd fast float %452, %296
  br label %457

; <label>:457                                     ; preds = %358, %278
  %458 = phi float [ %453, %358 ], [ %293, %278 ]
  %459 = phi float [ %454, %358 ], [ %294, %278 ]
  %460 = phi float [ %455, %358 ], [ %295, %278 ]
  %461 = phi float [ %456, %358 ], [ %296, %278 ]
  %462 = phi float [ %419, %358 ], [ %297, %278 ]
  %463 = phi float [ %420, %358 ], [ %298, %278 ]
  %464 = phi float [ %421, %358 ], [ %299, %278 ]
  %465 = fsub fast float -0.000000e+00, %328
  %466 = fsub fast float -0.000000e+00, %330
  %467 = fsub fast float -0.000000e+00, %331
  %468 = fsub fast float -0.000000e+00, %332
  %469 = fsub fast float -0.000000e+00, %333
  %470 = select i1 %335, float %466, float %330
  %471 = select i1 %335, float %467, float %331
  %472 = select i1 %335, float %468, float %332
  %473 = select i1 %335, float %469, float %333
  %474 = select i1 %335, float %355, float %325
  %475 = select i1 %335, float %356, float %326
  %476 = select i1 %335, float %357, float %327
  %477 = select i1 %335, float %465, float %328
  %478 = call float @dx.op.dot4.f32(i32 56, float %474, float %475, float %476, float %477, float %474, float %475, float %476, float %477)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %479 = call float @dx.op.unary.f32(i32 24, float %478)  ; Sqrt(value)
  %480 = fdiv fast float 1.000000e+00, %479
  %481 = fmul fast float %480, %477
  %482 = fmul fast float %480, %474
  %483 = fmul fast float %480, %475
  %484 = fmul fast float %480, %476
  %485 = fmul fast float %480, %473
  %486 = fmul fast float %480, %470
  %487 = fmul fast float %480, %471
  %488 = fmul fast float %480, %472
  %489 = fmul fast float %483, %182
  %490 = fmul fast float %484, %181
  %491 = fsub fast float %489, %490
  %492 = fmul fast float %484, %180
  %493 = fmul fast float %482, %182
  %494 = fsub fast float %492, %493
  %495 = fmul fast float %482, %181
  %496 = fmul fast float %483, %180
  %497 = fsub fast float %495, %496
  %498 = fmul fast float %481, %180
  %499 = fmul fast float %481, %181
  %500 = fmul fast float %481, %182
  %501 = fadd fast float %491, %498
  %502 = fadd fast float %494, %499
  %503 = fadd fast float %497, %500
  %504 = fmul fast float %486, %481
  %505 = fmul fast float %487, %481
  %506 = fmul fast float %488, %481
  %507 = fmul fast float %482, %485
  %508 = fmul fast float %483, %485
  %509 = fmul fast float %484, %485
  %510 = fmul fast float %483, %488
  %511 = fmul fast float %484, %487
  %512 = fmul fast float %484, %486
  %513 = fmul fast float %482, %488
  %514 = fmul fast float %482, %487
  %515 = fmul fast float %483, %486
  %516 = fsub fast float %504, %507
  %517 = fsub fast float %516, %511
  %518 = fadd fast float %517, %510
  %519 = fsub fast float %505, %508
  %520 = fsub fast float %519, %513
  %521 = fadd fast float %520, %512
  %522 = fsub fast float %506, %509
  %523 = fsub fast float %522, %515
  %524 = fadd fast float %523, %514
  %525 = fmul fast float %518, 2.000000e+00
  %526 = fmul fast float %521, 2.000000e+00
  %527 = fmul fast float %524, 2.000000e+00
  %528 = fmul fast float %482, 2.000000e+00
  %529 = fmul fast float %483, 2.000000e+00
  %530 = fmul fast float %484, 2.000000e+00
  %531 = fmul fast float %503, %529
  %532 = fmul fast float %502, %530
  %533 = fmul fast float %501, %530
  %534 = fmul fast float %503, %528
  %535 = fmul fast float %502, %528
  %536 = fmul fast float %501, %529
  %537 = fmul fast float %257, -2.000000e+00
  %538 = fadd fast float %268, %537
  %539 = fsub fast float %538, %267
  %540 = fadd fast float %539, %525
  %541 = fsub fast float %540, %532
  %542 = fadd fast float %541, %531
  %543 = fmul fast float %260, -2.000000e+00
  %544 = fadd fast float %270, %543
  %545 = fsub fast float %544, %269
  %546 = fadd fast float %545, %526
  %547 = fsub fast float %546, %534
  %548 = fadd fast float %547, %533
  %549 = fmul fast float %263, -2.000000e+00
  %550 = fadd fast float %272, %549
  %551 = fsub fast float %550, %271
  %552 = fadd fast float %551, %527
  %553 = fsub fast float %552, %536
  %554 = fadd fast float %553, %535
  %555 = sub i32 %93, %84
  %556 = add nsw i32 %303, -1
  %557 = mul i32 %556, %83
  %558 = add i32 %555, %74
  %559 = add i32 %558, %557
  %560 = shl i32 %559, 2
  %561 = lshr i32 %559, 8
  %562 = and i32 %561, 4194303
  %563 = add i32 %562, %38
  %564 = shl i32 %563, 2
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = shl i32 %566, 10
  %568 = and i32 %560, 1020
  %569 = or i32 %567, %568
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %571, 16
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = fmul fast float %542, %573
  %577 = fmul fast float %548, %573
  %578 = fmul fast float %554, %573
  %579 = fadd fast float %576, %290
  %580 = fadd fast float %577, %291
  %581 = fadd fast float %578, %292
  %582 = fmul fast float %575, %542
  %583 = fmul fast float %575, %548
  %584 = fmul fast float %575, %554
  %585 = fadd fast float %582, %300
  %586 = fadd fast float %583, %301
  %587 = fadd fast float %584, %302
  %588 = and i32 %317, 65532
  %589 = add i32 %588, %90
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 255
  %593 = lshr i32 %591, 8
  %594 = and i32 %593, 255
  %595 = lshr i32 %591, 16
  %596 = and i32 %595, 255
  %597 = lshr i32 %591, 24
  %598 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %592, i32* %598, align 4
  %599 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %594, i32* %599, align 4
  %600 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %596, i32* %600, align 4
  %601 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %597, i32* %601, align 4
  %602 = and i32 %317, 3
  %603 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %602
  %604 = load i32, i32* %603, align 4, !tbaa !29, !noalias !33
  %605 = icmp ne i32 %604, 255
  %606 = fadd float %288, %321
  %607 = select i1 %605, float %606, float %288
  %608 = select i1 %605, i32 %604, i32 %289
  %609 = add nuw nsw i32 %303, 1
  %610 = icmp eq i32 %609, %277
  br i1 %610, label %611, label %278, !llvm.loop !37

; <label>:611                                     ; preds = %457
  br label %612

; <label>:612                                     ; preds = %611, %209
  %613 = phi float [ 0.000000e+00, %209 ], [ %350, %611 ]
  %614 = phi float [ 0.000000e+00, %209 ], [ %351, %611 ]
  %615 = phi float [ 0.000000e+00, %209 ], [ %352, %611 ]
  %616 = phi float [ 0.000000e+00, %209 ], [ %353, %611 ]
  %617 = phi float [ 0.000000e+00, %209 ], [ %342, %611 ]
  %618 = phi float [ 0.000000e+00, %209 ], [ %343, %611 ]
  %619 = phi float [ 0.000000e+00, %209 ], [ %344, %611 ]
  %620 = phi float [ 0.000000e+00, %209 ], [ %345, %611 ]
  %621 = phi float [ 0.000000e+00, %209 ], [ %323, %611 ]
  %622 = phi float [ 0.000000e+00, %209 ], [ %607, %611 ]
  %623 = phi i32 [ 0, %209 ], [ %608, %611 ]
  %624 = phi float [ 0.000000e+00, %209 ], [ %579, %611 ]
  %625 = phi float [ 0.000000e+00, %209 ], [ %580, %611 ]
  %626 = phi float [ 0.000000e+00, %209 ], [ %581, %611 ]
  %627 = phi float [ 0.000000e+00, %209 ], [ %458, %611 ]
  %628 = phi float [ 0.000000e+00, %209 ], [ %459, %611 ]
  %629 = phi float [ 0.000000e+00, %209 ], [ %460, %611 ]
  %630 = phi float [ 0.000000e+00, %209 ], [ %461, %611 ]
  %631 = phi float [ 0.000000e+00, %209 ], [ %462, %611 ]
  %632 = phi float [ 0.000000e+00, %209 ], [ %463, %611 ]
  %633 = phi float [ 0.000000e+00, %209 ], [ %464, %611 ]
  %634 = phi float [ 0.000000e+00, %209 ], [ %585, %611 ]
  %635 = phi float [ 0.000000e+00, %209 ], [ %586, %611 ]
  %636 = phi float [ 0.000000e+00, %209 ], [ %587, %611 ]
  %637 = fsub float 1.000000e+00, %621
  %638 = fmul float %110, %637
  %639 = fmul float %111, %637
  %640 = fmul float %112, %637
  %641 = fmul float %113, %637
  %642 = fadd float %617, %638
  %643 = fadd float %618, %639
  %644 = fadd float %619, %640
  %645 = fadd float %620, %641
  %646 = fmul float %115, %637
  %647 = fmul float %116, %637
  %648 = fmul float %117, %637
  %649 = fmul float %118, %637
  %650 = fadd float %613, %646
  %651 = fadd float %614, %647
  %652 = fadd float %615, %648
  %653 = fadd float %616, %649
  %654 = call float @dx.op.dot4.f32(i32 56, float %642, float %643, float %644, float %645, float %642, float %643, float %644, float %645), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %655 = call float @dx.op.unary.f32(i32 24, float %654), !dx.precise !27  ; Sqrt(value)
  %656 = fdiv float 1.000000e+00, %655
  %657 = fmul float %645, %656
  %658 = fmul float %642, %656
  %659 = fmul float %643, %656
  %660 = fmul float %644, %656
  %661 = fmul float %653, %656
  %662 = fmul float %650, %656
  %663 = fmul float %651, %656
  %664 = fmul float %652, %656
  %665 = fmul float %182, %659
  %666 = fmul float %181, %660
  %667 = fsub float %665, %666
  %668 = fmul float %180, %660
  %669 = fmul float %182, %658
  %670 = fsub float %668, %669
  %671 = fmul float %181, %658
  %672 = fmul float %180, %659
  %673 = fsub float %671, %672
  %674 = fmul float %180, %657
  %675 = fmul float %181, %657
  %676 = fmul float %182, %657
  %677 = fadd float %674, %667
  %678 = fadd float %675, %670
  %679 = fadd float %676, %673
  %680 = fmul float %662, %657
  %681 = fmul float %663, %657
  %682 = fmul float %664, %657
  %683 = fmul float %658, %661
  %684 = fmul float %659, %661
  %685 = fmul float %660, %661
  %686 = fsub float %680, %683
  %687 = fsub float %681, %684
  %688 = fsub float %682, %685
  %689 = fmul float %659, %664
  %690 = fmul float %660, %663
  %691 = fsub float %689, %690
  %692 = fmul float %660, %662
  %693 = fmul float %658, %664
  %694 = fsub float %692, %693
  %695 = fmul float %658, %663
  %696 = fmul float %659, %662
  %697 = fsub float %695, %696
  %698 = fadd float %686, %691
  %699 = fadd float %687, %694
  %700 = fadd float %688, %697
  %701 = fmul float %698, 2.000000e+00
  %702 = fmul float %699, 2.000000e+00
  %703 = fmul float %700, 2.000000e+00
  %704 = fadd float %180, %701
  %705 = fadd float %181, %702
  %706 = fadd float %182, %703
  %707 = fmul float %658, 2.000000e+00
  %708 = fmul float %659, 2.000000e+00
  %709 = fmul float %660, 2.000000e+00
  %710 = fmul float %708, %679
  %711 = fmul float %709, %678
  %712 = fsub float %710, %711
  %713 = fmul float %709, %677
  %714 = fmul float %707, %679
  %715 = fsub float %713, %714
  %716 = fmul float %707, %678
  %717 = fmul float %708, %677
  %718 = fsub float %716, %717
  %719 = fadd float %704, %712
  %720 = fadd float %705, %715
  %721 = fadd float %706, %718
  %722 = fmul fast float %657, %210
  %723 = fmul fast float %657, %211
  %724 = fmul fast float %657, %212
  %725 = fmul fast float %658, %213
  %726 = fmul fast float %659, %213
  %727 = fmul fast float %660, %213
  %728 = fadd fast float %722, %725
  %729 = fadd fast float %723, %726
  %730 = fadd fast float %724, %727
  %731 = fmul fast float %659, %212
  %732 = fmul fast float %660, %211
  %733 = fsub fast float %731, %732
  %734 = fmul fast float %660, %210
  %735 = fmul fast float %658, %212
  %736 = fsub fast float %734, %735
  %737 = fmul fast float %658, %211
  %738 = fmul fast float %659, %210
  %739 = fsub fast float %737, %738
  %740 = fadd fast float %728, %733
  %741 = fadd fast float %729, %736
  %742 = fadd fast float %730, %739
  %743 = fmul fast float %657, %213
  %744 = call float @dx.op.dot3.f32(i32 55, float %658, float %659, float %660, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %745 = fsub fast float %743, %744
  %746 = fmul fast float %741, %741
  %747 = fmul fast float %746, 2.000000e+00
  %748 = fmul fast float %742, %742
  %749 = fmul fast float %748, 2.000000e+00
  %750 = fmul fast float %740, 2.000000e+00
  %751 = fmul fast float %750, %741
  %752 = fmul fast float %745, 2.000000e+00
  %753 = fmul fast float %752, %742
  %754 = fsub fast float %751, %753
  %755 = fmul fast float %741, %740
  %756 = fmul fast float %742, %745
  %757 = fmul fast float %740, %740
  %758 = fmul fast float %757, 2.000000e+00
  %759 = fsub fast float 1.000000e+00, %758
  %760 = fsub fast float %759, %749
  %761 = fmul fast float %750, %742
  %762 = fmul fast float %752, %741
  %763 = fsub fast float %761, %762
  %764 = fmul fast float %742, %741
  %765 = fmul fast float %740, %745
  %766 = fadd fast float %764, %765
  %767 = fmul fast float %754, %216
  %768 = fmul fast float %760, %216
  %769 = fmul fast float %216, 2.000000e+00
  %770 = fmul fast float %769, %766
  %771 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %624, float %625, float %626)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = call float @dx.op.unary.f32(i32 25, float %771)  ; Rsqrt(value)
  %773 = fmul fast float %772, 0x3FECCCCCC0000000
  %774 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %773)  ; FMin(a,b)
  %775 = fmul fast float %774, %624
  %776 = fmul fast float %774, %625
  %777 = fmul fast float %774, %626
  %778 = fadd fast float %775, 1.000000e+00
  %779 = fsub fast float %778, %747
  %780 = fsub fast float %779, %749
  %781 = fadd fast float %755, %756
  %782 = fmul fast float %781, 2.000000e+00
  %783 = fadd fast float %782, %776
  %784 = fadd fast float %763, %777
  %785 = call float @dx.op.dot3.f32(i32 55, float %634, float %635, float %636, float %634, float %635, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = call float @dx.op.unary.f32(i32 25, float %785)  ; Rsqrt(value)
  %787 = fmul fast float %786, 0x3FECCCCCC0000000
  %788 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %787)  ; FMin(a,b)
  %789 = fmul fast float %788, %634
  %790 = fmul fast float %788, %635
  %791 = fmul fast float %788, %636
  %792 = fadd fast float %767, %789
  %793 = fadd fast float %768, %790
  %794 = fadd fast float %770, %791
  %795 = fmul fast float %793, %784
  %796 = fmul fast float %794, %783
  %797 = fsub fast float %795, %796
  %798 = fmul fast float %794, %780
  %799 = fmul fast float %792, %784
  %800 = fsub fast float %798, %799
  %801 = fmul fast float %792, %783
  %802 = fmul fast float %793, %780
  %803 = fsub fast float %801, %802
  %804 = call float @dx.op.dot3.f32(i32 55, float %797, float %800, float %803, float %797, float %800, float %803)  ; Dot3(ax,ay,az,bx,by,bz)
  %805 = call float @dx.op.unary.f32(i32 25, float %804)  ; Rsqrt(value)
  %806 = fmul fast float %797, %805
  %807 = fmul fast float %800, %805
  %808 = fmul fast float %803, %805
  %809 = call float @dx.op.dot3.f32(i32 55, float %780, float %783, float %784, float %806, float %807, float %808)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = fsub fast float -0.000000e+00, %809
  %811 = fmul fast float %806, %810
  %812 = fmul fast float %807, %810
  %813 = fmul fast float %808, %810
  %814 = fadd fast float %811, %780
  %815 = fadd fast float %812, %783
  %816 = fadd fast float %813, %784
  %817 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float %814, float %815, float %816)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = call float @dx.op.unary.f32(i32 25, float %817)  ; Rsqrt(value)
  %819 = fmul fast float %814, %818
  %820 = fmul fast float %815, %818
  %821 = fmul fast float %816, %818
  %822 = fmul fast float %820, %808
  %823 = fmul fast float %821, %807
  %824 = fsub fast float %822, %823
  %825 = fmul fast float %821, %806
  %826 = fmul fast float %819, %808
  %827 = fsub fast float %825, %826
  %828 = fmul fast float %819, %807
  %829 = fmul fast float %820, %806
  %830 = fsub fast float %828, %829
  %831 = fmul fast float %824, %216
  %832 = fmul fast float %827, %216
  %833 = fmul fast float %830, %216
  %834 = fadd fast float %819, %808
  %835 = fadd fast float %834, %832
  %836 = fcmp fast ogt float %835, 0.000000e+00
  br i1 %836, label %837, label %848, !dx.controlflow.hints !39

; <label>:837                                     ; preds = %612
  %838 = fadd fast float %835, 1.000000e+00
  %839 = fsub fast float %833, %807
  %840 = fsub fast float %806, %821
  %841 = fsub fast float %820, %831
  %842 = call float @dx.op.unary.f32(i32 25, float %838)  ; Rsqrt(value)
  %843 = fmul fast float %842, 5.000000e-01
  %844 = fmul fast float %843, %839
  %845 = fmul fast float %843, %840
  %846 = fmul fast float %843, %841
  %847 = fmul fast float %843, %838
  br label %892

; <label>:848                                     ; preds = %612
  %849 = fcmp fast ogt float %819, %832
  %850 = fcmp fast ogt float %819, %808
  %851 = and i1 %850, %849
  br i1 %851, label %852, label %865, !dx.controlflow.hints !40

; <label>:852                                     ; preds = %848
  %853 = fsub fast float 1.000000e+00, %808
  %854 = fadd fast float %853, %819
  %855 = fsub fast float %854, %832
  %856 = fsub fast float %833, %807
  %857 = fadd fast float %831, %820
  %858 = fadd fast float %821, %806
  %859 = call float @dx.op.unary.f32(i32 25, float %855)  ; Rsqrt(value)
  %860 = fmul fast float %859, 5.000000e-01
  %861 = fmul fast float %860, %855
  %862 = fmul fast float %860, %857
  %863 = fmul fast float %860, %858
  %864 = fmul fast float %860, %856
  br label %892

; <label>:865                                     ; preds = %848
  %866 = fcmp fast ogt float %832, %808
  %867 = fadd fast float %833, %807
  br i1 %866, label %868, label %880, !dx.controlflow.hints !41

; <label>:868                                     ; preds = %865
  %869 = fsub fast float 1.000000e+00, %808
  %870 = fsub fast float %869, %819
  %871 = fadd fast float %870, %832
  %872 = fsub fast float %806, %821
  %873 = fadd fast float %831, %820
  %874 = call float @dx.op.unary.f32(i32 25, float %871)  ; Rsqrt(value)
  %875 = fmul fast float %874, 5.000000e-01
  %876 = fmul fast float %875, %873
  %877 = fmul fast float %875, %871
  %878 = fmul fast float %875, %867
  %879 = fmul fast float %875, %872
  br label %892

; <label>:880                                     ; preds = %865
  %881 = fadd fast float %808, 1.000000e+00
  %882 = fsub fast float %881, %819
  %883 = fsub fast float %882, %832
  %884 = fsub fast float %820, %831
  %885 = fadd fast float %821, %806
  %886 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %887 = fmul fast float %886, 5.000000e-01
  %888 = fmul fast float %887, %885
  %889 = fmul fast float %887, %867
  %890 = fmul fast float %887, %883
  %891 = fmul fast float %887, %884
  br label %892

; <label>:892                                     ; preds = %880, %868, %852, %837
  %893 = phi float [ %844, %837 ], [ %861, %852 ], [ %876, %868 ], [ %888, %880 ]
  %894 = phi float [ %845, %837 ], [ %862, %852 ], [ %877, %868 ], [ %889, %880 ]
  %895 = phi float [ %846, %837 ], [ %863, %852 ], [ %878, %868 ], [ %890, %880 ]
  %896 = phi float [ %847, %837 ], [ %864, %852 ], [ %879, %868 ], [ %891, %880 ]
  %897 = fcmp une float %275, 0.000000e+00
  br i1 %897, label %898, label %1038, !dx.controlflow.hints !42

; <label>:898                                     ; preds = %892
  %899 = fsub float -0.000000e+00, %110
  %900 = fsub float -0.000000e+00, %111
  %901 = fsub float -0.000000e+00, %112
  %902 = fmul float %118, %899
  %903 = fmul float %118, %900
  %904 = fmul float %118, %901
  %905 = fmul float %113, %115
  %906 = fmul float %113, %116
  %907 = fmul float %113, %117
  %908 = fadd float %902, %905
  %909 = fadd float %903, %906
  %910 = fadd float %904, %907
  %911 = fmul float %116, %901
  %912 = fmul float %117, %900
  %913 = fsub float %911, %912
  %914 = fmul float %117, %899
  %915 = fmul float %115, %901
  %916 = fsub float %914, %915
  %917 = fmul float %115, %900
  %918 = fmul float %116, %899
  %919 = fsub float %917, %918
  %920 = fadd float %908, %913
  %921 = fadd float %909, %916
  %922 = fadd float %910, %919
  %923 = fmul float %920, 2.000000e+00
  %924 = fmul float %921, 2.000000e+00
  %925 = fmul float %922, 2.000000e+00
  %926 = fmul float %111, %182
  %927 = fmul float %112, %181
  %928 = fsub float %926, %927
  %929 = fmul float %112, %180
  %930 = fmul float %110, %182
  %931 = fsub float %929, %930
  %932 = fmul float %110, %181
  %933 = fmul float %111, %180
  %934 = fsub float %932, %933
  %935 = fmul float %928, 2.000000e+00
  %936 = fmul float %931, 2.000000e+00
  %937 = fmul float %934, 2.000000e+00
  %938 = fmul float %113, %935
  %939 = fmul float %113, %936
  %940 = fmul float %113, %937
  %941 = fadd float %180, %938
  %942 = fadd float %181, %939
  %943 = fadd float %182, %940
  %944 = fmul float %111, %937
  %945 = fmul float %112, %936
  %946 = fsub float %944, %945
  %947 = fmul float %112, %935
  %948 = fmul float %110, %937
  %949 = fsub float %947, %948
  %950 = fmul float %110, %936
  %951 = fmul float %111, %935
  %952 = fsub float %950, %951
  %953 = fadd float %941, %946
  %954 = fadd float %942, %949
  %955 = fadd float %943, %952
  %956 = fadd float %923, %953
  %957 = fadd float %924, %954
  %958 = fadd float %925, %955
  %959 = fmul float %956, %637
  %960 = fmul float %957, %637
  %961 = fmul float %958, %637
  %962 = fadd float %959, %631
  %963 = fadd float %960, %632
  %964 = fadd float %961, %633
  %965 = fmul fast float %210, %113
  %966 = fmul fast float %211, %113
  %967 = fmul fast float %212, %113
  %968 = fmul fast float %213, %110
  %969 = fmul fast float %213, %111
  %970 = fmul fast float %213, %112
  %971 = fadd fast float %968, %965
  %972 = fadd fast float %969, %966
  %973 = fmul fast float %212, %111
  %974 = fmul fast float %211, %112
  %975 = fsub fast float %973, %974
  %976 = fmul fast float %210, %112
  %977 = fmul fast float %212, %110
  %978 = fsub fast float %976, %977
  %979 = fmul fast float %211, %110
  %980 = fmul fast float %210, %111
  %981 = fsub fast float %979, %980
  %982 = fadd fast float %971, %975
  %983 = fadd fast float %972, %978
  %984 = fadd fast float %981, %967
  %985 = fadd fast float %984, %970
  %986 = fmul fast float %213, %113
  %987 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %988 = fsub fast float %986, %987
  %989 = call float @dx.op.dot4.f32(i32 56, float %627, float %628, float %629, float %630, float %982, float %983, float %985, float %988)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %990 = fcmp fast olt float %989, 0.000000e+00
  %991 = fsub fast float -0.000000e+00, %637
  %992 = select i1 %990, float %991, float %637
  %993 = fmul fast float %992, %982
  %994 = fmul fast float %992, %983
  %995 = fmul fast float %992, %985
  %996 = fmul fast float %992, %988
  %997 = fadd fast float %993, %627
  %998 = fadd fast float %994, %628
  %999 = fadd fast float %995, %629
  %1000 = fadd fast float %996, %630
  %1001 = fsub float %962, %719
  %1002 = fsub float %963, %720
  %1003 = fsub float %964, %721
  %1004 = fmul float %275, %1001
  %1005 = fmul float %275, %1002
  %1006 = fmul float %275, %1003
  %1007 = fadd float %719, %1004
  %1008 = fadd float %720, %1005
  %1009 = fadd float %721, %1006
  %1010 = call float @dx.op.dot4.f32(i32 56, float %997, float %998, float %999, float %1000, float %893, float %894, float %895, float %896)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1011 = fcmp fast olt float %1010, 0.000000e+00
  %1012 = fsub fast float -0.000000e+00, %997
  %1013 = fsub fast float -0.000000e+00, %998
  %1014 = fsub fast float -0.000000e+00, %999
  %1015 = fsub fast float -0.000000e+00, %1000
  %1016 = select i1 %1011, float %1012, float %997
  %1017 = select i1 %1011, float %1013, float %998
  %1018 = select i1 %1011, float %1014, float %999
  %1019 = select i1 %1011, float %1015, float %1000
  %1020 = fsub fast float %1016, %893
  %1021 = fsub fast float %1017, %894
  %1022 = fsub fast float %1018, %895
  %1023 = fsub fast float %1019, %896
  %1024 = fmul fast float %1020, %275
  %1025 = fmul fast float %1021, %275
  %1026 = fmul fast float %1022, %275
  %1027 = fmul fast float %1023, %275
  %1028 = fadd fast float %1024, %893
  %1029 = fadd fast float %1025, %894
  %1030 = fadd fast float %1026, %895
  %1031 = fadd fast float %1027, %896
  %1032 = call float @dx.op.dot4.f32(i32 56, float %1028, float %1029, float %1030, float %1031, float %1028, float %1029, float %1030, float %1031)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1033 = call float @dx.op.unary.f32(i32 25, float %1032)  ; Rsqrt(value)
  %1034 = fmul fast float %1028, %1033
  %1035 = fmul fast float %1029, %1033
  %1036 = fmul fast float %1030, %1033
  %1037 = fmul fast float %1031, %1033
  br label %1038

; <label>:1038                                    ; preds = %898, %892
  %1039 = phi float [ %1034, %898 ], [ %893, %892 ]
  %1040 = phi float [ %1035, %898 ], [ %894, %892 ]
  %1041 = phi float [ %1036, %898 ], [ %895, %892 ]
  %1042 = phi float [ %1037, %898 ], [ %896, %892 ]
  %1043 = phi float [ %1007, %898 ], [ %719, %892 ]
  %1044 = phi float [ %1008, %898 ], [ %720, %892 ]
  %1045 = phi float [ %1009, %898 ], [ %721, %892 ]
  %1046 = and i32 %106, 65532
  %1047 = add i32 %1046, %90
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 255
  %1051 = lshr i32 %1049, 8
  %1052 = and i32 %1051, 255
  %1053 = lshr i32 %1049, 16
  %1054 = and i32 %1053, 255
  %1055 = lshr i32 %1049, 24
  %1056 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %1050, i32* %1056, align 4
  %1057 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %1052, i32* %1057, align 4
  %1058 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %1054, i32* %1058, align 4
  %1059 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %1055, i32* %1059, align 4
  %1060 = and i32 %106, 3
  %1061 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %1060
  %1062 = load i32, i32* %1061, align 4, !tbaa !29, !noalias !43
  %1063 = icmp ne i32 %1062, 255
  %1064 = fadd float %622, %637
  %1065 = select i1 %1063, float %1064, float %622
  %1066 = fcmp ogt float %1065, 0.000000e+00
  br i1 %1066, label %1067, label %1088, !dx.controlflow.hints !47

; <label>:1067                                    ; preds = %1038
  %1068 = select i1 %1063, i32 %1062, i32 %623
  %1069 = mul i32 %1068, 12
  %1070 = add i32 %1069, %89
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.i32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.i32 %1071, 2
  %1075 = bitcast i32 %1072 to float
  %1076 = bitcast i32 %1073 to float
  %1077 = bitcast i32 %1074 to float
  %1078 = fsub float %1075, %1043
  %1079 = fsub float %1076, %1044
  %1080 = fsub float %1077, %1045
  %1081 = call float @dx.op.unary.f32(i32 7, float %1065), !dx.precise !27  ; Saturate(value)
  %1082 = fmul float %1081, %1078
  %1083 = fmul float %1081, %1079
  %1084 = fmul float %1081, %1080
  %1085 = fadd float %1043, %1082
  %1086 = fadd float %1044, %1083
  %1087 = fadd float %1045, %1084
  br label %1088

; <label>:1088                                    ; preds = %1067, %1038
  %1089 = phi float [ %1085, %1067 ], [ %1043, %1038 ]
  %1090 = phi float [ %1086, %1067 ], [ %1044, %1038 ]
  %1091 = phi float [ %1087, %1067 ], [ %1045, %1038 ]
  %1092 = fsub float %1089, %55
  %1093 = fsub float %1090, %56
  %1094 = fsub float %1091, %57
  %1095 = fmul float %65, %1094
  %1096 = fmul float %66, %1093
  %1097 = fsub float %1095, %1096
  %1098 = fmul float %66, %1092
  %1099 = fmul float %64, %1094
  %1100 = fsub float %1098, %1099
  %1101 = fmul float %64, %1093
  %1102 = fmul float %65, %1092
  %1103 = fsub float %1101, %1102
  %1104 = fmul float %1097, 2.000000e+00
  %1105 = fmul float %1100, 2.000000e+00
  %1106 = fmul float %1103, 2.000000e+00
  %1107 = fmul float %67, %1104
  %1108 = fmul float %67, %1105
  %1109 = fmul float %67, %1106
  %1110 = fsub float %1092, %1107
  %1111 = fsub float %1093, %1108
  %1112 = fsub float %1094, %1109
  %1113 = fmul float %65, %1106
  %1114 = fmul float %66, %1105
  %1115 = fsub float %1113, %1114
  %1116 = fmul float %66, %1104
  %1117 = fmul float %64, %1106
  %1118 = fsub float %1116, %1117
  %1119 = fmul float %64, %1105
  %1120 = fmul float %65, %1104
  %1121 = fsub float %1119, %1120
  %1122 = fadd float %1110, %1115
  %1123 = fadd float %1111, %1118
  %1124 = fadd float %1112, %1121
  %1125 = fsub fast float -0.000000e+00, %64
  %1126 = fsub fast float -0.000000e+00, %65
  %1127 = fsub fast float -0.000000e+00, %66
  %1128 = fmul fast float %1039, %67
  %1129 = fmul fast float %1040, %67
  %1130 = fmul fast float %1041, %67
  %1131 = fmul fast float %1042, %1125
  %1132 = fmul fast float %1042, %1126
  %1133 = fmul fast float %1042, %1127
  %1134 = fadd fast float %1131, %1128
  %1135 = fadd fast float %1132, %1129
  %1136 = fmul fast float %1041, %1126
  %1137 = fmul fast float %1040, %1127
  %1138 = fsub fast float %1136, %1137
  %1139 = fmul fast float %1039, %1127
  %1140 = fmul fast float %1041, %1125
  %1141 = fsub fast float %1139, %1140
  %1142 = fmul fast float %1040, %1125
  %1143 = fmul fast float %1039, %1126
  %1144 = fsub fast float %1142, %1143
  %1145 = fadd fast float %1134, %1138
  %1146 = fadd fast float %1135, %1141
  %1147 = fadd fast float %1144, %1130
  %1148 = fadd fast float %1147, %1133
  %1149 = fmul fast float %1042, %67
  %1150 = call float @dx.op.dot3.f32(i32 55, float %1125, float %1126, float %1127, float %1039, float %1040, float %1041)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = fsub fast float %1149, %1150
  %1152 = fsub float %1122, %46
  %1153 = fsub float %1123, %47
  %1154 = fsub float %1124, %48
  %1155 = fdiv float 1.000000e+00, %49
  %1156 = fmul float %1155, %1152
  %1157 = fmul float %1155, %1153
  %1158 = fmul float %1155, %1154
  %1159 = fmul float %1156, 5.000000e-01
  %1160 = fmul float %1157, 5.000000e-01
  %1161 = fmul float %1158, 5.000000e-01
  %1162 = fadd float %1159, 5.000000e-01
  %1163 = fadd float %1160, 5.000000e-01
  %1164 = fadd float %1161, 5.000000e-01
  %1165 = call float @dx.op.unary.f32(i32 7, float %1162), !dx.precise !27  ; Saturate(value)
  %1166 = call float @dx.op.unary.f32(i32 7, float %1163), !dx.precise !27  ; Saturate(value)
  %1167 = call float @dx.op.unary.f32(i32 7, float %1164), !dx.precise !27  ; Saturate(value)
  %1168 = fmul float %1165, 2.097151e+06
  %1169 = fmul float %1166, 2.097151e+06
  %1170 = fmul float %1167, 2.097151e+06
  %1171 = fptoui float %1168 to i32
  %1172 = fptoui float %1169 to i32
  %1173 = fptoui float %1170 to i32
  %1174 = shl i32 %1172, 21
  %1175 = or i32 %1174, %1171
  %1176 = lshr i32 %1172, 11
  %1177 = shl i32 %1173, 10
  %1178 = or i32 %1177, %1176
  %1179 = call float @dx.op.unary.f32(i32 6, float %1148)  ; FAbs(value)
  %1180 = call float @dx.op.unary.f32(i32 6, float %1145)  ; FAbs(value)
  %1181 = fcmp fast oge float %1179, %1180
  %1182 = call float @dx.op.unary.f32(i32 6, float %1146)  ; FAbs(value)
  %1183 = fcmp fast oge float %1179, %1182
  %1184 = and i1 %1181, %1183
  br i1 %1184, label %1185, label %1188, !dx.controlflow.hints !48

; <label>:1185                                    ; preds = %1088
  %1186 = fcmp fast olt float %1148, 0.000000e+00
  %1187 = select i1 %1186, float 5.000000e+00, float 4.000000e+00
  br label %1196

; <label>:1188                                    ; preds = %1088
  %1189 = fcmp fast ult float %1182, %1180
  br i1 %1189, label %1193, label %1190, !dx.controlflow.hints !49

; <label>:1190                                    ; preds = %1188
  %1191 = fcmp fast olt float %1146, 0.000000e+00
  %1192 = select i1 %1191, float 3.000000e+00, float 2.000000e+00
  br label %1196

; <label>:1193                                    ; preds = %1188
  %1194 = fcmp fast olt float %1145, 0.000000e+00
  %1195 = select i1 %1194, float 1.000000e+00, float 0.000000e+00
  br label %1196

; <label>:1196                                    ; preds = %1193, %1190, %1185
  %1197 = phi float [ %1187, %1185 ], [ %1192, %1190 ], [ %1195, %1193 ]
  %1198 = fmul fast float %1197, 5.000000e-01
  %1199 = fptoui float %1198 to i32
  %1200 = call float @dx.op.unary.f32(i32 6, float %1151)  ; FAbs(value)
  %1201 = call float @dx.op.binary.f32(i32 35, float %1182, float %1179)  ; FMax(a,b)
  %1202 = call float @dx.op.binary.f32(i32 35, float %1180, float %1201)  ; FMax(a,b)
  %1203 = fcmp fast ogt float %1200, %1202
  %1204 = select i1 %1203, i32 3, i32 %1199
  %1205 = icmp eq i32 %1204, 0
  %1206 = select i1 %1205, float %1146, float %1145
  %1207 = select i1 %1205, float %1148, float %1146
  %1208 = select i1 %1205, float %1151, float %1148
  %1209 = select i1 %1205, float %1145, float %1151
  %1210 = icmp eq i32 %1204, 1
  %1211 = select i1 %1210, float %1208, float %1207
  %1212 = select i1 %1210, float %1209, float %1208
  %1213 = select i1 %1210, float %1207, float %1209
  %1214 = icmp eq i32 %1204, 2
  %1215 = select i1 %1214, float %1213, float %1212
  %1216 = select i1 %1214, float %1212, float %1213
  %1217 = fcmp fast ogt float %1216, 0.000000e+00
  %1218 = select i1 %1217, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1219 = fmul fast float %1218, %1206
  %1220 = fmul fast float %1218, %1211
  %1221 = fmul fast float %1218, %1215
  %1222 = fadd fast float %1219, 1.000000e+00
  %1223 = fmul fast float %1222, 5.000000e-01
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = fmul fast float %1224, 1.023000e+03
  %1226 = fptoui float %1225 to i32
  %1227 = fadd fast float %1220, 1.000000e+00
  %1228 = fmul fast float %1227, 5.000000e-01
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fmul fast float %1229, 1.023000e+03
  %1231 = fptoui float %1230 to i32
  %1232 = fadd fast float %1221, 1.000000e+00
  %1233 = fmul fast float %1232, 5.000000e-01
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = fmul fast float %1234, 5.110000e+02
  %1236 = fptoui float %1235 to i32
  %1237 = shl i32 %1231, 10
  %1238 = shl i32 %1236, 20
  %1239 = fcmp fast ogt float %216, 0.000000e+00
  %1240 = select i1 %1239, i32 0, i32 536870912
  %1241 = shl i32 %1204, 30
  %1242 = or i32 %1226, %1240
  %1243 = or i32 %1242, %1241
  %1244 = or i32 %1243, %1237
  %1245 = or i32 %1244, %1238
  %1246 = select i1 %32, i32 %1175, i32 0
  %1247 = select i1 %32, i32 %1178, i32 0
  %1248 = shl i32 %93, 3
  %1249 = add i32 %39, %1248
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1249, i32 undef, i32 %1246, i32 %1247, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1250 = shl i32 %93, 2
  %1251 = add i32 %37, %1250
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1251, i32 undef, i32 %1245, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1252

; <label>:1252                                    ; preds = %1196, %82
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !17, null}
!5 = !{!6, !7, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<UDQ>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 32}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!15 = !{!16}
!16 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{!18}
!18 = !{i32 0, %SkinningPassConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!19 = !{void ()* @cs_skinning_deform_factors_weight_blend_dismember_unified_main, !"cs_skinning_deform_factors_weight_blend_dismember_unified_main", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentWeight"}
!35 = distinct !{!35, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z"}
!36 = distinct !{!36, !35, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentIdx"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentWeight"}
!45 = distinct !{!45, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z"}
!46 = distinct !{!46, !45, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentIdx"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}

