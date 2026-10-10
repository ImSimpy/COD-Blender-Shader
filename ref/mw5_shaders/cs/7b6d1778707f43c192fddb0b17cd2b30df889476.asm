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
; shader hash: 3eeb4156b9b6752a1a2acd4fa70d684d
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

define void @cs_skinning_deform_factors_dismember_unified_unpacked_positions_main() {
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
  br i1 %92, label %93, label %984, !dx.controlflow.hints !23

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
  br i1 %76, label %274, label %495

; <label>:274                                     ; preds = %210
  %275 = and i32 %21, 65535
  br label %276

; <label>:276                                     ; preds = %276, %274
  %277 = phi float [ %341, %276 ], [ 0.000000e+00, %274 ]
  %278 = phi float [ %342, %276 ], [ 0.000000e+00, %274 ]
  %279 = phi float [ %343, %276 ], [ 0.000000e+00, %274 ]
  %280 = phi float [ %344, %276 ], [ 0.000000e+00, %274 ]
  %281 = phi float [ %333, %276 ], [ 0.000000e+00, %274 ]
  %282 = phi float [ %334, %276 ], [ 0.000000e+00, %274 ]
  %283 = phi float [ %335, %276 ], [ 0.000000e+00, %274 ]
  %284 = phi float [ %336, %276 ], [ 0.000000e+00, %274 ]
  %285 = phi float [ %314, %276 ], [ 0.000000e+00, %274 ]
  %286 = phi float [ %490, %276 ], [ 0.000000e+00, %274 ]
  %287 = phi i32 [ %491, %276 ], [ 0, %274 ]
  %288 = phi float [ %462, %276 ], [ 0.000000e+00, %274 ]
  %289 = phi float [ %463, %276 ], [ 0.000000e+00, %274 ]
  %290 = phi float [ %464, %276 ], [ 0.000000e+00, %274 ]
  %291 = phi float [ %468, %276 ], [ 0.000000e+00, %274 ]
  %292 = phi float [ %469, %276 ], [ 0.000000e+00, %274 ]
  %293 = phi float [ %470, %276 ], [ 0.000000e+00, %274 ]
  %294 = phi i32 [ %492, %276 ], [ 1, %274 ]
  %295 = mul i32 %294, %84
  %296 = add i32 %95, %295
  %297 = shl i32 %296, 2
  %298 = lshr i32 %296, 8
  %299 = and i32 %298, 4194303
  %300 = add i32 %299, %31
  %301 = shl i32 %300, 2
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = shl i32 %303, 10
  %305 = and i32 %297, 1020
  %306 = or i32 %304, %305
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = lshr i32 %308, 16
  %311 = uitofp i32 %310 to float
  %312 = fmul float %311, 0x3EF0000000000000
  %313 = add i32 %309, %33
  %314 = fadd float %285, %312
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %313, i32 0)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %313, i32 16)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = extractvalue %dx.types.ResRet.f32 %320, 3
  %325 = call float @dx.op.dot4.f32(i32 56, float %111, float %112, float %113, float %114, float %316, float %317, float %318, float %319), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %326 = fcmp olt float %325, 0.000000e+00
  %327 = fsub float -0.000000e+00, %312
  %328 = select i1 %326, float %327, float %312
  %329 = fmul float %316, %328
  %330 = fmul float %317, %328
  %331 = fmul float %318, %328
  %332 = fmul float %319, %328
  %333 = fadd float %281, %329
  %334 = fadd float %282, %330
  %335 = fadd float %283, %331
  %336 = fadd float %284, %332
  %337 = fmul float %321, %328
  %338 = fmul float %322, %328
  %339 = fmul float %323, %328
  %340 = fmul float %324, %328
  %341 = fadd float %277, %337
  %342 = fadd float %278, %338
  %343 = fadd float %279, %339
  %344 = fadd float %280, %340
  %345 = fsub fast float -0.000000e+00, %316
  %346 = fsub fast float -0.000000e+00, %317
  %347 = fsub fast float -0.000000e+00, %318
  %348 = fsub fast float -0.000000e+00, %319
  %349 = fsub fast float -0.000000e+00, %321
  %350 = fsub fast float -0.000000e+00, %322
  %351 = fsub fast float -0.000000e+00, %323
  %352 = fsub fast float -0.000000e+00, %324
  %353 = select i1 %326, float %349, float %321
  %354 = select i1 %326, float %350, float %322
  %355 = select i1 %326, float %351, float %323
  %356 = select i1 %326, float %352, float %324
  %357 = select i1 %326, float %345, float %316
  %358 = select i1 %326, float %346, float %317
  %359 = select i1 %326, float %347, float %318
  %360 = select i1 %326, float %348, float %319
  %361 = call float @dx.op.dot4.f32(i32 56, float %357, float %358, float %359, float %360, float %357, float %358, float %359, float %360)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %362 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %363 = fdiv fast float 1.000000e+00, %362
  %364 = fmul fast float %363, %360
  %365 = fmul fast float %363, %357
  %366 = fmul fast float %363, %358
  %367 = fmul fast float %363, %359
  %368 = fmul fast float %363, %356
  %369 = fmul fast float %363, %353
  %370 = fmul fast float %363, %354
  %371 = fmul fast float %363, %355
  %372 = fmul fast float %366, %183
  %373 = fmul fast float %367, %182
  %374 = fsub fast float %372, %373
  %375 = fmul fast float %367, %181
  %376 = fmul fast float %365, %183
  %377 = fsub fast float %375, %376
  %378 = fmul fast float %365, %182
  %379 = fmul fast float %366, %181
  %380 = fsub fast float %378, %379
  %381 = fmul fast float %364, %181
  %382 = fmul fast float %364, %182
  %383 = fmul fast float %364, %183
  %384 = fadd fast float %374, %381
  %385 = fadd fast float %377, %382
  %386 = fadd fast float %380, %383
  %387 = fmul fast float %369, %364
  %388 = fmul fast float %370, %364
  %389 = fmul fast float %371, %364
  %390 = fmul fast float %365, %368
  %391 = fmul fast float %366, %368
  %392 = fmul fast float %367, %368
  %393 = fmul fast float %366, %371
  %394 = fmul fast float %367, %370
  %395 = fmul fast float %367, %369
  %396 = fmul fast float %365, %371
  %397 = fmul fast float %365, %370
  %398 = fmul fast float %366, %369
  %399 = fsub fast float %387, %390
  %400 = fsub fast float %399, %394
  %401 = fadd fast float %400, %393
  %402 = fsub fast float %388, %391
  %403 = fsub fast float %402, %396
  %404 = fadd fast float %403, %395
  %405 = fsub fast float %389, %392
  %406 = fsub fast float %405, %398
  %407 = fadd fast float %406, %397
  %408 = fmul fast float %401, 2.000000e+00
  %409 = fmul fast float %404, 2.000000e+00
  %410 = fmul fast float %407, 2.000000e+00
  %411 = fmul fast float %365, 2.000000e+00
  %412 = fmul fast float %366, 2.000000e+00
  %413 = fmul fast float %367, 2.000000e+00
  %414 = fmul fast float %386, %412
  %415 = fmul fast float %385, %413
  %416 = fmul fast float %384, %413
  %417 = fmul fast float %386, %411
  %418 = fmul fast float %385, %411
  %419 = fmul fast float %384, %412
  %420 = fmul fast float %258, -2.000000e+00
  %421 = fadd fast float %269, %420
  %422 = fsub fast float %421, %268
  %423 = fadd fast float %422, %408
  %424 = fsub fast float %423, %415
  %425 = fadd fast float %424, %414
  %426 = fmul fast float %261, -2.000000e+00
  %427 = fadd fast float %271, %426
  %428 = fsub fast float %427, %270
  %429 = fadd fast float %428, %409
  %430 = fsub fast float %429, %417
  %431 = fadd fast float %430, %416
  %432 = fmul fast float %264, -2.000000e+00
  %433 = fadd fast float %273, %432
  %434 = fsub fast float %433, %272
  %435 = fadd fast float %434, %410
  %436 = fsub fast float %435, %419
  %437 = fadd fast float %436, %418
  %438 = sub i32 %94, %85
  %439 = add nsw i32 %294, -1
  %440 = mul i32 %439, %84
  %441 = add i32 %438, %75
  %442 = add i32 %441, %440
  %443 = shl i32 %442, 2
  %444 = lshr i32 %442, 8
  %445 = and i32 %444, 4194303
  %446 = add i32 %445, %39
  %447 = shl i32 %446, 2
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = shl i32 %449, 10
  %451 = and i32 %443, 1020
  %452 = or i32 %450, %451
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 65535
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = lshr i32 %454, 16
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = fmul fast float %425, %456
  %460 = fmul fast float %431, %456
  %461 = fmul fast float %437, %456
  %462 = fadd fast float %459, %288
  %463 = fadd fast float %460, %289
  %464 = fadd fast float %461, %290
  %465 = fmul fast float %458, %425
  %466 = fmul fast float %458, %431
  %467 = fmul fast float %458, %437
  %468 = fadd fast float %465, %291
  %469 = fadd fast float %466, %292
  %470 = fadd fast float %467, %293
  %471 = and i32 %308, 65532
  %472 = add i32 %471, %91
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 255
  %476 = lshr i32 %474, 8
  %477 = and i32 %476, 255
  %478 = lshr i32 %474, 16
  %479 = and i32 %478, 255
  %480 = lshr i32 %474, 24
  %481 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %475, i32* %481, align 4
  %482 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %477, i32* %482, align 4
  %483 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %479, i32* %483, align 4
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %480, i32* %484, align 4
  %485 = and i32 %308, 3
  %486 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %485
  %487 = load i32, i32* %486, align 4, !tbaa !28, !noalias !32
  %488 = icmp ne i32 %487, 255
  %489 = fadd float %286, %312
  %490 = select i1 %488, float %489, float %286
  %491 = select i1 %488, i32 %487, i32 %287
  %492 = add nuw nsw i32 %294, 1
  %493 = icmp eq i32 %492, %275
  br i1 %493, label %494, label %276, !llvm.loop !36

