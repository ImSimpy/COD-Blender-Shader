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
; shader hash: b090c74a8d504ecc90271e8956541b02
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
;   [96 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GfxSHProbeFallbackConsts = type { <3 x float>, i32, i32, i32, i32, i32, [4 x <4 x i32>] }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }

define void @cs_sh_sample_fallback_probe() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = alloca [4 x i32], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x float], align 4
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %20 = extractvalue %dx.types.CBufRet.i32 %17, 2
  %21 = extractvalue %dx.types.CBufRet.i32 %17, 3
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %25 = extractvalue %dx.types.CBufRet.i32 %22, 2
  %26 = extractvalue %dx.types.CBufRet.i32 %22, 3
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %30 = extractvalue %dx.types.CBufRet.i32 %27, 2
  %31 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %35 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %36 = extractvalue %dx.types.CBufRet.i32 %32, 3
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %1201, label %40, !dx.controlflow.hints !23

; <label>:40                                      ; preds = %0
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %44 = extractvalue %dx.types.CBufRet.i32 %41, 0
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float 0.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float 0.000000e+00, float* %50, align 4
  %51 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float 0.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float 0.000000e+00, float* %52, align 4
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = extractvalue %dx.types.ResRet.i32 %55, 1
  %58 = extractvalue %dx.types.ResRet.i32 %55, 2
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = extractvalue %dx.types.ResRet.f32 %63, 1
  %66 = extractvalue %dx.types.ResRet.f32 %63, 2
  %67 = fsub fast float %46, %60
  %68 = fsub fast float %47, %61
  %69 = fsub fast float %48, %62
  %70 = fptoui float %67 to i32
  %71 = fptoui float %68 to i32
  %72 = fptoui float %69 to i32
  %73 = fcmp fast olt float %46, %60
  %74 = fcmp fast olt float %47, %61
  %75 = fcmp fast olt float %48, %62
  %76 = or i1 %73, %74
  %77 = or i1 %75, %76
  %78 = fcmp fast oge float %46, %64
  %79 = fcmp fast oge float %47, %65
  %80 = fcmp fast oge float %48, %66
  %81 = or i1 %78, %79
  %82 = or i1 %80, %81
  %83 = or i1 %77, %82
  %84 = and i32 %56, 31
  %85 = lshr i32 %70, %84
  %86 = lshr i32 %71, %84
  %87 = lshr i32 %72, %84
  %88 = mul i32 %86, %54
  %89 = add i32 %88, %85
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %109, !dx.controlflow.hints !24

; <label>:93                                      ; preds = %40
  %94 = mul i32 %89, 12
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = add i32 %94, 4
  %98 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.i32 %98, 0
  %100 = add i32 %94, 8
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = icmp ult i32 %87, %99
  %104 = icmp ugt i32 %87, %102
  %105 = or i1 %103, %104
  %106 = add i32 %96, %87
  %107 = sub i32 %106, %99
  %108 = select i1 %105, i32 -2147483648, i32 %107
  br label %109

; <label>:109                                     ; preds = %93, %40
  %110 = phi i32 [ %108, %93 ], [ -2147483648, %40 ]
  %111 = select i1 %83, i32 -2147483648, i32 %110
  %112 = icmp sgt i32 %111, -1
  %113 = and i32 %57, 31
  %114 = lshr i32 %70, %113
  %115 = lshr i32 %71, %113
  %116 = lshr i32 %72, %113
  %117 = and i32 %114, 3
  %118 = and i32 %116, 3
  %119 = shl nuw nsw i32 %118, 4
  %120 = shl i32 %115, 2
  %121 = and i32 %120, 12
  %122 = and i32 %119, 16
  %123 = or i32 %121, %117
  %124 = or i32 %123, %122
  %125 = shl i32 1, %124
  %126 = extractvalue %dx.types.CBufRet.i32 %90, 1
  %127 = icmp ult i32 %111, %126
  br i1 %127, label %128, label %146, !dx.controlflow.hints !25

; <label>:128                                     ; preds = %109
  %129 = lshr i32 %118, 1
  %130 = shl i32 %111, 4
  %131 = shl nuw nsw i32 %129, 2
  %132 = or i32 %130, %131
  %133 = or i32 %132, 8
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %135, %125
  %137 = icmp eq i32 %136, 0
  %138 = add i32 %125, -1
  %139 = and i32 %135, %138
  %140 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %139)  ; Countbits(value)
  %141 = or i32 %130, %131
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = add i32 %143, %140
  %145 = select i1 %137, i32 -2147483648, i32 %144
  br label %146

; <label>:146                                     ; preds = %128, %109
  %147 = phi i32 [ %145, %128 ], [ -2147483648, %109 ]
  %148 = select i1 %112, i32 %147, i32 %111
  %149 = icmp sgt i32 %148, -1
  %150 = and i32 %58, 31
  %151 = lshr i32 %70, %150
  %152 = lshr i32 %71, %150
  %153 = lshr i32 %72, %150
  %154 = and i32 %151, 3
  %155 = and i32 %153, 3
  %156 = shl nuw nsw i32 %155, 4
  %157 = shl i32 %152, 2
  %158 = and i32 %157, 12
  %159 = and i32 %156, 16
  %160 = or i32 %158, %154
  %161 = or i32 %160, %159
  %162 = shl i32 1, %161
  %163 = icmp ult i32 %148, %126
  br i1 %163, label %164, label %182, !dx.controlflow.hints !25

; <label>:164                                     ; preds = %146
  %165 = lshr i32 %155, 1
  %166 = shl i32 %148, 4
  %167 = shl nuw nsw i32 %165, 2
  %168 = or i32 %166, %167
  %169 = or i32 %168, 8
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = and i32 %171, %162
  %173 = icmp eq i32 %172, 0
  %174 = add i32 %162, -1
  %175 = and i32 %171, %174
  %176 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %175)  ; Countbits(value)
  %177 = or i32 %166, %167
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = add i32 %179, %176
  %181 = select i1 %173, i32 -2147483648, i32 %180
  br label %182

; <label>:182                                     ; preds = %164, %146
  %183 = phi i32 [ %181, %164 ], [ -2147483648, %146 ]
  %184 = select i1 %149, i32 %183, i32 %148
  br i1 %83, label %199, label %185, !dx.controlflow.hints !26

; <label>:185                                     ; preds = %182
  %186 = icmp eq i32 %184, -2147483648
  %187 = icmp eq i32 %148, -2147483648
  %188 = select i1 %187, i32 %111, i32 %148
  %189 = select i1 %186, i32 %188, i32 %184
  %190 = icmp sgt i32 %189, -1
  %191 = icmp ne i32 %42, -1
  %192 = and i1 %191, %190
  %193 = select i1 %192, i32 %42, i32 0
  %194 = add i32 %189, %43
  %195 = add i32 %194, %193
  %196 = shl i32 %195, 2
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  br label %199

; <label>:199                                     ; preds = %185, %182
  %200 = phi i32 [ %198, %185 ], [ -1, %182 ]
  %201 = icmp eq i32 %200, -1
  %202 = select i1 %201, i32 %44, i32 %200
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %352, label %204

; <label>:204                                     ; preds = %199
  br label %205

; <label>:205                                     ; preds = %343, %204
  %206 = phi i32 [ %344, %343 ], [ 0, %204 ]
  %207 = phi i32 [ %208, %343 ], [ -1, %204 ]
  %208 = phi i32 [ %339, %343 ], [ %202, %204 ]
  %209 = phi float [ %315, %343 ], [ 0.000000e+00, %204 ]
  %210 = phi float [ %316, %343 ], [ 0.000000e+00, %204 ]
  %211 = phi float [ %317, %343 ], [ 0.000000e+00, %204 ]
  %212 = phi float [ %320, %343 ], [ 0.000000e+00, %204 ]
  %213 = icmp ugt i32 %206, 50
  br i1 %213, label %346, label %214, !dx.controlflow.hints !27

