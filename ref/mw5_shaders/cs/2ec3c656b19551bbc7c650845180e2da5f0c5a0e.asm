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
; shader hash: 2e1c1d57ca8254ac5d0f9fcbb85216ad
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t8     1
;                                   texture     f32          2d      T1            t10     1
;                                   texture     f32          2d      T2            t12     1
;                                       UAV     u32          2d      U0             u0     2
;                                       UAV     u32          2d      U1             u2     2
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_physical_texture_compress_mip1_from_scratch_2() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = alloca [16 x float], align 4
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = alloca [16 x float], align 4
  %15 = shl i32 %5, 2
  %16 = shl i32 %6, 2
  %17 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %18 = extractvalue %dx.types.Dimensions %17, 0
  %19 = extractvalue %dx.types.Dimensions %17, 1
  %20 = lshr i32 %18, 1
  %21 = uitofp i32 %20 to float
  %22 = lshr i32 %19, 1
  %23 = uitofp i32 %22 to float
  %24 = uitofp i32 %15 to float
  %25 = uitofp i32 %16 to float
  %26 = fadd fast float %24, 5.000000e-01
  %27 = fadd fast float %25, 5.000000e-01
  %28 = fdiv fast float %26, %21
  %29 = fdiv fast float %27, %23
  %30 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = extractvalue %dx.types.ResRet.f32 %38, 1
  %41 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 0
  %42 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  %43 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 0
  store float %31, float* %41, align 4
  store float %32, float* %42, align 4
  store float %33, float* %43, align 4
  %44 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 0
  store float %39, float* %44, align 4, !tbaa !19
  %45 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %46 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  %47 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 0
  store float %40, float* %45, align 4
  store float %35, float* %46, align 4
  store float %37, float* %47, align 4
  %48 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 0
  store float %36, float* %48, align 4, !tbaa !19
  %49 = or i32 %15, 1
  %50 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %51 = extractvalue %dx.types.Dimensions %50, 0
  %52 = extractvalue %dx.types.Dimensions %50, 1
  %53 = lshr i32 %51, 1
  %54 = uitofp i32 %53 to float
  %55 = lshr i32 %52, 1
  %56 = uitofp i32 %55 to float
  %57 = uitofp i32 %49 to float
  %58 = fadd fast float %57, 5.000000e-01
  %59 = fdiv fast float %58, %54
  %60 = fdiv fast float %27, %56
  %61 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = extractvalue %dx.types.ResRet.f32 %65, 1
  %68 = extractvalue %dx.types.ResRet.f32 %65, 2
  %69 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 1
  %73 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  %74 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 1
  store float %62, float* %72, align 4
  store float %63, float* %73, align 4
  store float %64, float* %74, align 4
  %75 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 1
  store float %70, float* %75, align 4, !tbaa !19
  %76 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %77 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  %78 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 1
  store float %71, float* %76, align 4
  store float %66, float* %77, align 4
  store float %68, float* %78, align 4
  %79 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 1
  store float %67, float* %79, align 4, !tbaa !19
  %80 = or i32 %15, 2
  %81 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %82 = extractvalue %dx.types.Dimensions %81, 0
  %83 = extractvalue %dx.types.Dimensions %81, 1
  %84 = lshr i32 %82, 1
  %85 = uitofp i32 %84 to float
  %86 = lshr i32 %83, 1
  %87 = uitofp i32 %86 to float
  %88 = uitofp i32 %80 to float
  %89 = fadd fast float %88, 5.000000e-01
  %90 = fdiv fast float %89, %85
  %91 = fdiv fast float %27, %87
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  %96 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = extractvalue %dx.types.ResRet.f32 %100, 1
  %103 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 2
  %104 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  %105 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 2
  store float %93, float* %103, align 4
  store float %94, float* %104, align 4
  store float %95, float* %105, align 4
  %106 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 2
  store float %101, float* %106, align 4, !tbaa !19
  %107 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %108 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  %109 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 2
  store float %102, float* %107, align 4
  store float %97, float* %108, align 4
  store float %99, float* %109, align 4
  %110 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 2
  store float %98, float* %110, align 4, !tbaa !19
  %111 = or i32 %15, 3
  %112 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %113 = extractvalue %dx.types.Dimensions %112, 0
  %114 = extractvalue %dx.types.Dimensions %112, 1
  %115 = lshr i32 %113, 1
  %116 = uitofp i32 %115 to float
  %117 = lshr i32 %114, 1
  %118 = uitofp i32 %117 to float
  %119 = uitofp i32 %111 to float
  %120 = fadd fast float %119, 5.000000e-01
  %121 = fdiv fast float %120, %116
  %122 = fdiv fast float %27, %118
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = extractvalue %dx.types.ResRet.f32 %123, 2
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = extractvalue %dx.types.ResRet.f32 %127, 2
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = extractvalue %dx.types.ResRet.f32 %131, 1
  %134 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 3
  %135 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  %136 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 3
  store float %124, float* %134, align 4
  store float %125, float* %135, align 4
  store float %126, float* %136, align 4
  %137 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 3
  store float %132, float* %137, align 4, !tbaa !19
  %138 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %139 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  %140 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 3
  store float %133, float* %138, align 4
  store float %128, float* %139, align 4
  store float %130, float* %140, align 4
  %141 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 3
  store float %129, float* %141, align 4, !tbaa !19
  %142 = or i32 %16, 1
  %143 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %144 = extractvalue %dx.types.Dimensions %143, 0
  %145 = extractvalue %dx.types.Dimensions %143, 1
  %146 = lshr i32 %144, 1
  %147 = uitofp i32 %146 to float
  %148 = lshr i32 %145, 1
  %149 = uitofp i32 %148 to float
  %150 = uitofp i32 %142 to float
  %151 = fadd fast float %150, 5.000000e-01
  %152 = fdiv fast float %26, %147
  %153 = fdiv fast float %151, %149
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 1
  %157 = extractvalue %dx.types.ResRet.f32 %154, 2
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 2
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = extractvalue %dx.types.ResRet.f32 %162, 1
  %165 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 4
  %166 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  %167 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 4
  store float %155, float* %165, align 4
  store float %156, float* %166, align 4
  store float %157, float* %167, align 4
  %168 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 4
  store float %163, float* %168, align 4, !tbaa !19
  %169 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %170 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  %171 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 4
  store float %164, float* %169, align 4
  store float %159, float* %170, align 4
  store float %161, float* %171, align 4
  %172 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 4
  store float %160, float* %172, align 4, !tbaa !19
  %173 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %174 = extractvalue %dx.types.Dimensions %173, 0
  %175 = extractvalue %dx.types.Dimensions %173, 1
  %176 = lshr i32 %174, 1
  %177 = uitofp i32 %176 to float
  %178 = lshr i32 %175, 1
  %179 = uitofp i32 %178 to float
  %180 = fdiv fast float %58, %177
  %181 = fdiv fast float %151, %179
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = extractvalue %dx.types.ResRet.f32 %182, 2
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = extractvalue %dx.types.ResRet.f32 %186, 2
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = extractvalue %dx.types.ResRet.f32 %190, 1
  %193 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 5
  %194 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  %195 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 5
  store float %183, float* %193, align 4
  store float %184, float* %194, align 4
  store float %185, float* %195, align 4
  %196 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 5
  store float %191, float* %196, align 4, !tbaa !19
  %197 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %198 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  %199 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 5
  store float %192, float* %197, align 4
  store float %187, float* %198, align 4
  store float %189, float* %199, align 4
  %200 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 5
  store float %188, float* %200, align 4, !tbaa !19
  %201 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %202 = extractvalue %dx.types.Dimensions %201, 0
  %203 = extractvalue %dx.types.Dimensions %201, 1
  %204 = lshr i32 %202, 1
  %205 = uitofp i32 %204 to float
  %206 = lshr i32 %203, 1
  %207 = uitofp i32 %206 to float
  %208 = fdiv fast float %89, %205
  %209 = fdiv fast float %151, %207
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = extractvalue %dx.types.ResRet.f32 %210, 1
  %213 = extractvalue %dx.types.ResRet.f32 %210, 2
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = extractvalue %dx.types.ResRet.f32 %214, 1
  %217 = extractvalue %dx.types.ResRet.f32 %214, 2
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 6
  %222 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  %223 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 6
  store float %211, float* %221, align 4
  store float %212, float* %222, align 4
  store float %213, float* %223, align 4
  %224 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 6
  store float %219, float* %224, align 4, !tbaa !19
  %225 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %226 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  %227 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 6
  store float %220, float* %225, align 4
  store float %215, float* %226, align 4
  store float %217, float* %227, align 4
  %228 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 6
  store float %216, float* %228, align 4, !tbaa !19
  %229 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %230 = extractvalue %dx.types.Dimensions %229, 0
  %231 = extractvalue %dx.types.Dimensions %229, 1
  %232 = lshr i32 %230, 1
  %233 = uitofp i32 %232 to float
  %234 = lshr i32 %231, 1
  %235 = uitofp i32 %234 to float
  %236 = fdiv fast float %120, %233
  %237 = fdiv fast float %151, %235
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %236, float %237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %236, float %237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %236, float %237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 7
  %250 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  %251 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 7
  store float %239, float* %249, align 4
  store float %240, float* %250, align 4
  store float %241, float* %251, align 4
  %252 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 7
  store float %247, float* %252, align 4, !tbaa !19
  %253 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %254 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  %255 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 7
  store float %248, float* %253, align 4
  store float %243, float* %254, align 4
  store float %245, float* %255, align 4
  %256 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 7
  store float %244, float* %256, align 4, !tbaa !19
  %257 = or i32 %16, 2
  %258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %259 = extractvalue %dx.types.Dimensions %258, 0
  %260 = extractvalue %dx.types.Dimensions %258, 1
  %261 = lshr i32 %259, 1
  %262 = uitofp i32 %261 to float
  %263 = lshr i32 %260, 1
  %264 = uitofp i32 %263 to float
  %265 = uitofp i32 %257 to float
  %266 = fadd fast float %265, 5.000000e-01
  %267 = fdiv fast float %26, %262
  %268 = fdiv fast float %266, %264
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 8
  %281 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  %282 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 8
  store float %270, float* %280, align 4
  store float %271, float* %281, align 4
  store float %272, float* %282, align 4
  %283 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 8
  store float %278, float* %283, align 4, !tbaa !19
  %284 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %285 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  %286 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 8
  store float %279, float* %284, align 4
  store float %274, float* %285, align 4
  store float %276, float* %286, align 4
  %287 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 8
  store float %275, float* %287, align 4, !tbaa !19
  %288 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %289 = extractvalue %dx.types.Dimensions %288, 0
  %290 = extractvalue %dx.types.Dimensions %288, 1
  %291 = lshr i32 %289, 1
  %292 = uitofp i32 %291 to float
  %293 = lshr i32 %290, 1
  %294 = uitofp i32 %293 to float
  %295 = fdiv fast float %58, %292
  %296 = fdiv fast float %266, %294
  %297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %295, float %296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %295, float %296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %295, float %296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 9
  %309 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  %310 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 9
  store float %298, float* %308, align 4
  store float %299, float* %309, align 4
  store float %300, float* %310, align 4
  %311 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 9
  store float %306, float* %311, align 4, !tbaa !19
  %312 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %313 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  %314 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 9
  store float %307, float* %312, align 4
  store float %302, float* %313, align 4
  store float %304, float* %314, align 4
  %315 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 9
  store float %303, float* %315, align 4, !tbaa !19
  %316 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %317 = extractvalue %dx.types.Dimensions %316, 0
  %318 = extractvalue %dx.types.Dimensions %316, 1
  %319 = lshr i32 %317, 1
  %320 = uitofp i32 %319 to float
  %321 = lshr i32 %318, 1
  %322 = uitofp i32 %321 to float
  %323 = fdiv fast float %89, %320
  %324 = fdiv fast float %266, %322
  %325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %323, float %324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  %329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %323, float %324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = extractvalue %dx.types.ResRet.f32 %329, 2
  %333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %323, float %324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 10
  %337 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  %338 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 10
  store float %326, float* %336, align 4
  store float %327, float* %337, align 4
  store float %328, float* %338, align 4
  %339 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 10
  store float %334, float* %339, align 4, !tbaa !19
  %340 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %341 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  %342 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 10
  store float %335, float* %340, align 4
  store float %330, float* %341, align 4
  store float %332, float* %342, align 4
  %343 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 10
  store float %331, float* %343, align 4, !tbaa !19
  %344 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %345 = extractvalue %dx.types.Dimensions %344, 0
  %346 = extractvalue %dx.types.Dimensions %344, 1
  %347 = lshr i32 %345, 1
  %348 = uitofp i32 %347 to float
  %349 = lshr i32 %346, 1
  %350 = uitofp i32 %349 to float
  %351 = fdiv fast float %120, %348
  %352 = fdiv fast float %266, %350
  %353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = extractvalue %dx.types.ResRet.f32 %357, 1
  %360 = extractvalue %dx.types.ResRet.f32 %357, 2
  %361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 11
  %365 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  %366 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 11
  store float %354, float* %364, align 4
  store float %355, float* %365, align 4
  store float %356, float* %366, align 4
  %367 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 11
  store float %362, float* %367, align 4, !tbaa !19
  %368 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %369 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  %370 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 11
  store float %363, float* %368, align 4
  store float %358, float* %369, align 4
  store float %360, float* %370, align 4
  %371 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 11
  store float %359, float* %371, align 4, !tbaa !19
  %372 = or i32 %16, 3
  %373 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %374 = extractvalue %dx.types.Dimensions %373, 0
  %375 = extractvalue %dx.types.Dimensions %373, 1
  %376 = lshr i32 %374, 1
  %377 = uitofp i32 %376 to float
  %378 = lshr i32 %375, 1
  %379 = uitofp i32 %378 to float
  %380 = uitofp i32 %372 to float
  %381 = fadd fast float %380, 5.000000e-01
  %382 = fdiv fast float %26, %377
  %383 = fdiv fast float %381, %379
  %384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %382, float %383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = extractvalue %dx.types.ResRet.f32 %384, 2
  %388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %382, float %383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %382, float %383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 12
  %396 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  %397 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 12
  store float %385, float* %395, align 4
  store float %386, float* %396, align 4
  store float %387, float* %397, align 4
  %398 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 12
  store float %393, float* %398, align 4, !tbaa !19
  %399 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %400 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  %401 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 12
  store float %394, float* %399, align 4
  store float %389, float* %400, align 4
  store float %391, float* %401, align 4
  %402 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 12
  store float %390, float* %402, align 4, !tbaa !19
  %403 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %404 = extractvalue %dx.types.Dimensions %403, 0
  %405 = extractvalue %dx.types.Dimensions %403, 1
  %406 = lshr i32 %404, 1
  %407 = uitofp i32 %406 to float
  %408 = lshr i32 %405, 1
  %409 = uitofp i32 %408 to float
  %410 = fdiv fast float %58, %407
  %411 = fdiv fast float %381, %409
  %412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 13
  %424 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  %425 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 13
  store float %413, float* %423, align 4
  store float %414, float* %424, align 4
  store float %415, float* %425, align 4
  %426 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 13
  store float %421, float* %426, align 4, !tbaa !19
  %427 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %428 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  %429 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 13
  store float %422, float* %427, align 4
  store float %417, float* %428, align 4
  store float %419, float* %429, align 4
  %430 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 13
  store float %418, float* %430, align 4, !tbaa !19
  %431 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %432 = extractvalue %dx.types.Dimensions %431, 0
  %433 = extractvalue %dx.types.Dimensions %431, 1
  %434 = lshr i32 %432, 1
  %435 = uitofp i32 %434 to float
  %436 = lshr i32 %433, 1
  %437 = uitofp i32 %436 to float
  %438 = fdiv fast float %89, %435
  %439 = fdiv fast float %381, %437
  %440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %438, float %439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %438, float %439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %438, float %439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 14
  %452 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  %453 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 14
  store float %441, float* %451, align 4
  store float %442, float* %452, align 4
  store float %443, float* %453, align 4
  %454 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 14
  store float %449, float* %454, align 4, !tbaa !19
  %455 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %456 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  %457 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 14
  store float %450, float* %455, align 4
  store float %445, float* %456, align 4
  store float %447, float* %457, align 4
  %458 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 14
  store float %446, float* %458, align 4, !tbaa !19
  %459 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %460 = extractvalue %dx.types.Dimensions %459, 0
  %461 = extractvalue %dx.types.Dimensions %459, 1
  %462 = lshr i32 %460, 1
  %463 = uitofp i32 %462 to float
  %464 = lshr i32 %461, 1
  %465 = uitofp i32 %464 to float
  %466 = fdiv fast float %120, %463
  %467 = fdiv fast float %381, %465
  %468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 15
  %480 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  %481 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 15
  store float %469, float* %479, align 4
  store float %470, float* %480, align 4
  store float %471, float* %481, align 4
  %482 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 15
  store float %477, float* %482, align 4, !tbaa !19
  %483 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %484 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  %485 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 15
  store float %478, float* %483, align 4
  store float %473, float* %484, align 4
  store float %475, float* %485, align 4
  %486 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 15
  store float %474, float* %486, align 4, !tbaa !19
  %487 = load float, float* %41, align 4
  %488 = load float, float* %42, align 4
  %489 = load float, float* %43, align 4
  br label %490

