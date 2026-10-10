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
; shader hash: cb8be004bd6434099a0e6929095e3fa7
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

define void @cs_skinning_deform_factors_weight_blend_unified_unpacked_positions_main() {
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
  %33 = extractvalue %dx.types.ResRet.i32 %30, 2
  %34 = extractvalue %dx.types.ResRet.i32 %30, 3
  %35 = and i32 %31, 2147483647
  %36 = add nuw nsw i32 %18, 32
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = extractvalue %dx.types.ResRet.i32 %37, 1
  %40 = extractvalue %dx.types.ResRet.i32 %37, 2
  %41 = extractvalue %dx.types.ResRet.i32 %37, 3
  %42 = bitcast i32 %38 to float
  %43 = bitcast i32 %39 to float
  %44 = bitcast i32 %40 to float
  %45 = bitcast i32 %41 to float
  %46 = add nuw nsw i32 %18, 48
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = extractvalue %dx.types.ResRet.i32 %47, 2
  %51 = bitcast i32 %48 to float
  %52 = bitcast i32 %49 to float
  %53 = bitcast i32 %50 to float
  %54 = add nuw nsw i32 %18, 64
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = extractvalue %dx.types.ResRet.i32 %55, 1
  %58 = extractvalue %dx.types.ResRet.i32 %55, 2
  %59 = extractvalue %dx.types.ResRet.i32 %55, 3
  %60 = bitcast i32 %56 to float
  %61 = bitcast i32 %57 to float
  %62 = bitcast i32 %58 to float
  %63 = bitcast i32 %59 to float
  %64 = add nuw nsw i32 %18, 80
  %65 = shl nuw nsw i32 %20, 3
  %66 = add nsw i32 %65, -8
  %67 = add nsw i32 %66, %64
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = extractvalue %dx.types.ResRet.i32 %68, 1
  %71 = icmp ugt i32 %20, 1
  br i1 %71, label %72, label %78, !dx.controlflow.hints !19

; <label>:72                                      ; preds = %0
  %73 = add nsw i32 %65, -16
  %74 = add nsw i32 %73, %64
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = sub i32 %69, %76
  br label %78

; <label>:78                                      ; preds = %72, %0
  %79 = phi i32 [ %77, %72 ], [ %69, %0 ]
  %80 = phi i32 [ %76, %72 ], [ 0, %0 ]
  %81 = icmp ult i32 %9, %19
  br i1 %81, label %82, label %1176, !dx.controlflow.hints !20

; <label>:82                                      ; preds = %78
  %83 = add i32 %21, %9
  %84 = add i32 %70, %83
  %85 = shl i32 %84, 2
  %86 = lshr i32 %84, 8
  %87 = and i32 %86, 4194303
  %88 = add i32 %87, %26
  %89 = shl i32 %88, 2
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = shl i32 %91, 10
  %93 = and i32 %85, 1020
  %94 = or i32 %92, %93
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = and i32 %96, 65535
  %98 = add i32 %97, %28
  %99 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %98, i32 0)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = extractvalue %dx.types.ResRet.f32 %99, 1
  %102 = extractvalue %dx.types.ResRet.f32 %99, 2
  %103 = extractvalue %dx.types.ResRet.f32 %99, 3
  %104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %98, i32 16)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = extractvalue %dx.types.ResRet.f32 %104, 1
  %107 = extractvalue %dx.types.ResRet.f32 %104, 2
  %108 = extractvalue %dx.types.ResRet.f32 %104, 3
  %109 = icmp slt i32 %31, 0
  %110 = shl i32 %83, 3
  %111 = shl i32 %83, 2
  br i1 %109, label %112, label %120, !dx.controlflow.hints !21

; <label>:112                                     ; preds = %82
  %113 = add i32 %35, %110
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = extractvalue %dx.types.ResRet.i32 %114, 1
  %117 = add i32 %32, %111
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  br label %144

; <label>:120                                     ; preds = %82
  %121 = lshr i32 %83, 7
  %122 = and i32 %121, 4194303
  %123 = add i32 %122, %24
  %124 = shl i32 %123, 2
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = shl i32 %126, 10
  %128 = and i32 %110, 1016
  %129 = or i32 %127, %128
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = extractvalue %dx.types.ResRet.i32 %130, 1
  %133 = lshr i32 %83, 8
  %134 = and i32 %133, 4194303
  %135 = add i32 %134, %25
  %136 = shl i32 %135, 2
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = shl i32 %138, 10
  %140 = and i32 %111, 1020
  %141 = or i32 %139, %140
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  br label %144

; <label>:144                                     ; preds = %120, %112
  %145 = phi i32 [ %115, %112 ], [ %131, %120 ]
  %146 = phi i32 [ %116, %112 ], [ %132, %120 ]
  %147 = phi i32 [ %119, %112 ], [ %143, %120 ]
  %148 = and i32 %145, 2097151
  %149 = uitofp i32 %148 to float
  %150 = lshr i32 %145, 21
  %151 = shl i32 %146, 11
  %152 = and i32 %151, 2095104
  %153 = or i32 %152, %150
  %154 = uitofp i32 %153 to float
  %155 = lshr i32 %146, 10
  %156 = and i32 %155, 2097151
  %157 = uitofp i32 %156 to float
  %158 = fdiv float %149, 2.097151e+06
  %159 = fdiv float %154, 2.097151e+06
  %160 = fdiv float %157, 2.097151e+06
  %161 = fmul float %158, 2.000000e+00
  %162 = fmul float %159, 2.000000e+00
  %163 = fmul float %160, 2.000000e+00
  %164 = fadd float %161, -1.000000e+00
  %165 = fadd float %162, -1.000000e+00
  %166 = fadd float %163, -1.000000e+00
  %167 = fmul float %45, %164
  %168 = fmul float %45, %165
  %169 = fmul float %45, %166
  %170 = fadd float %42, %167
  %171 = fadd float %43, %168
  %172 = fadd float %44, %169
  %173 = lshr i32 %147, 30
  %174 = and i32 %147, 1023
  %175 = uitofp i32 %174 to float
  %176 = lshr i32 %147, 10
  %177 = and i32 %176, 1023
  %178 = uitofp i32 %177 to float
  %179 = lshr i32 %147, 20
  %180 = and i32 %179, 511
  %181 = uitofp i32 %180 to float
  %182 = fmul fast float %175, 0x3F56A64800000000
  %183 = fadd fast float %182, 0xBFE6A09E60000000
  %184 = fmul fast float %178, 0x3F56A64800000000
  %185 = fadd fast float %184, 0xBFE6A09E60000000
  %186 = fmul fast float %181, 0x3F66ABF460000000
  %187 = fadd fast float %186, 0xBFE6A09E60000000
  %188 = call float @dx.op.dot3.f32(i32 55, float %183, float %185, float %187, float %183, float %185, float %187)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fsub fast float 1.000000e+00, %189
  %191 = call float @dx.op.unary.f32(i32 24, float %190)  ; Sqrt(value)
  %192 = icmp eq i32 %173, 0
  br i1 %192, label %199, label %193, !dx.controlflow.hints !22

