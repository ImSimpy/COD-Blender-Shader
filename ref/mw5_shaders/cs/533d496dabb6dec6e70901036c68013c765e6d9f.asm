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
; shader hash: 3f7c0b3182e7bc94ff11b77ec0082fc4
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

define void @cs_skinning_weight_blend_dismember_unified_main() {
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
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %17 = add i32 %16, %11
  %18 = shl i32 %17, 3
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = extractvalue %dx.types.ResRet.i32 %19, 1
  %22 = and i32 %20, 65535
  %23 = mul nuw nsw i32 %22, 144
  %24 = lshr i32 %20, 16
  %25 = and i32 %21, 65535
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = extractvalue %dx.types.ResRet.i32 %26, 1
  %29 = extractvalue %dx.types.ResRet.i32 %26, 2
  %30 = extractvalue %dx.types.ResRet.i32 %26, 3
  %31 = icmp ne i32 %27, -1
  %32 = select i1 %31, i32 %27, i32 0
  %33 = add nuw nsw i32 %23, 16
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = extractvalue %dx.types.ResRet.i32 %34, 1
  %37 = and i32 %35, 2147483647
  %38 = add nuw nsw i32 %23, 32
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %44 = bitcast i32 %40 to float
  %45 = bitcast i32 %41 to float
  %46 = bitcast i32 %42 to float
  %47 = bitcast i32 %43 to float
  %48 = add nuw nsw i32 %23, 48
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = bitcast i32 %50 to float
  %54 = bitcast i32 %51 to float
  %55 = bitcast i32 %52 to float
  %56 = add nuw nsw i32 %23, 64
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = extractvalue %dx.types.ResRet.i32 %57, 1
  %60 = extractvalue %dx.types.ResRet.i32 %57, 2
  %61 = extractvalue %dx.types.ResRet.i32 %57, 3
  %62 = bitcast i32 %58 to float
  %63 = bitcast i32 %59 to float
  %64 = bitcast i32 %60 to float
  %65 = bitcast i32 %61 to float
  %66 = shl nuw nsw i32 %25, 3
  %67 = add nuw nsw i32 %66, 72
  %68 = add nuw nsw i32 %67, %23
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.i32 %15, 3
  %72 = sub i32 %22, %71
  %73 = shl i32 %72, 3
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = extractvalue %dx.types.ResRet.i32 %74, 1
  %77 = icmp ult i32 %12, %24
  br i1 %77, label %78, label %899, !dx.controlflow.hints !22

; <label>:78                                      ; preds = %0
  %79 = extractvalue %dx.types.ResRet.i32 %69, 1
  %80 = lshr i32 %21, 16
  %81 = add i32 %80, %12
  %82 = add i32 %79, %81
  %83 = shl i32 %82, 2
  %84 = lshr i32 %82, 8
  %85 = and i32 %84, 4194303
  %86 = add i32 %85, %30
  %87 = shl i32 %86, 2
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = shl i32 %89, 10
  %91 = and i32 %83, 1020
  %92 = or i32 %90, %91
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = and i32 %94, 65535
  %96 = add i32 %95, %32
  %97 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %96, i32 0)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = extractvalue %dx.types.ResRet.f32 %97, 1
  %100 = extractvalue %dx.types.ResRet.f32 %97, 2
  %101 = extractvalue %dx.types.ResRet.f32 %97, 3
  %102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %96, i32 16)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = extractvalue %dx.types.ResRet.f32 %102, 3
  %107 = icmp slt i32 %35, 0
  %108 = shl i32 %81, 3
  %109 = shl i32 %81, 2
  br i1 %107, label %110, label %118, !dx.controlflow.hints !23

; <label>:110                                     ; preds = %78
  %111 = add i32 %37, %108
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = extractvalue %dx.types.ResRet.i32 %112, 1
  %115 = add i32 %36, %109
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  br label %142

; <label>:118                                     ; preds = %78
  %119 = lshr i32 %81, 7
  %120 = and i32 %119, 4194303
  %121 = add i32 %120, %28
  %122 = shl i32 %121, 2
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = shl i32 %124, 10
  %126 = and i32 %108, 1016
  %127 = or i32 %125, %126
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  %130 = extractvalue %dx.types.ResRet.i32 %128, 1
  %131 = lshr i32 %81, 8
  %132 = and i32 %131, 4194303
  %133 = add i32 %132, %29
  %134 = shl i32 %133, 2
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = shl i32 %136, 10
  %138 = and i32 %109, 1020
  %139 = or i32 %137, %138
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %139, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  br label %142