; <label>:494                                     ; preds = %276
  br label %495

; <label>:495                                     ; preds = %494, %210
  %496 = phi float [ 0.000000e+00, %210 ], [ %341, %494 ]
  %497 = phi float [ 0.000000e+00, %210 ], [ %342, %494 ]
  %498 = phi float [ 0.000000e+00, %210 ], [ %343, %494 ]
  %499 = phi float [ 0.000000e+00, %210 ], [ %344, %494 ]
  %500 = phi float [ 0.000000e+00, %210 ], [ %333, %494 ]
  %501 = phi float [ 0.000000e+00, %210 ], [ %334, %494 ]
  %502 = phi float [ 0.000000e+00, %210 ], [ %335, %494 ]
  %503 = phi float [ 0.000000e+00, %210 ], [ %336, %494 ]
  %504 = phi float [ 0.000000e+00, %210 ], [ %314, %494 ]
  %505 = phi float [ 0.000000e+00, %210 ], [ %490, %494 ]
  %506 = phi i32 [ 0, %210 ], [ %491, %494 ]
  %507 = phi float [ 0.000000e+00, %210 ], [ %462, %494 ]
  %508 = phi float [ 0.000000e+00, %210 ], [ %463, %494 ]
  %509 = phi float [ 0.000000e+00, %210 ], [ %464, %494 ]
  %510 = phi float [ 0.000000e+00, %210 ], [ %468, %494 ]
  %511 = phi float [ 0.000000e+00, %210 ], [ %469, %494 ]
  %512 = phi float [ 0.000000e+00, %210 ], [ %470, %494 ]
  %513 = fsub float 1.000000e+00, %504
  %514 = fmul float %111, %513
  %515 = fmul float %112, %513
  %516 = fmul float %113, %513
  %517 = fmul float %114, %513
  %518 = fadd float %500, %514
  %519 = fadd float %501, %515
  %520 = fadd float %502, %516
  %521 = fadd float %503, %517
  %522 = fmul float %116, %513
  %523 = fmul float %117, %513
  %524 = fmul float %118, %513
  %525 = fmul float %119, %513
  %526 = fadd float %496, %522
  %527 = fadd float %497, %523
  %528 = fadd float %498, %524
  %529 = fadd float %499, %525
  %530 = call float @dx.op.dot4.f32(i32 56, float %518, float %519, float %520, float %521, float %518, float %519, float %520, float %521), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %531 = call float @dx.op.unary.f32(i32 24, float %530), !dx.precise !27  ; Sqrt(value)
  %532 = fdiv float 1.000000e+00, %531
  %533 = fmul float %521, %532
  %534 = fmul float %518, %532
  %535 = fmul float %519, %532
  %536 = fmul float %520, %532
  %537 = fmul float %529, %532
  %538 = fmul float %526, %532
  %539 = fmul float %527, %532
  %540 = fmul float %528, %532
  %541 = fmul float %183, %535
  %542 = fmul float %182, %536
  %543 = fsub float %541, %542
  %544 = fmul float %181, %536
  %545 = fmul float %183, %534
  %546 = fsub float %544, %545
  %547 = fmul float %182, %534
  %548 = fmul float %181, %535
  %549 = fsub float %547, %548
  %550 = fmul float %181, %533
  %551 = fmul float %182, %533
  %552 = fmul float %183, %533
  %553 = fadd float %550, %543
  %554 = fadd float %551, %546
  %555 = fadd float %552, %549
  %556 = fmul float %538, %533
  %557 = fmul float %539, %533
  %558 = fmul float %540, %533
  %559 = fmul float %534, %537
  %560 = fmul float %535, %537
  %561 = fmul float %536, %537
  %562 = fsub float %556, %559
  %563 = fsub float %557, %560
  %564 = fsub float %558, %561
  %565 = fmul float %535, %540
  %566 = fmul float %536, %539
  %567 = fsub float %565, %566
  %568 = fmul float %536, %538
  %569 = fmul float %534, %540
  %570 = fsub float %568, %569
  %571 = fmul float %534, %539
  %572 = fmul float %535, %538
  %573 = fsub float %571, %572
  %574 = fadd float %562, %567
  %575 = fadd float %563, %570
  %576 = fadd float %564, %573
  %577 = fmul float %574, 2.000000e+00
  %578 = fmul float %575, 2.000000e+00
  %579 = fmul float %576, 2.000000e+00
  %580 = fadd float %181, %577
  %581 = fadd float %182, %578
  %582 = fadd float %183, %579
  %583 = fmul float %534, 2.000000e+00
  %584 = fmul float %535, 2.000000e+00
  %585 = fmul float %536, 2.000000e+00
  %586 = fmul float %584, %555
  %587 = fmul float %585, %554
  %588 = fsub float %586, %587
  %589 = fmul float %585, %553
  %590 = fmul float %583, %555
  %591 = fsub float %589, %590
  %592 = fmul float %583, %554
  %593 = fmul float %584, %553
  %594 = fsub float %592, %593
  %595 = fadd float %580, %588
  %596 = fadd float %581, %591
  %597 = fadd float %582, %594
  %598 = fmul fast float %533, %211
  %599 = fmul fast float %533, %212
  %600 = fmul fast float %533, %213
  %601 = fmul fast float %534, %214
  %602 = fmul fast float %535, %214
  %603 = fmul fast float %536, %214
  %604 = fadd fast float %598, %601
  %605 = fadd fast float %599, %602
  %606 = fadd fast float %600, %603
  %607 = fmul fast float %535, %213
  %608 = fmul fast float %536, %212
  %609 = fsub fast float %607, %608
  %610 = fmul fast float %536, %211
  %611 = fmul fast float %534, %213
  %612 = fsub fast float %610, %611
  %613 = fmul fast float %534, %212
  %614 = fmul fast float %535, %211
  %615 = fsub fast float %613, %614
  %616 = fadd fast float %604, %609
  %617 = fadd fast float %605, %612
  %618 = fadd fast float %606, %615
  %619 = fmul fast float %533, %214
  %620 = call float @dx.op.dot3.f32(i32 55, float %534, float %535, float %536, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = fsub fast float %619, %620
  %622 = fmul fast float %617, %617
  %623 = fmul fast float %622, 2.000000e+00
  %624 = fmul fast float %618, %618
  %625 = fmul fast float %624, 2.000000e+00
  %626 = fmul fast float %616, 2.000000e+00
  %627 = fmul fast float %626, %617
  %628 = fmul fast float %621, 2.000000e+00
  %629 = fmul fast float %628, %618
  %630 = fsub fast float %627, %629
  %631 = fmul fast float %617, %616
  %632 = fmul fast float %618, %621
  %633 = fmul fast float %616, %616
  %634 = fmul fast float %633, 2.000000e+00
  %635 = fsub fast float 1.000000e+00, %634
  %636 = fsub fast float %635, %625
  %637 = fmul fast float %626, %618
  %638 = fmul fast float %628, %617
  %639 = fsub fast float %637, %638
  %640 = fmul fast float %618, %617
  %641 = fmul fast float %616, %621
  %642 = fadd fast float %640, %641
  %643 = fmul fast float %630, %217
  %644 = fmul fast float %636, %217
  %645 = fmul fast float %217, 2.000000e+00
  %646 = fmul fast float %645, %642
  %647 = call float @dx.op.dot3.f32(i32 55, float %507, float %508, float %509, float %507, float %508, float %509)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = call float @dx.op.unary.f32(i32 25, float %647)  ; Rsqrt(value)
  %649 = fmul fast float %648, 0x3FECCCCCC0000000
  %650 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %649)  ; FMin(a,b)
  %651 = fmul fast float %650, %507
  %652 = fmul fast float %650, %508
  %653 = fmul fast float %650, %509
  %654 = fadd fast float %651, 1.000000e+00
  %655 = fsub fast float %654, %623
  %656 = fsub fast float %655, %625
  %657 = fadd fast float %631, %632
  %658 = fmul fast float %657, 2.000000e+00
  %659 = fadd fast float %658, %652
  %660 = fadd fast float %639, %653
  %661 = call float @dx.op.dot3.f32(i32 55, float %510, float %511, float %512, float %510, float %511, float %512)  ; Dot3(ax,ay,az,bx,by,bz)
  %662 = call float @dx.op.unary.f32(i32 25, float %661)  ; Rsqrt(value)
  %663 = fmul fast float %662, 0x3FECCCCCC0000000
  %664 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %663)  ; FMin(a,b)
  %665 = fmul fast float %664, %510
  %666 = fmul fast float %664, %511
  %667 = fmul fast float %664, %512
  %668 = fadd fast float %643, %665
  %669 = fadd fast float %644, %666
  %670 = fadd fast float %646, %667
  %671 = fmul fast float %669, %660
  %672 = fmul fast float %670, %659
  %673 = fsub fast float %671, %672
  %674 = fmul fast float %670, %656
  %675 = fmul fast float %668, %660
  %676 = fsub fast float %674, %675
  %677 = fmul fast float %668, %659
  %678 = fmul fast float %669, %656
  %679 = fsub fast float %677, %678
  %680 = call float @dx.op.dot3.f32(i32 55, float %673, float %676, float %679, float %673, float %676, float %679)  ; Dot3(ax,ay,az,bx,by,bz)
  %681 = call float @dx.op.unary.f32(i32 25, float %680)  ; Rsqrt(value)
  %682 = fmul fast float %673, %681
  %683 = fmul fast float %676, %681
  %684 = fmul fast float %679, %681
  %685 = call float @dx.op.dot3.f32(i32 55, float %656, float %659, float %660, float %682, float %683, float %684)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = fsub fast float -0.000000e+00, %685
  %687 = fmul fast float %682, %686
  %688 = fmul fast float %683, %686
  %689 = fmul fast float %684, %686
  %690 = fadd fast float %687, %656
  %691 = fadd fast float %688, %659
  %692 = fadd fast float %689, %660
  %693 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %690, float %691, float %692)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.unary.f32(i32 25, float %693)  ; Rsqrt(value)
  %695 = fmul fast float %690, %694
  %696 = fmul fast float %691, %694
  %697 = fmul fast float %692, %694
  %698 = fmul fast float %696, %684
  %699 = fmul fast float %697, %683
  %700 = fsub fast float %698, %699
  %701 = fmul fast float %697, %682
  %702 = fmul fast float %695, %684
  %703 = fsub fast float %701, %702
  %704 = fmul fast float %695, %683
  %705 = fmul fast float %696, %682
  %706 = fsub fast float %704, %705
  %707 = fmul fast float %700, %217
  %708 = fmul fast float %703, %217
  %709 = fmul fast float %706, %217
  %710 = fadd fast float %695, %684
  %711 = fadd fast float %710, %708
  %712 = fcmp fast ogt float %711, 0.000000e+00
  br i1 %712, label %713, label %724, !dx.controlflow.hints !38

