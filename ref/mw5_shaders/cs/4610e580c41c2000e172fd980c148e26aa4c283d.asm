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
; shader hash: 1be829cff00656c448f04f539307ae1a
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

define void @cs_skinning_deform_factors_weight_blend_dismember_unified_unpacked_positions_main() {
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
  %38 = extractvalue %dx.types.ResRet.i32 %35, 2
  %39 = extractvalue %dx.types.ResRet.i32 %35, 3
  %40 = and i32 %36, 2147483647
  %41 = add nuw nsw i32 %23, 32
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = extractvalue %dx.types.ResRet.i32 %42, 2
  %46 = extractvalue %dx.types.ResRet.i32 %42, 3
  %47 = bitcast i32 %43 to float
  %48 = bitcast i32 %44 to float
  %49 = bitcast i32 %45 to float
  %50 = bitcast i32 %46 to float
  %51 = add nuw nsw i32 %23, 48
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = extractvalue %dx.types.ResRet.i32 %52, 1
  %55 = extractvalue %dx.types.ResRet.i32 %52, 2
  %56 = bitcast i32 %53 to float
  %57 = bitcast i32 %54 to float
  %58 = bitcast i32 %55 to float
  %59 = add nuw nsw i32 %23, 64
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = extractvalue %dx.types.ResRet.i32 %60, 1
  %63 = extractvalue %dx.types.ResRet.i32 %60, 2
  %64 = extractvalue %dx.types.ResRet.i32 %60, 3
  %65 = bitcast i32 %61 to float
  %66 = bitcast i32 %62 to float
  %67 = bitcast i32 %63 to float
  %68 = bitcast i32 %64 to float
  %69 = add nuw nsw i32 %23, 80
  %70 = shl nuw nsw i32 %25, 3
  %71 = add nsw i32 %70, -8
  %72 = add nsw i32 %71, %69
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = extractvalue %dx.types.ResRet.i32 %73, 1
  %76 = icmp ugt i32 %25, 1
  br i1 %76, label %77, label %83, !dx.controlflow.hints !22

; <label>:77                                      ; preds = %0
  %78 = add nsw i32 %70, -16
  %79 = add nsw i32 %78, %69
  %80 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %79, i32 undef)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = sub i32 %74, %81
  br label %83

; <label>:83                                      ; preds = %77, %0
  %84 = phi i32 [ %82, %77 ], [ %74, %0 ]
  %85 = phi i32 [ %81, %77 ], [ 0, %0 ]
  %86 = extractvalue %dx.types.CBufRet.i32 %15, 3
  %87 = sub i32 %22, %86
  %88 = shl i32 %87, 3
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = extractvalue %dx.types.ResRet.i32 %89, 1
  %92 = icmp ult i32 %12, %24
  br i1 %92, label %93, label %1258, !dx.controlflow.hints !23

; <label>:93                                      ; preds = %83
  %94 = add i32 %26, %12
  %95 = add i32 %75, %94
  %96 = shl i32 %95, 2
  %97 = lshr i32 %95, 8
  %98 = and i32 %97, 4194303
  %99 = add i32 %98, %31
  %100 = shl i32 %99, 2
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = shl i32 %102, 10
  %104 = and i32 %96, 1020
  %105 = or i32 %103, %104
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 65535
  %109 = add i32 %108, %33
  %110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %109, i32 0)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = extractvalue %dx.types.ResRet.f32 %110, 1
  %113 = extractvalue %dx.types.ResRet.f32 %110, 2
  %114 = extractvalue %dx.types.ResRet.f32 %110, 3
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %109, i32 16)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = extractvalue %dx.types.ResRet.f32 %115, 1
  %118 = extractvalue %dx.types.ResRet.f32 %115, 2
  %119 = extractvalue %dx.types.ResRet.f32 %115, 3
  %120 = icmp slt i32 %36, 0
  %121 = shl i32 %94, 3
  %122 = shl i32 %94, 2
  br i1 %120, label %123, label %131, !dx.controlflow.hints !24

; <label>:123                                     ; preds = %93
  %124 = add i32 %40, %121
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = extractvalue %dx.types.ResRet.i32 %125, 1
  %128 = add i32 %37, %122
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  br label %155

; <label>:131                                     ; preds = %93
  %132 = lshr i32 %94, 7
  %133 = and i32 %132, 4194303
  %134 = add i32 %133, %29
  %135 = shl i32 %134, 2
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = shl i32 %137, 10
  %139 = and i32 %121, 1016
  %140 = or i32 %138, %139
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = extractvalue %dx.types.ResRet.i32 %141, 1
  %144 = lshr i32 %94, 8
  %145 = and i32 %144, 4194303
  %146 = add i32 %145, %30
  %147 = shl i32 %146, 2
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = shl i32 %149, 10
  %151 = and i32 %122, 1020
  %152 = or i32 %150, %151
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  br label %155

