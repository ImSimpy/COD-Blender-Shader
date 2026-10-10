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
; shader hash: ec464e65153178e44c60d77ce8e0b39f
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
;                                   texture     f32          2d      T0             t8     1
;                                   texture     f32          2d      T1            t10     1
;                                   texture     f32          2d      T2            t12     1
;                                       UAV     u32          2d      U0             u0     2
;                                       UAV     u32          2d      U1             u2     2
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }

define void @cs_physical_texture_compress_mip0_from_scratch_2() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = alloca [16 x float], align 4
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = alloca [16 x float], align 4
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = shl i32 %4, 2
  %15 = shl i32 %5, 2
  %16 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %14, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 0
  %18 = extractvalue %dx.types.ResRet.f32 %16, 1
  %19 = extractvalue %dx.types.ResRet.f32 %16, 2
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %14, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %14, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = extractvalue %dx.types.ResRet.f32 %24, 1
  %27 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 0
  %28 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 0
  %29 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  store float %17, float* %27, align 4
  store float %18, float* %28, align 4
  store float %19, float* %29, align 4
  %30 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 0
  store float %25, float* %30, align 4, !tbaa !17
  %31 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 0
  %32 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %33 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  store float %26, float* %31, align 4
  store float %21, float* %32, align 4
  store float %23, float* %33, align 4
  %34 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 0
  store float %22, float* %34, align 4, !tbaa !17
  %35 = or i32 %14, 1
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %35, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  %39 = extractvalue %dx.types.ResRet.f32 %36, 2
  %40 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = extractvalue %dx.types.ResRet.f32 %40, 1
  %43 = extractvalue %dx.types.ResRet.f32 %40, 2
  %44 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %35, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 1
  %48 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 1
  %49 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  store float %37, float* %47, align 4
  store float %38, float* %48, align 4
  store float %39, float* %49, align 4
  %50 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 1
  store float %45, float* %50, align 4, !tbaa !17
  %51 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 1
  %52 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %53 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  store float %46, float* %51, align 4
  store float %41, float* %52, align 4
  store float %43, float* %53, align 4
  %54 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 1
  store float %42, float* %54, align 4, !tbaa !17
  %55 = or i32 %14, 2
  %56 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %55, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %55, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %55, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 2
  %68 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 2
  %69 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  store float %57, float* %67, align 4
  store float %58, float* %68, align 4
  store float %59, float* %69, align 4
  %70 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 2
  store float %65, float* %70, align 4, !tbaa !17
  %71 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 2
  %72 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %73 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  store float %66, float* %71, align 4
  store float %61, float* %72, align 4
  store float %63, float* %73, align 4
  %74 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 2
  store float %62, float* %74, align 4, !tbaa !17
  %75 = or i32 %14, 3
  %76 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %75, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = extractvalue %dx.types.ResRet.f32 %76, 1
  %79 = extractvalue %dx.types.ResRet.f32 %76, 2
  %80 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = extractvalue %dx.types.ResRet.f32 %80, 1
  %83 = extractvalue %dx.types.ResRet.f32 %80, 2
  %84 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %75, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 3
  %88 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 3
  %89 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  store float %77, float* %87, align 4
  store float %78, float* %88, align 4
  store float %79, float* %89, align 4
  %90 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 3
  store float %85, float* %90, align 4, !tbaa !17
  %91 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 3
  %92 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %93 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  store float %86, float* %91, align 4
  store float %81, float* %92, align 4
  store float %83, float* %93, align 4
  %94 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 3
  store float %82, float* %94, align 4, !tbaa !17
  %95 = or i32 %15, 1
  %96 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %14, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %14, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = extractvalue %dx.types.ResRet.f32 %100, 1
  %103 = extractvalue %dx.types.ResRet.f32 %100, 2
  %104 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %14, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = extractvalue %dx.types.ResRet.f32 %104, 1
  %107 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 4
  %108 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 4
  %109 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  store float %97, float* %107, align 4
  store float %98, float* %108, align 4
  store float %99, float* %109, align 4
  %110 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 4
  store float %105, float* %110, align 4, !tbaa !17
  %111 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 4
  %112 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %113 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  store float %106, float* %111, align 4
  store float %101, float* %112, align 4
  store float %103, float* %113, align 4
  %114 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 4
  store float %102, float* %114, align 4, !tbaa !17
  %115 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %35, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = extractvalue %dx.types.ResRet.f32 %115, 1
  %118 = extractvalue %dx.types.ResRet.f32 %115, 2
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = extractvalue %dx.types.ResRet.f32 %119, 2
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %35, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 5
  %127 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 5
  %128 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  store float %116, float* %126, align 4
  store float %117, float* %127, align 4
  store float %118, float* %128, align 4
  %129 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 5
  store float %124, float* %129, align 4, !tbaa !17
  %130 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 5
  %131 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %132 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  store float %125, float* %130, align 4
  store float %120, float* %131, align 4
  store float %122, float* %132, align 4
  %133 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 5
  store float %121, float* %133, align 4, !tbaa !17
  %134 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %55, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = extractvalue %dx.types.ResRet.f32 %134, 1
  %137 = extractvalue %dx.types.ResRet.f32 %134, 2
  %138 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %55, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = extractvalue %dx.types.ResRet.f32 %138, 1
  %141 = extractvalue %dx.types.ResRet.f32 %138, 2
  %142 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %55, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 6
  %146 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 6
  %147 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  store float %135, float* %145, align 4
  store float %136, float* %146, align 4
  store float %137, float* %147, align 4
  %148 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 6
  store float %143, float* %148, align 4, !tbaa !17
  %149 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 6
  %150 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %151 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  store float %144, float* %149, align 4
  store float %139, float* %150, align 4
  store float %141, float* %151, align 4
  %152 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 6
  store float %140, float* %152, align 4, !tbaa !17
  %153 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %75, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = extractvalue %dx.types.ResRet.f32 %153, 1
  %156 = extractvalue %dx.types.ResRet.f32 %153, 2
  %157 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = extractvalue %dx.types.ResRet.f32 %157, 1
  %160 = extractvalue %dx.types.ResRet.f32 %157, 2
  %161 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %75, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  %164 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 7
  %165 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 7
  %166 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  store float %154, float* %164, align 4
  store float %155, float* %165, align 4
  store float %156, float* %166, align 4
  %167 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 7
  store float %162, float* %167, align 4, !tbaa !17
  %168 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 7
  %169 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %170 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  store float %163, float* %168, align 4
  store float %158, float* %169, align 4
  store float %160, float* %170, align 4
  %171 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 7
  store float %159, float* %171, align 4, !tbaa !17
  %172 = or i32 %15, 2
  %173 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %14, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %14, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = extractvalue %dx.types.ResRet.f32 %177, 1
  %180 = extractvalue %dx.types.ResRet.f32 %177, 2
  %181 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %14, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 8
  %185 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 8
  %186 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  store float %174, float* %184, align 4
  store float %175, float* %185, align 4
  store float %176, float* %186, align 4
  %187 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 8
  store float %182, float* %187, align 4, !tbaa !17
  %188 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 8
  %189 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %190 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  store float %183, float* %188, align 4
  store float %178, float* %189, align 4
  store float %180, float* %190, align 4
  %191 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 8
  store float %179, float* %191, align 4, !tbaa !17
  %192 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %35, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = extractvalue %dx.types.ResRet.f32 %192, 1
  %195 = extractvalue %dx.types.ResRet.f32 %192, 2
  %196 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = extractvalue %dx.types.ResRet.f32 %196, 1
  %199 = extractvalue %dx.types.ResRet.f32 %196, 2
  %200 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %35, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = extractvalue %dx.types.ResRet.f32 %200, 1
  %203 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 9
  %204 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 9
  %205 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  store float %193, float* %203, align 4
  store float %194, float* %204, align 4
  store float %195, float* %205, align 4
  %206 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 9
  store float %201, float* %206, align 4, !tbaa !17
  %207 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 9
  %208 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %209 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  store float %202, float* %207, align 4
  store float %197, float* %208, align 4
  store float %199, float* %209, align 4
  %210 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 9
  store float %198, float* %210, align 4, !tbaa !17
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %55, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %55, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = extractvalue %dx.types.ResRet.f32 %215, 1
  %218 = extractvalue %dx.types.ResRet.f32 %215, 2
  %219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %55, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = extractvalue %dx.types.ResRet.f32 %219, 1
  %222 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 10
  %223 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 10
  %224 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  store float %212, float* %222, align 4
  store float %213, float* %223, align 4
  store float %214, float* %224, align 4
  %225 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 10
  store float %220, float* %225, align 4, !tbaa !17
  %226 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 10
  %227 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %228 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  store float %221, float* %226, align 4
  store float %216, float* %227, align 4
  store float %218, float* %228, align 4
  %229 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 10
  store float %217, float* %229, align 4, !tbaa !17
  %230 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %75, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %75, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 11
  %242 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 11
  %243 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  store float %231, float* %241, align 4
  store float %232, float* %242, align 4
  store float %233, float* %243, align 4
  %244 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 11
  store float %239, float* %244, align 4, !tbaa !17
  %245 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 11
  %246 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %247 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  store float %240, float* %245, align 4
  store float %235, float* %246, align 4
  store float %237, float* %247, align 4
  %248 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 11
  store float %236, float* %248, align 4, !tbaa !17
  %249 = or i32 %15, 3
  %250 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %14, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %14, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = extractvalue %dx.types.ResRet.f32 %254, 1
  %257 = extractvalue %dx.types.ResRet.f32 %254, 2
  %258 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %14, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 12
  %262 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 12
  %263 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  store float %251, float* %261, align 4
  store float %252, float* %262, align 4
  store float %253, float* %263, align 4
  %264 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 12
  store float %259, float* %264, align 4, !tbaa !17
  %265 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 12
  %266 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %267 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  store float %260, float* %265, align 4
  store float %255, float* %266, align 4
  store float %257, float* %267, align 4
  %268 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 12
  store float %256, float* %268, align 4, !tbaa !17
  %269 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %35, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %35, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 13
  %281 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 13
  %282 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  store float %270, float* %280, align 4
  store float %271, float* %281, align 4
  store float %272, float* %282, align 4
  %283 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 13
  store float %278, float* %283, align 4, !tbaa !17
  %284 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 13
  %285 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %286 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  store float %279, float* %284, align 4
  store float %274, float* %285, align 4
  store float %276, float* %286, align 4
  %287 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 13
  store float %275, float* %287, align 4, !tbaa !17
  %288 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %55, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %55, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %55, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 14
  %300 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 14
  %301 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  store float %289, float* %299, align 4
  store float %290, float* %300, align 4
  store float %291, float* %301, align 4
  %302 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 14
  store float %297, float* %302, align 4, !tbaa !17
  %303 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 14
  %304 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %305 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  store float %298, float* %303, align 4
  store float %293, float* %304, align 4
  store float %295, float* %305, align 4
  %306 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 14
  store float %294, float* %306, align 4, !tbaa !17
  %307 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %75, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %75, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 15
  %319 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 15
  %320 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  store float %308, float* %318, align 4
  store float %309, float* %319, align 4
  store float %310, float* %320, align 4
  %321 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 15
  store float %316, float* %321, align 4, !tbaa !17
  %322 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 15
  %323 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %324 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  store float %317, float* %322, align 4
  store float %312, float* %323, align 4
  store float %314, float* %324, align 4
  %325 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 15
  store float %313, float* %325, align 4, !tbaa !17
  %326 = load float, float* %27, align 4
  %327 = load float, float* %28, align 4
  %328 = load float, float* %29, align 4
  br label %329