; <label>:142                                     ; preds = %118, %110
  %143 = phi i32 [ %113, %110 ], [ %129, %118 ]
  %144 = phi i32 [ %114, %110 ], [ %130, %118 ]
  %145 = phi i32 [ %117, %110 ], [ %141, %118 ]
  %146 = and i32 %143, 2097151
  %147 = uitofp i32 %146 to float
  %148 = lshr i32 %143, 21
  %149 = shl i32 %144, 11
  %150 = and i32 %149, 2095104
  %151 = or i32 %150, %148
  %152 = uitofp i32 %151 to float
  %153 = lshr i32 %144, 10
  %154 = and i32 %153, 2097151
  %155 = uitofp i32 %154 to float
  %156 = fdiv float %147, 2.097151e+06
  %157 = fdiv float %152, 2.097151e+06
  %158 = fdiv float %155, 2.097151e+06
  %159 = fmul float %156, 2.000000e+00
  %160 = fmul float %157, 2.000000e+00
  %161 = fmul float %158, 2.000000e+00
  %162 = fadd float %159, -1.000000e+00
  %163 = fadd float %160, -1.000000e+00
  %164 = fadd float %161, -1.000000e+00
  %165 = fmul float %47, %162
  %166 = fmul float %47, %163
  %167 = fmul float %47, %164
  %168 = fadd float %44, %165
  %169 = fadd float %45, %166
  %170 = fadd float %46, %167
  %171 = lshr i32 %145, 30
  %172 = and i32 %145, 1023
  %173 = uitofp i32 %172 to float
  %174 = lshr i32 %145, 10
  %175 = and i32 %174, 1023
  %176 = uitofp i32 %175 to float
  %177 = lshr i32 %145, 20
  %178 = and i32 %177, 511
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %173, 0x3F56A64800000000
  %181 = fadd fast float %180, 0xBFE6A09E60000000
  %182 = fmul fast float %176, 0x3F56A64800000000
  %183 = fadd fast float %182, 0xBFE6A09E60000000
  %184 = fmul fast float %179, 0x3F66ABF460000000
  %185 = fadd fast float %184, 0xBFE6A09E60000000
  %186 = call float @dx.op.dot3.f32(i32 55, float %181, float %183, float %185, float %181, float %183, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call float @dx.op.unary.f32(i32 24, float %188)  ; Sqrt(value)
  %190 = icmp eq i32 %171, 0
  br i1 %190, label %197, label %191, !dx.controlflow.hints !24

; <label>:191                                     ; preds = %142
  %192 = icmp eq i32 %171, 1
  br i1 %192, label %197, label %193, !dx.controlflow.hints !25

; <label>:193                                     ; preds = %191
  %194 = icmp eq i32 %171, 2
  %195 = select i1 %194, float %189, float %185
  %196 = select i1 %194, float %185, float %189
  br label %197

; <label>:197                                     ; preds = %193, %191, %142
  %198 = phi float [ %189, %142 ], [ %181, %191 ], [ %181, %193 ]
  %199 = phi float [ %181, %142 ], [ %189, %191 ], [ %183, %193 ]
  %200 = phi float [ %183, %142 ], [ %183, %191 ], [ %195, %193 ]
  %201 = phi float [ %185, %142 ], [ %185, %191 ], [ %196, %193 ]
  %202 = and i32 %145, 536870912
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %203, float -1.000000e+00, float 1.000000e+00
  %205 = lshr i32 %94, 16
  %206 = uitofp i32 %205 to float
  %207 = fdiv float %206, 6.553500e+04
  %208 = icmp ugt i32 %25, 1
  br i1 %208, label %209, label %416

; <label>:209                                     ; preds = %197
  %210 = and i32 %21, 65535
  br label %211

; <label>:211                                     ; preds = %384, %209
  %212 = phi float [ %277, %384 ], [ 0.000000e+00, %209 ]
  %213 = phi float [ %278, %384 ], [ 0.000000e+00, %209 ]
  %214 = phi float [ %279, %384 ], [ 0.000000e+00, %209 ]
  %215 = phi float [ %280, %384 ], [ 0.000000e+00, %209 ]
  %216 = phi float [ %269, %384 ], [ 0.000000e+00, %209 ]
  %217 = phi float [ %270, %384 ], [ 0.000000e+00, %209 ]
  %218 = phi float [ %271, %384 ], [ 0.000000e+00, %209 ]
  %219 = phi float [ %272, %384 ], [ 0.000000e+00, %209 ]
  %220 = phi float [ %250, %384 ], [ 0.000000e+00, %209 ]
  %221 = phi float [ %411, %384 ], [ 0.000000e+00, %209 ]
  %222 = phi i32 [ %412, %384 ], [ 0, %209 ]
  %223 = phi float [ %385, %384 ], [ 0.000000e+00, %209 ]
  %224 = phi float [ %386, %384 ], [ 0.000000e+00, %209 ]
  %225 = phi float [ %387, %384 ], [ 0.000000e+00, %209 ]
  %226 = phi float [ %388, %384 ], [ 0.000000e+00, %209 ]
  %227 = phi float [ %389, %384 ], [ 0.000000e+00, %209 ]
  %228 = phi float [ %390, %384 ], [ 0.000000e+00, %209 ]
  %229 = phi float [ %391, %384 ], [ 0.000000e+00, %209 ]
  %230 = phi i32 [ %413, %384 ], [ 1, %209 ]
  %231 = mul i32 %230, %70
  %232 = add i32 %82, %231
  %233 = shl i32 %232, 2
  %234 = lshr i32 %232, 8
  %235 = and i32 %234, 4194303
  %236 = add i32 %235, %30
  %237 = shl i32 %236, 2
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = shl i32 %239, 10
  %241 = and i32 %233, 1020
  %242 = or i32 %240, %241
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = lshr i32 %244, 16
  %247 = uitofp i32 %246 to float
  %248 = fmul float %247, 0x3EF0000000000000
  %249 = add i32 %245, %32
  %250 = fadd float %220, %248
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %249, i32 0)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %249, i32 16)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = extractvalue %dx.types.ResRet.f32 %256, 3
  %261 = call float @dx.op.dot4.f32(i32 56, float %98, float %99, float %100, float %101, float %252, float %253, float %254, float %255), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %262 = fcmp olt float %261, 0.000000e+00
  %263 = fsub float -0.000000e+00, %248
  %264 = select i1 %262, float %263, float %248
  %265 = fmul float %252, %264
  %266 = fmul float %253, %264
  %267 = fmul float %254, %264
  %268 = fmul float %255, %264
  %269 = fadd float %216, %265
  %270 = fadd float %217, %266
  %271 = fadd float %218, %267
  %272 = fadd float %219, %268
  %273 = fmul float %257, %264
  %274 = fmul float %258, %264
  %275 = fmul float %259, %264
  %276 = fmul float %260, %264
  %277 = fadd float %212, %273
  %278 = fadd float %213, %274
  %279 = fadd float %214, %275
  %280 = fadd float %215, %276
  %281 = fcmp une float %207, 0.000000e+00
  br i1 %281, label %282, label %384, !dx.controlflow.hints !27