; <label>:713                                     ; preds = %495
  %714 = fadd fast float %711, 1.000000e+00
  %715 = fsub fast float %709, %683
  %716 = fsub fast float %682, %697
  %717 = fsub fast float %696, %707
  %718 = call float @dx.op.unary.f32(i32 25, float %714)  ; Rsqrt(value)
  %719 = fmul fast float %718, 5.000000e-01
  %720 = fmul fast float %719, %715
  %721 = fmul fast float %719, %716
  %722 = fmul fast float %719, %717
  %723 = fmul fast float %719, %714
  br label %768

; <label>:724                                     ; preds = %495
  %725 = fcmp fast ogt float %695, %708
  %726 = fcmp fast ogt float %695, %684
  %727 = and i1 %726, %725
  br i1 %727, label %728, label %741, !dx.controlflow.hints !39

; <label>:728                                     ; preds = %724
  %729 = fsub fast float 1.000000e+00, %684
  %730 = fadd fast float %729, %695
  %731 = fsub fast float %730, %708
  %732 = fsub fast float %709, %683
  %733 = fadd fast float %707, %696
  %734 = fadd fast float %697, %682
  %735 = call float @dx.op.unary.f32(i32 25, float %731)  ; Rsqrt(value)
  %736 = fmul fast float %735, 5.000000e-01
  %737 = fmul fast float %736, %731
  %738 = fmul fast float %736, %733
  %739 = fmul fast float %736, %734
  %740 = fmul fast float %736, %732
  br label %768

