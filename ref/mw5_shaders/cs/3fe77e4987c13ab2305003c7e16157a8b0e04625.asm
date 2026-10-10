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
; shader hash: be84db16b83d35a206502a76c5953e2f
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
;                                   texture    byte         r/o      T4             t1     1
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

define void @cs_skinning_deform_factors_unified_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 0
  %12 = add i32 %11, %8
  %13 = shl i32 %12, 3
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %13, i32 undef)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = extractvalue %dx.types.ResRet.i32 %14, 1
  %17 = and i32 %15, 65535
  %18 = mul nuw nsw i32 %17, 144
  %19 = lshr i32 %15, 16
  %20 = and i32 %16, 65535
  %21 = lshr i32 %16, 16
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = extractvalue %dx.types.ResRet.i32 %22, 1
  %25 = extractvalue %dx.types.ResRet.i32 %22, 2
  %26 = extractvalue %dx.types.ResRet.i32 %22, 3
  %27 = icmp ne i32 %23, -1
  %28 = select i1 %27, i32 %23, i32 0
  %29 = add nuw nsw i32 %18, 16
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = extractvalue %dx.types.ResRet.i32 %30, 1
  %33 = extractvalue %dx.types.ResRet.i32 %30, 3
  %34 = and i32 %31, 2147483647
  %35 = add nuw nsw i32 %18, 32
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = extractvalue %dx.types.ResRet.i32 %36, 2
  %40 = extractvalue %dx.types.ResRet.i32 %36, 3
  %41 = bitcast i32 %37 to float
  %42 = bitcast i32 %38 to float
  %43 = bitcast i32 %39 to float
  %44 = bitcast i32 %40 to float
  %45 = add nuw nsw i32 %18, 48
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = extractvalue %dx.types.ResRet.i32 %46, 1
  %49 = extractvalue %dx.types.ResRet.i32 %46, 2
  %50 = bitcast i32 %47 to float
  %51 = bitcast i32 %48 to float
  %52 = bitcast i32 %49 to float
  %53 = add nuw nsw i32 %18, 64
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = extractvalue %dx.types.ResRet.i32 %54, 1
  %57 = extractvalue %dx.types.ResRet.i32 %54, 2
  %58 = extractvalue %dx.types.ResRet.i32 %54, 3
  %59 = bitcast i32 %55 to float
  %60 = bitcast i32 %56 to float
  %61 = bitcast i32 %57 to float
  %62 = bitcast i32 %58 to float
  %63 = add nuw nsw i32 %18, 80
  %64 = shl nuw nsw i32 %20, 3
  %65 = add nsw i32 %64, -8
  %66 = add nsw i32 %65, %63
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = extractvalue %dx.types.ResRet.i32 %67, 1
  %70 = icmp ugt i32 %20, 1
  br i1 %70, label %71, label %77, !dx.controlflow.hints !19

; <label>:71                                      ; preds = %0
  %72 = add nsw i32 %64, -16
  %73 = add nsw i32 %72, %63
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = sub i32 %68, %75
  br label %77

; <label>:77                                      ; preds = %71, %0
  %78 = phi i32 [ %76, %71 ], [ %68, %0 ]
  %79 = phi i32 [ %75, %71 ], [ 0, %0 ]
  %80 = icmp ult i32 %9, %19
  br i1 %80, label %81, label %896, !dx.controlflow.hints !20

; <label>:81                                      ; preds = %77
  %82 = add i32 %21, %9
  %83 = add i32 %69, %82
  %84 = shl i32 %83, 2
  %85 = lshr i32 %83, 8
  %86 = and i32 %85, 4194303
  %87 = add i32 %86, %26
  %88 = shl i32 %87, 2
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = shl i32 %90, 10
  %92 = and i32 %84, 1020
  %93 = or i32 %91, %92
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = and i32 %95, 65535
  %97 = add i32 %96, %28
  %98 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %97, i32 0)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  %102 = extractvalue %dx.types.ResRet.f32 %98, 3
  %103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %97, i32 16)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = extractvalue %dx.types.ResRet.f32 %103, 1
  %106 = extractvalue %dx.types.ResRet.f32 %103, 2
  %107 = extractvalue %dx.types.ResRet.f32 %103, 3
  %108 = icmp slt i32 %31, 0
  %109 = shl i32 %82, 3
  %110 = shl i32 %82, 2
  br i1 %108, label %111, label %119, !dx.controlflow.hints !21

; <label>:111                                     ; preds = %81
  %112 = add i32 %34, %109
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = extractvalue %dx.types.ResRet.i32 %113, 1
  %116 = add i32 %32, %110
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %116, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  br label %143

; <label>:119                                     ; preds = %81
  %120 = lshr i32 %82, 7
  %121 = and i32 %120, 4194303
  %122 = add i32 %121, %24
  %123 = shl i32 %122, 2
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = shl i32 %125, 10
  %127 = and i32 %109, 1016
  %128 = or i32 %126, %127
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = extractvalue %dx.types.ResRet.i32 %129, 1
  %132 = lshr i32 %82, 8
  %133 = and i32 %132, 4194303
  %134 = add i32 %133, %25
  %135 = shl i32 %134, 2
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = shl i32 %137, 10
  %139 = and i32 %110, 1020
  %140 = or i32 %138, %139
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  br label %143

