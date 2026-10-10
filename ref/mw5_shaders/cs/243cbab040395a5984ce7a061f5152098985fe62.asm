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
; shader hash: 9e6d7930701280bbf871e9828d15d285
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

define void @cs_skinning_dismember_unified_unpacked_positions_main() {
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
  br i1 %78, label %79, label %628, !dx.controlflow.hints !22

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
  %206 = icmp ugt i32 %25, 1
  br i1 %206, label %207, label %296

; <label>:207                                     ; preds = %198
  %208 = and i32 %21, 65535
  br label %209

; <label>:209                                     ; preds = %209, %207
  %210 = phi float [ %268, %209 ], [ 0.000000e+00, %207 ]
  %211 = phi float [ %269, %209 ], [ 0.000000e+00, %207 ]
  %212 = phi float [ %270, %209 ], [ 0.000000e+00, %207 ]
  %213 = phi float [ %271, %209 ], [ 0.000000e+00, %207 ]
  %214 = phi float [ %260, %209 ], [ 0.000000e+00, %207 ]
  %215 = phi float [ %261, %209 ], [ 0.000000e+00, %207 ]
  %216 = phi float [ %262, %209 ], [ 0.000000e+00, %207 ]
  %217 = phi float [ %263, %209 ], [ 0.000000e+00, %207 ]
  %218 = phi float [ %241, %209 ], [ 0.000000e+00, %207 ]
  %219 = phi float [ %291, %209 ], [ 0.000000e+00, %207 ]
  %220 = phi i32 [ %292, %209 ], [ 0, %207 ]
  %221 = phi i32 [ %293, %209 ], [ 1, %207 ]
  %222 = mul i32 %221, %71
  %223 = add i32 %83, %222
  %224 = shl i32 %223, 2
  %225 = lshr i32 %223, 8
  %226 = and i32 %225, 4194303
  %227 = add i32 %226, %30
  %228 = shl i32 %227, 2
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = shl i32 %230, 10
  %232 = and i32 %224, 1020
  %233 = or i32 %231, %232
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = lshr i32 %235, 16
  %238 = uitofp i32 %237 to float
  %239 = fmul float %238, 0x3EF0000000000000
  %240 = add i32 %236, %32
  %241 = fadd float %218, %239
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %240, i32 0)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %240, i32 16)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = call float @dx.op.dot4.f32(i32 56, float %99, float %100, float %101, float %102, float %243, float %244, float %245, float %246), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %253 = fcmp olt float %252, 0.000000e+00
  %254 = fsub float -0.000000e+00, %239
  %255 = select i1 %253, float %254, float %239
  %256 = fmul float %243, %255
  %257 = fmul float %244, %255
  %258 = fmul float %245, %255
  %259 = fmul float %246, %255
  %260 = fadd float %214, %256
  %261 = fadd float %215, %257
  %262 = fadd float %216, %258
  %263 = fadd float %217, %259
  %264 = fmul float %248, %255
  %265 = fmul float %249, %255
  %266 = fmul float %250, %255
  %267 = fmul float %251, %255
  %268 = fadd float %210, %264
  %269 = fadd float %211, %265
  %270 = fadd float %212, %266
  %271 = fadd float %213, %267
  %272 = and i32 %235, 65532
  %273 = add i32 %272, %77
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 255
  %277 = lshr i32 %275, 8
  %278 = and i32 %277, 255
  %279 = lshr i32 %275, 16
  %280 = and i32 %279, 255
  %281 = lshr i32 %275, 24
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %276, i32* %282, align 4
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %278, i32* %283, align 4
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %280, i32* %284, align 4
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %281, i32* %285, align 4
  %286 = and i32 %235, 3
  %287 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %286
  %288 = load i32, i32* %287, align 4, !tbaa !27, !noalias !31
  %289 = icmp ne i32 %288, 255
  %290 = fadd float %219, %239
  %291 = select i1 %289, float %290, float %219
  %292 = select i1 %289, i32 %288, i32 %220
  %293 = add nuw nsw i32 %221, 1
  %294 = icmp eq i32 %293, %208
  br i1 %294, label %295, label %209, !llvm.loop !35