; <label>:741                                     ; preds = %724
  %742 = fcmp fast ogt float %708, %684
  %743 = fadd fast float %709, %683
  br i1 %742, label %744, label %756, !dx.controlflow.hints !40

; <label>:744                                     ; preds = %741
  %745 = fsub fast float 1.000000e+00, %684
  %746 = fsub fast float %745, %695
  %747 = fadd fast float %746, %708
  %748 = fsub fast float %682, %697
  %749 = fadd fast float %707, %696
  %750 = call float @dx.op.unary.f32(i32 25, float %747)  ; Rsqrt(value)
  %751 = fmul fast float %750, 5.000000e-01
  %752 = fmul fast float %751, %749
  %753 = fmul fast float %751, %747
  %754 = fmul fast float %751, %743
  %755 = fmul fast float %751, %748
  br label %768

; <label>:756                                     ; preds = %741
  %757 = fadd fast float %684, 1.000000e+00
  %758 = fsub fast float %757, %695
  %759 = fsub fast float %758, %708
  %760 = fsub fast float %696, %707
  %761 = fadd fast float %697, %682
  %762 = call float @dx.op.unary.f32(i32 25, float %759)  ; Rsqrt(value)
  %763 = fmul fast float %762, 5.000000e-01
  %764 = fmul fast float %763, %761
  %765 = fmul fast float %763, %743
  %766 = fmul fast float %763, %759
  %767 = fmul fast float %763, %760
  br label %768