; <label>:155                                     ; preds = %131, %123
  %156 = phi i32 [ %126, %123 ], [ %142, %131 ]
  %157 = phi i32 [ %127, %123 ], [ %143, %131 ]
  %158 = phi i32 [ %130, %123 ], [ %154, %131 ]
  %159 = and i32 %156, 2097151
  %160 = uitofp i32 %159 to float
  %161 = lshr i32 %156, 21
  %162 = shl i32 %157, 11
  %163 = and i32 %162, 2095104
  %164 = or i32 %163, %161
  %165 = uitofp i32 %164 to float
  %166 = lshr i32 %157, 10
  %167 = and i32 %166, 2097151
  %168 = uitofp i32 %167 to float
  %169 = fdiv float %160, 2.097151e+06
  %170 = fdiv float %165, 2.097151e+06
  %171 = fdiv float %168, 2.097151e+06
  %172 = fmul float %169, 2.000000e+00
  %173 = fmul float %170, 2.000000e+00
  %174 = fmul float %171, 2.000000e+00
  %175 = fadd float %172, -1.000000e+00
  %176 = fadd float %173, -1.000000e+00
  %177 = fadd float %174, -1.000000e+00
  %178 = fmul float %50, %175
  %179 = fmul float %50, %176
  %180 = fmul float %50, %177
  %181 = fadd float %47, %178
  %182 = fadd float %48, %179
  %183 = fadd float %49, %180
  %184 = lshr i32 %158, 30
  %185 = and i32 %158, 1023
  %186 = uitofp i32 %185 to float
  %187 = lshr i32 %158, 10
  %188 = and i32 %187, 1023
  %189 = uitofp i32 %188 to float
  %190 = lshr i32 %158, 20
  %191 = and i32 %190, 511
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %186, 0x3F56A64800000000
  %194 = fadd fast float %193, 0xBFE6A09E60000000
  %195 = fmul fast float %189, 0x3F56A64800000000
  %196 = fadd fast float %195, 0xBFE6A09E60000000
  %197 = fmul fast float %192, 0x3F66ABF460000000
  %198 = fadd fast float %197, 0xBFE6A09E60000000
  %199 = call float @dx.op.dot3.f32(i32 55, float %194, float %196, float %198, float %194, float %196, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fsub fast float 1.000000e+00, %200
  %202 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %203 = icmp eq i32 %184, 0
  br i1 %203, label %210, label %204, !dx.controlflow.hints !25

; <label>:204                                     ; preds = %155
  %205 = icmp eq i32 %184, 1
  br i1 %205, label %210, label %206, !dx.controlflow.hints !26

; <label>:206                                     ; preds = %204
  %207 = icmp eq i32 %184, 2
  %208 = select i1 %207, float %202, float %198
  %209 = select i1 %207, float %198, float %202
  br label %210

; <label>:210                                     ; preds = %206, %204, %155
  %211 = phi float [ %202, %155 ], [ %194, %204 ], [ %194, %206 ]
  %212 = phi float [ %194, %155 ], [ %202, %204 ], [ %196, %206 ]
  %213 = phi float [ %196, %155 ], [ %196, %204 ], [ %208, %206 ]
  %214 = phi float [ %198, %155 ], [ %198, %204 ], [ %209, %206 ]
  %215 = and i32 %158, 536870912
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %216, float -1.000000e+00, float 1.000000e+00
  %218 = call float @dx.op.dot4.f32(i32 56, float %111, float %112, float %113, float %114, float %111, float %112, float %113, float %114)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %219 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %220 = fdiv fast float 1.000000e+00, %219
  %221 = fmul fast float %220, %114
  %222 = fmul fast float %220, %111
  %223 = fmul fast float %220, %112
  %224 = fmul fast float %220, %113
  %225 = fmul fast float %220, %119
  %226 = fmul fast float %220, %116
  %227 = fmul fast float %220, %117
  %228 = fmul fast float %220, %118
  %229 = fmul fast float %223, %183
  %230 = fmul fast float %224, %182
  %231 = fsub fast float %229, %230
  %232 = fmul fast float %224, %181
  %233 = fmul fast float %222, %183
  %234 = fsub fast float %232, %233
  %235 = fmul fast float %222, %182
  %236 = fmul fast float %223, %181
  %237 = fsub fast float %235, %236
  %238 = fmul fast float %221, %181
  %239 = fmul fast float %221, %182
  %240 = fmul fast float %221, %183
  %241 = fadd fast float %231, %238
  %242 = fadd fast float %234, %239
  %243 = fadd fast float %237, %240
  %244 = fmul fast float %226, %221
  %245 = fmul fast float %227, %221
  %246 = fmul fast float %228, %221
  %247 = fmul fast float %222, %225
  %248 = fmul fast float %223, %225
  %249 = fmul fast float %224, %225
  %250 = fmul fast float %223, %228
  %251 = fmul fast float %224, %227
  %252 = fmul fast float %224, %226
  %253 = fmul fast float %222, %228
  %254 = fmul fast float %222, %227
  %255 = fmul fast float %223, %226
  %256 = fsub fast float %244, %247
  %257 = fsub fast float %256, %251
  %258 = fadd fast float %257, %250
  %259 = fsub fast float %245, %248
  %260 = fsub fast float %259, %253
  %261 = fadd fast float %260, %252
  %262 = fsub fast float %246, %249
  %263 = fsub fast float %262, %255
  %264 = fadd fast float %263, %254
  %265 = fmul fast float %222, 2.000000e+00
  %266 = fmul fast float %223, 2.000000e+00
  %267 = fmul fast float %224, 2.000000e+00
  %268 = fmul fast float %243, %266
  %269 = fmul fast float %242, %267
  %270 = fmul fast float %241, %267
  %271 = fmul fast float %243, %265
  %272 = fmul fast float %242, %265
  %273 = fmul fast float %241, %266
  %274 = lshr i32 %107, 16
  %275 = uitofp i32 %274 to float
  %276 = fdiv float %275, 6.553500e+04
  br i1 %76, label %277, label %613

; <label>:277                                     ; preds = %210
  %278 = and i32 %21, 65535
  br label %279

; <label>:279                                     ; preds = %458, %277
  %280 = phi float [ %351, %458 ], [ 0.000000e+00, %277 ]
  %281 = phi float [ %352, %458 ], [ 0.000000e+00, %277 ]
  %282 = phi float [ %353, %458 ], [ 0.000000e+00, %277 ]
  %283 = phi float [ %354, %458 ], [ 0.000000e+00, %277 ]
  %284 = phi float [ %343, %458 ], [ 0.000000e+00, %277 ]
  %285 = phi float [ %344, %458 ], [ 0.000000e+00, %277 ]
  %286 = phi float [ %345, %458 ], [ 0.000000e+00, %277 ]
  %287 = phi float [ %346, %458 ], [ 0.000000e+00, %277 ]
  %288 = phi float [ %324, %458 ], [ 0.000000e+00, %277 ]
  %289 = phi float [ %608, %458 ], [ 0.000000e+00, %277 ]
  %290 = phi i32 [ %609, %458 ], [ 0, %277 ]
  %291 = phi float [ %580, %458 ], [ 0.000000e+00, %277 ]
  %292 = phi float [ %581, %458 ], [ 0.000000e+00, %277 ]
  %293 = phi float [ %582, %458 ], [ 0.000000e+00, %277 ]
  %294 = phi float [ %459, %458 ], [ 0.000000e+00, %277 ]
  %295 = phi float [ %460, %458 ], [ 0.000000e+00, %277 ]
  %296 = phi float [ %461, %458 ], [ 0.000000e+00, %277 ]
  %297 = phi float [ %462, %458 ], [ 0.000000e+00, %277 ]
  %298 = phi float [ %463, %458 ], [ 0.000000e+00, %277 ]
  %299 = phi float [ %464, %458 ], [ 0.000000e+00, %277 ]
  %300 = phi float [ %465, %458 ], [ 0.000000e+00, %277 ]
  %301 = phi float [ %586, %458 ], [ 0.000000e+00, %277 ]
  %302 = phi float [ %587, %458 ], [ 0.000000e+00, %277 ]
  %303 = phi float [ %588, %458 ], [ 0.000000e+00, %277 ]
  %304 = phi i32 [ %610, %458 ], [ 1, %277 ]
  %305 = mul i32 %304, %84
  %306 = add i32 %95, %305
  %307 = shl i32 %306, 2
  %308 = lshr i32 %306, 8
  %309 = and i32 %308, 4194303
  %310 = add i32 %309, %31
  %311 = shl i32 %310, 2
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 10
  %315 = and i32 %307, 1020
  %316 = or i32 %314, %315
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = lshr i32 %318, 16
  %321 = uitofp i32 %320 to float
  %322 = fmul float %321, 0x3EF0000000000000
  %323 = add i32 %319, %33
  %324 = fadd float %288, %322
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %323, i32 0)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  %329 = extractvalue %dx.types.ResRet.f32 %325, 3
  %330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %323, i32 16)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = extractvalue %dx.types.ResRet.f32 %330, 1
  %333 = extractvalue %dx.types.ResRet.f32 %330, 2
  %334 = extractvalue %dx.types.ResRet.f32 %330, 3
  %335 = call float @dx.op.dot4.f32(i32 56, float %111, float %112, float %113, float %114, float %326, float %327, float %328, float %329), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %336 = fcmp olt float %335, 0.000000e+00
  %337 = fsub float -0.000000e+00, %322
  %338 = select i1 %336, float %337, float %322
  %339 = fmul float %326, %338
  %340 = fmul float %327, %338
  %341 = fmul float %328, %338
  %342 = fmul float %329, %338
  %343 = fadd float %284, %339
  %344 = fadd float %285, %340
  %345 = fadd float %286, %341
  %346 = fadd float %287, %342
  %347 = fmul float %331, %338
  %348 = fmul float %332, %338
  %349 = fmul float %333, %338
  %350 = fmul float %334, %338
  %351 = fadd float %280, %347
  %352 = fadd float %281, %348
  %353 = fadd float %282, %349
  %354 = fadd float %283, %350
  %355 = fcmp une float %276, 0.000000e+00
  %356 = fsub float -0.000000e+00, %326
  %357 = fsub float -0.000000e+00, %327
  %358 = fsub float -0.000000e+00, %328
  br i1 %355, label %359, label %458, !dx.controlflow.hints !28