; <label>:490                                     ; preds = %490, %0
  %491 = phi i32 [ 1, %0 ], [ %510, %490 ]
  %492 = phi float [ %487, %0 ], [ %504, %490 ]
  %493 = phi float [ %488, %0 ], [ %505, %490 ]
  %494 = phi float [ %489, %0 ], [ %506, %490 ]
  %495 = phi float [ %487, %0 ], [ %507, %490 ]
  %496 = phi float [ %488, %0 ], [ %508, %490 ]
  %497 = phi float [ %489, %0 ], [ %509, %490 ]
  %498 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %491
  %499 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %491
  %500 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %491
  %501 = load float, float* %498, align 4
  %502 = load float, float* %499, align 4
  %503 = load float, float* %500, align 4
  %504 = call float @dx.op.binary.f32(i32 36, float %492, float %501)  ; FMin(a,b)
  %505 = call float @dx.op.binary.f32(i32 36, float %493, float %502)  ; FMin(a,b)
  %506 = call float @dx.op.binary.f32(i32 36, float %494, float %503)  ; FMin(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %495, float %501)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 35, float %496, float %502)  ; FMax(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float %497, float %503)  ; FMax(a,b)
  %510 = add nuw nsw i32 %491, 1
  %511 = icmp eq i32 %510, 16
  br i1 %511, label %512, label %490