; <label>:282                                     ; preds = %211
  %283 = fsub float -0.000000e+00, %252
  %284 = fsub float -0.000000e+00, %253
  %285 = fsub float -0.000000e+00, %254
  %286 = fmul float %260, %283
  %287 = fmul float %260, %284
  %288 = fmul float %260, %285
  %289 = fmul float %255, %257
  %290 = fmul float %255, %258
  %291 = fmul float %255, %259
  %292 = fadd float %286, %289
  %293 = fadd float %287, %290
  %294 = fadd float %288, %291
  %295 = fmul float %258, %285
  %296 = fmul float %259, %284
  %297 = fsub float %295, %296
  %298 = fmul float %259, %283
  %299 = fmul float %257, %285
  %300 = fsub float %298, %299
  %301 = fmul float %257, %284
  %302 = fmul float %258, %283
  %303 = fsub float %301, %302
  %304 = fadd float %292, %297
  %305 = fadd float %293, %300
  %306 = fadd float %294, %303
  %307 = fmul float %304, 2.000000e+00
  %308 = fmul float %305, 2.000000e+00
  %309 = fmul float %306, 2.000000e+00
  %310 = fmul float %170, %253
  %311 = fmul float %169, %254
  %312 = fsub float %310, %311
  %313 = fmul float %168, %254
  %314 = fmul float %170, %252
  %315 = fsub float %313, %314
  %316 = fmul float %169, %252
  %317 = fmul float %168, %253
  %318 = fsub float %316, %317
  %319 = fmul float %312, 2.000000e+00
  %320 = fmul float %315, 2.000000e+00
  %321 = fmul float %318, 2.000000e+00
  %322 = fmul float %255, %319
  %323 = fmul float %255, %320
  %324 = fmul float %255, %321
  %325 = fadd float %168, %322
  %326 = fadd float %169, %323
  %327 = fadd float %170, %324
  %328 = fmul float %253, %321
  %329 = fmul float %254, %320
  %330 = fsub float %328, %329
  %331 = fmul float %254, %319
  %332 = fmul float %252, %321
  %333 = fsub float %331, %332
  %334 = fmul float %252, %320
  %335 = fmul float %253, %319
  %336 = fsub float %334, %335
  %337 = fadd float %325, %330
  %338 = fadd float %326, %333
  %339 = fadd float %327, %336
  %340 = fadd float %307, %337
  %341 = fadd float %308, %338
  %342 = fadd float %309, %339
  %343 = fmul float %248, %340
  %344 = fmul float %248, %341
  %345 = fmul float %248, %342
  %346 = fadd float %227, %343
  %347 = fadd float %228, %344
  %348 = fadd float %229, %345
  %349 = fmul fast float %255, %198
  %350 = fmul fast float %255, %199
  %351 = fmul fast float %255, %200
  %352 = fmul fast float %252, %201
  %353 = fmul fast float %253, %201
  %354 = fmul fast float %254, %201
  %355 = fadd fast float %349, %352
  %356 = fadd fast float %350, %353
  %357 = fadd fast float %351, %354
  %358 = fmul fast float %253, %200
  %359 = fmul fast float %254, %199
  %360 = fsub fast float %358, %359
  %361 = fmul fast float %254, %198
  %362 = fmul fast float %252, %200
  %363 = fsub fast float %361, %362
  %364 = fmul fast float %252, %199
  %365 = fmul fast float %253, %198
  %366 = fsub fast float %364, %365
  %367 = fadd fast float %355, %360
  %368 = fadd fast float %356, %363
  %369 = fadd fast float %357, %366
  %370 = fmul fast float %255, %201
  %371 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = fsub fast float %370, %371
  %373 = call float @dx.op.dot4.f32(i32 56, float %223, float %224, float %225, float %226, float %367, float %368, float %369, float %372)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %374 = fcmp fast olt float %373, 0.000000e+00
  %375 = select i1 %374, float %263, float %248
  %376 = fmul fast float %375, %367
  %377 = fmul fast float %375, %368
  %378 = fmul fast float %375, %369
  %379 = fmul fast float %375, %372
  %380 = fadd fast float %376, %223
  %381 = fadd fast float %377, %224
  %382 = fadd fast float %378, %225
  %383 = fadd fast float %379, %226
  br label %384