; <label>:359                                     ; preds = %279
  %360 = fmul float %334, %356
  %361 = fmul float %334, %357
  %362 = fmul float %334, %358
  %363 = fmul float %329, %331
  %364 = fmul float %329, %332
  %365 = fmul float %329, %333
  %366 = fadd float %360, %363
  %367 = fadd float %361, %364
  %368 = fadd float %362, %365
  %369 = fmul float %332, %358
  %370 = fmul float %333, %357
  %371 = fsub float %369, %370
  %372 = fmul float %333, %356
  %373 = fmul float %331, %358
  %374 = fsub float %372, %373
  %375 = fmul float %331, %357
  %376 = fmul float %332, %356
  %377 = fsub float %375, %376
  %378 = fadd float %366, %371
  %379 = fadd float %367, %374
  %380 = fadd float %368, %377
  %381 = fmul float %378, 2.000000e+00
  %382 = fmul float %379, 2.000000e+00
  %383 = fmul float %380, 2.000000e+00
  %384 = fmul float %183, %327
  %385 = fmul float %182, %328
  %386 = fsub float %384, %385
  %387 = fmul float %181, %328
  %388 = fmul float %183, %326
  %389 = fsub float %387, %388
  %390 = fmul float %182, %326
  %391 = fmul float %181, %327
  %392 = fsub float %390, %391
  %393 = fmul float %386, 2.000000e+00
  %394 = fmul float %389, 2.000000e+00
  %395 = fmul float %392, 2.000000e+00
  %396 = fmul float %329, %393
  %397 = fmul float %329, %394
  %398 = fmul float %329, %395
  %399 = fadd float %181, %396
  %400 = fadd float %182, %397
  %401 = fadd float %183, %398
  %402 = fmul float %327, %395
  %403 = fmul float %328, %394
  %404 = fsub float %402, %403
  %405 = fmul float %328, %393
  %406 = fmul float %326, %395
  %407 = fsub float %405, %406
  %408 = fmul float %326, %394
  %409 = fmul float %327, %393
  %410 = fsub float %408, %409
  %411 = fadd float %399, %404
  %412 = fadd float %400, %407
  %413 = fadd float %401, %410
  %414 = fadd float %381, %411
  %415 = fadd float %382, %412
  %416 = fadd float %383, %413
  %417 = fmul float %322, %414
  %418 = fmul float %322, %415
  %419 = fmul float %322, %416
  %420 = fadd float %298, %417
  %421 = fadd float %299, %418
  %422 = fadd float %300, %419
  %423 = fmul fast float %329, %211
  %424 = fmul fast float %329, %212
  %425 = fmul fast float %329, %213
  %426 = fmul fast float %326, %214
  %427 = fmul fast float %327, %214
  %428 = fmul fast float %328, %214
  %429 = fadd fast float %423, %426
  %430 = fadd fast float %424, %427
  %431 = fadd fast float %425, %428
  %432 = fmul fast float %327, %213
  %433 = fmul fast float %328, %212
  %434 = fsub fast float %432, %433
  %435 = fmul fast float %328, %211
  %436 = fmul fast float %326, %213
  %437 = fsub fast float %435, %436
  %438 = fmul fast float %326, %212
  %439 = fmul fast float %327, %211
  %440 = fsub fast float %438, %439
  %441 = fadd fast float %429, %434
  %442 = fadd fast float %430, %437
  %443 = fadd fast float %431, %440
  %444 = fmul fast float %329, %214
  %445 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = fsub fast float %444, %445
  %447 = call float @dx.op.dot4.f32(i32 56, float %294, float %295, float %296, float %297, float %441, float %442, float %443, float %446)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %448 = fcmp fast olt float %447, 0.000000e+00
  %449 = select i1 %448, float %337, float %322
  %450 = fmul fast float %449, %441
  %451 = fmul fast float %449, %442
  %452 = fmul fast float %449, %443
  %453 = fmul fast float %449, %446
  %454 = fadd fast float %450, %294
  %455 = fadd fast float %451, %295
  %456 = fadd fast float %452, %296
  %457 = fadd fast float %453, %297
  br label %458