; <label>:143                                     ; preds = %119, %111
  %144 = phi i32 [ %114, %111 ], [ %130, %119 ]
  %145 = phi i32 [ %115, %111 ], [ %131, %119 ]
  %146 = phi i32 [ %118, %111 ], [ %142, %119 ]
  %147 = and i32 %144, 2097151
  %148 = uitofp i32 %147 to float
  %149 = lshr i32 %144, 21
  %150 = shl i32 %145, 11
  %151 = and i32 %150, 2095104
  %152 = or i32 %151, %149
  %153 = uitofp i32 %152 to float
  %154 = lshr i32 %145, 10
  %155 = and i32 %154, 2097151
  %156 = uitofp i32 %155 to float
  %157 = fdiv float %148, 2.097151e+06
  %158 = fdiv float %153, 2.097151e+06
  %159 = fdiv float %156, 2.097151e+06
  %160 = fmul float %157, 2.000000e+00
  %161 = fmul float %158, 2.000000e+00
  %162 = fmul float %159, 2.000000e+00
  %163 = fadd float %160, -1.000000e+00
  %164 = fadd float %161, -1.000000e+00
  %165 = fadd float %162, -1.000000e+00
  %166 = fmul float %44, %163
  %167 = fmul float %44, %164
  %168 = fmul float %44, %165
  %169 = fadd float %41, %166
  %170 = fadd float %42, %167
  %171 = fadd float %43, %168
  %172 = lshr i32 %146, 30
  %173 = and i32 %146, 1023
  %174 = uitofp i32 %173 to float
  %175 = lshr i32 %146, 10
  %176 = and i32 %175, 1023
  %177 = uitofp i32 %176 to float
  %178 = lshr i32 %146, 20
  %179 = and i32 %178, 511
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %174, 0x3F56A64800000000
  %182 = fadd fast float %181, 0xBFE6A09E60000000
  %183 = fmul fast float %177, 0x3F56A64800000000
  %184 = fadd fast float %183, 0xBFE6A09E60000000
  %185 = fmul fast float %180, 0x3F66ABF460000000
  %186 = fadd fast float %185, 0xBFE6A09E60000000
  %187 = call float @dx.op.dot3.f32(i32 55, float %182, float %184, float %186, float %182, float %184, float %186)  ; Dot3(ax,ay,az,bx,by,bz)
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fsub fast float 1.000000e+00, %188
  %190 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %191 = icmp eq i32 %172, 0
  br i1 %191, label %198, label %192, !dx.controlflow.hints !22

; <label>:192                                     ; preds = %143
  %193 = icmp eq i32 %172, 1
  br i1 %193, label %198, label %194, !dx.controlflow.hints !23

; <label>:194                                     ; preds = %192
  %195 = icmp eq i32 %172, 2
  %196 = select i1 %195, float %190, float %186
  %197 = select i1 %195, float %186, float %190
  br label %198

; <label>:198                                     ; preds = %194, %192, %143
  %199 = phi float [ %190, %143 ], [ %182, %192 ], [ %182, %194 ]
  %200 = phi float [ %182, %143 ], [ %190, %192 ], [ %184, %194 ]
  %201 = phi float [ %184, %143 ], [ %184, %192 ], [ %196, %194 ]
  %202 = phi float [ %186, %143 ], [ %186, %192 ], [ %197, %194 ]
  %203 = and i32 %146, 536870912
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %204, float -1.000000e+00, float 1.000000e+00
  %206 = call float @dx.op.dot4.f32(i32 56, float %99, float %100, float %101, float %102, float %99, float %100, float %101, float %102)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %207 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %208 = fdiv fast float 1.000000e+00, %207
  %209 = fmul fast float %208, %102
  %210 = fmul fast float %208, %99
  %211 = fmul fast float %208, %100
  %212 = fmul fast float %208, %101
  %213 = fmul fast float %208, %107
  %214 = fmul fast float %208, %104
  %215 = fmul fast float %208, %105
  %216 = fmul fast float %208, %106
  %217 = fmul fast float %211, %171
  %218 = fmul fast float %212, %170
  %219 = fsub fast float %217, %218
  %220 = fmul fast float %212, %169
  %221 = fmul fast float %210, %171
  %222 = fsub fast float %220, %221
  %223 = fmul fast float %210, %170
  %224 = fmul fast float %211, %169
  %225 = fsub fast float %223, %224
  %226 = fmul fast float %209, %169
  %227 = fmul fast float %209, %170
  %228 = fmul fast float %209, %171
  %229 = fadd fast float %219, %226
  %230 = fadd fast float %222, %227
  %231 = fadd fast float %225, %228
  %232 = fmul fast float %214, %209
  %233 = fmul fast float %215, %209
  %234 = fmul fast float %216, %209
  %235 = fmul fast float %210, %213
  %236 = fmul fast float %211, %213
  %237 = fmul fast float %212, %213
  %238 = fmul fast float %211, %216
  %239 = fmul fast float %212, %215
  %240 = fmul fast float %212, %214
  %241 = fmul fast float %210, %216
  %242 = fmul fast float %210, %215
  %243 = fmul fast float %211, %214
  %244 = fsub fast float %232, %235
  %245 = fsub fast float %244, %239
  %246 = fadd fast float %245, %238
  %247 = fsub fast float %233, %236
  %248 = fsub fast float %247, %241
  %249 = fadd fast float %248, %240
  %250 = fsub fast float %234, %237
  %251 = fsub fast float %250, %243
  %252 = fadd fast float %251, %242
  %253 = fmul fast float %210, 2.000000e+00
  %254 = fmul fast float %211, 2.000000e+00
  %255 = fmul fast float %212, 2.000000e+00
  %256 = fmul fast float %231, %254
  %257 = fmul fast float %230, %255
  %258 = fmul fast float %229, %255
  %259 = fmul fast float %231, %253
  %260 = fmul fast float %230, %253
  %261 = fmul fast float %229, %254
  br i1 %70, label %262, label %460

