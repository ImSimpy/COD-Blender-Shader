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
; shader hash: 03930213fd31246d4fb5580771a50f2e
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

@"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [1536 x float] undef, align 4

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
  %47 = add i32 %13, 64
  %48 = mul i32 %47, 2
  %49 = add i32 0, %48
  %50 = mul i32 %49, 3
  %51 = add i32 0, %50
  %52 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %51
  store float %36, float addrspace(3)* %52, align 4
  %53 = mul i32 %47, 2
  %54 = add i32 0, %53
  %55 = mul i32 %54, 3
  %56 = add i32 1, %55
  %57 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %56
  store float %41, float addrspace(3)* %57, align 4
  %58 = mul i32 %47, 2
  %59 = add i32 0, %58
  %60 = mul i32 %59, 3
  %61 = add i32 2, %60
  %62 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %61
  store float %46, float addrspace(3)* %62, align 4
  %63 = add i32 %13, 65
  %64 = mul i32 %63, 2
  %65 = add i32 0, %64
  %66 = mul i32 %65, 3
  %67 = add i32 0, %66
  %68 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %67
  store float %35, float addrspace(3)* %68, align 4
  %69 = mul i32 %63, 2
  %70 = add i32 0, %69
  %71 = mul i32 %70, 3
  %72 = add i32 1, %71
  %73 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %72
  store float %40, float addrspace(3)* %73, align 4
  %74 = mul i32 %63, 2
  %75 = add i32 0, %74
  %76 = mul i32 %75, 3
  %77 = add i32 2, %76
  %78 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %77
  store float %45, float addrspace(3)* %78, align 4
  %79 = mul i32 %47, 2
  %80 = add i32 1, %79
  %81 = mul i32 %80, 3
  %82 = add i32 0, %81
  %83 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %82
  store float %33, float addrspace(3)* %83, align 4
  %84 = mul i32 %47, 2
  %85 = add i32 1, %84
  %86 = mul i32 %85, 3
  %87 = add i32 1, %86
  %88 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %87
  store float %38, float addrspace(3)* %88, align 4
  %89 = mul i32 %47, 2
  %90 = add i32 1, %89
  %91 = mul i32 %90, 3
  %92 = add i32 2, %91
  %93 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %92
  store float %43, float addrspace(3)* %93, align 4
  %94 = mul i32 %63, 2
  %95 = add i32 1, %94
  %96 = mul i32 %95, 3
  %97 = add i32 0, %96
  %98 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %97
  store float %34, float addrspace(3)* %98, align 4
  %99 = mul i32 %63, 2
  %100 = add i32 1, %99
  %101 = mul i32 %100, 3
  %102 = add i32 1, %101
  %103 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %102
  store float %39, float addrspace(3)* %103, align 4
  %104 = mul i32 %63, 2
  %105 = add i32 1, %104
  %106 = mul i32 %105, 3
  %107 = add i32 2, %106
  %108 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %107
  store float %44, float addrspace(3)* %108, align 4
  %109 = icmp ult i32 %7, 64
  br i1 %109, label %110, label %210, !dx.controlflow.hints !17