; <label>:458                                     ; preds = %359, %279
  %459 = phi float [ %454, %359 ], [ %294, %279 ]
  %460 = phi float [ %455, %359 ], [ %295, %279 ]
  %461 = phi float [ %456, %359 ], [ %296, %279 ]
  %462 = phi float [ %457, %359 ], [ %297, %279 ]
  %463 = phi float [ %420, %359 ], [ %298, %279 ]
  %464 = phi float [ %421, %359 ], [ %299, %279 ]
  %465 = phi float [ %422, %359 ], [ %300, %279 ]
  %466 = fsub fast float -0.000000e+00, %329
  %467 = fsub fast float -0.000000e+00, %331
  %468 = fsub fast float -0.000000e+00, %332
  %469 = fsub fast float -0.000000e+00, %333
  %470 = fsub fast float -0.000000e+00, %334
  %471 = select i1 %336, float %467, float %331
  %472 = select i1 %336, float %468, float %332
  %473 = select i1 %336, float %469, float %333
  %474 = select i1 %336, float %470, float %334
  %475 = select i1 %336, float %356, float %326
  %476 = select i1 %336, float %357, float %327
  %477 = select i1 %336, float %358, float %328
  %478 = select i1 %336, float %466, float %329
  %479 = call float @dx.op.dot4.f32(i32 56, float %475, float %476, float %477, float %478, float %475, float %476, float %477, float %478)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %480 = call float @dx.op.unary.f32(i32 24, float %479)  ; Sqrt(value)
  %481 = fdiv fast float 1.000000e+00, %480
  %482 = fmul fast float %481, %478
  %483 = fmul fast float %481, %475
  %484 = fmul fast float %481, %476
  %485 = fmul fast float %481, %477
  %486 = fmul fast float %481, %474
  %487 = fmul fast float %481, %471
  %488 = fmul fast float %481, %472
  %489 = fmul fast float %481, %473
  %490 = fmul fast float %484, %183
  %491 = fmul fast float %485, %182
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %485, %181
  %494 = fmul fast float %483, %183
  %495 = fsub fast float %493, %494
  %496 = fmul fast float %483, %182
  %497 = fmul fast float %484, %181
  %498 = fsub fast float %496, %497
  %499 = fmul fast float %482, %181
  %500 = fmul fast float %482, %182
  %501 = fmul fast float %482, %183
  %502 = fadd fast float %492, %499
  %503 = fadd fast float %495, %500
  %504 = fadd fast float %498, %501
  %505 = fmul fast float %487, %482
  %506 = fmul fast float %488, %482
  %507 = fmul fast float %489, %482
  %508 = fmul fast float %483, %486
  %509 = fmul fast float %484, %486
  %510 = fmul fast float %485, %486
  %511 = fmul fast float %484, %489
  %512 = fmul fast float %485, %488
  %513 = fmul fast float %485, %487
  %514 = fmul fast float %483, %489
  %515 = fmul fast float %483, %488
  %516 = fmul fast float %484, %487
  %517 = fsub fast float %505, %508
  %518 = fsub fast float %517, %512
  %519 = fadd fast float %518, %511
  %520 = fsub fast float %506, %509
  %521 = fsub fast float %520, %514
  %522 = fadd fast float %521, %513
  %523 = fsub fast float %507, %510
  %524 = fsub fast float %523, %516
  %525 = fadd fast float %524, %515
  %526 = fmul fast float %519, 2.000000e+00
  %527 = fmul fast float %522, 2.000000e+00
  %528 = fmul fast float %525, 2.000000e+00
  %529 = fmul fast float %483, 2.000000e+00
  %530 = fmul fast float %484, 2.000000e+00
  %531 = fmul fast float %485, 2.000000e+00
  %532 = fmul fast float %504, %530
  %533 = fmul fast float %503, %531
  %534 = fmul fast float %502, %531
  %535 = fmul fast float %504, %529
  %536 = fmul fast float %503, %529
  %537 = fmul fast float %502, %530
  %538 = fmul fast float %258, -2.000000e+00
  %539 = fadd fast float %269, %538
  %540 = fsub fast float %539, %268
  %541 = fadd fast float %540, %526
  %542 = fsub fast float %541, %533
  %543 = fadd fast float %542, %532
  %544 = fmul fast float %261, -2.000000e+00
  %545 = fadd fast float %271, %544
  %546 = fsub fast float %545, %270
  %547 = fadd fast float %546, %527
  %548 = fsub fast float %547, %535
  %549 = fadd fast float %548, %534
  %550 = fmul fast float %264, -2.000000e+00
  %551 = fadd fast float %273, %550
  %552 = fsub fast float %551, %272
  %553 = fadd fast float %552, %528
  %554 = fsub fast float %553, %537
  %555 = fadd fast float %554, %536
  %556 = sub i32 %94, %85
  %557 = add nsw i32 %304, -1
  %558 = mul i32 %557, %84
  %559 = add i32 %556, %75
  %560 = add i32 %559, %558
  %561 = shl i32 %560, 2
  %562 = lshr i32 %560, 8
  %563 = and i32 %562, 4194303
  %564 = add i32 %563, %39
  %565 = shl i32 %564, 2
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = shl i32 %567, 10
  %569 = and i32 %561, 1020
  %570 = or i32 %568, %569
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = fmul fast float %543, %574
  %578 = fmul fast float %549, %574
  %579 = fmul fast float %555, %574
  %580 = fadd fast float %577, %291
  %581 = fadd fast float %578, %292
  %582 = fadd fast float %579, %293
  %583 = fmul fast float %576, %543
  %584 = fmul fast float %576, %549
  %585 = fmul fast float %576, %555
  %586 = fadd fast float %583, %301
  %587 = fadd fast float %584, %302
  %588 = fadd fast float %585, %303
  %589 = and i32 %318, 65532
  %590 = add i32 %589, %91
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 255
  %594 = lshr i32 %592, 8
  %595 = and i32 %594, 255
  %596 = lshr i32 %592, 16
  %597 = and i32 %596, 255
  %598 = lshr i32 %592, 24
  %599 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %593, i32* %599, align 4
  %600 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %595, i32* %600, align 4
  %601 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %597, i32* %601, align 4
  %602 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %598, i32* %602, align 4
  %603 = and i32 %318, 3
  %604 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %603
  %605 = load i32, i32* %604, align 4, !tbaa !29, !noalias !33
  %606 = icmp ne i32 %605, 255
  %607 = fadd float %289, %322
  %608 = select i1 %606, float %607, float %289
  %609 = select i1 %606, i32 %605, i32 %290
  %610 = add nuw nsw i32 %304, 1
  %611 = icmp eq i32 %610, %278
  br i1 %611, label %612, label %279, !llvm.loop !37

; <label>:612                                     ; preds = %458
  br label %613

