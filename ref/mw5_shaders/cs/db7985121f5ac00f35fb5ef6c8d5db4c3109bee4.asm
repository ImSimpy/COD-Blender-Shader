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
; shader hash: 0da600579415364b9ceb4d354b704f62
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
;   [32 x i8] (type annotation not present)
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
;                                       UAV     u32     2darray      U0             u0     1
;                                       UAV     u32     2darray      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<unsigned int, 2> >" = type { <2 x i32> }
%ConstantBufferRuntimeCompression = type { float, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [3072 x float] undef, align 4

define void @cs_bc1_compress_two_mips() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = alloca [16 x float], align 4
  %15 = alloca [16 x float], align 4
  %16 = alloca [16 x float], align 4
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %19 = shl i32 %6, 2
  %20 = shl i32 %7, 2
  %21 = uitofp i32 %19 to float
  %22 = uitofp i32 %20 to float
  %23 = fadd fast float %21, 1.000000e+00
  %24 = fadd fast float %22, 1.000000e+00
  %25 = fmul fast float %18, %23
  %26 = fmul fast float %18, %24
  %27 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 0
  %29 = extractvalue %dx.types.ResRet.f32 %27, 1
  %30 = extractvalue %dx.types.ResRet.f32 %27, 2
  %31 = extractvalue %dx.types.ResRet.f32 %27, 3
  %32 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = extractvalue %dx.types.ResRet.f32 %32, 2
  %36 = extractvalue %dx.types.ResRet.f32 %32, 3
  %37 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = extractvalue %dx.types.ResRet.f32 %37, 3
  %42 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  %43 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 0
  %44 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 0
  store float %31, float* %42, align 4
  store float %36, float* %43, align 4
  store float %41, float* %44, align 4
  %45 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  %46 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 1
  %47 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 1
  store float %30, float* %45, align 4
  store float %35, float* %46, align 4
  store float %40, float* %47, align 4
  %48 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  %49 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 4
  %50 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 4
  store float %28, float* %48, align 4
  store float %33, float* %49, align 4
  store float %38, float* %50, align 4
  %51 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  %52 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 5
  %53 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 5
  store float %29, float* %51, align 4
  store float %34, float* %52, align 4
  store float %39, float* %53, align 4
  %54 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 2, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = extractvalue %dx.types.ResRet.f32 %54, 3
  %59 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 2, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = extractvalue %dx.types.ResRet.f32 %59, 3
  %64 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 2, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = extractvalue %dx.types.ResRet.f32 %64, 3
  %69 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  %70 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 2
  %71 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 2
  store float %58, float* %69, align 4
  store float %63, float* %70, align 4
  store float %68, float* %71, align 4
  %72 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  %73 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 3
  %74 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 3
  store float %57, float* %72, align 4
  store float %62, float* %73, align 4
  store float %67, float* %74, align 4
  %75 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  %76 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 6
  %77 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 6
  store float %55, float* %75, align 4
  store float %60, float* %76, align 4
  store float %65, float* %77, align 4
  %78 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  %79 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 7
  %80 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 7
  store float %56, float* %78, align 4
  store float %61, float* %79, align 4
  store float %66, float* %80, align 4
  %81 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 0, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = extractvalue %dx.types.ResRet.f32 %81, 1
  %84 = extractvalue %dx.types.ResRet.f32 %81, 2
  %85 = extractvalue %dx.types.ResRet.f32 %81, 3
  %86 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 0, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = extractvalue %dx.types.ResRet.f32 %86, 3
  %91 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 0, i32 2, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = extractvalue %dx.types.ResRet.f32 %91, 1
  %94 = extractvalue %dx.types.ResRet.f32 %91, 2
  %95 = extractvalue %dx.types.ResRet.f32 %91, 3
  %96 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  %97 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 8
  %98 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 8
  store float %85, float* %96, align 4
  store float %90, float* %97, align 4
  store float %95, float* %98, align 4
  %99 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  %100 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 9
  %101 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 9
  store float %84, float* %99, align 4
  store float %89, float* %100, align 4
  store float %94, float* %101, align 4
  %102 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  %103 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 12
  %104 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 12
  store float %82, float* %102, align 4
  store float %87, float* %103, align 4
  store float %92, float* %104, align 4
  %105 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  %106 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 13
  %107 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 13
  store float %83, float* %105, align 4
  store float %88, float* %106, align 4
  store float %93, float* %107, align 4
  %108 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 2, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = extractvalue %dx.types.ResRet.f32 %108, 3
  %113 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 2, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = extractvalue %dx.types.ResRet.f32 %113, 1
  %116 = extractvalue %dx.types.ResRet.f32 %113, 2
  %117 = extractvalue %dx.types.ResRet.f32 %113, 3
  %118 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 2, i32 2, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = extractvalue %dx.types.ResRet.f32 %118, 1
  %121 = extractvalue %dx.types.ResRet.f32 %118, 2
  %122 = extractvalue %dx.types.ResRet.f32 %118, 3
  %123 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  %124 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 10
  %125 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 10
  store float %112, float* %123, align 4
  store float %117, float* %124, align 4
  store float %122, float* %125, align 4
  %126 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  %127 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 11
  %128 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 11
  store float %111, float* %126, align 4
  store float %116, float* %127, align 4
  store float %121, float* %128, align 4
  %129 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  %130 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 14
  %131 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 14
  store float %109, float* %129, align 4
  store float %114, float* %130, align 4
  store float %119, float* %131, align 4
  %132 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  %133 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 15
  %134 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 15
  store float %110, float* %132, align 4
  store float %115, float* %133, align 4
  store float %120, float* %134, align 4
  %135 = lshr i32 %8, 1
  %136 = lshr i32 %9, 1
  %137 = shl nuw i32 %135, 1
  %138 = shl nuw i32 %136, 1
  %139 = sub i32 %8, %137
  %140 = sub i32 %9, %138
  %141 = shl i32 %139, 1
  %142 = shl i32 %136, 3
  %143 = add i32 %142, %135
  %144 = shl i32 %140, 3
  %145 = add i32 %144, %141
  %146 = fadd fast float %30, %31
  %147 = fadd fast float %35, %36
  %148 = fadd fast float %40, %41
  %149 = fadd fast float %146, %28
  %150 = fadd fast float %147, %33
  %151 = fadd fast float %148, %38
  %152 = fadd fast float %149, %29
  %153 = fadd fast float %150, %34
  %154 = fadd fast float %151, %39
  %155 = mul i32 %143, 16
  %156 = add i32 %145, %155
  %157 = mul i32 %156, 3
  %158 = add i32 0, %157
  %159 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %158
  store float %152, float addrspace(3)* %159, align 4
  %160 = mul i32 %143, 16
  %161 = add i32 %145, %160
  %162 = mul i32 %161, 3
  %163 = add i32 1, %162
  %164 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %163
  store float %153, float addrspace(3)* %164, align 4
  %165 = mul i32 %143, 16
  %166 = add i32 %145, %165
  %167 = mul i32 %166, 3
  %168 = add i32 2, %167
  %169 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %168
  store float %154, float addrspace(3)* %169, align 4
  %170 = fadd fast float %57, %58
  %171 = fadd fast float %62, %63
  %172 = fadd fast float %67, %68
  %173 = fadd fast float %170, %55
  %174 = fadd fast float %171, %60
  %175 = fadd fast float %172, %65
  %176 = fadd fast float %173, %56
  %177 = fadd fast float %174, %61
  %178 = fadd fast float %175, %66
  %179 = or i32 %145, 1
  %180 = mul i32 %143, 16
  %181 = add i32 %179, %180
  %182 = mul i32 %181, 3
  %183 = add i32 0, %182
  %184 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %183
  store float %176, float addrspace(3)* %184, align 4
  %185 = mul i32 %143, 16
  %186 = add i32 %179, %185
  %187 = mul i32 %186, 3
  %188 = add i32 1, %187
  %189 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %188
  store float %177, float addrspace(3)* %189, align 4
  %190 = mul i32 %143, 16
  %191 = add i32 %179, %190
  %192 = mul i32 %191, 3
  %193 = add i32 2, %192
  %194 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %193
  store float %178, float addrspace(3)* %194, align 4
  %195 = fadd fast float %84, %85
  %196 = fadd fast float %89, %90
  %197 = fadd fast float %94, %95
  %198 = fadd fast float %195, %82
  %199 = fadd fast float %196, %87
  %200 = fadd fast float %197, %92
  %201 = fadd fast float %198, %83
  %202 = fadd fast float %199, %88
  %203 = fadd fast float %200, %93
  %204 = add i32 %145, 4
  %205 = mul i32 %143, 16
  %206 = add i32 %204, %205
  %207 = mul i32 %206, 3
  %208 = add i32 0, %207
  %209 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %208
  store float %201, float addrspace(3)* %209, align 4
  %210 = mul i32 %143, 16
  %211 = add i32 %204, %210
  %212 = mul i32 %211, 3
  %213 = add i32 1, %212
  %214 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %213
  store float %202, float addrspace(3)* %214, align 4
  %215 = mul i32 %143, 16
  %216 = add i32 %204, %215
  %217 = mul i32 %216, 3
  %218 = add i32 2, %217
  %219 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %218
  store float %203, float addrspace(3)* %219, align 4
  %220 = fadd fast float %111, %112
  %221 = fadd fast float %116, %117
  %222 = fadd fast float %121, %122
  %223 = fadd fast float %220, %109
  %224 = fadd fast float %221, %114
  %225 = fadd fast float %222, %119
  %226 = fadd fast float %223, %110
  %227 = fadd fast float %224, %115
  %228 = fadd fast float %225, %120
  %229 = add i32 %145, 5
  %230 = mul i32 %143, 16
  %231 = add i32 %229, %230
  %232 = mul i32 %231, 3
  %233 = add i32 0, %232
  %234 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %233
  store float %226, float addrspace(3)* %234, align 4
  %235 = mul i32 %143, 16
  %236 = add i32 %229, %235
  %237 = mul i32 %236, 3
  %238 = add i32 1, %237
  %239 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %238
  store float %227, float addrspace(3)* %239, align 4
  %240 = mul i32 %143, 16
  %241 = add i32 %229, %240
  %242 = mul i32 %241, 3
  %243 = add i32 2, %242
  %244 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %243
  store float %228, float addrspace(3)* %244, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %245

; <label>:245                                     ; preds = %264, %0
  %246 = phi float [ %40, %0 ], [ %270, %264 ]
  %247 = phi float [ %35, %0 ], [ %268, %264 ]
  %248 = phi float [ %30, %0 ], [ %266, %264 ]
  %249 = phi float [ %31, %0 ], [ %259, %264 ]
  %250 = phi float [ %36, %0 ], [ %260, %264 ]
  %251 = phi float [ %41, %0 ], [ %261, %264 ]
  %252 = phi float [ %31, %0 ], [ %256, %264 ]
  %253 = phi float [ %36, %0 ], [ %257, %264 ]
  %254 = phi float [ %41, %0 ], [ %258, %264 ]
  %255 = phi i32 [ 1, %0 ], [ %262, %264 ]
  %256 = call float @dx.op.binary.f32(i32 36, float %252, float %248)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %253, float %247)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %254, float %246)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float %249, float %248)  ; FMax(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %250, float %247)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %251, float %246)  ; FMax(a,b)
  %262 = add nuw nsw i32 %255, 1
  %263 = icmp eq i32 %262, 16
  br i1 %263, label %271, label %264