; <label>:295                                     ; preds = %209
  br label %296

; <label>:296                                     ; preds = %295, %198
  %297 = phi float [ 0.000000e+00, %198 ], [ %268, %295 ]
  %298 = phi float [ 0.000000e+00, %198 ], [ %269, %295 ]
  %299 = phi float [ 0.000000e+00, %198 ], [ %270, %295 ]
  %300 = phi float [ 0.000000e+00, %198 ], [ %271, %295 ]
  %301 = phi float [ 0.000000e+00, %198 ], [ %260, %295 ]
  %302 = phi float [ 0.000000e+00, %198 ], [ %261, %295 ]
  %303 = phi float [ 0.000000e+00, %198 ], [ %262, %295 ]
  %304 = phi float [ 0.000000e+00, %198 ], [ %263, %295 ]
  %305 = phi float [ 0.000000e+00, %198 ], [ %241, %295 ]
  %306 = phi float [ 0.000000e+00, %198 ], [ %291, %295 ]
  %307 = phi i32 [ 0, %198 ], [ %292, %295 ]
  %308 = fsub float 1.000000e+00, %305
  %309 = fmul float %99, %308
  %310 = fmul float %100, %308
  %311 = fmul float %101, %308
  %312 = fmul float %102, %308
  %313 = fadd float %301, %309
  %314 = fadd float %302, %310
  %315 = fadd float %303, %311
  %316 = fadd float %304, %312
  %317 = fmul float %104, %308
  %318 = fmul float %105, %308
  %319 = fmul float %106, %308
  %320 = fmul float %107, %308
  %321 = fadd float %297, %317
  %322 = fadd float %298, %318
  %323 = fadd float %299, %319
  %324 = fadd float %300, %320
  %325 = call float @dx.op.dot4.f32(i32 56, float %313, float %314, float %315, float %316, float %313, float %314, float %315, float %316), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %326 = call float @dx.op.unary.f32(i32 24, float %325), !dx.precise !26  ; Sqrt(value)
  %327 = fdiv float 1.000000e+00, %326
  %328 = fmul float %316, %327
  %329 = fmul float %313, %327
  %330 = fmul float %314, %327
  %331 = fmul float %315, %327
  %332 = fmul float %324, %327
  %333 = fmul float %321, %327
  %334 = fmul float %322, %327
  %335 = fmul float %323, %327
  %336 = fmul float %171, %330
  %337 = fmul float %170, %331
  %338 = fsub float %336, %337
  %339 = fmul float %169, %331
  %340 = fmul float %171, %329
  %341 = fsub float %339, %340
  %342 = fmul float %170, %329
  %343 = fmul float %169, %330
  %344 = fsub float %342, %343
  %345 = fmul float %169, %328
  %346 = fmul float %170, %328
  %347 = fmul float %171, %328
  %348 = fadd float %345, %338
  %349 = fadd float %346, %341
  %350 = fadd float %347, %344
  %351 = fmul float %333, %328
  %352 = fmul float %334, %328
  %353 = fmul float %335, %328
  %354 = fmul float %329, %332
  %355 = fmul float %330, %332
  %356 = fmul float %331, %332
  %357 = fsub float %351, %354
  %358 = fsub float %352, %355
  %359 = fsub float %353, %356
  %360 = fmul float %330, %335
  %361 = fmul float %331, %334
  %362 = fsub float %360, %361
  %363 = fmul float %331, %333
  %364 = fmul float %329, %335
  %365 = fsub float %363, %364
  %366 = fmul float %329, %334
  %367 = fmul float %330, %333
  %368 = fsub float %366, %367
  %369 = fadd float %357, %362
  %370 = fadd float %358, %365
  %371 = fadd float %359, %368
  %372 = fmul float %369, 2.000000e+00
  %373 = fmul float %370, 2.000000e+00
  %374 = fmul float %371, 2.000000e+00
  %375 = fadd float %169, %372
  %376 = fadd float %170, %373
  %377 = fadd float %171, %374
  %378 = fmul float %329, 2.000000e+00
  %379 = fmul float %330, 2.000000e+00
  %380 = fmul float %331, 2.000000e+00
  %381 = fmul float %379, %350
  %382 = fmul float %380, %349
  %383 = fsub float %381, %382
  %384 = fmul float %380, %348
  %385 = fmul float %378, %350
  %386 = fsub float %384, %385
  %387 = fmul float %378, %349
  %388 = fmul float %379, %348
  %389 = fsub float %387, %388
  %390 = fadd float %375, %383
  %391 = fadd float %376, %386
  %392 = fadd float %377, %389
  %393 = fmul fast float %328, %199
  %394 = fmul fast float %328, %200
  %395 = fmul fast float %328, %201
  %396 = fmul fast float %329, %202
  %397 = fmul fast float %330, %202
  %398 = fmul fast float %331, %202
  %399 = fadd fast float %393, %396
  %400 = fadd fast float %394, %397
  %401 = fadd fast float %395, %398
  %402 = fmul fast float %330, %201
  %403 = fmul fast float %331, %200
  %404 = fsub fast float %402, %403
  %405 = fmul fast float %331, %199
  %406 = fmul fast float %329, %201
  %407 = fsub fast float %405, %406
  %408 = fmul fast float %329, %200
  %409 = fmul fast float %330, %199
  %410 = fsub fast float %408, %409
  %411 = fadd fast float %399, %404
  %412 = fadd fast float %400, %407
  %413 = fadd fast float %401, %410
  %414 = fmul fast float %328, %202
  %415 = call float @dx.op.dot3.f32(i32 55, float %329, float %330, float %331, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = fsub fast float %414, %415
  %417 = and i32 %95, 65532
  %418 = add i32 %417, %77
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 255
  %422 = lshr i32 %420, 8
  %423 = and i32 %422, 255
  %424 = lshr i32 %420, 16
  %425 = and i32 %424, 255
  %426 = lshr i32 %420, 24
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %421, i32* %427, align 4
  %428 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %423, i32* %428, align 4
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %425, i32* %429, align 4
  %430 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %426, i32* %430, align 4
  %431 = and i32 %95, 3
  %432 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %431
  %433 = load i32, i32* %432, align 4, !tbaa !27, !noalias !37
  %434 = icmp ne i32 %433, 255
  %435 = fadd float %306, %308
  %436 = select i1 %434, float %435, float %306
  %437 = fcmp ogt float %436, 0.000000e+00
  br i1 %437, label %438, label %459, !dx.controlflow.hints !41

; <label>:438                                     ; preds = %296
  %439 = select i1 %434, i32 %433, i32 %307
  %440 = mul i32 %439, 12
  %441 = add i32 %440, %76
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = extractvalue %dx.types.ResRet.i32 %442, 1
  %445 = extractvalue %dx.types.ResRet.i32 %442, 2
  %446 = bitcast i32 %443 to float
  %447 = bitcast i32 %444 to float
  %448 = bitcast i32 %445 to float
  %449 = fsub float %446, %390
  %450 = fsub float %447, %391
  %451 = fsub float %448, %392
  %452 = call float @dx.op.unary.f32(i32 7, float %436), !dx.precise !26  ; Saturate(value)
  %453 = fmul float %452, %449
  %454 = fmul float %452, %450
  %455 = fmul float %452, %451
  %456 = fadd float %390, %453
  %457 = fadd float %391, %454
  %458 = fadd float %392, %455
  br label %459

; <label>:459                                     ; preds = %438, %296
  %460 = phi float [ %456, %438 ], [ %390, %296 ]
  %461 = phi float [ %457, %438 ], [ %391, %296 ]
  %462 = phi float [ %458, %438 ], [ %392, %296 ]
  %463 = fsub float %460, %54
  %464 = fsub float %461, %55
  %465 = fsub float %462, %56
  %466 = fmul float %64, %465
  %467 = fmul float %65, %464
  %468 = fsub float %466, %467
  %469 = fmul float %65, %463
  %470 = fmul float %63, %465
  %471 = fsub float %469, %470
  %472 = fmul float %63, %464
  %473 = fmul float %64, %463
  %474 = fsub float %472, %473
  %475 = fmul float %468, 2.000000e+00
  %476 = fmul float %471, 2.000000e+00
  %477 = fmul float %474, 2.000000e+00
  %478 = fmul float %66, %475
  %479 = fmul float %66, %476
  %480 = fmul float %66, %477
  %481 = fsub float %463, %478
  %482 = fsub float %464, %479
  %483 = fsub float %465, %480
  %484 = fmul float %64, %477
  %485 = fmul float %65, %476
  %486 = fsub float %484, %485
  %487 = fmul float %65, %475
  %488 = fmul float %63, %477
  %489 = fsub float %487, %488
  %490 = fmul float %63, %476
  %491 = fmul float %64, %475
  %492 = fsub float %490, %491
  %493 = fadd float %481, %486
  %494 = fadd float %482, %489
  %495 = fadd float %483, %492
  %496 = fsub fast float -0.000000e+00, %63
  %497 = fsub fast float -0.000000e+00, %64
  %498 = fsub fast float -0.000000e+00, %65
  %499 = fmul fast float %411, %66
  %500 = fmul fast float %412, %66
  %501 = fmul fast float %413, %66
  %502 = fmul fast float %416, %496
  %503 = fmul fast float %416, %497
  %504 = fmul fast float %416, %498
  %505 = fadd fast float %499, %502
  %506 = fadd fast float %500, %503
  %507 = fadd fast float %501, %504
  %508 = fmul fast float %413, %497
  %509 = fmul fast float %412, %498
  %510 = fsub fast float %508, %509
  %511 = fmul fast float %411, %498
  %512 = fmul fast float %413, %496
  %513 = fsub fast float %511, %512
  %514 = fmul fast float %412, %496
  %515 = fmul fast float %411, %497
  %516 = fsub fast float %514, %515
  %517 = fadd fast float %505, %510
  %518 = fadd fast float %506, %513
  %519 = fadd fast float %507, %516
  %520 = fmul fast float %416, %66
  %521 = call float @dx.op.dot3.f32(i32 55, float %496, float %497, float %498, float %411, float %412, float %413)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = fsub fast float %520, %521
  %523 = fsub float %493, %45
  %524 = fsub float %494, %46
  %525 = fsub float %495, %47
  %526 = fdiv float 1.000000e+00, %48
  %527 = fmul float %526, %523
  %528 = fmul float %526, %524
  %529 = fmul float %526, %525
  %530 = fmul float %527, 5.000000e-01
  %531 = fmul float %528, 5.000000e-01
  %532 = fmul float %529, 5.000000e-01
  %533 = fadd float %530, 5.000000e-01
  %534 = fadd float %531, 5.000000e-01
  %535 = fadd float %532, 5.000000e-01
  %536 = call float @dx.op.unary.f32(i32 7, float %533), !dx.precise !26  ; Saturate(value)
  %537 = call float @dx.op.unary.f32(i32 7, float %534), !dx.precise !26  ; Saturate(value)
  %538 = call float @dx.op.unary.f32(i32 7, float %535), !dx.precise !26  ; Saturate(value)
  %539 = fmul float %536, 2.097151e+06
  %540 = fmul float %537, 2.097151e+06
  %541 = fmul float %538, 2.097151e+06
  %542 = fptoui float %539 to i32
  %543 = fptoui float %540 to i32
  %544 = fptoui float %541 to i32
  %545 = shl i32 %543, 21
  %546 = or i32 %545, %542
  %547 = lshr i32 %543, 11
  %548 = shl i32 %544, 10
  %549 = or i32 %548, %547
  %550 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %551 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %552 = fcmp fast oge float %550, %551
  %553 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %554 = fcmp fast oge float %550, %553
  %555 = and i1 %552, %554
  br i1 %555, label %556, label %559, !dx.controlflow.hints !42

; <label>:556                                     ; preds = %459
  %557 = fcmp fast olt float %519, 0.000000e+00
  %558 = select i1 %557, float 5.000000e+00, float 4.000000e+00
  br label %567

; <label>:559                                     ; preds = %459
  %560 = fcmp fast ult float %553, %551
  br i1 %560, label %564, label %561, !dx.controlflow.hints !43

; <label>:561                                     ; preds = %559
  %562 = fcmp fast olt float %518, 0.000000e+00
  %563 = select i1 %562, float 3.000000e+00, float 2.000000e+00
  br label %567

; <label>:564                                     ; preds = %559
  %565 = fcmp fast olt float %517, 0.000000e+00
  %566 = select i1 %565, float 1.000000e+00, float 0.000000e+00
  br label %567

; <label>:567                                     ; preds = %564, %561, %556
  %568 = phi float [ %558, %556 ], [ %563, %561 ], [ %566, %564 ]
  %569 = fmul fast float %568, 5.000000e-01
  %570 = fptoui float %569 to i32
  %571 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %572 = call float @dx.op.binary.f32(i32 35, float %553, float %550)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %551, float %572)  ; FMax(a,b)
  %574 = fcmp fast ogt float %571, %573
  %575 = select i1 %574, i32 3, i32 %570
  %576 = icmp eq i32 %575, 0
  %577 = select i1 %576, float %518, float %517
  %578 = select i1 %576, float %519, float %518
  %579 = select i1 %576, float %522, float %519
  %580 = select i1 %576, float %517, float %522
  %581 = icmp eq i32 %575, 1
  %582 = select i1 %581, float %579, float %578
  %583 = select i1 %581, float %580, float %579
  %584 = select i1 %581, float %578, float %580
  %585 = icmp eq i32 %575, 2
  %586 = select i1 %585, float %584, float %583
  %587 = select i1 %585, float %583, float %584
  %588 = fcmp fast ogt float %587, 0.000000e+00
  %589 = select i1 %588, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %590 = fmul fast float %589, %577
  %591 = fmul fast float %589, %582
  %592 = fmul fast float %589, %586
  %593 = fadd fast float %590, 1.000000e+00
  %594 = fmul fast float %593, 5.000000e-01
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fmul fast float %595, 1.023000e+03
  %597 = fptoui float %596 to i32
  %598 = fadd fast float %591, 1.000000e+00
  %599 = fmul fast float %598, 5.000000e-01
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %600, 1.023000e+03
  %602 = fptoui float %601 to i32
  %603 = fadd fast float %592, 1.000000e+00
  %604 = fmul fast float %603, 5.000000e-01
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fmul fast float %605, 5.110000e+02
  %607 = fptoui float %606 to i32
  %608 = shl i32 %602, 10
  %609 = shl i32 %607, 20
  %610 = fcmp fast ogt float %205, 0.000000e+00
  %611 = select i1 %610, i32 0, i32 536870912
  %612 = shl i32 %575, 30
  %613 = or i32 %597, %611
  %614 = or i32 %613, %612
  %615 = or i32 %614, %608
  %616 = or i32 %615, %609
  %617 = select i1 %31, i32 %546, i32 0
  %618 = select i1 %31, i32 %549, i32 0
  %619 = shl i32 %82, 3
  %620 = add i32 %38, %619
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %620, i32 undef, i32 %617, i32 %618, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %621 = shl i32 %82, 2
  %622 = add i32 %36, %621
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %622, i32 undef, i32 %616, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %623 = bitcast float %493 to i32
  %624 = bitcast float %494 to i32
  %625 = bitcast float %495 to i32
  %626 = mul i32 %82, 12
  %627 = add i32 %37, %626
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %627, i32 undef, i32 %623, i32 %624, i32 %625, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %628

; <label>:628                                     ; preds = %567, %0
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
!19 = !{void ()* @cs_skinning_dismember_unified_unpacked_positions_main, !"cs_skinning_dismember_unified_unpacked_positions_main", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{i32 1}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentWeight"}
!33 = distinct !{!33, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z"}
!34 = distinct !{!34, !33, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentIdx"}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentWeight"}
!39 = distinct !{!39, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z"}
!40 = distinct !{!40, !39, !"\01?UpdateDismembermentData@@YAXIIMAIAMAIAI@Z: %dismembermentIdx"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}