; <label>:262                                     ; preds = %198
  %263 = and i32 %16, 65535
  br label %264

; <label>:264                                     ; preds = %264, %262
  %265 = phi float [ %327, %264 ], [ 0.000000e+00, %262 ]
  %266 = phi float [ %328, %264 ], [ 0.000000e+00, %262 ]
  %267 = phi float [ %329, %264 ], [ 0.000000e+00, %262 ]
  %268 = phi float [ %330, %264 ], [ 0.000000e+00, %262 ]
  %269 = phi float [ %319, %264 ], [ 0.000000e+00, %262 ]
  %270 = phi float [ %320, %264 ], [ 0.000000e+00, %262 ]
  %271 = phi float [ %321, %264 ], [ 0.000000e+00, %262 ]
  %272 = phi float [ %322, %264 ], [ 0.000000e+00, %262 ]
  %273 = phi float [ %300, %264 ], [ 0.000000e+00, %262 ]
  %274 = phi float [ %448, %264 ], [ 0.000000e+00, %262 ]
  %275 = phi float [ %449, %264 ], [ 0.000000e+00, %262 ]
  %276 = phi float [ %450, %264 ], [ 0.000000e+00, %262 ]
  %277 = phi float [ %454, %264 ], [ 0.000000e+00, %262 ]
  %278 = phi float [ %455, %264 ], [ 0.000000e+00, %262 ]
  %279 = phi float [ %456, %264 ], [ 0.000000e+00, %262 ]
  %280 = phi i32 [ %457, %264 ], [ 1, %262 ]
  %281 = mul i32 %280, %78
  %282 = add i32 %83, %281
  %283 = shl i32 %282, 2
  %284 = lshr i32 %282, 8
  %285 = and i32 %284, 4194303
  %286 = add i32 %285, %26
  %287 = shl i32 %286, 2
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 10
  %291 = and i32 %283, 1020
  %292 = or i32 %290, %291
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = lshr i32 %294, 16
  %297 = uitofp i32 %296 to float
  %298 = fmul float %297, 0x3EF0000000000000
  %299 = add i32 %295, %28
  %300 = fadd float %273, %298
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %299, i32 0)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = extractvalue %dx.types.ResRet.f32 %301, 3
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %299, i32 16)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = extractvalue %dx.types.ResRet.f32 %306, 3
  %311 = call float @dx.op.dot4.f32(i32 56, float %99, float %100, float %101, float %102, float %302, float %303, float %304, float %305), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %312 = fcmp olt float %311, 0.000000e+00
  %313 = fsub float -0.000000e+00, %298
  %314 = select i1 %312, float %313, float %298
  %315 = fmul float %302, %314
  %316 = fmul float %303, %314
  %317 = fmul float %304, %314
  %318 = fmul float %305, %314
  %319 = fadd float %269, %315
  %320 = fadd float %270, %316
  %321 = fadd float %271, %317
  %322 = fadd float %272, %318
  %323 = fmul float %307, %314
  %324 = fmul float %308, %314
  %325 = fmul float %309, %314
  %326 = fmul float %310, %314
  %327 = fadd float %265, %323
  %328 = fadd float %266, %324
  %329 = fadd float %267, %325
  %330 = fadd float %268, %326
  %331 = fsub fast float -0.000000e+00, %302
  %332 = fsub fast float -0.000000e+00, %303
  %333 = fsub fast float -0.000000e+00, %304
  %334 = fsub fast float -0.000000e+00, %305
  %335 = fsub fast float -0.000000e+00, %307
  %336 = fsub fast float -0.000000e+00, %308
  %337 = fsub fast float -0.000000e+00, %309
  %338 = fsub fast float -0.000000e+00, %310
  %339 = select i1 %312, float %335, float %307
  %340 = select i1 %312, float %336, float %308
  %341 = select i1 %312, float %337, float %309
  %342 = select i1 %312, float %338, float %310
  %343 = select i1 %312, float %331, float %302
  %344 = select i1 %312, float %332, float %303
  %345 = select i1 %312, float %333, float %304
  %346 = select i1 %312, float %334, float %305
  %347 = call float @dx.op.dot4.f32(i32 56, float %343, float %344, float %345, float %346, float %343, float %344, float %345, float %346)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %348 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %349 = fdiv fast float 1.000000e+00, %348
  %350 = fmul fast float %349, %346
  %351 = fmul fast float %349, %343
  %352 = fmul fast float %349, %344
  %353 = fmul fast float %349, %345
  %354 = fmul fast float %349, %342
  %355 = fmul fast float %349, %339
  %356 = fmul fast float %349, %340
  %357 = fmul fast float %349, %341
  %358 = fmul fast float %352, %171
  %359 = fmul fast float %353, %170
  %360 = fsub fast float %358, %359
  %361 = fmul fast float %353, %169
  %362 = fmul fast float %351, %171
  %363 = fsub fast float %361, %362
  %364 = fmul fast float %351, %170
  %365 = fmul fast float %352, %169
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %350, %169
  %368 = fmul fast float %350, %170
  %369 = fmul fast float %350, %171
  %370 = fadd fast float %360, %367
  %371 = fadd fast float %363, %368
  %372 = fadd fast float %366, %369
  %373 = fmul fast float %355, %350
  %374 = fmul fast float %356, %350
  %375 = fmul fast float %357, %350
  %376 = fmul fast float %351, %354
  %377 = fmul fast float %352, %354
  %378 = fmul fast float %353, %354
  %379 = fmul fast float %352, %357
  %380 = fmul fast float %353, %356
  %381 = fmul fast float %353, %355
  %382 = fmul fast float %351, %357
  %383 = fmul fast float %351, %356
  %384 = fmul fast float %352, %355
  %385 = fsub fast float %373, %376
  %386 = fsub fast float %385, %380
  %387 = fadd fast float %386, %379
  %388 = fsub fast float %374, %377
  %389 = fsub fast float %388, %382
  %390 = fadd fast float %389, %381
  %391 = fsub fast float %375, %378
  %392 = fsub fast float %391, %384
  %393 = fadd fast float %392, %383
  %394 = fmul fast float %387, 2.000000e+00
  %395 = fmul fast float %390, 2.000000e+00
  %396 = fmul fast float %393, 2.000000e+00
  %397 = fmul fast float %351, 2.000000e+00
  %398 = fmul fast float %352, 2.000000e+00
  %399 = fmul fast float %353, 2.000000e+00
  %400 = fmul fast float %372, %398
  %401 = fmul fast float %371, %399
  %402 = fmul fast float %370, %399
  %403 = fmul fast float %372, %397
  %404 = fmul fast float %371, %397
  %405 = fmul fast float %370, %398
  %406 = fmul fast float %246, -2.000000e+00
  %407 = fadd fast float %257, %406
  %408 = fsub fast float %407, %256
  %409 = fadd fast float %408, %394
  %410 = fsub fast float %409, %401
  %411 = fadd fast float %410, %400
  %412 = fmul fast float %249, -2.000000e+00
  %413 = fadd fast float %259, %412
  %414 = fsub fast float %413, %258
  %415 = fadd fast float %414, %395
  %416 = fsub fast float %415, %403
  %417 = fadd fast float %416, %402
  %418 = fmul fast float %252, -2.000000e+00
  %419 = fadd fast float %261, %418
  %420 = fsub fast float %419, %260
  %421 = fadd fast float %420, %396
  %422 = fsub fast float %421, %405
  %423 = fadd fast float %422, %404
  %424 = sub i32 %82, %79
  %425 = add nsw i32 %280, -1
  %426 = mul i32 %425, %78
  %427 = add i32 %424, %69
  %428 = add i32 %427, %426
  %429 = shl i32 %428, 2
  %430 = lshr i32 %428, 8
  %431 = and i32 %430, 4194303
  %432 = add i32 %431, %33
  %433 = shl i32 %432, 2
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = shl i32 %435, 10
  %437 = and i32 %429, 1020
  %438 = or i32 %436, %437
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 65535
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %440, 16
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = fmul fast float %411, %442
  %446 = fmul fast float %417, %442
  %447 = fmul fast float %423, %442
  %448 = fadd fast float %445, %274
  %449 = fadd fast float %446, %275
  %450 = fadd fast float %447, %276
  %451 = fmul fast float %444, %411
  %452 = fmul fast float %444, %417
  %453 = fmul fast float %444, %423
  %454 = fadd fast float %451, %277
  %455 = fadd fast float %452, %278
  %456 = fadd fast float %453, %279
  %457 = add nuw nsw i32 %280, 1
  %458 = icmp eq i32 %457, %263
  br i1 %458, label %459, label %264, !llvm.loop !25

