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
; shader hash: a11ff0fee3b12772042df2dd1218631b
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

define void @cs_skinning_deform_factors_weight_blend_unified_main() {
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
  br i1 %80, label %81, label %1170, !dx.controlflow.hints !20

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
  %262 = lshr i32 %95, 16
  %263 = uitofp i32 %262 to float
  %264 = fdiv float %263, 6.553500e+04
  br i1 %70, label %265, label %578

; <label>:265                                     ; preds = %198
  %266 = and i32 %16, 65535
  br label %267

; <label>:267                                     ; preds = %444, %265
  %268 = phi float [ %337, %444 ], [ 0.000000e+00, %265 ]
  %269 = phi float [ %338, %444 ], [ 0.000000e+00, %265 ]
  %270 = phi float [ %339, %444 ], [ 0.000000e+00, %265 ]
  %271 = phi float [ %340, %444 ], [ 0.000000e+00, %265 ]
  %272 = phi float [ %329, %444 ], [ 0.000000e+00, %265 ]
  %273 = phi float [ %330, %444 ], [ 0.000000e+00, %265 ]
  %274 = phi float [ %331, %444 ], [ 0.000000e+00, %265 ]
  %275 = phi float [ %332, %444 ], [ 0.000000e+00, %265 ]
  %276 = phi float [ %310, %444 ], [ 0.000000e+00, %265 ]
  %277 = phi float [ %566, %444 ], [ 0.000000e+00, %265 ]
  %278 = phi float [ %567, %444 ], [ 0.000000e+00, %265 ]
  %279 = phi float [ %568, %444 ], [ 0.000000e+00, %265 ]
  %280 = phi float [ %445, %444 ], [ 0.000000e+00, %265 ]
  %281 = phi float [ %446, %444 ], [ 0.000000e+00, %265 ]
  %282 = phi float [ %447, %444 ], [ 0.000000e+00, %265 ]
  %283 = phi float [ %448, %444 ], [ 0.000000e+00, %265 ]
  %284 = phi float [ %449, %444 ], [ 0.000000e+00, %265 ]
  %285 = phi float [ %450, %444 ], [ 0.000000e+00, %265 ]
  %286 = phi float [ %451, %444 ], [ 0.000000e+00, %265 ]
  %287 = phi float [ %572, %444 ], [ 0.000000e+00, %265 ]
  %288 = phi float [ %573, %444 ], [ 0.000000e+00, %265 ]
  %289 = phi float [ %574, %444 ], [ 0.000000e+00, %265 ]
  %290 = phi i32 [ %575, %444 ], [ 1, %265 ]
  %291 = mul i32 %290, %78
  %292 = add i32 %83, %291
  %293 = shl i32 %292, 2
  %294 = lshr i32 %292, 8
  %295 = and i32 %294, 4194303
  %296 = add i32 %295, %26
  %297 = shl i32 %296, 2
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = shl i32 %299, 10
  %301 = and i32 %293, 1020
  %302 = or i32 %300, %301
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = lshr i32 %304, 16
  %307 = uitofp i32 %306 to float
  %308 = fmul float %307, 0x3EF0000000000000
  %309 = add i32 %305, %28
  %310 = fadd float %276, %308
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %309, i32 0)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = extractvalue %dx.types.ResRet.f32 %311, 3
  %316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %309, i32 16)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = extractvalue %dx.types.ResRet.f32 %316, 1
  %319 = extractvalue %dx.types.ResRet.f32 %316, 2
  %320 = extractvalue %dx.types.ResRet.f32 %316, 3
  %321 = call float @dx.op.dot4.f32(i32 56, float %99, float %100, float %101, float %102, float %312, float %313, float %314, float %315), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %322 = fcmp olt float %321, 0.000000e+00
  %323 = fsub float -0.000000e+00, %308
  %324 = select i1 %322, float %323, float %308
  %325 = fmul float %312, %324
  %326 = fmul float %313, %324
  %327 = fmul float %314, %324
  %328 = fmul float %315, %324
  %329 = fadd float %272, %325
  %330 = fadd float %273, %326
  %331 = fadd float %274, %327
  %332 = fadd float %275, %328
  %333 = fmul float %317, %324
  %334 = fmul float %318, %324
  %335 = fmul float %319, %324
  %336 = fmul float %320, %324
  %337 = fadd float %268, %333
  %338 = fadd float %269, %334
  %339 = fadd float %270, %335
  %340 = fadd float %271, %336
  %341 = fcmp une float %264, 0.000000e+00
  %342 = fsub float -0.000000e+00, %312
  %343 = fsub float -0.000000e+00, %313
  %344 = fsub float -0.000000e+00, %314
  br i1 %341, label %345, label %444, !dx.controlflow.hints !25