; <label>:193                                     ; preds = %144
  %194 = icmp eq i32 %173, 1
  br i1 %194, label %199, label %195, !dx.controlflow.hints !23

; <label>:195                                     ; preds = %193
  %196 = icmp eq i32 %173, 2
  %197 = select i1 %196, float %191, float %187
  %198 = select i1 %196, float %187, float %191
  br label %199

; <label>:199                                     ; preds = %195, %193, %144
  %200 = phi float [ %191, %144 ], [ %183, %193 ], [ %183, %195 ]
  %201 = phi float [ %183, %144 ], [ %191, %193 ], [ %185, %195 ]
  %202 = phi float [ %185, %144 ], [ %185, %193 ], [ %197, %195 ]
  %203 = phi float [ %187, %144 ], [ %187, %193 ], [ %198, %195 ]
  %204 = and i32 %147, 536870912
  %205 = icmp ne i32 %204, 0
  %206 = select i1 %205, float -1.000000e+00, float 1.000000e+00
  %207 = call float @dx.op.dot4.f32(i32 56, float %100, float %101, float %102, float %103, float %100, float %101, float %102, float %103)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %208 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %209 = fdiv fast float 1.000000e+00, %208
  %210 = fmul fast float %209, %103
  %211 = fmul fast float %209, %100
  %212 = fmul fast float %209, %101
  %213 = fmul fast float %209, %102
  %214 = fmul fast float %209, %108
  %215 = fmul fast float %209, %105
  %216 = fmul fast float %209, %106
  %217 = fmul fast float %209, %107
  %218 = fmul fast float %212, %172
  %219 = fmul fast float %213, %171
  %220 = fsub fast float %218, %219
  %221 = fmul fast float %213, %170
  %222 = fmul fast float %211, %172
  %223 = fsub fast float %221, %222
  %224 = fmul fast float %211, %171
  %225 = fmul fast float %212, %170
  %226 = fsub fast float %224, %225
  %227 = fmul fast float %210, %170
  %228 = fmul fast float %210, %171
  %229 = fmul fast float %210, %172
  %230 = fadd fast float %220, %227
  %231 = fadd fast float %223, %228
  %232 = fadd fast float %226, %229
  %233 = fmul fast float %215, %210
  %234 = fmul fast float %216, %210
  %235 = fmul fast float %217, %210
  %236 = fmul fast float %211, %214
  %237 = fmul fast float %212, %214
  %238 = fmul fast float %213, %214
  %239 = fmul fast float %212, %217
  %240 = fmul fast float %213, %216
  %241 = fmul fast float %213, %215
  %242 = fmul fast float %211, %217
  %243 = fmul fast float %211, %216
  %244 = fmul fast float %212, %215
  %245 = fsub fast float %233, %236
  %246 = fsub fast float %245, %240
  %247 = fadd fast float %246, %239
  %248 = fsub fast float %234, %237
  %249 = fsub fast float %248, %242
  %250 = fadd fast float %249, %241
  %251 = fsub fast float %235, %238
  %252 = fsub fast float %251, %244
  %253 = fadd fast float %252, %243
  %254 = fmul fast float %211, 2.000000e+00
  %255 = fmul fast float %212, 2.000000e+00
  %256 = fmul fast float %213, 2.000000e+00
  %257 = fmul fast float %232, %255
  %258 = fmul fast float %231, %256
  %259 = fmul fast float %230, %256
  %260 = fmul fast float %232, %254
  %261 = fmul fast float %231, %254
  %262 = fmul fast float %230, %255
  %263 = lshr i32 %96, 16
  %264 = uitofp i32 %263 to float
  %265 = fdiv float %264, 6.553500e+04
  br i1 %71, label %266, label %579

; <label>:266                                     ; preds = %199
  %267 = and i32 %16, 65535
  br label %268

; <label>:268                                     ; preds = %445, %266
  %269 = phi float [ %338, %445 ], [ 0.000000e+00, %266 ]
  %270 = phi float [ %339, %445 ], [ 0.000000e+00, %266 ]
  %271 = phi float [ %340, %445 ], [ 0.000000e+00, %266 ]
  %272 = phi float [ %341, %445 ], [ 0.000000e+00, %266 ]
  %273 = phi float [ %330, %445 ], [ 0.000000e+00, %266 ]
  %274 = phi float [ %331, %445 ], [ 0.000000e+00, %266 ]
  %275 = phi float [ %332, %445 ], [ 0.000000e+00, %266 ]
  %276 = phi float [ %333, %445 ], [ 0.000000e+00, %266 ]
  %277 = phi float [ %311, %445 ], [ 0.000000e+00, %266 ]
  %278 = phi float [ %567, %445 ], [ 0.000000e+00, %266 ]
  %279 = phi float [ %568, %445 ], [ 0.000000e+00, %266 ]
  %280 = phi float [ %569, %445 ], [ 0.000000e+00, %266 ]
  %281 = phi float [ %446, %445 ], [ 0.000000e+00, %266 ]
  %282 = phi float [ %447, %445 ], [ 0.000000e+00, %266 ]
  %283 = phi float [ %448, %445 ], [ 0.000000e+00, %266 ]
  %284 = phi float [ %449, %445 ], [ 0.000000e+00, %266 ]
  %285 = phi float [ %450, %445 ], [ 0.000000e+00, %266 ]
  %286 = phi float [ %451, %445 ], [ 0.000000e+00, %266 ]
  %287 = phi float [ %452, %445 ], [ 0.000000e+00, %266 ]
  %288 = phi float [ %573, %445 ], [ 0.000000e+00, %266 ]
  %289 = phi float [ %574, %445 ], [ 0.000000e+00, %266 ]
  %290 = phi float [ %575, %445 ], [ 0.000000e+00, %266 ]
  %291 = phi i32 [ %576, %445 ], [ 1, %266 ]
  %292 = mul i32 %291, %79
  %293 = add i32 %84, %292
  %294 = shl i32 %293, 2
  %295 = lshr i32 %293, 8
  %296 = and i32 %295, 4194303
  %297 = add i32 %296, %26
  %298 = shl i32 %297, 2
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = shl i32 %300, 10
  %302 = and i32 %294, 1020
  %303 = or i32 %301, %302
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = lshr i32 %305, 16
  %308 = uitofp i32 %307 to float
  %309 = fmul float %308, 0x3EF0000000000000
  %310 = add i32 %306, %28
  %311 = fadd float %277, %309
  %312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %310, i32 0)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = extractvalue %dx.types.ResRet.f32 %312, 1
  %315 = extractvalue %dx.types.ResRet.f32 %312, 2
  %316 = extractvalue %dx.types.ResRet.f32 %312, 3
  %317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %310, i32 16)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = extractvalue %dx.types.ResRet.f32 %317, 3
  %322 = call float @dx.op.dot4.f32(i32 56, float %100, float %101, float %102, float %103, float %313, float %314, float %315, float %316), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %323 = fcmp olt float %322, 0.000000e+00
  %324 = fsub float -0.000000e+00, %309
  %325 = select i1 %323, float %324, float %309
  %326 = fmul float %313, %325
  %327 = fmul float %314, %325
  %328 = fmul float %315, %325
  %329 = fmul float %316, %325
  %330 = fadd float %273, %326
  %331 = fadd float %274, %327
  %332 = fadd float %275, %328
  %333 = fadd float %276, %329
  %334 = fmul float %318, %325
  %335 = fmul float %319, %325
  %336 = fmul float %320, %325
  %337 = fmul float %321, %325
  %338 = fadd float %269, %334
  %339 = fadd float %270, %335
  %340 = fadd float %271, %336
  %341 = fadd float %272, %337
  %342 = fcmp une float %265, 0.000000e+00
  %343 = fsub float -0.000000e+00, %313
  %344 = fsub float -0.000000e+00, %314
  %345 = fsub float -0.000000e+00, %315
  br i1 %342, label %346, label %445, !dx.controlflow.hints !25

