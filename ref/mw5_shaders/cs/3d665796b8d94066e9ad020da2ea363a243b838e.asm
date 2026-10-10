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
; shader hash: 2893d76c7cd54978e0a96179669bf0ee
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

define void @cs_skinning_dismember_unified_main() {
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
  br i1 %77, label %78, label %622, !dx.controlflow.hints !22

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
  %205 = icmp ugt i32 %25, 1
  br i1 %205, label %206, label %295

; <label>:206                                     ; preds = %197
  %207 = and i32 %21, 65535
  br label %208

; <label>:208                                     ; preds = %208, %206
  %209 = phi float [ %267, %208 ], [ 0.000000e+00, %206 ]
  %210 = phi float [ %268, %208 ], [ 0.000000e+00, %206 ]
  %211 = phi float [ %269, %208 ], [ 0.000000e+00, %206 ]
  %212 = phi float [ %270, %208 ], [ 0.000000e+00, %206 ]
  %213 = phi float [ %259, %208 ], [ 0.000000e+00, %206 ]
  %214 = phi float [ %260, %208 ], [ 0.000000e+00, %206 ]
  %215 = phi float [ %261, %208 ], [ 0.000000e+00, %206 ]
  %216 = phi float [ %262, %208 ], [ 0.000000e+00, %206 ]
  %217 = phi float [ %240, %208 ], [ 0.000000e+00, %206 ]
  %218 = phi float [ %290, %208 ], [ 0.000000e+00, %206 ]
  %219 = phi i32 [ %291, %208 ], [ 0, %206 ]
  %220 = phi i32 [ %292, %208 ], [ 1, %206 ]
  %221 = mul i32 %220, %70
  %222 = add i32 %82, %221
  %223 = shl i32 %222, 2
  %224 = lshr i32 %222, 8
  %225 = and i32 %224, 4194303
  %226 = add i32 %225, %30
  %227 = shl i32 %226, 2
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = shl i32 %229, 10
  %231 = and i32 %223, 1020
  %232 = or i32 %230, %231
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = lshr i32 %234, 16
  %237 = uitofp i32 %236 to float
  %238 = fmul float %237, 0x3EF0000000000000
  %239 = add i32 %235, %32
  %240 = fadd float %217, %238
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %239, i32 0)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = extractvalue %dx.types.ResRet.f32 %241, 2
  %245 = extractvalue %dx.types.ResRet.f32 %241, 3
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %239, i32 16)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = call float @dx.op.dot4.f32(i32 56, float %98, float %99, float %100, float %101, float %242, float %243, float %244, float %245), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %252 = fcmp olt float %251, 0.000000e+00
  %253 = fsub float -0.000000e+00, %238
  %254 = select i1 %252, float %253, float %238
  %255 = fmul float %242, %254
  %256 = fmul float %243, %254
  %257 = fmul float %244, %254
  %258 = fmul float %245, %254
  %259 = fadd float %213, %255
  %260 = fadd float %214, %256
  %261 = fadd float %215, %257
  %262 = fadd float %216, %258
  %263 = fmul float %247, %254
  %264 = fmul float %248, %254
  %265 = fmul float %249, %254
  %266 = fmul float %250, %254
  %267 = fadd float %209, %263
  %268 = fadd float %210, %264
  %269 = fadd float %211, %265
  %270 = fadd float %212, %266
  %271 = and i32 %234, 65532
  %272 = add i32 %271, %76
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = lshr i32 %274, 8
  %277 = and i32 %276, 255
  %278 = lshr i32 %274, 16
  %279 = and i32 %278, 255
  %280 = lshr i32 %274, 24
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %275, i32* %281, align 4
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %277, i32* %282, align 4
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %279, i32* %283, align 4
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %280, i32* %284, align 4
  %285 = and i32 %234, 3
  %286 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %285
  %287 = load i32, i32* %286, align 4, !tbaa !27, !noalias !31
  %288 = icmp ne i32 %287, 255
  %289 = fadd float %218, %238
  %290 = select i1 %288, float %289, float %218
  %291 = select i1 %288, i32 %287, i32 %219
  %292 = add nuw nsw i32 %220, 1
  %293 = icmp eq i32 %292, %207
  br i1 %293, label %294, label %208, !llvm.loop !35

