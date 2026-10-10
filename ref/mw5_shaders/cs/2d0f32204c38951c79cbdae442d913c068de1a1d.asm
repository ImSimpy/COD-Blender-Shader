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
; shader hash: 62339b069ee740709d21c19e6d4c7eff
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
;                                   texture     f32          2d      T0            t14     1
;                                       UAV     u32          2d      U0             u6     2
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 2> >" = type { <2 x i32> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }

define void @cs_physical_texture_compress_displacement_mip0_from_scratch() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = alloca [16 x float], align 4
  %6 = shl i32 %3, 2
  %7 = shl i32 %4, 2
  %8 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %6, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9 = extractvalue %dx.types.ResRet.f32 %8, 0
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %12 = fdiv fast float %9, %11
  %13 = extractvalue %dx.types.CBufRet.f32 %10, 3
  %14 = fadd fast float %13, %12
  %15 = call float @dx.op.binary.f32(i32 35, float %14, float 0.000000e+00)  ; FMax(a,b)
  %16 = call float @dx.op.binary.f32(i32 36, float %15, float 1.000000e+00)  ; FMin(a,b)
  %17 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 0
  store float %16, float* %17, align 4, !tbaa !16
  %18 = or i32 %6, 1
  %19 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %18, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %23 = fdiv fast float %20, %22
  %24 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %25 = fadd fast float %24, %23
  %26 = call float @dx.op.binary.f32(i32 35, float %25, float 0.000000e+00)  ; FMax(a,b)
  %27 = call float @dx.op.binary.f32(i32 36, float %26, float 1.000000e+00)  ; FMin(a,b)
  %28 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 1
  store float %27, float* %28, align 4, !tbaa !16
  %29 = or i32 %6, 2
  %30 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %29, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %34 = fdiv fast float %31, %33
  %35 = extractvalue %dx.types.CBufRet.f32 %32, 3
  %36 = fadd fast float %35, %34
  %37 = call float @dx.op.binary.f32(i32 35, float %36, float 0.000000e+00)  ; FMax(a,b)
  %38 = call float @dx.op.binary.f32(i32 36, float %37, float 1.000000e+00)  ; FMin(a,b)
  %39 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 2
  store float %38, float* %39, align 4, !tbaa !16
  %40 = or i32 %6, 3
  %41 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %40, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = fdiv fast float %42, %44
  %46 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %47 = fadd fast float %46, %45
  %48 = call float @dx.op.binary.f32(i32 35, float %47, float 0.000000e+00)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 36, float %48, float 1.000000e+00)  ; FMin(a,b)
  %50 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 3
  store float %49, float* %50, align 4, !tbaa !16
  %51 = or i32 %7, 1
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %6, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = fdiv fast float %53, %55
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %58 = fadd fast float %57, %56
  %59 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %59, float 1.000000e+00)  ; FMin(a,b)
  %61 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 4
  store float %60, float* %61, align 4, !tbaa !16
  %62 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %18, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = fdiv fast float %63, %65
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %68 = fadd fast float %67, %66
  %69 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %69, float 1.000000e+00)  ; FMin(a,b)
  %71 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 5
  store float %70, float* %71, align 4, !tbaa !16
  %72 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %29, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %76 = fdiv fast float %73, %75
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %78 = fadd fast float %77, %76
  %79 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %80 = call float @dx.op.binary.f32(i32 36, float %79, float 1.000000e+00)  ; FMin(a,b)
  %81 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 6
  store float %80, float* %81, align 4, !tbaa !16
  %82 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %40, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = fdiv fast float %83, %85
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %88 = fadd fast float %87, %86
  %89 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 36, float %89, float 1.000000e+00)  ; FMin(a,b)
  %91 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 7
  store float %90, float* %91, align 4, !tbaa !16
  %92 = or i32 %7, 2
  %93 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %6, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %97 = fdiv fast float %94, %96
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %99 = fadd fast float %98, %97
  %100 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 36, float %100, float 1.000000e+00)  ; FMin(a,b)
  %102 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 8
  store float %101, float* %102, align 4, !tbaa !16
  %103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %18, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = fdiv fast float %104, %106
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %109 = fadd fast float %108, %107
  %110 = call float @dx.op.binary.f32(i32 35, float %109, float 0.000000e+00)  ; FMax(a,b)
  %111 = call float @dx.op.binary.f32(i32 36, float %110, float 1.000000e+00)  ; FMin(a,b)
  %112 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 9
  store float %111, float* %112, align 4, !tbaa !16
  %113 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %29, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = fdiv fast float %114, %116
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %119 = fadd fast float %118, %117
  %120 = call float @dx.op.binary.f32(i32 35, float %119, float 0.000000e+00)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 36, float %120, float 1.000000e+00)  ; FMin(a,b)
  %122 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 10
  store float %121, float* %122, align 4, !tbaa !16
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %40, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = fdiv fast float %124, %126
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %129 = fadd fast float %128, %127
  %130 = call float @dx.op.binary.f32(i32 35, float %129, float 0.000000e+00)  ; FMax(a,b)
  %131 = call float @dx.op.binary.f32(i32 36, float %130, float 1.000000e+00)  ; FMin(a,b)
  %132 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 11
  store float %131, float* %132, align 4, !tbaa !16
  %133 = or i32 %7, 3
  %134 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %6, i32 %133, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = fdiv fast float %135, %137
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %140 = fadd fast float %139, %138
  %141 = call float @dx.op.binary.f32(i32 35, float %140, float 0.000000e+00)  ; FMax(a,b)
  %142 = call float @dx.op.binary.f32(i32 36, float %141, float 1.000000e+00)  ; FMin(a,b)
  %143 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 12
  store float %142, float* %143, align 4, !tbaa !16
  %144 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %18, i32 %133, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = fdiv fast float %145, %147
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %150 = fadd fast float %149, %148
  %151 = call float @dx.op.binary.f32(i32 35, float %150, float 0.000000e+00)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 36, float %151, float 1.000000e+00)  ; FMin(a,b)
  %153 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 13
  store float %152, float* %153, align 4, !tbaa !16
  %154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %29, i32 %133, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %158 = fdiv fast float %155, %157
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %160 = fadd fast float %159, %158
  %161 = call float @dx.op.binary.f32(i32 35, float %160, float 0.000000e+00)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 36, float %161, float 1.000000e+00)  ; FMin(a,b)
  %163 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 14
  store float %162, float* %163, align 4, !tbaa !16
  %164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %40, i32 %133, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = fdiv fast float %165, %167
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %170 = fadd fast float %169, %168
  %171 = call float @dx.op.binary.f32(i32 35, float %170, float 0.000000e+00)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 36, float %171, float 1.000000e+00)  ; FMin(a,b)
  %173 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 15
  store float %172, float* %173, align 4, !tbaa !16
  %174 = call float @dx.op.binary.f32(i32 36, float %16, float %27)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %16, float %27)  ; FMax(a,b)
  br label %176