; <label>:384                                     ; preds = %282, %211
  %385 = phi float [ %380, %282 ], [ %223, %211 ]
  %386 = phi float [ %381, %282 ], [ %224, %211 ]
  %387 = phi float [ %382, %282 ], [ %225, %211 ]
  %388 = phi float [ %383, %282 ], [ %226, %211 ]
  %389 = phi float [ %346, %282 ], [ %227, %211 ]
  %390 = phi float [ %347, %282 ], [ %228, %211 ]
  %391 = phi float [ %348, %282 ], [ %229, %211 ]
  %392 = and i32 %244, 65532
  %393 = add i32 %392, %76
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 255
  %397 = lshr i32 %395, 8
  %398 = and i32 %397, 255
  %399 = lshr i32 %395, 16
  %400 = and i32 %399, 255
  %401 = lshr i32 %395, 24
  %402 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %396, i32* %402, align 4
  %403 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %398, i32* %403, align 4
  %404 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %400, i32* %404, align 4
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %401, i32* %405, align 4
  %406 = and i32 %244, 3
  %407 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %406
  %408 = load i32, i32* %407, align 4, !tbaa !28, !noalias !32
  %409 = icmp ne i32 %408, 255
  %410 = fadd float %221, %248
  %411 = select i1 %409, float %410, float %221
  %412 = select i1 %409, i32 %408, i32 %222
  %413 = add nuw nsw i32 %230, 1
  %414 = icmp eq i32 %413, %210
  br i1 %414, label %415, label %211, !llvm.loop !36

; <label>:415                                     ; preds = %384
  br label %416

