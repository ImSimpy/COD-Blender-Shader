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
; shader hash: 4ecfe330d5b4ec33d3bb39a360e8ccda
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

define void @cs_skinning_deform_factors_unified_unpacked_positions_main() {
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
  br i1 %81, label %82, label %902, !dx.controlflow.hints !20

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
  br i1 %71, label %263, label %461

; <label>:263                                     ; preds = %199
  %264 = and i32 %16, 65535
  br label %265

; <label>:265                                     ; preds = %265, %263
  %266 = phi float [ %328, %265 ], [ 0.000000e+00, %263 ]
  %267 = phi float [ %329, %265 ], [ 0.000000e+00, %263 ]
  %268 = phi float [ %330, %265 ], [ 0.000000e+00, %263 ]
  %269 = phi float [ %331, %265 ], [ 0.000000e+00, %263 ]
  %270 = phi float [ %320, %265 ], [ 0.000000e+00, %263 ]
  %271 = phi float [ %321, %265 ], [ 0.000000e+00, %263 ]
  %272 = phi float [ %322, %265 ], [ 0.000000e+00, %263 ]
  %273 = phi float [ %323, %265 ], [ 0.000000e+00, %263 ]
  %274 = phi float [ %301, %265 ], [ 0.000000e+00, %263 ]
  %275 = phi float [ %449, %265 ], [ 0.000000e+00, %263 ]
  %276 = phi float [ %450, %265 ], [ 0.000000e+00, %263 ]
  %277 = phi float [ %451, %265 ], [ 0.000000e+00, %263 ]
  %278 = phi float [ %455, %265 ], [ 0.000000e+00, %263 ]
  %279 = phi float [ %456, %265 ], [ 0.000000e+00, %263 ]
  %280 = phi float [ %457, %265 ], [ 0.000000e+00, %263 ]
  %281 = phi i32 [ %458, %265 ], [ 1, %263 ]
  %282 = mul i32 %281, %79
  %283 = add i32 %84, %282
  %284 = shl i32 %283, 2
  %285 = lshr i32 %283, 8
  %286 = and i32 %285, 4194303
  %287 = add i32 %286, %26
  %288 = shl i32 %287, 2
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = shl i32 %290, 10
  %292 = and i32 %284, 1020
  %293 = or i32 %291, %292
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = lshr i32 %295, 16
  %298 = uitofp i32 %297 to float
  %299 = fmul float %298, 0x3EF0000000000000
  %300 = add i32 %296, %28
  %301 = fadd float %274, %299
  %302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %300, i32 0)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = extractvalue %dx.types.ResRet.f32 %302, 3
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %300, i32 16)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = extractvalue %dx.types.ResRet.f32 %307, 3
  %312 = call float @dx.op.dot4.f32(i32 56, float %100, float %101, float %102, float %103, float %303, float %304, float %305, float %306), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %313 = fcmp olt float %312, 0.000000e+00
  %314 = fsub float -0.000000e+00, %299
  %315 = select i1 %313, float %314, float %299
  %316 = fmul float %303, %315
  %317 = fmul float %304, %315
  %318 = fmul float %305, %315
  %319 = fmul float %306, %315
  %320 = fadd float %270, %316
  %321 = fadd float %271, %317
  %322 = fadd float %272, %318
  %323 = fadd float %273, %319
  %324 = fmul float %308, %315
  %325 = fmul float %309, %315
  %326 = fmul float %310, %315
  %327 = fmul float %311, %315
  %328 = fadd float %266, %324
  %329 = fadd float %267, %325
  %330 = fadd float %268, %326
  %331 = fadd float %269, %327
  %332 = fsub fast float -0.000000e+00, %303
  %333 = fsub fast float -0.000000e+00, %304
  %334 = fsub fast float -0.000000e+00, %305
  %335 = fsub fast float -0.000000e+00, %306
  %336 = fsub fast float -0.000000e+00, %308
  %337 = fsub fast float -0.000000e+00, %309
  %338 = fsub fast float -0.000000e+00, %310
  %339 = fsub fast float -0.000000e+00, %311
  %340 = select i1 %313, float %336, float %308
  %341 = select i1 %313, float %337, float %309
  %342 = select i1 %313, float %338, float %310
  %343 = select i1 %313, float %339, float %311
  %344 = select i1 %313, float %332, float %303
  %345 = select i1 %313, float %333, float %304
  %346 = select i1 %313, float %334, float %305
  %347 = select i1 %313, float %335, float %306
  %348 = call float @dx.op.dot4.f32(i32 56, float %344, float %345, float %346, float %347, float %344, float %345, float %346, float %347)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %349 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %350 = fdiv fast float 1.000000e+00, %349
  %351 = fmul fast float %350, %347
  %352 = fmul fast float %350, %344
  %353 = fmul fast float %350, %345
  %354 = fmul fast float %350, %346
  %355 = fmul fast float %350, %343
  %356 = fmul fast float %350, %340
  %357 = fmul fast float %350, %341
  %358 = fmul fast float %350, %342
  %359 = fmul fast float %353, %172
  %360 = fmul fast float %354, %171
  %361 = fsub fast float %359, %360
  %362 = fmul fast float %354, %170
  %363 = fmul fast float %352, %172
  %364 = fsub fast float %362, %363
  %365 = fmul fast float %352, %171
  %366 = fmul fast float %353, %170
  %367 = fsub fast float %365, %366
  %368 = fmul fast float %351, %170
  %369 = fmul fast float %351, %171
  %370 = fmul fast float %351, %172
  %371 = fadd fast float %361, %368
  %372 = fadd fast float %364, %369
  %373 = fadd fast float %367, %370
  %374 = fmul fast float %356, %351
  %375 = fmul fast float %357, %351
  %376 = fmul fast float %358, %351
  %377 = fmul fast float %352, %355
  %378 = fmul fast float %353, %355
  %379 = fmul fast float %354, %355
  %380 = fmul fast float %353, %358
  %381 = fmul fast float %354, %357
  %382 = fmul fast float %354, %356
  %383 = fmul fast float %352, %358
  %384 = fmul fast float %352, %357
  %385 = fmul fast float %353, %356
  %386 = fsub fast float %374, %377
  %387 = fsub fast float %386, %381
  %388 = fadd fast float %387, %380
  %389 = fsub fast float %375, %378
  %390 = fsub fast float %389, %383
  %391 = fadd fast float %390, %382
  %392 = fsub fast float %376, %379
  %393 = fsub fast float %392, %385
  %394 = fadd fast float %393, %384
  %395 = fmul fast float %388, 2.000000e+00
  %396 = fmul fast float %391, 2.000000e+00
  %397 = fmul fast float %394, 2.000000e+00
  %398 = fmul fast float %352, 2.000000e+00
  %399 = fmul fast float %353, 2.000000e+00
  %400 = fmul fast float %354, 2.000000e+00
  %401 = fmul fast float %373, %399
  %402 = fmul fast float %372, %400
  %403 = fmul fast float %371, %400
  %404 = fmul fast float %373, %398
  %405 = fmul fast float %372, %398
  %406 = fmul fast float %371, %399
  %407 = fmul fast float %247, -2.000000e+00
  %408 = fadd fast float %258, %407
  %409 = fsub fast float %408, %257
  %410 = fadd fast float %409, %395
  %411 = fsub fast float %410, %402
  %412 = fadd fast float %411, %401
  %413 = fmul fast float %250, -2.000000e+00
  %414 = fadd fast float %260, %413
  %415 = fsub fast float %414, %259
  %416 = fadd fast float %415, %396
  %417 = fsub fast float %416, %404
  %418 = fadd fast float %417, %403
  %419 = fmul fast float %253, -2.000000e+00
  %420 = fadd fast float %262, %419
  %421 = fsub fast float %420, %261
  %422 = fadd fast float %421, %397
  %423 = fsub fast float %422, %406
  %424 = fadd fast float %423, %405
  %425 = sub i32 %83, %80
  %426 = add nsw i32 %281, -1
  %427 = mul i32 %426, %79
  %428 = add i32 %425, %70
  %429 = add i32 %428, %427
  %430 = shl i32 %429, 2
  %431 = lshr i32 %429, 8
  %432 = and i32 %431, 4194303
  %433 = add i32 %432, %34
  %434 = shl i32 %433, 2
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = shl i32 %436, 10
  %438 = and i32 %430, 1020
  %439 = or i32 %437, %438
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %441, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = fmul fast float %412, %443
  %447 = fmul fast float %418, %443
  %448 = fmul fast float %424, %443
  %449 = fadd fast float %446, %275
  %450 = fadd fast float %447, %276
  %451 = fadd fast float %448, %277
  %452 = fmul fast float %445, %412
  %453 = fmul fast float %445, %418
  %454 = fmul fast float %445, %424
  %455 = fadd fast float %452, %278
  %456 = fadd fast float %453, %279
  %457 = fadd fast float %454, %280
  %458 = add nuw nsw i32 %281, 1
  %459 = icmp eq i32 %458, %264
  br i1 %459, label %460, label %265, !llvm.loop !25

