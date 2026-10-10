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
; shader hash: 33e0224d809b8a7555547a2158cfb570
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t2     1
;                                   texture    byte         r/o      T2             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }

define void @cs_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = alloca [4 x i32], align 4
  %8 = alloca [4 x i32], align 4
  %9 = alloca [4 x i32], align 4
  %10 = shl i32 %5, 2
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = lshr i32 %12, 16
  %14 = add i32 %13, %6
  %15 = shl i32 %12, 5
  %16 = and i32 %15, 2097120
  %17 = add nuw nsw i32 %16, 16384
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = extractvalue %dx.types.ResRet.i32 %18, 1
  %21 = extractvalue %dx.types.ResRet.i32 %18, 2
  %22 = extractvalue %dx.types.ResRet.i32 %18, 3
  %23 = add nuw nsw i32 %16, 16400
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 3
  %26 = bitcast i32 %25 to float
  %27 = icmp ult i32 %14, %19
  br i1 %27, label %28, label %495, !dx.controlflow.hints !14

; <label>:28                                      ; preds = %0
  %29 = mul i32 %14, 3
  %30 = add i32 %29, 1
  %31 = mul i32 %14, 48
  %32 = lshr i32 %31, 10
  %33 = add i32 %32, %20
  %34 = shl i32 %33, 2
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = shl i32 %36, 10
  %38 = and i32 %31, 1008
  %39 = or i32 %37, %38
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = extractvalue %dx.types.ResRet.i32 %40, 1
  %43 = and i32 %41, 128
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %44, float -1.000000e+00, float 1.000000e+00
  %46 = lshr i32 %41, 8
  %47 = and i32 %46, 255
  %48 = and i32 %41, 127
  %49 = add nuw nsw i32 %47, %48
  %50 = lshr i32 %41, 16
  %51 = shl i32 %14, 3
  %52 = add i32 %21, %51
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = extractvalue %dx.types.ResRet.i32 %53, 1
  %56 = shl i32 %42, 3
  %57 = and i32 %56, 524280
  %58 = add i32 %57, %21
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = extractvalue %dx.types.ResRet.i32 %59, 1
  %62 = and i32 %54, 2097151
  %63 = uitofp i32 %62 to float
  %64 = lshr i32 %54, 21
  %65 = shl i32 %55, 11
  %66 = and i32 %65, 2095104
  %67 = or i32 %66, %64
  %68 = uitofp i32 %67 to float
  %69 = lshr i32 %55, 10
  %70 = and i32 %69, 2097151
  %71 = uitofp i32 %70 to float
  %72 = fdiv float %63, 2.097151e+06
  %73 = fdiv float %68, 2.097151e+06
  %74 = fdiv float %71, 2.097151e+06
  %75 = fmul float %72, 2.000000e+00
  %76 = fmul float %73, 2.000000e+00
  %77 = fmul float %74, 2.000000e+00
  %78 = fadd float %75, -1.000000e+00
  %79 = fadd float %76, -1.000000e+00
  %80 = fadd float %77, -1.000000e+00
  %81 = and i32 %60, 2097151
  %82 = uitofp i32 %81 to float
  %83 = lshr i32 %60, 21
  %84 = shl i32 %61, 11
  %85 = and i32 %84, 2095104
  %86 = or i32 %85, %83
  %87 = uitofp i32 %86 to float
  %88 = lshr i32 %61, 10
  %89 = and i32 %88, 2097151
  %90 = uitofp i32 %89 to float
  %91 = fdiv float %82, 2.097151e+06
  %92 = fdiv float %87, 2.097151e+06
  %93 = fdiv float %90, 2.097151e+06
  %94 = fmul float %91, 2.000000e+00
  %95 = fmul float %92, 2.000000e+00
  %96 = fmul float %93, 2.000000e+00
  %97 = fadd float %94, -1.000000e+00
  %98 = fadd float %95, -1.000000e+00
  %99 = fadd float %96, -1.000000e+00
  %100 = fsub fast float %97, %78
  %101 = fmul fast float %100, %26
  %102 = fsub fast float %98, %79
  %103 = fmul fast float %102, %26
  %104 = fsub fast float %99, %80
  %105 = fmul fast float %104, %26
  %106 = shl i32 %30, 4
  %107 = lshr i32 %30, 6
  %108 = and i32 %107, 4194303
  %109 = add i32 %108, %20
  %110 = shl i32 %109, 2
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = shl i32 %112, 10
  %114 = and i32 %106, 1008
  %115 = or i32 %113, %114
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = icmp ugt i32 %49, 3
  br i1 %117, label %118, label %329