; <label>:214                                     ; preds = %205
  %215 = shl i32 %208, 4
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = extractvalue %dx.types.ResRet.i32 %216, 1
  %219 = extractvalue %dx.types.ResRet.i32 %216, 2
  %220 = extractvalue %dx.types.ResRet.i32 %216, 3
  %221 = and i32 %217, 2147483647
  %222 = mul nsw i32 %221, 12
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = extractvalue %dx.types.ResRet.i32 %223, 1
  %226 = extractvalue %dx.types.ResRet.i32 %223, 2
  %227 = and i32 %218, 2147483647
  %228 = mul nsw i32 %227, 12
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = extractvalue %dx.types.ResRet.i32 %229, 1
  %232 = extractvalue %dx.types.ResRet.i32 %229, 2
  %233 = and i32 %219, 2147483647
  %234 = mul nsw i32 %233, 12
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = extractvalue %dx.types.ResRet.i32 %235, 1
  %238 = extractvalue %dx.types.ResRet.i32 %235, 2
  %239 = and i32 %220, 2147483647
  %240 = mul nsw i32 %239, 12
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = extractvalue %dx.types.ResRet.i32 %241, 1
  %244 = extractvalue %dx.types.ResRet.i32 %241, 2
  %245 = bitcast i32 %224 to float
  %246 = bitcast i32 %225 to float
  %247 = bitcast i32 %226 to float
  %248 = bitcast i32 %242 to float
  %249 = bitcast i32 %243 to float
  %250 = bitcast i32 %244 to float
  %251 = fsub fast float %245, %248
  %252 = fsub fast float %246, %249
  %253 = fsub fast float %247, %250
  %254 = bitcast i32 %230 to float
  %255 = bitcast i32 %231 to float
  %256 = bitcast i32 %232 to float
  %257 = fsub fast float %254, %248
  %258 = fsub fast float %255, %249
  %259 = fsub fast float %256, %250
  %260 = bitcast i32 %236 to float
  %261 = bitcast i32 %237 to float
  %262 = bitcast i32 %238 to float
  %263 = fsub fast float %260, %248
  %264 = fsub fast float %261, %249
  %265 = fsub fast float %262, %250
  %266 = fsub fast float %46, %248
  %267 = fsub fast float %47, %249
  %268 = fsub fast float %48, %250
  %269 = fmul fast float %258, %265
  %270 = fmul fast float %264, %259
  %271 = fsub fast float %269, %270
  %272 = fmul fast float %271, %251
  %273 = fmul fast float %257, %265
  %274 = fmul fast float %259, %263
  %275 = fsub fast float %273, %274
  %276 = fmul fast float %275, %252
  %277 = fsub fast float %272, %276
  %278 = fmul fast float %257, %264
  %279 = fmul fast float %258, %263
  %280 = fsub fast float %278, %279
  %281 = fmul fast float %280, %253
  %282 = fadd fast float %277, %281
  %283 = fdiv fast float 1.000000e+00, %282
  %284 = fmul fast float %271, %283
  %285 = fmul fast float %283, %275
  %286 = fsub fast float -0.000000e+00, %285
  %287 = fmul fast float %280, %283
  %288 = fmul fast float %252, %265
  %289 = fmul fast float %253, %264
  %290 = fsub fast float %288, %289
  %291 = fmul fast float %283, %290
  %292 = fsub fast float -0.000000e+00, %291
  %293 = fmul fast float %251, %265
  %294 = fmul fast float %263, %253
  %295 = fsub fast float %293, %294
  %296 = fmul fast float %295, %283
  %297 = fmul fast float %251, %264
  %298 = fmul fast float %252, %263
  %299 = fsub fast float %297, %298
  %300 = fmul fast float %283, %299
  %301 = fsub fast float -0.000000e+00, %300
  %302 = fmul fast float %252, %259
  %303 = fmul fast float %253, %258
  %304 = fsub fast float %302, %303
  %305 = fmul fast float %304, %283
  %306 = fmul fast float %251, %259
  %307 = fmul fast float %253, %257
  %308 = fsub fast float %306, %307
  %309 = fmul fast float %283, %308
  %310 = fsub fast float -0.000000e+00, %309
  %311 = fmul fast float %251, %258
  %312 = fmul fast float %252, %257
  %313 = fsub fast float %311, %312
  %314 = fmul fast float %313, %283
  %315 = call float @dx.op.dot3.f32(i32 55, float %284, float %286, float %287, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.dot3.f32(i32 55, float %292, float %296, float %301, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = call float @dx.op.dot3.f32(i32 55, float %305, float %310, float %314, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fsub fast float 1.000000e+00, %315
  %319 = fsub fast float %318, %316
  %320 = fsub fast float %319, %317
  %321 = call float @dx.op.binary.f32(i32 36, float %315, float %316)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 36, float %321, float %317)  ; FMin(a,b)
  %323 = call float @dx.op.binary.f32(i32 36, float %322, float %320)  ; FMin(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %315, float %316)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %324, float %317)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 35, float %325, float %320)  ; FMax(a,b)
  %327 = fcmp fast oge float %323, 0xBF50624DE0000000
  %328 = fcmp fast olt float %326, 0x3FF00068E0000000
  %329 = and i1 %327, %328
  br i1 %329, label %346, label %330, !dx.controlflow.hints !28

; <label>:330                                     ; preds = %214
  %331 = fcmp fast oeq float %323, %315
  %332 = fcmp fast oeq float %323, %316
  %333 = fcmp fast oeq float %323, %317
  %334 = select i1 %333, i32 8, i32 12
  %335 = select i1 %332, i32 4, i32 %334
  %336 = select i1 %331, i32 0, i32 %335
  %337 = or i32 %336, %215
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = icmp ne i32 %207, -1
  %341 = icmp eq i32 %339, %207
  %342 = and i1 %340, %341
  br i1 %342, label %346, label %343, !dx.controlflow.hints !29

; <label>:343                                     ; preds = %330
  %344 = add nuw nsw i32 %206, 1
  %345 = icmp eq i32 %339, -1
  br i1 %345, label %346, label %205, !llvm.loop !30

; <label>:346                                     ; preds = %343, %330, %214, %205
  %347 = phi i32 [ %208, %330 ], [ %208, %214 ], [ -1, %343 ], [ -1, %205 ]
  %348 = phi float [ %315, %330 ], [ %315, %214 ], [ %315, %343 ], [ %209, %205 ]
  %349 = phi float [ %316, %330 ], [ %316, %214 ], [ %316, %343 ], [ %210, %205 ]
  %350 = phi float [ %317, %330 ], [ %317, %214 ], [ %317, %343 ], [ %211, %205 ]
  %351 = phi float [ %320, %330 ], [ %320, %214 ], [ %320, %343 ], [ %212, %205 ]
  br label %352

