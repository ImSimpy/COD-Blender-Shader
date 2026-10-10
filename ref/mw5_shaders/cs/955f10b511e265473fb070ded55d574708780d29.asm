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
; shader hash: c7184717fc3c672ebae3776093cb8ed1
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

define void @cs_skinning_deform_factors_dismember_unified_main() {
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
  br i1 %91, label %92, label %978, !dx.controlflow.hints !23

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
  br i1 %75, label %273, label %494

; <label>:273                                     ; preds = %209
  %274 = and i32 %21, 65535
  br label %275

; <label>:275                                     ; preds = %275, %273
  %276 = phi float [ %340, %275 ], [ 0.000000e+00, %273 ]
  %277 = phi float [ %341, %275 ], [ 0.000000e+00, %273 ]
  %278 = phi float [ %342, %275 ], [ 0.000000e+00, %273 ]
  %279 = phi float [ %343, %275 ], [ 0.000000e+00, %273 ]
  %280 = phi float [ %332, %275 ], [ 0.000000e+00, %273 ]
  %281 = phi float [ %333, %275 ], [ 0.000000e+00, %273 ]
  %282 = phi float [ %334, %275 ], [ 0.000000e+00, %273 ]
  %283 = phi float [ %335, %275 ], [ 0.000000e+00, %273 ]
  %284 = phi float [ %313, %275 ], [ 0.000000e+00, %273 ]
  %285 = phi float [ %489, %275 ], [ 0.000000e+00, %273 ]
  %286 = phi i32 [ %490, %275 ], [ 0, %273 ]
  %287 = phi float [ %461, %275 ], [ 0.000000e+00, %273 ]
  %288 = phi float [ %462, %275 ], [ 0.000000e+00, %273 ]
  %289 = phi float [ %463, %275 ], [ 0.000000e+00, %273 ]
  %290 = phi float [ %467, %275 ], [ 0.000000e+00, %273 ]
  %291 = phi float [ %468, %275 ], [ 0.000000e+00, %273 ]
  %292 = phi float [ %469, %275 ], [ 0.000000e+00, %273 ]
  %293 = phi i32 [ %491, %275 ], [ 1, %273 ]
  %294 = mul i32 %293, %83
  %295 = add i32 %94, %294
  %296 = shl i32 %295, 2
  %297 = lshr i32 %295, 8
  %298 = and i32 %297, 4194303
  %299 = add i32 %298, %31
  %300 = shl i32 %299, 2
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = shl i32 %302, 10
  %304 = and i32 %296, 1020
  %305 = or i32 %303, %304
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = lshr i32 %307, 16
  %310 = uitofp i32 %309 to float
  %311 = fmul float %310, 0x3EF0000000000000
  %312 = add i32 %308, %33
  %313 = fadd float %284, %311
  %314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %312, i32 0)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = extractvalue %dx.types.ResRet.f32 %314, 1
  %317 = extractvalue %dx.types.ResRet.f32 %314, 2
  %318 = extractvalue %dx.types.ResRet.f32 %314, 3
  %319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %312, i32 16)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = extractvalue %dx.types.ResRet.f32 %319, 3
  %324 = call float @dx.op.dot4.f32(i32 56, float %110, float %111, float %112, float %113, float %315, float %316, float %317, float %318), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %325 = fcmp olt float %324, 0.000000e+00
  %326 = fsub float -0.000000e+00, %311
  %327 = select i1 %325, float %326, float %311
  %328 = fmul float %315, %327
  %329 = fmul float %316, %327
  %330 = fmul float %317, %327
  %331 = fmul float %318, %327
  %332 = fadd float %280, %328
  %333 = fadd float %281, %329
  %334 = fadd float %282, %330
  %335 = fadd float %283, %331
  %336 = fmul float %320, %327
  %337 = fmul float %321, %327
  %338 = fmul float %322, %327
  %339 = fmul float %323, %327
  %340 = fadd float %276, %336
  %341 = fadd float %277, %337
  %342 = fadd float %278, %338
  %343 = fadd float %279, %339
  %344 = fsub fast float -0.000000e+00, %315
  %345 = fsub fast float -0.000000e+00, %316
  %346 = fsub fast float -0.000000e+00, %317
  %347 = fsub fast float -0.000000e+00, %318
  %348 = fsub fast float -0.000000e+00, %320
  %349 = fsub fast float -0.000000e+00, %321
  %350 = fsub fast float -0.000000e+00, %322
  %351 = fsub fast float -0.000000e+00, %323
  %352 = select i1 %325, float %348, float %320
  %353 = select i1 %325, float %349, float %321
  %354 = select i1 %325, float %350, float %322
  %355 = select i1 %325, float %351, float %323
  %356 = select i1 %325, float %344, float %315
  %357 = select i1 %325, float %345, float %316
  %358 = select i1 %325, float %346, float %317
  %359 = select i1 %325, float %347, float %318
  %360 = call float @dx.op.dot4.f32(i32 56, float %356, float %357, float %358, float %359, float %356, float %357, float %358, float %359)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %361 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %362 = fdiv fast float 1.000000e+00, %361
  %363 = fmul fast float %362, %359
  %364 = fmul fast float %362, %356
  %365 = fmul fast float %362, %357
  %366 = fmul fast float %362, %358
  %367 = fmul fast float %362, %355
  %368 = fmul fast float %362, %352
  %369 = fmul fast float %362, %353
  %370 = fmul fast float %362, %354
  %371 = fmul fast float %365, %182
  %372 = fmul fast float %366, %181
  %373 = fsub fast float %371, %372
  %374 = fmul fast float %366, %180
  %375 = fmul fast float %364, %182
  %376 = fsub fast float %374, %375
  %377 = fmul fast float %364, %181
  %378 = fmul fast float %365, %180
  %379 = fsub fast float %377, %378
  %380 = fmul fast float %363, %180
  %381 = fmul fast float %363, %181
  %382 = fmul fast float %363, %182
  %383 = fadd fast float %373, %380
  %384 = fadd fast float %376, %381
  %385 = fadd fast float %379, %382
  %386 = fmul fast float %368, %363
  %387 = fmul fast float %369, %363
  %388 = fmul fast float %370, %363
  %389 = fmul fast float %364, %367
  %390 = fmul fast float %365, %367
  %391 = fmul fast float %366, %367
  %392 = fmul fast float %365, %370
  %393 = fmul fast float %366, %369
  %394 = fmul fast float %366, %368
  %395 = fmul fast float %364, %370
  %396 = fmul fast float %364, %369
  %397 = fmul fast float %365, %368
  %398 = fsub fast float %386, %389
  %399 = fsub fast float %398, %393
  %400 = fadd fast float %399, %392
  %401 = fsub fast float %387, %390
  %402 = fsub fast float %401, %395
  %403 = fadd fast float %402, %394
  %404 = fsub fast float %388, %391
  %405 = fsub fast float %404, %397
  %406 = fadd fast float %405, %396
  %407 = fmul fast float %400, 2.000000e+00
  %408 = fmul fast float %403, 2.000000e+00
  %409 = fmul fast float %406, 2.000000e+00
  %410 = fmul fast float %364, 2.000000e+00
  %411 = fmul fast float %365, 2.000000e+00
  %412 = fmul fast float %366, 2.000000e+00
  %413 = fmul fast float %385, %411
  %414 = fmul fast float %384, %412
  %415 = fmul fast float %383, %412
  %416 = fmul fast float %385, %410
  %417 = fmul fast float %384, %410
  %418 = fmul fast float %383, %411
  %419 = fmul fast float %257, -2.000000e+00
  %420 = fadd fast float %268, %419
  %421 = fsub fast float %420, %267
  %422 = fadd fast float %421, %407
  %423 = fsub fast float %422, %414
  %424 = fadd fast float %423, %413
  %425 = fmul fast float %260, -2.000000e+00
  %426 = fadd fast float %270, %425
  %427 = fsub fast float %426, %269
  %428 = fadd fast float %427, %408
  %429 = fsub fast float %428, %416
  %430 = fadd fast float %429, %415
  %431 = fmul fast float %263, -2.000000e+00
  %432 = fadd fast float %272, %431
  %433 = fsub fast float %432, %271
  %434 = fadd fast float %433, %409
  %435 = fsub fast float %434, %418
  %436 = fadd fast float %435, %417
  %437 = sub i32 %93, %84
  %438 = add nsw i32 %293, -1
  %439 = mul i32 %438, %83
  %440 = add i32 %437, %74
  %441 = add i32 %440, %439
  %442 = shl i32 %441, 2
  %443 = lshr i32 %441, 8
  %444 = and i32 %443, 4194303
  %445 = add i32 %444, %38
  %446 = shl i32 %445, 2
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = shl i32 %448, 10
  %450 = and i32 %442, 1020
  %451 = or i32 %449, %450
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = fmul fast float %424, %455
  %459 = fmul fast float %430, %455
  %460 = fmul fast float %436, %455
  %461 = fadd fast float %458, %287
  %462 = fadd fast float %459, %288
  %463 = fadd fast float %460, %289
  %464 = fmul fast float %457, %424
  %465 = fmul fast float %457, %430
  %466 = fmul fast float %457, %436
  %467 = fadd fast float %464, %290
  %468 = fadd fast float %465, %291
  %469 = fadd fast float %466, %292
  %470 = and i32 %307, 65532
  %471 = add i32 %470, %90
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 255
  %475 = lshr i32 %473, 8
  %476 = and i32 %475, 255
  %477 = lshr i32 %473, 16
  %478 = and i32 %477, 255
  %479 = lshr i32 %473, 24
  %480 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %474, i32* %480, align 4
  %481 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %476, i32* %481, align 4
  %482 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %478, i32* %482, align 4
  %483 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %479, i32* %483, align 4
  %484 = and i32 %307, 3
  %485 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %484
  %486 = load i32, i32* %485, align 4, !tbaa !28, !noalias !32
  %487 = icmp ne i32 %486, 255
  %488 = fadd float %285, %311
  %489 = select i1 %487, float %488, float %285
  %490 = select i1 %487, i32 %486, i32 %286
  %491 = add nuw nsw i32 %293, 1
  %492 = icmp eq i32 %491, %274
  br i1 %492, label %493, label %275, !llvm.loop !36