; <label>:768                                     ; preds = %756, %744, %728, %713
  %769 = phi float [ %720, %713 ], [ %737, %728 ], [ %752, %744 ], [ %764, %756 ]
  %770 = phi float [ %721, %713 ], [ %738, %728 ], [ %753, %744 ], [ %765, %756 ]
  %771 = phi float [ %722, %713 ], [ %739, %728 ], [ %754, %744 ], [ %766, %756 ]
  %772 = phi float [ %723, %713 ], [ %740, %728 ], [ %755, %744 ], [ %767, %756 ]
  %773 = and i32 %107, 65532
  %774 = add i32 %773, %91
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 255
  %778 = lshr i32 %776, 8
  %779 = and i32 %778, 255
  %780 = lshr i32 %776, 16
  %781 = and i32 %780, 255
  %782 = lshr i32 %776, 24
  %783 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %777, i32* %783, align 4
  %784 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %779, i32* %784, align 4
  %785 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %781, i32* %785, align 4
  %786 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %782, i32* %786, align 4
  %787 = and i32 %107, 3
  %788 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %787
  %789 = load i32, i32* %788, align 4, !tbaa !28, !noalias !41
  %790 = icmp ne i32 %789, 255
  %791 = fadd float %505, %513
  %792 = select i1 %790, float %791, float %505
  %793 = fcmp ogt float %792, 0.000000e+00
  br i1 %793, label %794, label %815, !dx.controlflow.hints !45

