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
; shader hash: 145d3c86143970b96eccaabbfcadb361
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

define void @cs_skinning_weight_blend_dismember_unified_unpacked_positions_main() {
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
  %37 = extractvalue %dx.types.ResRet.i32 %34, 2
  %38 = and i32 %35, 2147483647
  %39 = add nuw nsw i32 %23, 32
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = extractvalue %dx.types.ResRet.i32 %40, 1
  %43 = extractvalue %dx.types.ResRet.i32 %40, 2
  %44 = extractvalue %dx.types.ResRet.i32 %40, 3
  %45 = bitcast i32 %41 to float
  %46 = bitcast i32 %42 to float
  %47 = bitcast i32 %43 to float
  %48 = bitcast i32 %44 to float
  %49 = add nuw nsw i32 %23, 48
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = extractvalue %dx.types.ResRet.i32 %50, 2
  %54 = bitcast i32 %51 to float
  %55 = bitcast i32 %52 to float
  %56 = bitcast i32 %53 to float
  %57 = add nuw nsw i32 %23, 64
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = extractvalue %dx.types.ResRet.i32 %58, 1
  %61 = extractvalue %dx.types.ResRet.i32 %58, 2
  %62 = extractvalue %dx.types.ResRet.i32 %58, 3
  %63 = bitcast i32 %59 to float
  %64 = bitcast i32 %60 to float
  %65 = bitcast i32 %61 to float
  %66 = bitcast i32 %62 to float
  %67 = shl nuw nsw i32 %25, 3
  %68 = add nuw nsw i32 %67, 72
  %69 = add nuw nsw i32 %68, %23
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.i32 %15, 3
  %73 = sub i32 %22, %72
  %74 = shl i32 %73, 3
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = extractvalue %dx.types.ResRet.i32 %75, 1
  %78 = icmp ult i32 %12, %24
  br i1 %78, label %79, label %905, !dx.controlflow.hints !22

; <label>:79                                      ; preds = %0
  %80 = extractvalue %dx.types.ResRet.i32 %70, 1
  %81 = lshr i32 %21, 16
  %82 = add i32 %81, %12
  %83 = add i32 %80, %82
  %84 = shl i32 %83, 2
  %85 = lshr i32 %83, 8
  %86 = and i32 %85, 4194303
  %87 = add i32 %86, %30
  %88 = shl i32 %87, 2
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = shl i32 %90, 10
  %92 = and i32 %84, 1020
  %93 = or i32 %91, %92
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = and i32 %95, 65535
  %97 = add i32 %96, %32
  %98 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %97, i32 0)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  %102 = extractvalue %dx.types.ResRet.f32 %98, 3
  %103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %97, i32 16)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = extractvalue %dx.types.ResRet.f32 %103, 1
  %106 = extractvalue %dx.types.ResRet.f32 %103, 2
  %107 = extractvalue %dx.types.ResRet.f32 %103, 3
  %108 = icmp slt i32 %35, 0
  %109 = shl i32 %82, 3
  %110 = shl i32 %82, 2
  br i1 %108, label %111, label %119, !dx.controlflow.hints !23

; <label>:111                                     ; preds = %79
  %112 = add i32 %38, %109
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = extractvalue %dx.types.ResRet.i32 %113, 1
  %116 = add i32 %36, %110
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %116, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  br label %143

; <label>:119                                     ; preds = %79
  %120 = lshr i32 %82, 7
  %121 = and i32 %120, 4194303
  %122 = add i32 %121, %28
  %123 = shl i32 %122, 2
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = shl i32 %125, 10
  %127 = and i32 %109, 1016
  %128 = or i32 %126, %127
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = extractvalue %dx.types.ResRet.i32 %129, 1
  %132 = lshr i32 %82, 8
  %133 = and i32 %132, 4194303
  %134 = add i32 %133, %29
  %135 = shl i32 %134, 2
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = shl i32 %137, 10
  %139 = and i32 %110, 1020
  %140 = or i32 %138, %139
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %166 = fmul float %48, %163
  %167 = fmul float %48, %164
  %168 = fmul float %48, %165
  %169 = fadd float %45, %166
  %170 = fadd float %46, %167
  %171 = fadd float %47, %168
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
  br i1 %191, label %198, label %192, !dx.controlflow.hints !24

; <label>:192                                     ; preds = %143
  %193 = icmp eq i32 %172, 1
  br i1 %193, label %198, label %194, !dx.controlflow.hints !25

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
  %206 = lshr i32 %95, 16
  %207 = uitofp i32 %206 to float
  %208 = fdiv float %207, 6.553500e+04
  %209 = icmp ugt i32 %25, 1
  br i1 %209, label %210, label %417