; <label>:110                                     ; preds = %0
  %111 = add i32 %13, -64
  %112 = icmp sgt i32 %111, -1
  %113 = select i1 %112, i32 %47, i32 %111
  %114 = add nsw i32 %113, %12
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = fadd fast float %116, -1.000000e+00
  %118 = fptosi float %117 to i32
  %119 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %120 = fadd fast float %119, -1.000000e+00
  %121 = fptosi float %120 to i32
  %122 = call i32 @dx.op.binary.i32(i32 37, i32 %114, i32 0)  ; IMax(a,b)
  %123 = call i32 @dx.op.binary.i32(i32 38, i32 %122, i32 %118)  ; IMin(a,b)
  %124 = call i32 @dx.op.binary.i32(i32 38, i32 %23, i32 %121)  ; IMin(a,b)
  %125 = uitofp i32 %123 to float
  %126 = uitofp i32 %124 to float
  %127 = fadd fast float %125, 5.000000e-01
  %128 = fmul fast float %127, %10
  %129 = fadd fast float %126, 5.000000e-01
  %130 = fmul fast float %129, %11
  %131 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %128, float %130, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = extractvalue %dx.types.ResRet.f32 %131, 1
  %134 = extractvalue %dx.types.ResRet.f32 %131, 2
  %135 = extractvalue %dx.types.ResRet.f32 %131, 3
  %136 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %128, float %130, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = extractvalue %dx.types.ResRet.f32 %136, 1
  %139 = extractvalue %dx.types.ResRet.f32 %136, 2
  %140 = extractvalue %dx.types.ResRet.f32 %136, 3
  %141 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %128, float %130, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = extractvalue %dx.types.ResRet.f32 %141, 3
  %146 = icmp ugt i32 %13, 63
  %147 = add i32 %13, 128
  %148 = select i1 %146, i32 %147, i32 %13
  %149 = mul i32 %148, 2
  %150 = add i32 0, %149
  %151 = mul i32 %150, 3
  %152 = add i32 0, %151
  %153 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %152
  store float %135, float addrspace(3)* %153, align 4
  %154 = mul i32 %148, 2
  %155 = add i32 0, %154
  %156 = mul i32 %155, 3
  %157 = add i32 1, %156
  %158 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %157
  store float %140, float addrspace(3)* %158, align 4
  %159 = mul i32 %148, 2
  %160 = add i32 0, %159
  %161 = mul i32 %160, 3
  %162 = add i32 2, %161
  %163 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %162
  store float %145, float addrspace(3)* %163, align 4
  %164 = or i32 %148, 1
  %165 = mul i32 %164, 2
  %166 = add i32 0, %165
  %167 = mul i32 %166, 3
  %168 = add i32 0, %167
  %169 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %168
  store float %134, float addrspace(3)* %169, align 4
  %170 = mul i32 %164, 2
  %171 = add i32 0, %170
  %172 = mul i32 %171, 3
  %173 = add i32 1, %172
  %174 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %173
  store float %139, float addrspace(3)* %174, align 4
  %175 = mul i32 %164, 2
  %176 = add i32 0, %175
  %177 = mul i32 %176, 3
  %178 = add i32 2, %177
  %179 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %178
  store float %144, float addrspace(3)* %179, align 4
  %180 = mul i32 %148, 2
  %181 = add i32 1, %180
  %182 = mul i32 %181, 3
  %183 = add i32 0, %182
  %184 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %183
  store float %132, float addrspace(3)* %184, align 4
  %185 = mul i32 %148, 2
  %186 = add i32 1, %185
  %187 = mul i32 %186, 3
  %188 = add i32 1, %187
  %189 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %188
  store float %137, float addrspace(3)* %189, align 4
  %190 = mul i32 %148, 2
  %191 = add i32 1, %190
  %192 = mul i32 %191, 3
  %193 = add i32 2, %192
  %194 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %193
  store float %142, float addrspace(3)* %194, align 4
  %195 = mul i32 %164, 2
  %196 = add i32 1, %195
  %197 = mul i32 %196, 3
  %198 = add i32 0, %197
  %199 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %198
  store float %133, float addrspace(3)* %199, align 4
  %200 = mul i32 %164, 2
  %201 = add i32 1, %200
  %202 = mul i32 %201, 3
  %203 = add i32 1, %202
  %204 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %203
  store float %138, float addrspace(3)* %204, align 4
  %205 = mul i32 %164, 2
  %206 = add i32 1, %205
  %207 = mul i32 %206, 3
  %208 = add i32 2, %207
  %209 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %208
  store float %143, float addrspace(3)* %209, align 4
  br label %210

