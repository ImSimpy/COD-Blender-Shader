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
; shader hash: 4c63137e1f151a80527ea6e955b88f86
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
;   [4208 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0            t14     1
;                                       UAV     u32          2d      U0             u6     2
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 2> >" = type { <2 x i32> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_physical_texture_compress_displacement_mip1_from_scratch() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = alloca [16 x float], align 4
  %7 = shl i32 %4, 2
  %8 = shl i32 %5, 2
  %9 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %10 = extractvalue %dx.types.Dimensions %9, 0
  %11 = extractvalue %dx.types.Dimensions %9, 1
  %12 = lshr i32 %10, 1
  %13 = uitofp i32 %12 to float
  %14 = lshr i32 %11, 1
  %15 = uitofp i32 %14 to float
  %16 = uitofp i32 %7 to float
  %17 = uitofp i32 %8 to float
  %18 = fadd fast float %16, 5.000000e-01
  %19 = fadd fast float %17, 5.000000e-01
  %20 = fdiv fast float %18, %13
  %21 = fdiv fast float %19, %15
  %22 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %26 = fdiv fast float %23, %25
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %28 = fadd fast float %27, %26
  %29 = call float @dx.op.binary.f32(i32 35, float %28, float 0.000000e+00)  ; FMax(a,b)
  %30 = call float @dx.op.binary.f32(i32 36, float %29, float 1.000000e+00)  ; FMin(a,b)
  %31 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 0
  store float %30, float* %31, align 4, !tbaa !18
  %32 = or i32 %7, 1
  %33 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %34 = extractvalue %dx.types.Dimensions %33, 0
  %35 = extractvalue %dx.types.Dimensions %33, 1
  %36 = lshr i32 %34, 1
  %37 = uitofp i32 %36 to float
  %38 = lshr i32 %35, 1
  %39 = uitofp i32 %38 to float
  %40 = uitofp i32 %32 to float
  %41 = fadd fast float %40, 5.000000e-01
  %42 = fdiv fast float %41, %37
  %43 = fdiv fast float %19, %39
  %44 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = fdiv fast float %45, %47
  %49 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %50 = fadd fast float %49, %48
  %51 = call float @dx.op.binary.f32(i32 35, float %50, float 0.000000e+00)  ; FMax(a,b)
  %52 = call float @dx.op.binary.f32(i32 36, float %51, float 1.000000e+00)  ; FMin(a,b)
  %53 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 1
  store float %52, float* %53, align 4, !tbaa !18
  %54 = or i32 %7, 2
  %55 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %56 = extractvalue %dx.types.Dimensions %55, 0
  %57 = extractvalue %dx.types.Dimensions %55, 1
  %58 = lshr i32 %56, 1
  %59 = uitofp i32 %58 to float
  %60 = lshr i32 %57, 1
  %61 = uitofp i32 %60 to float
  %62 = uitofp i32 %54 to float
  %63 = fadd fast float %62, 5.000000e-01
  %64 = fdiv fast float %63, %59
  %65 = fdiv fast float %19, %61
  %66 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = fdiv fast float %67, %69
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %72 = fadd fast float %71, %70
  %73 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %73, float 1.000000e+00)  ; FMin(a,b)
  %75 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 2
  store float %74, float* %75, align 4, !tbaa !18
  %76 = or i32 %7, 3
  %77 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %78 = extractvalue %dx.types.Dimensions %77, 0
  %79 = extractvalue %dx.types.Dimensions %77, 1
  %80 = lshr i32 %78, 1
  %81 = uitofp i32 %80 to float
  %82 = lshr i32 %79, 1
  %83 = uitofp i32 %82 to float
  %84 = uitofp i32 %76 to float
  %85 = fadd fast float %84, 5.000000e-01
  %86 = fdiv fast float %85, %81
  %87 = fdiv fast float %19, %83
  %88 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = fdiv fast float %89, %91
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %94 = fadd fast float %93, %92
  %95 = call float @dx.op.binary.f32(i32 35, float %94, float 0.000000e+00)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %95, float 1.000000e+00)  ; FMin(a,b)
  %97 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 3
  store float %96, float* %97, align 4, !tbaa !18
  %98 = or i32 %8, 1
  %99 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %100 = extractvalue %dx.types.Dimensions %99, 0
  %101 = extractvalue %dx.types.Dimensions %99, 1
  %102 = lshr i32 %100, 1
  %103 = uitofp i32 %102 to float
  %104 = lshr i32 %101, 1
  %105 = uitofp i32 %104 to float
  %106 = uitofp i32 %98 to float
  %107 = fadd fast float %106, 5.000000e-01
  %108 = fdiv fast float %18, %103
  %109 = fdiv fast float %107, %105
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %108, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = fdiv fast float %111, %113
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %116 = fadd fast float %115, %114
  %117 = call float @dx.op.binary.f32(i32 35, float %116, float 0.000000e+00)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 36, float %117, float 1.000000e+00)  ; FMin(a,b)
  %119 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 4
  store float %118, float* %119, align 4, !tbaa !18
  %120 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %121 = extractvalue %dx.types.Dimensions %120, 0
  %122 = extractvalue %dx.types.Dimensions %120, 1
  %123 = lshr i32 %121, 1
  %124 = uitofp i32 %123 to float
  %125 = lshr i32 %122, 1
  %126 = uitofp i32 %125 to float
  %127 = fdiv fast float %41, %124
  %128 = fdiv fast float %107, %126
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %127, float %128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = fdiv fast float %130, %132
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %135 = fadd fast float %134, %133
  %136 = call float @dx.op.binary.f32(i32 35, float %135, float 0.000000e+00)  ; FMax(a,b)
  %137 = call float @dx.op.binary.f32(i32 36, float %136, float 1.000000e+00)  ; FMin(a,b)
  %138 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 5
  store float %137, float* %138, align 4, !tbaa !18
  %139 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %140 = extractvalue %dx.types.Dimensions %139, 0
  %141 = extractvalue %dx.types.Dimensions %139, 1
  %142 = lshr i32 %140, 1
  %143 = uitofp i32 %142 to float
  %144 = lshr i32 %141, 1
  %145 = uitofp i32 %144 to float
  %146 = fdiv fast float %63, %143
  %147 = fdiv fast float %107, %145
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = fdiv fast float %149, %151
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %154 = fadd fast float %153, %152
  %155 = call float @dx.op.binary.f32(i32 35, float %154, float 0.000000e+00)  ; FMax(a,b)
  %156 = call float @dx.op.binary.f32(i32 36, float %155, float 1.000000e+00)  ; FMin(a,b)
  %157 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 6
  store float %156, float* %157, align 4, !tbaa !18
  %158 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %159 = extractvalue %dx.types.Dimensions %158, 0
  %160 = extractvalue %dx.types.Dimensions %158, 1
  %161 = lshr i32 %159, 1
  %162 = uitofp i32 %161 to float
  %163 = lshr i32 %160, 1
  %164 = uitofp i32 %163 to float
  %165 = fdiv fast float %85, %162
  %166 = fdiv fast float %107, %164
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = fdiv fast float %168, %170
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %173 = fadd fast float %172, %171
  %174 = call float @dx.op.binary.f32(i32 35, float %173, float 0.000000e+00)  ; FMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 36, float %174, float 1.000000e+00)  ; FMin(a,b)
  %176 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 7
  store float %175, float* %176, align 4, !tbaa !18
  %177 = or i32 %8, 2
  %178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %179 = extractvalue %dx.types.Dimensions %178, 0
  %180 = extractvalue %dx.types.Dimensions %178, 1
  %181 = lshr i32 %179, 1
  %182 = uitofp i32 %181 to float
  %183 = lshr i32 %180, 1
  %184 = uitofp i32 %183 to float
  %185 = uitofp i32 %177 to float
  %186 = fadd fast float %185, 5.000000e-01
  %187 = fdiv fast float %18, %182
  %188 = fdiv fast float %186, %184
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %193 = fdiv fast float %190, %192
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %195 = fadd fast float %194, %193
  %196 = call float @dx.op.binary.f32(i32 35, float %195, float 0.000000e+00)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 36, float %196, float 1.000000e+00)  ; FMin(a,b)
  %198 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 8
  store float %197, float* %198, align 4, !tbaa !18
  %199 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %200 = extractvalue %dx.types.Dimensions %199, 0
  %201 = extractvalue %dx.types.Dimensions %199, 1
  %202 = lshr i32 %200, 1
  %203 = uitofp i32 %202 to float
  %204 = lshr i32 %201, 1
  %205 = uitofp i32 %204 to float
  %206 = fdiv fast float %41, %203
  %207 = fdiv fast float %186, %205
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = fdiv fast float %209, %211
  %213 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %214 = fadd fast float %213, %212
  %215 = call float @dx.op.binary.f32(i32 35, float %214, float 0.000000e+00)  ; FMax(a,b)
  %216 = call float @dx.op.binary.f32(i32 36, float %215, float 1.000000e+00)  ; FMin(a,b)
  %217 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 9
  store float %216, float* %217, align 4, !tbaa !18
  %218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %219 = extractvalue %dx.types.Dimensions %218, 0
  %220 = extractvalue %dx.types.Dimensions %218, 1
  %221 = lshr i32 %219, 1
  %222 = uitofp i32 %221 to float
  %223 = lshr i32 %220, 1
  %224 = uitofp i32 %223 to float
  %225 = fdiv fast float %63, %222
  %226 = fdiv fast float %186, %224
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %225, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fdiv fast float %228, %230
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %233 = fadd fast float %232, %231
  %234 = call float @dx.op.binary.f32(i32 35, float %233, float 0.000000e+00)  ; FMax(a,b)
  %235 = call float @dx.op.binary.f32(i32 36, float %234, float 1.000000e+00)  ; FMin(a,b)
  %236 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 10
  store float %235, float* %236, align 4, !tbaa !18
  %237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %238 = extractvalue %dx.types.Dimensions %237, 0
  %239 = extractvalue %dx.types.Dimensions %237, 1
  %240 = lshr i32 %238, 1
  %241 = uitofp i32 %240 to float
  %242 = lshr i32 %239, 1
  %243 = uitofp i32 %242 to float
  %244 = fdiv fast float %85, %241
  %245 = fdiv fast float %186, %243
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %244, float %245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %250 = fdiv fast float %247, %249
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %252 = fadd fast float %251, %250
  %253 = call float @dx.op.binary.f32(i32 35, float %252, float 0.000000e+00)  ; FMax(a,b)
  %254 = call float @dx.op.binary.f32(i32 36, float %253, float 1.000000e+00)  ; FMin(a,b)
  %255 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 11
  store float %254, float* %255, align 4, !tbaa !18
  %256 = or i32 %8, 3
  %257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %258 = extractvalue %dx.types.Dimensions %257, 0
  %259 = extractvalue %dx.types.Dimensions %257, 1
  %260 = lshr i32 %258, 1
  %261 = uitofp i32 %260 to float
  %262 = lshr i32 %259, 1
  %263 = uitofp i32 %262 to float
  %264 = uitofp i32 %256 to float
  %265 = fadd fast float %264, 5.000000e-01
  %266 = fdiv fast float %18, %261
  %267 = fdiv fast float %265, %263
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %266, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = fdiv fast float %269, %271
  %273 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %274 = fadd fast float %273, %272
  %275 = call float @dx.op.binary.f32(i32 35, float %274, float 0.000000e+00)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 36, float %275, float 1.000000e+00)  ; FMin(a,b)
  %277 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 12
  store float %276, float* %277, align 4, !tbaa !18
  %278 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %279 = extractvalue %dx.types.Dimensions %278, 0
  %280 = extractvalue %dx.types.Dimensions %278, 1
  %281 = lshr i32 %279, 1
  %282 = uitofp i32 %281 to float
  %283 = lshr i32 %280, 1
  %284 = uitofp i32 %283 to float
  %285 = fdiv fast float %41, %282
  %286 = fdiv fast float %265, %284
  %287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %285, float %286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %291 = fdiv fast float %288, %290
  %292 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %293 = fadd fast float %292, %291
  %294 = call float @dx.op.binary.f32(i32 35, float %293, float 0.000000e+00)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 36, float %294, float 1.000000e+00)  ; FMin(a,b)
  %296 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 13
  store float %295, float* %296, align 4, !tbaa !18
  %297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %298 = extractvalue %dx.types.Dimensions %297, 0
  %299 = extractvalue %dx.types.Dimensions %297, 1
  %300 = lshr i32 %298, 1
  %301 = uitofp i32 %300 to float
  %302 = lshr i32 %299, 1
  %303 = uitofp i32 %302 to float
  %304 = fdiv fast float %63, %301
  %305 = fdiv fast float %265, %303
  %306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %304, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = fdiv fast float %307, %309
  %311 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %312 = fadd fast float %311, %310
  %313 = call float @dx.op.binary.f32(i32 35, float %312, float 0.000000e+00)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 36, float %313, float 1.000000e+00)  ; FMin(a,b)
  %315 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 14
  store float %314, float* %315, align 4, !tbaa !18
  %316 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %317 = extractvalue %dx.types.Dimensions %316, 0
  %318 = extractvalue %dx.types.Dimensions %316, 1
  %319 = lshr i32 %317, 1
  %320 = uitofp i32 %319 to float
  %321 = lshr i32 %318, 1
  %322 = uitofp i32 %321 to float
  %323 = fdiv fast float %85, %320
  %324 = fdiv fast float %265, %322
  %325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %323, float %324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = fdiv fast float %326, %328
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 3
  %331 = fadd fast float %330, %329
  %332 = call float @dx.op.binary.f32(i32 35, float %331, float 0.000000e+00)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 36, float %332, float 1.000000e+00)  ; FMin(a,b)
  %334 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 15
  store float %333, float* %334, align 4, !tbaa !18
  %335 = call float @dx.op.binary.f32(i32 36, float %30, float %52)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %30, float %52)  ; FMax(a,b)
  br label %337