; <label>:264                                     ; preds = %245
  %265 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %262
  %266 = load float, float* %265, align 4
  %267 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %262
  %268 = load float, float* %267, align 4
  %269 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %262
  %270 = load float, float* %269, align 4
  br label %245

; <label>:271                                     ; preds = %245
  %272 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %273 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %274 = fsub fast float %259, %256
  %275 = fsub fast float %260, %257
  %276 = fsub fast float %261, %258
  %277 = fmul fast float %274, 6.250000e-02
  %278 = fmul fast float %275, 6.250000e-02
  %279 = fmul fast float %276, 6.250000e-02
  %280 = fsub fast float %259, %277
  %281 = fsub fast float %260, %278
  %282 = fsub fast float %261, %279
  %283 = fmul fast float %280, 2.550000e+02
  %284 = fmul fast float %281, 2.550000e+02
  %285 = fmul fast float %282, 2.550000e+02
  %286 = call float @dx.op.unary.f32(i32 28, float %283)  ; Round_pi(value)
  %287 = call float @dx.op.unary.f32(i32 28, float %284)  ; Round_pi(value)
  %288 = call float @dx.op.unary.f32(i32 28, float %285)  ; Round_pi(value)
  %289 = fmul fast float %286, 0x3F70101020000000
  %290 = fmul fast float %287, 0x3F70101020000000
  %291 = fmul fast float %288, 0x3F70101020000000
  %292 = fadd fast float %277, %256
  %293 = fadd fast float %278, %257
  %294 = fadd fast float %279, %258
  %295 = fmul fast float %292, 2.550000e+02
  %296 = fmul fast float %293, 2.550000e+02
  %297 = fmul fast float %294, 2.550000e+02
  %298 = call float @dx.op.unary.f32(i32 27, float %295)  ; Round_ni(value)
  %299 = call float @dx.op.unary.f32(i32 27, float %296)  ; Round_ni(value)
  %300 = call float @dx.op.unary.f32(i32 27, float %297)  ; Round_ni(value)
  %301 = fmul fast float %298, 0x3FBF1F1F40000000
  %302 = fmul fast float %299, 0x3FCF9F9FC0000000
  %303 = fmul fast float %300, 0x3FBF1F1F40000000
  %304 = call float @dx.op.unary.f32(i32 26, float %301)  ; Round_ne(value)
  %305 = call float @dx.op.unary.f32(i32 26, float %302)  ; Round_ne(value)
  %306 = call float @dx.op.unary.f32(i32 26, float %303)  ; Round_ne(value)
  %307 = fptoui float %304 to i32
  %308 = fptoui float %305 to i32
  %309 = fptoui float %306 to i32
  %310 = shl i32 %307, 11
  %311 = shl i32 %308, 5
  %312 = or i32 %311, %310
  %313 = or i32 %312, %309
  %314 = fmul fast float %286, 0x3FBF1F1F40000000
  %315 = fmul fast float %287, 0x3FCF9F9FC0000000
  %316 = fmul fast float %288, 0x3FBF1F1F40000000
  %317 = call float @dx.op.unary.f32(i32 26, float %314)  ; Round_ne(value)
  %318 = call float @dx.op.unary.f32(i32 26, float %315)  ; Round_ne(value)
  %319 = call float @dx.op.unary.f32(i32 26, float %316)  ; Round_ne(value)
  %320 = fptoui float %317 to i32
  %321 = fptoui float %318 to i32
  %322 = fptoui float %319 to i32
  %323 = shl i32 %320, 11
  %324 = shl i32 %321, 5
  %325 = or i32 %324, %323
  %326 = or i32 %325, %322
  %327 = icmp ult i32 %313, %326
  br i1 %327, label %328, label %376, !dx.controlflow.hints !19