; <label>:210                                     ; preds = %110, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %211 = add i32 %7, 64
  %212 = add i32 %7, 128
  %213 = mul i32 %211, 2
  %214 = add i32 0, %213
  %215 = mul i32 %214, 3
  %216 = add i32 0, %215
  %217 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %216
  %218 = load float, float addrspace(3)* %217, align 4
  %219 = mul i32 %211, 2
  %220 = add i32 0, %219
  %221 = mul i32 %220, 3
  %222 = add i32 1, %221
  %223 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %222
  %224 = load float, float addrspace(3)* %223, align 4
  %225 = mul i32 %211, 2
  %226 = add i32 0, %225
  %227 = mul i32 %226, 3
  %228 = add i32 2, %227
  %229 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = fmul fast float %232, %218
  %234 = fmul fast float %232, %224
  %235 = fmul fast float %232, %230
  %236 = mul i32 %211, 2
  %237 = add i32 1, %236
  %238 = mul i32 %237, 3
  %239 = add i32 0, %238
  %240 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4
  %242 = mul i32 %211, 2
  %243 = add i32 1, %242
  %244 = mul i32 %243, 3
  %245 = add i32 1, %244
  %246 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %245
  %247 = load float, float addrspace(3)* %246, align 4
  %248 = mul i32 %211, 2
  %249 = add i32 1, %248
  %250 = mul i32 %249, 3
  %251 = add i32 2, %250
  %252 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fmul fast float %255, %241
  %257 = fmul fast float %255, %247
  %258 = fmul fast float %255, %253
  %259 = mul i32 %212, 2
  %260 = add i32 0, %259
  %261 = mul i32 %260, 3
  %262 = add i32 0, %261
  %263 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %262
  %264 = load float, float addrspace(3)* %263, align 4
  %265 = mul i32 %212, 2
  %266 = add i32 0, %265
  %267 = mul i32 %266, 3
  %268 = add i32 1, %267
  %269 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %268
  %270 = load float, float addrspace(3)* %269, align 4
  %271 = mul i32 %212, 2
  %272 = add i32 0, %271
  %273 = mul i32 %272, 3
  %274 = add i32 2, %273
  %275 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %274
  %276 = load float, float addrspace(3)* %275, align 4
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = fmul fast float %278, %264
  %280 = fmul fast float %278, %270
  %281 = fmul fast float %278, %276
  %282 = mul i32 %212, 2
  %283 = add i32 1, %282
  %284 = mul i32 %283, 3
  %285 = add i32 0, %284
  %286 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %285
  %287 = load float, float addrspace(3)* %286, align 4
  %288 = mul i32 %212, 2
  %289 = add i32 1, %288
  %290 = mul i32 %289, 3
  %291 = add i32 1, %290
  %292 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %291
  %293 = load float, float addrspace(3)* %292, align 4
  %294 = mul i32 %212, 2
  %295 = add i32 1, %294
  %296 = mul i32 %295, 3
  %297 = add i32 2, %296
  %298 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %297
  %299 = load float, float addrspace(3)* %298, align 4
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = fmul fast float %301, %287
  %303 = fmul fast float %301, %293
  %304 = fmul fast float %301, %299
  %305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.i32 %305, 0
  %307 = add i32 %306, 1
  %308 = icmp ugt i32 %307, 1
  br i1 %308, label %309, label %529

; <label>:309                                     ; preds = %210
  br label %310