; <label>:794                                     ; preds = %768
  %795 = select i1 %790, i32 %789, i32 %506
  %796 = mul i32 %795, 12
  %797 = add i32 %796, %90
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = extractvalue %dx.types.ResRet.i32 %798, 1
  %801 = extractvalue %dx.types.ResRet.i32 %798, 2
  %802 = bitcast i32 %799 to float
  %803 = bitcast i32 %800 to float
  %804 = bitcast i32 %801 to float
  %805 = fsub float %802, %595
  %806 = fsub float %803, %596
  %807 = fsub float %804, %597
  %808 = call float @dx.op.unary.f32(i32 7, float %792), !dx.precise !27  ; Saturate(value)
  %809 = fmul float %808, %805
  %810 = fmul float %808, %806
  %811 = fmul float %808, %807
  %812 = fadd float %595, %809
  %813 = fadd float %596, %810
  %814 = fadd float %597, %811
  br label %815

; <label>:815                                     ; preds = %794, %768
  %816 = phi float [ %812, %794 ], [ %595, %768 ]
  %817 = phi float [ %813, %794 ], [ %596, %768 ]
  %818 = phi float [ %814, %794 ], [ %597, %768 ]
  %819 = fsub float %816, %56
  %820 = fsub float %817, %57
  %821 = fsub float %818, %58
  %822 = fmul float %66, %821
  %823 = fmul float %67, %820
  %824 = fsub float %822, %823
  %825 = fmul float %67, %819
  %826 = fmul float %65, %821
  %827 = fsub float %825, %826
  %828 = fmul float %65, %820
  %829 = fmul float %66, %819
  %830 = fsub float %828, %829
  %831 = fmul float %824, 2.000000e+00
  %832 = fmul float %827, 2.000000e+00
  %833 = fmul float %830, 2.000000e+00
  %834 = fmul float %68, %831
  %835 = fmul float %68, %832
  %836 = fmul float %68, %833
  %837 = fsub float %819, %834
  %838 = fsub float %820, %835
  %839 = fsub float %821, %836
  %840 = fmul float %66, %833
  %841 = fmul float %67, %832
  %842 = fsub float %840, %841
  %843 = fmul float %67, %831
  %844 = fmul float %65, %833
  %845 = fsub float %843, %844
  %846 = fmul float %65, %832
  %847 = fmul float %66, %831
  %848 = fsub float %846, %847
  %849 = fadd float %837, %842
  %850 = fadd float %838, %845
  %851 = fadd float %839, %848
  %852 = fsub fast float -0.000000e+00, %65
  %853 = fsub fast float -0.000000e+00, %66
  %854 = fsub fast float -0.000000e+00, %67
  %855 = fmul fast float %769, %68
  %856 = fmul fast float %770, %68
  %857 = fmul fast float %771, %68
  %858 = fmul fast float %772, %852
  %859 = fmul fast float %772, %853
  %860 = fmul fast float %772, %854
  %861 = fadd fast float %858, %855
  %862 = fadd fast float %859, %856
  %863 = fmul fast float %771, %853
  %864 = fmul fast float %770, %854
  %865 = fsub fast float %863, %864
  %866 = fmul fast float %769, %854
  %867 = fmul fast float %771, %852
  %868 = fsub fast float %866, %867
  %869 = fmul fast float %770, %852
  %870 = fmul fast float %769, %853
  %871 = fsub fast float %869, %870
  %872 = fadd fast float %861, %865
  %873 = fadd fast float %862, %868
  %874 = fadd fast float %871, %857
  %875 = fadd fast float %874, %860
  %876 = fmul fast float %772, %68
  %877 = call float @dx.op.dot3.f32(i32 55, float %852, float %853, float %854, float %769, float %770, float %771)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = fsub fast float %876, %877
  %879 = fsub float %849, %47
  %880 = fsub float %850, %48
  %881 = fsub float %851, %49
  %882 = fdiv float 1.000000e+00, %50
  %883 = fmul float %882, %879
  %884 = fmul float %882, %880
  %885 = fmul float %882, %881
  %886 = fmul float %883, 5.000000e-01
  %887 = fmul float %884, 5.000000e-01
  %888 = fmul float %885, 5.000000e-01
  %889 = fadd float %886, 5.000000e-01
  %890 = fadd float %887, 5.000000e-01
  %891 = fadd float %888, 5.000000e-01
  %892 = call float @dx.op.unary.f32(i32 7, float %889), !dx.precise !27  ; Saturate(value)
  %893 = call float @dx.op.unary.f32(i32 7, float %890), !dx.precise !27  ; Saturate(value)
  %894 = call float @dx.op.unary.f32(i32 7, float %891), !dx.precise !27  ; Saturate(value)
  %895 = fmul float %892, 2.097151e+06
  %896 = fmul float %893, 2.097151e+06
  %897 = fmul float %894, 2.097151e+06
  %898 = fptoui float %895 to i32
  %899 = fptoui float %896 to i32
  %900 = fptoui float %897 to i32
  %901 = shl i32 %899, 21
  %902 = or i32 %901, %898
  %903 = lshr i32 %899, 11
  %904 = shl i32 %900, 10
  %905 = or i32 %904, %903
  %906 = call float @dx.op.unary.f32(i32 6, float %875)  ; FAbs(value)
  %907 = call float @dx.op.unary.f32(i32 6, float %872)  ; FAbs(value)
  %908 = fcmp fast oge float %906, %907
  %909 = call float @dx.op.unary.f32(i32 6, float %873)  ; FAbs(value)
  %910 = fcmp fast oge float %906, %909
  %911 = and i1 %908, %910
  br i1 %911, label %912, label %915, !dx.controlflow.hints !46