; <label>:210                                     ; preds = %198
  %211 = and i32 %21, 65535
  br label %212

; <label>:212                                     ; preds = %385, %210
  %213 = phi float [ %278, %385 ], [ 0.000000e+00, %210 ]
  %214 = phi float [ %279, %385 ], [ 0.000000e+00, %210 ]
  %215 = phi float [ %280, %385 ], [ 0.000000e+00, %210 ]
  %216 = phi float [ %281, %385 ], [ 0.000000e+00, %210 ]
  %217 = phi float [ %270, %385 ], [ 0.000000e+00, %210 ]
  %218 = phi float [ %271, %385 ], [ 0.000000e+00, %210 ]
  %219 = phi float [ %272, %385 ], [ 0.000000e+00, %210 ]
  %220 = phi float [ %273, %385 ], [ 0.000000e+00, %210 ]
  %221 = phi float [ %251, %385 ], [ 0.000000e+00, %210 ]
  %222 = phi float [ %412, %385 ], [ 0.000000e+00, %210 ]
  %223 = phi i32 [ %413, %385 ], [ 0, %210 ]
  %224 = phi float [ %386, %385 ], [ 0.000000e+00, %210 ]
  %225 = phi float [ %387, %385 ], [ 0.000000e+00, %210 ]
  %226 = phi float [ %388, %385 ], [ 0.000000e+00, %210 ]
  %227 = phi float [ %389, %385 ], [ 0.000000e+00, %210 ]
  %228 = phi float [ %390, %385 ], [ 0.000000e+00, %210 ]
  %229 = phi float [ %391, %385 ], [ 0.000000e+00, %210 ]
  %230 = phi float [ %392, %385 ], [ 0.000000e+00, %210 ]
  %231 = phi i32 [ %414, %385 ], [ 1, %210 ]
  %232 = mul i32 %231, %71
  %233 = add i32 %83, %232
  %234 = shl i32 %233, 2
  %235 = lshr i32 %233, 8
  %236 = and i32 %235, 4194303
  %237 = add i32 %236, %30
  %238 = shl i32 %237, 2
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = shl i32 %240, 10
  %242 = and i32 %234, 1020
  %243 = or i32 %241, %242
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = lshr i32 %245, 16
  %248 = uitofp i32 %247 to float
  %249 = fmul float %248, 0x3EF0000000000000
  %250 = add i32 %246, %32
  %251 = fadd float %221, %249
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %250, i32 0)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = extractvalue %dx.types.ResRet.f32 %252, 3
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %250, i32 16)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = call float @dx.op.dot4.f32(i32 56, float %99, float %100, float %101, float %102, float %253, float %254, float %255, float %256), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %263 = fcmp olt float %262, 0.000000e+00
  %264 = fsub float -0.000000e+00, %249
  %265 = select i1 %263, float %264, float %249
  %266 = fmul float %253, %265
  %267 = fmul float %254, %265
  %268 = fmul float %255, %265
  %269 = fmul float %256, %265
  %270 = fadd float %217, %266
  %271 = fadd float %218, %267
  %272 = fadd float %219, %268
  %273 = fadd float %220, %269
  %274 = fmul float %258, %265
  %275 = fmul float %259, %265
  %276 = fmul float %260, %265
  %277 = fmul float %261, %265
  %278 = fadd float %213, %274
  %279 = fadd float %214, %275
  %280 = fadd float %215, %276
  %281 = fadd float %216, %277
  %282 = fcmp une float %208, 0.000000e+00
  br i1 %282, label %283, label %385, !dx.controlflow.hints !27