; <label>:460                                     ; preds = %265
  br label %461

; <label>:461                                     ; preds = %460, %199
  %462 = phi float [ 0.000000e+00, %199 ], [ %328, %460 ]
  %463 = phi float [ 0.000000e+00, %199 ], [ %329, %460 ]
  %464 = phi float [ 0.000000e+00, %199 ], [ %330, %460 ]
  %465 = phi float [ 0.000000e+00, %199 ], [ %331, %460 ]
  %466 = phi float [ 0.000000e+00, %199 ], [ %320, %460 ]
  %467 = phi float [ 0.000000e+00, %199 ], [ %321, %460 ]
  %468 = phi float [ 0.000000e+00, %199 ], [ %322, %460 ]
  %469 = phi float [ 0.000000e+00, %199 ], [ %323, %460 ]
  %470 = phi float [ 0.000000e+00, %199 ], [ %301, %460 ]
  %471 = phi float [ 0.000000e+00, %199 ], [ %449, %460 ]
  %472 = phi float [ 0.000000e+00, %199 ], [ %450, %460 ]
  %473 = phi float [ 0.000000e+00, %199 ], [ %451, %460 ]
  %474 = phi float [ 0.000000e+00, %199 ], [ %455, %460 ]
  %475 = phi float [ 0.000000e+00, %199 ], [ %456, %460 ]
  %476 = phi float [ 0.000000e+00, %199 ], [ %457, %460 ]
  %477 = fsub float 1.000000e+00, %470
  %478 = fmul float %100, %477
  %479 = fmul float %101, %477
  %480 = fmul float %102, %477
  %481 = fmul float %103, %477
  %482 = fadd float %466, %478
  %483 = fadd float %467, %479
  %484 = fadd float %468, %480
  %485 = fadd float %469, %481
  %486 = fmul float %105, %477
  %487 = fmul float %106, %477
  %488 = fmul float %107, %477
  %489 = fmul float %108, %477
  %490 = fadd float %462, %486
  %491 = fadd float %463, %487
  %492 = fadd float %464, %488
  %493 = fadd float %465, %489
  %494 = call float @dx.op.dot4.f32(i32 56, float %482, float %483, float %484, float %485, float %482, float %483, float %484, float %485), !dx.precise !24  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %495 = call float @dx.op.unary.f32(i32 24, float %494), !dx.precise !24  ; Sqrt(value)
  %496 = fdiv float 1.000000e+00, %495
  %497 = fmul float %485, %496
  %498 = fmul float %482, %496
  %499 = fmul float %483, %496
  %500 = fmul float %484, %496
  %501 = fmul float %493, %496
  %502 = fmul float %490, %496
  %503 = fmul float %491, %496
  %504 = fmul float %492, %496
  %505 = fmul float %172, %499
  %506 = fmul float %171, %500
  %507 = fsub float %505, %506
  %508 = fmul float %170, %500
  %509 = fmul float %172, %498
  %510 = fsub float %508, %509
  %511 = fmul float %171, %498
  %512 = fmul float %170, %499
  %513 = fsub float %511, %512
  %514 = fmul float %170, %497
  %515 = fmul float %171, %497
  %516 = fmul float %172, %497
  %517 = fadd float %514, %507
  %518 = fadd float %515, %510
  %519 = fadd float %516, %513
  %520 = fmul float %502, %497
  %521 = fmul float %503, %497
  %522 = fmul float %504, %497
  %523 = fmul float %498, %501
  %524 = fmul float %499, %501
  %525 = fmul float %500, %501
  %526 = fsub float %520, %523
  %527 = fsub float %521, %524
  %528 = fsub float %522, %525
  %529 = fmul float %499, %504
  %530 = fmul float %500, %503
  %531 = fsub float %529, %530
  %532 = fmul float %500, %502
  %533 = fmul float %498, %504
  %534 = fsub float %532, %533
  %535 = fmul float %498, %503
  %536 = fmul float %499, %502
  %537 = fsub float %535, %536
  %538 = fadd float %526, %531
  %539 = fadd float %527, %534
  %540 = fadd float %528, %537
  %541 = fmul float %538, 2.000000e+00
  %542 = fmul float %539, 2.000000e+00
  %543 = fmul float %540, 2.000000e+00
  %544 = fadd float %170, %541
  %545 = fadd float %171, %542
  %546 = fadd float %172, %543
  %547 = fmul float %498, 2.000000e+00
  %548 = fmul float %499, 2.000000e+00
  %549 = fmul float %500, 2.000000e+00
  %550 = fmul float %548, %519
  %551 = fmul float %549, %518
  %552 = fsub float %550, %551
  %553 = fmul float %549, %517
  %554 = fmul float %547, %519
  %555 = fsub float %553, %554
  %556 = fmul float %547, %518
  %557 = fmul float %548, %517
  %558 = fsub float %556, %557
  %559 = fadd float %544, %552
  %560 = fadd float %545, %555
  %561 = fadd float %546, %558
  %562 = fmul fast float %497, %200
  %563 = fmul fast float %497, %201
  %564 = fmul fast float %497, %202
  %565 = fmul fast float %498, %203
  %566 = fmul fast float %499, %203
  %567 = fmul fast float %500, %203
  %568 = fadd fast float %562, %565
  %569 = fadd fast float %563, %566
  %570 = fadd fast float %564, %567
  %571 = fmul fast float %499, %202
  %572 = fmul fast float %500, %201
  %573 = fsub fast float %571, %572
  %574 = fmul fast float %500, %200
  %575 = fmul fast float %498, %202
  %576 = fsub fast float %574, %575
  %577 = fmul fast float %498, %201
  %578 = fmul fast float %499, %200
  %579 = fsub fast float %577, %578
  %580 = fadd fast float %568, %573
  %581 = fadd fast float %569, %576
  %582 = fadd fast float %570, %579
  %583 = fmul fast float %497, %203
  %584 = call float @dx.op.dot3.f32(i32 55, float %498, float %499, float %500, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = fsub fast float %583, %584
  %586 = fmul fast float %581, %581
  %587 = fmul fast float %586, 2.000000e+00
  %588 = fmul fast float %582, %582
  %589 = fmul fast float %588, 2.000000e+00
  %590 = fmul fast float %580, 2.000000e+00
  %591 = fmul fast float %590, %581
  %592 = fmul fast float %585, 2.000000e+00
  %593 = fmul fast float %592, %582
  %594 = fsub fast float %591, %593
  %595 = fmul fast float %581, %580
  %596 = fmul fast float %582, %585
  %597 = fmul fast float %580, %580
  %598 = fmul fast float %597, 2.000000e+00
  %599 = fsub fast float 1.000000e+00, %598
  %600 = fsub fast float %599, %589
  %601 = fmul fast float %590, %582
  %602 = fmul fast float %592, %581
  %603 = fsub fast float %601, %602
  %604 = fmul fast float %582, %581
  %605 = fmul fast float %580, %585
  %606 = fadd fast float %604, %605
  %607 = fmul fast float %594, %206
  %608 = fmul fast float %600, %206
  %609 = fmul fast float %206, 2.000000e+00
  %610 = fmul fast float %609, %606
  %611 = call float @dx.op.dot3.f32(i32 55, float %471, float %472, float %473, float %471, float %472, float %473)  ; Dot3(ax,ay,az,bx,by,bz)
  %612 = call float @dx.op.unary.f32(i32 25, float %611)  ; Rsqrt(value)
  %613 = fmul fast float %612, 0x3FECCCCCC0000000
  %614 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %613)  ; FMin(a,b)
  %615 = fmul fast float %614, %471
  %616 = fmul fast float %614, %472
  %617 = fmul fast float %614, %473
  %618 = fadd fast float %615, 1.000000e+00
  %619 = fsub fast float %618, %587
  %620 = fsub fast float %619, %589
  %621 = fadd fast float %595, %596
  %622 = fmul fast float %621, 2.000000e+00
  %623 = fadd fast float %622, %616
  %624 = fadd fast float %603, %617
  %625 = call float @dx.op.dot3.f32(i32 55, float %474, float %475, float %476, float %474, float %475, float %476)  ; Dot3(ax,ay,az,bx,by,bz)
  %626 = call float @dx.op.unary.f32(i32 25, float %625)  ; Rsqrt(value)
  %627 = fmul fast float %626, 0x3FECCCCCC0000000
  %628 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %627)  ; FMin(a,b)
  %629 = fmul fast float %628, %474
  %630 = fmul fast float %628, %475
  %631 = fmul fast float %628, %476
  %632 = fadd fast float %607, %629
  %633 = fadd fast float %608, %630
  %634 = fadd fast float %610, %631
  %635 = fmul fast float %633, %624
  %636 = fmul fast float %634, %623
  %637 = fsub fast float %635, %636
  %638 = fmul fast float %634, %620
  %639 = fmul fast float %632, %624
  %640 = fsub fast float %638, %639
  %641 = fmul fast float %632, %623
  %642 = fmul fast float %633, %620
  %643 = fsub fast float %641, %642
  %644 = call float @dx.op.dot3.f32(i32 55, float %637, float %640, float %643, float %637, float %640, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %645 = call float @dx.op.unary.f32(i32 25, float %644)  ; Rsqrt(value)
  %646 = fmul fast float %637, %645
  %647 = fmul fast float %640, %645
  %648 = fmul fast float %643, %645
  %649 = call float @dx.op.dot3.f32(i32 55, float %620, float %623, float %624, float %646, float %647, float %648)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = fsub fast float -0.000000e+00, %649
  %651 = fmul fast float %646, %650
  %652 = fmul fast float %647, %650
  %653 = fmul fast float %648, %650
  %654 = fadd fast float %651, %620
  %655 = fadd fast float %652, %623
  %656 = fadd fast float %653, %624
  %657 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %654, float %655, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = call float @dx.op.unary.f32(i32 25, float %657)  ; Rsqrt(value)
  %659 = fmul fast float %654, %658
  %660 = fmul fast float %655, %658
  %661 = fmul fast float %656, %658
  %662 = fmul fast float %660, %648
  %663 = fmul fast float %661, %647
  %664 = fsub fast float %662, %663
  %665 = fmul fast float %661, %646
  %666 = fmul fast float %659, %648
  %667 = fsub fast float %665, %666
  %668 = fmul fast float %659, %647
  %669 = fmul fast float %660, %646
  %670 = fsub fast float %668, %669
  %671 = fmul fast float %664, %206
  %672 = fmul fast float %667, %206
  %673 = fmul fast float %670, %206
  %674 = fadd fast float %659, %648
  %675 = fadd fast float %674, %672
  %676 = fcmp fast ogt float %675, 0.000000e+00
  br i1 %676, label %677, label %688, !dx.controlflow.hints !27

; <label>:677                                     ; preds = %461
  %678 = fadd fast float %675, 1.000000e+00
  %679 = fsub fast float %673, %647
  %680 = fsub fast float %646, %661
  %681 = fsub fast float %660, %671
  %682 = call float @dx.op.unary.f32(i32 25, float %678)  ; Rsqrt(value)
  %683 = fmul fast float %682, 5.000000e-01
  %684 = fmul fast float %683, %679
  %685 = fmul fast float %683, %680
  %686 = fmul fast float %683, %681
  %687 = fmul fast float %683, %678
  br label %732

; <label>:688                                     ; preds = %461
  %689 = fcmp fast ogt float %659, %672
  %690 = fcmp fast ogt float %659, %648
  %691 = and i1 %690, %689
  br i1 %691, label %692, label %705, !dx.controlflow.hints !28

; <label>:692                                     ; preds = %688
  %693 = fsub fast float 1.000000e+00, %648
  %694 = fadd fast float %693, %659
  %695 = fsub fast float %694, %672
  %696 = fsub fast float %673, %647
  %697 = fadd fast float %671, %660
  %698 = fadd fast float %661, %646
  %699 = call float @dx.op.unary.f32(i32 25, float %695)  ; Rsqrt(value)
  %700 = fmul fast float %699, 5.000000e-01
  %701 = fmul fast float %700, %695
  %702 = fmul fast float %700, %697
  %703 = fmul fast float %700, %698
  %704 = fmul fast float %700, %696
  br label %732

; <label>:705                                     ; preds = %688
  %706 = fcmp fast ogt float %672, %648
  %707 = fadd fast float %673, %647
  br i1 %706, label %708, label %720, !dx.controlflow.hints !29

; <label>:708                                     ; preds = %705
  %709 = fsub fast float 1.000000e+00, %648
  %710 = fsub fast float %709, %659
  %711 = fadd fast float %710, %672
  %712 = fsub fast float %646, %661
  %713 = fadd fast float %671, %660
  %714 = call float @dx.op.unary.f32(i32 25, float %711)  ; Rsqrt(value)
  %715 = fmul fast float %714, 5.000000e-01
  %716 = fmul fast float %715, %713
  %717 = fmul fast float %715, %711
  %718 = fmul fast float %715, %707
  %719 = fmul fast float %715, %712
  br label %732

; <label>:720                                     ; preds = %705
  %721 = fadd fast float %648, 1.000000e+00
  %722 = fsub fast float %721, %659
  %723 = fsub fast float %722, %672
  %724 = fsub fast float %660, %671
  %725 = fadd fast float %661, %646
  %726 = call float @dx.op.unary.f32(i32 25, float %723)  ; Rsqrt(value)
  %727 = fmul fast float %726, 5.000000e-01
  %728 = fmul fast float %727, %725
  %729 = fmul fast float %727, %707
  %730 = fmul fast float %727, %723
  %731 = fmul fast float %727, %724
  br label %732

; <label>:732                                     ; preds = %720, %708, %692, %677
  %733 = phi float [ %684, %677 ], [ %701, %692 ], [ %716, %708 ], [ %728, %720 ]
  %734 = phi float [ %685, %677 ], [ %702, %692 ], [ %717, %708 ], [ %729, %720 ]
  %735 = phi float [ %686, %677 ], [ %703, %692 ], [ %718, %708 ], [ %730, %720 ]
  %736 = phi float [ %687, %677 ], [ %704, %692 ], [ %719, %708 ], [ %731, %720 ]
  %737 = fsub float %559, %51
  %738 = fsub float %560, %52
  %739 = fsub float %561, %53
  %740 = fmul float %61, %739
  %741 = fmul float %62, %738
  %742 = fsub float %740, %741
  %743 = fmul float %62, %737
  %744 = fmul float %60, %739
  %745 = fsub float %743, %744
  %746 = fmul float %60, %738
  %747 = fmul float %61, %737
  %748 = fsub float %746, %747
  %749 = fmul float %742, 2.000000e+00
  %750 = fmul float %745, 2.000000e+00
  %751 = fmul float %748, 2.000000e+00
  %752 = fmul float %63, %749
  %753 = fmul float %63, %750
  %754 = fmul float %63, %751
  %755 = fsub float %737, %752
  %756 = fsub float %738, %753
  %757 = fsub float %739, %754
  %758 = fmul float %61, %751
  %759 = fmul float %62, %750
  %760 = fsub float %758, %759
  %761 = fmul float %62, %749
  %762 = fmul float %60, %751
  %763 = fsub float %761, %762
  %764 = fmul float %60, %750
  %765 = fmul float %61, %749
  %766 = fsub float %764, %765
  %767 = fadd float %755, %760
  %768 = fadd float %756, %763
  %769 = fadd float %757, %766
  %770 = fsub fast float -0.000000e+00, %60
  %771 = fsub fast float -0.000000e+00, %61
  %772 = fsub fast float -0.000000e+00, %62
  %773 = fmul fast float %733, %63
  %774 = fmul fast float %734, %63
  %775 = fmul fast float %735, %63
  %776 = fmul fast float %736, %770
  %777 = fmul fast float %736, %771
  %778 = fmul fast float %736, %772
  %779 = fadd fast float %776, %773
  %780 = fadd fast float %777, %774
  %781 = fmul fast float %735, %771
  %782 = fmul fast float %734, %772
  %783 = fsub fast float %781, %782
  %784 = fmul fast float %733, %772
  %785 = fmul fast float %735, %770
  %786 = fsub fast float %784, %785
  %787 = fmul fast float %734, %770
  %788 = fmul fast float %733, %771
  %789 = fsub fast float %787, %788
  %790 = fadd fast float %779, %783
  %791 = fadd fast float %780, %786
  %792 = fadd fast float %789, %775
  %793 = fadd fast float %792, %778
  %794 = fmul fast float %736, %63
  %795 = call float @dx.op.dot3.f32(i32 55, float %770, float %771, float %772, float %733, float %734, float %735)  ; Dot3(ax,ay,az,bx,by,bz)
  %796 = fsub fast float %794, %795
  %797 = fsub float %767, %42
  %798 = fsub float %768, %43
  %799 = fsub float %769, %44
  %800 = fdiv float 1.000000e+00, %45
  %801 = fmul float %797, %800
  %802 = fmul float %798, %800
  %803 = fmul float %799, %800
  %804 = fmul float %801, 5.000000e-01
  %805 = fmul float %802, 5.000000e-01
  %806 = fmul float %803, 5.000000e-01
  %807 = fadd float %804, 5.000000e-01
  %808 = fadd float %805, 5.000000e-01
  %809 = fadd float %806, 5.000000e-01
  %810 = call float @dx.op.unary.f32(i32 7, float %807), !dx.precise !24  ; Saturate(value)
  %811 = call float @dx.op.unary.f32(i32 7, float %808), !dx.precise !24  ; Saturate(value)
  %812 = call float @dx.op.unary.f32(i32 7, float %809), !dx.precise !24  ; Saturate(value)
  %813 = fmul float %810, 2.097151e+06
  %814 = fmul float %811, 2.097151e+06
  %815 = fmul float %812, 2.097151e+06
  %816 = fptoui float %813 to i32
  %817 = fptoui float %814 to i32
  %818 = fptoui float %815 to i32
  %819 = shl i32 %817, 21
  %820 = or i32 %819, %816
  %821 = lshr i32 %817, 11
  %822 = shl i32 %818, 10
  %823 = or i32 %822, %821
  %824 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %825 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %826 = fcmp fast oge float %824, %825
  %827 = call float @dx.op.unary.f32(i32 6, float %791)  ; FAbs(value)
  %828 = fcmp fast oge float %824, %827
  %829 = and i1 %826, %828
  br i1 %829, label %830, label %833, !dx.controlflow.hints !30

; <label>:830                                     ; preds = %732
  %831 = fcmp fast olt float %793, 0.000000e+00
  %832 = select i1 %831, float 5.000000e+00, float 4.000000e+00
  br label %841

; <label>:833                                     ; preds = %732
  %834 = fcmp fast ult float %827, %825
  br i1 %834, label %838, label %835, !dx.controlflow.hints !31

; <label>:835                                     ; preds = %833
  %836 = fcmp fast olt float %791, 0.000000e+00
  %837 = select i1 %836, float 3.000000e+00, float 2.000000e+00
  br label %841

; <label>:838                                     ; preds = %833
  %839 = fcmp fast olt float %790, 0.000000e+00
  %840 = select i1 %839, float 1.000000e+00, float 0.000000e+00
  br label %841

; <label>:841                                     ; preds = %838, %835, %830
  %842 = phi float [ %832, %830 ], [ %837, %835 ], [ %840, %838 ]
  %843 = fmul fast float %842, 5.000000e-01
  %844 = fptoui float %843 to i32
  %845 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %846 = call float @dx.op.binary.f32(i32 35, float %827, float %824)  ; FMax(a,b)
  %847 = call float @dx.op.binary.f32(i32 35, float %825, float %846)  ; FMax(a,b)
  %848 = fcmp fast ogt float %845, %847
  %849 = select i1 %848, i32 3, i32 %844
  %850 = icmp eq i32 %849, 0
  %851 = select i1 %850, float %791, float %790
  %852 = select i1 %850, float %793, float %791
  %853 = select i1 %850, float %796, float %793
  %854 = select i1 %850, float %790, float %796
  %855 = icmp eq i32 %849, 1
  %856 = select i1 %855, float %853, float %852
  %857 = select i1 %855, float %854, float %853
  %858 = select i1 %855, float %852, float %854
  %859 = icmp eq i32 %849, 2
  %860 = select i1 %859, float %858, float %857
  %861 = select i1 %859, float %857, float %858
  %862 = fcmp fast ogt float %861, 0.000000e+00
  %863 = select i1 %862, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %864 = fmul fast float %863, %851
  %865 = fmul fast float %863, %856
  %866 = fmul fast float %863, %860
  %867 = fadd fast float %864, 1.000000e+00
  %868 = fmul fast float %867, 5.000000e-01
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = fmul fast float %869, 1.023000e+03
  %871 = fptoui float %870 to i32
  %872 = fadd fast float %865, 1.000000e+00
  %873 = fmul fast float %872, 5.000000e-01
  %874 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %875 = fmul fast float %874, 1.023000e+03
  %876 = fptoui float %875 to i32
  %877 = fadd fast float %866, 1.000000e+00
  %878 = fmul fast float %877, 5.000000e-01
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = fmul fast float %879, 5.110000e+02
  %881 = fptoui float %880 to i32
  %882 = shl i32 %876, 10
  %883 = shl i32 %881, 20
  %884 = fcmp fast ogt float %206, 0.000000e+00
  %885 = select i1 %884, i32 0, i32 536870912
  %886 = shl i32 %849, 30
  %887 = or i32 %871, %885
  %888 = or i32 %887, %886
  %889 = or i32 %888, %882
  %890 = or i32 %889, %883
  %891 = select i1 %27, i32 %820, i32 0
  %892 = select i1 %27, i32 %823, i32 0
  %893 = shl i32 %83, 3
  %894 = add i32 %35, %893
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %894, i32 undef, i32 %891, i32 %892, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %895 = shl i32 %83, 2
  %896 = add i32 %32, %895
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %896, i32 undef, i32 %890, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %897 = bitcast float %767 to i32
  %898 = bitcast float %768 to i32
  %899 = bitcast float %769 to i32
  %900 = mul i32 %83, 12
  %901 = add i32 %33, %900
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %901, i32 undef, i32 %897, i32 %898, i32 %899, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %902

; <label>:902                                     ; preds = %841, %78
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
!16 = !{void ()* @cs_skinning_deform_factors_unified_unpacked_positions_main, !"cs_skinning_deform_factors_unified_unpacked_positions_main", null, !4, !17}
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