; <label>:459                                     ; preds = %264
  br label %460

; <label>:460                                     ; preds = %459, %198
  %461 = phi float [ 0.000000e+00, %198 ], [ %327, %459 ]
  %462 = phi float [ 0.000000e+00, %198 ], [ %328, %459 ]
  %463 = phi float [ 0.000000e+00, %198 ], [ %329, %459 ]
  %464 = phi float [ 0.000000e+00, %198 ], [ %330, %459 ]
  %465 = phi float [ 0.000000e+00, %198 ], [ %319, %459 ]
  %466 = phi float [ 0.000000e+00, %198 ], [ %320, %459 ]
  %467 = phi float [ 0.000000e+00, %198 ], [ %321, %459 ]
  %468 = phi float [ 0.000000e+00, %198 ], [ %322, %459 ]
  %469 = phi float [ 0.000000e+00, %198 ], [ %300, %459 ]
  %470 = phi float [ 0.000000e+00, %198 ], [ %448, %459 ]
  %471 = phi float [ 0.000000e+00, %198 ], [ %449, %459 ]
  %472 = phi float [ 0.000000e+00, %198 ], [ %450, %459 ]
  %473 = phi float [ 0.000000e+00, %198 ], [ %454, %459 ]
  %474 = phi float [ 0.000000e+00, %198 ], [ %455, %459 ]
  %475 = phi float [ 0.000000e+00, %198 ], [ %456, %459 ]
  %476 = fsub float 1.000000e+00, %469
  %477 = fmul float %99, %476
  %478 = fmul float %100, %476
  %479 = fmul float %101, %476
  %480 = fmul float %102, %476
  %481 = fadd float %465, %477
  %482 = fadd float %466, %478
  %483 = fadd float %467, %479
  %484 = fadd float %468, %480
  %485 = fmul float %104, %476
  %486 = fmul float %105, %476
  %487 = fmul float %106, %476
  %488 = fmul float %107, %476
  %489 = fadd float %461, %485
  %490 = fadd float %462, %486
  %491 = fadd float %463, %487
  %492 = fadd float %464, %488
  %493 = call float @dx.op.dot4.f32(i32 56, float %481, float %482, float %483, float %484, float %481, float %482, float %483, float %484), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %494 = call float @dx.op.unary.f32(i32 24, float %493), !dx.precise !24  ; Sqrt(value)
  %495 = fdiv float 1.000000e+00, %494
  %496 = fmul float %484, %495
  %497 = fmul float %481, %495
  %498 = fmul float %482, %495
  %499 = fmul float %483, %495
  %500 = fmul float %492, %495
  %501 = fmul float %489, %495
  %502 = fmul float %490, %495
  %503 = fmul float %491, %495
  %504 = fmul float %171, %498
  %505 = fmul float %170, %499
  %506 = fsub float %504, %505
  %507 = fmul float %169, %499
  %508 = fmul float %171, %497
  %509 = fsub float %507, %508
  %510 = fmul float %170, %497
  %511 = fmul float %169, %498
  %512 = fsub float %510, %511
  %513 = fmul float %169, %496
  %514 = fmul float %170, %496
  %515 = fmul float %171, %496
  %516 = fadd float %513, %506
  %517 = fadd float %514, %509
  %518 = fadd float %515, %512
  %519 = fmul float %501, %496
  %520 = fmul float %502, %496
  %521 = fmul float %503, %496
  %522 = fmul float %497, %500
  %523 = fmul float %498, %500
  %524 = fmul float %499, %500
  %525 = fsub float %519, %522
  %526 = fsub float %520, %523
  %527 = fsub float %521, %524
  %528 = fmul float %498, %503
  %529 = fmul float %499, %502
  %530 = fsub float %528, %529
  %531 = fmul float %499, %501
  %532 = fmul float %497, %503
  %533 = fsub float %531, %532
  %534 = fmul float %497, %502
  %535 = fmul float %498, %501
  %536 = fsub float %534, %535
  %537 = fadd float %525, %530
  %538 = fadd float %526, %533
  %539 = fadd float %527, %536
  %540 = fmul float %537, 2.000000e+00
  %541 = fmul float %538, 2.000000e+00
  %542 = fmul float %539, 2.000000e+00
  %543 = fadd float %169, %540
  %544 = fadd float %170, %541
  %545 = fadd float %171, %542
  %546 = fmul float %497, 2.000000e+00
  %547 = fmul float %498, 2.000000e+00
  %548 = fmul float %499, 2.000000e+00
  %549 = fmul float %547, %518
  %550 = fmul float %548, %517
  %551 = fsub float %549, %550
  %552 = fmul float %548, %516
  %553 = fmul float %546, %518
  %554 = fsub float %552, %553
  %555 = fmul float %546, %517
  %556 = fmul float %547, %516
  %557 = fsub float %555, %556
  %558 = fadd float %543, %551
  %559 = fadd float %544, %554
  %560 = fadd float %545, %557
  %561 = fmul fast float %496, %199
  %562 = fmul fast float %496, %200
  %563 = fmul fast float %496, %201
  %564 = fmul fast float %497, %202
  %565 = fmul fast float %498, %202
  %566 = fmul fast float %499, %202
  %567 = fadd fast float %561, %564
  %568 = fadd fast float %562, %565
  %569 = fadd fast float %563, %566
  %570 = fmul fast float %498, %201
  %571 = fmul fast float %499, %200
  %572 = fsub fast float %570, %571
  %573 = fmul fast float %499, %199
  %574 = fmul fast float %497, %201
  %575 = fsub fast float %573, %574
  %576 = fmul fast float %497, %200
  %577 = fmul fast float %498, %199
  %578 = fsub fast float %576, %577
  %579 = fadd fast float %567, %572
  %580 = fadd fast float %568, %575
  %581 = fadd fast float %569, %578
  %582 = fmul fast float %496, %202
  %583 = call float @dx.op.dot3.f32(i32 55, float %497, float %498, float %499, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %584 = fsub fast float %582, %583
  %585 = fmul fast float %580, %580
  %586 = fmul fast float %585, 2.000000e+00
  %587 = fmul fast float %581, %581
  %588 = fmul fast float %587, 2.000000e+00
  %589 = fmul fast float %579, 2.000000e+00
  %590 = fmul fast float %589, %580
  %591 = fmul fast float %584, 2.000000e+00
  %592 = fmul fast float %591, %581
  %593 = fsub fast float %590, %592
  %594 = fmul fast float %580, %579
  %595 = fmul fast float %581, %584
  %596 = fmul fast float %579, %579
  %597 = fmul fast float %596, 2.000000e+00
  %598 = fsub fast float 1.000000e+00, %597
  %599 = fsub fast float %598, %588
  %600 = fmul fast float %589, %581
  %601 = fmul fast float %591, %580
  %602 = fsub fast float %600, %601
  %603 = fmul fast float %581, %580
  %604 = fmul fast float %579, %584
  %605 = fadd fast float %603, %604
  %606 = fmul fast float %593, %205
  %607 = fmul fast float %599, %205
  %608 = fmul fast float %205, 2.000000e+00
  %609 = fmul fast float %608, %605
  %610 = call float @dx.op.dot3.f32(i32 55, float %470, float %471, float %472, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = call float @dx.op.unary.f32(i32 25, float %610)  ; Rsqrt(value)
  %612 = fmul fast float %611, 0x3FECCCCCC0000000
  %613 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %612)  ; FMin(a,b)
  %614 = fmul fast float %613, %470
  %615 = fmul fast float %613, %471
  %616 = fmul fast float %613, %472
  %617 = fadd fast float %614, 1.000000e+00
  %618 = fsub fast float %617, %586
  %619 = fsub fast float %618, %588
  %620 = fadd fast float %594, %595
  %621 = fmul fast float %620, 2.000000e+00
  %622 = fadd fast float %621, %615
  %623 = fadd fast float %602, %616
  %624 = call float @dx.op.dot3.f32(i32 55, float %473, float %474, float %475, float %473, float %474, float %475)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.unary.f32(i32 25, float %624)  ; Rsqrt(value)
  %626 = fmul fast float %625, 0x3FECCCCCC0000000
  %627 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %626)  ; FMin(a,b)
  %628 = fmul fast float %627, %473
  %629 = fmul fast float %627, %474
  %630 = fmul fast float %627, %475
  %631 = fadd fast float %606, %628
  %632 = fadd fast float %607, %629
  %633 = fadd fast float %609, %630
  %634 = fmul fast float %632, %623
  %635 = fmul fast float %633, %622
  %636 = fsub fast float %634, %635
  %637 = fmul fast float %633, %619
  %638 = fmul fast float %631, %623
  %639 = fsub fast float %637, %638
  %640 = fmul fast float %631, %622
  %641 = fmul fast float %632, %619
  %642 = fsub fast float %640, %641
  %643 = call float @dx.op.dot3.f32(i32 55, float %636, float %639, float %642, float %636, float %639, float %642)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = call float @dx.op.unary.f32(i32 25, float %643)  ; Rsqrt(value)
  %645 = fmul fast float %636, %644
  %646 = fmul fast float %639, %644
  %647 = fmul fast float %642, %644
  %648 = call float @dx.op.dot3.f32(i32 55, float %619, float %622, float %623, float %645, float %646, float %647)  ; Dot3(ax,ay,az,bx,by,bz)
  %649 = fsub fast float -0.000000e+00, %648
  %650 = fmul fast float %645, %649
  %651 = fmul fast float %646, %649
  %652 = fmul fast float %647, %649
  %653 = fadd fast float %650, %619
  %654 = fadd fast float %651, %622
  %655 = fadd fast float %652, %623
  %656 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %653, float %654, float %655)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.unary.f32(i32 25, float %656)  ; Rsqrt(value)
  %658 = fmul fast float %653, %657
  %659 = fmul fast float %654, %657
  %660 = fmul fast float %655, %657
  %661 = fmul fast float %659, %647
  %662 = fmul fast float %660, %646
  %663 = fsub fast float %661, %662
  %664 = fmul fast float %660, %645
  %665 = fmul fast float %658, %647
  %666 = fsub fast float %664, %665
  %667 = fmul fast float %658, %646
  %668 = fmul fast float %659, %645
  %669 = fsub fast float %667, %668
  %670 = fmul fast float %663, %205
  %671 = fmul fast float %666, %205
  %672 = fmul fast float %669, %205
  %673 = fadd fast float %658, %647
  %674 = fadd fast float %673, %671
  %675 = fcmp fast ogt float %674, 0.000000e+00
  br i1 %675, label %676, label %687, !dx.controlflow.hints !27