; <label>:283                                     ; preds = %212
  %284 = fsub float -0.000000e+00, %253
  %285 = fsub float -0.000000e+00, %254
  %286 = fsub float -0.000000e+00, %255
  %287 = fmul float %261, %284
  %288 = fmul float %261, %285
  %289 = fmul float %261, %286
  %290 = fmul float %256, %258
  %291 = fmul float %256, %259
  %292 = fmul float %256, %260
  %293 = fadd float %287, %290
  %294 = fadd float %288, %291
  %295 = fadd float %289, %292
  %296 = fmul float %259, %286
  %297 = fmul float %260, %285
  %298 = fsub float %296, %297
  %299 = fmul float %260, %284
  %300 = fmul float %258, %286
  %301 = fsub float %299, %300
  %302 = fmul float %258, %285
  %303 = fmul float %259, %284
  %304 = fsub float %302, %303
  %305 = fadd float %293, %298
  %306 = fadd float %294, %301
  %307 = fadd float %295, %304
  %308 = fmul float %305, 2.000000e+00
  %309 = fmul float %306, 2.000000e+00
  %310 = fmul float %307, 2.000000e+00
  %311 = fmul float %171, %254
  %312 = fmul float %170, %255
  %313 = fsub float %311, %312
  %314 = fmul float %169, %255
  %315 = fmul float %171, %253
  %316 = fsub float %314, %315
  %317 = fmul float %170, %253
  %318 = fmul float %169, %254
  %319 = fsub float %317, %318
  %320 = fmul float %313, 2.000000e+00
  %321 = fmul float %316, 2.000000e+00
  %322 = fmul float %319, 2.000000e+00
  %323 = fmul float %256, %320
  %324 = fmul float %256, %321
  %325 = fmul float %256, %322
  %326 = fadd float %169, %323
  %327 = fadd float %170, %324
  %328 = fadd float %171, %325
  %329 = fmul float %254, %322
  %330 = fmul float %255, %321
  %331 = fsub float %329, %330
  %332 = fmul float %255, %320
  %333 = fmul float %253, %322
  %334 = fsub float %332, %333
  %335 = fmul float %253, %321
  %336 = fmul float %254, %320
  %337 = fsub float %335, %336
  %338 = fadd float %326, %331
  %339 = fadd float %327, %334
  %340 = fadd float %328, %337
  %341 = fadd float %308, %338
  %342 = fadd float %309, %339
  %343 = fadd float %310, %340
  %344 = fmul float %249, %341
  %345 = fmul float %249, %342
  %346 = fmul float %249, %343
  %347 = fadd float %228, %344
  %348 = fadd float %229, %345
  %349 = fadd float %230, %346
  %350 = fmul fast float %256, %199
  %351 = fmul fast float %256, %200
  %352 = fmul fast float %256, %201
  %353 = fmul fast float %253, %202
  %354 = fmul fast float %254, %202
  %355 = fmul fast float %255, %202
  %356 = fadd fast float %350, %353
  %357 = fadd fast float %351, %354
  %358 = fadd fast float %352, %355
  %359 = fmul fast float %254, %201
  %360 = fmul fast float %255, %200
  %361 = fsub fast float %359, %360
  %362 = fmul fast float %255, %199
  %363 = fmul fast float %253, %201
  %364 = fsub fast float %362, %363
  %365 = fmul fast float %253, %200
  %366 = fmul fast float %254, %199
  %367 = fsub fast float %365, %366
  %368 = fadd fast float %356, %361
  %369 = fadd fast float %357, %364
  %370 = fadd fast float %358, %367
  %371 = fmul fast float %256, %202
  %372 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fsub fast float %371, %372
  %374 = call float @dx.op.dot4.f32(i32 56, float %224, float %225, float %226, float %227, float %368, float %369, float %370, float %373)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %375 = fcmp fast olt float %374, 0.000000e+00
  %376 = select i1 %375, float %264, float %249
  %377 = fmul fast float %376, %368
  %378 = fmul fast float %376, %369
  %379 = fmul fast float %376, %370
  %380 = fmul fast float %376, %373
  %381 = fadd fast float %377, %224
  %382 = fadd fast float %378, %225
  %383 = fadd fast float %379, %226
  %384 = fadd fast float %380, %227
  br label %385

; <label>:385                                     ; preds = %283, %212
  %386 = phi float [ %381, %283 ], [ %224, %212 ]
  %387 = phi float [ %382, %283 ], [ %225, %212 ]
  %388 = phi float [ %383, %283 ], [ %226, %212 ]
  %389 = phi float [ %384, %283 ], [ %227, %212 ]
  %390 = phi float [ %347, %283 ], [ %228, %212 ]
  %391 = phi float [ %348, %283 ], [ %229, %212 ]
  %392 = phi float [ %349, %283 ], [ %230, %212 ]
  %393 = and i32 %245, 65532
  %394 = add i32 %393, %77
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 255
  %398 = lshr i32 %396, 8
  %399 = and i32 %398, 255
  %400 = lshr i32 %396, 16
  %401 = and i32 %400, 255
  %402 = lshr i32 %396, 24
  %403 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %397, i32* %403, align 4
  %404 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %399, i32* %404, align 4
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %401, i32* %405, align 4
  %406 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %402, i32* %406, align 4
  %407 = and i32 %245, 3
  %408 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %407
  %409 = load i32, i32* %408, align 4, !tbaa !28, !noalias !32
  %410 = icmp ne i32 %409, 255
  %411 = fadd float %222, %249
  %412 = select i1 %410, float %411, float %222
  %413 = select i1 %410, i32 %409, i32 %223
  %414 = add nuw nsw i32 %231, 1
  %415 = icmp eq i32 %414, %211
  br i1 %415, label %416, label %212, !llvm.loop !36