; <label>:310                                     ; preds = %310, %309
  %311 = phi float [ %379, %310 ], [ %233, %309 ]
  %312 = phi float [ %382, %310 ], [ %234, %309 ]
  %313 = phi float [ %385, %310 ], [ %235, %309 ]
  %314 = phi float [ %424, %310 ], [ %256, %309 ]
  %315 = phi float [ %427, %310 ], [ %257, %309 ]
  %316 = phi float [ %430, %310 ], [ %258, %309 ]
  %317 = phi float [ %471, %310 ], [ %279, %309 ]
  %318 = phi float [ %474, %310 ], [ %280, %309 ]
  %319 = phi float [ %477, %310 ], [ %281, %309 ]
  %320 = phi float [ %516, %310 ], [ %302, %309 ]
  %321 = phi float [ %519, %310 ], [ %303, %309 ]
  %322 = phi float [ %522, %310 ], [ %304, %309 ]
  %323 = phi i32 [ %523, %310 ], [ 1, %309 ]
  %324 = add i32 %323, -1
  %325 = lshr i32 %324, 2
  %326 = and i32 %324, 3
  %327 = add nuw nsw i32 %325, 3
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 %327)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %333 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 0
  store float %329, float* %333, align 4
  %334 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 1
  store float %330, float* %334, align 4
  %335 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 2
  store float %331, float* %335, align 4
  %336 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 3
  store float %332, float* %336, align 4
  %337 = getelementptr inbounds [4 x float], [4 x float]* %5, i32 0, i32 %326
  %338 = load float, float* %337, align 4, !tbaa !18
  %339 = add i32 %323, %211
  %340 = mul i32 %339, 2
  %341 = add i32 0, %340
  %342 = mul i32 %341, 3
  %343 = add i32 0, %342
  %344 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %343
  %345 = load float, float addrspace(3)* %344, align 4
  %346 = mul i32 %339, 2
  %347 = add i32 0, %346
  %348 = mul i32 %347, 3
  %349 = add i32 1, %348
  %350 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %349
  %351 = load float, float addrspace(3)* %350, align 4
  %352 = mul i32 %339, 2
  %353 = add i32 0, %352
  %354 = mul i32 %353, 3
  %355 = add i32 2, %354
  %356 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %355
  %357 = load float, float addrspace(3)* %356, align 4
  %358 = sub i32 %211, %323
  %359 = mul i32 %358, 2
  %360 = add i32 0, %359
  %361 = mul i32 %360, 3
  %362 = add i32 0, %361
  %363 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %362
  %364 = load float, float addrspace(3)* %363, align 4
  %365 = mul i32 %358, 2
  %366 = add i32 0, %365
  %367 = mul i32 %366, 3
  %368 = add i32 1, %367
  %369 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %368
  %370 = load float, float addrspace(3)* %369, align 4
  %371 = mul i32 %358, 2
  %372 = add i32 0, %371
  %373 = mul i32 %372, 3
  %374 = add i32 2, %373
  %375 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %374
  %376 = load float, float addrspace(3)* %375, align 4
  %377 = fadd fast float %364, %345
  %378 = fmul fast float %377, %338
  %379 = fadd fast float %378, %311
  %380 = fadd fast float %370, %351
  %381 = fmul fast float %380, %338
  %382 = fadd fast float %381, %312
  %383 = fadd fast float %376, %357
  %384 = fmul fast float %383, %338
  %385 = fadd fast float %384, %313
  %386 = mul i32 %339, 2
  %387 = add i32 1, %386
  %388 = mul i32 %387, 3
  %389 = add i32 0, %388
  %390 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %389
  %391 = load float, float addrspace(3)* %390, align 4
  %392 = mul i32 %339, 2
  %393 = add i32 1, %392
  %394 = mul i32 %393, 3
  %395 = add i32 1, %394
  %396 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %395
  %397 = load float, float addrspace(3)* %396, align 4
  %398 = mul i32 %339, 2
  %399 = add i32 1, %398
  %400 = mul i32 %399, 3
  %401 = add i32 2, %400
  %402 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %401
  %403 = load float, float addrspace(3)* %402, align 4
  %404 = mul i32 %358, 2
  %405 = add i32 1, %404
  %406 = mul i32 %405, 3
  %407 = add i32 0, %406
  %408 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %407
  %409 = load float, float addrspace(3)* %408, align 4
  %410 = mul i32 %358, 2
  %411 = add i32 1, %410
  %412 = mul i32 %411, 3
  %413 = add i32 1, %412
  %414 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %413
  %415 = load float, float addrspace(3)* %414, align 4
  %416 = mul i32 %358, 2
  %417 = add i32 1, %416
  %418 = mul i32 %417, 3
  %419 = add i32 2, %418
  %420 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %419
  %421 = load float, float addrspace(3)* %420, align 4
  %422 = fadd fast float %409, %391
  %423 = fmul fast float %422, %338
  %424 = fadd fast float %423, %314
  %425 = fadd fast float %415, %397
  %426 = fmul fast float %425, %338
  %427 = fadd fast float %426, %315
  %428 = fadd fast float %421, %403
  %429 = fmul fast float %428, %338
  %430 = fadd fast float %429, %316
  %431 = add i32 %323, %212
  %432 = mul i32 %431, 2
  %433 = add i32 0, %432
  %434 = mul i32 %433, 3
  %435 = add i32 0, %434
  %436 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %435
  %437 = load float, float addrspace(3)* %436, align 4
  %438 = mul i32 %431, 2
  %439 = add i32 0, %438
  %440 = mul i32 %439, 3
  %441 = add i32 1, %440
  %442 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %441
  %443 = load float, float addrspace(3)* %442, align 4
  %444 = mul i32 %431, 2
  %445 = add i32 0, %444
  %446 = mul i32 %445, 3
  %447 = add i32 2, %446
  %448 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %447
  %449 = load float, float addrspace(3)* %448, align 4
  %450 = sub i32 %212, %323
  %451 = mul i32 %450, 2
  %452 = add i32 0, %451
  %453 = mul i32 %452, 3
  %454 = add i32 0, %453
  %455 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %454
  %456 = load float, float addrspace(3)* %455, align 4
  %457 = mul i32 %450, 2
  %458 = add i32 0, %457
  %459 = mul i32 %458, 3
  %460 = add i32 1, %459
  %461 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %460
  %462 = load float, float addrspace(3)* %461, align 4
  %463 = mul i32 %450, 2
  %464 = add i32 0, %463
  %465 = mul i32 %464, 3
  %466 = add i32 2, %465
  %467 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %466
  %468 = load float, float addrspace(3)* %467, align 4
  %469 = fadd fast float %456, %437
  %470 = fmul fast float %469, %338
  %471 = fadd fast float %470, %317
  %472 = fadd fast float %462, %443
  %473 = fmul fast float %472, %338
  %474 = fadd fast float %473, %318
  %475 = fadd fast float %468, %449
  %476 = fmul fast float %475, %338
  %477 = fadd fast float %476, %319
  %478 = mul i32 %431, 2
  %479 = add i32 1, %478
  %480 = mul i32 %479, 3
  %481 = add i32 0, %480
  %482 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %481
  %483 = load float, float addrspace(3)* %482, align 4
  %484 = mul i32 %431, 2
  %485 = add i32 1, %484
  %486 = mul i32 %485, 3
  %487 = add i32 1, %486
  %488 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %487
  %489 = load float, float addrspace(3)* %488, align 4
  %490 = mul i32 %431, 2
  %491 = add i32 1, %490
  %492 = mul i32 %491, 3
  %493 = add i32 2, %492
  %494 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %493
  %495 = load float, float addrspace(3)* %494, align 4
  %496 = mul i32 %450, 2
  %497 = add i32 1, %496
  %498 = mul i32 %497, 3
  %499 = add i32 0, %498
  %500 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %499
  %501 = load float, float addrspace(3)* %500, align 4
  %502 = mul i32 %450, 2
  %503 = add i32 1, %502
  %504 = mul i32 %503, 3
  %505 = add i32 1, %504
  %506 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %505
  %507 = load float, float addrspace(3)* %506, align 4
  %508 = mul i32 %450, 2
  %509 = add i32 1, %508
  %510 = mul i32 %509, 3
  %511 = add i32 2, %510
  %512 = getelementptr [1536 x float], [1536 x float] addrspace(3)* @"\01?localStoreGaussianLine@@3PAY01$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %511
  %513 = load float, float addrspace(3)* %512, align 4
  %514 = fadd fast float %501, %483
  %515 = fmul fast float %514, %338
  %516 = fadd fast float %515, %320
  %517 = fadd fast float %507, %489
  %518 = fmul fast float %517, %338
  %519 = fadd fast float %518, %321
  %520 = fadd fast float %513, %495
  %521 = fmul fast float %520, %338
  %522 = fadd fast float %521, %322
  %523 = add i32 %323, 1
  %524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.i32 %524, 0
  %526 = add i32 %525, 1
  %527 = icmp ult i32 %523, %526
  br i1 %527, label %310, label %528

