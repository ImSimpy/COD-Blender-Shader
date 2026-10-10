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
; shader hash: c6a23367ab8de4899d05442a1f5df3e5
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

@"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [960 x float] undef, align 4

define void @cs_gaussian_blur_filter_h() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = alloca [4 x float], align 4
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %11 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %12 = shl i32 %8, 7
  %13 = shl i32 %7, 1
  %14 = add nsw i32 %12, %13
  %15 = shl i32 %6, 1
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
  %47 = add i32 %13, 16
  %48 = mul i32 %47, 2
  %49 = add i32 0, %48
  %50 = mul i32 %49, 3
  %51 = add i32 0, %50
  %52 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %51
  store float %36, float addrspace(3)* %52, align 4
  %53 = mul i32 %47, 2
  %54 = add i32 0, %53
  %55 = mul i32 %54, 3
  %56 = add i32 1, %55
  %57 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %56
  store float %41, float addrspace(3)* %57, align 4
  %58 = mul i32 %47, 2
  %59 = add i32 0, %58
  %60 = mul i32 %59, 3
  %61 = add i32 2, %60
  %62 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %61
  store float %46, float addrspace(3)* %62, align 4
  %63 = add i32 %13, 17
  %64 = mul i32 %63, 2
  %65 = add i32 0, %64
  %66 = mul i32 %65, 3
  %67 = add i32 0, %66
  %68 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %67
  store float %35, float addrspace(3)* %68, align 4
  %69 = mul i32 %63, 2
  %70 = add i32 0, %69
  %71 = mul i32 %70, 3
  %72 = add i32 1, %71
  %73 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %72
  store float %40, float addrspace(3)* %73, align 4
  %74 = mul i32 %63, 2
  %75 = add i32 0, %74
  %76 = mul i32 %75, 3
  %77 = add i32 2, %76
  %78 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %77
  store float %45, float addrspace(3)* %78, align 4
  %79 = mul i32 %47, 2
  %80 = add i32 1, %79
  %81 = mul i32 %80, 3
  %82 = add i32 0, %81
  %83 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %82
  store float %33, float addrspace(3)* %83, align 4
  %84 = mul i32 %47, 2
  %85 = add i32 1, %84
  %86 = mul i32 %85, 3
  %87 = add i32 1, %86
  %88 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %87
  store float %38, float addrspace(3)* %88, align 4
  %89 = mul i32 %47, 2
  %90 = add i32 1, %89
  %91 = mul i32 %90, 3
  %92 = add i32 2, %91
  %93 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %92
  store float %43, float addrspace(3)* %93, align 4
  %94 = mul i32 %63, 2
  %95 = add i32 1, %94
  %96 = mul i32 %95, 3
  %97 = add i32 0, %96
  %98 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %97
  store float %34, float addrspace(3)* %98, align 4
  %99 = mul i32 %63, 2
  %100 = add i32 1, %99
  %101 = mul i32 %100, 3
  %102 = add i32 1, %101
  %103 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %102
  store float %39, float addrspace(3)* %103, align 4
  %104 = mul i32 %63, 2
  %105 = add i32 1, %104
  %106 = mul i32 %105, 3
  %107 = add i32 2, %106
  %108 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %107
  store float %44, float addrspace(3)* %108, align 4
  %109 = icmp ult i32 %7, 16
  br i1 %109, label %110, label %211, !dx.controlflow.hints !17