; <label>:416                                     ; preds = %385
  br label %417

; <label>:417                                     ; preds = %416, %198
  %418 = phi float [ 0.000000e+00, %198 ], [ %278, %416 ]
  %419 = phi float [ 0.000000e+00, %198 ], [ %279, %416 ]
  %420 = phi float [ 0.000000e+00, %198 ], [ %280, %416 ]
  %421 = phi float [ 0.000000e+00, %198 ], [ %281, %416 ]
  %422 = phi float [ 0.000000e+00, %198 ], [ %270, %416 ]
  %423 = phi float [ 0.000000e+00, %198 ], [ %271, %416 ]
  %424 = phi float [ 0.000000e+00, %198 ], [ %272, %416 ]
  %425 = phi float [ 0.000000e+00, %198 ], [ %273, %416 ]
  %426 = phi float [ 0.000000e+00, %198 ], [ %251, %416 ]
  %427 = phi float [ 0.000000e+00, %198 ], [ %412, %416 ]
  %428 = phi i32 [ 0, %198 ], [ %413, %416 ]
  %429 = phi float [ 0.000000e+00, %198 ], [ %386, %416 ]
  %430 = phi float [ 0.000000e+00, %198 ], [ %387, %416 ]
  %431 = phi float [ 0.000000e+00, %198 ], [ %388, %416 ]
  %432 = phi float [ 0.000000e+00, %198 ], [ %389, %416 ]
  %433 = phi float [ 0.000000e+00, %198 ], [ %390, %416 ]
  %434 = phi float [ 0.000000e+00, %198 ], [ %391, %416 ]
  %435 = phi float [ 0.000000e+00, %198 ], [ %392, %416 ]
  %436 = fsub float 1.000000e+00, %426
  %437 = fmul float %99, %436
  %438 = fmul float %100, %436
  %439 = fmul float %101, %436
  %440 = fmul float %102, %436
  %441 = fadd float %422, %437
  %442 = fadd float %423, %438
  %443 = fadd float %424, %439
  %444 = fadd float %425, %440
  %445 = fmul float %104, %436
  %446 = fmul float %105, %436
  %447 = fmul float %106, %436
  %448 = fmul float %107, %436
  %449 = fadd float %418, %445
  %450 = fadd float %419, %446
  %451 = fadd float %420, %447
  %452 = fadd float %421, %448
  %453 = call float @dx.op.dot4.f32(i32 56, float %441, float %442, float %443, float %444, float %441, float %442, float %443, float %444), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %454 = call float @dx.op.unary.f32(i32 24, float %453), !dx.precise !26  ; Sqrt(value)
  %455 = fdiv float 1.000000e+00, %454
  %456 = fmul float %444, %455
  %457 = fmul float %441, %455
  %458 = fmul float %442, %455
  %459 = fmul float %443, %455
  %460 = fmul float %452, %455
  %461 = fmul float %449, %455
  %462 = fmul float %450, %455
  %463 = fmul float %451, %455
  %464 = fmul float %171, %458
  %465 = fmul float %170, %459
  %466 = fsub float %464, %465
  %467 = fmul float %169, %459
  %468 = fmul float %171, %457
  %469 = fsub float %467, %468
  %470 = fmul float %170, %457
  %471 = fmul float %169, %458
  %472 = fsub float %470, %471
  %473 = fmul float %169, %456
  %474 = fmul float %170, %456
  %475 = fmul float %171, %456
  %476 = fadd float %473, %466
  %477 = fadd float %474, %469
  %478 = fadd float %475, %472
  %479 = fmul float %461, %456
  %480 = fmul float %462, %456
  %481 = fmul float %463, %456
  %482 = fmul float %457, %460
  %483 = fmul float %458, %460
  %484 = fmul float %459, %460
  %485 = fsub float %479, %482
  %486 = fsub float %480, %483
  %487 = fsub float %481, %484
  %488 = fmul float %458, %463
  %489 = fmul float %459, %462
  %490 = fsub float %488, %489
  %491 = fmul float %459, %461
  %492 = fmul float %457, %463
  %493 = fsub float %491, %492
  %494 = fmul float %457, %462
  %495 = fmul float %458, %461
  %496 = fsub float %494, %495
  %497 = fadd float %485, %490
  %498 = fadd float %486, %493
  %499 = fadd float %487, %496
  %500 = fmul float %497, 2.000000e+00
  %501 = fmul float %498, 2.000000e+00
  %502 = fmul float %499, 2.000000e+00
  %503 = fadd float %169, %500
  %504 = fadd float %170, %501
  %505 = fadd float %171, %502
  %506 = fmul float %457, 2.000000e+00
  %507 = fmul float %458, 2.000000e+00
  %508 = fmul float %459, 2.000000e+00
  %509 = fmul float %507, %478
  %510 = fmul float %508, %477
  %511 = fsub float %509, %510
  %512 = fmul float %508, %476
  %513 = fmul float %506, %478
  %514 = fsub float %512, %513
  %515 = fmul float %506, %477
  %516 = fmul float %507, %476
  %517 = fsub float %515, %516
  %518 = fadd float %503, %511
  %519 = fadd float %504, %514
  %520 = fadd float %505, %517
  %521 = fmul fast float %456, %199
  %522 = fmul fast float %456, %200
  %523 = fmul fast float %456, %201
  %524 = fmul fast float %457, %202
  %525 = fmul fast float %458, %202
  %526 = fmul fast float %459, %202
  %527 = fadd fast float %521, %524
  %528 = fadd fast float %522, %525
  %529 = fadd fast float %523, %526
  %530 = fmul fast float %458, %201
  %531 = fmul fast float %459, %200
  %532 = fsub fast float %530, %531
  %533 = fmul fast float %459, %199
  %534 = fmul fast float %457, %201
  %535 = fsub fast float %533, %534
  %536 = fmul fast float %457, %200
  %537 = fmul fast float %458, %199
  %538 = fsub fast float %536, %537
  %539 = fadd fast float %527, %532
  %540 = fadd fast float %528, %535
  %541 = fadd fast float %529, %538
  %542 = fmul fast float %456, %202
  %543 = call float @dx.op.dot3.f32(i32 55, float %457, float %458, float %459, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = fsub fast float %542, %543
  %545 = fcmp une float %208, 0.000000e+00
  br i1 %545, label %546, label %686, !dx.controlflow.hints !38

; <label>:546                                     ; preds = %417
  %547 = fsub float -0.000000e+00, %99
  %548 = fsub float -0.000000e+00, %100
  %549 = fsub float -0.000000e+00, %101
  %550 = fmul float %107, %547
  %551 = fmul float %107, %548
  %552 = fmul float %107, %549
  %553 = fmul float %102, %104
  %554 = fmul float %102, %105
  %555 = fmul float %102, %106
  %556 = fadd float %550, %553
  %557 = fadd float %551, %554
  %558 = fadd float %552, %555
  %559 = fmul float %105, %549
  %560 = fmul float %106, %548
  %561 = fsub float %559, %560
  %562 = fmul float %106, %547
  %563 = fmul float %104, %549
  %564 = fsub float %562, %563
  %565 = fmul float %104, %548
  %566 = fmul float %105, %547
  %567 = fsub float %565, %566
  %568 = fadd float %556, %561
  %569 = fadd float %557, %564
  %570 = fadd float %558, %567
  %571 = fmul float %568, 2.000000e+00
  %572 = fmul float %569, 2.000000e+00
  %573 = fmul float %570, 2.000000e+00
  %574 = fmul float %100, %171
  %575 = fmul float %101, %170
  %576 = fsub float %574, %575
  %577 = fmul float %101, %169
  %578 = fmul float %99, %171
  %579 = fsub float %577, %578
  %580 = fmul float %99, %170
  %581 = fmul float %100, %169
  %582 = fsub float %580, %581
  %583 = fmul float %576, 2.000000e+00
  %584 = fmul float %579, 2.000000e+00
  %585 = fmul float %582, 2.000000e+00
  %586 = fmul float %102, %583
  %587 = fmul float %102, %584
  %588 = fmul float %102, %585
  %589 = fadd float %169, %586
  %590 = fadd float %170, %587
  %591 = fadd float %171, %588
  %592 = fmul float %100, %585
  %593 = fmul float %101, %584
  %594 = fsub float %592, %593
  %595 = fmul float %101, %583
  %596 = fmul float %99, %585
  %597 = fsub float %595, %596
  %598 = fmul float %99, %584
  %599 = fmul float %100, %583
  %600 = fsub float %598, %599
  %601 = fadd float %589, %594
  %602 = fadd float %590, %597
  %603 = fadd float %591, %600
  %604 = fadd float %571, %601
  %605 = fadd float %572, %602
  %606 = fadd float %573, %603
  %607 = fmul float %604, %436
  %608 = fmul float %605, %436
  %609 = fmul float %606, %436
  %610 = fadd float %607, %433
  %611 = fadd float %608, %434
  %612 = fadd float %609, %435
  %613 = fmul fast float %199, %102
  %614 = fmul fast float %200, %102
  %615 = fmul fast float %201, %102
  %616 = fmul fast float %202, %99
  %617 = fmul fast float %202, %100
  %618 = fmul fast float %202, %101
  %619 = fadd fast float %616, %613
  %620 = fadd fast float %617, %614
  %621 = fmul fast float %201, %100
  %622 = fmul fast float %200, %101
  %623 = fsub fast float %621, %622
  %624 = fmul fast float %199, %101
  %625 = fmul fast float %201, %99
  %626 = fsub fast float %624, %625
  %627 = fmul fast float %200, %99
  %628 = fmul fast float %199, %100
  %629 = fsub fast float %627, %628
  %630 = fadd fast float %619, %623
  %631 = fadd fast float %620, %626
  %632 = fadd fast float %629, %615
  %633 = fadd fast float %632, %618
  %634 = fmul fast float %202, %102
  %635 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = fsub fast float %634, %635
  %637 = call float @dx.op.dot4.f32(i32 56, float %429, float %430, float %431, float %432, float %630, float %631, float %633, float %636)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %638 = fcmp fast olt float %637, 0.000000e+00
  %639 = fsub fast float -0.000000e+00, %436
  %640 = select i1 %638, float %639, float %436
  %641 = fmul fast float %640, %630
  %642 = fmul fast float %640, %631
  %643 = fmul fast float %640, %633
  %644 = fmul fast float %640, %636
  %645 = fadd fast float %641, %429
  %646 = fadd fast float %642, %430
  %647 = fadd fast float %643, %431
  %648 = fadd fast float %644, %432
  %649 = fsub float %610, %518
  %650 = fsub float %611, %519
  %651 = fsub float %612, %520
  %652 = fmul float %208, %649
  %653 = fmul float %208, %650
  %654 = fmul float %208, %651
  %655 = fadd float %518, %652
  %656 = fadd float %519, %653
  %657 = fadd float %520, %654
  %658 = call float @dx.op.dot4.f32(i32 56, float %645, float %646, float %647, float %648, float %539, float %540, float %541, float %544)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %659 = fcmp fast olt float %658, 0.000000e+00
  %660 = fsub fast float -0.000000e+00, %645
  %661 = fsub fast float -0.000000e+00, %646
  %662 = fsub fast float -0.000000e+00, %647
  %663 = fsub fast float -0.000000e+00, %648
  %664 = select i1 %659, float %660, float %645
  %665 = select i1 %659, float %661, float %646
  %666 = select i1 %659, float %662, float %647
  %667 = select i1 %659, float %663, float %648
  %668 = fsub fast float %664, %539
  %669 = fsub fast float %665, %540
  %670 = fsub fast float %666, %541
  %671 = fsub fast float %667, %544
  %672 = fmul fast float %668, %208
  %673 = fmul fast float %669, %208
  %674 = fmul fast float %670, %208
  %675 = fmul fast float %671, %208
  %676 = fadd fast float %672, %539
  %677 = fadd fast float %673, %540
  %678 = fadd fast float %674, %541
  %679 = fadd fast float %675, %544
  %680 = call float @dx.op.dot4.f32(i32 56, float %676, float %677, float %678, float %679, float %676, float %677, float %678, float %679)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %681 = call float @dx.op.unary.f32(i32 25, float %680)  ; Rsqrt(value)
  %682 = fmul fast float %676, %681
  %683 = fmul fast float %677, %681
  %684 = fmul fast float %678, %681
  %685 = fmul fast float %679, %681
  br label %686

; <label>:686                                     ; preds = %546, %417
  %687 = phi float [ %682, %546 ], [ %539, %417 ]
  %688 = phi float [ %683, %546 ], [ %540, %417 ]
  %689 = phi float [ %684, %546 ], [ %541, %417 ]
  %690 = phi float [ %685, %546 ], [ %544, %417 ]
  %691 = phi float [ %655, %546 ], [ %518, %417 ]
  %692 = phi float [ %656, %546 ], [ %519, %417 ]
  %693 = phi float [ %657, %546 ], [ %520, %417 ]
  %694 = and i32 %95, 65532
  %695 = add i32 %694, %77
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 255
  %699 = lshr i32 %697, 8
  %700 = and i32 %699, 255
  %701 = lshr i32 %697, 16
  %702 = and i32 %701, 255
  %703 = lshr i32 %697, 24
  %704 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %698, i32* %704, align 4
  %705 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %700, i32* %705, align 4
  %706 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %702, i32* %706, align 4
  %707 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %703, i32* %707, align 4
  %708 = and i32 %95, 3
  %709 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %708
  %710 = load i32, i32* %709, align 4, !tbaa !28, !noalias !39
  %711 = icmp ne i32 %710, 255
  %712 = fadd float %427, %436
  %713 = select i1 %711, float %712, float %427
  %714 = fcmp ogt float %713, 0.000000e+00
  br i1 %714, label %715, label %736, !dx.controlflow.hints !43

; <label>:715                                     ; preds = %686
  %716 = select i1 %711, i32 %710, i32 %428
  %717 = mul i32 %716, 12
  %718 = add i32 %717, %76
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = extractvalue %dx.types.ResRet.i32 %719, 1
  %722 = extractvalue %dx.types.ResRet.i32 %719, 2
  %723 = bitcast i32 %720 to float
  %724 = bitcast i32 %721 to float
  %725 = bitcast i32 %722 to float
  %726 = fsub float %723, %691
  %727 = fsub float %724, %692
  %728 = fsub float %725, %693
  %729 = call float @dx.op.unary.f32(i32 7, float %713), !dx.precise !26  ; Saturate(value)
  %730 = fmul float %729, %726
  %731 = fmul float %729, %727
  %732 = fmul float %729, %728
  %733 = fadd float %691, %730
  %734 = fadd float %692, %731
  %735 = fadd float %693, %732
  br label %736

; <label>:736                                     ; preds = %715, %686
  %737 = phi float [ %733, %715 ], [ %691, %686 ]
  %738 = phi float [ %734, %715 ], [ %692, %686 ]
  %739 = phi float [ %735, %715 ], [ %693, %686 ]
  %740 = fsub float %737, %54
  %741 = fsub float %738, %55
  %742 = fsub float %739, %56
  %743 = fmul float %64, %742
  %744 = fmul float %65, %741
  %745 = fsub float %743, %744
  %746 = fmul float %65, %740
  %747 = fmul float %63, %742
  %748 = fsub float %746, %747
  %749 = fmul float %63, %741
  %750 = fmul float %64, %740
  %751 = fsub float %749, %750
  %752 = fmul float %745, 2.000000e+00
  %753 = fmul float %748, 2.000000e+00
  %754 = fmul float %751, 2.000000e+00
  %755 = fmul float %66, %752
  %756 = fmul float %66, %753
  %757 = fmul float %66, %754
  %758 = fsub float %740, %755
  %759 = fsub float %741, %756
  %760 = fsub float %742, %757
  %761 = fmul float %64, %754
  %762 = fmul float %65, %753
  %763 = fsub float %761, %762
  %764 = fmul float %65, %752
  %765 = fmul float %63, %754
  %766 = fsub float %764, %765
  %767 = fmul float %63, %753
  %768 = fmul float %64, %752
  %769 = fsub float %767, %768
  %770 = fadd float %758, %763
  %771 = fadd float %759, %766
  %772 = fadd float %760, %769
  %773 = fsub fast float -0.000000e+00, %63
  %774 = fsub fast float -0.000000e+00, %64
  %775 = fsub fast float -0.000000e+00, %65
  %776 = fmul fast float %687, %66
  %777 = fmul fast float %688, %66
  %778 = fmul fast float %689, %66
  %779 = fmul fast float %690, %773
  %780 = fmul fast float %690, %774
  %781 = fmul fast float %690, %775
  %782 = fadd fast float %779, %776
  %783 = fadd fast float %780, %777
  %784 = fmul fast float %689, %774
  %785 = fmul fast float %688, %775
  %786 = fsub fast float %784, %785
  %787 = fmul fast float %687, %775
  %788 = fmul fast float %689, %773
  %789 = fsub fast float %787, %788
  %790 = fmul fast float %688, %773
  %791 = fmul fast float %687, %774
  %792 = fsub fast float %790, %791
  %793 = fadd fast float %782, %786
  %794 = fadd fast float %783, %789
  %795 = fadd fast float %792, %778
  %796 = fadd fast float %795, %781
  %797 = fmul fast float %690, %66
  %798 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %687, float %688, float %689)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = fsub fast float %797, %798
  %800 = fsub float %770, %45
  %801 = fsub float %771, %46
  %802 = fsub float %772, %47
  %803 = fdiv float 1.000000e+00, %48
  %804 = fmul float %803, %800
  %805 = fmul float %803, %801
  %806 = fmul float %803, %802
  %807 = fmul float %804, 5.000000e-01
  %808 = fmul float %805, 5.000000e-01
  %809 = fmul float %806, 5.000000e-01
  %810 = fadd float %807, 5.000000e-01
  %811 = fadd float %808, 5.000000e-01
  %812 = fadd float %809, 5.000000e-01
  %813 = call float @dx.op.unary.f32(i32 7, float %810), !dx.precise !26  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %811), !dx.precise !26  ; Saturate(value)
  %815 = call float @dx.op.unary.f32(i32 7, float %812), !dx.precise !26  ; Saturate(value)
  %816 = fmul float %813, 2.097151e+06
  %817 = fmul float %814, 2.097151e+06
  %818 = fmul float %815, 2.097151e+06
  %819 = fptoui float %816 to i32
  %820 = fptoui float %817 to i32
  %821 = fptoui float %818 to i32
  %822 = shl i32 %820, 21
  %823 = or i32 %822, %819
  %824 = lshr i32 %820, 11
  %825 = shl i32 %821, 10
  %826 = or i32 %825, %824
  %827 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %828 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %829 = fcmp fast oge float %827, %828
  %830 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %831 = fcmp fast oge float %827, %830
  %832 = and i1 %829, %831
  br i1 %832, label %833, label %836, !dx.controlflow.hints !44