; <label>:328                                     ; preds = %271
  %329 = fmul fast float %300, 0x3F70101020000000
  %330 = fmul fast float %299, 0x3F70101020000000
  %331 = fmul fast float %298, 0x3F70101020000000
  %332 = fsub fast float %298, %286
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = fsub fast float %299, %287
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = fsub fast float %300, %288
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = call float @dx.op.dot3.f32(i32 55, float %333, float %335, float %337, float %333, float %335, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fdiv fast float 3.000000e+00, %338
  %340 = fmul fast float %339, %333
  %341 = fmul fast float %339, %335
  %342 = fmul fast float %339, %337
  %343 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %331, float %330, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = fsub fast float %343, %344
  %346 = fmul fast float %345, %339
  br label %347

; <label>:347                                     ; preds = %368, %328
  %348 = phi float [ %120, %328 ], [ %374, %368 ]
  %349 = phi float [ %115, %328 ], [ %372, %368 ]
  %350 = phi float [ %110, %328 ], [ %370, %368 ]
  %351 = phi i32 [ 0, %328 ], [ %365, %368 ]
  %352 = phi i32 [ 15, %328 ], [ %366, %368 ]
  %353 = call float @dx.op.dot3.f32(i32 55, float %350, float %349, float %348, float %340, float %341, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = fadd fast float %353, %346
  %355 = call float @dx.op.unary.f32(i32 26, float %354)  ; Round_ne(value)
  %356 = fptoui float %355 to i32
  %357 = and i32 %356, 1
  %358 = lshr i32 %356, 1
  %359 = xor i32 %357, %358
  %360 = shl nuw i32 %359, 1
  %361 = or i32 %358, %351
  %362 = or i32 %361, %360
  %363 = icmp ne i32 %352, 0
  %364 = shl i32 %362, 2
  %365 = select i1 %363, i32 %364, i32 %362
  %366 = add nsw i32 %352, -1
  %367 = icmp sgt i32 %352, 0
  br i1 %367, label %368, label %375

; <label>:368                                     ; preds = %347
  %369 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %366
  %370 = load float, float* %369, align 4
  %371 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %366
  %372 = load float, float* %371, align 4
  %373 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %366
  %374 = load float, float* %373, align 4
  br label %347

; <label>:375                                     ; preds = %347
  br label %376

; <label>:376                                     ; preds = %375, %271
  %377 = phi i32 [ 0, %271 ], [ %365, %375 ]
  %378 = shl i32 %313, 16
  %379 = or i32 %326, %378
  %380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.i32 %380, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %6, i32 %7, i32 %381, i32 %379, i32 %377, i32 %379, i32 %379, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %382 = icmp ult i32 %272, 64
  br i1 %382, label %383, label %861, !dx.controlflow.hints !20

; <label>:383                                     ; preds = %376
  %384 = and i32 %272, 7
  %385 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 0
  %386 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 0
  %387 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 0
  %388 = mul i32 %272, 16
  %389 = add i32 0, %388
  %390 = mul i32 %389, 3
  %391 = add i32 0, %390
  %392 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %391
  %393 = load float, float addrspace(3)* %392, align 4
  %394 = mul i32 %272, 16
  %395 = add i32 0, %394
  %396 = mul i32 %395, 3
  %397 = add i32 1, %396
  %398 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %397
  %399 = load float, float addrspace(3)* %398, align 4
  %400 = mul i32 %272, 16
  %401 = add i32 0, %400
  %402 = mul i32 %401, 3
  %403 = add i32 2, %402
  %404 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %403
  %405 = load float, float addrspace(3)* %404, align 4
  store float %393, float* %385, align 4
  store float %399, float* %386, align 4
  store float %405, float* %387, align 4
  %406 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 1
  %407 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 1
  %408 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 1
  %409 = mul i32 %272, 16
  %410 = add i32 1, %409
  %411 = mul i32 %410, 3
  %412 = add i32 0, %411
  %413 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %412
  %414 = load float, float addrspace(3)* %413, align 4
  %415 = mul i32 %272, 16
  %416 = add i32 1, %415
  %417 = mul i32 %416, 3
  %418 = add i32 1, %417
  %419 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %418
  %420 = load float, float addrspace(3)* %419, align 4
  %421 = mul i32 %272, 16
  %422 = add i32 1, %421
  %423 = mul i32 %422, 3
  %424 = add i32 2, %423
  %425 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %424
  %426 = load float, float addrspace(3)* %425, align 4
  store float %414, float* %406, align 4
  store float %420, float* %407, align 4
  store float %426, float* %408, align 4
  %427 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 2
  %428 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 2
  %429 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 2
  %430 = mul i32 %272, 16
  %431 = add i32 2, %430
  %432 = mul i32 %431, 3
  %433 = add i32 0, %432
  %434 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %433
  %435 = load float, float addrspace(3)* %434, align 4
  %436 = mul i32 %272, 16
  %437 = add i32 2, %436
  %438 = mul i32 %437, 3
  %439 = add i32 1, %438
  %440 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %439
  %441 = load float, float addrspace(3)* %440, align 4
  %442 = mul i32 %272, 16
  %443 = add i32 2, %442
  %444 = mul i32 %443, 3
  %445 = add i32 2, %444
  %446 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %445
  %447 = load float, float addrspace(3)* %446, align 4
  store float %435, float* %427, align 4
  store float %441, float* %428, align 4
  store float %447, float* %429, align 4
  %448 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 3
  %449 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 3
  %450 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 3
  %451 = mul i32 %272, 16
  %452 = add i32 3, %451
  %453 = mul i32 %452, 3
  %454 = add i32 0, %453
  %455 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %454
  %456 = load float, float addrspace(3)* %455, align 4
  %457 = mul i32 %272, 16
  %458 = add i32 3, %457
  %459 = mul i32 %458, 3
  %460 = add i32 1, %459
  %461 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %460
  %462 = load float, float addrspace(3)* %461, align 4
  %463 = mul i32 %272, 16
  %464 = add i32 3, %463
  %465 = mul i32 %464, 3
  %466 = add i32 2, %465
  %467 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %466
  %468 = load float, float addrspace(3)* %467, align 4
  store float %456, float* %448, align 4
  store float %462, float* %449, align 4
  store float %468, float* %450, align 4
  %469 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 4
  %470 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 4
  %471 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 4
  %472 = mul i32 %272, 16
  %473 = add i32 4, %472
  %474 = mul i32 %473, 3
  %475 = add i32 0, %474
  %476 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %475
  %477 = load float, float addrspace(3)* %476, align 4
  %478 = mul i32 %272, 16
  %479 = add i32 4, %478
  %480 = mul i32 %479, 3
  %481 = add i32 1, %480
  %482 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %481
  %483 = load float, float addrspace(3)* %482, align 4
  %484 = mul i32 %272, 16
  %485 = add i32 4, %484
  %486 = mul i32 %485, 3
  %487 = add i32 2, %486
  %488 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %487
  %489 = load float, float addrspace(3)* %488, align 4
  store float %477, float* %469, align 4
  store float %483, float* %470, align 4
  store float %489, float* %471, align 4
  %490 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 5
  %491 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 5
  %492 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 5
  %493 = mul i32 %272, 16
  %494 = add i32 5, %493
  %495 = mul i32 %494, 3
  %496 = add i32 0, %495
  %497 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %496
  %498 = load float, float addrspace(3)* %497, align 4
  %499 = mul i32 %272, 16
  %500 = add i32 5, %499
  %501 = mul i32 %500, 3
  %502 = add i32 1, %501
  %503 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %502
  %504 = load float, float addrspace(3)* %503, align 4
  %505 = mul i32 %272, 16
  %506 = add i32 5, %505
  %507 = mul i32 %506, 3
  %508 = add i32 2, %507
  %509 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %508
  %510 = load float, float addrspace(3)* %509, align 4
  store float %498, float* %490, align 4
  store float %504, float* %491, align 4
  store float %510, float* %492, align 4
  %511 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 6
  %512 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 6
  %513 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 6
  %514 = mul i32 %272, 16
  %515 = add i32 6, %514
  %516 = mul i32 %515, 3
  %517 = add i32 0, %516
  %518 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %517
  %519 = load float, float addrspace(3)* %518, align 4
  %520 = mul i32 %272, 16
  %521 = add i32 6, %520
  %522 = mul i32 %521, 3
  %523 = add i32 1, %522
  %524 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %523
  %525 = load float, float addrspace(3)* %524, align 4
  %526 = mul i32 %272, 16
  %527 = add i32 6, %526
  %528 = mul i32 %527, 3
  %529 = add i32 2, %528
  %530 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %529
  %531 = load float, float addrspace(3)* %530, align 4
  store float %519, float* %511, align 4
  store float %525, float* %512, align 4
  store float %531, float* %513, align 4
  %532 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 7
  %533 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 7
  %534 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 7
  %535 = mul i32 %272, 16
  %536 = add i32 7, %535
  %537 = mul i32 %536, 3
  %538 = add i32 0, %537
  %539 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %538
  %540 = load float, float addrspace(3)* %539, align 4
  %541 = mul i32 %272, 16
  %542 = add i32 7, %541
  %543 = mul i32 %542, 3
  %544 = add i32 1, %543
  %545 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %544
  %546 = load float, float addrspace(3)* %545, align 4
  %547 = mul i32 %272, 16
  %548 = add i32 7, %547
  %549 = mul i32 %548, 3
  %550 = add i32 2, %549
  %551 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %550
  %552 = load float, float addrspace(3)* %551, align 4
  store float %540, float* %532, align 4
  store float %546, float* %533, align 4
  store float %552, float* %534, align 4
  %553 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 8
  %554 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 8
  %555 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 8
  %556 = mul i32 %272, 16
  %557 = add i32 8, %556
  %558 = mul i32 %557, 3
  %559 = add i32 0, %558
  %560 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %559
  %561 = load float, float addrspace(3)* %560, align 4
  %562 = mul i32 %272, 16
  %563 = add i32 8, %562
  %564 = mul i32 %563, 3
  %565 = add i32 1, %564
  %566 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %565
  %567 = load float, float addrspace(3)* %566, align 4
  %568 = mul i32 %272, 16
  %569 = add i32 8, %568
  %570 = mul i32 %569, 3
  %571 = add i32 2, %570
  %572 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %571
  %573 = load float, float addrspace(3)* %572, align 4
  store float %561, float* %553, align 4
  store float %567, float* %554, align 4
  store float %573, float* %555, align 4
  %574 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 9
  %575 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 9
  %576 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 9
  %577 = mul i32 %272, 16
  %578 = add i32 9, %577
  %579 = mul i32 %578, 3
  %580 = add i32 0, %579
  %581 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %580
  %582 = load float, float addrspace(3)* %581, align 4
  %583 = mul i32 %272, 16
  %584 = add i32 9, %583
  %585 = mul i32 %584, 3
  %586 = add i32 1, %585
  %587 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %586
  %588 = load float, float addrspace(3)* %587, align 4
  %589 = mul i32 %272, 16
  %590 = add i32 9, %589
  %591 = mul i32 %590, 3
  %592 = add i32 2, %591
  %593 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %592
  %594 = load float, float addrspace(3)* %593, align 4
  store float %582, float* %574, align 4
  store float %588, float* %575, align 4
  store float %594, float* %576, align 4
  %595 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 10
  %596 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 10
  %597 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 10
  %598 = mul i32 %272, 16
  %599 = add i32 10, %598
  %600 = mul i32 %599, 3
  %601 = add i32 0, %600
  %602 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %601
  %603 = load float, float addrspace(3)* %602, align 4
  %604 = mul i32 %272, 16
  %605 = add i32 10, %604
  %606 = mul i32 %605, 3
  %607 = add i32 1, %606
  %608 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %607
  %609 = load float, float addrspace(3)* %608, align 4
  %610 = mul i32 %272, 16
  %611 = add i32 10, %610
  %612 = mul i32 %611, 3
  %613 = add i32 2, %612
  %614 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %613
  %615 = load float, float addrspace(3)* %614, align 4
  store float %603, float* %595, align 4
  store float %609, float* %596, align 4
  store float %615, float* %597, align 4
  %616 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 11
  %617 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 11
  %618 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 11
  %619 = mul i32 %272, 16
  %620 = add i32 11, %619
  %621 = mul i32 %620, 3
  %622 = add i32 0, %621
  %623 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %622
  %624 = load float, float addrspace(3)* %623, align 4
  %625 = mul i32 %272, 16
  %626 = add i32 11, %625
  %627 = mul i32 %626, 3
  %628 = add i32 1, %627
  %629 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %628
  %630 = load float, float addrspace(3)* %629, align 4
  %631 = mul i32 %272, 16
  %632 = add i32 11, %631
  %633 = mul i32 %632, 3
  %634 = add i32 2, %633
  %635 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %634
  %636 = load float, float addrspace(3)* %635, align 4
  store float %624, float* %616, align 4
  store float %630, float* %617, align 4
  store float %636, float* %618, align 4
  %637 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 12
  %638 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 12
  %639 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 12
  %640 = mul i32 %272, 16
  %641 = add i32 12, %640
  %642 = mul i32 %641, 3
  %643 = add i32 0, %642
  %644 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %643
  %645 = load float, float addrspace(3)* %644, align 4
  %646 = mul i32 %272, 16
  %647 = add i32 12, %646
  %648 = mul i32 %647, 3
  %649 = add i32 1, %648
  %650 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %649
  %651 = load float, float addrspace(3)* %650, align 4
  %652 = mul i32 %272, 16
  %653 = add i32 12, %652
  %654 = mul i32 %653, 3
  %655 = add i32 2, %654
  %656 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %655
  %657 = load float, float addrspace(3)* %656, align 4
  store float %645, float* %637, align 4
  store float %651, float* %638, align 4
  store float %657, float* %639, align 4
  %658 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 13
  %659 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 13
  %660 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 13
  %661 = mul i32 %272, 16
  %662 = add i32 13, %661
  %663 = mul i32 %662, 3
  %664 = add i32 0, %663
  %665 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %664
  %666 = load float, float addrspace(3)* %665, align 4
  %667 = mul i32 %272, 16
  %668 = add i32 13, %667
  %669 = mul i32 %668, 3
  %670 = add i32 1, %669
  %671 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %670
  %672 = load float, float addrspace(3)* %671, align 4
  %673 = mul i32 %272, 16
  %674 = add i32 13, %673
  %675 = mul i32 %674, 3
  %676 = add i32 2, %675
  %677 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %676
  %678 = load float, float addrspace(3)* %677, align 4
  store float %666, float* %658, align 4
  store float %672, float* %659, align 4
  store float %678, float* %660, align 4
  %679 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 14
  %680 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 14
  %681 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 14
  %682 = mul i32 %272, 16
  %683 = add i32 14, %682
  %684 = mul i32 %683, 3
  %685 = add i32 0, %684
  %686 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %685
  %687 = load float, float addrspace(3)* %686, align 4
  %688 = mul i32 %272, 16
  %689 = add i32 14, %688
  %690 = mul i32 %689, 3
  %691 = add i32 1, %690
  %692 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %691
  %693 = load float, float addrspace(3)* %692, align 4
  %694 = mul i32 %272, 16
  %695 = add i32 14, %694
  %696 = mul i32 %695, 3
  %697 = add i32 2, %696
  %698 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %697
  %699 = load float, float addrspace(3)* %698, align 4
  store float %687, float* %679, align 4
  store float %693, float* %680, align 4
  store float %699, float* %681, align 4
  %700 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 15
  %701 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 15
  %702 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 15
  %703 = mul i32 %272, 16
  %704 = add i32 15, %703
  %705 = mul i32 %704, 3
  %706 = add i32 0, %705
  %707 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %706
  %708 = load float, float addrspace(3)* %707, align 4
  %709 = mul i32 %272, 16
  %710 = add i32 15, %709
  %711 = mul i32 %710, 3
  %712 = add i32 1, %711
  %713 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %712
  %714 = load float, float addrspace(3)* %713, align 4
  %715 = mul i32 %272, 16
  %716 = add i32 15, %715
  %717 = mul i32 %716, 3
  %718 = add i32 2, %717
  %719 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1Blocks@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %718
  %720 = load float, float addrspace(3)* %719, align 4
  store float %708, float* %700, align 4
  store float %714, float* %701, align 4
  store float %720, float* %702, align 4
  br label %721

; <label>:721                                     ; preds = %740, %383
  %722 = phi float [ %426, %383 ], [ %746, %740 ]
  %723 = phi float [ %420, %383 ], [ %744, %740 ]
  %724 = phi float [ %414, %383 ], [ %742, %740 ]
  %725 = phi float [ %393, %383 ], [ %732, %740 ]
  %726 = phi float [ %399, %383 ], [ %733, %740 ]
  %727 = phi float [ %405, %383 ], [ %734, %740 ]
  %728 = phi float [ %393, %383 ], [ %735, %740 ]
  %729 = phi float [ %399, %383 ], [ %736, %740 ]
  %730 = phi float [ %405, %383 ], [ %737, %740 ]
  %731 = phi i32 [ 1, %383 ], [ %738, %740 ]
  %732 = call float @dx.op.binary.f32(i32 36, float %725, float %724)  ; FMin(a,b)
  %733 = call float @dx.op.binary.f32(i32 36, float %726, float %723)  ; FMin(a,b)
  %734 = call float @dx.op.binary.f32(i32 36, float %727, float %722)  ; FMin(a,b)
  %735 = call float @dx.op.binary.f32(i32 35, float %728, float %724)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 35, float %729, float %723)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float %730, float %722)  ; FMax(a,b)
  %738 = add nuw nsw i32 %731, 1
  %739 = icmp eq i32 %738, 16
  br i1 %739, label %747, label %740

