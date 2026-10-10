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
; shader hash: 7daa50ed9d1b4333dc9eb5f653ed9fba
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

@"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [2304 x float] undef, align 4

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
  %47 = add i32 %13, 128
  %48 = add i32 %47, 0
  %49 = mul i32 %48, 3
  %50 = add i32 0, %49
  %51 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %50
  store float %36, float addrspace(3)* %51, align 4
  %52 = add i32 %47, 0
  %53 = mul i32 %52, 3
  %54 = add i32 1, %53
  %55 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %54
  store float %41, float addrspace(3)* %55, align 4
  %56 = add i32 %47, 0
  %57 = mul i32 %56, 3
  %58 = add i32 2, %57
  %59 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %58
  store float %46, float addrspace(3)* %59, align 4
  %60 = add i32 %13, 129
  %61 = add i32 %60, 0
  %62 = mul i32 %61, 3
  %63 = add i32 0, %62
  %64 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %63
  store float %33, float addrspace(3)* %64, align 4
  %65 = add i32 %60, 0
  %66 = mul i32 %65, 3
  %67 = add i32 1, %66
  %68 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %67
  store float %38, float addrspace(3)* %68, align 4
  %69 = add i32 %60, 0
  %70 = mul i32 %69, 3
  %71 = add i32 2, %70
  %72 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %71
  store float %43, float addrspace(3)* %72, align 4
  %73 = add i32 %47, 384
  %74 = mul i32 %73, 3
  %75 = add i32 0, %74
  %76 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %75
  store float %35, float addrspace(3)* %76, align 4
  %77 = add i32 %47, 384
  %78 = mul i32 %77, 3
  %79 = add i32 1, %78
  %80 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %79
  store float %40, float addrspace(3)* %80, align 4
  %81 = add i32 %47, 384
  %82 = mul i32 %81, 3
  %83 = add i32 2, %82
  %84 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %83
  store float %45, float addrspace(3)* %84, align 4
  %85 = add i32 %60, 384
  %86 = mul i32 %85, 3
  %87 = add i32 0, %86
  %88 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %87
  store float %34, float addrspace(3)* %88, align 4
  %89 = add i32 %60, 384
  %90 = mul i32 %89, 3
  %91 = add i32 1, %90
  %92 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %91
  store float %39, float addrspace(3)* %92, align 4
  %93 = add i32 %60, 384
  %94 = mul i32 %93, 3
  %95 = add i32 2, %94
  %96 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %95
  store float %44, float addrspace(3)* %96, align 4
  %97 = add i32 %13, -128
  %98 = icmp sgt i32 %97, -1
  %99 = select i1 %98, i32 %13, i32 %97
  %100 = add nsw i32 %99, %12
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fadd fast float %102, -1.000000e+00
  %104 = fptosi float %103 to i32
  %105 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %106 = fadd fast float %105, -1.000000e+00
  %107 = fptosi float %106 to i32
  %108 = call i32 @dx.op.binary.i32(i32 37, i32 %100, i32 0)  ; IMax(a,b)
  %109 = call i32 @dx.op.binary.i32(i32 38, i32 %22, i32 %104)  ; IMin(a,b)
  %110 = call i32 @dx.op.binary.i32(i32 38, i32 %108, i32 %107)  ; IMin(a,b)
  %111 = uitofp i32 %109 to float
  %112 = uitofp i32 %110 to float
  %113 = fadd fast float %111, 5.000000e-01
  %114 = fmul fast float %113, %10
  %115 = fadd fast float %112, 5.000000e-01
  %116 = fmul fast float %115, %11
  %117 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %114, float %116, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  %121 = extractvalue %dx.types.ResRet.f32 %117, 3
  %122 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %114, float %116, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = extractvalue %dx.types.ResRet.f32 %122, 1
  %125 = extractvalue %dx.types.ResRet.f32 %122, 2
  %126 = extractvalue %dx.types.ResRet.f32 %122, 3
  %127 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %114, float %116, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = extractvalue %dx.types.ResRet.f32 %127, 2
  %131 = extractvalue %dx.types.ResRet.f32 %127, 3
  %132 = icmp ugt i32 %13, 127
  %133 = select i1 %132, i32 %47, i32 %13
  %134 = add i32 %133, 0
  %135 = mul i32 %134, 3
  %136 = add i32 0, %135
  %137 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %136
  store float %121, float addrspace(3)* %137, align 4
  %138 = add i32 %133, 0
  %139 = mul i32 %138, 3
  %140 = add i32 1, %139
  %141 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %140
  store float %126, float addrspace(3)* %141, align 4
  %142 = add i32 %133, 0
  %143 = mul i32 %142, 3
  %144 = add i32 2, %143
  %145 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %144
  store float %131, float addrspace(3)* %145, align 4
  %146 = or i32 %133, 1
  %147 = add i32 %146, 0
  %148 = mul i32 %147, 3
  %149 = add i32 0, %148
  %150 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %149
  store float %118, float addrspace(3)* %150, align 4
  %151 = add i32 %146, 0
  %152 = mul i32 %151, 3
  %153 = add i32 1, %152
  %154 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %153
  store float %123, float addrspace(3)* %154, align 4
  %155 = add i32 %146, 0
  %156 = mul i32 %155, 3
  %157 = add i32 2, %156
  %158 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %157
  store float %128, float addrspace(3)* %158, align 4
  %159 = add i32 %133, 384
  %160 = mul i32 %159, 3
  %161 = add i32 0, %160
  %162 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %161
  store float %120, float addrspace(3)* %162, align 4
  %163 = add i32 %133, 384
  %164 = mul i32 %163, 3
  %165 = add i32 1, %164
  %166 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %165
  store float %125, float addrspace(3)* %166, align 4
  %167 = add i32 %133, 384
  %168 = mul i32 %167, 3
  %169 = add i32 2, %168
  %170 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %169
  store float %130, float addrspace(3)* %170, align 4
  %171 = add i32 %146, 384
  %172 = mul i32 %171, 3
  %173 = add i32 0, %172
  %174 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %173
  store float %119, float addrspace(3)* %174, align 4
  %175 = add i32 %146, 384
  %176 = mul i32 %175, 3
  %177 = add i32 1, %176
  %178 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %177
  store float %124, float addrspace(3)* %178, align 4
  %179 = add i32 %146, 384
  %180 = mul i32 %179, 3
  %181 = add i32 2, %180
  %182 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %181
  store float %129, float addrspace(3)* %182, align 4
  %183 = add i32 %7, 64
  %184 = icmp ult i32 %183, 128
  br i1 %184, label %185, label %274, !dx.controlflow.hints !17

