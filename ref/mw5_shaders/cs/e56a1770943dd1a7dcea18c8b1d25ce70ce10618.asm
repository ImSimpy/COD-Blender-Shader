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
; shader hash: 76b78d006a7095a191c1ab45b88814c9
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
;   [112 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%cb = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.SamplerState = type { i32 }

@"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim" = addrspace(3) global [1444 x float] undef, align 4

define void @cs_nis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = shl i32 %5, 5
  %9 = shl i32 %6, 5
  %10 = shl nsw i32 %7, 1
  %11 = icmp slt i32 %10, 722
  br i1 %11, label %12, label %104

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %13, %12
  %14 = phi i32 [ %101, %13 ], [ %10, %12 ]
  %15 = urem i32 %14, 38
  %16 = udiv i32 %14, 38
  %17 = shl nuw nsw i32 %16, 1
  %18 = add i32 %15, %8
  %19 = uitofp i32 %18 to float
  %20 = fadd fast float %19, -1.500000e+00
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = fmul fast float %20, %22
  %24 = add i32 %17, %9
  %25 = uitofp i32 %24 to float
  %26 = fadd fast float %25, -1.500000e+00
  %27 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %28 = fmul fast float %26, %27
  %29 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %23, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = fmul fast float %30, 0x3FCB367A00000000
  %34 = fmul fast float %31, 0x3FE6E2EB20000000
  %35 = fadd fast float %33, %34
  %36 = fmul fast float %32, 0x3FB27BB300000000
  %37 = fadd fast float %35, %36
  %38 = mul i32 %17, 38
  %39 = add i32 %15, %38
  %40 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %39
  store float %37, float addrspace(3)* %40, align 4, !tbaa !17
  %41 = or i32 %8, 1
  %42 = add i32 %41, %15
  %43 = uitofp i32 %42 to float
  %44 = fadd fast float %43, -1.500000e+00
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %44
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %49 = fmul fast float %48, %26
  %50 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %47, float %49, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = fmul fast float %51, 0x3FCB367A00000000
  %55 = fmul fast float %52, 0x3FE6E2EB20000000
  %56 = fadd fast float %54, %55
  %57 = fmul fast float %53, 0x3FB27BB300000000
  %58 = fadd fast float %56, %57
  %59 = add nuw nsw i32 %15, 1
  %60 = mul i32 %17, 38
  %61 = add i32 %59, %60
  %62 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %61
  store float %58, float addrspace(3)* %62, align 4, !tbaa !17
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = fmul fast float %64, %20
  %66 = or i32 %24, 1
  %67 = uitofp i32 %66 to float
  %68 = fadd fast float %67, -1.500000e+00
  %69 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %70 = fmul fast float %69, %68
  %71 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %65, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  %75 = fmul fast float %72, 0x3FCB367A00000000
  %76 = fmul fast float %73, 0x3FE6E2EB20000000
  %77 = fadd fast float %75, %76
  %78 = fmul fast float %74, 0x3FB27BB300000000
  %79 = fadd fast float %77, %78
  %80 = or i32 %17, 1
  %81 = mul i32 %80, 38
  %82 = add i32 %15, %81
  %83 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %82
  store float %79, float addrspace(3)* %83, align 4, !tbaa !17
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = fmul fast float %85, %44
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %88 = fmul fast float %87, %68
  %89 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %86, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = extractvalue %dx.types.ResRet.f32 %89, 2
  %93 = fmul fast float %90, 0x3FCB367A00000000
  %94 = fmul fast float %91, 0x3FE6E2EB20000000
  %95 = fadd fast float %93, %94
  %96 = fmul fast float %92, 0x3FB27BB300000000
  %97 = fadd fast float %95, %96
  %98 = mul i32 %80, 38
  %99 = add i32 %59, %98
  %100 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %99
  store float %97, float addrspace(3)* %100, align 4, !tbaa !17
  %101 = add nsw i32 %14, 256
  %102 = icmp slt i32 %101, 722
  br i1 %102, label %13, label %103

; <label>:103                                     ; preds = %13
  br label %104

; <label>:104                                     ; preds = %103, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %105 = icmp slt i32 %7, 1024
  br i1 %105, label %106, label %412

; <label>:106                                     ; preds = %104
  br label %107

; <label>:107                                     ; preds = %370, %106
  %108 = phi i32 [ %409, %370 ], [ %7, %106 ]
  %109 = and i32 %108, 31
  %110 = lshr i32 %108, 5
  %111 = add nuw nsw i32 %109, 2
  %112 = mul i32 %110, 38
  %113 = add i32 %111, %112
  %114 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %113
  %115 = load float, float addrspace(3)* %114, align 4, !tbaa !17
  %116 = add nuw nsw i32 %109, 1
  %117 = add nuw nsw i32 %110, 1
  %118 = mul i32 %117, 38
  %119 = add i32 %116, %118
  %120 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4, !tbaa !17
  %122 = mul i32 %117, 38
  %123 = add i32 %111, %122
  %124 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %123
  %125 = load float, float addrspace(3)* %124, align 4, !tbaa !17
  %126 = add nuw nsw i32 %109, 3
  %127 = mul i32 %117, 38
  %128 = add i32 %126, %127
  %129 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %128
  %130 = load float, float addrspace(3)* %129, align 4, !tbaa !17
  %131 = add nuw nsw i32 %110, 2
  %132 = mul i32 %131, 38
  %133 = add i32 %109, %132
  %134 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %133
  %135 = load float, float addrspace(3)* %134, align 4, !tbaa !17
  %136 = mul i32 %131, 38
  %137 = add i32 %116, %136
  %138 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %137
  %139 = load float, float addrspace(3)* %138, align 4, !tbaa !17
  %140 = mul i32 %131, 38
  %141 = add i32 %111, %140
  %142 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %141
  %143 = load float, float addrspace(3)* %142, align 4, !tbaa !17
  %144 = mul i32 %131, 38
  %145 = add i32 %126, %144
  %146 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %145
  %147 = load float, float addrspace(3)* %146, align 4, !tbaa !17
  %148 = add nuw nsw i32 %109, 4
  %149 = mul i32 %131, 38
  %150 = add i32 %148, %149
  %151 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %150
  %152 = load float, float addrspace(3)* %151, align 4, !tbaa !17
  %153 = add nuw nsw i32 %110, 3
  %154 = mul i32 %153, 38
  %155 = add i32 %116, %154
  %156 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %155
  %157 = load float, float addrspace(3)* %156, align 4, !tbaa !17
  %158 = mul i32 %153, 38
  %159 = add i32 %111, %158
  %160 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %159
  %161 = load float, float addrspace(3)* %160, align 4, !tbaa !17
  %162 = mul i32 %153, 38
  %163 = add i32 %126, %162
  %164 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %163
  %165 = load float, float addrspace(3)* %164, align 4, !tbaa !17
  %166 = add nuw nsw i32 %110, 4
  %167 = mul i32 %166, 38
  %168 = add i32 %111, %167
  %169 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAY0CG@$$CAMA.1dim", i32 0, i32 %168
  %170 = load float, float addrspace(3)* %169, align 4, !tbaa !17
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %173 = fsub fast float %143, %172
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %175 = fmul fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %177 = fsub fast float 1.000000e+00, %176
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %180 = fmul fast float %179, %177
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %182 = fadd fast float %180, %181
  %183 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %184 = fmul fast float %183, %177
  %185 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %186 = fadd fast float %184, %185
  %187 = fmul fast float %186, %143
  %188 = fmul fast float %125, 0x3FE33404E0000000
  %189 = fmul fast float %143, 0x3FF33404E0000000
  %190 = fsub fast float %189, %188
  %191 = fmul fast float %161, 0x3FE33404E0000000
  %192 = fsub fast float %190, %191
  %193 = fmul fast float %182, %192
  %194 = fsub fast float -0.000000e+00, %187
  %195 = call float @dx.op.binary.f32(i32 35, float %194, float %193)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 36, float %187, float %195)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 36, float %115, float %125)  ; FMin(a,b)
  %198 = call float @dx.op.binary.f32(i32 36, float %197, float %143)  ; FMin(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float %115, float %125)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %199, float %143)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 36, float %143, float %161)  ; FMin(a,b)
  %202 = call float @dx.op.binary.f32(i32 36, float %201, float %170)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %143, float %161)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %203, float %170)  ; FMax(a,b)
  %205 = fsub fast float %200, %198
  %206 = fsub fast float %204, %202
  %207 = call float @dx.op.binary.f32(i32 35, float %205, float %206)  ; FMax(a,b)
  %208 = call float @dx.op.binary.f32(i32 36, float %205, float %206)  ; FMin(a,b)
  %209 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %210 = fadd fast float %209, %208
  %211 = fdiv fast float %207, %210
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = fsub fast float %211, %213
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %216 = fmul fast float %214, %215
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = fsub fast float 1.000000e+00, %217
  %219 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %220 = fmul fast float %139, 0x3FE33404E0000000
  %221 = fsub fast float %189, %220
  %222 = fmul fast float %147, 0x3FE33404E0000000
  %223 = fsub fast float %221, %222
  %224 = fmul fast float %182, %223
  %225 = call float @dx.op.binary.f32(i32 35, float %194, float %224)  ; FMax(a,b)
  %226 = call float @dx.op.binary.f32(i32 36, float %187, float %225)  ; FMin(a,b)
  %227 = call float @dx.op.binary.f32(i32 36, float %135, float %139)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 36, float %227, float %143)  ; FMin(a,b)
  %229 = call float @dx.op.binary.f32(i32 35, float %135, float %139)  ; FMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %229, float %143)  ; FMax(a,b)
  %231 = call float @dx.op.binary.f32(i32 36, float %143, float %147)  ; FMin(a,b)
  %232 = call float @dx.op.binary.f32(i32 36, float %231, float %152)  ; FMin(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %143, float %147)  ; FMax(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float %233, float %152)  ; FMax(a,b)
  %235 = fsub fast float %230, %228
  %236 = fsub fast float %234, %232
  %237 = call float @dx.op.binary.f32(i32 35, float %235, float %236)  ; FMax(a,b)
  %238 = call float @dx.op.binary.f32(i32 36, float %235, float %236)  ; FMin(a,b)
  %239 = fadd fast float %209, %238
  %240 = fdiv fast float %237, %239
  %241 = fsub fast float %240, %213
  %242 = fmul fast float %241, %215
  %243 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %244 = fsub fast float 1.000000e+00, %243
  %245 = fsub fast float %125, %139
  %246 = fmul fast float %245, 5.000000e-01
  %247 = fadd fast float %246, %139
  %248 = fsub fast float %147, %161
  %249 = fmul fast float %248, 5.000000e-01
  %250 = fadd fast float %249, %161
  %251 = fmul fast float %247, 0x3FE33404E0000000
  %252 = fsub fast float %189, %251
  %253 = fmul fast float %250, 0x3FE33404E0000000
  %254 = fsub fast float %252, %253
  %255 = fmul fast float %182, %254
  %256 = call float @dx.op.binary.f32(i32 35, float %194, float %255)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %187, float %256)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %121, float %247)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float %258, float %143)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %121, float %247)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %260, float %143)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 36, float %143, float %250)  ; FMin(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %262, float %165)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %143, float %250)  ; FMax(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %264, float %165)  ; FMax(a,b)
  %266 = fsub fast float %261, %259
  %267 = fsub fast float %265, %263
  %268 = call float @dx.op.binary.f32(i32 35, float %266, float %267)  ; FMax(a,b)
  %269 = call float @dx.op.binary.f32(i32 36, float %266, float %267)  ; FMin(a,b)
  %270 = fadd fast float %209, %269
  %271 = fdiv fast float %268, %270
  %272 = fsub fast float %271, %213
  %273 = fmul fast float %272, %215
  %274 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  %275 = fsub fast float 1.000000e+00, %274
  %276 = fsub fast float %139, %161
  %277 = fmul fast float %276, 5.000000e-01
  %278 = fadd fast float %277, %161
  %279 = fsub fast float %125, %147
  %280 = fmul fast float %279, 5.000000e-01
  %281 = fadd fast float %280, %147
  %282 = fmul fast float %278, 0x3FE33404E0000000
  %283 = fmul fast float %281, 0x3FE33404E0000000
  %284 = fsub fast float %189, %283
  %285 = fsub fast float %284, %282
  %286 = fmul fast float %182, %285
  %287 = call float @dx.op.binary.f32(i32 35, float %194, float %286)  ; FMax(a,b)
  %288 = call float @dx.op.binary.f32(i32 36, float %187, float %287)  ; FMin(a,b)
  %289 = call float @dx.op.binary.f32(i32 36, float %157, float %278)  ; FMin(a,b)
  %290 = call float @dx.op.binary.f32(i32 36, float %289, float %143)  ; FMin(a,b)
  %291 = call float @dx.op.binary.f32(i32 35, float %157, float %278)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 35, float %291, float %143)  ; FMax(a,b)
  %293 = call float @dx.op.binary.f32(i32 36, float %143, float %281)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 36, float %293, float %130)  ; FMin(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %143, float %281)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %295, float %130)  ; FMax(a,b)
  %297 = fsub fast float %292, %290
  %298 = fsub fast float %296, %294
  %299 = call float @dx.op.binary.f32(i32 35, float %297, float %298)  ; FMax(a,b)
  %300 = call float @dx.op.binary.f32(i32 36, float %297, float %298)  ; FMin(a,b)
  %301 = fadd fast float %209, %300
  %302 = fdiv fast float %299, %301
  %303 = fsub fast float %302, %213
  %304 = fmul fast float %303, %215
  %305 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %306 = fsub fast float 1.000000e+00, %305
  %307 = fadd fast float %125, %121
  %308 = fadd fast float %307, %130
  %309 = fsub fast float %308, %157
  %310 = fsub fast float %309, %161
  %311 = fsub fast float %310, %165
  %312 = call float @dx.op.unary.f32(i32 6, float %311)  ; FAbs(value)
  %313 = fadd fast float %307, %139
  %314 = fsub fast float %313, %147
  %315 = fsub fast float %314, %161
  %316 = fsub fast float %315, %165
  %317 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %318 = fsub fast float %121, %130
  %319 = fadd fast float %318, %139
  %320 = fsub fast float %319, %147
  %321 = fadd fast float %320, %157
  %322 = fsub fast float %321, %165
  %323 = call float @dx.op.unary.f32(i32 6, float %322)  ; FAbs(value)
  %324 = fsub fast float -0.000000e+00, %125
  %325 = fsub fast float %324, %130
  %326 = fadd fast float %325, %139
  %327 = fsub fast float %326, %147
  %328 = fadd fast float %327, %157
  %329 = fadd fast float %328, %161
  %330 = call float @dx.op.unary.f32(i32 6, float %329)  ; FAbs(value)
  %331 = call float @dx.op.binary.f32(i32 35, float %312, float %323)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 36, float %312, float %323)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %317, float %330)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 36, float %317, float %330)  ; FMin(a,b)
  %335 = fadd fast float %333, %331
  %336 = fcmp fast oeq float %335, 0.000000e+00
  br i1 %336, label %370, label %337, !dx.controlflow.hints !21