; <label>:110                                     ; preds = %0
  %111 = add i32 %13, -16
  %112 = icmp sgt i32 %111, -1
  %113 = add i32 %13, 112
  %114 = select i1 %112, i32 %113, i32 %111
  %115 = add nsw i32 %114, %12
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = fadd fast float %117, -1.000000e+00
  %119 = fptosi float %118 to i32
  %120 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %121 = fadd fast float %120, -1.000000e+00
  %122 = fptosi float %121 to i32
  %123 = call i32 @dx.op.binary.i32(i32 37, i32 %115, i32 0)  ; IMax(a,b)
  %124 = call i32 @dx.op.binary.i32(i32 38, i32 %123, i32 %119)  ; IMin(a,b)
  %125 = call i32 @dx.op.binary.i32(i32 38, i32 %23, i32 %122)  ; IMin(a,b)
  %126 = uitofp i32 %124 to float
  %127 = uitofp i32 %125 to float
  %128 = fadd fast float %126, 5.000000e-01
  %129 = fmul fast float %128, %10
  %130 = fadd fast float %127, 5.000000e-01
  %131 = fmul fast float %130, %11
  %132 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %129, float %131, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = extractvalue %dx.types.ResRet.f32 %132, 3
  %137 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %129, float %131, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.ResRet.f32 %137, 1
  %140 = extractvalue %dx.types.ResRet.f32 %137, 2
  %141 = extractvalue %dx.types.ResRet.f32 %137, 3
  %142 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %129, float %131, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = extractvalue %dx.types.ResRet.f32 %142, 2
  %146 = extractvalue %dx.types.ResRet.f32 %142, 3
  %147 = icmp ugt i32 %13, 15
  %148 = add i32 %13, 128
  %149 = select i1 %147, i32 %148, i32 %13
  %150 = mul i32 %149, 2
  %151 = add i32 0, %150
  %152 = mul i32 %151, 3
  %153 = add i32 0, %152
  %154 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %153
  store float %136, float addrspace(3)* %154, align 4
  %155 = mul i32 %149, 2
  %156 = add i32 0, %155
  %157 = mul i32 %156, 3
  %158 = add i32 1, %157
  %159 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %158
  store float %141, float addrspace(3)* %159, align 4
  %160 = mul i32 %149, 2
  %161 = add i32 0, %160
  %162 = mul i32 %161, 3
  %163 = add i32 2, %162
  %164 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %163
  store float %146, float addrspace(3)* %164, align 4
  %165 = or i32 %149, 1
  %166 = mul i32 %165, 2
  %167 = add i32 0, %166
  %168 = mul i32 %167, 3
  %169 = add i32 0, %168
  %170 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %169
  store float %135, float addrspace(3)* %170, align 4
  %171 = mul i32 %165, 2
  %172 = add i32 0, %171
  %173 = mul i32 %172, 3
  %174 = add i32 1, %173
  %175 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %174
  store float %140, float addrspace(3)* %175, align 4
  %176 = mul i32 %165, 2
  %177 = add i32 0, %176
  %178 = mul i32 %177, 3
  %179 = add i32 2, %178
  %180 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %179
  store float %145, float addrspace(3)* %180, align 4
  %181 = mul i32 %149, 2
  %182 = add i32 1, %181
  %183 = mul i32 %182, 3
  %184 = add i32 0, %183
  %185 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %184
  store float %133, float addrspace(3)* %185, align 4
  %186 = mul i32 %149, 2
  %187 = add i32 1, %186
  %188 = mul i32 %187, 3
  %189 = add i32 1, %188
  %190 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %189
  store float %138, float addrspace(3)* %190, align 4
  %191 = mul i32 %149, 2
  %192 = add i32 1, %191
  %193 = mul i32 %192, 3
  %194 = add i32 2, %193
  %195 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %194
  store float %143, float addrspace(3)* %195, align 4
  %196 = mul i32 %165, 2
  %197 = add i32 1, %196
  %198 = mul i32 %197, 3
  %199 = add i32 0, %198
  %200 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %199
  store float %134, float addrspace(3)* %200, align 4
  %201 = mul i32 %165, 2
  %202 = add i32 1, %201
  %203 = mul i32 %202, 3
  %204 = add i32 1, %203
  %205 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %204
  store float %139, float addrspace(3)* %205, align 4
  %206 = mul i32 %165, 2
  %207 = add i32 1, %206
  %208 = mul i32 %207, 3
  %209 = add i32 2, %208
  %210 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %209
  store float %144, float addrspace(3)* %210, align 4
  br label %211

