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
; shader hash: 890c4340056c699c232af0284f1c7929
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

@"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [2304 x float] undef, align 4

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
  %47 = add i32 %13, 128
  %48 = mul i32 %47, 2
  %49 = add i32 0, %48
  %50 = mul i32 %49, 3
  %51 = add i32 0, %50
  %52 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %51
  store float %36, float addrspace(3)* %52, align 4
  %53 = mul i32 %47, 2
  %54 = add i32 0, %53
  %55 = mul i32 %54, 3
  %56 = add i32 1, %55
  %57 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %56
  store float %41, float addrspace(3)* %57, align 4
  %58 = mul i32 %47, 2
  %59 = add i32 0, %58
  %60 = mul i32 %59, 3
  %61 = add i32 2, %60
  %62 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %61
  store float %46, float addrspace(3)* %62, align 4
  %63 = add i32 %13, 129
  %64 = mul i32 %63, 2
  %65 = add i32 0, %64
  %66 = mul i32 %65, 3
  %67 = add i32 0, %66
  %68 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %67
  store float %35, float addrspace(3)* %68, align 4
  %69 = mul i32 %63, 2
  %70 = add i32 0, %69
  %71 = mul i32 %70, 3
  %72 = add i32 1, %71
  %73 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %72
  store float %40, float addrspace(3)* %73, align 4
  %74 = mul i32 %63, 2
  %75 = add i32 0, %74
  %76 = mul i32 %75, 3
  %77 = add i32 2, %76
  %78 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %77
  store float %45, float addrspace(3)* %78, align 4
  %79 = mul i32 %47, 2
  %80 = add i32 1, %79
  %81 = mul i32 %80, 3
  %82 = add i32 0, %81
  %83 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %82
  store float %33, float addrspace(3)* %83, align 4
  %84 = mul i32 %47, 2
  %85 = add i32 1, %84
  %86 = mul i32 %85, 3
  %87 = add i32 1, %86
  %88 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %87
  store float %38, float addrspace(3)* %88, align 4
  %89 = mul i32 %47, 2
  %90 = add i32 1, %89
  %91 = mul i32 %90, 3
  %92 = add i32 2, %91
  %93 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %92
  store float %43, float addrspace(3)* %93, align 4
  %94 = mul i32 %63, 2
  %95 = add i32 1, %94
  %96 = mul i32 %95, 3
  %97 = add i32 0, %96
  %98 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %97
  store float %34, float addrspace(3)* %98, align 4
  %99 = mul i32 %63, 2
  %100 = add i32 1, %99
  %101 = mul i32 %100, 3
  %102 = add i32 1, %101
  %103 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %102
  store float %39, float addrspace(3)* %103, align 4
  %104 = mul i32 %63, 2
  %105 = add i32 1, %104
  %106 = mul i32 %105, 3
  %107 = add i32 2, %106
  %108 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %107
  store float %44, float addrspace(3)* %108, align 4
  %109 = add i32 %13, -128
  %110 = icmp sgt i32 %109, -1
  %111 = select i1 %110, i32 %13, i32 %109
  %112 = add nsw i32 %111, %12
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fadd fast float %114, -1.000000e+00
  %116 = fptosi float %115 to i32
  %117 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %118 = fadd fast float %117, -1.000000e+00
  %119 = fptosi float %118 to i32
  %120 = call i32 @dx.op.binary.i32(i32 37, i32 %112, i32 0)  ; IMax(a,b)
  %121 = call i32 @dx.op.binary.i32(i32 38, i32 %120, i32 %116)  ; IMin(a,b)
  %122 = call i32 @dx.op.binary.i32(i32 38, i32 %23, i32 %119)  ; IMin(a,b)
  %123 = uitofp i32 %121 to float
  %124 = uitofp i32 %122 to float
  %125 = fadd fast float %123, 5.000000e-01
  %126 = fmul fast float %125, %10
  %127 = fadd fast float %124, 5.000000e-01
  %128 = fmul fast float %127, %11
  %129 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %126, float %128, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = extractvalue %dx.types.ResRet.f32 %129, 1
  %132 = extractvalue %dx.types.ResRet.f32 %129, 2
  %133 = extractvalue %dx.types.ResRet.f32 %129, 3
  %134 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %126, float %128, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = extractvalue %dx.types.ResRet.f32 %134, 1
  %137 = extractvalue %dx.types.ResRet.f32 %134, 2
  %138 = extractvalue %dx.types.ResRet.f32 %134, 3
  %139 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %126, float %128, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = extractvalue %dx.types.ResRet.f32 %139, 2
  %143 = extractvalue %dx.types.ResRet.f32 %139, 3
  %144 = icmp ugt i32 %13, 127
  %145 = select i1 %144, i32 %47, i32 %13
  %146 = mul i32 %145, 2
  %147 = add i32 0, %146
  %148 = mul i32 %147, 3
  %149 = add i32 0, %148
  %150 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %149
  store float %133, float addrspace(3)* %150, align 4
  %151 = mul i32 %145, 2
  %152 = add i32 0, %151
  %153 = mul i32 %152, 3
  %154 = add i32 1, %153
  %155 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %154
  store float %138, float addrspace(3)* %155, align 4
  %156 = mul i32 %145, 2
  %157 = add i32 0, %156
  %158 = mul i32 %157, 3
  %159 = add i32 2, %158
  %160 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %159
  store float %143, float addrspace(3)* %160, align 4
  %161 = or i32 %145, 1
  %162 = mul i32 %161, 2
  %163 = add i32 0, %162
  %164 = mul i32 %163, 3
  %165 = add i32 0, %164
  %166 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %165
  store float %132, float addrspace(3)* %166, align 4
  %167 = mul i32 %161, 2
  %168 = add i32 0, %167
  %169 = mul i32 %168, 3
  %170 = add i32 1, %169
  %171 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %170
  store float %137, float addrspace(3)* %171, align 4
  %172 = mul i32 %161, 2
  %173 = add i32 0, %172
  %174 = mul i32 %173, 3
  %175 = add i32 2, %174
  %176 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %175
  store float %142, float addrspace(3)* %176, align 4
  %177 = mul i32 %145, 2
  %178 = add i32 1, %177
  %179 = mul i32 %178, 3
  %180 = add i32 0, %179
  %181 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %180
  store float %130, float addrspace(3)* %181, align 4
  %182 = mul i32 %145, 2
  %183 = add i32 1, %182
  %184 = mul i32 %183, 3
  %185 = add i32 1, %184
  %186 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %185
  store float %135, float addrspace(3)* %186, align 4
  %187 = mul i32 %145, 2
  %188 = add i32 1, %187
  %189 = mul i32 %188, 3
  %190 = add i32 2, %189
  %191 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %190
  store float %140, float addrspace(3)* %191, align 4
  %192 = mul i32 %161, 2
  %193 = add i32 1, %192
  %194 = mul i32 %193, 3
  %195 = add i32 0, %194
  %196 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %195
  store float %131, float addrspace(3)* %196, align 4
  %197 = mul i32 %161, 2
  %198 = add i32 1, %197
  %199 = mul i32 %198, 3
  %200 = add i32 1, %199
  %201 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %200
  store float %136, float addrspace(3)* %201, align 4
  %202 = mul i32 %161, 2
  %203 = add i32 1, %202
  %204 = mul i32 %203, 3
  %205 = add i32 2, %204
  %206 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %205
  store float %141, float addrspace(3)* %206, align 4
  %207 = add i32 %7, 64
  %208 = icmp ult i32 %207, 128
  br i1 %208, label %209, label %310, !dx.controlflow.hints !17