; <label>:185                                     ; preds = %0
  %186 = shl i32 %183, 1
  %187 = add i32 %186, -128
  %188 = icmp sgt i32 %187, -1
  %189 = select i1 %188, i32 %186, i32 %187
  %190 = add nsw i32 %189, %12
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = fadd fast float %192, -1.000000e+00
  %194 = fptosi float %193 to i32
  %195 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %196 = fadd fast float %195, -1.000000e+00
  %197 = fptosi float %196 to i32
  %198 = call i32 @dx.op.binary.i32(i32 37, i32 %190, i32 0)  ; IMax(a,b)
  %199 = call i32 @dx.op.binary.i32(i32 38, i32 %22, i32 %194)  ; IMin(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 38, i32 %198, i32 %197)  ; IMin(a,b)
  %201 = uitofp i32 %199 to float
  %202 = uitofp i32 %200 to float
  %203 = fadd fast float %201, 5.000000e-01
  %204 = fmul fast float %203, %10
  %205 = fadd fast float %202, 5.000000e-01
  %206 = fmul fast float %205, %11
  %207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 1
  %210 = extractvalue %dx.types.ResRet.f32 %207, 2
  %211 = extractvalue %dx.types.ResRet.f32 %207, 3
  %212 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 1
  %215 = extractvalue %dx.types.ResRet.f32 %212, 2
  %216 = extractvalue %dx.types.ResRet.f32 %212, 3
  %217 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = extractvalue %dx.types.ResRet.f32 %217, 1
  %220 = extractvalue %dx.types.ResRet.f32 %217, 2
  %221 = extractvalue %dx.types.ResRet.f32 %217, 3
  %222 = icmp ugt i32 %186, 127
  %223 = add i32 %186, 128
  %224 = select i1 %222, i32 %223, i32 %186
  %225 = add i32 %224, 0
  %226 = mul i32 %225, 3
  %227 = add i32 0, %226
  %228 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %227
  store float %211, float addrspace(3)* %228, align 4
  %229 = add i32 %224, 0
  %230 = mul i32 %229, 3
  %231 = add i32 1, %230
  %232 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %231
  store float %216, float addrspace(3)* %232, align 4
  %233 = add i32 %224, 0
  %234 = mul i32 %233, 3
  %235 = add i32 2, %234
  %236 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %235
  store float %221, float addrspace(3)* %236, align 4
  %237 = or i32 %224, 1
  %238 = add i32 %237, 0
  %239 = mul i32 %238, 3
  %240 = add i32 0, %239
  %241 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %240
  store float %208, float addrspace(3)* %241, align 4
  %242 = add i32 %237, 0
  %243 = mul i32 %242, 3
  %244 = add i32 1, %243
  %245 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %244
  store float %213, float addrspace(3)* %245, align 4
  %246 = add i32 %237, 0
  %247 = mul i32 %246, 3
  %248 = add i32 2, %247
  %249 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %248
  store float %218, float addrspace(3)* %249, align 4
  %250 = add i32 %224, 384
  %251 = mul i32 %250, 3
  %252 = add i32 0, %251
  %253 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %252
  store float %210, float addrspace(3)* %253, align 4
  %254 = add i32 %224, 384
  %255 = mul i32 %254, 3
  %256 = add i32 1, %255
  %257 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %256
  store float %215, float addrspace(3)* %257, align 4
  %258 = add i32 %224, 384
  %259 = mul i32 %258, 3
  %260 = add i32 2, %259
  %261 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %260
  store float %220, float addrspace(3)* %261, align 4
  %262 = add i32 %237, 384
  %263 = mul i32 %262, 3
  %264 = add i32 0, %263
  %265 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %264
  store float %209, float addrspace(3)* %265, align 4
  %266 = add i32 %237, 384
  %267 = mul i32 %266, 3
  %268 = add i32 1, %267
  %269 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %268
  store float %214, float addrspace(3)* %269, align 4
  %270 = add i32 %237, 384
  %271 = mul i32 %270, 3
  %272 = add i32 2, %271
  %273 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %272
  store float %219, float addrspace(3)* %273, align 4
  br label %274