; <label>:329                                     ; preds = %348, %0
  %330 = phi float [ %39, %0 ], [ %354, %348 ]
  %331 = phi float [ %38, %0 ], [ %352, %348 ]
  %332 = phi float [ %37, %0 ], [ %350, %348 ]
  %333 = phi i32 [ 1, %0 ], [ %346, %348 ]
  %334 = phi float [ %326, %0 ], [ %340, %348 ]
  %335 = phi float [ %327, %0 ], [ %341, %348 ]
  %336 = phi float [ %328, %0 ], [ %342, %348 ]
  %337 = phi float [ %326, %0 ], [ %343, %348 ]
  %338 = phi float [ %327, %0 ], [ %344, %348 ]
  %339 = phi float [ %328, %0 ], [ %345, %348 ]
  %340 = call float @dx.op.binary.f32(i32 36, float %334, float %332)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 36, float %335, float %331)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %336, float %330)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %337, float %332)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %338, float %331)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %339, float %330)  ; FMax(a,b)
  %346 = add nuw nsw i32 %333, 1
  %347 = icmp eq i32 %346, 16
  br i1 %347, label %355, label %348

; <label>:348                                     ; preds = %329
  %349 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %346
  %350 = load float, float* %349, align 4
  %351 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %346
  %352 = load float, float* %351, align 4
  %353 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %346
  %354 = load float, float* %353, align 4
  br label %329