; <label>:294                                     ; preds = %208
  br label %295

; <label>:295                                     ; preds = %294, %197
  %296 = phi float [ 0.000000e+00, %197 ], [ %267, %294 ]
  %297 = phi float [ 0.000000e+00, %197 ], [ %268, %294 ]
  %298 = phi float [ 0.000000e+00, %197 ], [ %269, %294 ]
  %299 = phi float [ 0.000000e+00, %197 ], [ %270, %294 ]
  %300 = phi float [ 0.000000e+00, %197 ], [ %259, %294 ]
  %301 = phi float [ 0.000000e+00, %197 ], [ %260, %294 ]
  %302 = phi float [ 0.000000e+00, %197 ], [ %261, %294 ]
  %303 = phi float [ 0.000000e+00, %197 ], [ %262, %294 ]
  %304 = phi float [ 0.000000e+00, %197 ], [ %240, %294 ]
  %305 = phi float [ 0.000000e+00, %197 ], [ %290, %294 ]
  %306 = phi i32 [ 0, %197 ], [ %291, %294 ]
  %307 = fsub float 1.000000e+00, %304
  %308 = fmul float %98, %307
  %309 = fmul float %99, %307
  %310 = fmul float %100, %307
  %311 = fmul float %101, %307
  %312 = fadd float %300, %308
  %313 = fadd float %301, %309
  %314 = fadd float %302, %310
  %315 = fadd float %303, %311
  %316 = fmul float %103, %307
  %317 = fmul float %104, %307
  %318 = fmul float %105, %307
  %319 = fmul float %106, %307
  %320 = fadd float %296, %316
  %321 = fadd float %297, %317
  %322 = fadd float %298, %318
  %323 = fadd float %299, %319
  %324 = call float @dx.op.dot4.f32(i32 56, float %312, float %313, float %314, float %315, float %312, float %313, float %314, float %315), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %325 = call float @dx.op.unary.f32(i32 24, float %324), !dx.precise !26  ; Sqrt(value)
  %326 = fdiv float 1.000000e+00, %325
  %327 = fmul float %315, %326
  %328 = fmul float %312, %326
  %329 = fmul float %313, %326
  %330 = fmul float %314, %326
  %331 = fmul float %323, %326
  %332 = fmul float %320, %326
  %333 = fmul float %321, %326
  %334 = fmul float %322, %326
  %335 = fmul float %170, %329
  %336 = fmul float %169, %330
  %337 = fsub float %335, %336
  %338 = fmul float %168, %330
  %339 = fmul float %170, %328
  %340 = fsub float %338, %339
  %341 = fmul float %169, %328
  %342 = fmul float %168, %329
  %343 = fsub float %341, %342
  %344 = fmul float %168, %327
  %345 = fmul float %169, %327
  %346 = fmul float %170, %327
  %347 = fadd float %344, %337
  %348 = fadd float %345, %340
  %349 = fadd float %346, %343
  %350 = fmul float %332, %327
  %351 = fmul float %333, %327
  %352 = fmul float %334, %327
  %353 = fmul float %328, %331
  %354 = fmul float %329, %331
  %355 = fmul float %330, %331
  %356 = fsub float %350, %353
  %357 = fsub float %351, %354
  %358 = fsub float %352, %355
  %359 = fmul float %329, %334
  %360 = fmul float %330, %333
  %361 = fsub float %359, %360
  %362 = fmul float %330, %332
  %363 = fmul float %328, %334
  %364 = fsub float %362, %363
  %365 = fmul float %328, %333
  %366 = fmul float %329, %332
  %367 = fsub float %365, %366
  %368 = fadd float %356, %361
  %369 = fadd float %357, %364
  %370 = fadd float %358, %367
  %371 = fmul float %368, 2.000000e+00
  %372 = fmul float %369, 2.000000e+00
  %373 = fmul float %370, 2.000000e+00
  %374 = fadd float %168, %371
  %375 = fadd float %169, %372
  %376 = fadd float %170, %373
  %377 = fmul float %328, 2.000000e+00
  %378 = fmul float %329, 2.000000e+00
  %379 = fmul float %330, 2.000000e+00
  %380 = fmul float %378, %349
  %381 = fmul float %379, %348
  %382 = fsub float %380, %381
  %383 = fmul float %379, %347
  %384 = fmul float %377, %349
  %385 = fsub float %383, %384
  %386 = fmul float %377, %348
  %387 = fmul float %378, %347
  %388 = fsub float %386, %387
  %389 = fadd float %374, %382
  %390 = fadd float %375, %385
  %391 = fadd float %376, %388
  %392 = fmul fast float %327, %198
  %393 = fmul fast float %327, %199
  %394 = fmul fast float %327, %200
  %395 = fmul fast float %328, %201
  %396 = fmul fast float %329, %201
  %397 = fmul fast float %330, %201
  %398 = fadd fast float %392, %395
  %399 = fadd fast float %393, %396
  %400 = fadd fast float %394, %397
  %401 = fmul fast float %329, %200
  %402 = fmul fast float %330, %199
  %403 = fsub fast float %401, %402
  %404 = fmul fast float %330, %198
  %405 = fmul fast float %328, %200
  %406 = fsub fast float %404, %405
  %407 = fmul fast float %328, %199
  %408 = fmul fast float %329, %198
  %409 = fsub fast float %407, %408
  %410 = fadd fast float %398, %403
  %411 = fadd fast float %399, %406
  %412 = fadd fast float %400, %409
  %413 = fmul fast float %327, %201
  %414 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = fsub fast float %413, %414
  %416 = and i32 %94, 65532
  %417 = add i32 %416, %76
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 255
  %421 = lshr i32 %419, 8
  %422 = and i32 %421, 255
  %423 = lshr i32 %419, 16
  %424 = and i32 %423, 255
  %425 = lshr i32 %419, 24
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %420, i32* %426, align 4
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %422, i32* %427, align 4
  %428 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %424, i32* %428, align 4
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %425, i32* %429, align 4
  %430 = and i32 %94, 3
  %431 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %430
  %432 = load i32, i32* %431, align 4, !tbaa !27, !noalias !37
  %433 = icmp ne i32 %432, 255
  %434 = fadd float %305, %307
  %435 = select i1 %433, float %434, float %305
  %436 = fcmp ogt float %435, 0.000000e+00
  br i1 %436, label %437, label %458, !dx.controlflow.hints !41

