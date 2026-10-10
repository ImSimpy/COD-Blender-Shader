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
; shader hash: 7cd8429262c5a2bb098dc8e7c7f7a3b4
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

@"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [1536 x float] undef, align 4

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
  %47 = add i32 %13, 64
  %48 = add i32 %47, 0
  %49 = mul i32 %48, 3
  %50 = add i32 0, %49
  %51 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %50
  store float %36, float addrspace(3)* %51, align 4
  %52 = add i32 %47, 0
  %53 = mul i32 %52, 3
  %54 = add i32 1, %53
  %55 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %54
  store float %41, float addrspace(3)* %55, align 4
  %56 = add i32 %47, 0
  %57 = mul i32 %56, 3
  %58 = add i32 2, %57
  %59 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %58
  store float %46, float addrspace(3)* %59, align 4
  %60 = add i32 %13, 65
  %61 = add i32 %60, 0
  %62 = mul i32 %61, 3
  %63 = add i32 0, %62
  %64 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %63
  store float %33, float addrspace(3)* %64, align 4
  %65 = add i32 %60, 0
  %66 = mul i32 %65, 3
  %67 = add i32 1, %66
  %68 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %67
  store float %38, float addrspace(3)* %68, align 4
  %69 = add i32 %60, 0
  %70 = mul i32 %69, 3
  %71 = add i32 2, %70
  %72 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %71
  store float %43, float addrspace(3)* %72, align 4
  %73 = add i32 %47, 256
  %74 = mul i32 %73, 3
  %75 = add i32 0, %74
  %76 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %75
  store float %35, float addrspace(3)* %76, align 4
  %77 = add i32 %47, 256
  %78 = mul i32 %77, 3
  %79 = add i32 1, %78
  %80 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %79
  store float %40, float addrspace(3)* %80, align 4
  %81 = add i32 %47, 256
  %82 = mul i32 %81, 3
  %83 = add i32 2, %82
  %84 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %83
  store float %45, float addrspace(3)* %84, align 4
  %85 = add i32 %60, 256
  %86 = mul i32 %85, 3
  %87 = add i32 0, %86
  %88 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %87
  store float %34, float addrspace(3)* %88, align 4
  %89 = add i32 %60, 256
  %90 = mul i32 %89, 3
  %91 = add i32 1, %90
  %92 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %91
  store float %39, float addrspace(3)* %92, align 4
  %93 = add i32 %60, 256
  %94 = mul i32 %93, 3
  %95 = add i32 2, %94
  %96 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %95
  store float %44, float addrspace(3)* %96, align 4
  %97 = icmp ult i32 %7, 64
  br i1 %97, label %98, label %186, !dx.controlflow.hints !17

; <label>:98                                      ; preds = %0
  %99 = add i32 %13, -64
  %100 = icmp sgt i32 %99, -1
  %101 = select i1 %100, i32 %47, i32 %99
  %102 = add nsw i32 %101, %12
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fadd fast float %104, -1.000000e+00
  %106 = fptosi float %105 to i32
  %107 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %108 = fadd fast float %107, -1.000000e+00
  %109 = fptosi float %108 to i32
  %110 = call i32 @dx.op.binary.i32(i32 37, i32 %102, i32 0)  ; IMax(a,b)
  %111 = call i32 @dx.op.binary.i32(i32 38, i32 %22, i32 %106)  ; IMin(a,b)
  %112 = call i32 @dx.op.binary.i32(i32 38, i32 %110, i32 %109)  ; IMin(a,b)
  %113 = uitofp i32 %111 to float
  %114 = uitofp i32 %112 to float
  %115 = fadd fast float %113, 5.000000e-01
  %116 = fmul fast float %115, %10
  %117 = fadd fast float %114, 5.000000e-01
  %118 = fmul fast float %117, %11
  %119 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %116, float %118, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = extractvalue %dx.types.ResRet.f32 %119, 2
  %123 = extractvalue %dx.types.ResRet.f32 %119, 3
  %124 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %116, float %118, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = extractvalue %dx.types.ResRet.f32 %124, 1
  %127 = extractvalue %dx.types.ResRet.f32 %124, 2
  %128 = extractvalue %dx.types.ResRet.f32 %124, 3
  %129 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %116, float %118, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = extractvalue %dx.types.ResRet.f32 %129, 1
  %132 = extractvalue %dx.types.ResRet.f32 %129, 2
  %133 = extractvalue %dx.types.ResRet.f32 %129, 3
  %134 = icmp ugt i32 %13, 63
  %135 = add i32 %13, 128
  %136 = select i1 %134, i32 %135, i32 %13
  %137 = add i32 %136, 0
  %138 = mul i32 %137, 3
  %139 = add i32 0, %138
  %140 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %139
  store float %123, float addrspace(3)* %140, align 4
  %141 = add i32 %136, 0
  %142 = mul i32 %141, 3
  %143 = add i32 1, %142
  %144 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %143
  store float %128, float addrspace(3)* %144, align 4
  %145 = add i32 %136, 0
  %146 = mul i32 %145, 3
  %147 = add i32 2, %146
  %148 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %147
  store float %133, float addrspace(3)* %148, align 4
  %149 = or i32 %136, 1
  %150 = add i32 %149, 0
  %151 = mul i32 %150, 3
  %152 = add i32 0, %151
  %153 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %152
  store float %120, float addrspace(3)* %153, align 4
  %154 = add i32 %149, 0
  %155 = mul i32 %154, 3
  %156 = add i32 1, %155
  %157 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %156
  store float %125, float addrspace(3)* %157, align 4
  %158 = add i32 %149, 0
  %159 = mul i32 %158, 3
  %160 = add i32 2, %159
  %161 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %160
  store float %130, float addrspace(3)* %161, align 4
  %162 = add i32 %136, 256
  %163 = mul i32 %162, 3
  %164 = add i32 0, %163
  %165 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %164
  store float %122, float addrspace(3)* %165, align 4
  %166 = add i32 %136, 256
  %167 = mul i32 %166, 3
  %168 = add i32 1, %167
  %169 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %168
  store float %127, float addrspace(3)* %169, align 4
  %170 = add i32 %136, 256
  %171 = mul i32 %170, 3
  %172 = add i32 2, %171
  %173 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %172
  store float %132, float addrspace(3)* %173, align 4
  %174 = add i32 %149, 256
  %175 = mul i32 %174, 3
  %176 = add i32 0, %175
  %177 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %176
  store float %121, float addrspace(3)* %177, align 4
  %178 = add i32 %149, 256
  %179 = mul i32 %178, 3
  %180 = add i32 1, %179
  %181 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %180
  store float %126, float addrspace(3)* %181, align 4
  %182 = add i32 %149, 256
  %183 = mul i32 %182, 3
  %184 = add i32 2, %183
  %185 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %184
  store float %131, float addrspace(3)* %185, align 4
  br label %186