; <label>:211                                     ; preds = %110, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %212 = add i32 %7, 16
  %213 = add i32 %7, 80
  %214 = mul i32 %212, 2
  %215 = add i32 0, %214
  %216 = mul i32 %215, 3
  %217 = add i32 0, %216
  %218 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4
  %220 = mul i32 %212, 2
  %221 = add i32 0, %220
  %222 = mul i32 %221, 3
  %223 = add i32 1, %222
  %224 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %223
  %225 = load float, float addrspace(3)* %224, align 4
  %226 = mul i32 %212, 2
  %227 = add i32 0, %226
  %228 = mul i32 %227, 3
  %229 = add i32 2, %228
  %230 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = fmul fast float %233, %219
  %235 = fmul fast float %233, %225
  %236 = fmul fast float %233, %231
  %237 = mul i32 %212, 2
  %238 = add i32 1, %237
  %239 = mul i32 %238, 3
  %240 = add i32 0, %239
  %241 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %240
  %242 = load float, float addrspace(3)* %241, align 4
  %243 = mul i32 %212, 2
  %244 = add i32 1, %243
  %245 = mul i32 %244, 3
  %246 = add i32 1, %245
  %247 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %246
  %248 = load float, float addrspace(3)* %247, align 4
  %249 = mul i32 %212, 2
  %250 = add i32 1, %249
  %251 = mul i32 %250, 3
  %252 = add i32 2, %251
  %253 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %252
  %254 = load float, float addrspace(3)* %253, align 4
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = fmul fast float %256, %242
  %258 = fmul fast float %256, %248
  %259 = fmul fast float %256, %254
  %260 = mul i32 %213, 2
  %261 = add i32 0, %260
  %262 = mul i32 %261, 3
  %263 = add i32 0, %262
  %264 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %263
  %265 = load float, float addrspace(3)* %264, align 4
  %266 = mul i32 %213, 2
  %267 = add i32 0, %266
  %268 = mul i32 %267, 3
  %269 = add i32 1, %268
  %270 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %269
  %271 = load float, float addrspace(3)* %270, align 4
  %272 = mul i32 %213, 2
  %273 = add i32 0, %272
  %274 = mul i32 %273, 3
  %275 = add i32 2, %274
  %276 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %275
  %277 = load float, float addrspace(3)* %276, align 4
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = fmul fast float %279, %265
  %281 = fmul fast float %279, %271
  %282 = fmul fast float %279, %277
  %283 = mul i32 %213, 2
  %284 = add i32 1, %283
  %285 = mul i32 %284, 3
  %286 = add i32 0, %285
  %287 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %286
  %288 = load float, float addrspace(3)* %287, align 4
  %289 = mul i32 %213, 2
  %290 = add i32 1, %289
  %291 = mul i32 %290, 3
  %292 = add i32 1, %291
  %293 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %292
  %294 = load float, float addrspace(3)* %293, align 4
  %295 = mul i32 %213, 2
  %296 = add i32 1, %295
  %297 = mul i32 %296, 3
  %298 = add i32 2, %297
  %299 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %298
  %300 = load float, float addrspace(3)* %299, align 4
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = fmul fast float %302, %288
  %304 = fmul fast float %302, %294
  %305 = fmul fast float %302, %300
  %306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.i32 %306, 0
  %308 = add i32 %307, 1
  %309 = icmp ugt i32 %308, 1
  br i1 %309, label %310, label %530

; <label>:310                                     ; preds = %211
  br label %311