; <label>:352                                     ; preds = %346, %199
  %353 = phi i32 [ -1, %199 ], [ %347, %346 ]
  %354 = phi float [ 0.000000e+00, %199 ], [ %348, %346 ]
  %355 = phi float [ 0.000000e+00, %199 ], [ %349, %346 ]
  %356 = phi float [ 0.000000e+00, %199 ], [ %350, %346 ]
  %357 = phi float [ 0.000000e+00, %199 ], [ %351, %346 ]
  %358 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %354)  ; FMax(a,b)
  %359 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %355)  ; FMax(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %356)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %357)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %358)  ; FMin(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %359)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %360)  ; FMin(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %361)  ; FMin(a,b)
  store float %362, float* %49, align 4
  store float %363, float* %50, align 4
  store float %364, float* %51, align 4
  store float %365, float* %52, align 4
  %366 = icmp eq i32 %353, -1
  br i1 %366, label %367, label %422, !dx.controlflow.hints !32

; <label>:367                                     ; preds = %352
  %368 = and i32 %18, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %18, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = and i32 %19, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %19, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = and i32 %20, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %20, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = and i32 %21, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %21, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = and i32 %23, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %23, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = and i32 %24, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %24, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = and i32 %25, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %25, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = and i32 %26, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %26, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = and i32 %28, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %28, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = and i32 %29, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %29, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = and i32 %30, 65535
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = lshr i32 %30, 16
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = and i32 %31, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %31, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = and i32 %33, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %33, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = and i32 %34, 65535
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  br label %1117

; <label>:422                                     ; preds = %352
  %423 = shl nsw i32 %353, 4
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = extractvalue %dx.types.ResRet.i32 %424, 1
  %427 = extractvalue %dx.types.ResRet.i32 %424, 2
  %428 = extractvalue %dx.types.ResRet.i32 %424, 3
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 0
  store i32 %425, i32* %429, align 4
  %430 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 1
  store i32 %426, i32* %430, align 4
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 2
  store i32 %427, i32* %431, align 4
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 3
  store i32 %428, i32* %432, align 4
  %433 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 0
  store float 0.000000e+00, float* %433, align 4
  %434 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 1
  store float 0.000000e+00, float* %434, align 4
  %435 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 2
  store float 0.000000e+00, float* %435, align 4
  %436 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 3
  store float 0.000000e+00, float* %436, align 4
  %437 = icmp slt i32 %425, 0
  br i1 %437, label %438, label %528, !dx.controlflow.hints !33

; <label>:438                                     ; preds = %422
  %439 = fsub fast float 1.000000e+00, %362
  %440 = fdiv fast float 1.000000e+00, %439
  %441 = shl nsw i32 %353, 6
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = extractvalue %dx.types.ResRet.i32 %442, 1
  %445 = extractvalue %dx.types.ResRet.i32 %442, 2
  %446 = extractvalue %dx.types.ResRet.i32 %442, 3
  %447 = fmul fast float %440, %365
  %448 = fmul fast float %440, %363
  %449 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %443, i32* %449, align 4
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %444, i32* %450, align 4
  %451 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %445, i32* %451, align 4
  %452 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %446, i32* %452, align 4
  %453 = fmul fast float %448, 4.000000e+00
  %454 = call float @dx.op.unary.f32(i32 27, float %453)  ; Round_ni(value)
  %455 = fmul fast float %447, 4.000000e+00
  %456 = call float @dx.op.unary.f32(i32 27, float %455)  ; Round_ni(value)
  %457 = fsub fast float 1.100000e+01, %454
  %458 = fmul fast float %454, 5.000000e-01
  %459 = fmul fast float %458, %457
  %460 = fadd fast float %456, 5.000000e-01
  %461 = fadd fast float %460, %459
  %462 = fptosi float %461 to i32
  %463 = fptosi float %454 to i32
  %464 = sub nsw i32 5, %463
  %465 = fmul fast float %456, 2.500000e-01
  %466 = fmul fast float %454, 2.500000e-01
  %467 = add nsw i32 %462, 1
  %468 = add nsw i32 %462, %464
  %469 = fsub fast float %447, %465
  %470 = fmul fast float %469, 4.000000e+00
  %471 = fsub fast float %448, %466
  %472 = fmul fast float %471, 4.000000e+00
  %473 = fadd fast float %469, %471
  %474 = fmul fast float %473, 4.000000e+00
  %475 = fcmp fast ogt float %474, 1.000000e+00
  br i1 %475, label %476, label %482, !dx.controlflow.hints !34

; <label>:476                                     ; preds = %438
  %477 = add nsw i32 %468, 1
  %478 = fadd fast float %472, -1.000000e+00
  %479 = fsub fast float -0.000000e+00, %478
  %480 = fadd fast float %470, -1.000000e+00
  %481 = fsub fast float -0.000000e+00, %480
  br label %482

; <label>:482                                     ; preds = %476, %438
  %483 = phi i32 [ %477, %476 ], [ %462, %438 ]
  %484 = phi i32 [ %467, %476 ], [ %468, %438 ]
  %485 = phi i32 [ %468, %476 ], [ %467, %438 ]
  %486 = phi float [ %481, %476 ], [ %472, %438 ]
  %487 = phi float [ %479, %476 ], [ %470, %438 ]
  %488 = fsub fast float 1.000000e+00, %486
  %489 = fsub fast float %488, %487
  %490 = lshr i32 %485, 2
  %491 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %490
  %492 = load i32, i32* %491, align 4, !tbaa !35, !noalias !39
  %493 = shl i32 %485, 3
  %494 = and i32 %493, 24
  %495 = lshr i32 %492, %494
  %496 = and i32 %495, 255
  %497 = sitofp i32 %496 to float
  %498 = fmul fast float %487, 0x3F70101020000000
  %499 = fmul fast float %498, %497
  %500 = lshr i32 %484, 2
  %501 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %500
  %502 = load i32, i32* %501, align 4, !tbaa !35, !noalias !39
  %503 = shl i32 %484, 3
  %504 = and i32 %503, 24
  %505 = lshr i32 %502, %504
  %506 = and i32 %505, 255
  %507 = sitofp i32 %506 to float
  %508 = fmul fast float %486, 0x3F70101020000000
  %509 = fmul fast float %508, %507
  %510 = lshr i32 %483, 2
  %511 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %510
  %512 = load i32, i32* %511, align 4, !tbaa !35, !noalias !39
  %513 = shl i32 %483, 3
  %514 = and i32 %513, 24
  %515 = lshr i32 %512, %514
  %516 = and i32 %515, 255
  %517 = sitofp i32 %516 to float
  %518 = fmul fast float %489, 0x3F70101020000000
  %519 = fmul fast float %518, %517
  %520 = fsub fast float 1.000000e+00, %499
  %521 = fsub fast float %520, %509
  %522 = fsub fast float %521, %519
  %523 = fmul fast float %362, 2.000000e+01
  %524 = fadd fast float %523, 1.000000e+00
  %525 = fmul fast float %522, 2.000000e+01
  %526 = fsub fast float %524, %525
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  br label %528

; <label>:528                                     ; preds = %482, %422
  %529 = phi float [ %527, %482 ], [ 1.000000e+00, %422 ]
  store float %529, float* %433, align 4, !tbaa !47, !noalias !39
  %530 = icmp slt i32 %426, 0
  br i1 %530, label %531, label %622, !dx.controlflow.hints !33