; <label>:437                                     ; preds = %295
  %438 = select i1 %433, i32 %432, i32 %306
  %439 = mul i32 %438, 12
  %440 = add i32 %439, %75
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = extractvalue %dx.types.ResRet.i32 %441, 1
  %444 = extractvalue %dx.types.ResRet.i32 %441, 2
  %445 = bitcast i32 %442 to float
  %446 = bitcast i32 %443 to float
  %447 = bitcast i32 %444 to float
  %448 = fsub float %445, %389
  %449 = fsub float %446, %390
  %450 = fsub float %447, %391
  %451 = call float @dx.op.unary.f32(i32 7, float %435), !dx.precise !26  ; Saturate(value)
  %452 = fmul float %451, %448
  %453 = fmul float %451, %449
  %454 = fmul float %451, %450
  %455 = fadd float %389, %452
  %456 = fadd float %390, %453
  %457 = fadd float %391, %454
  br label %458

; <label>:458                                     ; preds = %437, %295
  %459 = phi float [ %455, %437 ], [ %389, %295 ]
  %460 = phi float [ %456, %437 ], [ %390, %295 ]
  %461 = phi float [ %457, %437 ], [ %391, %295 ]
  %462 = fsub float %459, %53
  %463 = fsub float %460, %54
  %464 = fsub float %461, %55
  %465 = fmul float %63, %464
  %466 = fmul float %64, %463
  %467 = fsub float %465, %466
  %468 = fmul float %64, %462
  %469 = fmul float %62, %464
  %470 = fsub float %468, %469
  %471 = fmul float %62, %463
  %472 = fmul float %63, %462
  %473 = fsub float %471, %472
  %474 = fmul float %467, 2.000000e+00
  %475 = fmul float %470, 2.000000e+00
  %476 = fmul float %473, 2.000000e+00
  %477 = fmul float %65, %474
  %478 = fmul float %65, %475
  %479 = fmul float %65, %476
  %480 = fsub float %462, %477
  %481 = fsub float %463, %478
  %482 = fsub float %464, %479
  %483 = fmul float %63, %476
  %484 = fmul float %64, %475
  %485 = fsub float %483, %484
  %486 = fmul float %64, %474
  %487 = fmul float %62, %476
  %488 = fsub float %486, %487
  %489 = fmul float %62, %475
  %490 = fmul float %63, %474
  %491 = fsub float %489, %490
  %492 = fadd float %480, %485
  %493 = fadd float %481, %488
  %494 = fadd float %482, %491
  %495 = fsub fast float -0.000000e+00, %62
  %496 = fsub fast float -0.000000e+00, %63
  %497 = fsub fast float -0.000000e+00, %64
  %498 = fmul fast float %410, %65
  %499 = fmul fast float %411, %65
  %500 = fmul fast float %412, %65
  %501 = fmul fast float %415, %495
  %502 = fmul fast float %415, %496
  %503 = fmul fast float %415, %497
  %504 = fadd fast float %498, %501
  %505 = fadd fast float %499, %502
  %506 = fadd fast float %500, %503
  %507 = fmul fast float %412, %496
  %508 = fmul fast float %411, %497
  %509 = fsub fast float %507, %508
  %510 = fmul fast float %410, %497
  %511 = fmul fast float %412, %495
  %512 = fsub fast float %510, %511
  %513 = fmul fast float %411, %495
  %514 = fmul fast float %410, %496
  %515 = fsub fast float %513, %514
  %516 = fadd fast float %504, %509
  %517 = fadd fast float %505, %512
  %518 = fadd fast float %506, %515
  %519 = fmul fast float %415, %65
  %520 = call float @dx.op.dot3.f32(i32 55, float %495, float %496, float %497, float %410, float %411, float %412)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = fsub fast float %519, %520
  %522 = fsub float %492, %44
  %523 = fsub float %493, %45
  %524 = fsub float %494, %46
  %525 = fdiv float 1.000000e+00, %47
  %526 = fmul float %525, %522
  %527 = fmul float %525, %523
  %528 = fmul float %525, %524
  %529 = fmul float %526, 5.000000e-01
  %530 = fmul float %527, 5.000000e-01
  %531 = fmul float %528, 5.000000e-01
  %532 = fadd float %529, 5.000000e-01
  %533 = fadd float %530, 5.000000e-01
  %534 = fadd float %531, 5.000000e-01
  %535 = call float @dx.op.unary.f32(i32 7, float %532), !dx.precise !26  ; Saturate(value)
  %536 = call float @dx.op.unary.f32(i32 7, float %533), !dx.precise !26  ; Saturate(value)
  %537 = call float @dx.op.unary.f32(i32 7, float %534), !dx.precise !26  ; Saturate(value)
  %538 = fmul float %535, 2.097151e+06
  %539 = fmul float %536, 2.097151e+06
  %540 = fmul float %537, 2.097151e+06
  %541 = fptoui float %538 to i32
  %542 = fptoui float %539 to i32
  %543 = fptoui float %540 to i32
  %544 = shl i32 %542, 21
  %545 = or i32 %544, %541
  %546 = lshr i32 %542, 11
  %547 = shl i32 %543, 10
  %548 = or i32 %547, %546
  %549 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %550 = call float @dx.op.unary.f32(i32 6, float %516)  ; FAbs(value)
  %551 = fcmp fast oge float %549, %550
  %552 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %553 = fcmp fast oge float %549, %552
  %554 = and i1 %551, %553
  br i1 %554, label %555, label %558, !dx.controlflow.hints !42