; <label>:528                                     ; preds = %310
  br label %529

; <label>:529                                     ; preds = %528, %210
  %530 = phi float [ %233, %210 ], [ %379, %528 ]
  %531 = phi float [ %234, %210 ], [ %382, %528 ]
  %532 = phi float [ %235, %210 ], [ %385, %528 ]
  %533 = phi float [ %256, %210 ], [ %424, %528 ]
  %534 = phi float [ %257, %210 ], [ %427, %528 ]
  %535 = phi float [ %258, %210 ], [ %430, %528 ]
  %536 = phi float [ %279, %210 ], [ %471, %528 ]
  %537 = phi float [ %280, %210 ], [ %474, %528 ]
  %538 = phi float [ %281, %210 ], [ %477, %528 ]
  %539 = phi float [ %302, %210 ], [ %516, %528 ]
  %540 = phi float [ %303, %210 ], [ %519, %528 ]
  %541 = phi float [ %304, %210 ], [ %522, %528 ]
  %542 = add i32 %12, %7
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %542, i32 %15, i32 undef, float %530, float %531, float %532, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %543 = or i32 %15, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %542, i32 %543, i32 undef, float %533, float %534, float %535, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %544 = add i32 %542, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %544, i32 %15, i32 undef, float %536, float %537, float %538, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %544, i32 %543, i32 undef, float %539, float %540, float %541, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