; <label>:176                                     ; preds = %176, %0
  %177 = phi i32 [ 2, %0 ], [ %184, %176 ]
  %178 = phi float [ %175, %0 ], [ %183, %176 ]
  %179 = phi float [ %174, %0 ], [ %182, %176 ]
  %180 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 %177
  %181 = load float, float* %180, align 4, !tbaa !16, !noalias !20
  %182 = call float @dx.op.binary.f32(i32 36, float %179, float %181)  ; FMin(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float %178, float %181)  ; FMax(a,b)
  %184 = add nuw nsw i32 %177, 1
  %185 = icmp eq i32 %184, 16
  br i1 %185, label %186, label %176

; <label>:186                                     ; preds = %176
  %187 = fmul fast float %182, 2.550000e+02
  %188 = call float @dx.op.unary.f32(i32 26, float %187)  ; Round_ne(value)
  %189 = fptoui float %188 to i32
  %190 = fmul fast float %183, 2.550000e+02
  %191 = call float @dx.op.unary.f32(i32 26, float %190)  ; Round_ne(value)
  %192 = fptoui float %191 to i32
  %193 = shl i32 %189, 8
  %194 = or i32 %193, %192
  %195 = icmp ult i32 %189, %192
  br i1 %195, label %196, label %306, !dx.controlflow.hints !24