; <label>:531                                     ; preds = %528
  %532 = fsub fast float 1.000000e+00, %363
  %533 = fdiv fast float 1.000000e+00, %532
  %534 = shl i32 %353, 6
  %535 = or i32 %534, 16
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = extractvalue %dx.types.ResRet.i32 %536, 1
  %539 = extractvalue %dx.types.ResRet.i32 %536, 2
  %540 = extractvalue %dx.types.ResRet.i32 %536, 3
  %541 = fmul fast float %533, %362
  %542 = fmul fast float %533, %365
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %537, i32* %543, align 4
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %538, i32* %544, align 4
  %545 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %539, i32* %545, align 4
  %546 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %540, i32* %546, align 4
  %547 = fmul fast float %542, 4.000000e+00
  %548 = call float @dx.op.unary.f32(i32 27, float %547)  ; Round_ni(value)
  %549 = fmul fast float %541, 4.000000e+00
  %550 = call float @dx.op.unary.f32(i32 27, float %549)  ; Round_ni(value)
  %551 = fsub fast float 1.100000e+01, %548
  %552 = fmul fast float %548, 5.000000e-01
  %553 = fmul fast float %552, %551
  %554 = fadd fast float %550, 5.000000e-01
  %555 = fadd fast float %554, %553
  %556 = fptosi float %555 to i32
  %557 = fptosi float %548 to i32
  %558 = sub nsw i32 5, %557
  %559 = fmul fast float %550, 2.500000e-01
  %560 = fmul fast float %548, 2.500000e-01
  %561 = add nsw i32 %556, 1
  %562 = add nsw i32 %556, %558
  %563 = fsub fast float %541, %559
  %564 = fmul fast float %563, 4.000000e+00
  %565 = fsub fast float %542, %560
  %566 = fmul fast float %565, 4.000000e+00
  %567 = fadd fast float %563, %565
  %568 = fmul fast float %567, 4.000000e+00
  %569 = fcmp fast ogt float %568, 1.000000e+00
  br i1 %569, label %570, label %576, !dx.controlflow.hints !34

; <label>:570                                     ; preds = %531
  %571 = add nsw i32 %562, 1
  %572 = fadd fast float %566, -1.000000e+00
  %573 = fsub fast float -0.000000e+00, %572
  %574 = fadd fast float %564, -1.000000e+00
  %575 = fsub fast float -0.000000e+00, %574
  br label %576

; <label>:576                                     ; preds = %570, %531
  %577 = phi i32 [ %571, %570 ], [ %556, %531 ]
  %578 = phi i32 [ %561, %570 ], [ %562, %531 ]
  %579 = phi i32 [ %562, %570 ], [ %561, %531 ]
  %580 = phi float [ %575, %570 ], [ %566, %531 ]
  %581 = phi float [ %573, %570 ], [ %564, %531 ]
  %582 = fsub fast float 1.000000e+00, %580
  %583 = fsub fast float %582, %581
  %584 = lshr i32 %579, 2
  %585 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %584
  %586 = load i32, i32* %585, align 4, !tbaa !35, !noalias !39
  %587 = shl i32 %579, 3
  %588 = and i32 %587, 24
  %589 = lshr i32 %586, %588
  %590 = and i32 %589, 255
  %591 = sitofp i32 %590 to float
  %592 = fmul fast float %581, 0x3F70101020000000
  %593 = fmul fast float %592, %591
  %594 = lshr i32 %578, 2
  %595 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %594
  %596 = load i32, i32* %595, align 4, !tbaa !35, !noalias !39
  %597 = shl i32 %578, 3
  %598 = and i32 %597, 24
  %599 = lshr i32 %596, %598
  %600 = and i32 %599, 255
  %601 = sitofp i32 %600 to float
  %602 = fmul fast float %580, 0x3F70101020000000
  %603 = fmul fast float %602, %601
  %604 = lshr i32 %577, 2
  %605 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %604
  %606 = load i32, i32* %605, align 4, !tbaa !35, !noalias !39
  %607 = shl i32 %577, 3
  %608 = and i32 %607, 24
  %609 = lshr i32 %606, %608
  %610 = and i32 %609, 255
  %611 = sitofp i32 %610 to float
  %612 = fmul fast float %583, 0x3F70101020000000
  %613 = fmul fast float %612, %611
  %614 = fsub fast float 1.000000e+00, %593
  %615 = fsub fast float %614, %603
  %616 = fsub fast float %615, %613
  %617 = fmul fast float %363, 2.000000e+01
  %618 = fadd fast float %617, 1.000000e+00
  %619 = fmul fast float %616, 2.000000e+01
  %620 = fsub fast float %618, %619
  %621 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  br label %622

; <label>:622                                     ; preds = %576, %528
  %623 = phi float [ %621, %576 ], [ 1.000000e+00, %528 ]
  store float %623, float* %434, align 4, !tbaa !47, !noalias !39
  %624 = fadd fast float %623, %529
  %625 = icmp slt i32 %427, 0
  br i1 %625, label %626, label %717, !dx.controlflow.hints !33

; <label>:626                                     ; preds = %622
  %627 = fsub fast float 1.000000e+00, %364
  %628 = fdiv fast float 1.000000e+00, %627
  %629 = shl i32 %353, 6
  %630 = or i32 %629, 32
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = extractvalue %dx.types.ResRet.i32 %631, 1
  %634 = extractvalue %dx.types.ResRet.i32 %631, 2
  %635 = extractvalue %dx.types.ResRet.i32 %631, 3
  %636 = fmul fast float %628, %362
  %637 = fmul fast float %628, %363
  %638 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %632, i32* %638, align 4
  %639 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %633, i32* %639, align 4
  %640 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %634, i32* %640, align 4
  %641 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %635, i32* %641, align 4
  %642 = fmul fast float %637, 4.000000e+00
  %643 = call float @dx.op.unary.f32(i32 27, float %642)  ; Round_ni(value)
  %644 = fmul fast float %636, 4.000000e+00
  %645 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %646 = fsub fast float 1.100000e+01, %643
  %647 = fmul fast float %643, 5.000000e-01
  %648 = fmul fast float %647, %646
  %649 = fadd fast float %645, 5.000000e-01
  %650 = fadd fast float %649, %648
  %651 = fptosi float %650 to i32
  %652 = fptosi float %643 to i32
  %653 = sub nsw i32 5, %652
  %654 = fmul fast float %645, 2.500000e-01
  %655 = fmul fast float %643, 2.500000e-01
  %656 = add nsw i32 %651, 1
  %657 = add nsw i32 %651, %653
  %658 = fsub fast float %636, %654
  %659 = fmul fast float %658, 4.000000e+00
  %660 = fsub fast float %637, %655
  %661 = fmul fast float %660, 4.000000e+00
  %662 = fadd fast float %658, %660
  %663 = fmul fast float %662, 4.000000e+00
  %664 = fcmp fast ogt float %663, 1.000000e+00
  br i1 %664, label %665, label %671, !dx.controlflow.hints !34

; <label>:665                                     ; preds = %626
  %666 = add nsw i32 %657, 1
  %667 = fadd fast float %661, -1.000000e+00
  %668 = fsub fast float -0.000000e+00, %667
  %669 = fadd fast float %659, -1.000000e+00
  %670 = fsub fast float -0.000000e+00, %669
  br label %671