; <label>:337                                     ; preds = %337, %0
  %338 = phi i32 [ 2, %0 ], [ %345, %337 ]
  %339 = phi float [ %336, %0 ], [ %344, %337 ]
  %340 = phi float [ %335, %0 ], [ %343, %337 ]
  %341 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 %338
  %342 = load float, float* %341, align 4, !tbaa !18, !noalias !22
  %343 = call float @dx.op.binary.f32(i32 36, float %340, float %342)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %339, float %342)  ; FMax(a,b)
  %345 = add nuw nsw i32 %338, 1
  %346 = icmp eq i32 %345, 16
  br i1 %346, label %347, label %337

; <label>:347                                     ; preds = %337
  %348 = fmul fast float %343, 2.550000e+02
  %349 = call float @dx.op.unary.f32(i32 26, float %348)  ; Round_ne(value)
  %350 = fptoui float %349 to i32
  %351 = fmul fast float %344, 2.550000e+02
  %352 = call float @dx.op.unary.f32(i32 26, float %351)  ; Round_ne(value)
  %353 = fptoui float %352 to i32
  %354 = shl i32 %350, 8
  %355 = or i32 %354, %353
  %356 = icmp ult i32 %350, %353
  br i1 %356, label %357, label %467, !dx.controlflow.hints !26