; <label>:613                                     ; preds = %612, %210
  %614 = phi float [ 0.000000e+00, %210 ], [ %351, %612 ]
  %615 = phi float [ 0.000000e+00, %210 ], [ %352, %612 ]
  %616 = phi float [ 0.000000e+00, %210 ], [ %353, %612 ]
  %617 = phi float [ 0.000000e+00, %210 ], [ %354, %612 ]
  %618 = phi float [ 0.000000e+00, %210 ], [ %343, %612 ]
  %619 = phi float [ 0.000000e+00, %210 ], [ %344, %612 ]
  %620 = phi float [ 0.000000e+00, %210 ], [ %345, %612 ]
  %621 = phi float [ 0.000000e+00, %210 ], [ %346, %612 ]
  %622 = phi float [ 0.000000e+00, %210 ], [ %324, %612 ]
  %623 = phi float [ 0.000000e+00, %210 ], [ %608, %612 ]
  %624 = phi i32 [ 0, %210 ], [ %609, %612 ]
  %625 = phi float [ 0.000000e+00, %210 ], [ %580, %612 ]
  %626 = phi float [ 0.000000e+00, %210 ], [ %581, %612 ]
  %627 = phi float [ 0.000000e+00, %210 ], [ %582, %612 ]
  %628 = phi float [ 0.000000e+00, %210 ], [ %459, %612 ]
  %629 = phi float [ 0.000000e+00, %210 ], [ %460, %612 ]
  %630 = phi float [ 0.000000e+00, %210 ], [ %461, %612 ]
  %631 = phi float [ 0.000000e+00, %210 ], [ %462, %612 ]
  %632 = phi float [ 0.000000e+00, %210 ], [ %463, %612 ]
  %633 = phi float [ 0.000000e+00, %210 ], [ %464, %612 ]
  %634 = phi float [ 0.000000e+00, %210 ], [ %465, %612 ]
  %635 = phi float [ 0.000000e+00, %210 ], [ %586, %612 ]
  %636 = phi float [ 0.000000e+00, %210 ], [ %587, %612 ]
  %637 = phi float [ 0.000000e+00, %210 ], [ %588, %612 ]
  %638 = fsub float 1.000000e+00, %622
  %639 = fmul float %111, %638
  %640 = fmul float %112, %638
  %641 = fmul float %113, %638
  %642 = fmul float %114, %638
  %643 = fadd float %618, %639
  %644 = fadd float %619, %640
  %645 = fadd float %620, %641
  %646 = fadd float %621, %642
  %647 = fmul float %116, %638
  %648 = fmul float %117, %638
  %649 = fmul float %118, %638
  %650 = fmul float %119, %638
  %651 = fadd float %614, %647
  %652 = fadd float %615, %648
  %653 = fadd float %616, %649
  %654 = fadd float %617, %650
  %655 = call float @dx.op.dot4.f32(i32 56, float %643, float %644, float %645, float %646, float %643, float %644, float %645, float %646), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %656 = call float @dx.op.unary.f32(i32 24, float %655), !dx.precise !27  ; Sqrt(value)
  %657 = fdiv float 1.000000e+00, %656
  %658 = fmul float %646, %657
  %659 = fmul float %643, %657
  %660 = fmul float %644, %657
  %661 = fmul float %645, %657
  %662 = fmul float %654, %657
  %663 = fmul float %651, %657
  %664 = fmul float %652, %657
  %665 = fmul float %653, %657
  %666 = fmul float %183, %660
  %667 = fmul float %182, %661
  %668 = fsub float %666, %667
  %669 = fmul float %181, %661
  %670 = fmul float %183, %659
  %671 = fsub float %669, %670
  %672 = fmul float %182, %659
  %673 = fmul float %181, %660
  %674 = fsub float %672, %673
  %675 = fmul float %181, %658
  %676 = fmul float %182, %658
  %677 = fmul float %183, %658
  %678 = fadd float %675, %668
  %679 = fadd float %676, %671
  %680 = fadd float %677, %674
  %681 = fmul float %663, %658
  %682 = fmul float %664, %658
  %683 = fmul float %665, %658
  %684 = fmul float %659, %662
  %685 = fmul float %660, %662
  %686 = fmul float %661, %662
  %687 = fsub float %681, %684
  %688 = fsub float %682, %685
  %689 = fsub float %683, %686
  %690 = fmul float %660, %665
  %691 = fmul float %661, %664
  %692 = fsub float %690, %691
  %693 = fmul float %661, %663
  %694 = fmul float %659, %665
  %695 = fsub float %693, %694
  %696 = fmul float %659, %664
  %697 = fmul float %660, %663
  %698 = fsub float %696, %697
  %699 = fadd float %687, %692
  %700 = fadd float %688, %695
  %701 = fadd float %689, %698
  %702 = fmul float %699, 2.000000e+00
  %703 = fmul float %700, 2.000000e+00
  %704 = fmul float %701, 2.000000e+00
  %705 = fadd float %181, %702
  %706 = fadd float %182, %703
  %707 = fadd float %183, %704
  %708 = fmul float %659, 2.000000e+00
  %709 = fmul float %660, 2.000000e+00
  %710 = fmul float %661, 2.000000e+00
  %711 = fmul float %709, %680
  %712 = fmul float %710, %679
  %713 = fsub float %711, %712
  %714 = fmul float %710, %678
  %715 = fmul float %708, %680
  %716 = fsub float %714, %715
  %717 = fmul float %708, %679
  %718 = fmul float %709, %678
  %719 = fsub float %717, %718
  %720 = fadd float %705, %713
  %721 = fadd float %706, %716
  %722 = fadd float %707, %719
  %723 = fmul fast float %658, %211
  %724 = fmul fast float %658, %212
  %725 = fmul fast float %658, %213
  %726 = fmul fast float %659, %214
  %727 = fmul fast float %660, %214
  %728 = fmul fast float %661, %214
  %729 = fadd fast float %723, %726
  %730 = fadd fast float %724, %727
  %731 = fadd fast float %725, %728
  %732 = fmul fast float %660, %213
  %733 = fmul fast float %661, %212
  %734 = fsub fast float %732, %733
  %735 = fmul fast float %661, %211
  %736 = fmul fast float %659, %213
  %737 = fsub fast float %735, %736
  %738 = fmul fast float %659, %212
  %739 = fmul fast float %660, %211
  %740 = fsub fast float %738, %739
  %741 = fadd fast float %729, %734
  %742 = fadd fast float %730, %737
  %743 = fadd fast float %731, %740
  %744 = fmul fast float %658, %214
  %745 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %746 = fsub fast float %744, %745
  %747 = fmul fast float %742, %742
  %748 = fmul fast float %747, 2.000000e+00
  %749 = fmul fast float %743, %743
  %750 = fmul fast float %749, 2.000000e+00
  %751 = fmul fast float %741, 2.000000e+00
  %752 = fmul fast float %751, %742
  %753 = fmul fast float %746, 2.000000e+00
  %754 = fmul fast float %753, %743
  %755 = fsub fast float %752, %754
  %756 = fmul fast float %742, %741
  %757 = fmul fast float %743, %746
  %758 = fmul fast float %741, %741
  %759 = fmul fast float %758, 2.000000e+00
  %760 = fsub fast float 1.000000e+00, %759
  %761 = fsub fast float %760, %750
  %762 = fmul fast float %751, %743
  %763 = fmul fast float %753, %742
  %764 = fsub fast float %762, %763
  %765 = fmul fast float %743, %742
  %766 = fmul fast float %741, %746
  %767 = fadd fast float %765, %766
  %768 = fmul fast float %755, %217
  %769 = fmul fast float %761, %217
  %770 = fmul fast float %217, 2.000000e+00
  %771 = fmul fast float %770, %767
  %772 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %625, float %626, float %627)  ; Dot3(ax,ay,az,bx,by,bz)
  %773 = call float @dx.op.unary.f32(i32 25, float %772)  ; Rsqrt(value)
  %774 = fmul fast float %773, 0x3FECCCCCC0000000
  %775 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %774)  ; FMin(a,b)
  %776 = fmul fast float %775, %625
  %777 = fmul fast float %775, %626
  %778 = fmul fast float %775, %627
  %779 = fadd fast float %776, 1.000000e+00
  %780 = fsub fast float %779, %748
  %781 = fsub fast float %780, %750
  %782 = fadd fast float %756, %757
  %783 = fmul fast float %782, 2.000000e+00
  %784 = fadd fast float %783, %777
  %785 = fadd fast float %764, %778
  %786 = call float @dx.op.dot3.f32(i32 55, float %635, float %636, float %637, float %635, float %636, float %637)  ; Dot3(ax,ay,az,bx,by,bz)
  %787 = call float @dx.op.unary.f32(i32 25, float %786)  ; Rsqrt(value)
  %788 = fmul fast float %787, 0x3FECCCCCC0000000
  %789 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %788)  ; FMin(a,b)
  %790 = fmul fast float %789, %635
  %791 = fmul fast float %789, %636
  %792 = fmul fast float %789, %637
  %793 = fadd fast float %768, %790
  %794 = fadd fast float %769, %791
  %795 = fadd fast float %771, %792
  %796 = fmul fast float %794, %785
  %797 = fmul fast float %795, %784
  %798 = fsub fast float %796, %797
  %799 = fmul fast float %795, %781
  %800 = fmul fast float %793, %785
  %801 = fsub fast float %799, %800
  %802 = fmul fast float %793, %784
  %803 = fmul fast float %794, %781
  %804 = fsub fast float %802, %803
  %805 = call float @dx.op.dot3.f32(i32 55, float %798, float %801, float %804, float %798, float %801, float %804)  ; Dot3(ax,ay,az,bx,by,bz)
  %806 = call float @dx.op.unary.f32(i32 25, float %805)  ; Rsqrt(value)
  %807 = fmul fast float %798, %806
  %808 = fmul fast float %801, %806
  %809 = fmul fast float %804, %806
  %810 = call float @dx.op.dot3.f32(i32 55, float %781, float %784, float %785, float %807, float %808, float %809)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = fsub fast float -0.000000e+00, %810
  %812 = fmul fast float %807, %811
  %813 = fmul fast float %808, %811
  %814 = fmul fast float %809, %811
  %815 = fadd fast float %812, %781
  %816 = fadd fast float %813, %784
  %817 = fadd fast float %814, %785
  %818 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.unary.f32(i32 25, float %818)  ; Rsqrt(value)
  %820 = fmul fast float %815, %819
  %821 = fmul fast float %816, %819
  %822 = fmul fast float %817, %819
  %823 = fmul fast float %821, %809
  %824 = fmul fast float %822, %808
  %825 = fsub fast float %823, %824
  %826 = fmul fast float %822, %807
  %827 = fmul fast float %820, %809
  %828 = fsub fast float %826, %827
  %829 = fmul fast float %820, %808
  %830 = fmul fast float %821, %807
  %831 = fsub fast float %829, %830
  %832 = fmul fast float %825, %217
  %833 = fmul fast float %828, %217
  %834 = fmul fast float %831, %217
  %835 = fadd fast float %820, %809
  %836 = fadd fast float %835, %833
  %837 = fcmp fast ogt float %836, 0.000000e+00
  br i1 %837, label %838, label %849, !dx.controlflow.hints !39