; <label>:671                                     ; preds = %665, %626
  %672 = phi i32 [ %666, %665 ], [ %651, %626 ]
  %673 = phi i32 [ %656, %665 ], [ %657, %626 ]
  %674 = phi i32 [ %657, %665 ], [ %656, %626 ]
  %675 = phi float [ %670, %665 ], [ %661, %626 ]
  %676 = phi float [ %668, %665 ], [ %659, %626 ]
  %677 = fsub fast float 1.000000e+00, %675
  %678 = fsub fast float %677, %676
  %679 = lshr i32 %674, 2
  %680 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %679
  %681 = load i32, i32* %680, align 4, !tbaa !35, !noalias !39
  %682 = shl i32 %674, 3
  %683 = and i32 %682, 24
  %684 = lshr i32 %681, %683
  %685 = and i32 %684, 255
  %686 = sitofp i32 %685 to float
  %687 = fmul fast float %676, 0x3F70101020000000
  %688 = fmul fast float %687, %686
  %689 = lshr i32 %673, 2
  %690 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %689
  %691 = load i32, i32* %690, align 4, !tbaa !35, !noalias !39
  %692 = shl i32 %673, 3
  %693 = and i32 %692, 24
  %694 = lshr i32 %691, %693
  %695 = and i32 %694, 255
  %696 = sitofp i32 %695 to float
  %697 = fmul fast float %675, 0x3F70101020000000
  %698 = fmul fast float %697, %696
  %699 = lshr i32 %672, 2
  %700 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %699
  %701 = load i32, i32* %700, align 4, !tbaa !35, !noalias !39
  %702 = shl i32 %672, 3
  %703 = and i32 %702, 24
  %704 = lshr i32 %701, %703
  %705 = and i32 %704, 255
  %706 = sitofp i32 %705 to float
  %707 = fmul fast float %678, 0x3F70101020000000
  %708 = fmul fast float %707, %706
  %709 = fsub fast float 1.000000e+00, %688
  %710 = fsub fast float %709, %698
  %711 = fsub fast float %710, %708
  %712 = fmul fast float %364, 2.000000e+01
  %713 = fadd fast float %712, 1.000000e+00
  %714 = fmul fast float %711, 2.000000e+01
  %715 = fsub fast float %713, %714
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  br label %717

; <label>:717                                     ; preds = %671, %622
  %718 = phi float [ %716, %671 ], [ 1.000000e+00, %622 ]
  store float %718, float* %435, align 4, !tbaa !47, !noalias !39
  %719 = fadd fast float %624, %718
  %720 = icmp slt i32 %428, 0
  br i1 %720, label %721, label %812, !dx.controlflow.hints !33

; <label>:721                                     ; preds = %717
  %722 = fsub fast float 1.000000e+00, %365
  %723 = fdiv fast float 1.000000e+00, %722
  %724 = shl i32 %353, 6
  %725 = or i32 %724, 48
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = extractvalue %dx.types.ResRet.i32 %726, 1
  %729 = extractvalue %dx.types.ResRet.i32 %726, 2
  %730 = extractvalue %dx.types.ResRet.i32 %726, 3
  %731 = fmul fast float %723, %362
  %732 = fmul fast float %723, %363
  %733 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %727, i32* %733, align 4
  %734 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %728, i32* %734, align 4
  %735 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %729, i32* %735, align 4
  %736 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %730, i32* %736, align 4
  %737 = fmul fast float %732, 4.000000e+00
  %738 = call float @dx.op.unary.f32(i32 27, float %737)  ; Round_ni(value)
  %739 = fmul fast float %731, 4.000000e+00
  %740 = call float @dx.op.unary.f32(i32 27, float %739)  ; Round_ni(value)
  %741 = fsub fast float 1.100000e+01, %738
  %742 = fmul fast float %738, 5.000000e-01
  %743 = fmul fast float %742, %741
  %744 = fadd fast float %740, 5.000000e-01
  %745 = fadd fast float %744, %743
  %746 = fptosi float %745 to i32
  %747 = fptosi float %738 to i32
  %748 = sub nsw i32 5, %747
  %749 = fmul fast float %740, 2.500000e-01
  %750 = fmul fast float %738, 2.500000e-01
  %751 = add nsw i32 %746, 1
  %752 = add nsw i32 %746, %748
  %753 = fsub fast float %731, %749
  %754 = fmul fast float %753, 4.000000e+00
  %755 = fsub fast float %732, %750
  %756 = fmul fast float %755, 4.000000e+00
  %757 = fadd fast float %753, %755
  %758 = fmul fast float %757, 4.000000e+00
  %759 = fcmp fast ogt float %758, 1.000000e+00
  br i1 %759, label %760, label %766, !dx.controlflow.hints !34

; <label>:760                                     ; preds = %721
  %761 = add nsw i32 %752, 1
  %762 = fadd fast float %756, -1.000000e+00
  %763 = fsub fast float -0.000000e+00, %762
  %764 = fadd fast float %754, -1.000000e+00
  %765 = fsub fast float -0.000000e+00, %764
  br label %766

; <label>:766                                     ; preds = %760, %721
  %767 = phi i32 [ %761, %760 ], [ %746, %721 ]
  %768 = phi i32 [ %751, %760 ], [ %752, %721 ]
  %769 = phi i32 [ %752, %760 ], [ %751, %721 ]
  %770 = phi float [ %765, %760 ], [ %756, %721 ]
  %771 = phi float [ %763, %760 ], [ %754, %721 ]
  %772 = fsub fast float 1.000000e+00, %770
  %773 = fsub fast float %772, %771
  %774 = lshr i32 %769, 2
  %775 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %774
  %776 = load i32, i32* %775, align 4, !tbaa !35, !noalias !39
  %777 = shl i32 %769, 3
  %778 = and i32 %777, 24
  %779 = lshr i32 %776, %778
  %780 = and i32 %779, 255
  %781 = sitofp i32 %780 to float
  %782 = fmul fast float %771, 0x3F70101020000000
  %783 = fmul fast float %782, %781
  %784 = lshr i32 %768, 2
  %785 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %784
  %786 = load i32, i32* %785, align 4, !tbaa !35, !noalias !39
  %787 = shl i32 %768, 3
  %788 = and i32 %787, 24
  %789 = lshr i32 %786, %788
  %790 = and i32 %789, 255
  %791 = sitofp i32 %790 to float
  %792 = fmul fast float %770, 0x3F70101020000000
  %793 = fmul fast float %792, %791
  %794 = lshr i32 %767, 2
  %795 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %794
  %796 = load i32, i32* %795, align 4, !tbaa !35, !noalias !39
  %797 = shl i32 %767, 3
  %798 = and i32 %797, 24
  %799 = lshr i32 %796, %798
  %800 = and i32 %799, 255
  %801 = sitofp i32 %800 to float
  %802 = fmul fast float %773, 0x3F70101020000000
  %803 = fmul fast float %802, %801
  %804 = fsub fast float 1.000000e+00, %783
  %805 = fsub fast float %804, %793
  %806 = fsub fast float %805, %803
  %807 = fmul fast float %365, 2.000000e+01
  %808 = fadd fast float %807, 1.000000e+00
  %809 = fmul fast float %806, 2.000000e+01
  %810 = fsub fast float %808, %809
  %811 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  br label %812

; <label>:812                                     ; preds = %766, %717
  %813 = phi float [ %811, %766 ], [ 1.000000e+00, %717 ]
  store float %813, float* %436, align 4, !tbaa !47, !noalias !39
  %814 = fadd fast float %719, %813
  %815 = fcmp fast oeq float %814, 0.000000e+00
  br i1 %815, label %816, label %817, !dx.controlflow.hints !49

; <label>:816                                     ; preds = %812
  store float 2.500000e-01, float* %433, align 4
  store float 2.500000e-01, float* %434, align 4
  store float 2.500000e-01, float* %435, align 4
  store float 2.500000e-01, float* %436, align 4
  br label %817

; <label>:817                                     ; preds = %816, %812
  %818 = phi float [ 2.500000e-01, %816 ], [ %529, %812 ]
  br label %819