; <label>:357                                     ; preds = %347
  %358 = fsub fast float %343, %344
  %359 = fdiv fast float 7.000000e+00, %358
  %360 = fsub fast float %30, %344
  %361 = fmul fast float %360, %359
  %362 = call float @dx.op.unary.f32(i32 26, float %361)  ; Round_ne(value)
  %363 = fptoui float %362 to i32
  %364 = icmp ne i32 %363, 0
  %365 = zext i1 %364 to i32
  %366 = icmp eq i32 %363, 7
  %367 = select i1 %366, i32 65529, i32 0
  %368 = add i32 %367, %363
  %369 = add i32 %368, %365
  %370 = shl i32 %369, 16
  %371 = fsub fast float %52, %344
  %372 = fmul fast float %371, %359
  %373 = call float @dx.op.unary.f32(i32 26, float %372)  ; Round_ne(value)
  %374 = fptoui float %373 to i32
  %375 = icmp ne i32 %374, 0
  %376 = zext i1 %375 to i32
  %377 = icmp eq i32 %374, 7
  %378 = select i1 %377, i32 8185, i32 0
  %379 = add i32 %378, %374
  %380 = add i32 %379, %376
  %381 = shl i32 %380, 19
  %382 = fsub fast float %74, %344
  %383 = fmul fast float %382, %359
  %384 = call float @dx.op.unary.f32(i32 26, float %383)  ; Round_ne(value)
  %385 = fptoui float %384 to i32
  %386 = icmp ne i32 %385, 0
  %387 = zext i1 %386 to i32
  %388 = icmp eq i32 %385, 7
  %389 = select i1 %388, i32 1017, i32 0
  %390 = add i32 %389, %385
  %391 = add i32 %390, %387
  %392 = shl i32 %391, 22
  %393 = fsub fast float %96, %344
  %394 = fmul fast float %393, %359
  %395 = call float @dx.op.unary.f32(i32 26, float %394)  ; Round_ne(value)
  %396 = fptoui float %395 to i32
  %397 = icmp ne i32 %396, 0
  %398 = zext i1 %397 to i32
  %399 = icmp eq i32 %396, 7
  %400 = select i1 %399, i32 121, i32 0
  %401 = add i32 %400, %396
  %402 = add i32 %401, %398
  %403 = shl i32 %402, 25
  %404 = fsub fast float %118, %344
  %405 = fmul fast float %404, %359
  %406 = call float @dx.op.unary.f32(i32 26, float %405)  ; Round_ne(value)
  %407 = fptoui float %406 to i32
  %408 = icmp ne i32 %407, 0
  %409 = zext i1 %408 to i32
  %410 = icmp eq i32 %407, 7
  %411 = select i1 %410, i32 9, i32 0
  %412 = add i32 %411, %407
  %413 = add i32 %412, %409
  %414 = shl i32 %413, 28
  %415 = fsub fast float %137, %344
  %416 = fmul fast float %415, %359
  %417 = call float @dx.op.unary.f32(i32 26, float %416)  ; Round_ne(value)
  %418 = fptoui float %417 to i32
  %419 = icmp ne i32 %418, 0
  %420 = zext i1 %419 to i32
  %421 = icmp eq i32 %418, 7
  %422 = select i1 %421, i32 7, i32 0
  %423 = sub nsw i32 %420, %422
  %424 = add i32 %423, %418
  %425 = shl i32 %424, 31
  %426 = lshr i32 %424, 1
  %427 = fsub fast float %156, %344
  %428 = fmul fast float %427, %359
  %429 = call float @dx.op.unary.f32(i32 26, float %428)  ; Round_ne(value)
  %430 = fptoui float %429 to i32
  %431 = icmp ne i32 %430, 0
  %432 = zext i1 %431 to i32
  %433 = icmp eq i32 %430, 7
  %434 = select i1 %433, i32 1073741817, i32 0
  %435 = add i32 %434, %430
  %436 = add i32 %435, %432
  %437 = shl i32 %436, 2
  %438 = or i32 %437, %426
  br label %439