; <label>:838                                     ; preds = %613
  %839 = fadd fast float %836, 1.000000e+00
  %840 = fsub fast float %834, %808
  %841 = fsub fast float %807, %822
  %842 = fsub fast float %821, %832
  %843 = call float @dx.op.unary.f32(i32 25, float %839)  ; Rsqrt(value)
  %844 = fmul fast float %843, 5.000000e-01
  %845 = fmul fast float %844, %840
  %846 = fmul fast float %844, %841
  %847 = fmul fast float %844, %842
  %848 = fmul fast float %844, %839
  br label %893

; <label>:849                                     ; preds = %613
  %850 = fcmp fast ogt float %820, %833
  %851 = fcmp fast ogt float %820, %809
  %852 = and i1 %851, %850
  br i1 %852, label %853, label %866, !dx.controlflow.hints !40

; <label>:853                                     ; preds = %849
  %854 = fsub fast float 1.000000e+00, %809
  %855 = fadd fast float %854, %820
  %856 = fsub fast float %855, %833
  %857 = fsub fast float %834, %808
  %858 = fadd fast float %832, %821
  %859 = fadd fast float %822, %807
  %860 = call float @dx.op.unary.f32(i32 25, float %856)  ; Rsqrt(value)
  %861 = fmul fast float %860, 5.000000e-01
  %862 = fmul fast float %861, %856
  %863 = fmul fast float %861, %858
  %864 = fmul fast float %861, %859
  %865 = fmul fast float %861, %857
  br label %893

; <label>:866                                     ; preds = %849
  %867 = fcmp fast ogt float %833, %809
  %868 = fadd fast float %834, %808
  br i1 %867, label %869, label %881, !dx.controlflow.hints !41

; <label>:869                                     ; preds = %866
  %870 = fsub fast float 1.000000e+00, %809
  %871 = fsub fast float %870, %820
  %872 = fadd fast float %871, %833
  %873 = fsub fast float %807, %822
  %874 = fadd fast float %832, %821
  %875 = call float @dx.op.unary.f32(i32 25, float %872)  ; Rsqrt(value)
  %876 = fmul fast float %875, 5.000000e-01
  %877 = fmul fast float %876, %874
  %878 = fmul fast float %876, %872
  %879 = fmul fast float %876, %868
  %880 = fmul fast float %876, %873
  br label %893

; <label>:881                                     ; preds = %866
  %882 = fadd fast float %809, 1.000000e+00
  %883 = fsub fast float %882, %820
  %884 = fsub fast float %883, %833
  %885 = fsub fast float %821, %832
  %886 = fadd fast float %822, %807
  %887 = call float @dx.op.unary.f32(i32 25, float %884)  ; Rsqrt(value)
  %888 = fmul fast float %887, 5.000000e-01
  %889 = fmul fast float %888, %886
  %890 = fmul fast float %888, %868
  %891 = fmul fast float %888, %884
  %892 = fmul fast float %888, %885
  br label %893

; <label>:893                                     ; preds = %881, %869, %853, %838
  %894 = phi float [ %845, %838 ], [ %862, %853 ], [ %877, %869 ], [ %889, %881 ]
  %895 = phi float [ %846, %838 ], [ %863, %853 ], [ %878, %869 ], [ %890, %881 ]
  %896 = phi float [ %847, %838 ], [ %864, %853 ], [ %879, %869 ], [ %891, %881 ]
  %897 = phi float [ %848, %838 ], [ %865, %853 ], [ %880, %869 ], [ %892, %881 ]
  %898 = fcmp une float %276, 0.000000e+00
  br i1 %898, label %899, label %1039, !dx.controlflow.hints !42

; <label>:899                                     ; preds = %893
  %900 = fsub float -0.000000e+00, %111
  %901 = fsub float -0.000000e+00, %112
  %902 = fsub float -0.000000e+00, %113
  %903 = fmul float %119, %900
  %904 = fmul float %119, %901
  %905 = fmul float %119, %902
  %906 = fmul float %114, %116
  %907 = fmul float %114, %117
  %908 = fmul float %114, %118
  %909 = fadd float %903, %906
  %910 = fadd float %904, %907
  %911 = fadd float %905, %908
  %912 = fmul float %117, %902
  %913 = fmul float %118, %901
  %914 = fsub float %912, %913
  %915 = fmul float %118, %900
  %916 = fmul float %116, %902
  %917 = fsub float %915, %916
  %918 = fmul float %116, %901
  %919 = fmul float %117, %900
  %920 = fsub float %918, %919
  %921 = fadd float %909, %914
  %922 = fadd float %910, %917
  %923 = fadd float %911, %920
  %924 = fmul float %921, 2.000000e+00
  %925 = fmul float %922, 2.000000e+00
  %926 = fmul float %923, 2.000000e+00
  %927 = fmul float %112, %183
  %928 = fmul float %113, %182
  %929 = fsub float %927, %928
  %930 = fmul float %113, %181
  %931 = fmul float %111, %183
  %932 = fsub float %930, %931
  %933 = fmul float %111, %182
  %934 = fmul float %112, %181
  %935 = fsub float %933, %934
  %936 = fmul float %929, 2.000000e+00
  %937 = fmul float %932, 2.000000e+00
  %938 = fmul float %935, 2.000000e+00
  %939 = fmul float %114, %936
  %940 = fmul float %114, %937
  %941 = fmul float %114, %938
  %942 = fadd float %181, %939
  %943 = fadd float %182, %940
  %944 = fadd float %183, %941
  %945 = fmul float %112, %938
  %946 = fmul float %113, %937
  %947 = fsub float %945, %946
  %948 = fmul float %113, %936
  %949 = fmul float %111, %938
  %950 = fsub float %948, %949
  %951 = fmul float %111, %937
  %952 = fmul float %112, %936
  %953 = fsub float %951, %952
  %954 = fadd float %942, %947
  %955 = fadd float %943, %950
  %956 = fadd float %944, %953
  %957 = fadd float %924, %954
  %958 = fadd float %925, %955
  %959 = fadd float %926, %956
  %960 = fmul float %957, %638
  %961 = fmul float %958, %638
  %962 = fmul float %959, %638
  %963 = fadd float %960, %632
  %964 = fadd float %961, %633
  %965 = fadd float %962, %634
  %966 = fmul fast float %211, %114
  %967 = fmul fast float %212, %114
  %968 = fmul fast float %213, %114
  %969 = fmul fast float %214, %111
  %970 = fmul fast float %214, %112
  %971 = fmul fast float %214, %113
  %972 = fadd fast float %969, %966
  %973 = fadd fast float %970, %967
  %974 = fmul fast float %213, %112
  %975 = fmul fast float %212, %113
  %976 = fsub fast float %974, %975
  %977 = fmul fast float %211, %113
  %978 = fmul fast float %213, %111
  %979 = fsub fast float %977, %978
  %980 = fmul fast float %212, %111
  %981 = fmul fast float %211, %112
  %982 = fsub fast float %980, %981
  %983 = fadd fast float %972, %976
  %984 = fadd fast float %973, %979
  %985 = fadd fast float %982, %968
  %986 = fadd fast float %985, %971
  %987 = fmul fast float %214, %114
  %988 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %989 = fsub fast float %987, %988
  %990 = call float @dx.op.dot4.f32(i32 56, float %628, float %629, float %630, float %631, float %983, float %984, float %986, float %989)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %991 = fcmp fast olt float %990, 0.000000e+00
  %992 = fsub fast float -0.000000e+00, %638
  %993 = select i1 %991, float %992, float %638
  %994 = fmul fast float %993, %983
  %995 = fmul fast float %993, %984
  %996 = fmul fast float %993, %986
  %997 = fmul fast float %993, %989
  %998 = fadd fast float %994, %628
  %999 = fadd fast float %995, %629
  %1000 = fadd fast float %996, %630
  %1001 = fadd fast float %997, %631
  %1002 = fsub float %963, %720
  %1003 = fsub float %964, %721
  %1004 = fsub float %965, %722
  %1005 = fmul float %276, %1002
  %1006 = fmul float %276, %1003
  %1007 = fmul float %276, %1004
  %1008 = fadd float %720, %1005
  %1009 = fadd float %721, %1006
  %1010 = fadd float %722, %1007
  %1011 = call float @dx.op.dot4.f32(i32 56, float %998, float %999, float %1000, float %1001, float %894, float %895, float %896, float %897)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1012 = fcmp fast olt float %1011, 0.000000e+00
  %1013 = fsub fast float -0.000000e+00, %998
  %1014 = fsub fast float -0.000000e+00, %999
  %1015 = fsub fast float -0.000000e+00, %1000
  %1016 = fsub fast float -0.000000e+00, %1001
  %1017 = select i1 %1012, float %1013, float %998
  %1018 = select i1 %1012, float %1014, float %999
  %1019 = select i1 %1012, float %1015, float %1000
  %1020 = select i1 %1012, float %1016, float %1001
  %1021 = fsub fast float %1017, %894
  %1022 = fsub fast float %1018, %895
  %1023 = fsub fast float %1019, %896
  %1024 = fsub fast float %1020, %897
  %1025 = fmul fast float %1021, %276
  %1026 = fmul fast float %1022, %276
  %1027 = fmul fast float %1023, %276
  %1028 = fmul fast float %1024, %276
  %1029 = fadd fast float %1025, %894
  %1030 = fadd fast float %1026, %895
  %1031 = fadd fast float %1027, %896
  %1032 = fadd fast float %1028, %897
  %1033 = call float @dx.op.dot4.f32(i32 56, float %1029, float %1030, float %1031, float %1032, float %1029, float %1030, float %1031, float %1032)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1034 = call float @dx.op.unary.f32(i32 25, float %1033)  ; Rsqrt(value)
  %1035 = fmul fast float %1029, %1034
  %1036 = fmul fast float %1030, %1034
  %1037 = fmul fast float %1031, %1034
  %1038 = fmul fast float %1032, %1034
  br label %1039