; <label>:819                                     ; preds = %1083, %817
  %820 = phi float [ %1085, %1083 ], [ %818, %817 ]
  %821 = phi float [ %1053, %1083 ], [ 0.000000e+00, %817 ]
  %822 = phi float [ %1054, %1083 ], [ 0.000000e+00, %817 ]
  %823 = phi float [ %1055, %1083 ], [ 0.000000e+00, %817 ]
  %824 = phi float [ %1056, %1083 ], [ 0.000000e+00, %817 ]
  %825 = phi float [ %1057, %1083 ], [ 0.000000e+00, %817 ]
  %826 = phi float [ %1058, %1083 ], [ 0.000000e+00, %817 ]
  %827 = phi float [ %1059, %1083 ], [ 0.000000e+00, %817 ]
  %828 = phi float [ %1060, %1083 ], [ 0.000000e+00, %817 ]
  %829 = phi float [ %1061, %1083 ], [ 0.000000e+00, %817 ]
  %830 = phi float [ %1062, %1083 ], [ 0.000000e+00, %817 ]
  %831 = phi float [ %1063, %1083 ], [ 0.000000e+00, %817 ]
  %832 = phi float [ %1064, %1083 ], [ 0.000000e+00, %817 ]
  %833 = phi float [ %1065, %1083 ], [ 0.000000e+00, %817 ]
  %834 = phi float [ %1066, %1083 ], [ 0.000000e+00, %817 ]
  %835 = phi float [ %1067, %1083 ], [ 0.000000e+00, %817 ]
  %836 = phi float [ %1068, %1083 ], [ 0.000000e+00, %817 ]
  %837 = phi float [ %1069, %1083 ], [ 0.000000e+00, %817 ]
  %838 = phi float [ %1070, %1083 ], [ 0.000000e+00, %817 ]
  %839 = phi float [ %1071, %1083 ], [ 0.000000e+00, %817 ]
  %840 = phi float [ %1072, %1083 ], [ 0.000000e+00, %817 ]
  %841 = phi float [ %1073, %1083 ], [ 0.000000e+00, %817 ]
  %842 = phi float [ %1074, %1083 ], [ 0.000000e+00, %817 ]
  %843 = phi float [ %1075, %1083 ], [ 0.000000e+00, %817 ]
  %844 = phi float [ %1076, %1083 ], [ 0.000000e+00, %817 ]
  %845 = phi float [ %1077, %1083 ], [ 0.000000e+00, %817 ]
  %846 = phi float [ %1078, %1083 ], [ 0.000000e+00, %817 ]
  %847 = phi float [ %1079, %1083 ], [ 0.000000e+00, %817 ]
  %848 = phi float [ %1080, %1083 ], [ 0.000000e+00, %817 ]
  %849 = phi i32 [ %1081, %1083 ], [ 0, %817 ]
  %850 = fcmp fast ogt float %820, 0.000000e+00
  br i1 %850, label %851, label %1052, !dx.controlflow.hints !50

; <label>:851                                     ; preds = %819
  %852 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %849
  %853 = load float, float* %852, align 4, !tbaa !47, !noalias !39
  %854 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %849
  %855 = load i32, i32* %854, align 4, !tbaa !35, !noalias !39
  %856 = fmul fast float %853, %820
  %857 = shl i32 %855, 5
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = extractvalue %dx.types.ResRet.i32 %858, 1
  %861 = extractvalue %dx.types.ResRet.i32 %858, 2
  %862 = extractvalue %dx.types.ResRet.i32 %858, 3
  %863 = or i32 %857, 16
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = extractvalue %dx.types.ResRet.i32 %864, 1
  %867 = extractvalue %dx.types.ResRet.i32 %864, 2
  %868 = shl i32 %859, 4
  %869 = and i32 %868, 32752
  %870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %869)  ; LegacyF16ToF32(value)
  %871 = lshr i32 %859, 7
  %872 = and i32 %871, 32752
  %873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %872)  ; LegacyF16ToF32(value)
  %874 = lshr i32 %859, 22
  %875 = shl nuw nsw i32 %874, 5
  %876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %875)  ; LegacyF16ToF32(value)
  %877 = and i32 %860, 255
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F80204080000000
  %880 = fadd fast float %879, -1.000000e+00
  %881 = lshr i32 %860, 8
  %882 = and i32 %881, 255
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %883, 0x3F80204080000000
  %885 = fadd fast float %884, -1.000000e+00
  %886 = lshr i32 %860, 16
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = fmul fast float %888, 0x3F80204080000000
  %890 = fadd fast float %889, -1.000000e+00
  %891 = lshr i32 %860, 24
  %892 = uitofp i32 %891 to float
  %893 = fmul fast float %892, 0x3F80204080000000
  %894 = fadd fast float %893, -1.000000e+00
  %895 = and i32 %861, 255
  %896 = uitofp i32 %895 to float
  %897 = fmul fast float %896, 0x3F80204080000000
  %898 = fadd fast float %897, -1.000000e+00
  %899 = lshr i32 %861, 8
  %900 = and i32 %899, 255
  %901 = uitofp i32 %900 to float
  %902 = fmul fast float %901, 0x3F80204080000000
  %903 = fadd fast float %902, -1.000000e+00
  %904 = lshr i32 %861, 16
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F80204080000000
  %908 = fadd fast float %907, -1.000000e+00
  %909 = lshr i32 %861, 24
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %910, 0x3F80204080000000
  %912 = fadd fast float %911, -1.000000e+00
  %913 = and i32 %862, 255
  %914 = uitofp i32 %913 to float
  %915 = fmul fast float %914, 0x3F80204080000000
  %916 = fadd fast float %915, -1.000000e+00
  %917 = lshr i32 %862, 8
  %918 = and i32 %917, 255
  %919 = uitofp i32 %918 to float
  %920 = fmul fast float %919, 0x3F80204080000000
  %921 = fadd fast float %920, -1.000000e+00
  %922 = lshr i32 %862, 16
  %923 = and i32 %922, 255
  %924 = uitofp i32 %923 to float
  %925 = fmul fast float %924, 0x3F80204080000000
  %926 = fadd fast float %925, -1.000000e+00
  %927 = lshr i32 %862, 24
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %928, 0x3F80204080000000
  %930 = fadd fast float %929, -1.000000e+00
  %931 = and i32 %865, 255
  %932 = uitofp i32 %931 to float
  %933 = fmul fast float %932, 0x3F80204080000000
  %934 = fadd fast float %933, -1.000000e+00
  %935 = lshr i32 %865, 8
  %936 = and i32 %935, 255
  %937 = uitofp i32 %936 to float
  %938 = fmul fast float %937, 0x3F80204080000000
  %939 = fadd fast float %938, -1.000000e+00
  %940 = lshr i32 %865, 16
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F80204080000000
  %944 = fadd fast float %943, -1.000000e+00
  %945 = lshr i32 %865, 24
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F80204080000000
  %948 = fadd fast float %947, -1.000000e+00
  %949 = and i32 %866, 255
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F80204080000000
  %952 = fadd fast float %951, -1.000000e+00
  %953 = lshr i32 %866, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F80204080000000
  %957 = fadd fast float %956, -1.000000e+00
  %958 = lshr i32 %866, 16
  %959 = and i32 %958, 255
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F80204080000000
  %962 = fadd fast float %961, -1.000000e+00
  %963 = lshr i32 %866, 24
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F80204080000000
  %966 = fadd fast float %965, -1.000000e+00
  %967 = and i32 %867, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F80204080000000
  %970 = fadd fast float %969, -1.000000e+00
  %971 = lshr i32 %867, 8
  %972 = and i32 %971, 255
  %973 = uitofp i32 %972 to float
  %974 = fmul fast float %973, 0x3F80204080000000
  %975 = fadd fast float %974, -1.000000e+00
  %976 = lshr i32 %867, 16
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F80204080000000
  %980 = fadd fast float %979, -1.000000e+00
  %981 = lshr i32 %867, 24
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F80204080000000
  %984 = fadd fast float %983, -1.000000e+00
  %985 = fmul fast float %870, %856
  %986 = fadd fast float %985, %838
  %987 = fmul fast float %856, 0x3FFBB67AE0000000
  %988 = fmul fast float %987, %870
  %989 = fmul fast float %988, %880
  %990 = fadd fast float %989, %837
  %991 = fmul fast float %988, %885
  %992 = fadd fast float %991, %836
  %993 = fmul fast float %988, %890
  %994 = fadd fast float %993, %835
  %995 = fmul fast float %856, 0x3FFEFBDEC0000000
  %996 = fmul fast float %995, %870
  %997 = fmul fast float %996, %894
  %998 = fadd fast float %997, %834
  %999 = fmul fast float %996, %898
  %1000 = fadd fast float %999, %833
  %1001 = fmul fast float %856, 0x4001E377A0000000
  %1002 = fmul fast float %1001, %870
  %1003 = fmul fast float %1002, %903
  %1004 = fadd fast float %1003, %832
  %1005 = fmul fast float %996, %908
  %1006 = fadd fast float %1005, %831
  %1007 = fmul fast float %996, %912
  %1008 = fadd fast float %1007, %830
  %1009 = fmul fast float %873, %856
  %1010 = fadd fast float %1009, %829
  %1011 = fmul fast float %987, %873
  %1012 = fmul fast float %1011, %916
  %1013 = fadd fast float %1012, %828
  %1014 = fmul fast float %1011, %921
  %1015 = fadd fast float %1014, %827
  %1016 = fmul fast float %1011, %926
  %1017 = fadd fast float %1016, %826
  %1018 = fmul fast float %995, %873
  %1019 = fmul fast float %1018, %930
  %1020 = fadd fast float %1019, %825
  %1021 = fmul fast float %1018, %934
  %1022 = fadd fast float %1021, %824
  %1023 = fmul fast float %1001, %873
  %1024 = fmul fast float %1023, %939
  %1025 = fadd fast float %1024, %823
  %1026 = fmul fast float %1018, %944
  %1027 = fadd fast float %1026, %822
  %1028 = fmul fast float %1018, %948
  %1029 = fadd fast float %1028, %821
  %1030 = fmul fast float %876, %856
  %1031 = fadd fast float %1030, %847
  %1032 = fmul fast float %987, %876
  %1033 = fmul fast float %1032, %952
  %1034 = fadd fast float %1033, %846
  %1035 = fmul fast float %1032, %957
  %1036 = fadd fast float %1035, %845
  %1037 = fmul fast float %1032, %962
  %1038 = fadd fast float %1037, %844
  %1039 = fmul fast float %995, %876
  %1040 = fmul fast float %1039, %966
  %1041 = fadd fast float %1040, %843
  %1042 = fmul fast float %1039, %970
  %1043 = fadd fast float %1042, %842
  %1044 = fmul fast float %1001, %876
  %1045 = fmul fast float %1044, %975
  %1046 = fadd fast float %1045, %841
  %1047 = fmul fast float %1039, %980
  %1048 = fadd fast float %1047, %840
  %1049 = fmul fast float %1039, %984
  %1050 = fadd fast float %1049, %839
  %1051 = fadd fast float %856, %848
  br label %1052