; <label>:209                                     ; preds = %0
  %210 = shl i32 %207, 1
  %211 = add i32 %210, -128
  %212 = icmp sgt i32 %211, -1
  %213 = select i1 %212, i32 %210, i32 %211
  %214 = add nsw i32 %213, %12
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = fadd fast float %216, -1.000000e+00
  %218 = fptosi float %217 to i32
  %219 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %220 = fadd fast float %219, -1.000000e+00
  %221 = fptosi float %220 to i32
  %222 = call i32 @dx.op.binary.i32(i32 37, i32 %214, i32 0)  ; IMax(a,b)
  %223 = call i32 @dx.op.binary.i32(i32 38, i32 %222, i32 %218)  ; IMin(a,b)
  %224 = call i32 @dx.op.binary.i32(i32 38, i32 %23, i32 %221)  ; IMin(a,b)
  %225 = uitofp i32 %223 to float
  %226 = uitofp i32 %224 to float
  %227 = fadd fast float %225, 5.000000e-01
  %228 = fmul fast float %227, %10
  %229 = fadd fast float %226, 5.000000e-01
  %230 = fmul fast float %229, %11
  %231 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %228, float %230, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = extractvalue %dx.types.ResRet.f32 %231, 2
  %235 = extractvalue %dx.types.ResRet.f32 %231, 3
  %236 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %228, float %230, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = extractvalue %dx.types.ResRet.f32 %236, 3
  %241 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %228, float %230, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = extractvalue %dx.types.ResRet.f32 %241, 2
  %245 = extractvalue %dx.types.ResRet.f32 %241, 3
  %246 = icmp ugt i32 %210, 127
  %247 = add i32 %210, 128
  %248 = select i1 %246, i32 %247, i32 %210
  %249 = mul i32 %248, 2
  %250 = add i32 0, %249
  %251 = mul i32 %250, 3
  %252 = add i32 0, %251
  %253 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %252
  store float %235, float addrspace(3)* %253, align 4
  %254 = mul i32 %248, 2
  %255 = add i32 0, %254
  %256 = mul i32 %255, 3
  %257 = add i32 1, %256
  %258 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %257
  store float %240, float addrspace(3)* %258, align 4
  %259 = mul i32 %248, 2
  %260 = add i32 0, %259
  %261 = mul i32 %260, 3
  %262 = add i32 2, %261
  %263 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %262
  store float %245, float addrspace(3)* %263, align 4
  %264 = or i32 %248, 1
  %265 = mul i32 %264, 2
  %266 = add i32 0, %265
  %267 = mul i32 %266, 3
  %268 = add i32 0, %267
  %269 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %268
  store float %234, float addrspace(3)* %269, align 4
  %270 = mul i32 %264, 2
  %271 = add i32 0, %270
  %272 = mul i32 %271, 3
  %273 = add i32 1, %272
  %274 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %273
  store float %239, float addrspace(3)* %274, align 4
  %275 = mul i32 %264, 2
  %276 = add i32 0, %275
  %277 = mul i32 %276, 3
  %278 = add i32 2, %277
  %279 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %278
  store float %244, float addrspace(3)* %279, align 4
  %280 = mul i32 %248, 2
  %281 = add i32 1, %280
  %282 = mul i32 %281, 3
  %283 = add i32 0, %282
  %284 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %283
  store float %232, float addrspace(3)* %284, align 4
  %285 = mul i32 %248, 2
  %286 = add i32 1, %285
  %287 = mul i32 %286, 3
  %288 = add i32 1, %287
  %289 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %288
  store float %237, float addrspace(3)* %289, align 4
  %290 = mul i32 %248, 2
  %291 = add i32 1, %290
  %292 = mul i32 %291, 3
  %293 = add i32 2, %292
  %294 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %293
  store float %242, float addrspace(3)* %294, align 4
  %295 = mul i32 %264, 2
  %296 = add i32 1, %295
  %297 = mul i32 %296, 3
  %298 = add i32 0, %297
  %299 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %298
  store float %233, float addrspace(3)* %299, align 4
  %300 = mul i32 %264, 2
  %301 = add i32 1, %300
  %302 = mul i32 %301, 3
  %303 = add i32 1, %302
  %304 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %303
  store float %238, float addrspace(3)* %304, align 4
  %305 = mul i32 %264, 2
  %306 = add i32 1, %305
  %307 = mul i32 %306, 3
  %308 = add i32 2, %307
  %309 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %308
  store float %243, float addrspace(3)* %309, align 4
  br label %310