; <label>:337                                     ; preds = %107
  %338 = fdiv fast float %331, %335
  %339 = call float @dx.op.binary.f32(i32 36, float %338, float 1.000000e+00)  ; FMin(a,b)
  %340 = fsub fast float 1.000000e+00, %339
  %341 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %342 = fmul fast float %341, %332
  %343 = fcmp fast ogt float %331, %342
  %344 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %345 = fcmp fast ogt float %331, %344
  %346 = and i1 %343, %345
  %347 = fcmp fast ogt float %331, %334
  %348 = and i1 %347, %346
  %349 = fmul fast float %341, %334
  %350 = fcmp fast ogt float %333, %349
  %351 = fcmp fast ogt float %333, %344
  %352 = and i1 %350, %351
  %353 = fcmp fast ogt float %333, %332
  %354 = and i1 %353, %352
  %355 = fcmp fast oeq float %331, %312
  %356 = fcmp fast oeq float %333, %317
  %357 = and i1 %348, %354
  %358 = select i1 %357, float %339, float 1.000000e+00
  %359 = select i1 %357, float %340, float 1.000000e+00
  %360 = and i1 %355, %348
  %361 = select i1 %360, float %358, float 0.000000e+00
  %362 = xor i1 %355, true
  %363 = and i1 %348, %362
  %364 = select i1 %363, float %358, float 0.000000e+00
  %365 = and i1 %356, %354
  %366 = select i1 %365, float %359, float 0.000000e+00
  %367 = xor i1 %356, true
  %368 = and i1 %354, %367
  %369 = select i1 %368, float %359, float 0.000000e+00
  br label %370