; <label>:555                                     ; preds = %458
  %556 = fcmp fast olt float %518, 0.000000e+00
  %557 = select i1 %556, float 5.000000e+00, float 4.000000e+00
  br label %566

; <label>:558                                     ; preds = %458
  %559 = fcmp fast ult float %552, %550
  br i1 %559, label %563, label %560, !dx.controlflow.hints !43

; <label>:560                                     ; preds = %558
  %561 = fcmp fast olt float %517, 0.000000e+00
  %562 = select i1 %561, float 3.000000e+00, float 2.000000e+00
  br label %566

; <label>:563                                     ; preds = %558
  %564 = fcmp fast olt float %516, 0.000000e+00
  %565 = select i1 %564, float 1.000000e+00, float 0.000000e+00
  br label %566

; <label>:566                                     ; preds = %563, %560, %555
  %567 = phi float [ %557, %555 ], [ %562, %560 ], [ %565, %563 ]
  %568 = fmul fast float %567, 5.000000e-01
  %569 = fptoui float %568 to i32
  %570 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  %571 = call float @dx.op.binary.f32(i32 35, float %552, float %549)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %550, float %571)  ; FMax(a,b)
  %573 = fcmp fast ogt float %570, %572
  %574 = select i1 %573, i32 3, i32 %569
  %575 = icmp eq i32 %574, 0
  %576 = select i1 %575, float %517, float %516
  %577 = select i1 %575, float %518, float %517
  %578 = select i1 %575, float %521, float %518
  %579 = select i1 %575, float %516, float %521
  %580 = icmp eq i32 %574, 1
  %581 = select i1 %580, float %578, float %577
  %582 = select i1 %580, float %579, float %578
  %583 = select i1 %580, float %577, float %579
  %584 = icmp eq i32 %574, 2
  %585 = select i1 %584, float %583, float %582
  %586 = select i1 %584, float %582, float %583
  %587 = fcmp fast ogt float %586, 0.000000e+00
  %588 = select i1 %587, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %589 = fmul fast float %588, %576
  %590 = fmul fast float %588, %581
  %591 = fmul fast float %588, %585
  %592 = fadd fast float %589, 1.000000e+00
  %593 = fmul fast float %592, 5.000000e-01
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %595 = fmul fast float %594, 1.023000e+03
  %596 = fptoui float %595 to i32
  %597 = fadd fast float %590, 1.000000e+00
  %598 = fmul fast float %597, 5.000000e-01
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %599, 1.023000e+03
  %601 = fptoui float %600 to i32
  %602 = fadd fast float %591, 1.000000e+00
  %603 = fmul fast float %602, 5.000000e-01
  %604 = call float @dx.op.unary.f32(i32 7, float %603)  ; Saturate(value)
  %605 = fmul fast float %604, 5.110000e+02
  %606 = fptoui float %605 to i32
  %607 = shl i32 %601, 10
  %608 = shl i32 %606, 20
  %609 = fcmp fast ogt float %204, 0.000000e+00
  %610 = select i1 %609, i32 0, i32 536870912
  %611 = shl i32 %574, 30
  %612 = or i32 %596, %610
  %613 = or i32 %612, %611
  %614 = or i32 %613, %607
  %615 = or i32 %614, %608
  %616 = select i1 %31, i32 %545, i32 0
  %617 = select i1 %31, i32 %548, i32 0
  %618 = shl i32 %81, 3
  %619 = add i32 %37, %618
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %619, i32 undef, i32 %616, i32 %617, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %620 = shl i32 %81, 2
  %621 = add i32 %36, %620
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %621, i32 undef, i32 %615, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %622

; <label>:622                                     ; preds = %566, %0
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
!19 = !{void ()* @cs_skinning_dismember_unified_main, !"cs_skinning_dismember_unified_main", null, !4, !20}
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