; <label>:1052                                    ; preds = %851, %819
  %1053 = phi float [ %1029, %851 ], [ %821, %819 ]
  %1054 = phi float [ %1027, %851 ], [ %822, %819 ]
  %1055 = phi float [ %1025, %851 ], [ %823, %819 ]
  %1056 = phi float [ %1022, %851 ], [ %824, %819 ]
  %1057 = phi float [ %1020, %851 ], [ %825, %819 ]
  %1058 = phi float [ %1017, %851 ], [ %826, %819 ]
  %1059 = phi float [ %1015, %851 ], [ %827, %819 ]
  %1060 = phi float [ %1013, %851 ], [ %828, %819 ]
  %1061 = phi float [ %1010, %851 ], [ %829, %819 ]
  %1062 = phi float [ %1008, %851 ], [ %830, %819 ]
  %1063 = phi float [ %1006, %851 ], [ %831, %819 ]
  %1064 = phi float [ %1004, %851 ], [ %832, %819 ]
  %1065 = phi float [ %1000, %851 ], [ %833, %819 ]
  %1066 = phi float [ %998, %851 ], [ %834, %819 ]
  %1067 = phi float [ %994, %851 ], [ %835, %819 ]
  %1068 = phi float [ %992, %851 ], [ %836, %819 ]
  %1069 = phi float [ %990, %851 ], [ %837, %819 ]
  %1070 = phi float [ %986, %851 ], [ %838, %819 ]
  %1071 = phi float [ %1050, %851 ], [ %839, %819 ]
  %1072 = phi float [ %1048, %851 ], [ %840, %819 ]
  %1073 = phi float [ %1046, %851 ], [ %841, %819 ]
  %1074 = phi float [ %1043, %851 ], [ %842, %819 ]
  %1075 = phi float [ %1041, %851 ], [ %843, %819 ]
  %1076 = phi float [ %1038, %851 ], [ %844, %819 ]
  %1077 = phi float [ %1036, %851 ], [ %845, %819 ]
  %1078 = phi float [ %1034, %851 ], [ %846, %819 ]
  %1079 = phi float [ %1031, %851 ], [ %847, %819 ]
  %1080 = phi float [ %1051, %851 ], [ %848, %819 ]
  %1081 = add nuw nsw i32 %849, 1
  %1082 = icmp eq i32 %1081, 4
  br i1 %1082, label %1086, label %1083

; <label>:1083                                    ; preds = %1052
  %1084 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 %1081
  %1085 = load float, float* %1084, align 4, !tbaa !47, !noalias !39
  br label %819

; <label>:1086                                    ; preds = %1052
  %1087 = fcmp fast ogt float %1080, 0.000000e+00
  %1088 = fdiv fast float 1.000000e+00, %1080
  %1089 = select i1 %1087, float %1088, float 1.000000e+00
  %1090 = fmul fast float %1089, %1070
  %1091 = fmul fast float %1089, %1069
  %1092 = fmul fast float %1089, %1068
  %1093 = fmul fast float %1089, %1067
  %1094 = fmul fast float %1089, %1066
  %1095 = fmul fast float %1089, %1065
  %1096 = fmul fast float %1089, %1064
  %1097 = fmul fast float %1089, %1063
  %1098 = fmul fast float %1089, %1062
  %1099 = fmul fast float %1089, %1061
  %1100 = fmul fast float %1089, %1060
  %1101 = fmul fast float %1089, %1059
  %1102 = fmul fast float %1089, %1058
  %1103 = fmul fast float %1089, %1057
  %1104 = fmul fast float %1089, %1056
  %1105 = fmul fast float %1089, %1055
  %1106 = fmul fast float %1089, %1054
  %1107 = fmul fast float %1089, %1053
  %1108 = fmul fast float %1089, %1079
  %1109 = fmul fast float %1089, %1078
  %1110 = fmul fast float %1089, %1077
  %1111 = fmul fast float %1089, %1076
  %1112 = fmul fast float %1089, %1075
  %1113 = fmul fast float %1089, %1074
  %1114 = fmul fast float %1089, %1073
  %1115 = fmul fast float %1089, %1072
  %1116 = fmul fast float %1089, %1071
  br label %1117