; <label>:118                                     ; preds = %28
  %119 = extractvalue %dx.types.ResRet.i32 %116, 3
  %120 = extractvalue %dx.types.ResRet.i32 %116, 2
  %121 = extractvalue %dx.types.ResRet.i32 %116, 1
  %122 = extractvalue %dx.types.ResRet.i32 %116, 0
  %123 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %101, float %103, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %124 = extractvalue %dx.types.ResRet.i32 %40, 3
  %125 = extractvalue %dx.types.ResRet.i32 %40, 2
  br label %126

; <label>:126                                     ; preds = %318, %118
  %127 = phi float [ %319, %318 ], [ 0.000000e+00, %118 ]
  %128 = phi float [ %320, %318 ], [ 0.000000e+00, %118 ]
  %129 = phi float [ %321, %318 ], [ 0.000000e+00, %118 ]
  %130 = phi float [ %322, %318 ], [ 0.000000e+00, %118 ]
  %131 = phi float [ %323, %318 ], [ 0.000000e+00, %118 ]
  %132 = phi float [ %324, %318 ], [ 0.000000e+00, %118 ]
  %133 = phi i32 [ %186, %318 ], [ %30, %118 ]
  %134 = phi i32 [ %187, %318 ], [ 0, %118 ]
  %135 = phi i32 [ %188, %318 ], [ %41, %118 ]
  %136 = phi i32 [ %189, %318 ], [ %42, %118 ]
  %137 = phi i32 [ %190, %318 ], [ %125, %118 ]
  %138 = phi i32 [ %191, %318 ], [ %124, %118 ]
  %139 = phi float [ %256, %318 ], [ %101, %118 ]
  %140 = phi float [ %258, %318 ], [ %103, %118 ]
  %141 = phi float [ %260, %318 ], [ %105, %118 ]
  %142 = phi float [ %261, %318 ], [ %123, %118 ]
  %143 = phi i32 [ %192, %318 ], [ %122, %118 ]
  %144 = phi i32 [ %193, %318 ], [ %121, %118 ]
  %145 = phi i32 [ %194, %318 ], [ %120, %118 ]
  %146 = phi i32 [ %195, %318 ], [ %119, %118 ]
  %147 = phi i32 [ %196, %318 ], [ 1, %118 ]
  %148 = phi i32 [ %326, %318 ], [ 3, %118 ]
  %149 = and i32 %148, 4
  %150 = icmp ne i32 %149, 0
  %151 = icmp eq i32 %147, 0
  %152 = xor i1 %150, true
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %179, !dx.controlflow.hints !15

; <label>:154                                     ; preds = %126
  %155 = add i32 %133, 1
  %156 = icmp eq i32 %134, 0
  %157 = add nsw i32 %29, 2
  %158 = icmp eq i32 %133, %157
  %159 = and i1 %158, %156
  %160 = mul i32 %19, 3
  %161 = select i1 %159, i32 %50, i32 %155
  %162 = select i1 %159, i32 %160, i32 %134
  %163 = add i32 %162, %161
  %164 = shl i32 %163, 4
  %165 = lshr i32 %163, 6
  %166 = and i32 %165, 4194303
  %167 = add i32 %166, %20
  %168 = shl i32 %167, 2
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = shl i32 %170, 10
  %172 = and i32 %164, 1008
  %173 = or i32 %171, %172
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = extractvalue %dx.types.ResRet.i32 %174, 1
  %177 = extractvalue %dx.types.ResRet.i32 %174, 2
  %178 = extractvalue %dx.types.ResRet.i32 %174, 3
  br label %185

; <label>:179                                     ; preds = %126
  %180 = icmp ne i32 %147, 0
  %181 = and i1 %180, %150
  %182 = select i1 %181, i32 %143, i32 %135
  %183 = select i1 %181, i32 %144, i32 %136
  %184 = select i1 %181, i32 0, i32 %147
  br label %185