; <label>:310                                     ; preds = %209, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = add i32 %7, 128
  %312 = add i32 %7, 192
  %313 = mul i32 %311, 2
  %314 = add i32 0, %313
  %315 = mul i32 %314, 3
  %316 = add i32 0, %315
  %317 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %316
  %318 = load float, float addrspace(3)* %317, align 4
  %319 = mul i32 %311, 2
  %320 = add i32 0, %319
  %321 = mul i32 %320, 3
  %322 = add i32 1, %321
  %323 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %322
  %324 = load float, float addrspace(3)* %323, align 4
  %325 = mul i32 %311, 2
  %326 = add i32 0, %325
  %327 = mul i32 %326, 3
  %328 = add i32 2, %327
  %329 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %328
  %330 = load float, float addrspace(3)* %329, align 4
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = fmul fast float %332, %318
  %334 = fmul fast float %332, %324
  %335 = fmul fast float %332, %330
  %336 = mul i32 %311, 2
  %337 = add i32 1, %336
  %338 = mul i32 %337, 3
  %339 = add i32 0, %338
  %340 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %339
  %341 = load float, float addrspace(3)* %340, align 4
  %342 = mul i32 %311, 2
  %343 = add i32 1, %342
  %344 = mul i32 %343, 3
  %345 = add i32 1, %344
  %346 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %345
  %347 = load float, float addrspace(3)* %346, align 4
  %348 = mul i32 %311, 2
  %349 = add i32 1, %348
  %350 = mul i32 %349, 3
  %351 = add i32 2, %350
  %352 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %351
  %353 = load float, float addrspace(3)* %352, align 4
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = fmul fast float %355, %341
  %357 = fmul fast float %355, %347
  %358 = fmul fast float %355, %353
  %359 = mul i32 %312, 2
  %360 = add i32 0, %359
  %361 = mul i32 %360, 3
  %362 = add i32 0, %361
  %363 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %362
  %364 = load float, float addrspace(3)* %363, align 4
  %365 = mul i32 %312, 2
  %366 = add i32 0, %365
  %367 = mul i32 %366, 3
  %368 = add i32 1, %367
  %369 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %368
  %370 = load float, float addrspace(3)* %369, align 4
  %371 = mul i32 %312, 2
  %372 = add i32 0, %371
  %373 = mul i32 %372, 3
  %374 = add i32 2, %373
  %375 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %374
  %376 = load float, float addrspace(3)* %375, align 4
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = fmul fast float %378, %364
  %380 = fmul fast float %378, %370
  %381 = fmul fast float %378, %376
  %382 = mul i32 %312, 2
  %383 = add i32 1, %382
  %384 = mul i32 %383, 3
  %385 = add i32 0, %384
  %386 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %385
  %387 = load float, float addrspace(3)* %386, align 4
  %388 = mul i32 %312, 2
  %389 = add i32 1, %388
  %390 = mul i32 %389, 3
  %391 = add i32 1, %390
  %392 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %391
  %393 = load float, float addrspace(3)* %392, align 4
  %394 = mul i32 %312, 2
  %395 = add i32 1, %394
  %396 = mul i32 %395, 3
  %397 = add i32 2, %396
  %398 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %397
  %399 = load float, float addrspace(3)* %398, align 4
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = fmul fast float %401, %387
  %403 = fmul fast float %401, %393
  %404 = fmul fast float %401, %399
  %405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.i32 %405, 0
  %407 = add i32 %406, 1
  %408 = icmp ugt i32 %407, 1
  br i1 %408, label %409, label %629