; <label>:676                                     ; preds = %460
  %677 = fadd fast float %674, 1.000000e+00
  %678 = fsub fast float %672, %646
  %679 = fsub fast float %645, %660
  %680 = fsub fast float %659, %670
  %681 = call float @dx.op.unary.f32(i32 25, float %677)  ; Rsqrt(value)
  %682 = fmul fast float %681, 5.000000e-01
  %683 = fmul fast float %682, %678
  %684 = fmul fast float %682, %679
  %685 = fmul fast float %682, %680
  %686 = fmul fast float %682, %677
  br label %731

; <label>:687                                     ; preds = %460
  %688 = fcmp fast ogt float %658, %671
  %689 = fcmp fast ogt float %658, %647
  %690 = and i1 %689, %688
  br i1 %690, label %691, label %704, !dx.controlflow.hints !28

; <label>:691                                     ; preds = %687
  %692 = fsub fast float 1.000000e+00, %647
  %693 = fadd fast float %692, %658
  %694 = fsub fast float %693, %671
  %695 = fsub fast float %672, %646
  %696 = fadd fast float %670, %659
  %697 = fadd fast float %660, %645
  %698 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %699 = fmul fast float %698, 5.000000e-01
  %700 = fmul fast float %699, %694
  %701 = fmul fast float %699, %696
  %702 = fmul fast float %699, %697
  %703 = fmul fast float %699, %695
  br label %731