; <label>:186                                     ; preds = %98, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %187 = add i32 %7, 64
  %188 = add i32 %7, 128
  %189 = add i32 %187, 0
  %190 = mul i32 %189, 3
  %191 = add i32 0, %190
  %192 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %191
  %193 = load float, float addrspace(3)* %192, align 4
  %194 = add i32 %187, 0
  %195 = mul i32 %194, 3
  %196 = add i32 1, %195
  %197 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %196
  %198 = load float, float addrspace(3)* %197, align 4
  %199 = add i32 %187, 0
  %200 = mul i32 %199, 3
  %201 = add i32 2, %200
  %202 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %201
  %203 = load float, float addrspace(3)* %202, align 4
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fmul fast float %205, %193
  %207 = fmul fast float %205, %198
  %208 = fmul fast float %205, %203
  %209 = add i32 %187, 256
  %210 = mul i32 %209, 3
  %211 = add i32 0, %210
  %212 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %211
  %213 = load float, float addrspace(3)* %212, align 4
  %214 = add i32 %187, 256
  %215 = mul i32 %214, 3
  %216 = add i32 1, %215
  %217 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %216
  %218 = load float, float addrspace(3)* %217, align 4
  %219 = add i32 %187, 256
  %220 = mul i32 %219, 3
  %221 = add i32 2, %220
  %222 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %221
  %223 = load float, float addrspace(3)* %222, align 4
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = fmul fast float %225, %213
  %227 = fmul fast float %225, %218
  %228 = fmul fast float %225, %223
  %229 = add i32 %188, 0
  %230 = mul i32 %229, 3
  %231 = add i32 0, %230
  %232 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %231
  %233 = load float, float addrspace(3)* %232, align 4
  %234 = add i32 %188, 0
  %235 = mul i32 %234, 3
  %236 = add i32 1, %235
  %237 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %236
  %238 = load float, float addrspace(3)* %237, align 4
  %239 = add i32 %188, 0
  %240 = mul i32 %239, 3
  %241 = add i32 2, %240
  %242 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = fmul fast float %245, %233
  %247 = fmul fast float %245, %238
  %248 = fmul fast float %245, %243
  %249 = add i32 %188, 256
  %250 = mul i32 %249, 3
  %251 = add i32 0, %250
  %252 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4
  %254 = add i32 %188, 256
  %255 = mul i32 %254, 3
  %256 = add i32 1, %255
  %257 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %256
  %258 = load float, float addrspace(3)* %257, align 4
  %259 = add i32 %188, 256
  %260 = mul i32 %259, 3
  %261 = add i32 2, %260
  %262 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %261
  %263 = load float, float addrspace(3)* %262, align 4
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = fmul fast float %265, %253
  %267 = fmul fast float %265, %258
  %268 = fmul fast float %265, %263
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 0
  %271 = add i32 %270, 1
  %272 = icmp ugt i32 %271, 1
  br i1 %272, label %273, label %469