; <label>:493                                     ; preds = %275
  br label %494

; <label>:494                                     ; preds = %493, %209
  %495 = phi float [ 0.000000e+00, %209 ], [ %340, %493 ]
  %496 = phi float [ 0.000000e+00, %209 ], [ %341, %493 ]
  %497 = phi float [ 0.000000e+00, %209 ], [ %342, %493 ]
  %498 = phi float [ 0.000000e+00, %209 ], [ %343, %493 ]
  %499 = phi float [ 0.000000e+00, %209 ], [ %332, %493 ]
  %500 = phi float [ 0.000000e+00, %209 ], [ %333, %493 ]
  %501 = phi float [ 0.000000e+00, %209 ], [ %334, %493 ]
  %502 = phi float [ 0.000000e+00, %209 ], [ %335, %493 ]
  %503 = phi float [ 0.000000e+00, %209 ], [ %313, %493 ]
  %504 = phi float [ 0.000000e+00, %209 ], [ %489, %493 ]
  %505 = phi i32 [ 0, %209 ], [ %490, %493 ]
  %506 = phi float [ 0.000000e+00, %209 ], [ %461, %493 ]
  %507 = phi float [ 0.000000e+00, %209 ], [ %462, %493 ]
  %508 = phi float [ 0.000000e+00, %209 ], [ %463, %493 ]
  %509 = phi float [ 0.000000e+00, %209 ], [ %467, %493 ]
  %510 = phi float [ 0.000000e+00, %209 ], [ %468, %493 ]
  %511 = phi float [ 0.000000e+00, %209 ], [ %469, %493 ]
  %512 = fsub float 1.000000e+00, %503
  %513 = fmul float %110, %512
  %514 = fmul float %111, %512
  %515 = fmul float %112, %512
  %516 = fmul float %113, %512
  %517 = fadd float %499, %513
  %518 = fadd float %500, %514
  %519 = fadd float %501, %515
  %520 = fadd float %502, %516
  %521 = fmul float %115, %512
  %522 = fmul float %116, %512
  %523 = fmul float %117, %512
  %524 = fmul float %118, %512
  %525 = fadd float %495, %521
  %526 = fadd float %496, %522
  %527 = fadd float %497, %523
  %528 = fadd float %498, %524
  %529 = call float @dx.op.dot4.f32(i32 56, float %517, float %518, float %519, float %520, float %517, float %518, float %519, float %520), !dx.precise !27  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %530 = call float @dx.op.unary.f32(i32 24, float %529), !dx.precise !27  ; Sqrt(value)
  %531 = fdiv float 1.000000e+00, %530
  %532 = fmul float %520, %531
  %533 = fmul float %517, %531
  %534 = fmul float %518, %531
  %535 = fmul float %519, %531
  %536 = fmul float %528, %531
  %537 = fmul float %525, %531
  %538 = fmul float %526, %531
  %539 = fmul float %527, %531
  %540 = fmul float %182, %534
  %541 = fmul float %181, %535
  %542 = fsub float %540, %541
  %543 = fmul float %180, %535
  %544 = fmul float %182, %533
  %545 = fsub float %543, %544
  %546 = fmul float %181, %533
  %547 = fmul float %180, %534
  %548 = fsub float %546, %547
  %549 = fmul float %180, %532
  %550 = fmul float %181, %532
  %551 = fmul float %182, %532
  %552 = fadd float %549, %542
  %553 = fadd float %550, %545
  %554 = fadd float %551, %548
  %555 = fmul float %537, %532
  %556 = fmul float %538, %532
  %557 = fmul float %539, %532
  %558 = fmul float %533, %536
  %559 = fmul float %534, %536
  %560 = fmul float %535, %536
  %561 = fsub float %555, %558
  %562 = fsub float %556, %559
  %563 = fsub float %557, %560
  %564 = fmul float %534, %539
  %565 = fmul float %535, %538
  %566 = fsub float %564, %565
  %567 = fmul float %535, %537
  %568 = fmul float %533, %539
  %569 = fsub float %567, %568
  %570 = fmul float %533, %538
  %571 = fmul float %534, %537
  %572 = fsub float %570, %571
  %573 = fadd float %561, %566
  %574 = fadd float %562, %569
  %575 = fadd float %563, %572
  %576 = fmul float %573, 2.000000e+00
  %577 = fmul float %574, 2.000000e+00
  %578 = fmul float %575, 2.000000e+00
  %579 = fadd float %180, %576
  %580 = fadd float %181, %577
  %581 = fadd float %182, %578
  %582 = fmul float %533, 2.000000e+00
  %583 = fmul float %534, 2.000000e+00
  %584 = fmul float %535, 2.000000e+00
  %585 = fmul float %583, %554
  %586 = fmul float %584, %553
  %587 = fsub float %585, %586
  %588 = fmul float %584, %552
  %589 = fmul float %582, %554
  %590 = fsub float %588, %589
  %591 = fmul float %582, %553
  %592 = fmul float %583, %552
  %593 = fsub float %591, %592
  %594 = fadd float %579, %587
  %595 = fadd float %580, %590
  %596 = fadd float %581, %593
  %597 = fmul fast float %532, %210
  %598 = fmul fast float %532, %211
  %599 = fmul fast float %532, %212
  %600 = fmul fast float %533, %213
  %601 = fmul fast float %534, %213
  %602 = fmul fast float %535, %213
  %603 = fadd fast float %597, %600
  %604 = fadd fast float %598, %601
  %605 = fadd fast float %599, %602
  %606 = fmul fast float %534, %212
  %607 = fmul fast float %535, %211
  %608 = fsub fast float %606, %607
  %609 = fmul fast float %535, %210
  %610 = fmul fast float %533, %212
  %611 = fsub fast float %609, %610
  %612 = fmul fast float %533, %211
  %613 = fmul fast float %534, %210
  %614 = fsub fast float %612, %613
  %615 = fadd fast float %603, %608
  %616 = fadd fast float %604, %611
  %617 = fadd fast float %605, %614
  %618 = fmul fast float %532, %213
  %619 = call float @dx.op.dot3.f32(i32 55, float %533, float %534, float %535, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = fsub fast float %618, %619
  %621 = fmul fast float %616, %616
  %622 = fmul fast float %621, 2.000000e+00
  %623 = fmul fast float %617, %617
  %624 = fmul fast float %623, 2.000000e+00
  %625 = fmul fast float %615, 2.000000e+00
  %626 = fmul fast float %625, %616
  %627 = fmul fast float %620, 2.000000e+00
  %628 = fmul fast float %627, %617
  %629 = fsub fast float %626, %628
  %630 = fmul fast float %616, %615
  %631 = fmul fast float %617, %620
  %632 = fmul fast float %615, %615
  %633 = fmul fast float %632, 2.000000e+00
  %634 = fsub fast float 1.000000e+00, %633
  %635 = fsub fast float %634, %624
  %636 = fmul fast float %625, %617
  %637 = fmul fast float %627, %616
  %638 = fsub fast float %636, %637
  %639 = fmul fast float %617, %616
  %640 = fmul fast float %615, %620
  %641 = fadd fast float %639, %640
  %642 = fmul fast float %629, %216
  %643 = fmul fast float %635, %216
  %644 = fmul fast float %216, 2.000000e+00
  %645 = fmul fast float %644, %641
  %646 = call float @dx.op.dot3.f32(i32 55, float %506, float %507, float %508, float %506, float %507, float %508)  ; Dot3(ax,ay,az,bx,by,bz)
  %647 = call float @dx.op.unary.f32(i32 25, float %646)  ; Rsqrt(value)
  %648 = fmul fast float %647, 0x3FECCCCCC0000000
  %649 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %648)  ; FMin(a,b)
  %650 = fmul fast float %649, %506
  %651 = fmul fast float %649, %507
  %652 = fmul fast float %649, %508
  %653 = fadd fast float %650, 1.000000e+00
  %654 = fsub fast float %653, %622
  %655 = fsub fast float %654, %624
  %656 = fadd fast float %630, %631
  %657 = fmul fast float %656, 2.000000e+00
  %658 = fadd fast float %657, %651
  %659 = fadd fast float %638, %652
  %660 = call float @dx.op.dot3.f32(i32 55, float %509, float %510, float %511, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %661 = call float @dx.op.unary.f32(i32 25, float %660)  ; Rsqrt(value)
  %662 = fmul fast float %661, 0x3FECCCCCC0000000
  %663 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %662)  ; FMin(a,b)
  %664 = fmul fast float %663, %509
  %665 = fmul fast float %663, %510
  %666 = fmul fast float %663, %511
  %667 = fadd fast float %642, %664
  %668 = fadd fast float %643, %665
  %669 = fadd fast float %645, %666
  %670 = fmul fast float %668, %659
  %671 = fmul fast float %669, %658
  %672 = fsub fast float %670, %671
  %673 = fmul fast float %669, %655
  %674 = fmul fast float %667, %659
  %675 = fsub fast float %673, %674
  %676 = fmul fast float %667, %658
  %677 = fmul fast float %668, %655
  %678 = fsub fast float %676, %677
  %679 = call float @dx.op.dot3.f32(i32 55, float %672, float %675, float %678, float %672, float %675, float %678)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = call float @dx.op.unary.f32(i32 25, float %679)  ; Rsqrt(value)
  %681 = fmul fast float %672, %680
  %682 = fmul fast float %675, %680
  %683 = fmul fast float %678, %680
  %684 = call float @dx.op.dot3.f32(i32 55, float %655, float %658, float %659, float %681, float %682, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = fsub fast float -0.000000e+00, %684
  %686 = fmul fast float %681, %685
  %687 = fmul fast float %682, %685
  %688 = fmul fast float %683, %685
  %689 = fadd fast float %686, %655
  %690 = fadd fast float %687, %658
  %691 = fadd fast float %688, %659
  %692 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %689, %693
  %695 = fmul fast float %690, %693
  %696 = fmul fast float %691, %693
  %697 = fmul fast float %695, %683
  %698 = fmul fast float %696, %682
  %699 = fsub fast float %697, %698
  %700 = fmul fast float %696, %681
  %701 = fmul fast float %694, %683
  %702 = fsub fast float %700, %701
  %703 = fmul fast float %694, %682
  %704 = fmul fast float %695, %681
  %705 = fsub fast float %703, %704
  %706 = fmul fast float %699, %216
  %707 = fmul fast float %702, %216
  %708 = fmul fast float %705, %216
  %709 = fadd fast float %694, %683
  %710 = fadd fast float %709, %707
  %711 = fcmp fast ogt float %710, 0.000000e+00
  br i1 %711, label %712, label %723, !dx.controlflow.hints !38

; <label>:712                                     ; preds = %494
  %713 = fadd fast float %710, 1.000000e+00
  %714 = fsub fast float %708, %682
  %715 = fsub fast float %681, %696
  %716 = fsub fast float %695, %706
  %717 = call float @dx.op.unary.f32(i32 25, float %713)  ; Rsqrt(value)
  %718 = fmul fast float %717, 5.000000e-01
  %719 = fmul fast float %718, %714
  %720 = fmul fast float %718, %715
  %721 = fmul fast float %718, %716
  %722 = fmul fast float %718, %713
  br label %767

; <label>:723                                     ; preds = %494
  %724 = fcmp fast ogt float %694, %707
  %725 = fcmp fast ogt float %694, %683
  %726 = and i1 %725, %724
  br i1 %726, label %727, label %740, !dx.controlflow.hints !39

; <label>:727                                     ; preds = %723
  %728 = fsub fast float 1.000000e+00, %683
  %729 = fadd fast float %728, %694
  %730 = fsub fast float %729, %707
  %731 = fsub fast float %708, %682
  %732 = fadd fast float %706, %695
  %733 = fadd fast float %696, %681
  %734 = call float @dx.op.unary.f32(i32 25, float %730)  ; Rsqrt(value)
  %735 = fmul fast float %734, 5.000000e-01
  %736 = fmul fast float %735, %730
  %737 = fmul fast float %735, %732
  %738 = fmul fast float %735, %733
  %739 = fmul fast float %735, %731
  br label %767

; <label>:740                                     ; preds = %723
  %741 = fcmp fast ogt float %707, %683
  %742 = fadd fast float %708, %682
  br i1 %741, label %743, label %755, !dx.controlflow.hints !40

; <label>:743                                     ; preds = %740
  %744 = fsub fast float 1.000000e+00, %683
  %745 = fsub fast float %744, %694
  %746 = fadd fast float %745, %707
  %747 = fsub fast float %681, %696
  %748 = fadd fast float %706, %695
  %749 = call float @dx.op.unary.f32(i32 25, float %746)  ; Rsqrt(value)
  %750 = fmul fast float %749, 5.000000e-01
  %751 = fmul fast float %750, %748
  %752 = fmul fast float %750, %746
  %753 = fmul fast float %750, %742
  %754 = fmul fast float %750, %747
  br label %767

; <label>:755                                     ; preds = %740
  %756 = fadd fast float %683, 1.000000e+00
  %757 = fsub fast float %756, %694
  %758 = fsub fast float %757, %707
  %759 = fsub fast float %695, %706
  %760 = fadd fast float %696, %681
  %761 = call float @dx.op.unary.f32(i32 25, float %758)  ; Rsqrt(value)
  %762 = fmul fast float %761, 5.000000e-01
  %763 = fmul fast float %762, %760
  %764 = fmul fast float %762, %742
  %765 = fmul fast float %762, %758
  %766 = fmul fast float %762, %759
  br label %767

; <label>:767                                     ; preds = %755, %743, %727, %712
  %768 = phi float [ %719, %712 ], [ %736, %727 ], [ %751, %743 ], [ %763, %755 ]
  %769 = phi float [ %720, %712 ], [ %737, %727 ], [ %752, %743 ], [ %764, %755 ]
  %770 = phi float [ %721, %712 ], [ %738, %727 ], [ %753, %743 ], [ %765, %755 ]
  %771 = phi float [ %722, %712 ], [ %739, %727 ], [ %754, %743 ], [ %766, %755 ]
  %772 = and i32 %106, 65532
  %773 = add i32 %772, %90
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 255
  %777 = lshr i32 %775, 8
  %778 = and i32 %777, 255
  %779 = lshr i32 %775, 16
  %780 = and i32 %779, 255
  %781 = lshr i32 %775, 24
  %782 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %776, i32* %782, align 4
  %783 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %778, i32* %783, align 4
  %784 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %780, i32* %784, align 4
  %785 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %781, i32* %785, align 4
  %786 = and i32 %106, 3
  %787 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %786
  %788 = load i32, i32* %787, align 4, !tbaa !28, !noalias !41
  %789 = icmp ne i32 %788, 255
  %790 = fadd float %504, %512
  %791 = select i1 %789, float %790, float %504
  %792 = fcmp ogt float %791, 0.000000e+00
  br i1 %792, label %793, label %814, !dx.controlflow.hints !45

; <label>:793                                     ; preds = %767
  %794 = select i1 %789, i32 %788, i32 %505
  %795 = mul i32 %794, 12
  %796 = add i32 %795, %89
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = extractvalue %dx.types.ResRet.i32 %797, 1
  %800 = extractvalue %dx.types.ResRet.i32 %797, 2
  %801 = bitcast i32 %798 to float
  %802 = bitcast i32 %799 to float
  %803 = bitcast i32 %800 to float
  %804 = fsub float %801, %594
  %805 = fsub float %802, %595
  %806 = fsub float %803, %596
  %807 = call float @dx.op.unary.f32(i32 7, float %791), !dx.precise !27  ; Saturate(value)
  %808 = fmul float %807, %804
  %809 = fmul float %807, %805
  %810 = fmul float %807, %806
  %811 = fadd float %594, %808
  %812 = fadd float %595, %809
  %813 = fadd float %596, %810
  br label %814

; <label>:814                                     ; preds = %793, %767
  %815 = phi float [ %811, %793 ], [ %594, %767 ]
  %816 = phi float [ %812, %793 ], [ %595, %767 ]
  %817 = phi float [ %813, %793 ], [ %596, %767 ]
  %818 = fsub float %815, %55
  %819 = fsub float %816, %56
  %820 = fsub float %817, %57
  %821 = fmul float %65, %820
  %822 = fmul float %66, %819
  %823 = fsub float %821, %822
  %824 = fmul float %66, %818
  %825 = fmul float %64, %820
  %826 = fsub float %824, %825
  %827 = fmul float %64, %819
  %828 = fmul float %65, %818
  %829 = fsub float %827, %828
  %830 = fmul float %823, 2.000000e+00
  %831 = fmul float %826, 2.000000e+00
  %832 = fmul float %829, 2.000000e+00
  %833 = fmul float %67, %830
  %834 = fmul float %67, %831
  %835 = fmul float %67, %832
  %836 = fsub float %818, %833
  %837 = fsub float %819, %834
  %838 = fsub float %820, %835
  %839 = fmul float %65, %832
  %840 = fmul float %66, %831
  %841 = fsub float %839, %840
  %842 = fmul float %66, %830
  %843 = fmul float %64, %832
  %844 = fsub float %842, %843
  %845 = fmul float %64, %831
  %846 = fmul float %65, %830
  %847 = fsub float %845, %846
  %848 = fadd float %836, %841
  %849 = fadd float %837, %844
  %850 = fadd float %838, %847
  %851 = fsub fast float -0.000000e+00, %64
  %852 = fsub fast float -0.000000e+00, %65
  %853 = fsub fast float -0.000000e+00, %66
  %854 = fmul fast float %768, %67
  %855 = fmul fast float %769, %67
  %856 = fmul fast float %770, %67
  %857 = fmul fast float %771, %851
  %858 = fmul fast float %771, %852
  %859 = fmul fast float %771, %853
  %860 = fadd fast float %857, %854
  %861 = fadd fast float %858, %855
  %862 = fmul fast float %770, %852
  %863 = fmul fast float %769, %853
  %864 = fsub fast float %862, %863
  %865 = fmul fast float %768, %853
  %866 = fmul fast float %770, %851
  %867 = fsub fast float %865, %866
  %868 = fmul fast float %769, %851
  %869 = fmul fast float %768, %852
  %870 = fsub fast float %868, %869
  %871 = fadd fast float %860, %864
  %872 = fadd fast float %861, %867
  %873 = fadd fast float %870, %856
  %874 = fadd fast float %873, %859
  %875 = fmul fast float %771, %67
  %876 = call float @dx.op.dot3.f32(i32 55, float %851, float %852, float %853, float %768, float %769, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %877 = fsub fast float %875, %876
  %878 = fsub float %848, %46
  %879 = fsub float %849, %47
  %880 = fsub float %850, %48
  %881 = fdiv float 1.000000e+00, %49
  %882 = fmul float %881, %878
  %883 = fmul float %881, %879
  %884 = fmul float %881, %880
  %885 = fmul float %882, 5.000000e-01
  %886 = fmul float %883, 5.000000e-01
  %887 = fmul float %884, 5.000000e-01
  %888 = fadd float %885, 5.000000e-01
  %889 = fadd float %886, 5.000000e-01
  %890 = fadd float %887, 5.000000e-01
  %891 = call float @dx.op.unary.f32(i32 7, float %888), !dx.precise !27  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %889), !dx.precise !27  ; Saturate(value)
  %893 = call float @dx.op.unary.f32(i32 7, float %890), !dx.precise !27  ; Saturate(value)
  %894 = fmul float %891, 2.097151e+06
  %895 = fmul float %892, 2.097151e+06
  %896 = fmul float %893, 2.097151e+06
  %897 = fptoui float %894 to i32
  %898 = fptoui float %895 to i32
  %899 = fptoui float %896 to i32
  %900 = shl i32 %898, 21
  %901 = or i32 %900, %897
  %902 = lshr i32 %898, 11
  %903 = shl i32 %899, 10
  %904 = or i32 %903, %902
  %905 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %906 = call float @dx.op.unary.f32(i32 6, float %871)  ; FAbs(value)
  %907 = fcmp fast oge float %905, %906
  %908 = call float @dx.op.unary.f32(i32 6, float %872)  ; FAbs(value)
  %909 = fcmp fast oge float %905, %908
  %910 = and i1 %907, %909
  br i1 %910, label %911, label %914, !dx.controlflow.hints !46

; <label>:911                                     ; preds = %814
  %912 = fcmp fast olt float %874, 0.000000e+00
  %913 = select i1 %912, float 5.000000e+00, float 4.000000e+00
  br label %922

; <label>:914                                     ; preds = %814
  %915 = fcmp fast ult float %908, %906
  br i1 %915, label %919, label %916, !dx.controlflow.hints !47

; <label>:916                                     ; preds = %914
  %917 = fcmp fast olt float %872, 0.000000e+00
  %918 = select i1 %917, float 3.000000e+00, float 2.000000e+00
  br label %922

; <label>:919                                     ; preds = %914
  %920 = fcmp fast olt float %871, 0.000000e+00
  %921 = select i1 %920, float 1.000000e+00, float 0.000000e+00
  br label %922

; <label>:922                                     ; preds = %919, %916, %911
  %923 = phi float [ %913, %911 ], [ %918, %916 ], [ %921, %919 ]
  %924 = fmul fast float %923, 5.000000e-01
  %925 = fptoui float %924 to i32
  %926 = call float @dx.op.unary.f32(i32 6, float %877)  ; FAbs(value)
  %927 = call float @dx.op.binary.f32(i32 35, float %908, float %905)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 35, float %906, float %927)  ; FMax(a,b)
  %929 = fcmp fast ogt float %926, %928
  %930 = select i1 %929, i32 3, i32 %925
  %931 = icmp eq i32 %930, 0
  %932 = select i1 %931, float %872, float %871
  %933 = select i1 %931, float %874, float %872
  %934 = select i1 %931, float %877, float %874
  %935 = select i1 %931, float %871, float %877
  %936 = icmp eq i32 %930, 1
  %937 = select i1 %936, float %934, float %933
  %938 = select i1 %936, float %935, float %934
  %939 = select i1 %936, float %933, float %935
  %940 = icmp eq i32 %930, 2
  %941 = select i1 %940, float %939, float %938
  %942 = select i1 %940, float %938, float %939
  %943 = fcmp fast ogt float %942, 0.000000e+00
  %944 = select i1 %943, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %945 = fmul fast float %944, %932
  %946 = fmul fast float %944, %937
  %947 = fmul fast float %944, %941
  %948 = fadd fast float %945, 1.000000e+00
  %949 = fmul fast float %948, 5.000000e-01
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = fmul fast float %950, 1.023000e+03
  %952 = fptoui float %951 to i32
  %953 = fadd fast float %946, 1.000000e+00
  %954 = fmul fast float %953, 5.000000e-01
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %956 = fmul fast float %955, 1.023000e+03
  %957 = fptoui float %956 to i32
  %958 = fadd fast float %947, 1.000000e+00
  %959 = fmul fast float %958, 5.000000e-01
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = fmul fast float %960, 5.110000e+02
  %962 = fptoui float %961 to i32
  %963 = shl i32 %957, 10
  %964 = shl i32 %962, 20
  %965 = fcmp fast ogt float %216, 0.000000e+00
  %966 = select i1 %965, i32 0, i32 536870912
  %967 = shl i32 %930, 30
  %968 = or i32 %952, %966
  %969 = or i32 %968, %967
  %970 = or i32 %969, %963
  %971 = or i32 %970, %964
  %972 = select i1 %32, i32 %901, i32 0
  %973 = select i1 %32, i32 %904, i32 0
  %974 = shl i32 %93, 3
  %975 = add i32 %39, %974
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %975, i32 undef, i32 %972, i32 %973, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %976 = shl i32 %93, 2
  %977 = add i32 %37, %976
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %977, i32 undef, i32 %971, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %978

; <label>:978                                     ; preds = %922, %82
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
!19 = !{void ()* @cs_skinning_deform_factors_dismember_unified_main, !"cs_skinning_deform_factors_dismember_unified_main", null, !4, !20}
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