; <label>:704                                     ; preds = %687
  %705 = fcmp fast ogt float %671, %647
  %706 = fadd fast float %672, %646
  br i1 %705, label %707, label %719, !dx.controlflow.hints !29

; <label>:707                                     ; preds = %704
  %708 = fsub fast float 1.000000e+00, %647
  %709 = fsub fast float %708, %658
  %710 = fadd fast float %709, %671
  %711 = fsub fast float %645, %660
  %712 = fadd fast float %670, %659
  %713 = call float @dx.op.unary.f32(i32 25, float %710)  ; Rsqrt(value)
  %714 = fmul fast float %713, 5.000000e-01
  %715 = fmul fast float %714, %712
  %716 = fmul fast float %714, %710
  %717 = fmul fast float %714, %706
  %718 = fmul fast float %714, %711
  br label %731

; <label>:719                                     ; preds = %704
  %720 = fadd fast float %647, 1.000000e+00
  %721 = fsub fast float %720, %658
  %722 = fsub fast float %721, %671
  %723 = fsub fast float %659, %670
  %724 = fadd fast float %660, %645
  %725 = call float @dx.op.unary.f32(i32 25, float %722)  ; Rsqrt(value)
  %726 = fmul fast float %725, 5.000000e-01
  %727 = fmul fast float %726, %724
  %728 = fmul fast float %726, %706
  %729 = fmul fast float %726, %722
  %730 = fmul fast float %726, %723
  br label %731