; <label>:273                                     ; preds = %186
  br label %274

; <label>:274                                     ; preds = %274, %273
  %275 = phi float [ %337, %274 ], [ %206, %273 ]
  %276 = phi float [ %340, %274 ], [ %207, %273 ]
  %277 = phi float [ %343, %274 ], [ %208, %273 ]
  %278 = phi float [ %376, %274 ], [ %226, %273 ]
  %279 = phi float [ %379, %274 ], [ %227, %273 ]
  %280 = phi float [ %382, %274 ], [ %228, %273 ]
  %281 = phi float [ %417, %274 ], [ %246, %273 ]
  %282 = phi float [ %420, %274 ], [ %247, %273 ]
  %283 = phi float [ %423, %274 ], [ %248, %273 ]
  %284 = phi float [ %456, %274 ], [ %266, %273 ]
  %285 = phi float [ %459, %274 ], [ %267, %273 ]
  %286 = phi float [ %462, %274 ], [ %268, %273 ]
  %287 = phi i32 [ %463, %274 ], [ 1, %273 ]
  %288 = add i32 %287, -1
  %289 = lshr i32 %288, 2
  %290 = and i32 %288, 3
  %291 = add nuw nsw i32 %289, 3
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 %291)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %297 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 0
  store float %293, float* %297, align 4
  %298 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 1
  store float %294, float* %298, align 4
  %299 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 2
  store float %295, float* %299, align 4
  %300 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 3
  store float %296, float* %300, align 4
  %301 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 %290
  %302 = load float, float* %301, align 4, !tbaa !18
  %303 = add i32 %287, %187
  %304 = add i32 %303, 0
  %305 = mul i32 %304, 3
  %306 = add i32 0, %305
  %307 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %306
  %308 = load float, float addrspace(3)* %307, align 4
  %309 = add i32 %303, 0
  %310 = mul i32 %309, 3
  %311 = add i32 1, %310
  %312 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %311
  %313 = load float, float addrspace(3)* %312, align 4
  %314 = add i32 %303, 0
  %315 = mul i32 %314, 3
  %316 = add i32 2, %315
  %317 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %316
  %318 = load float, float addrspace(3)* %317, align 4
  %319 = sub i32 %187, %287
  %320 = add i32 %319, 0
  %321 = mul i32 %320, 3
  %322 = add i32 0, %321
  %323 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %322
  %324 = load float, float addrspace(3)* %323, align 4
  %325 = add i32 %319, 0
  %326 = mul i32 %325, 3
  %327 = add i32 1, %326
  %328 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %327
  %329 = load float, float addrspace(3)* %328, align 4
  %330 = add i32 %319, 0
  %331 = mul i32 %330, 3
  %332 = add i32 2, %331
  %333 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %332
  %334 = load float, float addrspace(3)* %333, align 4
  %335 = fadd fast float %324, %308
  %336 = fmul fast float %335, %302
  %337 = fadd fast float %336, %275
  %338 = fadd fast float %329, %313
  %339 = fmul fast float %338, %302
  %340 = fadd fast float %339, %276
  %341 = fadd fast float %334, %318
  %342 = fmul fast float %341, %302
  %343 = fadd fast float %342, %277
  %344 = add i32 %303, 256
  %345 = mul i32 %344, 3
  %346 = add i32 0, %345
  %347 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %346
  %348 = load float, float addrspace(3)* %347, align 4
  %349 = add i32 %303, 256
  %350 = mul i32 %349, 3
  %351 = add i32 1, %350
  %352 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %351
  %353 = load float, float addrspace(3)* %352, align 4
  %354 = add i32 %303, 256
  %355 = mul i32 %354, 3
  %356 = add i32 2, %355
  %357 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %356
  %358 = load float, float addrspace(3)* %357, align 4
  %359 = add i32 %319, 256
  %360 = mul i32 %359, 3
  %361 = add i32 0, %360
  %362 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %361
  %363 = load float, float addrspace(3)* %362, align 4
  %364 = add i32 %319, 256
  %365 = mul i32 %364, 3
  %366 = add i32 1, %365
  %367 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %366
  %368 = load float, float addrspace(3)* %367, align 4
  %369 = add i32 %319, 256
  %370 = mul i32 %369, 3
  %371 = add i32 2, %370
  %372 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %371
  %373 = load float, float addrspace(3)* %372, align 4
  %374 = fadd fast float %363, %348
  %375 = fmul fast float %374, %302
  %376 = fadd fast float %375, %278
  %377 = fadd fast float %368, %353
  %378 = fmul fast float %377, %302
  %379 = fadd fast float %378, %279
  %380 = fadd fast float %373, %358
  %381 = fmul fast float %380, %302
  %382 = fadd fast float %381, %280
  %383 = add i32 %287, %188
  %384 = add i32 %383, 0
  %385 = mul i32 %384, 3
  %386 = add i32 0, %385
  %387 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %386
  %388 = load float, float addrspace(3)* %387, align 4
  %389 = add i32 %383, 0
  %390 = mul i32 %389, 3
  %391 = add i32 1, %390
  %392 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %391
  %393 = load float, float addrspace(3)* %392, align 4
  %394 = add i32 %383, 0
  %395 = mul i32 %394, 3
  %396 = add i32 2, %395
  %397 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %396
  %398 = load float, float addrspace(3)* %397, align 4
  %399 = sub i32 %188, %287
  %400 = add i32 %399, 0
  %401 = mul i32 %400, 3
  %402 = add i32 0, %401
  %403 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %402
  %404 = load float, float addrspace(3)* %403, align 4
  %405 = add i32 %399, 0
  %406 = mul i32 %405, 3
  %407 = add i32 1, %406
  %408 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %407
  %409 = load float, float addrspace(3)* %408, align 4
  %410 = add i32 %399, 0
  %411 = mul i32 %410, 3
  %412 = add i32 2, %411
  %413 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %412
  %414 = load float, float addrspace(3)* %413, align 4
  %415 = fadd fast float %404, %388
  %416 = fmul fast float %415, %302
  %417 = fadd fast float %416, %281
  %418 = fadd fast float %409, %393
  %419 = fmul fast float %418, %302
  %420 = fadd fast float %419, %282
  %421 = fadd fast float %414, %398
  %422 = fmul fast float %421, %302
  %423 = fadd fast float %422, %283
  %424 = add i32 %383, 256
  %425 = mul i32 %424, 3
  %426 = add i32 0, %425
  %427 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %426
  %428 = load float, float addrspace(3)* %427, align 4
  %429 = add i32 %383, 256
  %430 = mul i32 %429, 3
  %431 = add i32 1, %430
  %432 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %431
  %433 = load float, float addrspace(3)* %432, align 4
  %434 = add i32 %383, 256
  %435 = mul i32 %434, 3
  %436 = add i32 2, %435
  %437 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %436
  %438 = load float, float addrspace(3)* %437, align 4
  %439 = add i32 %399, 256
  %440 = mul i32 %439, 3
  %441 = add i32 0, %440
  %442 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %441
  %443 = load float, float addrspace(3)* %442, align 4
  %444 = add i32 %399, 256
  %445 = mul i32 %444, 3
  %446 = add i32 1, %445
  %447 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %446
  %448 = load float, float addrspace(3)* %447, align 4
  %449 = add i32 %399, 256
  %450 = mul i32 %449, 3
  %451 = add i32 2, %450
  %452 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY0BAA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %451
  %453 = load float, float addrspace(3)* %452, align 4
  %454 = fadd fast float %443, %428
  %455 = fmul fast float %454, %302
  %456 = fadd fast float %455, %284
  %457 = fadd fast float %448, %433
  %458 = fmul fast float %457, %302
  %459 = fadd fast float %458, %285
  %460 = fadd fast float %453, %438
  %461 = fmul fast float %460, %302
  %462 = fadd fast float %461, %286
  %463 = add i32 %287, 1
  %464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.i32 %464, 0
  %466 = add i32 %465, 1
  %467 = icmp ult i32 %463, %466
  br i1 %467, label %274, label %468