; <label>:274                                     ; preds = %185, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = add i32 %7, 128
  %276 = add i32 %7, 192
  %277 = add i32 %275, 0
  %278 = mul i32 %277, 3
  %279 = add i32 0, %278
  %280 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %279
  %281 = load float, float addrspace(3)* %280, align 4
  %282 = add i32 %275, 0
  %283 = mul i32 %282, 3
  %284 = add i32 1, %283
  %285 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %284
  %286 = load float, float addrspace(3)* %285, align 4
  %287 = add i32 %275, 0
  %288 = mul i32 %287, 3
  %289 = add i32 2, %288
  %290 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %289
  %291 = load float, float addrspace(3)* %290, align 4
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = fmul fast float %293, %281
  %295 = fmul fast float %293, %286
  %296 = fmul fast float %293, %291
  %297 = add i32 %275, 384
  %298 = mul i32 %297, 3
  %299 = add i32 0, %298
  %300 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %299
  %301 = load float, float addrspace(3)* %300, align 4
  %302 = add i32 %275, 384
  %303 = mul i32 %302, 3
  %304 = add i32 1, %303
  %305 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %304
  %306 = load float, float addrspace(3)* %305, align 4
  %307 = add i32 %275, 384
  %308 = mul i32 %307, 3
  %309 = add i32 2, %308
  %310 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %309
  %311 = load float, float addrspace(3)* %310, align 4
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = fmul fast float %313, %301
  %315 = fmul fast float %313, %306
  %316 = fmul fast float %313, %311
  %317 = add i32 %276, 0
  %318 = mul i32 %317, 3
  %319 = add i32 0, %318
  %320 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %319
  %321 = load float, float addrspace(3)* %320, align 4
  %322 = add i32 %276, 0
  %323 = mul i32 %322, 3
  %324 = add i32 1, %323
  %325 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %324
  %326 = load float, float addrspace(3)* %325, align 4
  %327 = add i32 %276, 0
  %328 = mul i32 %327, 3
  %329 = add i32 2, %328
  %330 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %329
  %331 = load float, float addrspace(3)* %330, align 4
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = fmul fast float %333, %321
  %335 = fmul fast float %333, %326
  %336 = fmul fast float %333, %331
  %337 = add i32 %276, 384
  %338 = mul i32 %337, 3
  %339 = add i32 0, %338
  %340 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %339
  %341 = load float, float addrspace(3)* %340, align 4
  %342 = add i32 %276, 384
  %343 = mul i32 %342, 3
  %344 = add i32 1, %343
  %345 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %344
  %346 = load float, float addrspace(3)* %345, align 4
  %347 = add i32 %276, 384
  %348 = mul i32 %347, 3
  %349 = add i32 2, %348
  %350 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %349
  %351 = load float, float addrspace(3)* %350, align 4
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = fmul fast float %353, %341
  %355 = fmul fast float %353, %346
  %356 = fmul fast float %353, %351
  %357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.i32 %357, 0
  %359 = add i32 %358, 1
  %360 = icmp ugt i32 %359, 1
  br i1 %360, label %361, label %557