; <label>:1117                                    ; preds = %1086, %367
  %1118 = phi float [ %403, %367 ], [ %1107, %1086 ]
  %1119 = phi float [ %401, %367 ], [ %1106, %1086 ]
  %1120 = phi float [ %399, %367 ], [ %1105, %1086 ]
  %1121 = phi float [ %397, %367 ], [ %1104, %1086 ]
  %1122 = phi float [ %395, %367 ], [ %1103, %1086 ]
  %1123 = phi float [ %393, %367 ], [ %1102, %1086 ]
  %1124 = phi float [ %391, %367 ], [ %1101, %1086 ]
  %1125 = phi float [ %389, %367 ], [ %1100, %1086 ]
  %1126 = phi float [ %387, %367 ], [ %1099, %1086 ]
  %1127 = phi float [ %385, %367 ], [ %1098, %1086 ]
  %1128 = phi float [ %383, %367 ], [ %1097, %1086 ]
  %1129 = phi float [ %381, %367 ], [ %1096, %1086 ]
  %1130 = phi float [ %379, %367 ], [ %1095, %1086 ]
  %1131 = phi float [ %377, %367 ], [ %1094, %1086 ]
  %1132 = phi float [ %375, %367 ], [ %1093, %1086 ]
  %1133 = phi float [ %373, %367 ], [ %1092, %1086 ]
  %1134 = phi float [ %371, %367 ], [ %1091, %1086 ]
  %1135 = phi float [ %369, %367 ], [ %1090, %1086 ]
  %1136 = phi float [ %421, %367 ], [ %1116, %1086 ]
  %1137 = phi float [ %419, %367 ], [ %1115, %1086 ]
  %1138 = phi float [ %417, %367 ], [ %1114, %1086 ]
  %1139 = phi float [ %415, %367 ], [ %1113, %1086 ]
  %1140 = phi float [ %413, %367 ], [ %1112, %1086 ]
  %1141 = phi float [ %411, %367 ], [ %1111, %1086 ]
  %1142 = phi float [ %409, %367 ], [ %1110, %1086 ]
  %1143 = phi float [ %407, %367 ], [ %1109, %1086 ]
  %1144 = phi float [ %405, %367 ], [ %1108, %1086 ]
  %1145 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1135)  ; LegacyF32ToF16(value)
  %1146 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1134)  ; LegacyF32ToF16(value)
  %1147 = shl i32 %1146, 16
  %1148 = or i32 %1147, %1145
  %1149 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1133)  ; LegacyF32ToF16(value)
  %1150 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1132)  ; LegacyF32ToF16(value)
  %1151 = shl i32 %1150, 16
  %1152 = or i32 %1151, %1149
  %1153 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1131)  ; LegacyF32ToF16(value)
  %1154 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1130)  ; LegacyF32ToF16(value)
  %1155 = shl i32 %1154, 16
  %1156 = or i32 %1155, %1153
  %1157 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1129)  ; LegacyF32ToF16(value)
  %1158 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1128)  ; LegacyF32ToF16(value)
  %1159 = shl i32 %1158, 16
  %1160 = or i32 %1159, %1157
  %1161 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1127)  ; LegacyF32ToF16(value)
  %1162 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1126)  ; LegacyF32ToF16(value)
  %1163 = shl i32 %1162, 16
  %1164 = or i32 %1163, %1161
  %1165 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1125)  ; LegacyF32ToF16(value)
  %1166 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1124)  ; LegacyF32ToF16(value)
  %1167 = shl i32 %1166, 16
  %1168 = or i32 %1167, %1165
  %1169 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1123)  ; LegacyF32ToF16(value)
  %1170 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1122)  ; LegacyF32ToF16(value)
  %1171 = shl i32 %1170, 16
  %1172 = or i32 %1171, %1169
  %1173 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1121)  ; LegacyF32ToF16(value)
  %1174 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1120)  ; LegacyF32ToF16(value)
  %1175 = shl i32 %1174, 16
  %1176 = or i32 %1175, %1173
  %1177 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1119)  ; LegacyF32ToF16(value)
  %1178 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1118)  ; LegacyF32ToF16(value)
  %1179 = shl i32 %1178, 16
  %1180 = or i32 %1179, %1177
  %1181 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1144)  ; LegacyF32ToF16(value)
  %1182 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1143)  ; LegacyF32ToF16(value)
  %1183 = shl i32 %1182, 16
  %1184 = or i32 %1183, %1181
  %1185 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1142)  ; LegacyF32ToF16(value)
  %1186 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1141)  ; LegacyF32ToF16(value)
  %1187 = shl i32 %1186, 16
  %1188 = or i32 %1187, %1185
  %1189 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1140)  ; LegacyF32ToF16(value)
  %1190 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1139)  ; LegacyF32ToF16(value)
  %1191 = shl i32 %1190, 16
  %1192 = or i32 %1191, %1189
  %1193 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1138)  ; LegacyF32ToF16(value)
  %1194 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1137)  ; LegacyF32ToF16(value)
  %1195 = shl i32 %1194, 16
  %1196 = or i32 %1195, %1193
  %1197 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1136)  ; LegacyF32ToF16(value)
  %1198 = call i32 @dx.op.legacyF32ToF16(i32 130, float 1.000000e+00)  ; LegacyF32ToF16(value)
  %1199 = shl i32 %1198, 16
  %1200 = or i32 %1199, %1197
  br label %1201

; <label>:1201                                    ; preds = %1117, %0
  %1202 = phi i32 [ %33, %0 ], [ %1196, %1117 ]
  %1203 = phi i32 [ %28, %0 ], [ %1180, %1117 ]
  %1204 = phi i32 [ %23, %0 ], [ %1164, %1117 ]
  %1205 = phi i32 [ %18, %0 ], [ %1148, %1117 ]
  %1206 = phi i32 [ %34, %0 ], [ %1200, %1117 ]
  %1207 = phi i32 [ %29, %0 ], [ %1184, %1117 ]
  %1208 = phi i32 [ %24, %0 ], [ %1168, %1117 ]
  %1209 = phi i32 [ %19, %0 ], [ %1152, %1117 ]
  %1210 = phi i32 [ %35, %0 ], [ %1198, %1117 ]
  %1211 = phi i32 [ %30, %0 ], [ %1188, %1117 ]
  %1212 = phi i32 [ %25, %0 ], [ %1172, %1117 ]
  %1213 = phi i32 [ %20, %0 ], [ %1156, %1117 ]
  %1214 = phi i32 [ %36, %0 ], [ 0, %1117 ]
  %1215 = phi i32 [ %31, %0 ], [ %1192, %1117 ]
  %1216 = phi i32 [ %26, %0 ], [ %1176, %1117 ]
  %1217 = phi i32 [ %21, %0 ], [ %1160, %1117 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 undef, i32 %1205, i32 %1209, i32 %1213, i32 %1217, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 16, i32 undef, i32 %1204, i32 %1208, i32 %1212, i32 %1216, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 32, i32 undef, i32 %1203, i32 %1207, i32 %1211, i32 %1215, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 48, i32 undef, i32 %1202, i32 %1206, i32 %1210, i32 %1214, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !17, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{!16}
!16 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{!18, !19}
!18 = !{i32 0, %GfxSHProbeFallbackConsts* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!19 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!20 = !{void ()* @cs_sh_sample_fallback_probe, !"cs_sh_sample_fallback_probe", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 1, i32 1, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !42, !43, !44, !45, !46}
!40 = distinct !{!40, !41, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!41 = distinct !{!41, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!42 = distinct !{!42, !41, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!43 = distinct !{!43, !41, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!44 = distinct !{!44, !41, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!45 = distinct !{!45, !41, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!46 = distinct !{!46, !41, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !37, i64 0}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}