; <label>:468                                     ; preds = %274
  br label %469

; <label>:469                                     ; preds = %468, %186
  %470 = phi float [ %206, %186 ], [ %337, %468 ]
  %471 = phi float [ %207, %186 ], [ %340, %468 ]
  %472 = phi float [ %208, %186 ], [ %343, %468 ]
  %473 = phi float [ %226, %186 ], [ %376, %468 ]
  %474 = phi float [ %227, %186 ], [ %379, %468 ]
  %475 = phi float [ %228, %186 ], [ %382, %468 ]
  %476 = phi float [ %246, %186 ], [ %417, %468 ]
  %477 = phi float [ %247, %186 ], [ %420, %468 ]
  %478 = phi float [ %248, %186 ], [ %423, %468 ]
  %479 = phi float [ %266, %186 ], [ %456, %468 ]
  %480 = phi float [ %267, %186 ], [ %459, %468 ]
  %481 = phi float [ %268, %186 ], [ %462, %468 ]
  %482 = add i32 %12, %7
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %482, i32 undef, float %470, float %471, float %472, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %483 = or i32 %14, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %483, i32 %482, i32 undef, float %473, float %474, float %475, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %484 = add i32 %482, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %484, i32 undef, float %476, float %477, float %478, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %483, i32 %484, i32 undef, float %479, float %480, float %481, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