; <label>:833                                     ; preds = %736
  %834 = fcmp fast olt float %796, 0.000000e+00
  %835 = select i1 %834, float 5.000000e+00, float 4.000000e+00
  br label %844

; <label>:836                                     ; preds = %736
  %837 = fcmp fast ult float %830, %828
  br i1 %837, label %841, label %838, !dx.controlflow.hints !45

; <label>:838                                     ; preds = %836
  %839 = fcmp fast olt float %794, 0.000000e+00
  %840 = select i1 %839, float 3.000000e+00, float 2.000000e+00
  br label %844

; <label>:841                                     ; preds = %836
  %842 = fcmp fast olt float %793, 0.000000e+00
  %843 = select i1 %842, float 1.000000e+00, float 0.000000e+00
  br label %844

; <label>:844                                     ; preds = %841, %838, %833
  %845 = phi float [ %835, %833 ], [ %840, %838 ], [ %843, %841 ]
  %846 = fmul fast float %845, 5.000000e-01
  %847 = fptoui float %846 to i32
  %848 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %849 = call float @dx.op.binary.f32(i32 35, float %830, float %827)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 35, float %828, float %849)  ; FMax(a,b)
  %851 = fcmp fast ogt float %848, %850
  %852 = select i1 %851, i32 3, i32 %847
  %853 = icmp eq i32 %852, 0
  %854 = select i1 %853, float %794, float %793
  %855 = select i1 %853, float %796, float %794
  %856 = select i1 %853, float %799, float %796
  %857 = select i1 %853, float %793, float %799
  %858 = icmp eq i32 %852, 1
  %859 = select i1 %858, float %856, float %855
  %860 = select i1 %858, float %857, float %856
  %861 = select i1 %858, float %855, float %857
  %862 = icmp eq i32 %852, 2
  %863 = select i1 %862, float %861, float %860
  %864 = select i1 %862, float %860, float %861
  %865 = fcmp fast ogt float %864, 0.000000e+00
  %866 = select i1 %865, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %867 = fmul fast float %866, %854
  %868 = fmul fast float %866, %859
  %869 = fmul fast float %866, %863
  %870 = fadd fast float %867, 1.000000e+00
  %871 = fmul fast float %870, 5.000000e-01
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = fmul fast float %872, 1.023000e+03
  %874 = fptoui float %873 to i32
  %875 = fadd fast float %868, 1.000000e+00
  %876 = fmul fast float %875, 5.000000e-01
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = fmul fast float %877, 1.023000e+03
  %879 = fptoui float %878 to i32
  %880 = fadd fast float %869, 1.000000e+00
  %881 = fmul fast float %880, 5.000000e-01
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fmul fast float %882, 5.110000e+02
  %884 = fptoui float %883 to i32
  %885 = shl i32 %879, 10
  %886 = shl i32 %884, 20
  %887 = fcmp fast ogt float %205, 0.000000e+00
  %888 = select i1 %887, i32 0, i32 536870912
  %889 = shl i32 %852, 30
  %890 = or i32 %874, %888
  %891 = or i32 %890, %889
  %892 = or i32 %891, %885
  %893 = or i32 %892, %886
  %894 = select i1 %31, i32 %823, i32 0
  %895 = select i1 %31, i32 %826, i32 0
  %896 = shl i32 %82, 3
  %897 = add i32 %38, %896
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %897, i32 undef, i32 %894, i32 %895, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %898 = shl i32 %82, 2
  %899 = add i32 %36, %898
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %899, i32 undef, i32 %893, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %900 = bitcast float %770 to i32
  %901 = bitcast float %771 to i32
  %902 = bitcast float %772 to i32
  %903 = mul i32 %82, 12
  %904 = add i32 %37, %903
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %904, i32 undef, i32 %900, i32 %901, i32 %902, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %905

; <label>:905                                     ; preds = %844, %0
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
!19 = !{void ()* @cs_skinning_weight_blend_dismember_unified_unpacked_positions_main, !"cs_skinning_weight_blend_dismember_unified_unpacked_positions_main", null, !4, !20}
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