; <label>:740                                     ; preds = %721
  %741 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %738
  %742 = load float, float* %741, align 4
  %743 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %738
  %744 = load float, float* %743, align 4
  %745 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 %738
  %746 = load float, float* %745, align 4
  br label %721

; <label>:747                                     ; preds = %721
  %748 = lshr i32 %272, 3
  %749 = fsub fast float %735, %732
  %750 = fsub fast float %736, %733
  %751 = fsub fast float %737, %734
  %752 = fmul fast float %749, 6.250000e-02
  %753 = fmul fast float %750, 6.250000e-02
  %754 = fmul fast float %751, 6.250000e-02
  %755 = fsub fast float %735, %752
  %756 = fsub fast float %736, %753
  %757 = fsub fast float %737, %754
  %758 = fmul fast float %755, 6.375000e+01
  %759 = fmul fast float %756, 6.375000e+01
  %760 = fmul fast float %757, 6.375000e+01
  %761 = call float @dx.op.unary.f32(i32 28, float %758)  ; Round_pi(value)
  %762 = call float @dx.op.unary.f32(i32 28, float %759)  ; Round_pi(value)
  %763 = call float @dx.op.unary.f32(i32 28, float %760)  ; Round_pi(value)
  %764 = fmul fast float %761, 0x3F90101020000000
  %765 = fmul fast float %762, 0x3F90101020000000
  %766 = fmul fast float %763, 0x3F90101020000000
  %767 = fadd fast float %752, %732
  %768 = fadd fast float %753, %733
  %769 = fadd fast float %754, %734
  %770 = fmul fast float %767, 6.375000e+01
  %771 = fmul fast float %768, 6.375000e+01
  %772 = fmul fast float %769, 6.375000e+01
  %773 = call float @dx.op.unary.f32(i32 27, float %770)  ; Round_ni(value)
  %774 = call float @dx.op.unary.f32(i32 27, float %771)  ; Round_ni(value)
  %775 = call float @dx.op.unary.f32(i32 27, float %772)  ; Round_ni(value)
  %776 = fmul fast float %773, 0x3FBF1F1F40000000
  %777 = fmul fast float %774, 0x3FCF9F9FC0000000
  %778 = fmul fast float %775, 0x3FBF1F1F40000000
  %779 = call float @dx.op.unary.f32(i32 26, float %776)  ; Round_ne(value)
  %780 = call float @dx.op.unary.f32(i32 26, float %777)  ; Round_ne(value)
  %781 = call float @dx.op.unary.f32(i32 26, float %778)  ; Round_ne(value)
  %782 = fptoui float %779 to i32
  %783 = fptoui float %780 to i32
  %784 = fptoui float %781 to i32
  %785 = shl i32 %782, 11
  %786 = shl i32 %783, 5
  %787 = or i32 %786, %785
  %788 = or i32 %787, %784
  %789 = fmul fast float %761, 0x3FBF1F1F40000000
  %790 = fmul fast float %762, 0x3FCF9F9FC0000000
  %791 = fmul fast float %763, 0x3FBF1F1F40000000
  %792 = call float @dx.op.unary.f32(i32 26, float %789)  ; Round_ne(value)
  %793 = call float @dx.op.unary.f32(i32 26, float %790)  ; Round_ne(value)
  %794 = call float @dx.op.unary.f32(i32 26, float %791)  ; Round_ne(value)
  %795 = fptoui float %792 to i32
  %796 = fptoui float %793 to i32
  %797 = fptoui float %794 to i32
  %798 = shl i32 %795, 11
  %799 = shl i32 %796, 5
  %800 = or i32 %799, %798
  %801 = or i32 %800, %797
  %802 = icmp ult i32 %788, %801
  br i1 %802, label %803, label %851, !dx.controlflow.hints !19