; <label>:1039                                    ; preds = %899, %893
  %1040 = phi float [ %1035, %899 ], [ %894, %893 ]
  %1041 = phi float [ %1036, %899 ], [ %895, %893 ]
  %1042 = phi float [ %1037, %899 ], [ %896, %893 ]
  %1043 = phi float [ %1038, %899 ], [ %897, %893 ]
  %1044 = phi float [ %1008, %899 ], [ %720, %893 ]
  %1045 = phi float [ %1009, %899 ], [ %721, %893 ]
  %1046 = phi float [ %1010, %899 ], [ %722, %893 ]
  %1047 = and i32 %107, 65532
  %1048 = add i32 %1047, %91
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 255
  %1052 = lshr i32 %1050, 8
  %1053 = and i32 %1052, 255
  %1054 = lshr i32 %1050, 16
  %1055 = and i32 %1054, 255
  %1056 = lshr i32 %1050, 24
  %1057 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %1051, i32* %1057, align 4
  %1058 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %1053, i32* %1058, align 4
  %1059 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %1055, i32* %1059, align 4
  %1060 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %1056, i32* %1060, align 4
  %1061 = and i32 %107, 3
  %1062 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %1061
  %1063 = load i32, i32* %1062, align 4, !tbaa !29, !noalias !43
  %1064 = icmp ne i32 %1063, 255
  %1065 = fadd float %623, %638
  %1066 = select i1 %1064, float %1065, float %623
  %1067 = fcmp ogt float %1066, 0.000000e+00
  br i1 %1067, label %1068, label %1089, !dx.controlflow.hints !47

; <label>:1068                                    ; preds = %1039
  %1069 = select i1 %1064, i32 %1063, i32 %624
  %1070 = mul i32 %1069, 12
  %1071 = add i32 %1070, %90
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.i32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.i32 %1072, 2
  %1076 = bitcast i32 %1073 to float
  %1077 = bitcast i32 %1074 to float
  %1078 = bitcast i32 %1075 to float
  %1079 = fsub float %1076, %1044
  %1080 = fsub float %1077, %1045
  %1081 = fsub float %1078, %1046
  %1082 = call float @dx.op.unary.f32(i32 7, float %1066), !dx.precise !27  ; Saturate(value)
  %1083 = fmul float %1082, %1079
  %1084 = fmul float %1082, %1080
  %1085 = fmul float %1082, %1081
  %1086 = fadd float %1044, %1083
  %1087 = fadd float %1045, %1084
  %1088 = fadd float %1046, %1085
  br label %1089