; <label>:409                                     ; preds = %310
  br label %410

; <label>:410                                     ; preds = %410, %409
  %411 = phi float [ %479, %410 ], [ %333, %409 ]
  %412 = phi float [ %482, %410 ], [ %334, %409 ]
  %413 = phi float [ %485, %410 ], [ %335, %409 ]
  %414 = phi float [ %524, %410 ], [ %356, %409 ]
  %415 = phi float [ %527, %410 ], [ %357, %409 ]
  %416 = phi float [ %530, %410 ], [ %358, %409 ]
  %417 = phi float [ %571, %410 ], [ %379, %409 ]
  %418 = phi float [ %574, %410 ], [ %380, %409 ]
  %419 = phi float [ %577, %410 ], [ %381, %409 ]
  %420 = phi float [ %616, %410 ], [ %402, %409 ]
  %421 = phi float [ %619, %410 ], [ %403, %409 ]
  %422 = phi float [ %622, %410 ], [ %404, %409 ]
  %423 = phi i32 [ %623, %410 ], [ 1, %409 ]
  %424 = add i32 %423, -1
  %425 = lshr i32 %424, 2
  %426 = and i32 %424, 3
  %427 = add nuw nsw i32 %425, 3
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 %427)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = extractvalue %dx.types.CBufRet.f32 %428, 3
  %433 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 0
  store float %429, float* %433, align 4
  %434 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 1
  store float %430, float* %434, align 4
  %435 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 2
  store float %431, float* %435, align 4
  %436 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 3
  store float %432, float* %436, align 4
  %437 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 %426
  %438 = load float, float* %437, align 4, !tbaa !18
  %439 = add i32 %423, %311
  %440 = mul i32 %439, 2
  %441 = add i32 0, %440
  %442 = mul i32 %441, 3
  %443 = add i32 0, %442
  %444 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %443
  %445 = load float, float addrspace(3)* %444, align 4
  %446 = mul i32 %439, 2
  %447 = add i32 0, %446
  %448 = mul i32 %447, 3
  %449 = add i32 1, %448
  %450 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %449
  %451 = load float, float addrspace(3)* %450, align 4
  %452 = mul i32 %439, 2
  %453 = add i32 0, %452
  %454 = mul i32 %453, 3
  %455 = add i32 2, %454
  %456 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %455
  %457 = load float, float addrspace(3)* %456, align 4
  %458 = sub i32 %311, %423
  %459 = mul i32 %458, 2
  %460 = add i32 0, %459
  %461 = mul i32 %460, 3
  %462 = add i32 0, %461
  %463 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %462
  %464 = load float, float addrspace(3)* %463, align 4
  %465 = mul i32 %458, 2
  %466 = add i32 0, %465
  %467 = mul i32 %466, 3
  %468 = add i32 1, %467
  %469 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %468
  %470 = load float, float addrspace(3)* %469, align 4
  %471 = mul i32 %458, 2
  %472 = add i32 0, %471
  %473 = mul i32 %472, 3
  %474 = add i32 2, %473
  %475 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %474
  %476 = load float, float addrspace(3)* %475, align 4
  %477 = fadd fast float %464, %445
  %478 = fmul fast float %477, %438
  %479 = fadd fast float %478, %411
  %480 = fadd fast float %470, %451
  %481 = fmul fast float %480, %438
  %482 = fadd fast float %481, %412
  %483 = fadd fast float %476, %457
  %484 = fmul fast float %483, %438
  %485 = fadd fast float %484, %413
  %486 = mul i32 %439, 2
  %487 = add i32 1, %486
  %488 = mul i32 %487, 3
  %489 = add i32 0, %488
  %490 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %489
  %491 = load float, float addrspace(3)* %490, align 4
  %492 = mul i32 %439, 2
  %493 = add i32 1, %492
  %494 = mul i32 %493, 3
  %495 = add i32 1, %494
  %496 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %495
  %497 = load float, float addrspace(3)* %496, align 4
  %498 = mul i32 %439, 2
  %499 = add i32 1, %498
  %500 = mul i32 %499, 3
  %501 = add i32 2, %500
  %502 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %501
  %503 = load float, float addrspace(3)* %502, align 4
  %504 = mul i32 %458, 2
  %505 = add i32 1, %504
  %506 = mul i32 %505, 3
  %507 = add i32 0, %506
  %508 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %507
  %509 = load float, float addrspace(3)* %508, align 4
  %510 = mul i32 %458, 2
  %511 = add i32 1, %510
  %512 = mul i32 %511, 3
  %513 = add i32 1, %512
  %514 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %513
  %515 = load float, float addrspace(3)* %514, align 4
  %516 = mul i32 %458, 2
  %517 = add i32 1, %516
  %518 = mul i32 %517, 3
  %519 = add i32 2, %518
  %520 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %519
  %521 = load float, float addrspace(3)* %520, align 4
  %522 = fadd fast float %509, %491
  %523 = fmul fast float %522, %438
  %524 = fadd fast float %523, %414
  %525 = fadd fast float %515, %497
  %526 = fmul fast float %525, %438
  %527 = fadd fast float %526, %415
  %528 = fadd fast float %521, %503
  %529 = fmul fast float %528, %438
  %530 = fadd fast float %529, %416
  %531 = add i32 %423, %312
  %532 = mul i32 %531, 2
  %533 = add i32 0, %532
  %534 = mul i32 %533, 3
  %535 = add i32 0, %534
  %536 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %535
  %537 = load float, float addrspace(3)* %536, align 4
  %538 = mul i32 %531, 2
  %539 = add i32 0, %538
  %540 = mul i32 %539, 3
  %541 = add i32 1, %540
  %542 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %541
  %543 = load float, float addrspace(3)* %542, align 4
  %544 = mul i32 %531, 2
  %545 = add i32 0, %544
  %546 = mul i32 %545, 3
  %547 = add i32 2, %546
  %548 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %547
  %549 = load float, float addrspace(3)* %548, align 4
  %550 = sub i32 %312, %423
  %551 = mul i32 %550, 2
  %552 = add i32 0, %551
  %553 = mul i32 %552, 3
  %554 = add i32 0, %553
  %555 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %554
  %556 = load float, float addrspace(3)* %555, align 4
  %557 = mul i32 %550, 2
  %558 = add i32 0, %557
  %559 = mul i32 %558, 3
  %560 = add i32 1, %559
  %561 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %560
  %562 = load float, float addrspace(3)* %561, align 4
  %563 = mul i32 %550, 2
  %564 = add i32 0, %563
  %565 = mul i32 %564, 3
  %566 = add i32 2, %565
  %567 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %566
  %568 = load float, float addrspace(3)* %567, align 4
  %569 = fadd fast float %556, %537
  %570 = fmul fast float %569, %438
  %571 = fadd fast float %570, %417
  %572 = fadd fast float %562, %543
  %573 = fmul fast float %572, %438
  %574 = fadd fast float %573, %418
  %575 = fadd fast float %568, %549
  %576 = fmul fast float %575, %438
  %577 = fadd fast float %576, %419
  %578 = mul i32 %531, 2
  %579 = add i32 1, %578
  %580 = mul i32 %579, 3
  %581 = add i32 0, %580
  %582 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %581
  %583 = load float, float addrspace(3)* %582, align 4
  %584 = mul i32 %531, 2
  %585 = add i32 1, %584
  %586 = mul i32 %585, 3
  %587 = add i32 1, %586
  %588 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %587
  %589 = load float, float addrspace(3)* %588, align 4
  %590 = mul i32 %531, 2
  %591 = add i32 1, %590
  %592 = mul i32 %591, 3
  %593 = add i32 2, %592
  %594 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %593
  %595 = load float, float addrspace(3)* %594, align 4
  %596 = mul i32 %550, 2
  %597 = add i32 1, %596
  %598 = mul i32 %597, 3
  %599 = add i32 0, %598
  %600 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %599
  %601 = load float, float addrspace(3)* %600, align 4
  %602 = mul i32 %550, 2
  %603 = add i32 1, %602
  %604 = mul i32 %603, 3
  %605 = add i32 1, %604
  %606 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %605
  %607 = load float, float addrspace(3)* %606, align 4
  %608 = mul i32 %550, 2
  %609 = add i32 1, %608
  %610 = mul i32 %609, 3
  %611 = add i32 2, %610
  %612 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %611
  %613 = load float, float addrspace(3)* %612, align 4
  %614 = fadd fast float %601, %583
  %615 = fmul fast float %614, %438
  %616 = fadd fast float %615, %420
  %617 = fadd fast float %607, %589
  %618 = fmul fast float %617, %438
  %619 = fadd fast float %618, %421
  %620 = fadd fast float %613, %595
  %621 = fmul fast float %620, %438
  %622 = fadd fast float %621, %422
  %623 = add i32 %423, 1
  %624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.i32 %624, 0
  %626 = add i32 %625, 1
  %627 = icmp ult i32 %623, %626
  br i1 %627, label %410, label %628