; <label>:416                                     ; preds = %415, %197
  %417 = phi float [ 0.000000e+00, %197 ], [ %277, %415 ]
  %418 = phi float [ 0.000000e+00, %197 ], [ %278, %415 ]
  %419 = phi float [ 0.000000e+00, %197 ], [ %279, %415 ]
  %420 = phi float [ 0.000000e+00, %197 ], [ %280, %415 ]
  %421 = phi float [ 0.000000e+00, %197 ], [ %269, %415 ]
  %422 = phi float [ 0.000000e+00, %197 ], [ %270, %415 ]
  %423 = phi float [ 0.000000e+00, %197 ], [ %271, %415 ]
  %424 = phi float [ 0.000000e+00, %197 ], [ %272, %415 ]
  %425 = phi float [ 0.000000e+00, %197 ], [ %250, %415 ]
  %426 = phi float [ 0.000000e+00, %197 ], [ %411, %415 ]
  %427 = phi i32 [ 0, %197 ], [ %412, %415 ]
  %428 = phi float [ 0.000000e+00, %197 ], [ %385, %415 ]
  %429 = phi float [ 0.000000e+00, %197 ], [ %386, %415 ]
  %430 = phi float [ 0.000000e+00, %197 ], [ %387, %415 ]
  %431 = phi float [ 0.000000e+00, %197 ], [ %388, %415 ]
  %432 = phi float [ 0.000000e+00, %197 ], [ %389, %415 ]
  %433 = phi float [ 0.000000e+00, %197 ], [ %390, %415 ]
  %434 = phi float [ 0.000000e+00, %197 ], [ %391, %415 ]
  %435 = fsub float 1.000000e+00, %425
  %436 = fmul float %98, %435
  %437 = fmul float %99, %435
  %438 = fmul float %100, %435
  %439 = fmul float %101, %435
  %440 = fadd float %421, %436
  %441 = fadd float %422, %437
  %442 = fadd float %423, %438
  %443 = fadd float %424, %439
  %444 = fmul float %103, %435
  %445 = fmul float %104, %435
  %446 = fmul float %105, %435
  %447 = fmul float %106, %435
  %448 = fadd float %417, %444
  %449 = fadd float %418, %445
  %450 = fadd float %419, %446
  %451 = fadd float %420, %447
  %452 = call float @dx.op.dot4.f32(i32 56, float %440, float %441, float %442, float %443, float %440, float %441, float %442, float %443), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %453 = call float @dx.op.unary.f32(i32 24, float %452), !dx.precise !26  ; Sqrt(value)
  %454 = fdiv float 1.000000e+00, %453
  %455 = fmul float %443, %454
  %456 = fmul float %440, %454
  %457 = fmul float %441, %454
  %458 = fmul float %442, %454
  %459 = fmul float %451, %454
  %460 = fmul float %448, %454
  %461 = fmul float %449, %454
  %462 = fmul float %450, %454
  %463 = fmul float %170, %457
  %464 = fmul float %169, %458
  %465 = fsub float %463, %464
  %466 = fmul float %168, %458
  %467 = fmul float %170, %456
  %468 = fsub float %466, %467
  %469 = fmul float %169, %456
  %470 = fmul float %168, %457
  %471 = fsub float %469, %470
  %472 = fmul float %168, %455
  %473 = fmul float %169, %455
  %474 = fmul float %170, %455
  %475 = fadd float %472, %465
  %476 = fadd float %473, %468
  %477 = fadd float %474, %471
  %478 = fmul float %460, %455
  %479 = fmul float %461, %455
  %480 = fmul float %462, %455
  %481 = fmul float %456, %459
  %482 = fmul float %457, %459
  %483 = fmul float %458, %459
  %484 = fsub float %478, %481
  %485 = fsub float %479, %482
  %486 = fsub float %480, %483
  %487 = fmul float %457, %462
  %488 = fmul float %458, %461
  %489 = fsub float %487, %488
  %490 = fmul float %458, %460
  %491 = fmul float %456, %462
  %492 = fsub float %490, %491
  %493 = fmul float %456, %461
  %494 = fmul float %457, %460
  %495 = fsub float %493, %494
  %496 = fadd float %484, %489
  %497 = fadd float %485, %492
  %498 = fadd float %486, %495
  %499 = fmul float %496, 2.000000e+00
  %500 = fmul float %497, 2.000000e+00
  %501 = fmul float %498, 2.000000e+00
  %502 = fadd float %168, %499
  %503 = fadd float %169, %500
  %504 = fadd float %170, %501
  %505 = fmul float %456, 2.000000e+00
  %506 = fmul float %457, 2.000000e+00
  %507 = fmul float %458, 2.000000e+00
  %508 = fmul float %506, %477
  %509 = fmul float %507, %476
  %510 = fsub float %508, %509
  %511 = fmul float %507, %475
  %512 = fmul float %505, %477
  %513 = fsub float %511, %512
  %514 = fmul float %505, %476
  %515 = fmul float %506, %475
  %516 = fsub float %514, %515
  %517 = fadd float %502, %510
  %518 = fadd float %503, %513
  %519 = fadd float %504, %516
  %520 = fmul fast float %455, %198
  %521 = fmul fast float %455, %199
  %522 = fmul fast float %455, %200
  %523 = fmul fast float %456, %201
  %524 = fmul fast float %457, %201
  %525 = fmul fast float %458, %201
  %526 = fadd fast float %520, %523
  %527 = fadd fast float %521, %524
  %528 = fadd fast float %522, %525
  %529 = fmul fast float %457, %200
  %530 = fmul fast float %458, %199
  %531 = fsub fast float %529, %530
  %532 = fmul fast float %458, %198
  %533 = fmul fast float %456, %200
  %534 = fsub fast float %532, %533
  %535 = fmul fast float %456, %199
  %536 = fmul fast float %457, %198
  %537 = fsub fast float %535, %536
  %538 = fadd fast float %526, %531
  %539 = fadd fast float %527, %534
  %540 = fadd fast float %528, %537
  %541 = fmul fast float %455, %201
  %542 = call float @dx.op.dot3.f32(i32 55, float %456, float %457, float %458, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %543 = fsub fast float %541, %542
  %544 = fcmp une float %207, 0.000000e+00
  br i1 %544, label %545, label %685, !dx.controlflow.hints !38

; <label>:545                                     ; preds = %416
  %546 = fsub float -0.000000e+00, %98
  %547 = fsub float -0.000000e+00, %99
  %548 = fsub float -0.000000e+00, %100
  %549 = fmul float %106, %546
  %550 = fmul float %106, %547
  %551 = fmul float %106, %548
  %552 = fmul float %101, %103
  %553 = fmul float %101, %104
  %554 = fmul float %101, %105
  %555 = fadd float %549, %552
  %556 = fadd float %550, %553
  %557 = fadd float %551, %554
  %558 = fmul float %104, %548
  %559 = fmul float %105, %547
  %560 = fsub float %558, %559
  %561 = fmul float %105, %546
  %562 = fmul float %103, %548
  %563 = fsub float %561, %562
  %564 = fmul float %103, %547
  %565 = fmul float %104, %546
  %566 = fsub float %564, %565
  %567 = fadd float %555, %560
  %568 = fadd float %556, %563
  %569 = fadd float %557, %566
  %570 = fmul float %567, 2.000000e+00
  %571 = fmul float %568, 2.000000e+00
  %572 = fmul float %569, 2.000000e+00
  %573 = fmul float %99, %170
  %574 = fmul float %100, %169
  %575 = fsub float %573, %574
  %576 = fmul float %100, %168
  %577 = fmul float %98, %170
  %578 = fsub float %576, %577
  %579 = fmul float %98, %169
  %580 = fmul float %99, %168
  %581 = fsub float %579, %580
  %582 = fmul float %575, 2.000000e+00
  %583 = fmul float %578, 2.000000e+00
  %584 = fmul float %581, 2.000000e+00
  %585 = fmul float %101, %582
  %586 = fmul float %101, %583
  %587 = fmul float %101, %584
  %588 = fadd float %168, %585
  %589 = fadd float %169, %586
  %590 = fadd float %170, %587
  %591 = fmul float %99, %584
  %592 = fmul float %100, %583
  %593 = fsub float %591, %592
  %594 = fmul float %100, %582
  %595 = fmul float %98, %584
  %596 = fsub float %594, %595
  %597 = fmul float %98, %583
  %598 = fmul float %99, %582
  %599 = fsub float %597, %598
  %600 = fadd float %588, %593
  %601 = fadd float %589, %596
  %602 = fadd float %590, %599
  %603 = fadd float %570, %600
  %604 = fadd float %571, %601
  %605 = fadd float %572, %602
  %606 = fmul float %603, %435
  %607 = fmul float %604, %435
  %608 = fmul float %605, %435
  %609 = fadd float %606, %432
  %610 = fadd float %607, %433
  %611 = fadd float %608, %434
  %612 = fmul fast float %198, %101
  %613 = fmul fast float %199, %101
  %614 = fmul fast float %200, %101
  %615 = fmul fast float %201, %98
  %616 = fmul fast float %201, %99
  %617 = fmul fast float %201, %100
  %618 = fadd fast float %615, %612
  %619 = fadd fast float %616, %613
  %620 = fmul fast float %200, %99
  %621 = fmul fast float %199, %100
  %622 = fsub fast float %620, %621
  %623 = fmul fast float %198, %100
  %624 = fmul fast float %200, %98
  %625 = fsub fast float %623, %624
  %626 = fmul fast float %199, %98
  %627 = fmul fast float %198, %99
  %628 = fsub fast float %626, %627
  %629 = fadd fast float %618, %622
  %630 = fadd fast float %619, %625
  %631 = fadd fast float %628, %614
  %632 = fadd fast float %631, %617
  %633 = fmul fast float %201, %101
  %634 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = fsub fast float %633, %634
  %636 = call float @dx.op.dot4.f32(i32 56, float %428, float %429, float %430, float %431, float %629, float %630, float %632, float %635)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %637 = fcmp fast olt float %636, 0.000000e+00
  %638 = fsub fast float -0.000000e+00, %435
  %639 = select i1 %637, float %638, float %435
  %640 = fmul fast float %639, %629
  %641 = fmul fast float %639, %630
  %642 = fmul fast float %639, %632
  %643 = fmul fast float %639, %635
  %644 = fadd fast float %640, %428
  %645 = fadd fast float %641, %429
  %646 = fadd fast float %642, %430
  %647 = fadd fast float %643, %431
  %648 = fsub float %609, %517
  %649 = fsub float %610, %518
  %650 = fsub float %611, %519
  %651 = fmul float %207, %648
  %652 = fmul float %207, %649
  %653 = fmul float %207, %650
  %654 = fadd float %517, %651
  %655 = fadd float %518, %652
  %656 = fadd float %519, %653
  %657 = call float @dx.op.dot4.f32(i32 56, float %644, float %645, float %646, float %647, float %538, float %539, float %540, float %543)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %658 = fcmp fast olt float %657, 0.000000e+00
  %659 = fsub fast float -0.000000e+00, %644
  %660 = fsub fast float -0.000000e+00, %645
  %661 = fsub fast float -0.000000e+00, %646
  %662 = fsub fast float -0.000000e+00, %647
  %663 = select i1 %658, float %659, float %644
  %664 = select i1 %658, float %660, float %645
  %665 = select i1 %658, float %661, float %646
  %666 = select i1 %658, float %662, float %647
  %667 = fsub fast float %663, %538
  %668 = fsub fast float %664, %539
  %669 = fsub fast float %665, %540
  %670 = fsub fast float %666, %543
  %671 = fmul fast float %667, %207
  %672 = fmul fast float %668, %207
  %673 = fmul fast float %669, %207
  %674 = fmul fast float %670, %207
  %675 = fadd fast float %671, %538
  %676 = fadd fast float %672, %539
  %677 = fadd fast float %673, %540
  %678 = fadd fast float %674, %543
  %679 = call float @dx.op.dot4.f32(i32 56, float %675, float %676, float %677, float %678, float %675, float %676, float %677, float %678)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %680 = call float @dx.op.unary.f32(i32 25, float %679)  ; Rsqrt(value)
  %681 = fmul fast float %675, %680
  %682 = fmul fast float %676, %680
  %683 = fmul fast float %677, %680
  %684 = fmul fast float %678, %680
  br label %685

; <label>:685                                     ; preds = %545, %416
  %686 = phi float [ %681, %545 ], [ %538, %416 ]
  %687 = phi float [ %682, %545 ], [ %539, %416 ]
  %688 = phi float [ %683, %545 ], [ %540, %416 ]
  %689 = phi float [ %684, %545 ], [ %543, %416 ]
  %690 = phi float [ %654, %545 ], [ %517, %416 ]
  %691 = phi float [ %655, %545 ], [ %518, %416 ]
  %692 = phi float [ %656, %545 ], [ %519, %416 ]
  %693 = and i32 %94, 65532
  %694 = add i32 %693, %76
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 255
  %698 = lshr i32 %696, 8
  %699 = and i32 %698, 255
  %700 = lshr i32 %696, 16
  %701 = and i32 %700, 255
  %702 = lshr i32 %696, 24
  %703 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %697, i32* %703, align 4
  %704 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %699, i32* %704, align 4
  %705 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %701, i32* %705, align 4
  %706 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %702, i32* %706, align 4
  %707 = and i32 %94, 3
  %708 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %707
  %709 = load i32, i32* %708, align 4, !tbaa !28, !noalias !39
  %710 = icmp ne i32 %709, 255
  %711 = fadd float %426, %435
  %712 = select i1 %710, float %711, float %426
  %713 = fcmp ogt float %712, 0.000000e+00
  br i1 %713, label %714, label %735, !dx.controlflow.hints !43

; <label>:714                                     ; preds = %685
  %715 = select i1 %710, i32 %709, i32 %427
  %716 = mul i32 %715, 12
  %717 = add i32 %716, %75
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = extractvalue %dx.types.ResRet.i32 %718, 1
  %721 = extractvalue %dx.types.ResRet.i32 %718, 2
  %722 = bitcast i32 %719 to float
  %723 = bitcast i32 %720 to float
  %724 = bitcast i32 %721 to float
  %725 = fsub float %722, %690
  %726 = fsub float %723, %691
  %727 = fsub float %724, %692
  %728 = call float @dx.op.unary.f32(i32 7, float %712), !dx.precise !26  ; Saturate(value)
  %729 = fmul float %728, %725
  %730 = fmul float %728, %726
  %731 = fmul float %728, %727
  %732 = fadd float %690, %729
  %733 = fadd float %691, %730
  %734 = fadd float %692, %731
  br label %735

; <label>:735                                     ; preds = %714, %685
  %736 = phi float [ %732, %714 ], [ %690, %685 ]
  %737 = phi float [ %733, %714 ], [ %691, %685 ]
  %738 = phi float [ %734, %714 ], [ %692, %685 ]
  %739 = fsub float %736, %53
  %740 = fsub float %737, %54
  %741 = fsub float %738, %55
  %742 = fmul float %63, %741
  %743 = fmul float %64, %740
  %744 = fsub float %742, %743
  %745 = fmul float %64, %739
  %746 = fmul float %62, %741
  %747 = fsub float %745, %746
  %748 = fmul float %62, %740
  %749 = fmul float %63, %739
  %750 = fsub float %748, %749
  %751 = fmul float %744, 2.000000e+00
  %752 = fmul float %747, 2.000000e+00
  %753 = fmul float %750, 2.000000e+00
  %754 = fmul float %65, %751
  %755 = fmul float %65, %752
  %756 = fmul float %65, %753
  %757 = fsub float %739, %754
  %758 = fsub float %740, %755
  %759 = fsub float %741, %756
  %760 = fmul float %63, %753
  %761 = fmul float %64, %752
  %762 = fsub float %760, %761
  %763 = fmul float %64, %751
  %764 = fmul float %62, %753
  %765 = fsub float %763, %764
  %766 = fmul float %62, %752
  %767 = fmul float %63, %751
  %768 = fsub float %766, %767
  %769 = fadd float %757, %762
  %770 = fadd float %758, %765
  %771 = fadd float %759, %768
  %772 = fsub fast float -0.000000e+00, %62
  %773 = fsub fast float -0.000000e+00, %63
  %774 = fsub fast float -0.000000e+00, %64
  %775 = fmul fast float %686, %65
  %776 = fmul fast float %687, %65
  %777 = fmul fast float %688, %65
  %778 = fmul fast float %689, %772
  %779 = fmul fast float %689, %773
  %780 = fmul fast float %689, %774
  %781 = fadd fast float %778, %775
  %782 = fadd fast float %779, %776
  %783 = fmul fast float %688, %773
  %784 = fmul fast float %687, %774
  %785 = fsub fast float %783, %784
  %786 = fmul fast float %686, %774
  %787 = fmul fast float %688, %772
  %788 = fsub fast float %786, %787
  %789 = fmul fast float %687, %772
  %790 = fmul fast float %686, %773
  %791 = fsub fast float %789, %790
  %792 = fadd fast float %781, %785
  %793 = fadd fast float %782, %788
  %794 = fadd fast float %791, %777
  %795 = fadd fast float %794, %780
  %796 = fmul fast float %689, %65
  %797 = call float @dx.op.dot3.f32(i32 55, float %772, float %773, float %774, float %686, float %687, float %688)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = fsub fast float %796, %797
  %799 = fsub float %769, %44
  %800 = fsub float %770, %45
  %801 = fsub float %771, %46
  %802 = fdiv float 1.000000e+00, %47
  %803 = fmul float %802, %799
  %804 = fmul float %802, %800
  %805 = fmul float %802, %801
  %806 = fmul float %803, 5.000000e-01
  %807 = fmul float %804, 5.000000e-01
  %808 = fmul float %805, 5.000000e-01
  %809 = fadd float %806, 5.000000e-01
  %810 = fadd float %807, 5.000000e-01
  %811 = fadd float %808, 5.000000e-01
  %812 = call float @dx.op.unary.f32(i32 7, float %809), !dx.precise !26  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810), !dx.precise !26  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %811), !dx.precise !26  ; Saturate(value)
  %815 = fmul float %812, 2.097151e+06
  %816 = fmul float %813, 2.097151e+06
  %817 = fmul float %814, 2.097151e+06
  %818 = fptoui float %815 to i32
  %819 = fptoui float %816 to i32
  %820 = fptoui float %817 to i32
  %821 = shl i32 %819, 21
  %822 = or i32 %821, %818
  %823 = lshr i32 %819, 11
  %824 = shl i32 %820, 10
  %825 = or i32 %824, %823
  %826 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %827 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %828 = fcmp fast oge float %826, %827
  %829 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %830 = fcmp fast oge float %826, %829
  %831 = and i1 %828, %830
  br i1 %831, label %832, label %835, !dx.controlflow.hints !44