; <label>:1089                                    ; preds = %1068, %1039
  %1090 = phi float [ %1086, %1068 ], [ %1044, %1039 ]
  %1091 = phi float [ %1087, %1068 ], [ %1045, %1039 ]
  %1092 = phi float [ %1088, %1068 ], [ %1046, %1039 ]
  %1093 = fsub float %1090, %56
  %1094 = fsub float %1091, %57
  %1095 = fsub float %1092, %58
  %1096 = fmul float %66, %1095
  %1097 = fmul float %67, %1094
  %1098 = fsub float %1096, %1097
  %1099 = fmul float %67, %1093
  %1100 = fmul float %65, %1095
  %1101 = fsub float %1099, %1100
  %1102 = fmul float %65, %1094
  %1103 = fmul float %66, %1093
  %1104 = fsub float %1102, %1103
  %1105 = fmul float %1098, 2.000000e+00
  %1106 = fmul float %1101, 2.000000e+00
  %1107 = fmul float %1104, 2.000000e+00
  %1108 = fmul float %68, %1105
  %1109 = fmul float %68, %1106
  %1110 = fmul float %68, %1107
  %1111 = fsub float %1093, %1108
  %1112 = fsub float %1094, %1109
  %1113 = fsub float %1095, %1110
  %1114 = fmul float %66, %1107
  %1115 = fmul float %67, %1106
  %1116 = fsub float %1114, %1115
  %1117 = fmul float %67, %1105
  %1118 = fmul float %65, %1107
  %1119 = fsub float %1117, %1118
  %1120 = fmul float %65, %1106
  %1121 = fmul float %66, %1105
  %1122 = fsub float %1120, %1121
  %1123 = fadd float %1111, %1116
  %1124 = fadd float %1112, %1119
  %1125 = fadd float %1113, %1122
  %1126 = fsub fast float -0.000000e+00, %65
  %1127 = fsub fast float -0.000000e+00, %66
  %1128 = fsub fast float -0.000000e+00, %67
  %1129 = fmul fast float %1040, %68
  %1130 = fmul fast float %1041, %68
  %1131 = fmul fast float %1042, %68
  %1132 = fmul fast float %1043, %1126
  %1133 = fmul fast float %1043, %1127
  %1134 = fmul fast float %1043, %1128
  %1135 = fadd fast float %1132, %1129
  %1136 = fadd fast float %1133, %1130
  %1137 = fmul fast float %1042, %1127
  %1138 = fmul fast float %1041, %1128
  %1139 = fsub fast float %1137, %1138
  %1140 = fmul fast float %1040, %1128
  %1141 = fmul fast float %1042, %1126
  %1142 = fsub fast float %1140, %1141
  %1143 = fmul fast float %1041, %1126
  %1144 = fmul fast float %1040, %1127
  %1145 = fsub fast float %1143, %1144
  %1146 = fadd fast float %1135, %1139
  %1147 = fadd fast float %1136, %1142
  %1148 = fadd fast float %1145, %1131
  %1149 = fadd fast float %1148, %1134
  %1150 = fmul fast float %1043, %68
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1126, float %1127, float %1128, float %1040, float %1041, float %1042)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = fsub fast float %1150, %1151
  %1153 = fsub float %1123, %47
  %1154 = fsub float %1124, %48
  %1155 = fsub float %1125, %49
  %1156 = fdiv float 1.000000e+00, %50
  %1157 = fmul float %1156, %1153
  %1158 = fmul float %1156, %1154
  %1159 = fmul float %1156, %1155
  %1160 = fmul float %1157, 5.000000e-01
  %1161 = fmul float %1158, 5.000000e-01
  %1162 = fmul float %1159, 5.000000e-01
  %1163 = fadd float %1160, 5.000000e-01
  %1164 = fadd float %1161, 5.000000e-01
  %1165 = fadd float %1162, 5.000000e-01
  %1166 = call float @dx.op.unary.f32(i32 7, float %1163), !dx.precise !27  ; Saturate(value)
  %1167 = call float @dx.op.unary.f32(i32 7, float %1164), !dx.precise !27  ; Saturate(value)
  %1168 = call float @dx.op.unary.f32(i32 7, float %1165), !dx.precise !27  ; Saturate(value)
  %1169 = fmul float %1166, 2.097151e+06
  %1170 = fmul float %1167, 2.097151e+06
  %1171 = fmul float %1168, 2.097151e+06
  %1172 = fptoui float %1169 to i32
  %1173 = fptoui float %1170 to i32
  %1174 = fptoui float %1171 to i32
  %1175 = shl i32 %1173, 21
  %1176 = or i32 %1175, %1172
  %1177 = lshr i32 %1173, 11
  %1178 = shl i32 %1174, 10
  %1179 = or i32 %1178, %1177
  %1180 = call float @dx.op.unary.f32(i32 6, float %1149)  ; FAbs(value)
  %1181 = call float @dx.op.unary.f32(i32 6, float %1146)  ; FAbs(value)
  %1182 = fcmp fast oge float %1180, %1181
  %1183 = call float @dx.op.unary.f32(i32 6, float %1147)  ; FAbs(value)
  %1184 = fcmp fast oge float %1180, %1183
  %1185 = and i1 %1182, %1184
  br i1 %1185, label %1186, label %1189, !dx.controlflow.hints !48

; <label>:1186                                    ; preds = %1089
  %1187 = fcmp fast olt float %1149, 0.000000e+00
  %1188 = select i1 %1187, float 5.000000e+00, float 4.000000e+00
  br label %1197

; <label>:1189                                    ; preds = %1089
  %1190 = fcmp fast ult float %1183, %1181
  br i1 %1190, label %1194, label %1191, !dx.controlflow.hints !49

; <label>:1191                                    ; preds = %1189
  %1192 = fcmp fast olt float %1147, 0.000000e+00
  %1193 = select i1 %1192, float 3.000000e+00, float 2.000000e+00
  br label %1197

; <label>:1194                                    ; preds = %1189
  %1195 = fcmp fast olt float %1146, 0.000000e+00
  %1196 = select i1 %1195, float 1.000000e+00, float 0.000000e+00
  br label %1197

; <label>:1197                                    ; preds = %1194, %1191, %1186
  %1198 = phi float [ %1188, %1186 ], [ %1193, %1191 ], [ %1196, %1194 ]
  %1199 = fmul fast float %1198, 5.000000e-01
  %1200 = fptoui float %1199 to i32
  %1201 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1202 = call float @dx.op.binary.f32(i32 35, float %1183, float %1180)  ; FMax(a,b)
  %1203 = call float @dx.op.binary.f32(i32 35, float %1181, float %1202)  ; FMax(a,b)
  %1204 = fcmp fast ogt float %1201, %1203
  %1205 = select i1 %1204, i32 3, i32 %1200
  %1206 = icmp eq i32 %1205, 0
  %1207 = select i1 %1206, float %1147, float %1146
  %1208 = select i1 %1206, float %1149, float %1147
  %1209 = select i1 %1206, float %1152, float %1149
  %1210 = select i1 %1206, float %1146, float %1152
  %1211 = icmp eq i32 %1205, 1
  %1212 = select i1 %1211, float %1209, float %1208
  %1213 = select i1 %1211, float %1210, float %1209
  %1214 = select i1 %1211, float %1208, float %1210
  %1215 = icmp eq i32 %1205, 2
  %1216 = select i1 %1215, float %1214, float %1213
  %1217 = select i1 %1215, float %1213, float %1214
  %1218 = fcmp fast ogt float %1217, 0.000000e+00
  %1219 = select i1 %1218, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1220 = fmul fast float %1219, %1207
  %1221 = fmul fast float %1219, %1212
  %1222 = fmul fast float %1219, %1216
  %1223 = fadd fast float %1220, 1.000000e+00
  %1224 = fmul fast float %1223, 5.000000e-01
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1225, 1.023000e+03
  %1227 = fptoui float %1226 to i32
  %1228 = fadd fast float %1221, 1.000000e+00
  %1229 = fmul fast float %1228, 5.000000e-01
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = fmul fast float %1230, 1.023000e+03
  %1232 = fptoui float %1231 to i32
  %1233 = fadd fast float %1222, 1.000000e+00
  %1234 = fmul fast float %1233, 5.000000e-01
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = fmul fast float %1235, 5.110000e+02
  %1237 = fptoui float %1236 to i32
  %1238 = shl i32 %1232, 10
  %1239 = shl i32 %1237, 20
  %1240 = fcmp fast ogt float %217, 0.000000e+00
  %1241 = select i1 %1240, i32 0, i32 536870912
  %1242 = shl i32 %1205, 30
  %1243 = or i32 %1227, %1241
  %1244 = or i32 %1243, %1242
  %1245 = or i32 %1244, %1238
  %1246 = or i32 %1245, %1239
  %1247 = select i1 %32, i32 %1176, i32 0
  %1248 = select i1 %32, i32 %1179, i32 0
  %1249 = shl i32 %94, 3
  %1250 = add i32 %40, %1249
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1250, i32 undef, i32 %1247, i32 %1248, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1251 = shl i32 %94, 2
  %1252 = add i32 %37, %1251
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1252, i32 undef, i32 %1246, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1253 = bitcast float %1123 to i32
  %1254 = bitcast float %1124 to i32
  %1255 = bitcast float %1125 to i32
  %1256 = mul i32 %94, 12
  %1257 = add i32 %38, %1256
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1257, i32 undef, i32 %1253, i32 %1254, i32 %1255, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1258

; <label>:1258                                    ; preds = %1197, %83
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
!19 = !{void ()* @cs_skinning_deform_factors_weight_blend_dismember_unified_unpacked_positions_main, !"cs_skinning_deform_factors_weight_blend_dismember_unified_unpacked_positions_main", null, !4, !20}
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