; <label>:912                                     ; preds = %815
  %913 = fcmp fast olt float %875, 0.000000e+00
  %914 = select i1 %913, float 5.000000e+00, float 4.000000e+00
  br label %923

; <label>:915                                     ; preds = %815
  %916 = fcmp fast ult float %909, %907
  br i1 %916, label %920, label %917, !dx.controlflow.hints !47

; <label>:917                                     ; preds = %915
  %918 = fcmp fast olt float %873, 0.000000e+00
  %919 = select i1 %918, float 3.000000e+00, float 2.000000e+00
  br label %923

; <label>:920                                     ; preds = %915
  %921 = fcmp fast olt float %872, 0.000000e+00
  %922 = select i1 %921, float 1.000000e+00, float 0.000000e+00
  br label %923

; <label>:923                                     ; preds = %920, %917, %912
  %924 = phi float [ %914, %912 ], [ %919, %917 ], [ %922, %920 ]
  %925 = fmul fast float %924, 5.000000e-01
  %926 = fptoui float %925 to i32
  %927 = call float @dx.op.unary.f32(i32 6, float %878)  ; FAbs(value)
  %928 = call float @dx.op.binary.f32(i32 35, float %909, float %906)  ; FMax(a,b)
  %929 = call float @dx.op.binary.f32(i32 35, float %907, float %928)  ; FMax(a,b)
  %930 = fcmp fast ogt float %927, %929
  %931 = select i1 %930, i32 3, i32 %926
  %932 = icmp eq i32 %931, 0
  %933 = select i1 %932, float %873, float %872
  %934 = select i1 %932, float %875, float %873
  %935 = select i1 %932, float %878, float %875
  %936 = select i1 %932, float %872, float %878
  %937 = icmp eq i32 %931, 1
  %938 = select i1 %937, float %935, float %934
  %939 = select i1 %937, float %936, float %935
  %940 = select i1 %937, float %934, float %936
  %941 = icmp eq i32 %931, 2
  %942 = select i1 %941, float %940, float %939
  %943 = select i1 %941, float %939, float %940
  %944 = fcmp fast ogt float %943, 0.000000e+00
  %945 = select i1 %944, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %946 = fmul fast float %945, %933
  %947 = fmul fast float %945, %938
  %948 = fmul fast float %945, %942
  %949 = fadd fast float %946, 1.000000e+00
  %950 = fmul fast float %949, 5.000000e-01
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = fmul fast float %951, 1.023000e+03
  %953 = fptoui float %952 to i32
  %954 = fadd fast float %947, 1.000000e+00
  %955 = fmul fast float %954, 5.000000e-01
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = fmul fast float %956, 1.023000e+03
  %958 = fptoui float %957 to i32
  %959 = fadd fast float %948, 1.000000e+00
  %960 = fmul fast float %959, 5.000000e-01
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %962 = fmul fast float %961, 5.110000e+02
  %963 = fptoui float %962 to i32
  %964 = shl i32 %958, 10
  %965 = shl i32 %963, 20
  %966 = fcmp fast ogt float %217, 0.000000e+00
  %967 = select i1 %966, i32 0, i32 536870912
  %968 = shl i32 %931, 30
  %969 = or i32 %953, %967
  %970 = or i32 %969, %968
  %971 = or i32 %970, %964
  %972 = or i32 %971, %965
  %973 = select i1 %32, i32 %902, i32 0
  %974 = select i1 %32, i32 %905, i32 0
  %975 = shl i32 %94, 3
  %976 = add i32 %40, %975
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %976, i32 undef, i32 %973, i32 %974, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %977 = shl i32 %94, 2
  %978 = add i32 %37, %977
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %978, i32 undef, i32 %972, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %979 = bitcast float %849 to i32
  %980 = bitcast float %850 to i32
  %981 = bitcast float %851 to i32
  %982 = mul i32 %94, 12
  %983 = add i32 %38, %982
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %983, i32 undef, i32 %979, i32 %980, i32 %981, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %984

; <label>:984                                     ; preds = %923, %83
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
!19 = !{void ()* @cs_skinning_deform_factors_dismember_unified_unpacked_positions_main, !"cs_skinning_deform_factors_dismember_unified_unpacked_positions_main", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{i32 1}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !{!33, !35}
!33 = distinct !{!33, !34, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentWeight"}
!34 = distinct !{!34, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z"}
!35 = distinct !{!35, !34, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentIdx"}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentWeight"}
!43 = distinct !{!43, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z"}
!44 = distinct !{!44, !43, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentIdx"}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}