; <label>:628                                     ; preds = %410
  br label %629

; <label>:629                                     ; preds = %628, %310
  %630 = phi float [ %333, %310 ], [ %479, %628 ]
  %631 = phi float [ %334, %310 ], [ %482, %628 ]
  %632 = phi float [ %335, %310 ], [ %485, %628 ]
  %633 = phi float [ %356, %310 ], [ %524, %628 ]
  %634 = phi float [ %357, %310 ], [ %527, %628 ]
  %635 = phi float [ %358, %310 ], [ %530, %628 ]
  %636 = phi float [ %379, %310 ], [ %571, %628 ]
  %637 = phi float [ %380, %310 ], [ %574, %628 ]
  %638 = phi float [ %381, %310 ], [ %577, %628 ]
  %639 = phi float [ %402, %310 ], [ %616, %628 ]
  %640 = phi float [ %403, %310 ], [ %619, %628 ]
  %641 = phi float [ %404, %310 ], [ %622, %628 ]
  %642 = add i32 %12, %7
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %642, i32 %15, i32 undef, float %630, float %631, float %632, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %643 = or i32 %15, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %642, i32 %643, i32 undef, float %633, float %634, float %635, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %644 = add i32 %642, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %644, i32 %15, i32 undef, float %636, float %637, float %638, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %644, i32 %643, i32 undef, float %639, float %640, float %641, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