; <label>:731                                     ; preds = %719, %707, %691, %676
  %732 = phi float [ %683, %676 ], [ %700, %691 ], [ %715, %707 ], [ %727, %719 ]
  %733 = phi float [ %684, %676 ], [ %701, %691 ], [ %716, %707 ], [ %728, %719 ]
  %734 = phi float [ %685, %676 ], [ %702, %691 ], [ %717, %707 ], [ %729, %719 ]
  %735 = phi float [ %686, %676 ], [ %703, %691 ], [ %718, %707 ], [ %730, %719 ]
  %736 = fsub float %558, %50
  %737 = fsub float %559, %51
  %738 = fsub float %560, %52
  %739 = fmul float %60, %738
  %740 = fmul float %61, %737
  %741 = fsub float %739, %740
  %742 = fmul float %61, %736
  %743 = fmul float %59, %738
  %744 = fsub float %742, %743
  %745 = fmul float %59, %737
  %746 = fmul float %60, %736
  %747 = fsub float %745, %746
  %748 = fmul float %741, 2.000000e+00
  %749 = fmul float %744, 2.000000e+00
  %750 = fmul float %747, 2.000000e+00
  %751 = fmul float %62, %748
  %752 = fmul float %62, %749
  %753 = fmul float %62, %750
  %754 = fsub float %736, %751
  %755 = fsub float %737, %752
  %756 = fsub float %738, %753
  %757 = fmul float %60, %750
  %758 = fmul float %61, %749
  %759 = fsub float %757, %758
  %760 = fmul float %61, %748
  %761 = fmul float %59, %750
  %762 = fsub float %760, %761
  %763 = fmul float %59, %749
  %764 = fmul float %60, %748
  %765 = fsub float %763, %764
  %766 = fadd float %754, %759
  %767 = fadd float %755, %762
  %768 = fadd float %756, %765
  %769 = fsub fast float -0.000000e+00, %59
  %770 = fsub fast float -0.000000e+00, %60
  %771 = fsub fast float -0.000000e+00, %61
  %772 = fmul fast float %732, %62
  %773 = fmul fast float %733, %62
  %774 = fmul fast float %734, %62
  %775 = fmul fast float %735, %769
  %776 = fmul fast float %735, %770
  %777 = fmul fast float %735, %771
  %778 = fadd fast float %775, %772
  %779 = fadd fast float %776, %773
  %780 = fmul fast float %734, %770
  %781 = fmul fast float %733, %771
  %782 = fsub fast float %780, %781
  %783 = fmul fast float %732, %771
  %784 = fmul fast float %734, %769
  %785 = fsub fast float %783, %784
  %786 = fmul fast float %733, %769
  %787 = fmul fast float %732, %770
  %788 = fsub fast float %786, %787
  %789 = fadd fast float %778, %782
  %790 = fadd fast float %779, %785
  %791 = fadd fast float %788, %774
  %792 = fadd fast float %791, %777
  %793 = fmul fast float %735, %62
  %794 = call float @dx.op.dot3.f32(i32 55, float %769, float %770, float %771, float %732, float %733, float %734)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = fsub fast float %793, %794
  %796 = fsub float %766, %41
  %797 = fsub float %767, %42
  %798 = fsub float %768, %43
  %799 = fdiv float 1.000000e+00, %44
  %800 = fmul float %796, %799
  %801 = fmul float %797, %799
  %802 = fmul float %798, %799
  %803 = fmul float %800, 5.000000e-01
  %804 = fmul float %801, 5.000000e-01
  %805 = fmul float %802, 5.000000e-01
  %806 = fadd float %803, 5.000000e-01
  %807 = fadd float %804, 5.000000e-01
  %808 = fadd float %805, 5.000000e-01
  %809 = call float @dx.op.unary.f32(i32 7, float %806), !dx.precise !24  ; Saturate(value)
  %810 = call float @dx.op.unary.f32(i32 7, float %807), !dx.precise !24  ; Saturate(value)
  %811 = call float @dx.op.unary.f32(i32 7, float %808), !dx.precise !24  ; Saturate(value)
  %812 = fmul float %809, 2.097151e+06
  %813 = fmul float %810, 2.097151e+06
  %814 = fmul float %811, 2.097151e+06
  %815 = fptoui float %812 to i32
  %816 = fptoui float %813 to i32
  %817 = fptoui float %814 to i32
  %818 = shl i32 %816, 21
  %819 = or i32 %818, %815
  %820 = lshr i32 %816, 11
  %821 = shl i32 %817, 10
  %822 = or i32 %821, %820
  %823 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %824 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %825 = fcmp fast oge float %823, %824
  %826 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %827 = fcmp fast oge float %823, %826
  %828 = and i1 %825, %827
  br i1 %828, label %829, label %832, !dx.controlflow.hints !30