; <label>:512                                     ; preds = %490
  %513 = load float, float* %44, align 4, !tbaa !19, !noalias !23
  br label %514

; <label>:514                                     ; preds = %514, %512
  %515 = phi i32 [ 1, %512 ], [ %522, %514 ]
  %516 = phi float [ %513, %512 ], [ %520, %514 ]
  %517 = phi float [ %513, %512 ], [ %521, %514 ]
  %518 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 %515
  %519 = load float, float* %518, align 4, !tbaa !19, !noalias !23
  %520 = call float @dx.op.binary.f32(i32 36, float %516, float %519)  ; FMin(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %517, float %519)  ; FMax(a,b)
  %522 = add nuw nsw i32 %515, 1
  %523 = icmp eq i32 %522, 16
  br i1 %523, label %524, label %514

; <label>:524                                     ; preds = %514
  %525 = fsub fast float %507, %504
  %526 = fsub fast float %508, %505
  %527 = fsub fast float %509, %506
  %528 = fmul fast float %525, 6.250000e-02
  %529 = fmul fast float %526, 6.250000e-02
  %530 = fmul fast float %527, 6.250000e-02
  %531 = fsub fast float %507, %528
  %532 = fsub fast float %508, %529
  %533 = fsub fast float %509, %530
  %534 = fmul fast float %531, 2.550000e+02
  %535 = fmul fast float %532, 2.550000e+02
  %536 = fmul fast float %533, 2.550000e+02
  %537 = call float @dx.op.unary.f32(i32 28, float %534)  ; Round_pi(value)
  %538 = call float @dx.op.unary.f32(i32 28, float %535)  ; Round_pi(value)
  %539 = call float @dx.op.unary.f32(i32 28, float %536)  ; Round_pi(value)
  %540 = fmul fast float %537, 0x3F70101020000000
  %541 = fmul fast float %538, 0x3F70101020000000
  %542 = fmul fast float %539, 0x3F70101020000000
  %543 = fadd fast float %528, %504
  %544 = fadd fast float %529, %505
  %545 = fadd fast float %530, %506
  %546 = fmul fast float %543, 2.550000e+02
  %547 = fmul fast float %544, 2.550000e+02
  %548 = fmul fast float %545, 2.550000e+02
  %549 = call float @dx.op.unary.f32(i32 27, float %546)  ; Round_ni(value)
  %550 = call float @dx.op.unary.f32(i32 27, float %547)  ; Round_ni(value)
  %551 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %552 = fmul fast float %549, 0x3FBF1F1F40000000
  %553 = fmul fast float %550, 0x3FCF9F9FC0000000
  %554 = fmul fast float %551, 0x3FBF1F1F40000000
  %555 = call float @dx.op.unary.f32(i32 26, float %552)  ; Round_ne(value)
  %556 = call float @dx.op.unary.f32(i32 26, float %553)  ; Round_ne(value)
  %557 = call float @dx.op.unary.f32(i32 26, float %554)  ; Round_ne(value)
  %558 = fptoui float %555 to i32
  %559 = fptoui float %556 to i32
  %560 = fptoui float %557 to i32
  %561 = shl i32 %558, 11
  %562 = shl i32 %559, 5
  %563 = or i32 %562, %561
  %564 = or i32 %563, %560
  %565 = fmul fast float %537, 0x3FBF1F1F40000000
  %566 = fmul fast float %538, 0x3FCF9F9FC0000000
  %567 = fmul fast float %539, 0x3FBF1F1F40000000
  %568 = call float @dx.op.unary.f32(i32 26, float %565)  ; Round_ne(value)
  %569 = call float @dx.op.unary.f32(i32 26, float %566)  ; Round_ne(value)
  %570 = call float @dx.op.unary.f32(i32 26, float %567)  ; Round_ne(value)
  %571 = fptoui float %568 to i32
  %572 = fptoui float %569 to i32
  %573 = fptoui float %570 to i32
  %574 = shl i32 %571, 11
  %575 = shl i32 %572, 5
  %576 = or i32 %575, %574
  %577 = or i32 %576, %573
  %578 = fmul fast float %520, 2.550000e+02
  %579 = call float @dx.op.unary.f32(i32 26, float %578)  ; Round_ne(value)
  %580 = fptoui float %579 to i32
  %581 = fmul fast float %521, 2.550000e+02
  %582 = call float @dx.op.unary.f32(i32 26, float %581)  ; Round_ne(value)
  %583 = fptoui float %582 to i32
  %584 = icmp ult i32 %564, %577
  br i1 %584, label %585, label %633, !dx.controlflow.hints !27