; <label>:355                                     ; preds = %329
  %356 = load float, float* %30, align 4, !tbaa !17, !noalias !21
  %357 = call float @dx.op.binary.f32(i32 36, float %356, float %45)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %356, float %45)  ; FMax(a,b)
  br label %359

; <label>:359                                     ; preds = %359, %355
  %360 = phi i32 [ 2, %355 ], [ %367, %359 ]
  %361 = phi float [ %358, %355 ], [ %366, %359 ]
  %362 = phi float [ %357, %355 ], [ %365, %359 ]
  %363 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 %360
  %364 = load float, float* %363, align 4, !tbaa !17, !noalias !21
  %365 = call float @dx.op.binary.f32(i32 36, float %362, float %364)  ; FMin(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float %361, float %364)  ; FMax(a,b)
  %367 = add nuw nsw i32 %360, 1
  %368 = icmp eq i32 %367, 16
  br i1 %368, label %369, label %359

; <label>:369                                     ; preds = %359
  %370 = fsub fast float %343, %340
  %371 = fsub fast float %344, %341
  %372 = fsub fast float %345, %342
  %373 = fmul fast float %370, 6.250000e-02
  %374 = fmul fast float %371, 6.250000e-02
  %375 = fmul fast float %372, 6.250000e-02
  %376 = fsub fast float %343, %373
  %377 = fsub fast float %344, %374
  %378 = fsub fast float %345, %375
  %379 = fmul fast float %376, 2.550000e+02
  %380 = fmul fast float %377, 2.550000e+02
  %381 = fmul fast float %378, 2.550000e+02
  %382 = call float @dx.op.unary.f32(i32 28, float %379)  ; Round_pi(value)
  %383 = call float @dx.op.unary.f32(i32 28, float %380)  ; Round_pi(value)
  %384 = call float @dx.op.unary.f32(i32 28, float %381)  ; Round_pi(value)
  %385 = fmul fast float %382, 0x3F70101020000000
  %386 = fmul fast float %383, 0x3F70101020000000
  %387 = fmul fast float %384, 0x3F70101020000000
  %388 = fadd fast float %373, %340
  %389 = fadd fast float %374, %341
  %390 = fadd fast float %375, %342
  %391 = fmul fast float %388, 2.550000e+02
  %392 = fmul fast float %389, 2.550000e+02
  %393 = fmul fast float %390, 2.550000e+02
  %394 = call float @dx.op.unary.f32(i32 27, float %391)  ; Round_ni(value)
  %395 = call float @dx.op.unary.f32(i32 27, float %392)  ; Round_ni(value)
  %396 = call float @dx.op.unary.f32(i32 27, float %393)  ; Round_ni(value)
  %397 = fmul fast float %394, 0x3FBF1F1F40000000
  %398 = fmul fast float %395, 0x3FCF9F9FC0000000
  %399 = fmul fast float %396, 0x3FBF1F1F40000000
  %400 = call float @dx.op.unary.f32(i32 26, float %397)  ; Round_ne(value)
  %401 = call float @dx.op.unary.f32(i32 26, float %398)  ; Round_ne(value)
  %402 = call float @dx.op.unary.f32(i32 26, float %399)  ; Round_ne(value)
  %403 = fptoui float %400 to i32
  %404 = fptoui float %401 to i32
  %405 = fptoui float %402 to i32
  %406 = shl i32 %403, 11
  %407 = shl i32 %404, 5
  %408 = or i32 %407, %406
  %409 = or i32 %408, %405
  %410 = fmul fast float %382, 0x3FBF1F1F40000000
  %411 = fmul fast float %383, 0x3FCF9F9FC0000000
  %412 = fmul fast float %384, 0x3FBF1F1F40000000
  %413 = call float @dx.op.unary.f32(i32 26, float %410)  ; Round_ne(value)
  %414 = call float @dx.op.unary.f32(i32 26, float %411)  ; Round_ne(value)
  %415 = call float @dx.op.unary.f32(i32 26, float %412)  ; Round_ne(value)
  %416 = fptoui float %413 to i32
  %417 = fptoui float %414 to i32
  %418 = fptoui float %415 to i32
  %419 = shl i32 %416, 11
  %420 = shl i32 %417, 5
  %421 = or i32 %420, %419
  %422 = or i32 %421, %418
  %423 = fmul fast float %365, 2.550000e+02
  %424 = call float @dx.op.unary.f32(i32 26, float %423)  ; Round_ne(value)
  %425 = fptoui float %424 to i32
  %426 = fmul fast float %366, 2.550000e+02
  %427 = call float @dx.op.unary.f32(i32 26, float %426)  ; Round_ne(value)
  %428 = fptoui float %427 to i32
  %429 = icmp ult i32 %409, %422
  br i1 %429, label %430, label %478, !dx.controlflow.hints !25