; <label>:829                                     ; preds = %731
  %830 = fcmp fast olt float %792, 0.000000e+00
  %831 = select i1 %830, float 5.000000e+00, float 4.000000e+00
  br label %840

; <label>:832                                     ; preds = %731
  %833 = fcmp fast ult float %826, %824
  br i1 %833, label %837, label %834, !dx.controlflow.hints !31

; <label>:834                                     ; preds = %832
  %835 = fcmp fast olt float %790, 0.000000e+00
  %836 = select i1 %835, float 3.000000e+00, float 2.000000e+00
  br label %840

; <label>:837                                     ; preds = %832
  %838 = fcmp fast olt float %789, 0.000000e+00
  %839 = select i1 %838, float 1.000000e+00, float 0.000000e+00
  br label %840

; <label>:840                                     ; preds = %837, %834, %829
  %841 = phi float [ %831, %829 ], [ %836, %834 ], [ %839, %837 ]
  %842 = fmul fast float %841, 5.000000e-01
  %843 = fptoui float %842 to i32
  %844 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %845 = call float @dx.op.binary.f32(i32 35, float %826, float %823)  ; FMax(a,b)
  %846 = call float @dx.op.binary.f32(i32 35, float %824, float %845)  ; FMax(a,b)
  %847 = fcmp fast ogt float %844, %846
  %848 = select i1 %847, i32 3, i32 %843
  %849 = icmp eq i32 %848, 0
  %850 = select i1 %849, float %790, float %789
  %851 = select i1 %849, float %792, float %790
  %852 = select i1 %849, float %795, float %792
  %853 = select i1 %849, float %789, float %795
  %854 = icmp eq i32 %848, 1
  %855 = select i1 %854, float %852, float %851
  %856 = select i1 %854, float %853, float %852
  %857 = select i1 %854, float %851, float %853
  %858 = icmp eq i32 %848, 2
  %859 = select i1 %858, float %857, float %856
  %860 = select i1 %858, float %856, float %857
  %861 = fcmp fast ogt float %860, 0.000000e+00
  %862 = select i1 %861, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %863 = fmul fast float %862, %850
  %864 = fmul fast float %862, %855
  %865 = fmul fast float %862, %859
  %866 = fadd fast float %863, 1.000000e+00
  %867 = fmul fast float %866, 5.000000e-01
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = fmul fast float %868, 1.023000e+03
  %870 = fptoui float %869 to i32
  %871 = fadd fast float %864, 1.000000e+00
  %872 = fmul fast float %871, 5.000000e-01
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = fmul fast float %873, 1.023000e+03
  %875 = fptoui float %874 to i32
  %876 = fadd fast float %865, 1.000000e+00
  %877 = fmul fast float %876, 5.000000e-01
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = fmul fast float %878, 5.110000e+02
  %880 = fptoui float %879 to i32
  %881 = shl i32 %875, 10
  %882 = shl i32 %880, 20
  %883 = fcmp fast ogt float %205, 0.000000e+00
  %884 = select i1 %883, i32 0, i32 536870912
  %885 = shl i32 %848, 30
  %886 = or i32 %870, %884
  %887 = or i32 %886, %885
  %888 = or i32 %887, %881
  %889 = or i32 %888, %882
  %890 = select i1 %27, i32 %819, i32 0
  %891 = select i1 %27, i32 %822, i32 0
  %892 = shl i32 %82, 3
  %893 = add i32 %34, %892
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %893, i32 undef, i32 %890, i32 %891, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %894 = shl i32 %82, 2
  %895 = add i32 %32, %894
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %895, i32 undef, i32 %889, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %896

; <label>:896                                     ; preds = %840, %77
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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, null}
!5 = !{!6, !7, !9, !10, !11}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<UDQ>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 32}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!12 = !{!13}
!13 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{!15}
!15 = !{i32 0, %SkinningPassConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!16 = !{void ()* @cs_skinning_deform_factors_unified_main, !"cs_skinning_deform_factors_unified_main", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 64, i32 1, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{i32 1}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