; <label>:585                                     ; preds = %524
  %586 = fmul fast float %551, 0x3F70101020000000
  %587 = fmul fast float %550, 0x3F70101020000000
  %588 = fmul fast float %549, 0x3F70101020000000
  %589 = fsub fast float %549, %537
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = fsub fast float %550, %538
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = fsub fast float %551, %539
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = call float @dx.op.dot3.f32(i32 55, float %590, float %592, float %594, float %590, float %592, float %594)  ; Dot3(ax,ay,az,bx,by,bz)
  %596 = fdiv fast float 3.000000e+00, %595
  %597 = fmul fast float %596, %590
  %598 = fmul fast float %596, %592
  %599 = fmul fast float %596, %594
  %600 = call float @dx.op.dot3.f32(i32 55, float %540, float %541, float %542, float %540, float %541, float %542)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = call float @dx.op.dot3.f32(i32 55, float %540, float %541, float %542, float %588, float %587, float %586)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = fsub fast float %600, %601
  %603 = fmul fast float %602, %596
  br label %604

; <label>:604                                     ; preds = %625, %585
  %605 = phi float [ %471, %585 ], [ %631, %625 ]
  %606 = phi float [ %470, %585 ], [ %629, %625 ]
  %607 = phi float [ %469, %585 ], [ %627, %625 ]
  %608 = phi i32 [ 15, %585 ], [ %623, %625 ]
  %609 = phi i32 [ 0, %585 ], [ %622, %625 ]
  %610 = call float @dx.op.dot3.f32(i32 55, float %607, float %606, float %605, float %597, float %598, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = fadd fast float %610, %603
  %612 = call float @dx.op.unary.f32(i32 26, float %611)  ; Round_ne(value)
  %613 = fptoui float %612 to i32
  %614 = and i32 %613, 1
  %615 = lshr i32 %613, 1
  %616 = xor i32 %614, %615
  %617 = shl nuw i32 %616, 1
  %618 = or i32 %615, %609
  %619 = or i32 %618, %617
  %620 = icmp ne i32 %608, 0
  %621 = shl i32 %619, 2
  %622 = select i1 %620, i32 %621, i32 %619
  %623 = add nsw i32 %608, -1
  %624 = icmp sgt i32 %608, 0
  br i1 %624, label %625, label %632

; <label>:625                                     ; preds = %604
  %626 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %623
  %627 = load float, float* %626, align 4
  %628 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %623
  %629 = load float, float* %628, align 4
  %630 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %623
  %631 = load float, float* %630, align 4
  br label %604

; <label>:632                                     ; preds = %604
  br label %633

; <label>:633                                     ; preds = %632, %524
  %634 = phi i32 [ 0, %524 ], [ %622, %632 ]
  %635 = shl i32 %580, 8
  %636 = or i32 %635, %583
  %637 = icmp ult i32 %580, %583
  br i1 %637, label %638, label %752, !dx.controlflow.hints !28

; <label>:638                                     ; preds = %633
  %639 = fsub fast float %520, %521
  %640 = fdiv fast float 7.000000e+00, %639
  %641 = fsub fast float %513, %521
  %642 = fmul fast float %641, %640
  %643 = call float @dx.op.unary.f32(i32 26, float %642)  ; Round_ne(value)
  %644 = fptoui float %643 to i32
  %645 = icmp ne i32 %644, 0
  %646 = zext i1 %645 to i32
  %647 = icmp eq i32 %644, 7
  %648 = select i1 %647, i32 65529, i32 0
  %649 = add i32 %648, %644
  %650 = add i32 %649, %646
  %651 = shl i32 %650, 16
  %652 = load float, float* %75, align 4, !tbaa !19, !noalias !29
  %653 = fsub fast float %652, %521
  %654 = fmul fast float %653, %640
  %655 = call float @dx.op.unary.f32(i32 26, float %654)  ; Round_ne(value)
  %656 = fptoui float %655 to i32
  %657 = icmp ne i32 %656, 0
  %658 = zext i1 %657 to i32
  %659 = icmp eq i32 %656, 7
  %660 = select i1 %659, i32 8185, i32 0
  %661 = add i32 %660, %656
  %662 = add i32 %661, %658
  %663 = shl i32 %662, 19
  %664 = load float, float* %106, align 4, !tbaa !19, !noalias !29
  %665 = fsub fast float %664, %521
  %666 = fmul fast float %665, %640
  %667 = call float @dx.op.unary.f32(i32 26, float %666)  ; Round_ne(value)
  %668 = fptoui float %667 to i32
  %669 = icmp ne i32 %668, 0
  %670 = zext i1 %669 to i32
  %671 = icmp eq i32 %668, 7
  %672 = select i1 %671, i32 1017, i32 0
  %673 = add i32 %672, %668
  %674 = add i32 %673, %670
  %675 = shl i32 %674, 22
  %676 = load float, float* %137, align 4, !tbaa !19, !noalias !29
  %677 = fsub fast float %676, %521
  %678 = fmul fast float %677, %640
  %679 = call float @dx.op.unary.f32(i32 26, float %678)  ; Round_ne(value)
  %680 = fptoui float %679 to i32
  %681 = icmp ne i32 %680, 0
  %682 = zext i1 %681 to i32
  %683 = icmp eq i32 %680, 7
  %684 = select i1 %683, i32 121, i32 0
  %685 = add i32 %684, %680
  %686 = add i32 %685, %682
  %687 = shl i32 %686, 25
  %688 = load float, float* %168, align 4, !tbaa !19, !noalias !29
  %689 = fsub fast float %688, %521
  %690 = fmul fast float %689, %640
  %691 = call float @dx.op.unary.f32(i32 26, float %690)  ; Round_ne(value)
  %692 = fptoui float %691 to i32
  %693 = icmp ne i32 %692, 0
  %694 = zext i1 %693 to i32
  %695 = icmp eq i32 %692, 7
  %696 = select i1 %695, i32 9, i32 0
  %697 = add i32 %696, %692
  %698 = add i32 %697, %694
  %699 = shl i32 %698, 28
  %700 = fsub fast float %191, %521
  %701 = fmul fast float %700, %640
  %702 = call float @dx.op.unary.f32(i32 26, float %701)  ; Round_ne(value)
  %703 = fptoui float %702 to i32
  %704 = icmp ne i32 %703, 0
  %705 = zext i1 %704 to i32
  %706 = icmp eq i32 %703, 7
  %707 = select i1 %706, i32 7, i32 0
  %708 = sub nsw i32 %705, %707
  %709 = add i32 %708, %703
  %710 = shl i32 %709, 31
  %711 = lshr i32 %709, 1
  %712 = fsub fast float %219, %521
  %713 = fmul fast float %712, %640
  %714 = call float @dx.op.unary.f32(i32 26, float %713)  ; Round_ne(value)
  %715 = fptoui float %714 to i32
  %716 = icmp ne i32 %715, 0
  %717 = zext i1 %716 to i32
  %718 = icmp eq i32 %715, 7
  %719 = select i1 %718, i32 1073741817, i32 0
  %720 = add i32 %719, %715
  %721 = add i32 %720, %717
  %722 = shl i32 %721, 2
  %723 = or i32 %722, %711
  br label %724

; <label>:724                                     ; preds = %724, %638
  %725 = phi i32 [ 7, %638 ], [ %743, %724 ]
  %726 = phi i32 [ %723, %638 ], [ %742, %724 ]
  %727 = phi i32 [ 2, %638 ], [ %728, %724 ]
  %728 = add nuw nsw i32 %727, 3
  %729 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 %725
  %730 = load float, float* %729, align 4, !tbaa !19, !noalias !29
  %731 = fsub fast float %730, %521
  %732 = fmul fast float %731, %640
  %733 = call float @dx.op.unary.f32(i32 26, float %732)  ; Round_ne(value)
  %734 = fptoui float %733 to i32
  %735 = icmp ne i32 %734, 0
  %736 = zext i1 %735 to i32
  %737 = icmp eq i32 %734, 7
  %738 = select i1 %737, i32 -7, i32 0
  %739 = add i32 %738, %734
  %740 = add i32 %739, %736
  %741 = shl i32 %740, %728
  %742 = or i32 %741, %726
  %743 = add nuw nsw i32 %725, 1
  %744 = icmp eq i32 %743, 16
  br i1 %744, label %745, label %724

; <label>:745                                     ; preds = %724
  %746 = or i32 %651, %636
  %747 = or i32 %746, %663
  %748 = or i32 %747, %675
  %749 = or i32 %748, %687
  %750 = or i32 %749, %699
  %751 = or i32 %750, %710
  br label %752

; <label>:752                                     ; preds = %745, %633
  %753 = phi i32 [ %636, %633 ], [ %751, %745 ]
  %754 = phi i32 [ 0, %633 ], [ %742, %745 ]
  %755 = shl i32 %564, 16
  %756 = or i32 %577, %755
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %757, i32 %5, i32 %6, i32 undef, i32 %753, i32 %754, i32 %756, i32 %634, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %758 = load float, float* %45, align 4
  %759 = load float, float* %46, align 4
  %760 = load float, float* %47, align 4
  br label %761

; <label>:761                                     ; preds = %761, %752
  %762 = phi float [ %758, %752 ], [ %778, %761 ]
  %763 = phi float [ %759, %752 ], [ %779, %761 ]
  %764 = phi float [ %760, %752 ], [ %780, %761 ]
  %765 = phi float [ %758, %752 ], [ %781, %761 ]
  %766 = phi float [ %759, %752 ], [ %782, %761 ]
  %767 = phi float [ %760, %752 ], [ %783, %761 ]
  %768 = phi float [ %758, %752 ], [ %784, %761 ]
  %769 = phi float [ %759, %752 ], [ %785, %761 ]
  %770 = phi float [ %760, %752 ], [ %786, %761 ]
  %771 = phi i32 [ 1, %752 ], [ %787, %761 ]
  %772 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %771
  %773 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %771
  %774 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %771
  %775 = load float, float* %772, align 4
  %776 = load float, float* %773, align 4
  %777 = load float, float* %774, align 4
  %778 = fadd fast float %775, %762
  %779 = fadd fast float %776, %763
  %780 = fadd fast float %777, %764
  %781 = call float @dx.op.binary.f32(i32 36, float %765, float %775)  ; FMin(a,b)
  %782 = call float @dx.op.binary.f32(i32 36, float %766, float %776)  ; FMin(a,b)
  %783 = call float @dx.op.binary.f32(i32 36, float %767, float %777)  ; FMin(a,b)
  %784 = call float @dx.op.binary.f32(i32 35, float %768, float %775)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 35, float %769, float %776)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 35, float %770, float %777)  ; FMax(a,b)
  %787 = add nuw nsw i32 %771, 1
  %788 = icmp eq i32 %787, 16
  br i1 %788, label %789, label %761