; <label>:832                                     ; preds = %735
  %833 = fcmp fast olt float %795, 0.000000e+00
  %834 = select i1 %833, float 5.000000e+00, float 4.000000e+00
  br label %843

; <label>:835                                     ; preds = %735
  %836 = fcmp fast ult float %829, %827
  br i1 %836, label %840, label %837, !dx.controlflow.hints !45

; <label>:837                                     ; preds = %835
  %838 = fcmp fast olt float %793, 0.000000e+00
  %839 = select i1 %838, float 3.000000e+00, float 2.000000e+00
  br label %843

; <label>:840                                     ; preds = %835
  %841 = fcmp fast olt float %792, 0.000000e+00
  %842 = select i1 %841, float 1.000000e+00, float 0.000000e+00
  br label %843

; <label>:843                                     ; preds = %840, %837, %832
  %844 = phi float [ %834, %832 ], [ %839, %837 ], [ %842, %840 ]
  %845 = fmul fast float %844, 5.000000e-01
  %846 = fptoui float %845 to i32
  %847 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %848 = call float @dx.op.binary.f32(i32 35, float %829, float %826)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 35, float %827, float %848)  ; FMax(a,b)
  %850 = fcmp fast ogt float %847, %849
  %851 = select i1 %850, i32 3, i32 %846
  %852 = icmp eq i32 %851, 0
  %853 = select i1 %852, float %793, float %792
  %854 = select i1 %852, float %795, float %793
  %855 = select i1 %852, float %798, float %795
  %856 = select i1 %852, float %792, float %798
  %857 = icmp eq i32 %851, 1
  %858 = select i1 %857, float %855, float %854
  %859 = select i1 %857, float %856, float %855
  %860 = select i1 %857, float %854, float %856
  %861 = icmp eq i32 %851, 2
  %862 = select i1 %861, float %860, float %859
  %863 = select i1 %861, float %859, float %860
  %864 = fcmp fast ogt float %863, 0.000000e+00
  %865 = select i1 %864, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %866 = fmul fast float %865, %853
  %867 = fmul fast float %865, %858
  %868 = fmul fast float %865, %862
  %869 = fadd fast float %866, 1.000000e+00
  %870 = fmul fast float %869, 5.000000e-01
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = fmul fast float %871, 1.023000e+03
  %873 = fptoui float %872 to i32
  %874 = fadd fast float %867, 1.000000e+00
  %875 = fmul fast float %874, 5.000000e-01
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fmul fast float %876, 1.023000e+03
  %878 = fptoui float %877 to i32
  %879 = fadd fast float %868, 1.000000e+00
  %880 = fmul fast float %879, 5.000000e-01
  %881 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %882 = fmul fast float %881, 5.110000e+02
  %883 = fptoui float %882 to i32
  %884 = shl i32 %878, 10
  %885 = shl i32 %883, 20
  %886 = fcmp fast ogt float %204, 0.000000e+00
  %887 = select i1 %886, i32 0, i32 536870912
  %888 = shl i32 %851, 30
  %889 = or i32 %873, %887
  %890 = or i32 %889, %888
  %891 = or i32 %890, %884
  %892 = or i32 %891, %885
  %893 = select i1 %31, i32 %822, i32 0
  %894 = select i1 %31, i32 %825, i32 0
  %895 = shl i32 %81, 3
  %896 = add i32 %37, %895
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %896, i32 undef, i32 %893, i32 %894, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %897 = shl i32 %81, 2
  %898 = add i32 %36, %897
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %898, i32 undef, i32 %892, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %899

; <label>:899                                     ; preds = %843, %0
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
!19 = !{void ()* @cs_skinning_weight_blend_dismember_unified_main, !"cs_skinning_weight_blend_dismember_unified_main", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
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
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentWeight"}
!41 = distinct !{!41, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z"}
!42 = distinct !{!42, !41, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentIdx"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}