; <label>:185                                     ; preds = %179, %154
  %186 = phi i32 [ %161, %154 ], [ %133, %179 ]
  %187 = phi i32 [ %162, %154 ], [ %134, %179 ]
  %188 = phi i32 [ %135, %154 ], [ %182, %179 ]
  %189 = phi i32 [ %136, %154 ], [ %183, %179 ]
  %190 = phi i32 [ %145, %154 ], [ %137, %179 ]
  %191 = phi i32 [ %146, %154 ], [ %138, %179 ]
  %192 = phi i32 [ %175, %154 ], [ %143, %179 ]
  %193 = phi i32 [ %176, %154 ], [ %144, %179 ]
  %194 = phi i32 [ %177, %154 ], [ %145, %179 ]
  %195 = phi i32 [ %178, %154 ], [ %146, %179 ]
  %196 = phi i32 [ 1, %154 ], [ %184, %179 ]
  %197 = icmp uge i32 %148, %47
  %198 = select i1 %197, i32 1, i32 3
  %199 = add i32 %148, 2
  %200 = select i1 %197, i32 %148, i32 %199
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 0
  store i32 %188, i32* %201, align 4
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 1
  store i32 %189, i32* %202, align 4
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 2
  store i32 %190, i32* %203, align 4
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 3
  store i32 %191, i32* %204, align 4
  %205 = lshr i32 %200, 1
  %206 = and i32 %205, 3
  %207 = and i32 %200, 1
  %208 = icmp ne i32 %207, 0
  %209 = getelementptr [4 x i32], [4 x i32]* %9, i32 0, i32 %206
  %210 = load i32, i32* %209, align 4, !tbaa !16, !noalias !20
  %211 = lshr i32 %210, 16
  %212 = and i32 %210, 65535
  %213 = select i1 %208, i32 %211, i32 %212
  %214 = zext i1 %197 to i32
  %215 = add i32 %214, %148
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 %188, i32* %216, align 4
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 1
  store i32 %189, i32* %217, align 4
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 %190, i32* %218, align 4
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 3
  store i32 %191, i32* %219, align 4
  %220 = lshr i32 %215, 1
  %221 = and i32 %220, 3
  %222 = and i32 %215, 1
  %223 = icmp ne i32 %222, 0
  %224 = getelementptr [4 x i32], [4 x i32]* %8, i32 0, i32 %221
  %225 = load i32, i32* %224, align 4, !tbaa !16, !noalias !20
  %226 = lshr i32 %225, 16
  %227 = and i32 %225, 65535
  %228 = select i1 %223, i32 %226, i32 %227
  %229 = icmp eq i32 %213, 65535
  %230 = select i1 %229, i32 %228, i32 %213
  %231 = shl nuw nsw i32 %230, 3
  %232 = add i32 %231, %21
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = extractvalue %dx.types.ResRet.i32 %233, 1
  %236 = and i32 %234, 2097151
  %237 = uitofp i32 %236 to float
  %238 = lshr i32 %234, 21
  %239 = shl i32 %235, 11
  %240 = and i32 %239, 2095104
  %241 = or i32 %240, %238
  %242 = uitofp i32 %241 to float
  %243 = lshr i32 %235, 10
  %244 = and i32 %243, 2097151
  %245 = uitofp i32 %244 to float
  %246 = fdiv float %237, 2.097151e+06
  %247 = fdiv float %242, 2.097151e+06
  %248 = fdiv float %245, 2.097151e+06
  %249 = fmul float %246, 2.000000e+00
  %250 = fmul float %247, 2.000000e+00
  %251 = fmul float %248, 2.000000e+00
  %252 = fadd float %249, -1.000000e+00
  %253 = fadd float %250, -1.000000e+00
  %254 = fadd float %251, -1.000000e+00
  %255 = fsub fast float %252, %78
  %256 = fmul fast float %255, %26
  %257 = fsub fast float %253, %79
  %258 = fmul fast float %257, %26
  %259 = fsub fast float %254, %80
  %260 = fmul fast float %259, %26
  %261 = call float @dx.op.dot3.f32(i32 55, float %256, float %258, float %260, float %256, float %258, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  br i1 %229, label %318, label %262, !dx.controlflow.hints !24

; <label>:262                                     ; preds = %185
  %263 = fmul fast float %261, %142
  %264 = call float @dx.op.dot3.f32(i32 55, float %256, float %258, float %260, float %139, float %140, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %265 = call float @dx.op.unary.f32(i32 25, float %263)  ; Rsqrt(value)
  %266 = fmul fast float %265, %264
  %267 = call float @dx.op.unary.f32(i32 15, float %266)  ; Acos(value)
  %268 = fmul fast float %258, %141
  %269 = fmul fast float %260, %140
  %270 = fsub fast float %268, %269
  %271 = fmul fast float %260, %139
  %272 = fmul fast float %256, %141
  %273 = fsub fast float %271, %272
  %274 = fmul fast float %256, %140
  %275 = fmul fast float %258, %139
  %276 = fsub fast float %274, %275
  %277 = fmul fast float %267, %270
  %278 = fmul fast float %267, %273
  %279 = fmul fast float %267, %276
  %280 = fadd fast float %277, %130
  %281 = fadd fast float %278, %131
  %282 = fadd fast float %279, %132
  br i1 %197, label %318, label %283, !dx.controlflow.hints !25

; <label>:283                                     ; preds = %262
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %285 = add i32 %148, 1
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 0
  store i32 %188, i32* %286, align 4
  %287 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 1
  store i32 %189, i32* %287, align 4
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 2
  store i32 %190, i32* %288, align 4
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 3
  store i32 %191, i32* %289, align 4
  %290 = lshr i32 %285, 1
  %291 = and i32 %290, 3
  %292 = and i32 %285, 1
  %293 = icmp ne i32 %292, 0
  %294 = getelementptr [4 x i32], [4 x i32]* %7, i32 0, i32 %291
  %295 = load i32, i32* %294, align 4, !tbaa !16, !noalias !20
  %296 = lshr i32 %295, 16
  %297 = and i32 %295, 65535
  %298 = select i1 %293, i32 %296, i32 %297
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %284, %139
  %301 = fmul fast float %284, %140
  %302 = fmul fast float %284, %141
  %303 = fmul fast float %299, %256
  %304 = fmul fast float %299, %258
  %305 = fmul fast float %299, %260
  %306 = fadd fast float %303, %300
  %307 = fadd fast float %304, %301
  %308 = fadd fast float %305, %302
  %309 = call float @dx.op.dot3.f32(i32 55, float %306, float %307, float %308, float %306, float %307, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = call float @dx.op.unary.f32(i32 25, float %309)  ; Rsqrt(value)
  %311 = fmul fast float %310, %267
  %312 = fmul fast float %311, %306
  %313 = fmul fast float %311, %307
  %314 = fmul fast float %311, %308
  %315 = fadd fast float %312, %127
  %316 = fadd fast float %313, %128
  %317 = fadd fast float %314, %129
  br label %318

; <label>:318                                     ; preds = %283, %262, %185
  %319 = phi float [ %127, %262 ], [ %315, %283 ], [ %127, %185 ]
  %320 = phi float [ %128, %262 ], [ %316, %283 ], [ %128, %185 ]
  %321 = phi float [ %129, %262 ], [ %317, %283 ], [ %129, %185 ]
  %322 = phi float [ %280, %262 ], [ %280, %283 ], [ %130, %185 ]
  %323 = phi float [ %281, %262 ], [ %281, %283 ], [ %131, %185 ]
  %324 = phi float [ %282, %262 ], [ %282, %283 ], [ %132, %185 ]
  %325 = phi i32 [ %148, %262 ], [ %148, %283 ], [ %215, %185 ]
  %326 = add i32 %325, %198
  %327 = icmp ult i32 %326, %49
  br i1 %327, label %126, label %328, !llvm.loop !26

; <label>:328                                     ; preds = %318
  br label %329

; <label>:329                                     ; preds = %328, %28
  %330 = phi float [ 0.000000e+00, %28 ], [ %319, %328 ]
  %331 = phi float [ 0.000000e+00, %28 ], [ %320, %328 ]
  %332 = phi float [ 0.000000e+00, %28 ], [ %321, %328 ]
  %333 = phi float [ 0.000000e+00, %28 ], [ %322, %328 ]
  %334 = phi float [ 0.000000e+00, %28 ], [ %323, %328 ]
  %335 = phi float [ 0.000000e+00, %28 ], [ %324, %328 ]
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = call float @dx.op.unary.f32(i32 25, float %336)  ; Rsqrt(value)
  %338 = fmul fast float %337, %333
  %339 = fmul fast float %337, %334
  %340 = fmul fast float %337, %335
  %341 = call float @dx.op.dot3.f32(i32 55, float %330, float %331, float %332, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = fsub fast float -0.000000e+00, %341
  %343 = fmul fast float %338, %342
  %344 = fmul fast float %339, %342
  %345 = fmul fast float %340, %342
  %346 = fadd fast float %343, %330
  %347 = fadd fast float %344, %331
  %348 = fadd fast float %345, %332
  %349 = call float @dx.op.dot3.f32(i32 55, float %346, float %347, float %348, float %346, float %347, float %348)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = call float @dx.op.unary.f32(i32 25, float %349)  ; Rsqrt(value)
  %351 = fmul fast float %346, %350
  %352 = fmul fast float %347, %350
  %353 = fmul fast float %348, %350
  %354 = fmul fast float %353, %339
  %355 = fmul fast float %352, %340
  %356 = fsub fast float %354, %355
  %357 = fmul fast float %351, %340
  %358 = fmul fast float %353, %338
  %359 = fsub fast float %357, %358
  %360 = fmul fast float %352, %338
  %361 = fmul fast float %351, %339
  %362 = fsub fast float %360, %361
  %363 = fadd fast float %351, %340
  %364 = fadd fast float %363, %359
  %365 = fcmp fast ogt float %364, 0.000000e+00
  br i1 %365, label %366, label %377, !dx.controlflow.hints !28

; <label>:366                                     ; preds = %329
  %367 = fadd fast float %364, 1.000000e+00
  %368 = fsub fast float %362, %339
  %369 = fsub fast float %338, %353
  %370 = fsub fast float %352, %356
  %371 = call float @dx.op.unary.f32(i32 25, float %367)  ; Rsqrt(value)
  %372 = fmul fast float %371, 5.000000e-01
  %373 = fmul fast float %372, %368
  %374 = fmul fast float %372, %369
  %375 = fmul fast float %372, %370
  %376 = fmul fast float %372, %367
  br label %421

; <label>:377                                     ; preds = %329
  %378 = fcmp fast ogt float %351, %359
  %379 = fcmp fast ogt float %351, %340
  %380 = and i1 %379, %378
  br i1 %380, label %381, label %394, !dx.controlflow.hints !29

; <label>:381                                     ; preds = %377
  %382 = fsub fast float 1.000000e+00, %340
  %383 = fadd fast float %382, %351
  %384 = fsub fast float %383, %359
  %385 = fsub fast float %362, %339
  %386 = fadd fast float %356, %352
  %387 = fadd fast float %353, %338
  %388 = call float @dx.op.unary.f32(i32 25, float %384)  ; Rsqrt(value)
  %389 = fmul fast float %388, 5.000000e-01
  %390 = fmul fast float %389, %384
  %391 = fmul fast float %389, %386
  %392 = fmul fast float %389, %387
  %393 = fmul fast float %389, %385
  br label %421

; <label>:394                                     ; preds = %377
  %395 = fcmp fast ogt float %359, %340
  %396 = fadd fast float %362, %339
  br i1 %395, label %397, label %409, !dx.controlflow.hints !30

; <label>:397                                     ; preds = %394
  %398 = fsub fast float 1.000000e+00, %340
  %399 = fsub fast float %398, %351
  %400 = fadd fast float %399, %359
  %401 = fsub fast float %338, %353
  %402 = fadd fast float %356, %352
  %403 = call float @dx.op.unary.f32(i32 25, float %400)  ; Rsqrt(value)
  %404 = fmul fast float %403, 5.000000e-01
  %405 = fmul fast float %404, %402
  %406 = fmul fast float %404, %400
  %407 = fmul fast float %404, %396
  %408 = fmul fast float %404, %401
  br label %421

; <label>:409                                     ; preds = %394
  %410 = fadd fast float %340, 1.000000e+00
  %411 = fsub fast float %410, %351
  %412 = fsub fast float %411, %359
  %413 = fsub fast float %352, %356
  %414 = fadd fast float %353, %338
  %415 = call float @dx.op.unary.f32(i32 25, float %412)  ; Rsqrt(value)
  %416 = fmul fast float %415, 5.000000e-01
  %417 = fmul fast float %416, %414
  %418 = fmul fast float %416, %396
  %419 = fmul fast float %416, %412
  %420 = fmul fast float %416, %413
  br label %421

; <label>:421                                     ; preds = %409, %397, %381, %366
  %422 = phi float [ %373, %366 ], [ %390, %381 ], [ %405, %397 ], [ %417, %409 ]
  %423 = phi float [ %374, %366 ], [ %391, %381 ], [ %406, %397 ], [ %418, %409 ]
  %424 = phi float [ %375, %366 ], [ %392, %381 ], [ %407, %397 ], [ %419, %409 ]
  %425 = phi float [ %376, %366 ], [ %393, %381 ], [ %408, %397 ], [ %420, %409 ]
  %426 = call float @dx.op.unary.f32(i32 6, float %424)  ; FAbs(value)
  %427 = call float @dx.op.unary.f32(i32 6, float %422)  ; FAbs(value)
  %428 = fcmp fast oge float %426, %427
  %429 = call float @dx.op.unary.f32(i32 6, float %423)  ; FAbs(value)
  %430 = fcmp fast oge float %426, %429
  %431 = and i1 %428, %430
  br i1 %431, label %432, label %435, !dx.controlflow.hints !31

; <label>:432                                     ; preds = %421
  %433 = fcmp fast olt float %424, 0.000000e+00
  %434 = select i1 %433, float 5.000000e+00, float 4.000000e+00
  br label %443

; <label>:435                                     ; preds = %421
  %436 = fcmp fast ult float %429, %427
  br i1 %436, label %440, label %437, !dx.controlflow.hints !32

; <label>:437                                     ; preds = %435
  %438 = fcmp fast olt float %423, 0.000000e+00
  %439 = select i1 %438, float 3.000000e+00, float 2.000000e+00
  br label %443

; <label>:440                                     ; preds = %435
  %441 = fcmp fast olt float %422, 0.000000e+00
  %442 = select i1 %441, float 1.000000e+00, float 0.000000e+00
  br label %443

; <label>:443                                     ; preds = %440, %437, %432
  %444 = phi float [ %434, %432 ], [ %439, %437 ], [ %442, %440 ]
  %445 = fmul fast float %444, 5.000000e-01
  %446 = fptoui float %445 to i32
  %447 = call float @dx.op.unary.f32(i32 6, float %425)  ; FAbs(value)
  %448 = call float @dx.op.binary.f32(i32 35, float %429, float %426)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %427, float %448)  ; FMax(a,b)
  %450 = fcmp fast ogt float %447, %449
  %451 = select i1 %450, i32 3, i32 %446
  %452 = icmp eq i32 %451, 0
  %453 = select i1 %452, float %423, float %422
  %454 = select i1 %452, float %424, float %423
  %455 = select i1 %452, float %425, float %424
  %456 = select i1 %452, float %422, float %425
  %457 = icmp eq i32 %451, 1
  %458 = select i1 %457, float %455, float %454
  %459 = select i1 %457, float %456, float %455
  %460 = select i1 %457, float %454, float %456
  %461 = icmp eq i32 %451, 2
  %462 = select i1 %461, float %460, float %459
  %463 = select i1 %461, float %459, float %460
  %464 = fcmp fast ogt float %463, 0.000000e+00
  %465 = select i1 %464, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %466 = fmul fast float %465, %453
  %467 = fmul fast float %465, %458
  %468 = fmul fast float %465, %462
  %469 = fadd fast float %466, 1.000000e+00
  %470 = fmul fast float %469, 5.000000e-01
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fmul fast float %471, 1.023000e+03
  %473 = fptoui float %472 to i32
  %474 = fadd fast float %467, 1.000000e+00
  %475 = fmul fast float %474, 5.000000e-01
  %476 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %477 = fmul fast float %476, 1.023000e+03
  %478 = fptoui float %477 to i32
  %479 = fadd fast float %468, 1.000000e+00
  %480 = fmul fast float %479, 5.000000e-01
  %481 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %482 = fmul fast float %481, 5.110000e+02
  %483 = fptoui float %482 to i32
  %484 = shl i32 %478, 10
  %485 = shl i32 %483, 20
  %486 = fcmp fast ogt float %45, 0.000000e+00
  %487 = select i1 %486, i32 0, i32 536870912
  %488 = shl i32 %451, 30
  %489 = or i32 %473, %487
  %490 = or i32 %489, %488
  %491 = or i32 %490, %484
  %492 = or i32 %491, %485
  %493 = shl i32 %14, 2
  %494 = add i32 %22, %493
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %494, i32 undef, i32 %492, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %495

; <label>:495                                     ; preds = %443, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, null, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{void ()* @cs_main, !"cs_main", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 1}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"\01?CalculateTangentFrame@@YAXIIIV?$vector@M$03@@IAIAV?$vector@M$02@@AIAV1@@Z: %outNormal"}
!22 = distinct !{!22, !"\01?CalculateTangentFrame@@YAXIIIV?$vector@M$03@@IAIAV?$vector@M$02@@AIAV1@@Z"}
!23 = distinct !{!23, !22, !"\01?CalculateTangentFrame@@YAXIIIV?$vector@M$03@@IAIAV?$vector@M$02@@AIAV1@@Z: %outTangent"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 1}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