; <label>:789                                     ; preds = %761
  %790 = fadd fast float %778, 3.125000e-02
  %791 = fadd fast float %779, 3.125000e-02
  %792 = fadd fast float %780, 3.125000e-02
  %793 = fmul fast float %790, 6.250000e-02
  %794 = fmul fast float %791, 6.250000e-02
  %795 = fmul fast float %792, 6.250000e-02
  br label %796

; <label>:796                                     ; preds = %824, %789
  %797 = phi float [ %760, %789 ], [ %830, %824 ]
  %798 = phi float [ %759, %789 ], [ %828, %824 ]
  %799 = phi float [ %758, %789 ], [ %826, %824 ]
  %800 = phi float [ 0.000000e+00, %789 ], [ %821, %824 ]
  %801 = phi float [ 0.000000e+00, %789 ], [ %819, %824 ]
  %802 = phi float [ 0.000000e+00, %789 ], [ %817, %824 ]
  %803 = phi float [ 0.000000e+00, %789 ], [ %815, %824 ]
  %804 = phi float [ 0.000000e+00, %789 ], [ %813, %824 ]
  %805 = phi float [ 0.000000e+00, %789 ], [ %811, %824 ]
  %806 = phi i32 [ 0, %789 ], [ %822, %824 ]
  %807 = fsub fast float %799, %793
  %808 = fsub fast float %798, %794
  %809 = fsub fast float %797, %795
  %810 = fmul fast float %807, %807
  %811 = fadd fast float %810, %805
  %812 = fmul fast float %808, %807
  %813 = fadd fast float %812, %804
  %814 = fmul fast float %809, %807
  %815 = fadd fast float %814, %803
  %816 = fmul fast float %808, %808
  %817 = fadd fast float %816, %802
  %818 = fmul fast float %809, %808
  %819 = fadd fast float %818, %801
  %820 = fmul fast float %809, %809
  %821 = fadd fast float %820, %800
  %822 = add nuw nsw i32 %806, 1
  %823 = icmp eq i32 %822, 16
  br i1 %823, label %831, label %824