; <label>:345                                     ; preds = %267
  %346 = fmul float %320, %342
  %347 = fmul float %320, %343
  %348 = fmul float %320, %344
  %349 = fmul float %315, %317
  %350 = fmul float %315, %318
  %351 = fmul float %315, %319
  %352 = fadd float %346, %349
  %353 = fadd float %347, %350
  %354 = fadd float %348, %351
  %355 = fmul float %318, %344
  %356 = fmul float %319, %343
  %357 = fsub float %355, %356
  %358 = fmul float %319, %342
  %359 = fmul float %317, %344
  %360 = fsub float %358, %359
  %361 = fmul float %317, %343
  %362 = fmul float %318, %342
  %363 = fsub float %361, %362
  %364 = fadd float %352, %357
  %365 = fadd float %353, %360
  %366 = fadd float %354, %363
  %367 = fmul float %364, 2.000000e+00
  %368 = fmul float %365, 2.000000e+00
  %369 = fmul float %366, 2.000000e+00
  %370 = fmul float %171, %313
  %371 = fmul float %170, %314
  %372 = fsub float %370, %371
  %373 = fmul float %169, %314
  %374 = fmul float %171, %312
  %375 = fsub float %373, %374
  %376 = fmul float %170, %312
  %377 = fmul float %169, %313
  %378 = fsub float %376, %377
  %379 = fmul float %372, 2.000000e+00
  %380 = fmul float %375, 2.000000e+00
  %381 = fmul float %378, 2.000000e+00
  %382 = fmul float %315, %379
  %383 = fmul float %315, %380
  %384 = fmul float %315, %381
  %385 = fadd float %169, %382
  %386 = fadd float %170, %383
  %387 = fadd float %171, %384
  %388 = fmul float %313, %381
  %389 = fmul float %314, %380
  %390 = fsub float %388, %389
  %391 = fmul float %314, %379
  %392 = fmul float %312, %381
  %393 = fsub float %391, %392
  %394 = fmul float %312, %380
  %395 = fmul float %313, %379
  %396 = fsub float %394, %395
  %397 = fadd float %385, %390
  %398 = fadd float %386, %393
  %399 = fadd float %387, %396
  %400 = fadd float %367, %397
  %401 = fadd float %368, %398
  %402 = fadd float %369, %399
  %403 = fmul float %308, %400
  %404 = fmul float %308, %401
  %405 = fmul float %308, %402
  %406 = fadd float %284, %403
  %407 = fadd float %285, %404
  %408 = fadd float %286, %405
  %409 = fmul fast float %315, %199
  %410 = fmul fast float %315, %200
  %411 = fmul fast float %315, %201
  %412 = fmul fast float %312, %202
  %413 = fmul fast float %313, %202
  %414 = fmul fast float %314, %202
  %415 = fadd fast float %409, %412
  %416 = fadd fast float %410, %413
  %417 = fadd fast float %411, %414
  %418 = fmul fast float %313, %201
  %419 = fmul fast float %314, %200
  %420 = fsub fast float %418, %419
  %421 = fmul fast float %314, %199
  %422 = fmul fast float %312, %201
  %423 = fsub fast float %421, %422
  %424 = fmul fast float %312, %200
  %425 = fmul fast float %313, %199
  %426 = fsub fast float %424, %425
  %427 = fadd fast float %415, %420
  %428 = fadd fast float %416, %423
  %429 = fadd fast float %417, %426
  %430 = fmul fast float %315, %202
  %431 = call float @dx.op.dot3.f32(i32 55, float %312, float %313, float %314, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %432 = fsub fast float %430, %431
  %433 = call float @dx.op.dot4.f32(i32 56, float %280, float %281, float %282, float %283, float %427, float %428, float %429, float %432)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %434 = fcmp fast olt float %433, 0.000000e+00
  %435 = select i1 %434, float %323, float %308
  %436 = fmul fast float %435, %427
  %437 = fmul fast float %435, %428
  %438 = fmul fast float %435, %429
  %439 = fmul fast float %435, %432
  %440 = fadd fast float %436, %280
  %441 = fadd fast float %437, %281
  %442 = fadd fast float %438, %282
  %443 = fadd fast float %439, %283
  br label %444

; <label>:444                                     ; preds = %345, %267
  %445 = phi float [ %440, %345 ], [ %280, %267 ]
  %446 = phi float [ %441, %345 ], [ %281, %267 ]
  %447 = phi float [ %442, %345 ], [ %282, %267 ]
  %448 = phi float [ %443, %345 ], [ %283, %267 ]
  %449 = phi float [ %406, %345 ], [ %284, %267 ]
  %450 = phi float [ %407, %345 ], [ %285, %267 ]
  %451 = phi float [ %408, %345 ], [ %286, %267 ]
  %452 = fsub fast float -0.000000e+00, %315
  %453 = fsub fast float -0.000000e+00, %317
  %454 = fsub fast float -0.000000e+00, %318
  %455 = fsub fast float -0.000000e+00, %319
  %456 = fsub fast float -0.000000e+00, %320
  %457 = select i1 %322, float %453, float %317
  %458 = select i1 %322, float %454, float %318
  %459 = select i1 %322, float %455, float %319
  %460 = select i1 %322, float %456, float %320
  %461 = select i1 %322, float %342, float %312
  %462 = select i1 %322, float %343, float %313
  %463 = select i1 %322, float %344, float %314
  %464 = select i1 %322, float %452, float %315
  %465 = call float @dx.op.dot4.f32(i32 56, float %461, float %462, float %463, float %464, float %461, float %462, float %463, float %464)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %466 = call float @dx.op.unary.f32(i32 24, float %465)  ; Sqrt(value)
  %467 = fdiv fast float 1.000000e+00, %466
  %468 = fmul fast float %467, %464
  %469 = fmul fast float %467, %461
  %470 = fmul fast float %467, %462
  %471 = fmul fast float %467, %463
  %472 = fmul fast float %467, %460
  %473 = fmul fast float %467, %457
  %474 = fmul fast float %467, %458
  %475 = fmul fast float %467, %459
  %476 = fmul fast float %470, %171
  %477 = fmul fast float %471, %170
  %478 = fsub fast float %476, %477
  %479 = fmul fast float %471, %169
  %480 = fmul fast float %469, %171
  %481 = fsub fast float %479, %480
  %482 = fmul fast float %469, %170
  %483 = fmul fast float %470, %169
  %484 = fsub fast float %482, %483
  %485 = fmul fast float %468, %169
  %486 = fmul fast float %468, %170
  %487 = fmul fast float %468, %171
  %488 = fadd fast float %478, %485
  %489 = fadd fast float %481, %486
  %490 = fadd fast float %484, %487
  %491 = fmul fast float %473, %468
  %492 = fmul fast float %474, %468
  %493 = fmul fast float %475, %468
  %494 = fmul fast float %469, %472
  %495 = fmul fast float %470, %472
  %496 = fmul fast float %471, %472
  %497 = fmul fast float %470, %475
  %498 = fmul fast float %471, %474
  %499 = fmul fast float %471, %473
  %500 = fmul fast float %469, %475
  %501 = fmul fast float %469, %474
  %502 = fmul fast float %470, %473
  %503 = fsub fast float %491, %494
  %504 = fsub fast float %503, %498
  %505 = fadd fast float %504, %497
  %506 = fsub fast float %492, %495
  %507 = fsub fast float %506, %500
  %508 = fadd fast float %507, %499
  %509 = fsub fast float %493, %496
  %510 = fsub fast float %509, %502
  %511 = fadd fast float %510, %501
  %512 = fmul fast float %505, 2.000000e+00
  %513 = fmul fast float %508, 2.000000e+00
  %514 = fmul fast float %511, 2.000000e+00
  %515 = fmul fast float %469, 2.000000e+00
  %516 = fmul fast float %470, 2.000000e+00
  %517 = fmul fast float %471, 2.000000e+00
  %518 = fmul fast float %490, %516
  %519 = fmul fast float %489, %517
  %520 = fmul fast float %488, %517
  %521 = fmul fast float %490, %515
  %522 = fmul fast float %489, %515
  %523 = fmul fast float %488, %516
  %524 = fmul fast float %246, -2.000000e+00
  %525 = fadd fast float %257, %524
  %526 = fsub fast float %525, %256
  %527 = fadd fast float %526, %512
  %528 = fsub fast float %527, %519
  %529 = fadd fast float %528, %518
  %530 = fmul fast float %249, -2.000000e+00
  %531 = fadd fast float %259, %530
  %532 = fsub fast float %531, %258
  %533 = fadd fast float %532, %513
  %534 = fsub fast float %533, %521
  %535 = fadd fast float %534, %520
  %536 = fmul fast float %252, -2.000000e+00
  %537 = fadd fast float %261, %536
  %538 = fsub fast float %537, %260
  %539 = fadd fast float %538, %514
  %540 = fsub fast float %539, %523
  %541 = fadd fast float %540, %522
  %542 = sub i32 %82, %79
  %543 = add nsw i32 %290, -1
  %544 = mul i32 %543, %78
  %545 = add i32 %542, %69
  %546 = add i32 %545, %544
  %547 = shl i32 %546, 2
  %548 = lshr i32 %546, 8
  %549 = and i32 %548, 4194303
  %550 = add i32 %549, %33
  %551 = shl i32 %550, 2
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = shl i32 %553, 10
  %555 = and i32 %547, 1020
  %556 = or i32 %554, %555
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %558, 16
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = fmul fast float %529, %560
  %564 = fmul fast float %535, %560
  %565 = fmul fast float %541, %560
  %566 = fadd fast float %563, %277
  %567 = fadd fast float %564, %278
  %568 = fadd fast float %565, %279
  %569 = fmul fast float %562, %529
  %570 = fmul fast float %562, %535
  %571 = fmul fast float %562, %541
  %572 = fadd fast float %569, %287
  %573 = fadd fast float %570, %288
  %574 = fadd fast float %571, %289
  %575 = add nuw nsw i32 %290, 1
  %576 = icmp eq i32 %575, %266
  br i1 %576, label %577, label %267, !llvm.loop !26

; <label>:577                                     ; preds = %444
  br label %578

; <label>:578                                     ; preds = %577, %198
  %579 = phi float [ 0.000000e+00, %198 ], [ %337, %577 ]
  %580 = phi float [ 0.000000e+00, %198 ], [ %338, %577 ]
  %581 = phi float [ 0.000000e+00, %198 ], [ %339, %577 ]
  %582 = phi float [ 0.000000e+00, %198 ], [ %340, %577 ]
  %583 = phi float [ 0.000000e+00, %198 ], [ %329, %577 ]
  %584 = phi float [ 0.000000e+00, %198 ], [ %330, %577 ]
  %585 = phi float [ 0.000000e+00, %198 ], [ %331, %577 ]
  %586 = phi float [ 0.000000e+00, %198 ], [ %332, %577 ]
  %587 = phi float [ 0.000000e+00, %198 ], [ %310, %577 ]
  %588 = phi float [ 0.000000e+00, %198 ], [ %566, %577 ]
  %589 = phi float [ 0.000000e+00, %198 ], [ %567, %577 ]
  %590 = phi float [ 0.000000e+00, %198 ], [ %568, %577 ]
  %591 = phi float [ 0.000000e+00, %198 ], [ %445, %577 ]
  %592 = phi float [ 0.000000e+00, %198 ], [ %446, %577 ]
  %593 = phi float [ 0.000000e+00, %198 ], [ %447, %577 ]
  %594 = phi float [ 0.000000e+00, %198 ], [ %448, %577 ]
  %595 = phi float [ 0.000000e+00, %198 ], [ %449, %577 ]
  %596 = phi float [ 0.000000e+00, %198 ], [ %450, %577 ]
  %597 = phi float [ 0.000000e+00, %198 ], [ %451, %577 ]
  %598 = phi float [ 0.000000e+00, %198 ], [ %572, %577 ]
  %599 = phi float [ 0.000000e+00, %198 ], [ %573, %577 ]
  %600 = phi float [ 0.000000e+00, %198 ], [ %574, %577 ]
  %601 = fsub float 1.000000e+00, %587
  %602 = fmul float %99, %601
  %603 = fmul float %100, %601
  %604 = fmul float %101, %601
  %605 = fmul float %102, %601
  %606 = fadd float %583, %602
  %607 = fadd float %584, %603
  %608 = fadd float %585, %604
  %609 = fadd float %586, %605
  %610 = fmul float %104, %601
  %611 = fmul float %105, %601
  %612 = fmul float %106, %601
  %613 = fmul float %107, %601
  %614 = fadd float %579, %610
  %615 = fadd float %580, %611
  %616 = fadd float %581, %612
  %617 = fadd float %582, %613
  %618 = call float @dx.op.dot4.f32(i32 56, float %606, float %607, float %608, float %609, float %606, float %607, float %608, float %609), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %619 = call float @dx.op.unary.f32(i32 24, float %618), !dx.precise !24  ; Sqrt(value)
  %620 = fdiv float 1.000000e+00, %619
  %621 = fmul float %609, %620
  %622 = fmul float %606, %620
  %623 = fmul float %607, %620
  %624 = fmul float %608, %620
  %625 = fmul float %617, %620
  %626 = fmul float %614, %620
  %627 = fmul float %615, %620
  %628 = fmul float %616, %620
  %629 = fmul float %171, %623
  %630 = fmul float %170, %624
  %631 = fsub float %629, %630
  %632 = fmul float %169, %624
  %633 = fmul float %171, %622
  %634 = fsub float %632, %633
  %635 = fmul float %170, %622
  %636 = fmul float %169, %623
  %637 = fsub float %635, %636
  %638 = fmul float %169, %621
  %639 = fmul float %170, %621
  %640 = fmul float %171, %621
  %641 = fadd float %638, %631
  %642 = fadd float %639, %634
  %643 = fadd float %640, %637
  %644 = fmul float %626, %621
  %645 = fmul float %627, %621
  %646 = fmul float %628, %621
  %647 = fmul float %622, %625
  %648 = fmul float %623, %625
  %649 = fmul float %624, %625
  %650 = fsub float %644, %647
  %651 = fsub float %645, %648
  %652 = fsub float %646, %649
  %653 = fmul float %623, %628
  %654 = fmul float %624, %627
  %655 = fsub float %653, %654
  %656 = fmul float %624, %626
  %657 = fmul float %622, %628
  %658 = fsub float %656, %657
  %659 = fmul float %622, %627
  %660 = fmul float %623, %626
  %661 = fsub float %659, %660
  %662 = fadd float %650, %655
  %663 = fadd float %651, %658
  %664 = fadd float %652, %661
  %665 = fmul float %662, 2.000000e+00
  %666 = fmul float %663, 2.000000e+00
  %667 = fmul float %664, 2.000000e+00
  %668 = fadd float %169, %665
  %669 = fadd float %170, %666
  %670 = fadd float %171, %667
  %671 = fmul float %622, 2.000000e+00
  %672 = fmul float %623, 2.000000e+00
  %673 = fmul float %624, 2.000000e+00
  %674 = fmul float %672, %643
  %675 = fmul float %673, %642
  %676 = fsub float %674, %675
  %677 = fmul float %673, %641
  %678 = fmul float %671, %643
  %679 = fsub float %677, %678
  %680 = fmul float %671, %642
  %681 = fmul float %672, %641
  %682 = fsub float %680, %681
  %683 = fadd float %668, %676
  %684 = fadd float %669, %679
  %685 = fadd float %670, %682
  %686 = fmul fast float %621, %199
  %687 = fmul fast float %621, %200
  %688 = fmul fast float %621, %201
  %689 = fmul fast float %622, %202
  %690 = fmul fast float %623, %202
  %691 = fmul fast float %624, %202
  %692 = fadd fast float %686, %689
  %693 = fadd fast float %687, %690
  %694 = fadd fast float %688, %691
  %695 = fmul fast float %623, %201
  %696 = fmul fast float %624, %200
  %697 = fsub fast float %695, %696
  %698 = fmul fast float %624, %199
  %699 = fmul fast float %622, %201
  %700 = fsub fast float %698, %699
  %701 = fmul fast float %622, %200
  %702 = fmul fast float %623, %199
  %703 = fsub fast float %701, %702
  %704 = fadd fast float %692, %697
  %705 = fadd fast float %693, %700
  %706 = fadd fast float %694, %703
  %707 = fmul fast float %621, %202
  %708 = call float @dx.op.dot3.f32(i32 55, float %622, float %623, float %624, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = fsub fast float %707, %708
  %710 = fmul fast float %705, %705
  %711 = fmul fast float %710, 2.000000e+00
  %712 = fmul fast float %706, %706
  %713 = fmul fast float %712, 2.000000e+00
  %714 = fmul fast float %704, 2.000000e+00
  %715 = fmul fast float %714, %705
  %716 = fmul fast float %709, 2.000000e+00
  %717 = fmul fast float %716, %706
  %718 = fsub fast float %715, %717
  %719 = fmul fast float %705, %704
  %720 = fmul fast float %706, %709
  %721 = fmul fast float %704, %704
  %722 = fmul fast float %721, 2.000000e+00
  %723 = fsub fast float 1.000000e+00, %722
  %724 = fsub fast float %723, %713
  %725 = fmul fast float %714, %706
  %726 = fmul fast float %716, %705
  %727 = fsub fast float %725, %726
  %728 = fmul fast float %706, %705
  %729 = fmul fast float %704, %709
  %730 = fadd fast float %728, %729
  %731 = fmul fast float %718, %205
  %732 = fmul fast float %724, %205
  %733 = fmul fast float %205, 2.000000e+00
  %734 = fmul fast float %733, %730
  %735 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %588, float %589, float %590)  ; Dot3(ax,ay,az,bx,by,bz)
  %736 = call float @dx.op.unary.f32(i32 25, float %735)  ; Rsqrt(value)
  %737 = fmul fast float %736, 0x3FECCCCCC0000000
  %738 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %737)  ; FMin(a,b)
  %739 = fmul fast float %738, %588
  %740 = fmul fast float %738, %589
  %741 = fmul fast float %738, %590
  %742 = fadd fast float %739, 1.000000e+00
  %743 = fsub fast float %742, %711
  %744 = fsub fast float %743, %713
  %745 = fadd fast float %719, %720
  %746 = fmul fast float %745, 2.000000e+00
  %747 = fadd fast float %746, %740
  %748 = fadd fast float %727, %741
  %749 = call float @dx.op.dot3.f32(i32 55, float %598, float %599, float %600, float %598, float %599, float %600)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = call float @dx.op.unary.f32(i32 25, float %749)  ; Rsqrt(value)
  %751 = fmul fast float %750, 0x3FECCCCCC0000000
  %752 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %751)  ; FMin(a,b)
  %753 = fmul fast float %752, %598
  %754 = fmul fast float %752, %599
  %755 = fmul fast float %752, %600
  %756 = fadd fast float %731, %753
  %757 = fadd fast float %732, %754
  %758 = fadd fast float %734, %755
  %759 = fmul fast float %757, %748
  %760 = fmul fast float %758, %747
  %761 = fsub fast float %759, %760
  %762 = fmul fast float %758, %744
  %763 = fmul fast float %756, %748
  %764 = fsub fast float %762, %763
  %765 = fmul fast float %756, %747
  %766 = fmul fast float %757, %744
  %767 = fsub fast float %765, %766
  %768 = call float @dx.op.dot3.f32(i32 55, float %761, float %764, float %767, float %761, float %764, float %767)  ; Dot3(ax,ay,az,bx,by,bz)
  %769 = call float @dx.op.unary.f32(i32 25, float %768)  ; Rsqrt(value)
  %770 = fmul fast float %761, %769
  %771 = fmul fast float %764, %769
  %772 = fmul fast float %767, %769
  %773 = call float @dx.op.dot3.f32(i32 55, float %744, float %747, float %748, float %770, float %771, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = fsub fast float -0.000000e+00, %773
  %775 = fmul fast float %770, %774
  %776 = fmul fast float %771, %774
  %777 = fmul fast float %772, %774
  %778 = fadd fast float %775, %744
  %779 = fadd fast float %776, %747
  %780 = fadd fast float %777, %748
  %781 = call float @dx.op.dot3.f32(i32 55, float %778, float %779, float %780, float %778, float %779, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %782 = call float @dx.op.unary.f32(i32 25, float %781)  ; Rsqrt(value)
  %783 = fmul fast float %778, %782
  %784 = fmul fast float %779, %782
  %785 = fmul fast float %780, %782
  %786 = fmul fast float %784, %772
  %787 = fmul fast float %785, %771
  %788 = fsub fast float %786, %787
  %789 = fmul fast float %785, %770
  %790 = fmul fast float %783, %772
  %791 = fsub fast float %789, %790
  %792 = fmul fast float %783, %771
  %793 = fmul fast float %784, %770
  %794 = fsub fast float %792, %793
  %795 = fmul fast float %788, %205
  %796 = fmul fast float %791, %205
  %797 = fmul fast float %794, %205
  %798 = fadd fast float %783, %772
  %799 = fadd fast float %798, %796
  %800 = fcmp fast ogt float %799, 0.000000e+00
  br i1 %800, label %801, label %812, !dx.controlflow.hints !28

; <label>:801                                     ; preds = %578
  %802 = fadd fast float %799, 1.000000e+00
  %803 = fsub fast float %797, %771
  %804 = fsub fast float %770, %785
  %805 = fsub fast float %784, %795
  %806 = call float @dx.op.unary.f32(i32 25, float %802)  ; Rsqrt(value)
  %807 = fmul fast float %806, 5.000000e-01
  %808 = fmul fast float %807, %803
  %809 = fmul fast float %807, %804
  %810 = fmul fast float %807, %805
  %811 = fmul fast float %807, %802
  br label %856

; <label>:812                                     ; preds = %578
  %813 = fcmp fast ogt float %783, %796
  %814 = fcmp fast ogt float %783, %772
  %815 = and i1 %814, %813
  br i1 %815, label %816, label %829, !dx.controlflow.hints !29

; <label>:816                                     ; preds = %812
  %817 = fsub fast float 1.000000e+00, %772
  %818 = fadd fast float %817, %783
  %819 = fsub fast float %818, %796
  %820 = fsub fast float %797, %771
  %821 = fadd fast float %795, %784
  %822 = fadd fast float %785, %770
  %823 = call float @dx.op.unary.f32(i32 25, float %819)  ; Rsqrt(value)
  %824 = fmul fast float %823, 5.000000e-01
  %825 = fmul fast float %824, %819
  %826 = fmul fast float %824, %821
  %827 = fmul fast float %824, %822
  %828 = fmul fast float %824, %820
  br label %856

; <label>:829                                     ; preds = %812
  %830 = fcmp fast ogt float %796, %772
  %831 = fadd fast float %797, %771
  br i1 %830, label %832, label %844, !dx.controlflow.hints !30

; <label>:832                                     ; preds = %829
  %833 = fsub fast float 1.000000e+00, %772
  %834 = fsub fast float %833, %783
  %835 = fadd fast float %834, %796
  %836 = fsub fast float %770, %785
  %837 = fadd fast float %795, %784
  %838 = call float @dx.op.unary.f32(i32 25, float %835)  ; Rsqrt(value)
  %839 = fmul fast float %838, 5.000000e-01
  %840 = fmul fast float %839, %837
  %841 = fmul fast float %839, %835
  %842 = fmul fast float %839, %831
  %843 = fmul fast float %839, %836
  br label %856

; <label>:844                                     ; preds = %829
  %845 = fadd fast float %772, 1.000000e+00
  %846 = fsub fast float %845, %783
  %847 = fsub fast float %846, %796
  %848 = fsub fast float %784, %795
  %849 = fadd fast float %785, %770
  %850 = call float @dx.op.unary.f32(i32 25, float %847)  ; Rsqrt(value)
  %851 = fmul fast float %850, 5.000000e-01
  %852 = fmul fast float %851, %849
  %853 = fmul fast float %851, %831
  %854 = fmul fast float %851, %847
  %855 = fmul fast float %851, %848
  br label %856

; <label>:856                                     ; preds = %844, %832, %816, %801
  %857 = phi float [ %808, %801 ], [ %825, %816 ], [ %840, %832 ], [ %852, %844 ]
  %858 = phi float [ %809, %801 ], [ %826, %816 ], [ %841, %832 ], [ %853, %844 ]
  %859 = phi float [ %810, %801 ], [ %827, %816 ], [ %842, %832 ], [ %854, %844 ]
  %860 = phi float [ %811, %801 ], [ %828, %816 ], [ %843, %832 ], [ %855, %844 ]
  %861 = fcmp une float %264, 0.000000e+00
  br i1 %861, label %862, label %1002, !dx.controlflow.hints !31

; <label>:862                                     ; preds = %856
  %863 = fsub float -0.000000e+00, %99
  %864 = fsub float -0.000000e+00, %100
  %865 = fsub float -0.000000e+00, %101
  %866 = fmul float %107, %863
  %867 = fmul float %107, %864
  %868 = fmul float %107, %865
  %869 = fmul float %102, %104
  %870 = fmul float %102, %105
  %871 = fmul float %102, %106
  %872 = fadd float %866, %869
  %873 = fadd float %867, %870
  %874 = fadd float %868, %871
  %875 = fmul float %105, %865
  %876 = fmul float %106, %864
  %877 = fsub float %875, %876
  %878 = fmul float %106, %863
  %879 = fmul float %104, %865
  %880 = fsub float %878, %879
  %881 = fmul float %104, %864
  %882 = fmul float %105, %863
  %883 = fsub float %881, %882
  %884 = fadd float %872, %877
  %885 = fadd float %873, %880
  %886 = fadd float %874, %883
  %887 = fmul float %884, 2.000000e+00
  %888 = fmul float %885, 2.000000e+00
  %889 = fmul float %886, 2.000000e+00
  %890 = fmul float %100, %171
  %891 = fmul float %101, %170
  %892 = fsub float %890, %891
  %893 = fmul float %101, %169
  %894 = fmul float %99, %171
  %895 = fsub float %893, %894
  %896 = fmul float %99, %170
  %897 = fmul float %100, %169
  %898 = fsub float %896, %897
  %899 = fmul float %892, 2.000000e+00
  %900 = fmul float %895, 2.000000e+00
  %901 = fmul float %898, 2.000000e+00
  %902 = fmul float %102, %899
  %903 = fmul float %102, %900
  %904 = fmul float %102, %901
  %905 = fadd float %169, %902
  %906 = fadd float %170, %903
  %907 = fadd float %171, %904
  %908 = fmul float %100, %901
  %909 = fmul float %101, %900
  %910 = fsub float %908, %909
  %911 = fmul float %101, %899
  %912 = fmul float %99, %901
  %913 = fsub float %911, %912
  %914 = fmul float %99, %900
  %915 = fmul float %100, %899
  %916 = fsub float %914, %915
  %917 = fadd float %905, %910
  %918 = fadd float %906, %913
  %919 = fadd float %907, %916
  %920 = fadd float %887, %917
  %921 = fadd float %888, %918
  %922 = fadd float %889, %919
  %923 = fmul float %920, %601
  %924 = fmul float %921, %601
  %925 = fmul float %922, %601
  %926 = fadd float %923, %595
  %927 = fadd float %924, %596
  %928 = fadd float %925, %597
  %929 = fmul fast float %199, %102
  %930 = fmul fast float %200, %102
  %931 = fmul fast float %201, %102
  %932 = fmul fast float %202, %99
  %933 = fmul fast float %202, %100
  %934 = fmul fast float %202, %101
  %935 = fadd fast float %932, %929
  %936 = fadd fast float %933, %930
  %937 = fmul fast float %201, %100
  %938 = fmul fast float %200, %101
  %939 = fsub fast float %937, %938
  %940 = fmul fast float %199, %101
  %941 = fmul fast float %201, %99
  %942 = fsub fast float %940, %941
  %943 = fmul fast float %200, %99
  %944 = fmul fast float %199, %100
  %945 = fsub fast float %943, %944
  %946 = fadd fast float %935, %939
  %947 = fadd fast float %936, %942
  %948 = fadd fast float %945, %931
  %949 = fadd fast float %948, %934
  %950 = fmul fast float %202, %102
  %951 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %952 = fsub fast float %950, %951
  %953 = call float @dx.op.dot4.f32(i32 56, float %591, float %592, float %593, float %594, float %946, float %947, float %949, float %952)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %954 = fcmp fast olt float %953, 0.000000e+00
  %955 = fsub fast float -0.000000e+00, %601
  %956 = select i1 %954, float %955, float %601
  %957 = fmul fast float %956, %946
  %958 = fmul fast float %956, %947
  %959 = fmul fast float %956, %949
  %960 = fmul fast float %956, %952
  %961 = fadd fast float %957, %591
  %962 = fadd fast float %958, %592
  %963 = fadd fast float %959, %593
  %964 = fadd fast float %960, %594
  %965 = fsub float %926, %683
  %966 = fsub float %927, %684
  %967 = fsub float %928, %685
  %968 = fmul float %264, %965
  %969 = fmul float %264, %966
  %970 = fmul float %264, %967
  %971 = fadd float %683, %968
  %972 = fadd float %684, %969
  %973 = fadd float %685, %970
  %974 = call float @dx.op.dot4.f32(i32 56, float %961, float %962, float %963, float %964, float %857, float %858, float %859, float %860)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %975 = fcmp fast olt float %974, 0.000000e+00
  %976 = fsub fast float -0.000000e+00, %961
  %977 = fsub fast float -0.000000e+00, %962
  %978 = fsub fast float -0.000000e+00, %963
  %979 = fsub fast float -0.000000e+00, %964
  %980 = select i1 %975, float %976, float %961
  %981 = select i1 %975, float %977, float %962
  %982 = select i1 %975, float %978, float %963
  %983 = select i1 %975, float %979, float %964
  %984 = fsub fast float %980, %857
  %985 = fsub fast float %981, %858
  %986 = fsub fast float %982, %859
  %987 = fsub fast float %983, %860
  %988 = fmul fast float %984, %264
  %989 = fmul fast float %985, %264
  %990 = fmul fast float %986, %264
  %991 = fmul fast float %987, %264
  %992 = fadd fast float %988, %857
  %993 = fadd fast float %989, %858
  %994 = fadd fast float %990, %859
  %995 = fadd fast float %991, %860
  %996 = call float @dx.op.dot4.f32(i32 56, float %992, float %993, float %994, float %995, float %992, float %993, float %994, float %995)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %997 = call float @dx.op.unary.f32(i32 25, float %996)  ; Rsqrt(value)
  %998 = fmul fast float %992, %997
  %999 = fmul fast float %993, %997
  %1000 = fmul fast float %994, %997
  %1001 = fmul fast float %995, %997
  br label %1002

; <label>:1002                                    ; preds = %862, %856
  %1003 = phi float [ %998, %862 ], [ %857, %856 ]
  %1004 = phi float [ %999, %862 ], [ %858, %856 ]
  %1005 = phi float [ %1000, %862 ], [ %859, %856 ]
  %1006 = phi float [ %1001, %862 ], [ %860, %856 ]
  %1007 = phi float [ %971, %862 ], [ %683, %856 ]
  %1008 = phi float [ %972, %862 ], [ %684, %856 ]
  %1009 = phi float [ %973, %862 ], [ %685, %856 ]
  %1010 = fsub float %1007, %50
  %1011 = fsub float %1008, %51
  %1012 = fsub float %1009, %52
  %1013 = fmul float %60, %1012
  %1014 = fmul float %61, %1011
  %1015 = fsub float %1013, %1014
  %1016 = fmul float %61, %1010
  %1017 = fmul float %59, %1012
  %1018 = fsub float %1016, %1017
  %1019 = fmul float %59, %1011
  %1020 = fmul float %60, %1010
  %1021 = fsub float %1019, %1020
  %1022 = fmul float %1015, 2.000000e+00
  %1023 = fmul float %1018, 2.000000e+00
  %1024 = fmul float %1021, 2.000000e+00
  %1025 = fmul float %62, %1022
  %1026 = fmul float %62, %1023
  %1027 = fmul float %62, %1024
  %1028 = fsub float %1010, %1025
  %1029 = fsub float %1011, %1026
  %1030 = fsub float %1012, %1027
  %1031 = fmul float %60, %1024
  %1032 = fmul float %61, %1023
  %1033 = fsub float %1031, %1032
  %1034 = fmul float %61, %1022
  %1035 = fmul float %59, %1024
  %1036 = fsub float %1034, %1035
  %1037 = fmul float %59, %1023
  %1038 = fmul float %60, %1022
  %1039 = fsub float %1037, %1038
  %1040 = fadd float %1028, %1033
  %1041 = fadd float %1029, %1036
  %1042 = fadd float %1030, %1039
  %1043 = fsub fast float -0.000000e+00, %59
  %1044 = fsub fast float -0.000000e+00, %60
  %1045 = fsub fast float -0.000000e+00, %61
  %1046 = fmul fast float %1003, %62
  %1047 = fmul fast float %1004, %62
  %1048 = fmul fast float %1005, %62
  %1049 = fmul fast float %1006, %1043
  %1050 = fmul fast float %1006, %1044
  %1051 = fmul fast float %1006, %1045
  %1052 = fadd fast float %1049, %1046
  %1053 = fadd fast float %1050, %1047
  %1054 = fmul fast float %1005, %1044
  %1055 = fmul fast float %1004, %1045
  %1056 = fsub fast float %1054, %1055
  %1057 = fmul fast float %1003, %1045
  %1058 = fmul fast float %1005, %1043
  %1059 = fsub fast float %1057, %1058
  %1060 = fmul fast float %1004, %1043
  %1061 = fmul fast float %1003, %1044
  %1062 = fsub fast float %1060, %1061
  %1063 = fadd fast float %1052, %1056
  %1064 = fadd fast float %1053, %1059
  %1065 = fadd fast float %1062, %1048
  %1066 = fadd fast float %1065, %1051
  %1067 = fmul fast float %1006, %62
  %1068 = call float @dx.op.dot3.f32(i32 55, float %1043, float %1044, float %1045, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = fsub fast float %1067, %1068
  %1070 = fsub float %1040, %41
  %1071 = fsub float %1041, %42
  %1072 = fsub float %1042, %43
  %1073 = fdiv float 1.000000e+00, %44
  %1074 = fmul float %1073, %1070
  %1075 = fmul float %1073, %1071
  %1076 = fmul float %1073, %1072
  %1077 = fmul float %1074, 5.000000e-01
  %1078 = fmul float %1075, 5.000000e-01
  %1079 = fmul float %1076, 5.000000e-01
  %1080 = fadd float %1077, 5.000000e-01
  %1081 = fadd float %1078, 5.000000e-01
  %1082 = fadd float %1079, 5.000000e-01
  %1083 = call float @dx.op.unary.f32(i32 7, float %1080), !dx.precise !24  ; Saturate(value)
  %1084 = call float @dx.op.unary.f32(i32 7, float %1081), !dx.precise !24  ; Saturate(value)
  %1085 = call float @dx.op.unary.f32(i32 7, float %1082), !dx.precise !24  ; Saturate(value)
  %1086 = fmul float %1083, 2.097151e+06
  %1087 = fmul float %1084, 2.097151e+06
  %1088 = fmul float %1085, 2.097151e+06
  %1089 = fptoui float %1086 to i32
  %1090 = fptoui float %1087 to i32
  %1091 = fptoui float %1088 to i32
  %1092 = shl i32 %1090, 21
  %1093 = or i32 %1092, %1089
  %1094 = lshr i32 %1090, 11
  %1095 = shl i32 %1091, 10
  %1096 = or i32 %1095, %1094
  %1097 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1098 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1099 = fcmp fast oge float %1097, %1098
  %1100 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1101 = fcmp fast oge float %1097, %1100
  %1102 = and i1 %1099, %1101
  br i1 %1102, label %1103, label %1106, !dx.controlflow.hints !32

; <label>:1103                                    ; preds = %1002
  %1104 = fcmp fast olt float %1066, 0.000000e+00
  %1105 = select i1 %1104, float 5.000000e+00, float 4.000000e+00
  br label %1114

; <label>:1106                                    ; preds = %1002
  %1107 = fcmp fast ult float %1100, %1098
  br i1 %1107, label %1111, label %1108, !dx.controlflow.hints !33

; <label>:1108                                    ; preds = %1106
  %1109 = fcmp fast olt float %1064, 0.000000e+00
  %1110 = select i1 %1109, float 3.000000e+00, float 2.000000e+00
  br label %1114

; <label>:1111                                    ; preds = %1106
  %1112 = fcmp fast olt float %1063, 0.000000e+00
  %1113 = select i1 %1112, float 1.000000e+00, float 0.000000e+00
  br label %1114

; <label>:1114                                    ; preds = %1111, %1108, %1103
  %1115 = phi float [ %1105, %1103 ], [ %1110, %1108 ], [ %1113, %1111 ]
  %1116 = fmul fast float %1115, 5.000000e-01
  %1117 = fptoui float %1116 to i32
  %1118 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1119 = call float @dx.op.binary.f32(i32 35, float %1100, float %1097)  ; FMax(a,b)
  %1120 = call float @dx.op.binary.f32(i32 35, float %1098, float %1119)  ; FMax(a,b)
  %1121 = fcmp fast ogt float %1118, %1120
  %1122 = select i1 %1121, i32 3, i32 %1117
  %1123 = icmp eq i32 %1122, 0
  %1124 = select i1 %1123, float %1064, float %1063
  %1125 = select i1 %1123, float %1066, float %1064
  %1126 = select i1 %1123, float %1069, float %1066
  %1127 = select i1 %1123, float %1063, float %1069
  %1128 = icmp eq i32 %1122, 1
  %1129 = select i1 %1128, float %1126, float %1125
  %1130 = select i1 %1128, float %1127, float %1126
  %1131 = select i1 %1128, float %1125, float %1127
  %1132 = icmp eq i32 %1122, 2
  %1133 = select i1 %1132, float %1131, float %1130
  %1134 = select i1 %1132, float %1130, float %1131
  %1135 = fcmp fast ogt float %1134, 0.000000e+00
  %1136 = select i1 %1135, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1137 = fmul fast float %1136, %1124
  %1138 = fmul fast float %1136, %1129
  %1139 = fmul fast float %1136, %1133
  %1140 = fadd fast float %1137, 1.000000e+00
  %1141 = fmul fast float %1140, 5.000000e-01
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1143 = fmul fast float %1142, 1.023000e+03
  %1144 = fptoui float %1143 to i32
  %1145 = fadd fast float %1138, 1.000000e+00
  %1146 = fmul fast float %1145, 5.000000e-01
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1148 = fmul fast float %1147, 1.023000e+03
  %1149 = fptoui float %1148 to i32
  %1150 = fadd fast float %1139, 1.000000e+00
  %1151 = fmul fast float %1150, 5.000000e-01
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1153 = fmul fast float %1152, 5.110000e+02
  %1154 = fptoui float %1153 to i32
  %1155 = shl i32 %1149, 10
  %1156 = shl i32 %1154, 20
  %1157 = fcmp fast ogt float %205, 0.000000e+00
  %1158 = select i1 %1157, i32 0, i32 536870912
  %1159 = shl i32 %1122, 30
  %1160 = or i32 %1144, %1158
  %1161 = or i32 %1160, %1159
  %1162 = or i32 %1161, %1155
  %1163 = or i32 %1162, %1156
  %1164 = select i1 %27, i32 %1093, i32 0
  %1165 = select i1 %27, i32 %1096, i32 0
  %1166 = shl i32 %82, 3
  %1167 = add i32 %34, %1166
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1167, i32 undef, i32 %1164, i32 %1165, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1168 = shl i32 %82, 2
  %1169 = add i32 %32, %1168
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1169, i32 undef, i32 %1163, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1170

; <label>:1170                                    ; preds = %1114, %77
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
!16 = !{void ()* @cs_skinning_deform_factors_weight_blend_unified_main, !"cs_skinning_deform_factors_weight_blend_unified_main", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 64, i32 1, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