; <label>:439                                     ; preds = %439, %357
  %440 = phi i32 [ 7, %357 ], [ %458, %439 ]
  %441 = phi i32 [ %438, %357 ], [ %457, %439 ]
  %442 = phi i32 [ 2, %357 ], [ %443, %439 ]
  %443 = add nuw nsw i32 %442, 3
  %444 = getelementptr inbounds [16 x float], [16 x float]* %6, i32 0, i32 %440
  %445 = load float, float* %444, align 4, !tbaa !18, !noalias !27
  %446 = fsub fast float %445, %344
  %447 = fmul fast float %446, %359
  %448 = call float @dx.op.unary.f32(i32 26, float %447)  ; Round_ne(value)
  %449 = fptoui float %448 to i32
  %450 = icmp ne i32 %449, 0
  %451 = zext i1 %450 to i32
  %452 = icmp eq i32 %449, 7
  %453 = select i1 %452, i32 -7, i32 0
  %454 = add i32 %453, %449
  %455 = add i32 %454, %451
  %456 = shl i32 %455, %443
  %457 = or i32 %456, %441
  %458 = add nuw nsw i32 %440, 1
  %459 = icmp eq i32 %458, 16
  br i1 %459, label %460, label %439

; <label>:460                                     ; preds = %439
  %461 = or i32 %370, %355
  %462 = or i32 %461, %381
  %463 = or i32 %462, %392
  %464 = or i32 %463, %403
  %465 = or i32 %464, %414
  %466 = or i32 %465, %425
  br label %467

; <label>:467                                     ; preds = %460, %347
  %468 = phi i32 [ %355, %347 ], [ %466, %460 ]
  %469 = phi i32 [ 0, %347 ], [ %457, %460 ]
  %470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %470, i32 %4, i32 %5, i32 undef, i32 %468, i32 %469, i32 %468, i32 %468, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, !13}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, [2 x %"class.RWTexture2D<vector<unsigned int, 2> >"]* undef, !"", i32 0, i32 6, i32 2, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!15 = !{void ()* @cs_physical_texture_compress_displacement_mip1_from_scratch, !"cs_physical_texture_compress_displacement_mip1_from_scratch", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 4, i32 4, i32 1}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!24 = distinct !{!24, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!25 = distinct !{!25, !24, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28}
!28 = distinct !{!28, !29, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!29 = distinct !{!29, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