; <label>:346                                     ; preds = %268
  %347 = fmul float %321, %343
  %348 = fmul float %321, %344
  %349 = fmul float %321, %345
  %350 = fmul float %316, %318
  %351 = fmul float %316, %319
  %352 = fmul float %316, %320
  %353 = fadd float %347, %350
  %354 = fadd float %348, %351
  %355 = fadd float %349, %352
  %356 = fmul float %319, %345
  %357 = fmul float %320, %344
  %358 = fsub float %356, %357
  %359 = fmul float %320, %343
  %360 = fmul float %318, %345
  %361 = fsub float %359, %360
  %362 = fmul float %318, %344
  %363 = fmul float %319, %343
  %364 = fsub float %362, %363
  %365 = fadd float %353, %358
  %366 = fadd float %354, %361
  %367 = fadd float %355, %364
  %368 = fmul float %365, 2.000000e+00
  %369 = fmul float %366, 2.000000e+00
  %370 = fmul float %367, 2.000000e+00
  %371 = fmul float %172, %314
  %372 = fmul float %171, %315
  %373 = fsub float %371, %372
  %374 = fmul float %170, %315
  %375 = fmul float %172, %313
  %376 = fsub float %374, %375
  %377 = fmul float %171, %313
  %378 = fmul float %170, %314
  %379 = fsub float %377, %378
  %380 = fmul float %373, 2.000000e+00
  %381 = fmul float %376, 2.000000e+00
  %382 = fmul float %379, 2.000000e+00
  %383 = fmul float %316, %380
  %384 = fmul float %316, %381
  %385 = fmul float %316, %382
  %386 = fadd float %170, %383
  %387 = fadd float %171, %384
  %388 = fadd float %172, %385
  %389 = fmul float %314, %382
  %390 = fmul float %315, %381
  %391 = fsub float %389, %390
  %392 = fmul float %315, %380
  %393 = fmul float %313, %382
  %394 = fsub float %392, %393
  %395 = fmul float %313, %381
  %396 = fmul float %314, %380
  %397 = fsub float %395, %396
  %398 = fadd float %386, %391
  %399 = fadd float %387, %394
  %400 = fadd float %388, %397
  %401 = fadd float %368, %398
  %402 = fadd float %369, %399
  %403 = fadd float %370, %400
  %404 = fmul float %309, %401
  %405 = fmul float %309, %402
  %406 = fmul float %309, %403
  %407 = fadd float %285, %404
  %408 = fadd float %286, %405
  %409 = fadd float %287, %406
  %410 = fmul fast float %316, %200
  %411 = fmul fast float %316, %201
  %412 = fmul fast float %316, %202
  %413 = fmul fast float %313, %203
  %414 = fmul fast float %314, %203
  %415 = fmul fast float %315, %203
  %416 = fadd fast float %410, %413
  %417 = fadd fast float %411, %414
  %418 = fadd fast float %412, %415
  %419 = fmul fast float %314, %202
  %420 = fmul fast float %315, %201
  %421 = fsub fast float %419, %420
  %422 = fmul fast float %315, %200
  %423 = fmul fast float %313, %202
  %424 = fsub fast float %422, %423
  %425 = fmul fast float %313, %201
  %426 = fmul fast float %314, %200
  %427 = fsub fast float %425, %426
  %428 = fadd fast float %416, %421
  %429 = fadd fast float %417, %424
  %430 = fadd fast float %418, %427
  %431 = fmul fast float %316, %203
  %432 = call float @dx.op.dot3.f32(i32 55, float %313, float %314, float %315, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %433 = fsub fast float %431, %432
  %434 = call float @dx.op.dot4.f32(i32 56, float %281, float %282, float %283, float %284, float %428, float %429, float %430, float %433)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %435 = fcmp fast olt float %434, 0.000000e+00
  %436 = select i1 %435, float %324, float %309
  %437 = fmul fast float %436, %428
  %438 = fmul fast float %436, %429
  %439 = fmul fast float %436, %430
  %440 = fmul fast float %436, %433
  %441 = fadd fast float %437, %281
  %442 = fadd fast float %438, %282
  %443 = fadd fast float %439, %283
  %444 = fadd fast float %440, %284
  br label %445

; <label>:445                                     ; preds = %346, %268
  %446 = phi float [ %441, %346 ], [ %281, %268 ]
  %447 = phi float [ %442, %346 ], [ %282, %268 ]
  %448 = phi float [ %443, %346 ], [ %283, %268 ]
  %449 = phi float [ %444, %346 ], [ %284, %268 ]
  %450 = phi float [ %407, %346 ], [ %285, %268 ]
  %451 = phi float [ %408, %346 ], [ %286, %268 ]
  %452 = phi float [ %409, %346 ], [ %287, %268 ]
  %453 = fsub fast float -0.000000e+00, %316
  %454 = fsub fast float -0.000000e+00, %318
  %455 = fsub fast float -0.000000e+00, %319
  %456 = fsub fast float -0.000000e+00, %320
  %457 = fsub fast float -0.000000e+00, %321
  %458 = select i1 %323, float %454, float %318
  %459 = select i1 %323, float %455, float %319
  %460 = select i1 %323, float %456, float %320
  %461 = select i1 %323, float %457, float %321
  %462 = select i1 %323, float %343, float %313
  %463 = select i1 %323, float %344, float %314
  %464 = select i1 %323, float %345, float %315
  %465 = select i1 %323, float %453, float %316
  %466 = call float @dx.op.dot4.f32(i32 56, float %462, float %463, float %464, float %465, float %462, float %463, float %464, float %465)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %467 = call float @dx.op.unary.f32(i32 24, float %466)  ; Sqrt(value)
  %468 = fdiv fast float 1.000000e+00, %467
  %469 = fmul fast float %468, %465
  %470 = fmul fast float %468, %462
  %471 = fmul fast float %468, %463
  %472 = fmul fast float %468, %464
  %473 = fmul fast float %468, %461
  %474 = fmul fast float %468, %458
  %475 = fmul fast float %468, %459
  %476 = fmul fast float %468, %460
  %477 = fmul fast float %471, %172
  %478 = fmul fast float %472, %171
  %479 = fsub fast float %477, %478
  %480 = fmul fast float %472, %170
  %481 = fmul fast float %470, %172
  %482 = fsub fast float %480, %481
  %483 = fmul fast float %470, %171
  %484 = fmul fast float %471, %170
  %485 = fsub fast float %483, %484
  %486 = fmul fast float %469, %170
  %487 = fmul fast float %469, %171
  %488 = fmul fast float %469, %172
  %489 = fadd fast float %479, %486
  %490 = fadd fast float %482, %487
  %491 = fadd fast float %485, %488
  %492 = fmul fast float %474, %469
  %493 = fmul fast float %475, %469
  %494 = fmul fast float %476, %469
  %495 = fmul fast float %470, %473
  %496 = fmul fast float %471, %473
  %497 = fmul fast float %472, %473
  %498 = fmul fast float %471, %476
  %499 = fmul fast float %472, %475
  %500 = fmul fast float %472, %474
  %501 = fmul fast float %470, %476
  %502 = fmul fast float %470, %475
  %503 = fmul fast float %471, %474
  %504 = fsub fast float %492, %495
  %505 = fsub fast float %504, %499
  %506 = fadd fast float %505, %498
  %507 = fsub fast float %493, %496
  %508 = fsub fast float %507, %501
  %509 = fadd fast float %508, %500
  %510 = fsub fast float %494, %497
  %511 = fsub fast float %510, %503
  %512 = fadd fast float %511, %502
  %513 = fmul fast float %506, 2.000000e+00
  %514 = fmul fast float %509, 2.000000e+00
  %515 = fmul fast float %512, 2.000000e+00
  %516 = fmul fast float %470, 2.000000e+00
  %517 = fmul fast float %471, 2.000000e+00
  %518 = fmul fast float %472, 2.000000e+00
  %519 = fmul fast float %491, %517
  %520 = fmul fast float %490, %518
  %521 = fmul fast float %489, %518
  %522 = fmul fast float %491, %516
  %523 = fmul fast float %490, %516
  %524 = fmul fast float %489, %517
  %525 = fmul fast float %247, -2.000000e+00
  %526 = fadd fast float %258, %525
  %527 = fsub fast float %526, %257
  %528 = fadd fast float %527, %513
  %529 = fsub fast float %528, %520
  %530 = fadd fast float %529, %519
  %531 = fmul fast float %250, -2.000000e+00
  %532 = fadd fast float %260, %531
  %533 = fsub fast float %532, %259
  %534 = fadd fast float %533, %514
  %535 = fsub fast float %534, %522
  %536 = fadd fast float %535, %521
  %537 = fmul fast float %253, -2.000000e+00
  %538 = fadd fast float %262, %537
  %539 = fsub fast float %538, %261
  %540 = fadd fast float %539, %515
  %541 = fsub fast float %540, %524
  %542 = fadd fast float %541, %523
  %543 = sub i32 %83, %80
  %544 = add nsw i32 %291, -1
  %545 = mul i32 %544, %79
  %546 = add i32 %543, %70
  %547 = add i32 %546, %545
  %548 = shl i32 %547, 2
  %549 = lshr i32 %547, 8
  %550 = and i32 %549, 4194303
  %551 = add i32 %550, %34
  %552 = shl i32 %551, 2
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = shl i32 %554, 10
  %556 = and i32 %548, 1020
  %557 = or i32 %555, %556
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 65535
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = lshr i32 %559, 16
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = fmul fast float %530, %561
  %565 = fmul fast float %536, %561
  %566 = fmul fast float %542, %561
  %567 = fadd fast float %564, %278
  %568 = fadd fast float %565, %279
  %569 = fadd fast float %566, %280
  %570 = fmul fast float %563, %530
  %571 = fmul fast float %563, %536
  %572 = fmul fast float %563, %542
  %573 = fadd fast float %570, %288
  %574 = fadd fast float %571, %289
  %575 = fadd fast float %572, %290
  %576 = add nuw nsw i32 %291, 1
  %577 = icmp eq i32 %576, %267
  br i1 %577, label %578, label %268, !llvm.loop !26

; <label>:578                                     ; preds = %445
  br label %579

; <label>:579                                     ; preds = %578, %199
  %580 = phi float [ 0.000000e+00, %199 ], [ %338, %578 ]
  %581 = phi float [ 0.000000e+00, %199 ], [ %339, %578 ]
  %582 = phi float [ 0.000000e+00, %199 ], [ %340, %578 ]
  %583 = phi float [ 0.000000e+00, %199 ], [ %341, %578 ]
  %584 = phi float [ 0.000000e+00, %199 ], [ %330, %578 ]
  %585 = phi float [ 0.000000e+00, %199 ], [ %331, %578 ]
  %586 = phi float [ 0.000000e+00, %199 ], [ %332, %578 ]
  %587 = phi float [ 0.000000e+00, %199 ], [ %333, %578 ]
  %588 = phi float [ 0.000000e+00, %199 ], [ %311, %578 ]
  %589 = phi float [ 0.000000e+00, %199 ], [ %567, %578 ]
  %590 = phi float [ 0.000000e+00, %199 ], [ %568, %578 ]
  %591 = phi float [ 0.000000e+00, %199 ], [ %569, %578 ]
  %592 = phi float [ 0.000000e+00, %199 ], [ %446, %578 ]
  %593 = phi float [ 0.000000e+00, %199 ], [ %447, %578 ]
  %594 = phi float [ 0.000000e+00, %199 ], [ %448, %578 ]
  %595 = phi float [ 0.000000e+00, %199 ], [ %449, %578 ]
  %596 = phi float [ 0.000000e+00, %199 ], [ %450, %578 ]
  %597 = phi float [ 0.000000e+00, %199 ], [ %451, %578 ]
  %598 = phi float [ 0.000000e+00, %199 ], [ %452, %578 ]
  %599 = phi float [ 0.000000e+00, %199 ], [ %573, %578 ]
  %600 = phi float [ 0.000000e+00, %199 ], [ %574, %578 ]
  %601 = phi float [ 0.000000e+00, %199 ], [ %575, %578 ]
  %602 = fsub float 1.000000e+00, %588
  %603 = fmul float %100, %602
  %604 = fmul float %101, %602
  %605 = fmul float %102, %602
  %606 = fmul float %103, %602
  %607 = fadd float %584, %603
  %608 = fadd float %585, %604
  %609 = fadd float %586, %605
  %610 = fadd float %587, %606
  %611 = fmul float %105, %602
  %612 = fmul float %106, %602
  %613 = fmul float %107, %602
  %614 = fmul float %108, %602
  %615 = fadd float %580, %611
  %616 = fadd float %581, %612
  %617 = fadd float %582, %613
  %618 = fadd float %583, %614
  %619 = call float @dx.op.dot4.f32(i32 56, float %607, float %608, float %609, float %610, float %607, float %608, float %609, float %610), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %620 = call float @dx.op.unary.f32(i32 24, float %619), !dx.precise !24  ; Sqrt(value)
  %621 = fdiv float 1.000000e+00, %620
  %622 = fmul float %610, %621
  %623 = fmul float %607, %621
  %624 = fmul float %608, %621
  %625 = fmul float %609, %621
  %626 = fmul float %618, %621
  %627 = fmul float %615, %621
  %628 = fmul float %616, %621
  %629 = fmul float %617, %621
  %630 = fmul float %172, %624
  %631 = fmul float %171, %625
  %632 = fsub float %630, %631
  %633 = fmul float %170, %625
  %634 = fmul float %172, %623
  %635 = fsub float %633, %634
  %636 = fmul float %171, %623
  %637 = fmul float %170, %624
  %638 = fsub float %636, %637
  %639 = fmul float %170, %622
  %640 = fmul float %171, %622
  %641 = fmul float %172, %622
  %642 = fadd float %639, %632
  %643 = fadd float %640, %635
  %644 = fadd float %641, %638
  %645 = fmul float %627, %622
  %646 = fmul float %628, %622
  %647 = fmul float %629, %622
  %648 = fmul float %623, %626
  %649 = fmul float %624, %626
  %650 = fmul float %625, %626
  %651 = fsub float %645, %648
  %652 = fsub float %646, %649
  %653 = fsub float %647, %650
  %654 = fmul float %624, %629
  %655 = fmul float %625, %628
  %656 = fsub float %654, %655
  %657 = fmul float %625, %627
  %658 = fmul float %623, %629
  %659 = fsub float %657, %658
  %660 = fmul float %623, %628
  %661 = fmul float %624, %627
  %662 = fsub float %660, %661
  %663 = fadd float %651, %656
  %664 = fadd float %652, %659
  %665 = fadd float %653, %662
  %666 = fmul float %663, 2.000000e+00
  %667 = fmul float %664, 2.000000e+00
  %668 = fmul float %665, 2.000000e+00
  %669 = fadd float %170, %666
  %670 = fadd float %171, %667
  %671 = fadd float %172, %668
  %672 = fmul float %623, 2.000000e+00
  %673 = fmul float %624, 2.000000e+00
  %674 = fmul float %625, 2.000000e+00
  %675 = fmul float %673, %644
  %676 = fmul float %674, %643
  %677 = fsub float %675, %676
  %678 = fmul float %674, %642
  %679 = fmul float %672, %644
  %680 = fsub float %678, %679
  %681 = fmul float %672, %643
  %682 = fmul float %673, %642
  %683 = fsub float %681, %682
  %684 = fadd float %669, %677
  %685 = fadd float %670, %680
  %686 = fadd float %671, %683
  %687 = fmul fast float %622, %200
  %688 = fmul fast float %622, %201
  %689 = fmul fast float %622, %202
  %690 = fmul fast float %623, %203
  %691 = fmul fast float %624, %203
  %692 = fmul fast float %625, %203
  %693 = fadd fast float %687, %690
  %694 = fadd fast float %688, %691
  %695 = fadd fast float %689, %692
  %696 = fmul fast float %624, %202
  %697 = fmul fast float %625, %201
  %698 = fsub fast float %696, %697
  %699 = fmul fast float %625, %200
  %700 = fmul fast float %623, %202
  %701 = fsub fast float %699, %700
  %702 = fmul fast float %623, %201
  %703 = fmul fast float %624, %200
  %704 = fsub fast float %702, %703
  %705 = fadd fast float %693, %698
  %706 = fadd fast float %694, %701
  %707 = fadd fast float %695, %704
  %708 = fmul fast float %622, %203
  %709 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = fsub fast float %708, %709
  %711 = fmul fast float %706, %706
  %712 = fmul fast float %711, 2.000000e+00
  %713 = fmul fast float %707, %707
  %714 = fmul fast float %713, 2.000000e+00
  %715 = fmul fast float %705, 2.000000e+00
  %716 = fmul fast float %715, %706
  %717 = fmul fast float %710, 2.000000e+00
  %718 = fmul fast float %717, %707
  %719 = fsub fast float %716, %718
  %720 = fmul fast float %706, %705
  %721 = fmul fast float %707, %710
  %722 = fmul fast float %705, %705
  %723 = fmul fast float %722, 2.000000e+00
  %724 = fsub fast float 1.000000e+00, %723
  %725 = fsub fast float %724, %714
  %726 = fmul fast float %715, %707
  %727 = fmul fast float %717, %706
  %728 = fsub fast float %726, %727
  %729 = fmul fast float %707, %706
  %730 = fmul fast float %705, %710
  %731 = fadd fast float %729, %730
  %732 = fmul fast float %719, %206
  %733 = fmul fast float %725, %206
  %734 = fmul fast float %206, 2.000000e+00
  %735 = fmul fast float %734, %731
  %736 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %589, float %590, float %591)  ; Dot3(ax,ay,az,bx,by,bz)
  %737 = call float @dx.op.unary.f32(i32 25, float %736)  ; Rsqrt(value)
  %738 = fmul fast float %737, 0x3FECCCCCC0000000
  %739 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %738)  ; FMin(a,b)
  %740 = fmul fast float %739, %589
  %741 = fmul fast float %739, %590
  %742 = fmul fast float %739, %591
  %743 = fadd fast float %740, 1.000000e+00
  %744 = fsub fast float %743, %712
  %745 = fsub fast float %744, %714
  %746 = fadd fast float %720, %721
  %747 = fmul fast float %746, 2.000000e+00
  %748 = fadd fast float %747, %741
  %749 = fadd fast float %728, %742
  %750 = call float @dx.op.dot3.f32(i32 55, float %599, float %600, float %601, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = call float @dx.op.unary.f32(i32 25, float %750)  ; Rsqrt(value)
  %752 = fmul fast float %751, 0x3FECCCCCC0000000
  %753 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %752)  ; FMin(a,b)
  %754 = fmul fast float %753, %599
  %755 = fmul fast float %753, %600
  %756 = fmul fast float %753, %601
  %757 = fadd fast float %732, %754
  %758 = fadd fast float %733, %755
  %759 = fadd fast float %735, %756
  %760 = fmul fast float %758, %749
  %761 = fmul fast float %759, %748
  %762 = fsub fast float %760, %761
  %763 = fmul fast float %759, %745
  %764 = fmul fast float %757, %749
  %765 = fsub fast float %763, %764
  %766 = fmul fast float %757, %748
  %767 = fmul fast float %758, %745
  %768 = fsub fast float %766, %767
  %769 = call float @dx.op.dot3.f32(i32 55, float %762, float %765, float %768, float %762, float %765, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %762, %770
  %772 = fmul fast float %765, %770
  %773 = fmul fast float %768, %770
  %774 = call float @dx.op.dot3.f32(i32 55, float %745, float %748, float %749, float %771, float %772, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = fsub fast float -0.000000e+00, %774
  %776 = fmul fast float %771, %775
  %777 = fmul fast float %772, %775
  %778 = fmul fast float %773, %775
  %779 = fadd fast float %776, %745
  %780 = fadd fast float %777, %748
  %781 = fadd fast float %778, %749
  %782 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %779, float %780, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 25, float %782)  ; Rsqrt(value)
  %784 = fmul fast float %779, %783
  %785 = fmul fast float %780, %783
  %786 = fmul fast float %781, %783
  %787 = fmul fast float %785, %773
  %788 = fmul fast float %786, %772
  %789 = fsub fast float %787, %788
  %790 = fmul fast float %786, %771
  %791 = fmul fast float %784, %773
  %792 = fsub fast float %790, %791
  %793 = fmul fast float %784, %772
  %794 = fmul fast float %785, %771
  %795 = fsub fast float %793, %794
  %796 = fmul fast float %789, %206
  %797 = fmul fast float %792, %206
  %798 = fmul fast float %795, %206
  %799 = fadd fast float %784, %773
  %800 = fadd fast float %799, %797
  %801 = fcmp fast ogt float %800, 0.000000e+00
  br i1 %801, label %802, label %813, !dx.controlflow.hints !28

; <label>:802                                     ; preds = %579
  %803 = fadd fast float %800, 1.000000e+00
  %804 = fsub fast float %798, %772
  %805 = fsub fast float %771, %786
  %806 = fsub fast float %785, %796
  %807 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %808 = fmul fast float %807, 5.000000e-01
  %809 = fmul fast float %808, %804
  %810 = fmul fast float %808, %805
  %811 = fmul fast float %808, %806
  %812 = fmul fast float %808, %803
  br label %857

; <label>:813                                     ; preds = %579
  %814 = fcmp fast ogt float %784, %797
  %815 = fcmp fast ogt float %784, %773
  %816 = and i1 %815, %814
  br i1 %816, label %817, label %830, !dx.controlflow.hints !29

; <label>:817                                     ; preds = %813
  %818 = fsub fast float 1.000000e+00, %773
  %819 = fadd fast float %818, %784
  %820 = fsub fast float %819, %797
  %821 = fsub fast float %798, %772
  %822 = fadd fast float %796, %785
  %823 = fadd fast float %786, %771
  %824 = call float @dx.op.unary.f32(i32 25, float %820)  ; Rsqrt(value)
  %825 = fmul fast float %824, 5.000000e-01
  %826 = fmul fast float %825, %820
  %827 = fmul fast float %825, %822
  %828 = fmul fast float %825, %823
  %829 = fmul fast float %825, %821
  br label %857

; <label>:830                                     ; preds = %813
  %831 = fcmp fast ogt float %797, %773
  %832 = fadd fast float %798, %772
  br i1 %831, label %833, label %845, !dx.controlflow.hints !30

; <label>:833                                     ; preds = %830
  %834 = fsub fast float 1.000000e+00, %773
  %835 = fsub fast float %834, %784
  %836 = fadd fast float %835, %797
  %837 = fsub fast float %771, %786
  %838 = fadd fast float %796, %785
  %839 = call float @dx.op.unary.f32(i32 25, float %836)  ; Rsqrt(value)
  %840 = fmul fast float %839, 5.000000e-01
  %841 = fmul fast float %840, %838
  %842 = fmul fast float %840, %836
  %843 = fmul fast float %840, %832
  %844 = fmul fast float %840, %837
  br label %857

; <label>:845                                     ; preds = %830
  %846 = fadd fast float %773, 1.000000e+00
  %847 = fsub fast float %846, %784
  %848 = fsub fast float %847, %797
  %849 = fsub fast float %785, %796
  %850 = fadd fast float %786, %771
  %851 = call float @dx.op.unary.f32(i32 25, float %848)  ; Rsqrt(value)
  %852 = fmul fast float %851, 5.000000e-01
  %853 = fmul fast float %852, %850
  %854 = fmul fast float %852, %832
  %855 = fmul fast float %852, %848
  %856 = fmul fast float %852, %849
  br label %857

; <label>:857                                     ; preds = %845, %833, %817, %802
  %858 = phi float [ %809, %802 ], [ %826, %817 ], [ %841, %833 ], [ %853, %845 ]
  %859 = phi float [ %810, %802 ], [ %827, %817 ], [ %842, %833 ], [ %854, %845 ]
  %860 = phi float [ %811, %802 ], [ %828, %817 ], [ %843, %833 ], [ %855, %845 ]
  %861 = phi float [ %812, %802 ], [ %829, %817 ], [ %844, %833 ], [ %856, %845 ]
  %862 = fcmp une float %265, 0.000000e+00
  br i1 %862, label %863, label %1003, !dx.controlflow.hints !31

; <label>:863                                     ; preds = %857
  %864 = fsub float -0.000000e+00, %100
  %865 = fsub float -0.000000e+00, %101
  %866 = fsub float -0.000000e+00, %102
  %867 = fmul float %108, %864
  %868 = fmul float %108, %865
  %869 = fmul float %108, %866
  %870 = fmul float %103, %105
  %871 = fmul float %103, %106
  %872 = fmul float %103, %107
  %873 = fadd float %867, %870
  %874 = fadd float %868, %871
  %875 = fadd float %869, %872
  %876 = fmul float %106, %866
  %877 = fmul float %107, %865
  %878 = fsub float %876, %877
  %879 = fmul float %107, %864
  %880 = fmul float %105, %866
  %881 = fsub float %879, %880
  %882 = fmul float %105, %865
  %883 = fmul float %106, %864
  %884 = fsub float %882, %883
  %885 = fadd float %873, %878
  %886 = fadd float %874, %881
  %887 = fadd float %875, %884
  %888 = fmul float %885, 2.000000e+00
  %889 = fmul float %886, 2.000000e+00
  %890 = fmul float %887, 2.000000e+00
  %891 = fmul float %101, %172
  %892 = fmul float %102, %171
  %893 = fsub float %891, %892
  %894 = fmul float %102, %170
  %895 = fmul float %100, %172
  %896 = fsub float %894, %895
  %897 = fmul float %100, %171
  %898 = fmul float %101, %170
  %899 = fsub float %897, %898
  %900 = fmul float %893, 2.000000e+00
  %901 = fmul float %896, 2.000000e+00
  %902 = fmul float %899, 2.000000e+00
  %903 = fmul float %103, %900
  %904 = fmul float %103, %901
  %905 = fmul float %103, %902
  %906 = fadd float %170, %903
  %907 = fadd float %171, %904
  %908 = fadd float %172, %905
  %909 = fmul float %101, %902
  %910 = fmul float %102, %901
  %911 = fsub float %909, %910
  %912 = fmul float %102, %900
  %913 = fmul float %100, %902
  %914 = fsub float %912, %913
  %915 = fmul float %100, %901
  %916 = fmul float %101, %900
  %917 = fsub float %915, %916
  %918 = fadd float %906, %911
  %919 = fadd float %907, %914
  %920 = fadd float %908, %917
  %921 = fadd float %888, %918
  %922 = fadd float %889, %919
  %923 = fadd float %890, %920
  %924 = fmul float %921, %602
  %925 = fmul float %922, %602
  %926 = fmul float %923, %602
  %927 = fadd float %924, %596
  %928 = fadd float %925, %597
  %929 = fadd float %926, %598
  %930 = fmul fast float %200, %103
  %931 = fmul fast float %201, %103
  %932 = fmul fast float %202, %103
  %933 = fmul fast float %203, %100
  %934 = fmul fast float %203, %101
  %935 = fmul fast float %203, %102
  %936 = fadd fast float %933, %930
  %937 = fadd fast float %934, %931
  %938 = fmul fast float %202, %101
  %939 = fmul fast float %201, %102
  %940 = fsub fast float %938, %939
  %941 = fmul fast float %200, %102
  %942 = fmul fast float %202, %100
  %943 = fsub fast float %941, %942
  %944 = fmul fast float %201, %100
  %945 = fmul fast float %200, %101
  %946 = fsub fast float %944, %945
  %947 = fadd fast float %936, %940
  %948 = fadd fast float %937, %943
  %949 = fadd fast float %946, %932
  %950 = fadd fast float %949, %935
  %951 = fmul fast float %203, %103
  %952 = call float @dx.op.dot3.f32(i32 55, float %100, float %101, float %102, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = fsub fast float %951, %952
  %954 = call float @dx.op.dot4.f32(i32 56, float %592, float %593, float %594, float %595, float %947, float %948, float %950, float %953)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %955 = fcmp fast olt float %954, 0.000000e+00
  %956 = fsub fast float -0.000000e+00, %602
  %957 = select i1 %955, float %956, float %602
  %958 = fmul fast float %957, %947
  %959 = fmul fast float %957, %948
  %960 = fmul fast float %957, %950
  %961 = fmul fast float %957, %953
  %962 = fadd fast float %958, %592
  %963 = fadd fast float %959, %593
  %964 = fadd fast float %960, %594
  %965 = fadd fast float %961, %595
  %966 = fsub float %927, %684
  %967 = fsub float %928, %685
  %968 = fsub float %929, %686
  %969 = fmul float %265, %966
  %970 = fmul float %265, %967
  %971 = fmul float %265, %968
  %972 = fadd float %684, %969
  %973 = fadd float %685, %970
  %974 = fadd float %686, %971
  %975 = call float @dx.op.dot4.f32(i32 56, float %962, float %963, float %964, float %965, float %858, float %859, float %860, float %861)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %976 = fcmp fast olt float %975, 0.000000e+00
  %977 = fsub fast float -0.000000e+00, %962
  %978 = fsub fast float -0.000000e+00, %963
  %979 = fsub fast float -0.000000e+00, %964
  %980 = fsub fast float -0.000000e+00, %965
  %981 = select i1 %976, float %977, float %962
  %982 = select i1 %976, float %978, float %963
  %983 = select i1 %976, float %979, float %964
  %984 = select i1 %976, float %980, float %965
  %985 = fsub fast float %981, %858
  %986 = fsub fast float %982, %859
  %987 = fsub fast float %983, %860
  %988 = fsub fast float %984, %861
  %989 = fmul fast float %985, %265
  %990 = fmul fast float %986, %265
  %991 = fmul fast float %987, %265
  %992 = fmul fast float %988, %265
  %993 = fadd fast float %989, %858
  %994 = fadd fast float %990, %859
  %995 = fadd fast float %991, %860
  %996 = fadd fast float %992, %861
  %997 = call float @dx.op.dot4.f32(i32 56, float %993, float %994, float %995, float %996, float %993, float %994, float %995, float %996)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %998 = call float @dx.op.unary.f32(i32 25, float %997)  ; Rsqrt(value)
  %999 = fmul fast float %993, %998
  %1000 = fmul fast float %994, %998
  %1001 = fmul fast float %995, %998
  %1002 = fmul fast float %996, %998
  br label %1003

; <label>:1003                                    ; preds = %863, %857
  %1004 = phi float [ %999, %863 ], [ %858, %857 ]
  %1005 = phi float [ %1000, %863 ], [ %859, %857 ]
  %1006 = phi float [ %1001, %863 ], [ %860, %857 ]
  %1007 = phi float [ %1002, %863 ], [ %861, %857 ]
  %1008 = phi float [ %972, %863 ], [ %684, %857 ]
  %1009 = phi float [ %973, %863 ], [ %685, %857 ]
  %1010 = phi float [ %974, %863 ], [ %686, %857 ]
  %1011 = fsub float %1008, %51
  %1012 = fsub float %1009, %52
  %1013 = fsub float %1010, %53
  %1014 = fmul float %61, %1013
  %1015 = fmul float %62, %1012
  %1016 = fsub float %1014, %1015
  %1017 = fmul float %62, %1011
  %1018 = fmul float %60, %1013
  %1019 = fsub float %1017, %1018
  %1020 = fmul float %60, %1012
  %1021 = fmul float %61, %1011
  %1022 = fsub float %1020, %1021
  %1023 = fmul float %1016, 2.000000e+00
  %1024 = fmul float %1019, 2.000000e+00
  %1025 = fmul float %1022, 2.000000e+00
  %1026 = fmul float %63, %1023
  %1027 = fmul float %63, %1024
  %1028 = fmul float %63, %1025
  %1029 = fsub float %1011, %1026
  %1030 = fsub float %1012, %1027
  %1031 = fsub float %1013, %1028
  %1032 = fmul float %61, %1025
  %1033 = fmul float %62, %1024
  %1034 = fsub float %1032, %1033
  %1035 = fmul float %62, %1023
  %1036 = fmul float %60, %1025
  %1037 = fsub float %1035, %1036
  %1038 = fmul float %60, %1024
  %1039 = fmul float %61, %1023
  %1040 = fsub float %1038, %1039
  %1041 = fadd float %1029, %1034
  %1042 = fadd float %1030, %1037
  %1043 = fadd float %1031, %1040
  %1044 = fsub fast float -0.000000e+00, %60
  %1045 = fsub fast float -0.000000e+00, %61
  %1046 = fsub fast float -0.000000e+00, %62
  %1047 = fmul fast float %1004, %63
  %1048 = fmul fast float %1005, %63
  %1049 = fmul fast float %1006, %63
  %1050 = fmul fast float %1007, %1044
  %1051 = fmul fast float %1007, %1045
  %1052 = fmul fast float %1007, %1046
  %1053 = fadd fast float %1050, %1047
  %1054 = fadd fast float %1051, %1048
  %1055 = fmul fast float %1006, %1045
  %1056 = fmul fast float %1005, %1046
  %1057 = fsub fast float %1055, %1056
  %1058 = fmul fast float %1004, %1046
  %1059 = fmul fast float %1006, %1044
  %1060 = fsub fast float %1058, %1059
  %1061 = fmul fast float %1005, %1044
  %1062 = fmul fast float %1004, %1045
  %1063 = fsub fast float %1061, %1062
  %1064 = fadd fast float %1053, %1057
  %1065 = fadd fast float %1054, %1060
  %1066 = fadd fast float %1063, %1049
  %1067 = fadd fast float %1066, %1052
  %1068 = fmul fast float %1007, %63
  %1069 = call float @dx.op.dot3.f32(i32 55, float %1044, float %1045, float %1046, float %1004, float %1005, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1070 = fsub fast float %1068, %1069
  %1071 = fsub float %1041, %42
  %1072 = fsub float %1042, %43
  %1073 = fsub float %1043, %44
  %1074 = fdiv float 1.000000e+00, %45
  %1075 = fmul float %1074, %1071
  %1076 = fmul float %1074, %1072
  %1077 = fmul float %1074, %1073
  %1078 = fmul float %1075, 5.000000e-01
  %1079 = fmul float %1076, 5.000000e-01
  %1080 = fmul float %1077, 5.000000e-01
  %1081 = fadd float %1078, 5.000000e-01
  %1082 = fadd float %1079, 5.000000e-01
  %1083 = fadd float %1080, 5.000000e-01
  %1084 = call float @dx.op.unary.f32(i32 7, float %1081), !dx.precise !24  ; Saturate(value)
  %1085 = call float @dx.op.unary.f32(i32 7, float %1082), !dx.precise !24  ; Saturate(value)
  %1086 = call float @dx.op.unary.f32(i32 7, float %1083), !dx.precise !24  ; Saturate(value)
  %1087 = fmul float %1084, 2.097151e+06
  %1088 = fmul float %1085, 2.097151e+06
  %1089 = fmul float %1086, 2.097151e+06
  %1090 = fptoui float %1087 to i32
  %1091 = fptoui float %1088 to i32
  %1092 = fptoui float %1089 to i32
  %1093 = shl i32 %1091, 21
  %1094 = or i32 %1093, %1090
  %1095 = lshr i32 %1091, 11
  %1096 = shl i32 %1092, 10
  %1097 = or i32 %1096, %1095
  %1098 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1099 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1100 = fcmp fast oge float %1098, %1099
  %1101 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1102 = fcmp fast oge float %1098, %1101
  %1103 = and i1 %1100, %1102
  br i1 %1103, label %1104, label %1107, !dx.controlflow.hints !32

; <label>:1104                                    ; preds = %1003
  %1105 = fcmp fast olt float %1067, 0.000000e+00
  %1106 = select i1 %1105, float 5.000000e+00, float 4.000000e+00
  br label %1115

; <label>:1107                                    ; preds = %1003
  %1108 = fcmp fast ult float %1101, %1099
  br i1 %1108, label %1112, label %1109, !dx.controlflow.hints !33

; <label>:1109                                    ; preds = %1107
  %1110 = fcmp fast olt float %1065, 0.000000e+00
  %1111 = select i1 %1110, float 3.000000e+00, float 2.000000e+00
  br label %1115

; <label>:1112                                    ; preds = %1107
  %1113 = fcmp fast olt float %1064, 0.000000e+00
  %1114 = select i1 %1113, float 1.000000e+00, float 0.000000e+00
  br label %1115

; <label>:1115                                    ; preds = %1112, %1109, %1104
  %1116 = phi float [ %1106, %1104 ], [ %1111, %1109 ], [ %1114, %1112 ]
  %1117 = fmul fast float %1116, 5.000000e-01
  %1118 = fptoui float %1117 to i32
  %1119 = call float @dx.op.unary.f32(i32 6, float %1070)  ; FAbs(value)
  %1120 = call float @dx.op.binary.f32(i32 35, float %1101, float %1098)  ; FMax(a,b)
  %1121 = call float @dx.op.binary.f32(i32 35, float %1099, float %1120)  ; FMax(a,b)
  %1122 = fcmp fast ogt float %1119, %1121
  %1123 = select i1 %1122, i32 3, i32 %1118
  %1124 = icmp eq i32 %1123, 0
  %1125 = select i1 %1124, float %1065, float %1064
  %1126 = select i1 %1124, float %1067, float %1065
  %1127 = select i1 %1124, float %1070, float %1067
  %1128 = select i1 %1124, float %1064, float %1070
  %1129 = icmp eq i32 %1123, 1
  %1130 = select i1 %1129, float %1127, float %1126
  %1131 = select i1 %1129, float %1128, float %1127
  %1132 = select i1 %1129, float %1126, float %1128
  %1133 = icmp eq i32 %1123, 2
  %1134 = select i1 %1133, float %1132, float %1131
  %1135 = select i1 %1133, float %1131, float %1132
  %1136 = fcmp fast ogt float %1135, 0.000000e+00
  %1137 = select i1 %1136, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1138 = fmul fast float %1137, %1125
  %1139 = fmul fast float %1137, %1130
  %1140 = fmul fast float %1137, %1134
  %1141 = fadd fast float %1138, 1.000000e+00
  %1142 = fmul fast float %1141, 5.000000e-01
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = fmul fast float %1143, 1.023000e+03
  %1145 = fptoui float %1144 to i32
  %1146 = fadd fast float %1139, 1.000000e+00
  %1147 = fmul fast float %1146, 5.000000e-01
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = fmul fast float %1148, 1.023000e+03
  %1150 = fptoui float %1149 to i32
  %1151 = fadd fast float %1140, 1.000000e+00
  %1152 = fmul fast float %1151, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  %1154 = fmul fast float %1153, 5.110000e+02
  %1155 = fptoui float %1154 to i32
  %1156 = shl i32 %1150, 10
  %1157 = shl i32 %1155, 20
  %1158 = fcmp fast ogt float %206, 0.000000e+00
  %1159 = select i1 %1158, i32 0, i32 536870912
  %1160 = shl i32 %1123, 30
  %1161 = or i32 %1145, %1159
  %1162 = or i32 %1161, %1160
  %1163 = or i32 %1162, %1156
  %1164 = or i32 %1163, %1157
  %1165 = select i1 %27, i32 %1094, i32 0
  %1166 = select i1 %27, i32 %1097, i32 0
  %1167 = shl i32 %83, 3
  %1168 = add i32 %35, %1167
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1168, i32 undef, i32 %1165, i32 %1166, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1169 = shl i32 %83, 2
  %1170 = add i32 %32, %1169
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1170, i32 undef, i32 %1164, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1171 = bitcast float %1041 to i32
  %1172 = bitcast float %1042 to i32
  %1173 = bitcast float %1043 to i32
  %1174 = mul i32 %83, 12
  %1175 = add i32 %33, %1174
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1175, i32 undef, i32 %1171, i32 %1172, i32 %1173, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1176

; <label>:1176                                    ; preds = %1115, %78
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
!16 = !{void ()* @cs_skinning_deform_factors_weight_blend_unified_unpacked_positions_main, !"cs_skinning_deform_factors_weight_blend_unified_unpacked_positions_main", null, !4, !17}
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