; <label>:196                                     ; preds = %186
  %197 = fsub fast float %182, %183
  %198 = fdiv fast float 7.000000e+00, %197
  %199 = fsub fast float %16, %183
  %200 = fmul fast float %199, %198
  %201 = call float @dx.op.unary.f32(i32 26, float %200)  ; Round_ne(value)
  %202 = fptoui float %201 to i32
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = icmp eq i32 %202, 7
  %206 = select i1 %205, i32 65529, i32 0
  %207 = add i32 %206, %202
  %208 = add i32 %207, %204
  %209 = shl i32 %208, 16
  %210 = fsub fast float %27, %183
  %211 = fmul fast float %210, %198
  %212 = call float @dx.op.unary.f32(i32 26, float %211)  ; Round_ne(value)
  %213 = fptoui float %212 to i32
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = icmp eq i32 %213, 7
  %217 = select i1 %216, i32 8185, i32 0
  %218 = add i32 %217, %213
  %219 = add i32 %218, %215
  %220 = shl i32 %219, 19
  %221 = fsub fast float %38, %183
  %222 = fmul fast float %221, %198
  %223 = call float @dx.op.unary.f32(i32 26, float %222)  ; Round_ne(value)
  %224 = fptoui float %223 to i32
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = icmp eq i32 %224, 7
  %228 = select i1 %227, i32 1017, i32 0
  %229 = add i32 %228, %224
  %230 = add i32 %229, %226
  %231 = shl i32 %230, 22
  %232 = fsub fast float %49, %183
  %233 = fmul fast float %232, %198
  %234 = call float @dx.op.unary.f32(i32 26, float %233)  ; Round_ne(value)
  %235 = fptoui float %234 to i32
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i32
  %238 = icmp eq i32 %235, 7
  %239 = select i1 %238, i32 121, i32 0
  %240 = add i32 %239, %235
  %241 = add i32 %240, %237
  %242 = shl i32 %241, 25
  %243 = fsub fast float %60, %183
  %244 = fmul fast float %243, %198
  %245 = call float @dx.op.unary.f32(i32 26, float %244)  ; Round_ne(value)
  %246 = fptoui float %245 to i32
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i32
  %249 = icmp eq i32 %246, 7
  %250 = select i1 %249, i32 9, i32 0
  %251 = add i32 %250, %246
  %252 = add i32 %251, %248
  %253 = shl i32 %252, 28
  %254 = fsub fast float %70, %183
  %255 = fmul fast float %254, %198
  %256 = call float @dx.op.unary.f32(i32 26, float %255)  ; Round_ne(value)
  %257 = fptoui float %256 to i32
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = icmp eq i32 %257, 7
  %261 = select i1 %260, i32 7, i32 0
  %262 = sub nsw i32 %259, %261
  %263 = add i32 %262, %257
  %264 = shl i32 %263, 31
  %265 = lshr i32 %263, 1
  %266 = fsub fast float %80, %183
  %267 = fmul fast float %266, %198
  %268 = call float @dx.op.unary.f32(i32 26, float %267)  ; Round_ne(value)
  %269 = fptoui float %268 to i32
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i32
  %272 = icmp eq i32 %269, 7
  %273 = select i1 %272, i32 1073741817, i32 0
  %274 = add i32 %273, %269
  %275 = add i32 %274, %271
  %276 = shl i32 %275, 2
  %277 = or i32 %276, %265
  br label %278

; <label>:278                                     ; preds = %278, %196
  %279 = phi i32 [ 7, %196 ], [ %297, %278 ]
  %280 = phi i32 [ %277, %196 ], [ %296, %278 ]
  %281 = phi i32 [ 2, %196 ], [ %282, %278 ]
  %282 = add nuw nsw i32 %281, 3
  %283 = getelementptr inbounds [16 x float], [16 x float]* %5, i32 0, i32 %279
  %284 = load float, float* %283, align 4, !tbaa !16, !noalias !25
  %285 = fsub fast float %284, %183
  %286 = fmul fast float %285, %198
  %287 = call float @dx.op.unary.f32(i32 26, float %286)  ; Round_ne(value)
  %288 = fptoui float %287 to i32
  %289 = icmp ne i32 %288, 0
  %290 = zext i1 %289 to i32
  %291 = icmp eq i32 %288, 7
  %292 = select i1 %291, i32 -7, i32 0
  %293 = add i32 %292, %288
  %294 = add i32 %293, %290
  %295 = shl i32 %294, %282
  %296 = or i32 %295, %280
  %297 = add nuw nsw i32 %279, 1
  %298 = icmp eq i32 %297, 16
  br i1 %298, label %299, label %278

; <label>:299                                     ; preds = %278
  %300 = or i32 %209, %194
  %301 = or i32 %300, %220
  %302 = or i32 %301, %231
  %303 = or i32 %302, %242
  %304 = or i32 %303, %253
  %305 = or i32 %304, %264
  br label %306

; <label>:306                                     ; preds = %299, %186
  %307 = phi i32 [ %194, %186 ], [ %305, %299 ]
  %308 = phi i32 [ 0, %186 ], [ %296, %299 ]
  %309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %309, i32 %3, i32 %4, i32 undef, i32 %307, i32 %308, i32 %307, i32 %307, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, [2 x %"class.RWTexture2D<vector<unsigned int, 2> >"]* undef, !"", i32 0, i32 6, i32 2, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!13 = !{void ()* @cs_physical_texture_compress_displacement_mip0_from_scratch, !"cs_physical_texture_compress_displacement_mip0_from_scratch", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!22 = distinct !{!22, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!23 = distinct !{!23, !22, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26}
!26 = distinct !{!26, !27, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!27 = distinct !{!27, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