; <label>:361                                     ; preds = %274
  br label %362

; <label>:362                                     ; preds = %362, %361
  %363 = phi float [ %425, %362 ], [ %294, %361 ]
  %364 = phi float [ %428, %362 ], [ %295, %361 ]
  %365 = phi float [ %431, %362 ], [ %296, %361 ]
  %366 = phi float [ %464, %362 ], [ %314, %361 ]
  %367 = phi float [ %467, %362 ], [ %315, %361 ]
  %368 = phi float [ %470, %362 ], [ %316, %361 ]
  %369 = phi float [ %505, %362 ], [ %334, %361 ]
  %370 = phi float [ %508, %362 ], [ %335, %361 ]
  %371 = phi float [ %511, %362 ], [ %336, %361 ]
  %372 = phi float [ %544, %362 ], [ %354, %361 ]
  %373 = phi float [ %547, %362 ], [ %355, %361 ]
  %374 = phi float [ %550, %362 ], [ %356, %361 ]
  %375 = phi i32 [ %551, %362 ], [ 1, %361 ]
  %376 = add i32 %375, -1
  %377 = lshr i32 %376, 2
  %378 = and i32 %376, 3
  %379 = add nuw nsw i32 %377, 3
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 %379)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = extractvalue %dx.types.CBufRet.f32 %380, 3
  %385 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 0
  store float %381, float* %385, align 4
  %386 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 1
  store float %382, float* %386, align 4
  %387 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 2
  store float %383, float* %387, align 4
  %388 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 3
  store float %384, float* %388, align 4
  %389 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 %378
  %390 = load float, float* %389, align 4, !tbaa !18
  %391 = add i32 %375, %275
  %392 = add i32 %391, 0
  %393 = mul i32 %392, 3
  %394 = add i32 0, %393
  %395 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %394
  %396 = load float, float addrspace(3)* %395, align 4
  %397 = add i32 %391, 0
  %398 = mul i32 %397, 3
  %399 = add i32 1, %398
  %400 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %399
  %401 = load float, float addrspace(3)* %400, align 4
  %402 = add i32 %391, 0
  %403 = mul i32 %402, 3
  %404 = add i32 2, %403
  %405 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %404
  %406 = load float, float addrspace(3)* %405, align 4
  %407 = sub i32 %275, %375
  %408 = add i32 %407, 0
  %409 = mul i32 %408, 3
  %410 = add i32 0, %409
  %411 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %410
  %412 = load float, float addrspace(3)* %411, align 4
  %413 = add i32 %407, 0
  %414 = mul i32 %413, 3
  %415 = add i32 1, %414
  %416 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %415
  %417 = load float, float addrspace(3)* %416, align 4
  %418 = add i32 %407, 0
  %419 = mul i32 %418, 3
  %420 = add i32 2, %419
  %421 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %420
  %422 = load float, float addrspace(3)* %421, align 4
  %423 = fadd fast float %412, %396
  %424 = fmul fast float %423, %390
  %425 = fadd fast float %424, %363
  %426 = fadd fast float %417, %401
  %427 = fmul fast float %426, %390
  %428 = fadd fast float %427, %364
  %429 = fadd fast float %422, %406
  %430 = fmul fast float %429, %390
  %431 = fadd fast float %430, %365
  %432 = add i32 %391, 384
  %433 = mul i32 %432, 3
  %434 = add i32 0, %433
  %435 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %434
  %436 = load float, float addrspace(3)* %435, align 4
  %437 = add i32 %391, 384
  %438 = mul i32 %437, 3
  %439 = add i32 1, %438
  %440 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %439
  %441 = load float, float addrspace(3)* %440, align 4
  %442 = add i32 %391, 384
  %443 = mul i32 %442, 3
  %444 = add i32 2, %443
  %445 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %444
  %446 = load float, float addrspace(3)* %445, align 4
  %447 = add i32 %407, 384
  %448 = mul i32 %447, 3
  %449 = add i32 0, %448
  %450 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %449
  %451 = load float, float addrspace(3)* %450, align 4
  %452 = add i32 %407, 384
  %453 = mul i32 %452, 3
  %454 = add i32 1, %453
  %455 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %454
  %456 = load float, float addrspace(3)* %455, align 4
  %457 = add i32 %407, 384
  %458 = mul i32 %457, 3
  %459 = add i32 2, %458
  %460 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %459
  %461 = load float, float addrspace(3)* %460, align 4
  %462 = fadd fast float %451, %436
  %463 = fmul fast float %462, %390
  %464 = fadd fast float %463, %366
  %465 = fadd fast float %456, %441
  %466 = fmul fast float %465, %390
  %467 = fadd fast float %466, %367
  %468 = fadd fast float %461, %446
  %469 = fmul fast float %468, %390
  %470 = fadd fast float %469, %368
  %471 = add i32 %375, %276
  %472 = add i32 %471, 0
  %473 = mul i32 %472, 3
  %474 = add i32 0, %473
  %475 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %474
  %476 = load float, float addrspace(3)* %475, align 4
  %477 = add i32 %471, 0
  %478 = mul i32 %477, 3
  %479 = add i32 1, %478
  %480 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %479
  %481 = load float, float addrspace(3)* %480, align 4
  %482 = add i32 %471, 0
  %483 = mul i32 %482, 3
  %484 = add i32 2, %483
  %485 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %484
  %486 = load float, float addrspace(3)* %485, align 4
  %487 = sub i32 %276, %375
  %488 = add i32 %487, 0
  %489 = mul i32 %488, 3
  %490 = add i32 0, %489
  %491 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %490
  %492 = load float, float addrspace(3)* %491, align 4
  %493 = add i32 %487, 0
  %494 = mul i32 %493, 3
  %495 = add i32 1, %494
  %496 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %495
  %497 = load float, float addrspace(3)* %496, align 4
  %498 = add i32 %487, 0
  %499 = mul i32 %498, 3
  %500 = add i32 2, %499
  %501 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %500
  %502 = load float, float addrspace(3)* %501, align 4
  %503 = fadd fast float %492, %476
  %504 = fmul fast float %503, %390
  %505 = fadd fast float %504, %369
  %506 = fadd fast float %497, %481
  %507 = fmul fast float %506, %390
  %508 = fadd fast float %507, %370
  %509 = fadd fast float %502, %486
  %510 = fmul fast float %509, %390
  %511 = fadd fast float %510, %371
  %512 = add i32 %471, 384
  %513 = mul i32 %512, 3
  %514 = add i32 0, %513
  %515 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %514
  %516 = load float, float addrspace(3)* %515, align 4
  %517 = add i32 %471, 384
  %518 = mul i32 %517, 3
  %519 = add i32 1, %518
  %520 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %519
  %521 = load float, float addrspace(3)* %520, align 4
  %522 = add i32 %471, 384
  %523 = mul i32 %522, 3
  %524 = add i32 2, %523
  %525 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %524
  %526 = load float, float addrspace(3)* %525, align 4
  %527 = add i32 %487, 384
  %528 = mul i32 %527, 3
  %529 = add i32 0, %528
  %530 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %529
  %531 = load float, float addrspace(3)* %530, align 4
  %532 = add i32 %487, 384
  %533 = mul i32 %532, 3
  %534 = add i32 1, %533
  %535 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %534
  %536 = load float, float addrspace(3)* %535, align 4
  %537 = add i32 %487, 384
  %538 = mul i32 %537, 3
  %539 = add i32 2, %538
  %540 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BIA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %539
  %541 = load float, float addrspace(3)* %540, align 4
  %542 = fadd fast float %531, %516
  %543 = fmul fast float %542, %390
  %544 = fadd fast float %543, %372
  %545 = fadd fast float %536, %521
  %546 = fmul fast float %545, %390
  %547 = fadd fast float %546, %373
  %548 = fadd fast float %541, %526
  %549 = fmul fast float %548, %390
  %550 = fadd fast float %549, %374
  %551 = add i32 %375, 1
  %552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.i32 %552, 0
  %554 = add i32 %553, 1
  %555 = icmp ult i32 %551, %554
  br i1 %555, label %362, label %556