; <label>:824                                     ; preds = %796
  %825 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %822
  %826 = load float, float* %825, align 4
  %827 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %822
  %828 = load float, float* %827, align 4
  %829 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %822
  %830 = load float, float* %829, align 4
  br label %796

; <label>:831                                     ; preds = %796
  %832 = fsub fast float %784, %781
  %833 = fsub fast float %785, %782
  %834 = fsub fast float %786, %783
  %835 = call float @dx.op.dot3.f32(i32 55, float %832, float %833, float %834, float %811, float %813, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %836 = call float @dx.op.dot3.f32(i32 55, float %832, float %833, float %834, float %813, float %817, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %837 = call float @dx.op.dot3.f32(i32 55, float %832, float %833, float %834, float %815, float %819, float %821)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = call float @dx.op.dot3.f32(i32 55, float %835, float %836, float %837, float %811, float %813, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %839 = call float @dx.op.dot3.f32(i32 55, float %835, float %836, float %837, float %813, float %817, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = call float @dx.op.dot3.f32(i32 55, float %835, float %836, float %837, float %815, float %819, float %821)  ; Dot3(ax,ay,az,bx,by,bz)
  %841 = call float @dx.op.dot3.f32(i32 55, float %838, float %839, float %840, float %811, float %813, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %842 = call float @dx.op.dot3.f32(i32 55, float %838, float %839, float %840, float %813, float %817, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = call float @dx.op.dot3.f32(i32 55, float %838, float %839, float %840, float %815, float %819, float %821)  ; Dot3(ax,ay,az,bx,by,bz)
  %844 = call float @dx.op.dot3.f32(i32 55, float %841, float %842, float %843, float %811, float %813, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = call float @dx.op.dot3.f32(i32 55, float %841, float %842, float %843, float %813, float %817, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = call float @dx.op.dot3.f32(i32 55, float %841, float %842, float %843, float %815, float %819, float %821)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = call float @dx.op.dot3.f32(i32 55, float %758, float %759, float %760, float %844, float %845, float %846)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %848

; <label>:848                                     ; preds = %874, %831
  %849 = phi i32 [ 1, %831 ], [ %879, %874 ]
  %850 = phi float [ %847, %831 ], [ %868, %874 ]
  %851 = phi float [ %847, %831 ], [ %875, %874 ]
  %852 = phi float [ %758, %831 ], [ %869, %874 ]
  %853 = phi float [ %759, %831 ], [ %870, %874 ]
  %854 = phi float [ %760, %831 ], [ %871, %874 ]
  %855 = phi float [ %758, %831 ], [ %876, %874 ]
  %856 = phi float [ %759, %831 ], [ %877, %874 ]
  %857 = phi float [ %760, %831 ], [ %878, %874 ]
  %858 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %849
  %859 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %849
  %860 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %849
  %861 = load float, float* %858, align 4
  %862 = load float, float* %859, align 4
  %863 = load float, float* %860, align 4
  %864 = call float @dx.op.dot3.f32(i32 55, float %861, float %862, float %863, float %844, float %845, float %846)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = fcmp fast olt float %864, %850
  br i1 %865, label %866, label %867, !dx.controlflow.hints !32

; <label>:866                                     ; preds = %848
  br label %867

; <label>:867                                     ; preds = %866, %848
  %868 = phi float [ %864, %866 ], [ %850, %848 ]
  %869 = phi float [ %861, %866 ], [ %852, %848 ]
  %870 = phi float [ %862, %866 ], [ %853, %848 ]
  %871 = phi float [ %863, %866 ], [ %854, %848 ]
  %872 = fcmp fast ogt float %864, %851
  br i1 %872, label %873, label %874, !dx.controlflow.hints !33

; <label>:873                                     ; preds = %867
  br label %874

; <label>:874                                     ; preds = %873, %867
  %875 = phi float [ %864, %873 ], [ %851, %867 ]
  %876 = phi float [ %861, %873 ], [ %855, %867 ]
  %877 = phi float [ %862, %873 ], [ %856, %867 ]
  %878 = phi float [ %863, %873 ], [ %857, %867 ]
  %879 = add nuw nsw i32 %849, 1
  %880 = icmp eq i32 %879, 16
  br i1 %880, label %881, label %848

; <label>:881                                     ; preds = %874
  %882 = load float, float* %48, align 4, !tbaa !19, !noalias !34
  br label %883

; <label>:883                                     ; preds = %883, %881
  %884 = phi float [ %882, %881 ], [ %890, %883 ]
  %885 = phi float [ %882, %881 ], [ %889, %883 ]
  %886 = phi i32 [ 1, %881 ], [ %891, %883 ]
  %887 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 %886
  %888 = load float, float* %887, align 4, !tbaa !19, !noalias !34
  %889 = call float @dx.op.binary.f32(i32 36, float %885, float %888)  ; FMin(a,b)
  %890 = call float @dx.op.binary.f32(i32 35, float %884, float %888)  ; FMax(a,b)
  %891 = add nuw nsw i32 %886, 1
  %892 = icmp eq i32 %891, 16
  br i1 %892, label %893, label %883

; <label>:893                                     ; preds = %883
  %894 = fsub fast float %876, %869
  %895 = fsub fast float %877, %870
  %896 = fsub fast float %878, %871
  %897 = fmul fast float %894, 6.250000e-02
  %898 = fmul fast float %895, 6.250000e-02
  %899 = fmul fast float %896, 6.250000e-02
  %900 = fsub fast float %876, %897
  %901 = fsub fast float %877, %898
  %902 = fsub fast float %878, %899
  %903 = fmul fast float %900, 2.550000e+02
  %904 = fmul fast float %901, 2.550000e+02
  %905 = fmul fast float %902, 2.550000e+02
  %906 = call float @dx.op.unary.f32(i32 28, float %903)  ; Round_pi(value)
  %907 = call float @dx.op.unary.f32(i32 28, float %904)  ; Round_pi(value)
  %908 = call float @dx.op.unary.f32(i32 28, float %905)  ; Round_pi(value)
  %909 = fmul fast float %906, 0x3F70101020000000
  %910 = fmul fast float %907, 0x3F70101020000000
  %911 = fmul fast float %908, 0x3F70101020000000
  %912 = fadd fast float %897, %869
  %913 = fadd fast float %898, %870
  %914 = fadd fast float %899, %871
  %915 = fmul fast float %912, 2.550000e+02
  %916 = fmul fast float %913, 2.550000e+02
  %917 = fmul fast float %914, 2.550000e+02
  %918 = call float @dx.op.unary.f32(i32 27, float %915)  ; Round_ni(value)
  %919 = call float @dx.op.unary.f32(i32 27, float %916)  ; Round_ni(value)
  %920 = call float @dx.op.unary.f32(i32 27, float %917)  ; Round_ni(value)
  %921 = fmul fast float %918, 0x3F70101020000000
  %922 = fmul fast float %919, 0x3F70101020000000
  %923 = fmul fast float %920, 0x3F70101020000000
  %924 = fmul fast float %918, 0x3FBF1F1F40000000
  %925 = fmul fast float %919, 0x3FCF9F9FC0000000
  %926 = fmul fast float %920, 0x3FBF1F1F40000000
  %927 = call float @dx.op.unary.f32(i32 26, float %924)  ; Round_ne(value)
  %928 = call float @dx.op.unary.f32(i32 26, float %925)  ; Round_ne(value)
  %929 = call float @dx.op.unary.f32(i32 26, float %926)  ; Round_ne(value)
  %930 = fptoui float %927 to i32
  %931 = fptoui float %928 to i32
  %932 = fptoui float %929 to i32
  %933 = shl i32 %930, 11
  %934 = shl i32 %931, 5
  %935 = or i32 %934, %933
  %936 = or i32 %935, %932
  %937 = fmul fast float %906, 0x3FBF1F1F40000000
  %938 = fmul fast float %907, 0x3FCF9F9FC0000000
  %939 = fmul fast float %908, 0x3FBF1F1F40000000
  %940 = call float @dx.op.unary.f32(i32 26, float %937)  ; Round_ne(value)
  %941 = call float @dx.op.unary.f32(i32 26, float %938)  ; Round_ne(value)
  %942 = call float @dx.op.unary.f32(i32 26, float %939)  ; Round_ne(value)
  %943 = fptoui float %940 to i32
  %944 = fptoui float %941 to i32
  %945 = fptoui float %942 to i32
  %946 = shl i32 %943, 11
  %947 = shl i32 %944, 5
  %948 = or i32 %947, %946
  %949 = or i32 %948, %945
  %950 = fmul fast float %889, 2.550000e+02
  %951 = call float @dx.op.unary.f32(i32 26, float %950)  ; Round_ne(value)
  %952 = fptoui float %951 to i32
  %953 = fmul fast float %890, 2.550000e+02
  %954 = call float @dx.op.unary.f32(i32 26, float %953)  ; Round_ne(value)
  %955 = fptoui float %954 to i32
  %956 = icmp ugt i32 %936, %949
  %957 = select i1 %956, float %909, float %921
  %958 = select i1 %956, float %910, float %922
  %959 = select i1 %956, float %911, float %923
  %960 = select i1 %956, float %921, float %909
  %961 = select i1 %956, float %922, float %910
  %962 = select i1 %956, float %923, float %911
  %963 = select i1 %956, i32 %949, i32 %936
  %964 = select i1 %956, i32 %936, i32 %949
  %965 = icmp ult i32 %963, %964
  br i1 %965, label %966, label %1004, !dx.controlflow.hints !27

; <label>:966                                     ; preds = %893
  %967 = fsub fast float %957, %960
  %968 = fsub fast float %958, %961
  %969 = fsub fast float %959, %962
  %970 = call float @dx.op.dot3.f32(i32 55, float %967, float %968, float %969, float %967, float %968, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = fdiv fast float 3.000000e+00, %970
  %972 = fmul fast float %971, %967
  %973 = fmul fast float %971, %968
  %974 = fmul fast float %971, %969
  %975 = call float @dx.op.dot3.f32(i32 55, float %960, float %961, float %962, float %960, float %961, float %962)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = call float @dx.op.dot3.f32(i32 55, float %960, float %961, float %962, float %957, float %958, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = fsub fast float %975, %976
  %978 = fmul fast float %977, %971
  br label %979

; <label>:979                                     ; preds = %979, %966
  %980 = phi i32 [ 0, %966 ], [ %1000, %979 ]
  %981 = phi i32 [ 15, %966 ], [ %1001, %979 ]
  %982 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %981
  %983 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %981
  %984 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %981
  %985 = load float, float* %982, align 4
  %986 = load float, float* %983, align 4
  %987 = load float, float* %984, align 4
  %988 = call float @dx.op.dot3.f32(i32 55, float %985, float %986, float %987, float %972, float %973, float %974)  ; Dot3(ax,ay,az,bx,by,bz)
  %989 = fadd fast float %988, %978
  %990 = call float @dx.op.unary.f32(i32 26, float %989)  ; Round_ne(value)
  %991 = fptoui float %990 to i32
  %992 = and i32 %991, 1
  %993 = lshr i32 %991, 1
  %994 = xor i32 %992, %993
  %995 = shl nuw i32 %994, 1
  %996 = or i32 %993, %980
  %997 = or i32 %996, %995
  %998 = icmp ne i32 %981, 0
  %999 = shl i32 %997, 2
  %1000 = select i1 %998, i32 %999, i32 %997
  %1001 = add nsw i32 %981, -1
  %1002 = icmp sgt i32 %981, 0
  br i1 %1002, label %979, label %1003

; <label>:1003                                    ; preds = %979
  br label %1004

; <label>:1004                                    ; preds = %1003, %893
  %1005 = phi i32 [ 0, %893 ], [ %1000, %1003 ]
  %1006 = shl i32 %952, 8
  %1007 = or i32 %1006, %955
  %1008 = icmp ult i32 %952, %955
  br i1 %1008, label %1009, label %1122, !dx.controlflow.hints !28

; <label>:1009                                    ; preds = %1004
  %1010 = fsub fast float %889, %890
  %1011 = fdiv fast float 7.000000e+00, %1010
  %1012 = fsub fast float %882, %890
  %1013 = fmul fast float %1012, %1011
  %1014 = call float @dx.op.unary.f32(i32 26, float %1013)  ; Round_ne(value)
  %1015 = fptoui float %1014 to i32
  %1016 = icmp ne i32 %1015, 0
  %1017 = zext i1 %1016 to i32
  %1018 = icmp eq i32 %1015, 7
  %1019 = select i1 %1018, i32 65529, i32 0
  %1020 = add i32 %1019, %1015
  %1021 = add i32 %1020, %1017
  %1022 = shl i32 %1021, 16
  %1023 = load float, float* %79, align 4, !tbaa !19, !noalias !38
  %1024 = fsub fast float %1023, %890
  %1025 = fmul fast float %1024, %1011
  %1026 = call float @dx.op.unary.f32(i32 26, float %1025)  ; Round_ne(value)
  %1027 = fptoui float %1026 to i32
  %1028 = icmp ne i32 %1027, 0
  %1029 = zext i1 %1028 to i32
  %1030 = icmp eq i32 %1027, 7
  %1031 = select i1 %1030, i32 8185, i32 0
  %1032 = add i32 %1031, %1027
  %1033 = add i32 %1032, %1029
  %1034 = shl i32 %1033, 19
  %1035 = load float, float* %110, align 4, !tbaa !19, !noalias !38
  %1036 = fsub fast float %1035, %890
  %1037 = fmul fast float %1036, %1011
  %1038 = call float @dx.op.unary.f32(i32 26, float %1037)  ; Round_ne(value)
  %1039 = fptoui float %1038 to i32
  %1040 = icmp ne i32 %1039, 0
  %1041 = zext i1 %1040 to i32
  %1042 = icmp eq i32 %1039, 7
  %1043 = select i1 %1042, i32 1017, i32 0
  %1044 = add i32 %1043, %1039
  %1045 = add i32 %1044, %1041
  %1046 = shl i32 %1045, 22
  %1047 = load float, float* %141, align 4, !tbaa !19, !noalias !38
  %1048 = fsub fast float %1047, %890
  %1049 = fmul fast float %1048, %1011
  %1050 = call float @dx.op.unary.f32(i32 26, float %1049)  ; Round_ne(value)
  %1051 = fptoui float %1050 to i32
  %1052 = icmp ne i32 %1051, 0
  %1053 = zext i1 %1052 to i32
  %1054 = icmp eq i32 %1051, 7
  %1055 = select i1 %1054, i32 121, i32 0
  %1056 = add i32 %1055, %1051
  %1057 = add i32 %1056, %1053
  %1058 = shl i32 %1057, 25
  %1059 = fsub fast float %160, %890
  %1060 = fmul fast float %1059, %1011
  %1061 = call float @dx.op.unary.f32(i32 26, float %1060)  ; Round_ne(value)
  %1062 = fptoui float %1061 to i32
  %1063 = icmp ne i32 %1062, 0
  %1064 = zext i1 %1063 to i32
  %1065 = icmp eq i32 %1062, 7
  %1066 = select i1 %1065, i32 9, i32 0
  %1067 = add i32 %1066, %1062
  %1068 = add i32 %1067, %1064
  %1069 = shl i32 %1068, 28
  %1070 = fsub fast float %188, %890
  %1071 = fmul fast float %1070, %1011
  %1072 = call float @dx.op.unary.f32(i32 26, float %1071)  ; Round_ne(value)
  %1073 = fptoui float %1072 to i32
  %1074 = icmp ne i32 %1073, 0
  %1075 = zext i1 %1074 to i32
  %1076 = icmp eq i32 %1073, 7
  %1077 = select i1 %1076, i32 7, i32 0
  %1078 = sub nsw i32 %1075, %1077
  %1079 = add i32 %1078, %1073
  %1080 = shl i32 %1079, 31
  %1081 = lshr i32 %1079, 1
  %1082 = fsub fast float %216, %890
  %1083 = fmul fast float %1082, %1011
  %1084 = call float @dx.op.unary.f32(i32 26, float %1083)  ; Round_ne(value)
  %1085 = fptoui float %1084 to i32
  %1086 = icmp ne i32 %1085, 0
  %1087 = zext i1 %1086 to i32
  %1088 = icmp eq i32 %1085, 7
  %1089 = select i1 %1088, i32 1073741817, i32 0
  %1090 = add i32 %1089, %1085
  %1091 = add i32 %1090, %1087
  %1092 = shl i32 %1091, 2
  %1093 = or i32 %1092, %1081
  br label %1094

; <label>:1094                                    ; preds = %1094, %1009
  %1095 = phi i32 [ 7, %1009 ], [ %1113, %1094 ]
  %1096 = phi i32 [ %1093, %1009 ], [ %1112, %1094 ]
  %1097 = phi i32 [ 2, %1009 ], [ %1098, %1094 ]
  %1098 = add nuw nsw i32 %1097, 3
  %1099 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 %1095
  %1100 = load float, float* %1099, align 4, !tbaa !19, !noalias !38
  %1101 = fsub fast float %1100, %890
  %1102 = fmul fast float %1101, %1011
  %1103 = call float @dx.op.unary.f32(i32 26, float %1102)  ; Round_ne(value)
  %1104 = fptoui float %1103 to i32
  %1105 = icmp ne i32 %1104, 0
  %1106 = zext i1 %1105 to i32
  %1107 = icmp eq i32 %1104, 7
  %1108 = select i1 %1107, i32 -7, i32 0
  %1109 = add i32 %1108, %1104
  %1110 = add i32 %1109, %1106
  %1111 = shl i32 %1110, %1098
  %1112 = or i32 %1111, %1096
  %1113 = add nuw nsw i32 %1095, 1
  %1114 = icmp eq i32 %1113, 16
  br i1 %1114, label %1115, label %1094

; <label>:1115                                    ; preds = %1094
  %1116 = or i32 %1022, %1007
  %1117 = or i32 %1116, %1034
  %1118 = or i32 %1117, %1046
  %1119 = or i32 %1118, %1058
  %1120 = or i32 %1119, %1069
  %1121 = or i32 %1120, %1080
  br label %1122

; <label>:1122                                    ; preds = %1115, %1004
  %1123 = phi i32 [ %1007, %1004 ], [ %1121, %1115 ]
  %1124 = phi i32 [ 0, %1004 ], [ %1112, %1115 ]
  %1125 = shl i32 %963, 16
  %1126 = or i32 %1125, %964
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1127, i32 %5, i32 %6, i32 undef, i32 %1123, i32 %1124, i32 %1126, i32 %1005, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !10, null, !14}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !13}
!11 = !{i32 0, [2 x %"class.RWTexture2D<vector<unsigned int, 4> >"]* undef, !"", i32 0, i32 0, i32 2, i32 2, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 1, [2 x %"class.RWTexture2D<vector<unsigned int, 4> >"]* undef, !"", i32 0, i32 2, i32 2, i32 2, i1 false, i1 false, i1 false, !12}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{void ()* @cs_physical_texture_compress_mip1_from_scratch_2, !"cs_physical_texture_compress_mip1_from_scratch_2", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!25 = distinct !{!25, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!26 = distinct !{!26, !25, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = !{!30}
!30 = distinct !{!30, !31, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!31 = distinct !{!31, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!36 = distinct !{!36, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!37 = distinct !{!37, !36, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!40 = distinct !{!40, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