; <label>:803                                     ; preds = %747
  %804 = fmul fast float %775, 0x3F90101020000000
  %805 = fmul fast float %774, 0x3F90101020000000
  %806 = fmul fast float %773, 0x3F90101020000000
  %807 = fsub fast float %773, %761
  %808 = fmul fast float %807, 0x3F90101020000000
  %809 = fsub fast float %774, %762
  %810 = fmul fast float %809, 0x3F90101020000000
  %811 = fsub fast float %775, %763
  %812 = fmul fast float %811, 0x3F90101020000000
  %813 = call float @dx.op.dot3.f32(i32 55, float %808, float %810, float %812, float %808, float %810, float %812)  ; Dot3(ax,ay,az,bx,by,bz)
  %814 = fdiv fast float 3.000000e+00, %813
  %815 = fmul fast float %814, %808
  %816 = fmul fast float %814, %810
  %817 = fmul fast float %814, %812
  %818 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float %764, float %765, float %766)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float %806, float %805, float %804)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = fsub fast float %818, %819
  %821 = fmul fast float %820, %814
  br label %822

; <label>:822                                     ; preds = %843, %803
  %823 = phi float [ %720, %803 ], [ %849, %843 ]
  %824 = phi float [ %714, %803 ], [ %847, %843 ]
  %825 = phi float [ %708, %803 ], [ %845, %843 ]
  %826 = phi i32 [ 15, %803 ], [ %841, %843 ]
  %827 = phi i32 [ 0, %803 ], [ %840, %843 ]
  %828 = call float @dx.op.dot3.f32(i32 55, float %825, float %824, float %823, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = fadd fast float %828, %821
  %830 = call float @dx.op.unary.f32(i32 26, float %829)  ; Round_ne(value)
  %831 = fptoui float %830 to i32
  %832 = and i32 %831, 1
  %833 = lshr i32 %831, 1
  %834 = xor i32 %832, %833
  %835 = shl nuw i32 %834, 1
  %836 = or i32 %833, %827
  %837 = or i32 %836, %835
  %838 = icmp ne i32 %826, 0
  %839 = shl i32 %837, 2
  %840 = select i1 %838, i32 %839, i32 %837
  %841 = add nsw i32 %826, -1
  %842 = icmp sgt i32 %826, 0
  br i1 %842, label %843, label %850

; <label>:843                                     ; preds = %822
  %844 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %841
  %845 = load float, float* %844, align 4
  %846 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %841
  %847 = load float, float* %846, align 4
  %848 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 %841
  %849 = load float, float* %848, align 4
  br label %822

; <label>:850                                     ; preds = %822
  br label %851

; <label>:851                                     ; preds = %850, %747
  %852 = phi i32 [ 0, %747 ], [ %840, %850 ]
  %853 = shl i32 %788, 16
  %854 = or i32 %801, %853
  %855 = shl i32 %10, 3
  %856 = shl i32 %273, 3
  %857 = or i32 %855, %384
  %858 = add i32 %856, %748
  %859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.i32 %859, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %857, i32 %858, i32 %860, i32 %854, i32 %852, i32 %854, i32 %854, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %861

; <label>:861                                     ; preds = %851, %376
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !12, !14}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !11}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 1, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!12 = !{!13}
!13 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @cs_bc1_compress_two_mips, !"cs_bc1_compress_two_mips", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 16, i32 16, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}