; <label>:311                                     ; preds = %311, %310
  %312 = phi float [ %380, %311 ], [ %234, %310 ]
  %313 = phi float [ %383, %311 ], [ %235, %310 ]
  %314 = phi float [ %386, %311 ], [ %236, %310 ]
  %315 = phi float [ %425, %311 ], [ %257, %310 ]
  %316 = phi float [ %428, %311 ], [ %258, %310 ]
  %317 = phi float [ %431, %311 ], [ %259, %310 ]
  %318 = phi float [ %472, %311 ], [ %280, %310 ]
  %319 = phi float [ %475, %311 ], [ %281, %310 ]
  %320 = phi float [ %478, %311 ], [ %282, %310 ]
  %321 = phi float [ %517, %311 ], [ %303, %310 ]
  %322 = phi float [ %520, %311 ], [ %304, %310 ]
  %323 = phi float [ %523, %311 ], [ %305, %310 ]
  %324 = phi i32 [ %524, %311 ], [ 1, %310 ]
  %325 = add i32 %324, -1
  %326 = lshr i32 %325, 2
  %327 = and i32 %325, 3
  %328 = add nuw nsw i32 %326, 3
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 %328)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %334 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 0
  store float %330, float* %334, align 4
  %335 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 1
  store float %331, float* %335, align 4
  %336 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 2
  store float %332, float* %336, align 4
  %337 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 3
  store float %333, float* %337, align 4
  %338 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 %327
  %339 = load float, float* %338, align 4, !tbaa !18
  %340 = add i32 %324, %212
  %341 = mul i32 %340, 2
  %342 = add i32 0, %341
  %343 = mul i32 %342, 3
  %344 = add i32 0, %343
  %345 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %344
  %346 = load float, float addrspace(3)* %345, align 4
  %347 = mul i32 %340, 2
  %348 = add i32 0, %347
  %349 = mul i32 %348, 3
  %350 = add i32 1, %349
  %351 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %350
  %352 = load float, float addrspace(3)* %351, align 4
  %353 = mul i32 %340, 2
  %354 = add i32 0, %353
  %355 = mul i32 %354, 3
  %356 = add i32 2, %355
  %357 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %356
  %358 = load float, float addrspace(3)* %357, align 4
  %359 = sub i32 %212, %324
  %360 = mul i32 %359, 2
  %361 = add i32 0, %360
  %362 = mul i32 %361, 3
  %363 = add i32 0, %362
  %364 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %363
  %365 = load float, float addrspace(3)* %364, align 4
  %366 = mul i32 %359, 2
  %367 = add i32 0, %366
  %368 = mul i32 %367, 3
  %369 = add i32 1, %368
  %370 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %369
  %371 = load float, float addrspace(3)* %370, align 4
  %372 = mul i32 %359, 2
  %373 = add i32 0, %372
  %374 = mul i32 %373, 3
  %375 = add i32 2, %374
  %376 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %375
  %377 = load float, float addrspace(3)* %376, align 4
  %378 = fadd fast float %365, %346
  %379 = fmul fast float %378, %339
  %380 = fadd fast float %379, %312
  %381 = fadd fast float %371, %352
  %382 = fmul fast float %381, %339
  %383 = fadd fast float %382, %313
  %384 = fadd fast float %377, %358
  %385 = fmul fast float %384, %339
  %386 = fadd fast float %385, %314
  %387 = mul i32 %340, 2
  %388 = add i32 1, %387
  %389 = mul i32 %388, 3
  %390 = add i32 0, %389
  %391 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %390
  %392 = load float, float addrspace(3)* %391, align 4
  %393 = mul i32 %340, 2
  %394 = add i32 1, %393
  %395 = mul i32 %394, 3
  %396 = add i32 1, %395
  %397 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %396
  %398 = load float, float addrspace(3)* %397, align 4
  %399 = mul i32 %340, 2
  %400 = add i32 1, %399
  %401 = mul i32 %400, 3
  %402 = add i32 2, %401
  %403 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %402
  %404 = load float, float addrspace(3)* %403, align 4
  %405 = mul i32 %359, 2
  %406 = add i32 1, %405
  %407 = mul i32 %406, 3
  %408 = add i32 0, %407
  %409 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %408
  %410 = load float, float addrspace(3)* %409, align 4
  %411 = mul i32 %359, 2
  %412 = add i32 1, %411
  %413 = mul i32 %412, 3
  %414 = add i32 1, %413
  %415 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %414
  %416 = load float, float addrspace(3)* %415, align 4
  %417 = mul i32 %359, 2
  %418 = add i32 1, %417
  %419 = mul i32 %418, 3
  %420 = add i32 2, %419
  %421 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %420
  %422 = load float, float addrspace(3)* %421, align 4
  %423 = fadd fast float %410, %392
  %424 = fmul fast float %423, %339
  %425 = fadd fast float %424, %315
  %426 = fadd fast float %416, %398
  %427 = fmul fast float %426, %339
  %428 = fadd fast float %427, %316
  %429 = fadd fast float %422, %404
  %430 = fmul fast float %429, %339
  %431 = fadd fast float %430, %317
  %432 = add i32 %324, %213
  %433 = mul i32 %432, 2
  %434 = add i32 0, %433
  %435 = mul i32 %434, 3
  %436 = add i32 0, %435
  %437 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %436
  %438 = load float, float addrspace(3)* %437, align 4
  %439 = mul i32 %432, 2
  %440 = add i32 0, %439
  %441 = mul i32 %440, 3
  %442 = add i32 1, %441
  %443 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %442
  %444 = load float, float addrspace(3)* %443, align 4
  %445 = mul i32 %432, 2
  %446 = add i32 0, %445
  %447 = mul i32 %446, 3
  %448 = add i32 2, %447
  %449 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %448
  %450 = load float, float addrspace(3)* %449, align 4
  %451 = sub i32 %213, %324
  %452 = mul i32 %451, 2
  %453 = add i32 0, %452
  %454 = mul i32 %453, 3
  %455 = add i32 0, %454
  %456 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %455
  %457 = load float, float addrspace(3)* %456, align 4
  %458 = mul i32 %451, 2
  %459 = add i32 0, %458
  %460 = mul i32 %459, 3
  %461 = add i32 1, %460
  %462 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %461
  %463 = load float, float addrspace(3)* %462, align 4
  %464 = mul i32 %451, 2
  %465 = add i32 0, %464
  %466 = mul i32 %465, 3
  %467 = add i32 2, %466
  %468 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %467
  %469 = load float, float addrspace(3)* %468, align 4
  %470 = fadd fast float %457, %438
  %471 = fmul fast float %470, %339
  %472 = fadd fast float %471, %318
  %473 = fadd fast float %463, %444
  %474 = fmul fast float %473, %339
  %475 = fadd fast float %474, %319
  %476 = fadd fast float %469, %450
  %477 = fmul fast float %476, %339
  %478 = fadd fast float %477, %320
  %479 = mul i32 %432, 2
  %480 = add i32 1, %479
  %481 = mul i32 %480, 3
  %482 = add i32 0, %481
  %483 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %482
  %484 = load float, float addrspace(3)* %483, align 4
  %485 = mul i32 %432, 2
  %486 = add i32 1, %485
  %487 = mul i32 %486, 3
  %488 = add i32 1, %487
  %489 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %488
  %490 = load float, float addrspace(3)* %489, align 4
  %491 = mul i32 %432, 2
  %492 = add i32 1, %491
  %493 = mul i32 %492, 3
  %494 = add i32 2, %493
  %495 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %494
  %496 = load float, float addrspace(3)* %495, align 4
  %497 = mul i32 %451, 2
  %498 = add i32 1, %497
  %499 = mul i32 %498, 3
  %500 = add i32 0, %499
  %501 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %500
  %502 = load float, float addrspace(3)* %501, align 4
  %503 = mul i32 %451, 2
  %504 = add i32 1, %503
  %505 = mul i32 %504, 3
  %506 = add i32 1, %505
  %507 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %506
  %508 = load float, float addrspace(3)* %507, align 4
  %509 = mul i32 %451, 2
  %510 = add i32 1, %509
  %511 = mul i32 %510, 3
  %512 = add i32 2, %511
  %513 = getelementptr [960 x float], [960 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %512
  %514 = load float, float addrspace(3)* %513, align 4
  %515 = fadd fast float %502, %484
  %516 = fmul fast float %515, %339
  %517 = fadd fast float %516, %321
  %518 = fadd fast float %508, %490
  %519 = fmul fast float %518, %339
  %520 = fadd fast float %519, %322
  %521 = fadd fast float %514, %496
  %522 = fmul fast float %521, %339
  %523 = fadd fast float %522, %323
  %524 = add i32 %324, 1
  %525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.i32 %525, 0
  %527 = add i32 %526, 1
  %528 = icmp ult i32 %524, %527
  br i1 %528, label %311, label %529

; <label>:529                                     ; preds = %311
  br label %530

; <label>:530                                     ; preds = %529, %211
  %531 = phi float [ %234, %211 ], [ %380, %529 ]
  %532 = phi float [ %235, %211 ], [ %383, %529 ]
  %533 = phi float [ %236, %211 ], [ %386, %529 ]
  %534 = phi float [ %257, %211 ], [ %425, %529 ]
  %535 = phi float [ %258, %211 ], [ %428, %529 ]
  %536 = phi float [ %259, %211 ], [ %431, %529 ]
  %537 = phi float [ %280, %211 ], [ %472, %529 ]
  %538 = phi float [ %281, %211 ], [ %475, %529 ]
  %539 = phi float [ %282, %211 ], [ %478, %529 ]
  %540 = phi float [ %303, %211 ], [ %517, %529 ]
  %541 = phi float [ %304, %211 ], [ %520, %529 ]
  %542 = phi float [ %305, %211 ], [ %523, %529 ]
  %543 = add i32 %12, %7
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %543, i32 %15, i32 undef, float %531, float %532, float %533, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %544 = or i32 %15, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %543, i32 %544, i32 undef, float %534, float %535, float %536, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %545 = add i32 %543, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %545, i32 %15, i32 undef, float %537, float %538, float %539, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %545, i32 %544, i32 undef, float %540, float %541, float %542, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!14 = !{void ()* @cs_gaussian_blur_filter_h, !"cs_gaussian_blur_filter_h", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}

