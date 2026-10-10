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
; shader hash: f4dfe281244ff59a8d5a517331ce4901
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
;   [560 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%BlurFiltersGaussianConsts_decl = type { %struct.BlurFiltersGaussianConsts }
%struct.BlurFiltersGaussianConsts = type { <4 x float>, i32, i32, i32, i32, float, i32, i32, i32, [32 x <4 x float>] }
%struct.SamplerState = type { i32 }

@"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [1152 x float] undef, align 4

define void @cs_gaussian_blur_filter_v() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = alloca [4 x float], align 4
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %11 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %12 = shl i32 %8, 7
  %13 = shl i32 %7, 1
  %14 = shl i32 %6, 1
  %15 = add nsw i32 %12, %13
  %16 = extractvalue %dx.types.CBufRet.f32 %9, 0
  %17 = fadd fast float %16, -1.000000e+00
  %18 = fptosi float %17 to i32
  %19 = extractvalue %dx.types.CBufRet.f32 %9, 1
  %20 = fadd fast float %19, -1.000000e+00
  %21 = fptosi float %20 to i32
  %22 = call i32 @dx.op.binary.i32(i32 37, i32 %14, i32 0)  ; IMax(a,b)
  %23 = call i32 @dx.op.binary.i32(i32 37, i32 %15, i32 0)  ; IMax(a,b)
  %24 = call i32 @dx.op.binary.i32(i32 38, i32 %22, i32 %18)  ; IMin(a,b)
  %25 = call i32 @dx.op.binary.i32(i32 38, i32 %23, i32 %21)  ; IMin(a,b)
  %26 = uitofp i32 %24 to float
  %27 = uitofp i32 %25 to float
  %28 = fadd fast float %26, 5.000000e-01
  %29 = fmul fast float %28, %10
  %30 = fadd fast float %27, 5.000000e-01
  %31 = fmul fast float %30, %11
  %32 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %29, float %31, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = extractvalue %dx.types.ResRet.f32 %32, 2
  %36 = extractvalue %dx.types.ResRet.f32 %32, 3
  %37 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %29, float %31, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = extractvalue %dx.types.ResRet.f32 %37, 3
  %42 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %29, float %31, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  %46 = extractvalue %dx.types.ResRet.f32 %42, 3
  %47 = add i32 %13, 32
  %48 = add i32 %47, 0
  %49 = mul i32 %48, 3
  %50 = add i32 0, %49
  %51 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %50
  store float %36, float addrspace(3)* %51, align 4
  %52 = add i32 %47, 0
  %53 = mul i32 %52, 3
  %54 = add i32 1, %53
  %55 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %54
  store float %41, float addrspace(3)* %55, align 4
  %56 = add i32 %47, 0
  %57 = mul i32 %56, 3
  %58 = add i32 2, %57
  %59 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %58
  store float %46, float addrspace(3)* %59, align 4
  %60 = add i32 %13, 33
  %61 = add i32 %60, 0
  %62 = mul i32 %61, 3
  %63 = add i32 0, %62
  %64 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %63
  store float %33, float addrspace(3)* %64, align 4
  %65 = add i32 %60, 0
  %66 = mul i32 %65, 3
  %67 = add i32 1, %66
  %68 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %67
  store float %38, float addrspace(3)* %68, align 4
  %69 = add i32 %60, 0
  %70 = mul i32 %69, 3
  %71 = add i32 2, %70
  %72 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %71
  store float %43, float addrspace(3)* %72, align 4
  %73 = add i32 %47, 192
  %74 = mul i32 %73, 3
  %75 = add i32 0, %74
  %76 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %75
  store float %35, float addrspace(3)* %76, align 4
  %77 = add i32 %47, 192
  %78 = mul i32 %77, 3
  %79 = add i32 1, %78
  %80 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %79
  store float %40, float addrspace(3)* %80, align 4
  %81 = add i32 %47, 192
  %82 = mul i32 %81, 3
  %83 = add i32 2, %82
  %84 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %83
  store float %45, float addrspace(3)* %84, align 4
  %85 = add i32 %60, 192
  %86 = mul i32 %85, 3
  %87 = add i32 0, %86
  %88 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %87
  store float %34, float addrspace(3)* %88, align 4
  %89 = add i32 %60, 192
  %90 = mul i32 %89, 3
  %91 = add i32 1, %90
  %92 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %91
  store float %39, float addrspace(3)* %92, align 4
  %93 = add i32 %60, 192
  %94 = mul i32 %93, 3
  %95 = add i32 2, %94
  %96 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %95
  store float %44, float addrspace(3)* %96, align 4
  %97 = icmp ult i32 %7, 32
  br i1 %97, label %98, label %187, !dx.controlflow.hints !17

; <label>:98                                      ; preds = %0
  %99 = add i32 %13, -32
  %100 = icmp sgt i32 %99, -1
  %101 = add i32 %13, 96
  %102 = select i1 %100, i32 %101, i32 %99
  %103 = add nsw i32 %102, %12
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fadd fast float %105, -1.000000e+00
  %107 = fptosi float %106 to i32
  %108 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %109 = fadd fast float %108, -1.000000e+00
  %110 = fptosi float %109 to i32
  %111 = call i32 @dx.op.binary.i32(i32 37, i32 %103, i32 0)  ; IMax(a,b)
  %112 = call i32 @dx.op.binary.i32(i32 38, i32 %22, i32 %107)  ; IMin(a,b)
  %113 = call i32 @dx.op.binary.i32(i32 38, i32 %111, i32 %110)  ; IMin(a,b)
  %114 = uitofp i32 %112 to float
  %115 = uitofp i32 %113 to float
  %116 = fadd fast float %114, 5.000000e-01
  %117 = fmul fast float %116, %10
  %118 = fadd fast float %115, 5.000000e-01
  %119 = fmul fast float %118, %11
  %120 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %117, float %119, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = extractvalue %dx.types.ResRet.f32 %120, 1
  %123 = extractvalue %dx.types.ResRet.f32 %120, 2
  %124 = extractvalue %dx.types.ResRet.f32 %120, 3
  %125 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %117, float %119, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  %129 = extractvalue %dx.types.ResRet.f32 %125, 3
  %130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %117, float %119, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = extractvalue %dx.types.ResRet.f32 %130, 1
  %133 = extractvalue %dx.types.ResRet.f32 %130, 2
  %134 = extractvalue %dx.types.ResRet.f32 %130, 3
  %135 = icmp ugt i32 %13, 31
  %136 = add i32 %13, 128
  %137 = select i1 %135, i32 %136, i32 %13
  %138 = add i32 %137, 0
  %139 = mul i32 %138, 3
  %140 = add i32 0, %139
  %141 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %140
  store float %124, float addrspace(3)* %141, align 4
  %142 = add i32 %137, 0
  %143 = mul i32 %142, 3
  %144 = add i32 1, %143
  %145 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %144
  store float %129, float addrspace(3)* %145, align 4
  %146 = add i32 %137, 0
  %147 = mul i32 %146, 3
  %148 = add i32 2, %147
  %149 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %148
  store float %134, float addrspace(3)* %149, align 4
  %150 = or i32 %137, 1
  %151 = add i32 %150, 0
  %152 = mul i32 %151, 3
  %153 = add i32 0, %152
  %154 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %153
  store float %121, float addrspace(3)* %154, align 4
  %155 = add i32 %150, 0
  %156 = mul i32 %155, 3
  %157 = add i32 1, %156
  %158 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %157
  store float %126, float addrspace(3)* %158, align 4
  %159 = add i32 %150, 0
  %160 = mul i32 %159, 3
  %161 = add i32 2, %160
  %162 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %161
  store float %131, float addrspace(3)* %162, align 4
  %163 = add i32 %137, 192
  %164 = mul i32 %163, 3
  %165 = add i32 0, %164
  %166 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %165
  store float %123, float addrspace(3)* %166, align 4
  %167 = add i32 %137, 192
  %168 = mul i32 %167, 3
  %169 = add i32 1, %168
  %170 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %169
  store float %128, float addrspace(3)* %170, align 4
  %171 = add i32 %137, 192
  %172 = mul i32 %171, 3
  %173 = add i32 2, %172
  %174 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %173
  store float %133, float addrspace(3)* %174, align 4
  %175 = add i32 %150, 192
  %176 = mul i32 %175, 3
  %177 = add i32 0, %176
  %178 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %177
  store float %122, float addrspace(3)* %178, align 4
  %179 = add i32 %150, 192
  %180 = mul i32 %179, 3
  %181 = add i32 1, %180
  %182 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %181
  store float %127, float addrspace(3)* %182, align 4
  %183 = add i32 %150, 192
  %184 = mul i32 %183, 3
  %185 = add i32 2, %184
  %186 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %185
  store float %132, float addrspace(3)* %186, align 4
  br label %187

; <label>:187                                     ; preds = %98, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %188 = add i32 %7, 32
  %189 = add i32 %7, 96
  %190 = add i32 %188, 0
  %191 = mul i32 %190, 3
  %192 = add i32 0, %191
  %193 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %192
  %194 = load float, float addrspace(3)* %193, align 4
  %195 = add i32 %188, 0
  %196 = mul i32 %195, 3
  %197 = add i32 1, %196
  %198 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %197
  %199 = load float, float addrspace(3)* %198, align 4
  %200 = add i32 %188, 0
  %201 = mul i32 %200, 3
  %202 = add i32 2, %201
  %203 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %202
  %204 = load float, float addrspace(3)* %203, align 4
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = fmul fast float %206, %194
  %208 = fmul fast float %206, %199
  %209 = fmul fast float %206, %204
  %210 = add i32 %188, 192
  %211 = mul i32 %210, 3
  %212 = add i32 0, %211
  %213 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %212
  %214 = load float, float addrspace(3)* %213, align 4
  %215 = add i32 %188, 192
  %216 = mul i32 %215, 3
  %217 = add i32 1, %216
  %218 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4
  %220 = add i32 %188, 192
  %221 = mul i32 %220, 3
  %222 = add i32 2, %221
  %223 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %222
  %224 = load float, float addrspace(3)* %223, align 4
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = fmul fast float %226, %214
  %228 = fmul fast float %226, %219
  %229 = fmul fast float %226, %224
  %230 = add i32 %189, 0
  %231 = mul i32 %230, 3
  %232 = add i32 0, %231
  %233 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %232
  %234 = load float, float addrspace(3)* %233, align 4
  %235 = add i32 %189, 0
  %236 = mul i32 %235, 3
  %237 = add i32 1, %236
  %238 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %237
  %239 = load float, float addrspace(3)* %238, align 4
  %240 = add i32 %189, 0
  %241 = mul i32 %240, 3
  %242 = add i32 2, %241
  %243 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %242
  %244 = load float, float addrspace(3)* %243, align 4
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fmul fast float %246, %234
  %248 = fmul fast float %246, %239
  %249 = fmul fast float %246, %244
  %250 = add i32 %189, 192
  %251 = mul i32 %250, 3
  %252 = add i32 0, %251
  %253 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %252
  %254 = load float, float addrspace(3)* %253, align 4
  %255 = add i32 %189, 192
  %256 = mul i32 %255, 3
  %257 = add i32 1, %256
  %258 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %257
  %259 = load float, float addrspace(3)* %258, align 4
  %260 = add i32 %189, 192
  %261 = mul i32 %260, 3
  %262 = add i32 2, %261
  %263 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %262
  %264 = load float, float addrspace(3)* %263, align 4
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = fmul fast float %266, %254
  %268 = fmul fast float %266, %259
  %269 = fmul fast float %266, %264
  %270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.i32 %270, 0
  %272 = add i32 %271, 1
  %273 = icmp ugt i32 %272, 1
  br i1 %273, label %274, label %470

; <label>:274                                     ; preds = %187
  br label %275

; <label>:275                                     ; preds = %275, %274
  %276 = phi float [ %338, %275 ], [ %207, %274 ]
  %277 = phi float [ %341, %275 ], [ %208, %274 ]
  %278 = phi float [ %344, %275 ], [ %209, %274 ]
  %279 = phi float [ %377, %275 ], [ %227, %274 ]
  %280 = phi float [ %380, %275 ], [ %228, %274 ]
  %281 = phi float [ %383, %275 ], [ %229, %274 ]
  %282 = phi float [ %418, %275 ], [ %247, %274 ]
  %283 = phi float [ %421, %275 ], [ %248, %274 ]
  %284 = phi float [ %424, %275 ], [ %249, %274 ]
  %285 = phi float [ %457, %275 ], [ %267, %274 ]
  %286 = phi float [ %460, %275 ], [ %268, %274 ]
  %287 = phi float [ %463, %275 ], [ %269, %274 ]
  %288 = phi i32 [ %464, %275 ], [ 1, %274 ]
  %289 = add i32 %288, -1
  %290 = lshr i32 %289, 2
  %291 = and i32 %289, 3
  %292 = add nuw nsw i32 %290, 3
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 %292)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %297 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %298 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 0
  store float %294, float* %298, align 4
  %299 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 1
  store float %295, float* %299, align 4
  %300 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 2
  store float %296, float* %300, align 4
  %301 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 3
  store float %297, float* %301, align 4
  %302 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 %291
  %303 = load float, float* %302, align 4, !tbaa !18
  %304 = add i32 %288, %188
  %305 = add i32 %304, 0
  %306 = mul i32 %305, 3
  %307 = add i32 0, %306
  %308 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %307
  %309 = load float, float addrspace(3)* %308, align 4
  %310 = add i32 %304, 0
  %311 = mul i32 %310, 3
  %312 = add i32 1, %311
  %313 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %312
  %314 = load float, float addrspace(3)* %313, align 4
  %315 = add i32 %304, 0
  %316 = mul i32 %315, 3
  %317 = add i32 2, %316
  %318 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %317
  %319 = load float, float addrspace(3)* %318, align 4
  %320 = sub i32 %188, %288
  %321 = add i32 %320, 0
  %322 = mul i32 %321, 3
  %323 = add i32 0, %322
  %324 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %323
  %325 = load float, float addrspace(3)* %324, align 4
  %326 = add i32 %320, 0
  %327 = mul i32 %326, 3
  %328 = add i32 1, %327
  %329 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %328
  %330 = load float, float addrspace(3)* %329, align 4
  %331 = add i32 %320, 0
  %332 = mul i32 %331, 3
  %333 = add i32 2, %332
  %334 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %333
  %335 = load float, float addrspace(3)* %334, align 4
  %336 = fadd fast float %325, %309
  %337 = fmul fast float %336, %303
  %338 = fadd fast float %337, %276
  %339 = fadd fast float %330, %314
  %340 = fmul fast float %339, %303
  %341 = fadd fast float %340, %277
  %342 = fadd fast float %335, %319
  %343 = fmul fast float %342, %303
  %344 = fadd fast float %343, %278
  %345 = add i32 %304, 192
  %346 = mul i32 %345, 3
  %347 = add i32 0, %346
  %348 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %347
  %349 = load float, float addrspace(3)* %348, align 4
  %350 = add i32 %304, 192
  %351 = mul i32 %350, 3
  %352 = add i32 1, %351
  %353 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %352
  %354 = load float, float addrspace(3)* %353, align 4
  %355 = add i32 %304, 192
  %356 = mul i32 %355, 3
  %357 = add i32 2, %356
  %358 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %357
  %359 = load float, float addrspace(3)* %358, align 4
  %360 = add i32 %320, 192
  %361 = mul i32 %360, 3
  %362 = add i32 0, %361
  %363 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %362
  %364 = load float, float addrspace(3)* %363, align 4
  %365 = add i32 %320, 192
  %366 = mul i32 %365, 3
  %367 = add i32 1, %366
  %368 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %367
  %369 = load float, float addrspace(3)* %368, align 4
  %370 = add i32 %320, 192
  %371 = mul i32 %370, 3
  %372 = add i32 2, %371
  %373 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %372
  %374 = load float, float addrspace(3)* %373, align 4
  %375 = fadd fast float %364, %349
  %376 = fmul fast float %375, %303
  %377 = fadd fast float %376, %279
  %378 = fadd fast float %369, %354
  %379 = fmul fast float %378, %303
  %380 = fadd fast float %379, %280
  %381 = fadd fast float %374, %359
  %382 = fmul fast float %381, %303
  %383 = fadd fast float %382, %281
  %384 = add i32 %288, %189
  %385 = add i32 %384, 0
  %386 = mul i32 %385, 3
  %387 = add i32 0, %386
  %388 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %387
  %389 = load float, float addrspace(3)* %388, align 4
  %390 = add i32 %384, 0
  %391 = mul i32 %390, 3
  %392 = add i32 1, %391
  %393 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %392
  %394 = load float, float addrspace(3)* %393, align 4
  %395 = add i32 %384, 0
  %396 = mul i32 %395, 3
  %397 = add i32 2, %396
  %398 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %397
  %399 = load float, float addrspace(3)* %398, align 4
  %400 = sub i32 %189, %288
  %401 = add i32 %400, 0
  %402 = mul i32 %401, 3
  %403 = add i32 0, %402
  %404 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %403
  %405 = load float, float addrspace(3)* %404, align 4
  %406 = add i32 %400, 0
  %407 = mul i32 %406, 3
  %408 = add i32 1, %407
  %409 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %408
  %410 = load float, float addrspace(3)* %409, align 4
  %411 = add i32 %400, 0
  %412 = mul i32 %411, 3
  %413 = add i32 2, %412
  %414 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %413
  %415 = load float, float addrspace(3)* %414, align 4
  %416 = fadd fast float %405, %389
  %417 = fmul fast float %416, %303
  %418 = fadd fast float %417, %282
  %419 = fadd fast float %410, %394
  %420 = fmul fast float %419, %303
  %421 = fadd fast float %420, %283
  %422 = fadd fast float %415, %399
  %423 = fmul fast float %422, %303
  %424 = fadd fast float %423, %284
  %425 = add i32 %384, 192
  %426 = mul i32 %425, 3
  %427 = add i32 0, %426
  %428 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %427
  %429 = load float, float addrspace(3)* %428, align 4
  %430 = add i32 %384, 192
  %431 = mul i32 %430, 3
  %432 = add i32 1, %431
  %433 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %432
  %434 = load float, float addrspace(3)* %433, align 4
  %435 = add i32 %384, 192
  %436 = mul i32 %435, 3
  %437 = add i32 2, %436
  %438 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %437
  %439 = load float, float addrspace(3)* %438, align 4
  %440 = add i32 %400, 192
  %441 = mul i32 %440, 3
  %442 = add i32 0, %441
  %443 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %442
  %444 = load float, float addrspace(3)* %443, align 4
  %445 = add i32 %400, 192
  %446 = mul i32 %445, 3
  %447 = add i32 1, %446
  %448 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %447
  %449 = load float, float addrspace(3)* %448, align 4
  %450 = add i32 %400, 192
  %451 = mul i32 %450, 3
  %452 = add i32 2, %451
  %453 = getelementptr [1152 x float], [1152 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0MA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %452
  %454 = load float, float addrspace(3)* %453, align 4
  %455 = fadd fast float %444, %429
  %456 = fmul fast float %455, %303
  %457 = fadd fast float %456, %285
  %458 = fadd fast float %449, %434
  %459 = fmul fast float %458, %303
  %460 = fadd fast float %459, %286
  %461 = fadd fast float %454, %439
  %462 = fmul fast float %461, %303
  %463 = fadd fast float %462, %287
  %464 = add i32 %288, 1
  %465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.i32 %465, 0
  %467 = add i32 %466, 1
  %468 = icmp ult i32 %464, %467
  br i1 %468, label %275, label %469

; <label>:469                                     ; preds = %275
  br label %470

; <label>:470                                     ; preds = %469, %187
  %471 = phi float [ %207, %187 ], [ %338, %469 ]
  %472 = phi float [ %208, %187 ], [ %341, %469 ]
  %473 = phi float [ %209, %187 ], [ %344, %469 ]
  %474 = phi float [ %227, %187 ], [ %377, %469 ]
  %475 = phi float [ %228, %187 ], [ %380, %469 ]
  %476 = phi float [ %229, %187 ], [ %383, %469 ]
  %477 = phi float [ %247, %187 ], [ %418, %469 ]
  %478 = phi float [ %248, %187 ], [ %421, %469 ]
  %479 = phi float [ %249, %187 ], [ %424, %469 ]
  %480 = phi float [ %267, %187 ], [ %457, %469 ]
  %481 = phi float [ %268, %187 ], [ %460, %469 ]
  %482 = phi float [ %269, %187 ], [ %463, %469 ]
  %483 = add i32 %12, %7
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %483, i32 undef, float %471, float %472, float %473, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %484 = or i32 %14, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %484, i32 %483, i32 undef, float %474, float %475, float %476, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %485 = add i32 %483, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %485, i32 undef, float %477, float %478, float %479, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %484, i32 %485, i32 undef, float %480, float %481, float %482, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

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
!11 = !{i32 0, %BlurFiltersGaussianConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 560, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!14 = !{void ()* @cs_gaussian_blur_filter_v, !"cs_gaussian_blur_filter_v", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 1, i32 64, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}