; <label>:430                                     ; preds = %369
  %431 = fmul fast float %396, 0x3F70101020000000
  %432 = fmul fast float %395, 0x3F70101020000000
  %433 = fmul fast float %394, 0x3F70101020000000
  %434 = fsub fast float %394, %382
  %435 = fmul fast float %434, 0x3F70101020000000
  %436 = fsub fast float %395, %383
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = fsub fast float %396, %384
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = call float @dx.op.dot3.f32(i32 55, float %435, float %437, float %439, float %435, float %437, float %439)  ; Dot3(ax,ay,az,bx,by,bz)
  %441 = fdiv fast float 3.000000e+00, %440
  %442 = fmul fast float %441, %435
  %443 = fmul fast float %441, %437
  %444 = fmul fast float %441, %439
  %445 = call float @dx.op.dot3.f32(i32 55, float %385, float %386, float %387, float %385, float %386, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = call float @dx.op.dot3.f32(i32 55, float %385, float %386, float %387, float %433, float %432, float %431)  ; Dot3(ax,ay,az,bx,by,bz)
  %447 = fsub fast float %445, %446
  %448 = fmul fast float %447, %441
  br label %449

; <label>:449                                     ; preds = %470, %430
  %450 = phi float [ %310, %430 ], [ %476, %470 ]
  %451 = phi float [ %309, %430 ], [ %474, %470 ]
  %452 = phi float [ %308, %430 ], [ %472, %470 ]
  %453 = phi i32 [ 15, %430 ], [ %468, %470 ]
  %454 = phi i32 [ 0, %430 ], [ %467, %470 ]
  %455 = call float @dx.op.dot3.f32(i32 55, float %452, float %451, float %450, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = fadd fast float %455, %448
  %457 = call float @dx.op.unary.f32(i32 26, float %456)  ; Round_ne(value)
  %458 = fptoui float %457 to i32
  %459 = and i32 %458, 1
  %460 = lshr i32 %458, 1
  %461 = xor i32 %459, %460
  %462 = shl nuw i32 %461, 1
  %463 = or i32 %460, %454
  %464 = or i32 %463, %462
  %465 = icmp ne i32 %453, 0
  %466 = shl i32 %464, 2
  %467 = select i1 %465, i32 %466, i32 %464
  %468 = add nsw i32 %453, -1
  %469 = icmp sgt i32 %453, 0
  br i1 %469, label %470, label %477

; <label>:470                                     ; preds = %449
  %471 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %468
  %472 = load float, float* %471, align 4
  %473 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %468
  %474 = load float, float* %473, align 4
  %475 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %468
  %476 = load float, float* %475, align 4
  br label %449

; <label>:477                                     ; preds = %449
  br label %478

; <label>:478                                     ; preds = %477, %369
  %479 = phi i32 [ 0, %369 ], [ %467, %477 ]
  %480 = shl i32 %425, 8
  %481 = or i32 %480, %428
  %482 = icmp ult i32 %425, %428
  br i1 %482, label %483, label %593, !dx.controlflow.hints !26

; <label>:483                                     ; preds = %478
  %484 = fsub fast float %365, %366
  %485 = fdiv fast float 7.000000e+00, %484
  %486 = fsub fast float %356, %366
  %487 = fmul fast float %486, %485
  %488 = call float @dx.op.unary.f32(i32 26, float %487)  ; Round_ne(value)
  %489 = fptoui float %488 to i32
  %490 = icmp ne i32 %489, 0
  %491 = zext i1 %490 to i32
  %492 = icmp eq i32 %489, 7
  %493 = select i1 %492, i32 65529, i32 0
  %494 = add i32 %493, %489
  %495 = add i32 %494, %491
  %496 = shl i32 %495, 16
  %497 = fsub fast float %45, %366
  %498 = fmul fast float %497, %485
  %499 = call float @dx.op.unary.f32(i32 26, float %498)  ; Round_ne(value)
  %500 = fptoui float %499 to i32
  %501 = icmp ne i32 %500, 0
  %502 = zext i1 %501 to i32
  %503 = icmp eq i32 %500, 7
  %504 = select i1 %503, i32 8185, i32 0
  %505 = add i32 %504, %500
  %506 = add i32 %505, %502
  %507 = shl i32 %506, 19
  %508 = fsub fast float %65, %366
  %509 = fmul fast float %508, %485
  %510 = call float @dx.op.unary.f32(i32 26, float %509)  ; Round_ne(value)
  %511 = fptoui float %510 to i32
  %512 = icmp ne i32 %511, 0
  %513 = zext i1 %512 to i32
  %514 = icmp eq i32 %511, 7
  %515 = select i1 %514, i32 1017, i32 0
  %516 = add i32 %515, %511
  %517 = add i32 %516, %513
  %518 = shl i32 %517, 22
  %519 = fsub fast float %85, %366
  %520 = fmul fast float %519, %485
  %521 = call float @dx.op.unary.f32(i32 26, float %520)  ; Round_ne(value)
  %522 = fptoui float %521 to i32
  %523 = icmp ne i32 %522, 0
  %524 = zext i1 %523 to i32
  %525 = icmp eq i32 %522, 7
  %526 = select i1 %525, i32 121, i32 0
  %527 = add i32 %526, %522
  %528 = add i32 %527, %524
  %529 = shl i32 %528, 25
  %530 = fsub fast float %105, %366
  %531 = fmul fast float %530, %485
  %532 = call float @dx.op.unary.f32(i32 26, float %531)  ; Round_ne(value)
  %533 = fptoui float %532 to i32
  %534 = icmp ne i32 %533, 0
  %535 = zext i1 %534 to i32
  %536 = icmp eq i32 %533, 7
  %537 = select i1 %536, i32 9, i32 0
  %538 = add i32 %537, %533
  %539 = add i32 %538, %535
  %540 = shl i32 %539, 28
  %541 = fsub fast float %124, %366
  %542 = fmul fast float %541, %485
  %543 = call float @dx.op.unary.f32(i32 26, float %542)  ; Round_ne(value)
  %544 = fptoui float %543 to i32
  %545 = icmp ne i32 %544, 0
  %546 = zext i1 %545 to i32
  %547 = icmp eq i32 %544, 7
  %548 = select i1 %547, i32 7, i32 0
  %549 = sub nsw i32 %546, %548
  %550 = add i32 %549, %544
  %551 = shl i32 %550, 31
  %552 = lshr i32 %550, 1
  %553 = fsub fast float %143, %366
  %554 = fmul fast float %553, %485
  %555 = call float @dx.op.unary.f32(i32 26, float %554)  ; Round_ne(value)
  %556 = fptoui float %555 to i32
  %557 = icmp ne i32 %556, 0
  %558 = zext i1 %557 to i32
  %559 = icmp eq i32 %556, 7
  %560 = select i1 %559, i32 1073741817, i32 0
  %561 = add i32 %560, %556
  %562 = add i32 %561, %558
  %563 = shl i32 %562, 2
  %564 = or i32 %563, %552
  br label %565

; <label>:565                                     ; preds = %565, %483
  %566 = phi i32 [ 7, %483 ], [ %584, %565 ]
  %567 = phi i32 [ %564, %483 ], [ %583, %565 ]
  %568 = phi i32 [ 2, %483 ], [ %569, %565 ]
  %569 = add nuw nsw i32 %568, 3
  %570 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 %566
  %571 = load float, float* %570, align 4, !tbaa !17, !noalias !27
  %572 = fsub fast float %571, %366
  %573 = fmul fast float %572, %485
  %574 = call float @dx.op.unary.f32(i32 26, float %573)  ; Round_ne(value)
  %575 = fptoui float %574 to i32
  %576 = icmp ne i32 %575, 0
  %577 = zext i1 %576 to i32
  %578 = icmp eq i32 %575, 7
  %579 = select i1 %578, i32 -7, i32 0
  %580 = add i32 %579, %575
  %581 = add i32 %580, %577
  %582 = shl i32 %581, %569
  %583 = or i32 %582, %567
  %584 = add nuw nsw i32 %566, 1
  %585 = icmp eq i32 %584, 16
  br i1 %585, label %586, label %565

; <label>:586                                     ; preds = %565
  %587 = or i32 %496, %481
  %588 = or i32 %587, %507
  %589 = or i32 %588, %518
  %590 = or i32 %589, %529
  %591 = or i32 %590, %540
  %592 = or i32 %591, %551
  br label %593

; <label>:593                                     ; preds = %586, %478
  %594 = phi i32 [ %481, %478 ], [ %592, %586 ]
  %595 = phi i32 [ 0, %478 ], [ %583, %586 ]
  %596 = shl i32 %409, 16
  %597 = or i32 %422, %596
  %598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %598, i32 %4, i32 %5, i32 undef, i32 %594, i32 %595, i32 %597, i32 %479, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %599 = load float, float* %31, align 4
  %600 = load float, float* %32, align 4
  %601 = load float, float* %33, align 4
  br label %602

; <label>:602                                     ; preds = %602, %593
  %603 = phi float [ %599, %593 ], [ %619, %602 ]
  %604 = phi float [ %600, %593 ], [ %620, %602 ]
  %605 = phi float [ %601, %593 ], [ %621, %602 ]
  %606 = phi float [ %599, %593 ], [ %622, %602 ]
  %607 = phi float [ %600, %593 ], [ %623, %602 ]
  %608 = phi float [ %601, %593 ], [ %624, %602 ]
  %609 = phi float [ %599, %593 ], [ %625, %602 ]
  %610 = phi float [ %600, %593 ], [ %626, %602 ]
  %611 = phi float [ %601, %593 ], [ %627, %602 ]
  %612 = phi i32 [ 1, %593 ], [ %628, %602 ]
  %613 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %612
  %614 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %612
  %615 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %612
  %616 = load float, float* %613, align 4
  %617 = load float, float* %614, align 4
  %618 = load float, float* %615, align 4
  %619 = fadd fast float %616, %603
  %620 = fadd fast float %617, %604
  %621 = fadd fast float %618, %605
  %622 = call float @dx.op.binary.f32(i32 36, float %606, float %616)  ; FMin(a,b)
  %623 = call float @dx.op.binary.f32(i32 36, float %607, float %617)  ; FMin(a,b)
  %624 = call float @dx.op.binary.f32(i32 36, float %608, float %618)  ; FMin(a,b)
  %625 = call float @dx.op.binary.f32(i32 35, float %609, float %616)  ; FMax(a,b)
  %626 = call float @dx.op.binary.f32(i32 35, float %610, float %617)  ; FMax(a,b)
  %627 = call float @dx.op.binary.f32(i32 35, float %611, float %618)  ; FMax(a,b)
  %628 = add nuw nsw i32 %612, 1
  %629 = icmp eq i32 %628, 16
  br i1 %629, label %630, label %602

; <label>:630                                     ; preds = %602
  %631 = fadd fast float %619, 3.125000e-02
  %632 = fadd fast float %620, 3.125000e-02
  %633 = fadd fast float %621, 3.125000e-02
  %634 = fmul fast float %631, 6.250000e-02
  %635 = fmul fast float %632, 6.250000e-02
  %636 = fmul fast float %633, 6.250000e-02
  br label %637

; <label>:637                                     ; preds = %665, %630
  %638 = phi float [ %601, %630 ], [ %671, %665 ]
  %639 = phi float [ %600, %630 ], [ %669, %665 ]
  %640 = phi float [ %599, %630 ], [ %667, %665 ]
  %641 = phi float [ 0.000000e+00, %630 ], [ %662, %665 ]
  %642 = phi float [ 0.000000e+00, %630 ], [ %660, %665 ]
  %643 = phi float [ 0.000000e+00, %630 ], [ %658, %665 ]
  %644 = phi float [ 0.000000e+00, %630 ], [ %656, %665 ]
  %645 = phi float [ 0.000000e+00, %630 ], [ %654, %665 ]
  %646 = phi float [ 0.000000e+00, %630 ], [ %652, %665 ]
  %647 = phi i32 [ 0, %630 ], [ %663, %665 ]
  %648 = fsub fast float %640, %634
  %649 = fsub fast float %639, %635
  %650 = fsub fast float %638, %636
  %651 = fmul fast float %648, %648
  %652 = fadd fast float %651, %646
  %653 = fmul fast float %649, %648
  %654 = fadd fast float %653, %645
  %655 = fmul fast float %650, %648
  %656 = fadd fast float %655, %644
  %657 = fmul fast float %649, %649
  %658 = fadd fast float %657, %643
  %659 = fmul fast float %650, %649
  %660 = fadd fast float %659, %642
  %661 = fmul fast float %650, %650
  %662 = fadd fast float %661, %641
  %663 = add nuw nsw i32 %647, 1
  %664 = icmp eq i32 %663, 16
  br i1 %664, label %672, label %665

; <label>:665                                     ; preds = %637
  %666 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %663
  %667 = load float, float* %666, align 4
  %668 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %663
  %669 = load float, float* %668, align 4
  %670 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %663
  %671 = load float, float* %670, align 4
  br label %637

; <label>:672                                     ; preds = %637
  %673 = fsub fast float %625, %622
  %674 = fsub fast float %626, %623
  %675 = fsub fast float %627, %624
  %676 = call float @dx.op.dot3.f32(i32 55, float %673, float %674, float %675, float %652, float %654, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %677 = call float @dx.op.dot3.f32(i32 55, float %673, float %674, float %675, float %654, float %658, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %678 = call float @dx.op.dot3.f32(i32 55, float %673, float %674, float %675, float %656, float %660, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %679 = call float @dx.op.dot3.f32(i32 55, float %676, float %677, float %678, float %652, float %654, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = call float @dx.op.dot3.f32(i32 55, float %676, float %677, float %678, float %654, float %658, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %681 = call float @dx.op.dot3.f32(i32 55, float %676, float %677, float %678, float %656, float %660, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %652, float %654, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %654, float %658, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %684 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %656, float %660, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float %652, float %654, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float %654, float %658, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float %656, float %660, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.dot3.f32(i32 55, float %599, float %600, float %601, float %685, float %686, float %687)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %689

; <label>:689                                     ; preds = %715, %672
  %690 = phi i32 [ 1, %672 ], [ %720, %715 ]
  %691 = phi float [ %688, %672 ], [ %709, %715 ]
  %692 = phi float [ %688, %672 ], [ %716, %715 ]
  %693 = phi float [ %599, %672 ], [ %710, %715 ]
  %694 = phi float [ %600, %672 ], [ %711, %715 ]
  %695 = phi float [ %601, %672 ], [ %712, %715 ]
  %696 = phi float [ %599, %672 ], [ %717, %715 ]
  %697 = phi float [ %600, %672 ], [ %718, %715 ]
  %698 = phi float [ %601, %672 ], [ %719, %715 ]
  %699 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %690
  %700 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %690
  %701 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %690
  %702 = load float, float* %699, align 4
  %703 = load float, float* %700, align 4
  %704 = load float, float* %701, align 4
  %705 = call float @dx.op.dot3.f32(i32 55, float %702, float %703, float %704, float %685, float %686, float %687)  ; Dot3(ax,ay,az,bx,by,bz)
  %706 = fcmp fast olt float %705, %691
  br i1 %706, label %707, label %708, !dx.controlflow.hints !30

; <label>:707                                     ; preds = %689
  br label %708

; <label>:708                                     ; preds = %707, %689
  %709 = phi float [ %705, %707 ], [ %691, %689 ]
  %710 = phi float [ %702, %707 ], [ %693, %689 ]
  %711 = phi float [ %703, %707 ], [ %694, %689 ]
  %712 = phi float [ %704, %707 ], [ %695, %689 ]
  %713 = fcmp fast ogt float %705, %692
  br i1 %713, label %714, label %715, !dx.controlflow.hints !31

; <label>:714                                     ; preds = %708
  br label %715

; <label>:715                                     ; preds = %714, %708
  %716 = phi float [ %705, %714 ], [ %692, %708 ]
  %717 = phi float [ %702, %714 ], [ %696, %708 ]
  %718 = phi float [ %703, %714 ], [ %697, %708 ]
  %719 = phi float [ %704, %714 ], [ %698, %708 ]
  %720 = add nuw nsw i32 %690, 1
  %721 = icmp eq i32 %720, 16
  br i1 %721, label %722, label %689

; <label>:722                                     ; preds = %715
  %723 = load float, float* %34, align 4, !tbaa !17, !noalias !32
  %724 = call float @dx.op.binary.f32(i32 36, float %723, float %42)  ; FMin(a,b)
  %725 = call float @dx.op.binary.f32(i32 35, float %723, float %42)  ; FMax(a,b)
  br label %726

; <label>:726                                     ; preds = %726, %722
  %727 = phi i32 [ 2, %722 ], [ %734, %726 ]
  %728 = phi float [ %725, %722 ], [ %733, %726 ]
  %729 = phi float [ %724, %722 ], [ %732, %726 ]
  %730 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 %727
  %731 = load float, float* %730, align 4, !tbaa !17, !noalias !32
  %732 = call float @dx.op.binary.f32(i32 36, float %729, float %731)  ; FMin(a,b)
  %733 = call float @dx.op.binary.f32(i32 35, float %728, float %731)  ; FMax(a,b)
  %734 = add nuw nsw i32 %727, 1
  %735 = icmp eq i32 %734, 16
  br i1 %735, label %736, label %726

; <label>:736                                     ; preds = %726
  %737 = fsub fast float %717, %710
  %738 = fsub fast float %718, %711
  %739 = fsub fast float %719, %712
  %740 = fmul fast float %737, 6.250000e-02
  %741 = fmul fast float %738, 6.250000e-02
  %742 = fmul fast float %739, 6.250000e-02
  %743 = fsub fast float %717, %740
  %744 = fsub fast float %718, %741
  %745 = fsub fast float %719, %742
  %746 = fmul fast float %743, 2.550000e+02
  %747 = fmul fast float %744, 2.550000e+02
  %748 = fmul fast float %745, 2.550000e+02
  %749 = call float @dx.op.unary.f32(i32 28, float %746)  ; Round_pi(value)
  %750 = call float @dx.op.unary.f32(i32 28, float %747)  ; Round_pi(value)
  %751 = call float @dx.op.unary.f32(i32 28, float %748)  ; Round_pi(value)
  %752 = fmul fast float %749, 0x3F70101020000000
  %753 = fmul fast float %750, 0x3F70101020000000
  %754 = fmul fast float %751, 0x3F70101020000000
  %755 = fadd fast float %740, %710
  %756 = fadd fast float %741, %711
  %757 = fadd fast float %742, %712
  %758 = fmul fast float %755, 2.550000e+02
  %759 = fmul fast float %756, 2.550000e+02
  %760 = fmul fast float %757, 2.550000e+02
  %761 = call float @dx.op.unary.f32(i32 27, float %758)  ; Round_ni(value)
  %762 = call float @dx.op.unary.f32(i32 27, float %759)  ; Round_ni(value)
  %763 = call float @dx.op.unary.f32(i32 27, float %760)  ; Round_ni(value)
  %764 = fmul fast float %761, 0x3F70101020000000
  %765 = fmul fast float %762, 0x3F70101020000000
  %766 = fmul fast float %763, 0x3F70101020000000
  %767 = fmul fast float %761, 0x3FBF1F1F40000000
  %768 = fmul fast float %762, 0x3FCF9F9FC0000000
  %769 = fmul fast float %763, 0x3FBF1F1F40000000
  %770 = call float @dx.op.unary.f32(i32 26, float %767)  ; Round_ne(value)
  %771 = call float @dx.op.unary.f32(i32 26, float %768)  ; Round_ne(value)
  %772 = call float @dx.op.unary.f32(i32 26, float %769)  ; Round_ne(value)
  %773 = fptoui float %770 to i32
  %774 = fptoui float %771 to i32
  %775 = fptoui float %772 to i32
  %776 = shl i32 %773, 11
  %777 = shl i32 %774, 5
  %778 = or i32 %777, %776
  %779 = or i32 %778, %775
  %780 = fmul fast float %749, 0x3FBF1F1F40000000
  %781 = fmul fast float %750, 0x3FCF9F9FC0000000
  %782 = fmul fast float %751, 0x3FBF1F1F40000000
  %783 = call float @dx.op.unary.f32(i32 26, float %780)  ; Round_ne(value)
  %784 = call float @dx.op.unary.f32(i32 26, float %781)  ; Round_ne(value)
  %785 = call float @dx.op.unary.f32(i32 26, float %782)  ; Round_ne(value)
  %786 = fptoui float %783 to i32
  %787 = fptoui float %784 to i32
  %788 = fptoui float %785 to i32
  %789 = shl i32 %786, 11
  %790 = shl i32 %787, 5
  %791 = or i32 %790, %789
  %792 = or i32 %791, %788
  %793 = fmul fast float %732, 2.550000e+02
  %794 = call float @dx.op.unary.f32(i32 26, float %793)  ; Round_ne(value)
  %795 = fptoui float %794 to i32
  %796 = fmul fast float %733, 2.550000e+02
  %797 = call float @dx.op.unary.f32(i32 26, float %796)  ; Round_ne(value)
  %798 = fptoui float %797 to i32
  %799 = icmp ugt i32 %779, %792
  %800 = select i1 %799, float %752, float %764
  %801 = select i1 %799, float %753, float %765
  %802 = select i1 %799, float %754, float %766
  %803 = select i1 %799, float %764, float %752
  %804 = select i1 %799, float %765, float %753
  %805 = select i1 %799, float %766, float %754
  %806 = select i1 %799, i32 %792, i32 %779
  %807 = select i1 %799, i32 %779, i32 %792
  %808 = icmp ult i32 %806, %807
  br i1 %808, label %809, label %847, !dx.controlflow.hints !25

; <label>:809                                     ; preds = %736
  %810 = fsub fast float %800, %803
  %811 = fsub fast float %801, %804
  %812 = fsub fast float %802, %805
  %813 = call float @dx.op.dot3.f32(i32 55, float %810, float %811, float %812, float %810, float %811, float %812)  ; Dot3(ax,ay,az,bx,by,bz)
  %814 = fdiv fast float 3.000000e+00, %813
  %815 = fmul fast float %814, %810
  %816 = fmul fast float %814, %811
  %817 = fmul fast float %814, %812
  %818 = call float @dx.op.dot3.f32(i32 55, float %803, float %804, float %805, float %803, float %804, float %805)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.dot3.f32(i32 55, float %803, float %804, float %805, float %800, float %801, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = fsub fast float %818, %819
  %821 = fmul fast float %820, %814
  br label %822

; <label>:822                                     ; preds = %822, %809
  %823 = phi i32 [ 0, %809 ], [ %843, %822 ]
  %824 = phi i32 [ 15, %809 ], [ %844, %822 ]
  %825 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %824
  %826 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %824
  %827 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %824
  %828 = load float, float* %825, align 4
  %829 = load float, float* %826, align 4
  %830 = load float, float* %827, align 4
  %831 = call float @dx.op.dot3.f32(i32 55, float %828, float %829, float %830, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = fadd fast float %831, %821
  %833 = call float @dx.op.unary.f32(i32 26, float %832)  ; Round_ne(value)
  %834 = fptoui float %833 to i32
  %835 = and i32 %834, 1
  %836 = lshr i32 %834, 1
  %837 = xor i32 %835, %836
  %838 = shl nuw i32 %837, 1
  %839 = or i32 %836, %823
  %840 = or i32 %839, %838
  %841 = icmp ne i32 %824, 0
  %842 = shl i32 %840, 2
  %843 = select i1 %841, i32 %842, i32 %840
  %844 = add nsw i32 %824, -1
  %845 = icmp sgt i32 %824, 0
  br i1 %845, label %822, label %846

; <label>:846                                     ; preds = %822
  br label %847

; <label>:847                                     ; preds = %846, %736
  %848 = phi i32 [ 0, %736 ], [ %843, %846 ]
  %849 = shl i32 %795, 8
  %850 = or i32 %849, %798
  %851 = icmp ult i32 %795, %798
  br i1 %851, label %852, label %963, !dx.controlflow.hints !26

; <label>:852                                     ; preds = %847
  %853 = fsub fast float %732, %733
  %854 = fdiv fast float 7.000000e+00, %853
  %855 = fsub fast float %723, %733
  %856 = fmul fast float %855, %854
  %857 = call float @dx.op.unary.f32(i32 26, float %856)  ; Round_ne(value)
  %858 = fptoui float %857 to i32
  %859 = icmp ne i32 %858, 0
  %860 = zext i1 %859 to i32
  %861 = icmp eq i32 %858, 7
  %862 = select i1 %861, i32 65529, i32 0
  %863 = add i32 %862, %858
  %864 = add i32 %863, %860
  %865 = shl i32 %864, 16
  %866 = fsub fast float %42, %733
  %867 = fmul fast float %866, %854
  %868 = call float @dx.op.unary.f32(i32 26, float %867)  ; Round_ne(value)
  %869 = fptoui float %868 to i32
  %870 = icmp ne i32 %869, 0
  %871 = zext i1 %870 to i32
  %872 = icmp eq i32 %869, 7
  %873 = select i1 %872, i32 8185, i32 0
  %874 = add i32 %873, %869
  %875 = add i32 %874, %871
  %876 = shl i32 %875, 19
  %877 = load float, float* %74, align 4, !tbaa !17, !noalias !36
  %878 = fsub fast float %877, %733
  %879 = fmul fast float %878, %854
  %880 = call float @dx.op.unary.f32(i32 26, float %879)  ; Round_ne(value)
  %881 = fptoui float %880 to i32
  %882 = icmp ne i32 %881, 0
  %883 = zext i1 %882 to i32
  %884 = icmp eq i32 %881, 7
  %885 = select i1 %884, i32 1017, i32 0
  %886 = add i32 %885, %881
  %887 = add i32 %886, %883
  %888 = shl i32 %887, 22
  %889 = fsub fast float %82, %733
  %890 = fmul fast float %889, %854
  %891 = call float @dx.op.unary.f32(i32 26, float %890)  ; Round_ne(value)
  %892 = fptoui float %891 to i32
  %893 = icmp ne i32 %892, 0
  %894 = zext i1 %893 to i32
  %895 = icmp eq i32 %892, 7
  %896 = select i1 %895, i32 121, i32 0
  %897 = add i32 %896, %892
  %898 = add i32 %897, %894
  %899 = shl i32 %898, 25
  %900 = fsub fast float %102, %733
  %901 = fmul fast float %900, %854
  %902 = call float @dx.op.unary.f32(i32 26, float %901)  ; Round_ne(value)
  %903 = fptoui float %902 to i32
  %904 = icmp ne i32 %903, 0
  %905 = zext i1 %904 to i32
  %906 = icmp eq i32 %903, 7
  %907 = select i1 %906, i32 9, i32 0
  %908 = add i32 %907, %903
  %909 = add i32 %908, %905
  %910 = shl i32 %909, 28
  %911 = fsub fast float %121, %733
  %912 = fmul fast float %911, %854
  %913 = call float @dx.op.unary.f32(i32 26, float %912)  ; Round_ne(value)
  %914 = fptoui float %913 to i32
  %915 = icmp ne i32 %914, 0
  %916 = zext i1 %915 to i32
  %917 = icmp eq i32 %914, 7
  %918 = select i1 %917, i32 7, i32 0
  %919 = sub nsw i32 %916, %918
  %920 = add i32 %919, %914
  %921 = shl i32 %920, 31
  %922 = lshr i32 %920, 1
  %923 = fsub fast float %140, %733
  %924 = fmul fast float %923, %854
  %925 = call float @dx.op.unary.f32(i32 26, float %924)  ; Round_ne(value)
  %926 = fptoui float %925 to i32
  %927 = icmp ne i32 %926, 0
  %928 = zext i1 %927 to i32
  %929 = icmp eq i32 %926, 7
  %930 = select i1 %929, i32 1073741817, i32 0
  %931 = add i32 %930, %926
  %932 = add i32 %931, %928
  %933 = shl i32 %932, 2
  %934 = or i32 %933, %922
  br label %935

; <label>:935                                     ; preds = %935, %852
  %936 = phi i32 [ 7, %852 ], [ %954, %935 ]
  %937 = phi i32 [ %934, %852 ], [ %953, %935 ]
  %938 = phi i32 [ 2, %852 ], [ %939, %935 ]
  %939 = add nuw nsw i32 %938, 3
  %940 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 %936
  %941 = load float, float* %940, align 4, !tbaa !17, !noalias !36
  %942 = fsub fast float %941, %733
  %943 = fmul fast float %942, %854
  %944 = call float @dx.op.unary.f32(i32 26, float %943)  ; Round_ne(value)
  %945 = fptoui float %944 to i32
  %946 = icmp ne i32 %945, 0
  %947 = zext i1 %946 to i32
  %948 = icmp eq i32 %945, 7
  %949 = select i1 %948, i32 -7, i32 0
  %950 = add i32 %949, %945
  %951 = add i32 %950, %947
  %952 = shl i32 %951, %939
  %953 = or i32 %952, %937
  %954 = add nuw nsw i32 %936, 1
  %955 = icmp eq i32 %954, 16
  br i1 %955, label %956, label %935

; <label>:956                                     ; preds = %935
  %957 = or i32 %865, %850
  %958 = or i32 %957, %876
  %959 = or i32 %958, %888
  %960 = or i32 %959, %899
  %961 = or i32 %960, %910
  %962 = or i32 %961, %921
  br label %963

; <label>:963                                     ; preds = %956, %847
  %964 = phi i32 [ %850, %847 ], [ %962, %956 ]
  %965 = phi i32 [ 0, %847 ], [ %953, %956 ]
  %966 = shl i32 %806, 16
  %967 = or i32 %966, %807
  %968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %968, i32 %4, i32 %5, i32 undef, i32 %964, i32 %965, i32 %967, i32 %848, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, null, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !13}
!11 = !{i32 0, [2 x %"class.RWTexture2D<vector<unsigned int, 4> >"]* undef, !"", i32 0, i32 0, i32 2, i32 2, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 1, [2 x %"class.RWTexture2D<vector<unsigned int, 4> >"]* undef, !"", i32 0, i32 2, i32 2, i32 2, i1 false, i1 false, i1 false, !12}
!14 = !{void ()* @cs_physical_texture_compress_mip0_from_scratch_2, !"cs_physical_texture_compress_mip0_from_scratch_2", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!23 = distinct !{!23, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!24 = distinct !{!24, !23, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28}
!28 = distinct !{!28, !29, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!29 = distinct !{!29, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33, !35}
!33 = distinct !{!33, !34, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!34 = distinct !{!34, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!35 = distinct !{!35, !34, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!38 = distinct !{!38, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