; <label>:370                                     ; preds = %337, %107
  %371 = phi float [ %361, %337 ], [ 0.000000e+00, %107 ]
  %372 = phi float [ %364, %337 ], [ 0.000000e+00, %107 ]
  %373 = phi float [ %366, %337 ], [ 0.000000e+00, %107 ]
  %374 = phi float [ %369, %337 ], [ 0.000000e+00, %107 ]
  %375 = fmul fast float %218, %196
  %376 = fmul fast float %375, %219
  %377 = fmul fast float %376, %371
  %378 = fmul fast float %244, %226
  %379 = fmul fast float %378, %219
  %380 = fmul fast float %379, %372
  %381 = fadd fast float %380, %377
  %382 = fmul fast float %275, %257
  %383 = fmul fast float %382, %219
  %384 = fmul fast float %383, %373
  %385 = fadd fast float %381, %384
  %386 = fmul fast float %306, %288
  %387 = fmul fast float %386, %219
  %388 = fmul fast float %387, %374
  %389 = fadd fast float %385, %388
  %390 = or i32 %109, %8
  %391 = add nsw i32 %110, %9
  %392 = sitofp i32 %390 to float
  %393 = fadd fast float %392, 5.000000e-01
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = fmul fast float %395, %393
  %397 = sitofp i32 %391 to float
  %398 = fadd fast float %397, 5.000000e-01
  %399 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %400 = fmul fast float %399, %398
  %401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %396, float %400, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = extractvalue %dx.types.ResRet.f32 %401, 3
  %406 = fadd fast float %402, %389
  %407 = fadd fast float %403, %389
  %408 = fadd fast float %404, %389
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %390, i32 %391, i32 undef, float %406, float %407, float %408, float %405, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %409 = add nsw i32 %108, 128
  %410 = icmp slt i32 %409, 1024
  br i1 %410, label %107, label %411

; <label>:411                                     ; preds = %370
  br label %412

; <label>:412                                     ; preds = %411, %104
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, !12}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %cb* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{void ()* @cs_nis, !"cs_nis", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 128, i32 1, i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