; <label>:556                                     ; preds = %362
  br label %557

; <label>:557                                     ; preds = %556, %274
  %558 = phi float [ %294, %274 ], [ %425, %556 ]
  %559 = phi float [ %295, %274 ], [ %428, %556 ]
  %560 = phi float [ %296, %274 ], [ %431, %556 ]
  %561 = phi float [ %314, %274 ], [ %464, %556 ]
  %562 = phi float [ %315, %274 ], [ %467, %556 ]
  %563 = phi float [ %316, %274 ], [ %470, %556 ]
  %564 = phi float [ %334, %274 ], [ %505, %556 ]
  %565 = phi float [ %335, %274 ], [ %508, %556 ]
  %566 = phi float [ %336, %274 ], [ %511, %556 ]
  %567 = phi float [ %354, %274 ], [ %544, %556 ]
  %568 = phi float [ %355, %274 ], [ %547, %556 ]
  %569 = phi float [ %356, %274 ], [ %550, %556 ]
  %570 = add i32 %12, %7
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %570, i32 undef, float %558, float %559, float %560, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %571 = or i32 %14, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %571, i32 %570, i32 undef, float %561, float %562, float %563, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %572 = add i32 %570, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %572, i32 undef, float %564, float %565, float %566, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %571, i32 %572, i32 undef, float %567, float %568, float %569, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

