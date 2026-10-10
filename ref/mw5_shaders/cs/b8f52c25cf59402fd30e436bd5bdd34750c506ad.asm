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
; shader hash: 3fe7080ff39eb0e9bd1c19e4af4395dc
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
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     u32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<unsigned int, 4> >" = type { <4 x i32> }
%ConstantBufferRuntimeCompression = type { float, i32, i32, i32, i32, i32, i32, i32 }

define void @cs_bc3_compress_one_mip() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = alloca [16 x float], align 4
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = shl i32 %4, 2
  %11 = shl i32 %5, 2
  %12 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 0, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %13 = extractvalue %dx.types.ResRet.f32 %12, 0
  %14 = extractvalue %dx.types.ResRet.f32 %12, 1
  %15 = extractvalue %dx.types.ResRet.f32 %12, 2
  %16 = extractvalue %dx.types.ResRet.f32 %12, 3
  %17 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 0
  %18 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %19 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  store float %13, float* %17, align 4
  store float %14, float* %18, align 4
  store float %15, float* %19, align 4
  %20 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 0
  store float %16, float* %20, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %21 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 1, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = extractvalue %dx.types.ResRet.f32 %21, 1
  %24 = extractvalue %dx.types.ResRet.f32 %21, 2
  %25 = extractvalue %dx.types.ResRet.f32 %21, 3
  %26 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 1
  %27 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %28 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  store float %22, float* %26, align 4
  store float %23, float* %27, align 4
  store float %24, float* %28, align 4
  %29 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 1
  store float %25, float* %29, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %30 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 2, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = extractvalue %dx.types.ResRet.f32 %30, 3
  %35 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 2
  %36 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %37 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  store float %31, float* %35, align 4
  store float %32, float* %36, align 4
  store float %33, float* %37, align 4
  %38 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 2
  store float %34, float* %38, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %39 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 3, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = extractvalue %dx.types.ResRet.f32 %39, 1
  %42 = extractvalue %dx.types.ResRet.f32 %39, 2
  %43 = extractvalue %dx.types.ResRet.f32 %39, 3
  %44 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 3
  %45 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %46 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  store float %40, float* %44, align 4
  store float %41, float* %45, align 4
  store float %42, float* %46, align 4
  %47 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 3
  store float %43, float* %47, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 0, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = extractvalue %dx.types.ResRet.f32 %48, 3
  %53 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 4
  %54 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %55 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  store float %49, float* %53, align 4
  store float %50, float* %54, align 4
  store float %51, float* %55, align 4
  %56 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 4
  store float %52, float* %56, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %57 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 1, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = extractvalue %dx.types.ResRet.f32 %57, 3
  %62 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 5
  %63 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %64 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  store float %58, float* %62, align 4
  store float %59, float* %63, align 4
  store float %60, float* %64, align 4
  %65 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 5
  store float %61, float* %65, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %66 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 2, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = extractvalue %dx.types.ResRet.f32 %66, 3
  %71 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 6
  %72 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %73 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  store float %67, float* %71, align 4
  store float %68, float* %72, align 4
  store float %69, float* %73, align 4
  %74 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 6
  store float %70, float* %74, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %75 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 3, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = extractvalue %dx.types.ResRet.f32 %75, 1
  %78 = extractvalue %dx.types.ResRet.f32 %75, 2
  %79 = extractvalue %dx.types.ResRet.f32 %75, 3
  %80 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 7
  %81 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %82 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  store float %76, float* %80, align 4
  store float %77, float* %81, align 4
  store float %78, float* %82, align 4
  %83 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 7
  store float %79, float* %83, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %84 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 0, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = extractvalue %dx.types.ResRet.f32 %84, 2
  %88 = extractvalue %dx.types.ResRet.f32 %84, 3
  %89 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 8
  %90 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %91 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  store float %85, float* %89, align 4
  store float %86, float* %90, align 4
  store float %87, float* %91, align 4
  %92 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 8
  store float %88, float* %92, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %93 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 1, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = extractvalue %dx.types.ResRet.f32 %93, 1
  %96 = extractvalue %dx.types.ResRet.f32 %93, 2
  %97 = extractvalue %dx.types.ResRet.f32 %93, 3
  %98 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 9
  %99 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %100 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  store float %94, float* %98, align 4
  store float %95, float* %99, align 4
  store float %96, float* %100, align 4
  %101 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 9
  store float %97, float* %101, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 2, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = extractvalue %dx.types.ResRet.f32 %102, 3
  %107 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 10
  %108 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %109 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  store float %103, float* %107, align 4
  store float %104, float* %108, align 4
  store float %105, float* %109, align 4
  %110 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 10
  store float %106, float* %110, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %111 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 3, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = extractvalue %dx.types.ResRet.f32 %111, 1
  %114 = extractvalue %dx.types.ResRet.f32 %111, 2
  %115 = extractvalue %dx.types.ResRet.f32 %111, 3
  %116 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 11
  %117 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %118 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  store float %112, float* %116, align 4
  store float %113, float* %117, align 4
  store float %114, float* %118, align 4
  %119 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 11
  store float %115, float* %119, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %120 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 0, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = extractvalue %dx.types.ResRet.f32 %120, 1
  %123 = extractvalue %dx.types.ResRet.f32 %120, 2
  %124 = extractvalue %dx.types.ResRet.f32 %120, 3
  %125 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 12
  %126 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %127 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  store float %121, float* %125, align 4
  store float %122, float* %126, align 4
  store float %123, float* %127, align 4
  %128 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 12
  store float %124, float* %128, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %129 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 1, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = extractvalue %dx.types.ResRet.f32 %129, 1
  %132 = extractvalue %dx.types.ResRet.f32 %129, 2
  %133 = extractvalue %dx.types.ResRet.f32 %129, 3
  %134 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 13
  %135 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %136 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  store float %130, float* %134, align 4
  store float %131, float* %135, align 4
  store float %132, float* %136, align 4
  %137 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 13
  store float %133, float* %137, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %138 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 2, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = extractvalue %dx.types.ResRet.f32 %138, 1
  %141 = extractvalue %dx.types.ResRet.f32 %138, 2
  %142 = extractvalue %dx.types.ResRet.f32 %138, 3
  %143 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 14
  %144 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %145 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  store float %139, float* %143, align 4
  store float %140, float* %144, align 4
  store float %141, float* %145, align 4
  %146 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 14
  store float %142, float* %146, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  %147 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 undef, i32 3, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = extractvalue %dx.types.ResRet.f32 %147, 1
  %150 = extractvalue %dx.types.ResRet.f32 %147, 2
  %151 = extractvalue %dx.types.ResRet.f32 %147, 3
  %152 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 15
  %153 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %154 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  store float %148, float* %152, align 4
  store float %149, float* %153, align 4
  store float %150, float* %154, align 4
  %155 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 15
  store float %151, float* %155, align 4, !tbaa !16, !alias.scope !20, !noalias !23
  br label %156

; <label>:156                                     ; preds = %175, %0
  %157 = phi float [ %24, %0 ], [ %181, %175 ]
  %158 = phi float [ %23, %0 ], [ %179, %175 ]
  %159 = phi float [ %22, %0 ], [ %177, %175 ]
  %160 = phi float [ %13, %0 ], [ %170, %175 ]
  %161 = phi float [ %14, %0 ], [ %171, %175 ]
  %162 = phi float [ %15, %0 ], [ %172, %175 ]
  %163 = phi float [ %13, %0 ], [ %167, %175 ]
  %164 = phi float [ %14, %0 ], [ %168, %175 ]
  %165 = phi float [ %15, %0 ], [ %169, %175 ]
  %166 = phi i32 [ 1, %0 ], [ %173, %175 ]
  %167 = call float @dx.op.binary.f32(i32 36, float %163, float %159)  ; FMin(a,b)
  %168 = call float @dx.op.binary.f32(i32 36, float %164, float %158)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 36, float %165, float %157)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %160, float %159)  ; FMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %161, float %158)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %162, float %157)  ; FMax(a,b)
  %173 = add nuw nsw i32 %166, 1
  %174 = icmp eq i32 %173, 16
  br i1 %174, label %182, label %175

; <label>:175                                     ; preds = %156
  %176 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %173
  %177 = load float, float* %176, align 4
  %178 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %173
  %179 = load float, float* %178, align 4
  %180 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %173
  %181 = load float, float* %180, align 4
  br label %156

; <label>:182                                     ; preds = %156
  %183 = call float @dx.op.binary.f32(i32 36, float %16, float %25)  ; FMin(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float %16, float %25)  ; FMax(a,b)
  br label %185

; <label>:185                                     ; preds = %185, %182
  %186 = phi i32 [ 2, %182 ], [ %193, %185 ]
  %187 = phi float [ %184, %182 ], [ %192, %185 ]
  %188 = phi float [ %183, %182 ], [ %191, %185 ]
  %189 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 %186
  %190 = load float, float* %189, align 4, !tbaa !16, !noalias !25
  %191 = call float @dx.op.binary.f32(i32 36, float %188, float %190)  ; FMin(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float %187, float %190)  ; FMax(a,b)
  %193 = add nuw nsw i32 %186, 1
  %194 = icmp eq i32 %193, 16
  br i1 %194, label %195, label %185

; <label>:195                                     ; preds = %185
  %196 = fsub fast float %170, %167
  %197 = fsub fast float %171, %168
  %198 = fsub fast float %172, %169
  %199 = fmul fast float %196, 6.250000e-02
  %200 = fmul fast float %197, 6.250000e-02
  %201 = fmul fast float %198, 6.250000e-02
  %202 = fsub fast float %170, %199
  %203 = fsub fast float %171, %200
  %204 = fsub fast float %172, %201
  %205 = fmul fast float %202, 2.550000e+02
  %206 = fmul fast float %203, 2.550000e+02
  %207 = fmul fast float %204, 2.550000e+02
  %208 = call float @dx.op.unary.f32(i32 28, float %205)  ; Round_pi(value)
  %209 = call float @dx.op.unary.f32(i32 28, float %206)  ; Round_pi(value)
  %210 = call float @dx.op.unary.f32(i32 28, float %207)  ; Round_pi(value)
  %211 = fmul fast float %208, 0x3F70101020000000
  %212 = fmul fast float %209, 0x3F70101020000000
  %213 = fmul fast float %210, 0x3F70101020000000
  %214 = fadd fast float %199, %167
  %215 = fadd fast float %200, %168
  %216 = fadd fast float %201, %169
  %217 = fmul fast float %214, 2.550000e+02
  %218 = fmul fast float %215, 2.550000e+02
  %219 = fmul fast float %216, 2.550000e+02
  %220 = call float @dx.op.unary.f32(i32 27, float %217)  ; Round_ni(value)
  %221 = call float @dx.op.unary.f32(i32 27, float %218)  ; Round_ni(value)
  %222 = call float @dx.op.unary.f32(i32 27, float %219)  ; Round_ni(value)
  %223 = fmul fast float %220, 0x3FBF1F1F40000000
  %224 = fmul fast float %221, 0x3FCF9F9FC0000000
  %225 = fmul fast float %222, 0x3FBF1F1F40000000
  %226 = call float @dx.op.unary.f32(i32 26, float %223)  ; Round_ne(value)
  %227 = call float @dx.op.unary.f32(i32 26, float %224)  ; Round_ne(value)
  %228 = call float @dx.op.unary.f32(i32 26, float %225)  ; Round_ne(value)
  %229 = fptoui float %226 to i32
  %230 = fptoui float %227 to i32
  %231 = fptoui float %228 to i32
  %232 = shl i32 %229, 11
  %233 = shl i32 %230, 5
  %234 = or i32 %233, %232
  %235 = or i32 %234, %231
  %236 = fmul fast float %208, 0x3FBF1F1F40000000
  %237 = fmul fast float %209, 0x3FCF9F9FC0000000
  %238 = fmul fast float %210, 0x3FBF1F1F40000000
  %239 = call float @dx.op.unary.f32(i32 26, float %236)  ; Round_ne(value)
  %240 = call float @dx.op.unary.f32(i32 26, float %237)  ; Round_ne(value)
  %241 = call float @dx.op.unary.f32(i32 26, float %238)  ; Round_ne(value)
  %242 = fptoui float %239 to i32
  %243 = fptoui float %240 to i32
  %244 = fptoui float %241 to i32
  %245 = shl i32 %242, 11
  %246 = shl i32 %243, 5
  %247 = or i32 %246, %245
  %248 = or i32 %247, %244
  %249 = fmul fast float %191, 2.550000e+02
  %250 = call float @dx.op.unary.f32(i32 26, float %249)  ; Round_ne(value)
  %251 = fptoui float %250 to i32
  %252 = fmul fast float %192, 2.550000e+02
  %253 = call float @dx.op.unary.f32(i32 26, float %252)  ; Round_ne(value)
  %254 = fptoui float %253 to i32
  %255 = icmp ult i32 %235, %248
  br i1 %255, label %256, label %304, !dx.controlflow.hints !29

; <label>:256                                     ; preds = %195
  %257 = fmul fast float %222, 0x3F70101020000000
  %258 = fmul fast float %221, 0x3F70101020000000
  %259 = fmul fast float %220, 0x3F70101020000000
  %260 = fsub fast float %220, %208
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = fsub fast float %221, %209
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = fsub fast float %222, %210
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = call float @dx.op.dot3.f32(i32 55, float %261, float %263, float %265, float %261, float %263, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = fdiv fast float 3.000000e+00, %266
  %268 = fmul fast float %267, %261
  %269 = fmul fast float %267, %263
  %270 = fmul fast float %267, %265
  %271 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %272 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %259, float %258, float %257)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = fsub fast float %271, %272
  %274 = fmul fast float %273, %267
  br label %275

; <label>:275                                     ; preds = %296, %256
  %276 = phi float [ %150, %256 ], [ %302, %296 ]
  %277 = phi float [ %149, %256 ], [ %300, %296 ]
  %278 = phi float [ %148, %256 ], [ %298, %296 ]
  %279 = phi i32 [ 15, %256 ], [ %294, %296 ]
  %280 = phi i32 [ 0, %256 ], [ %293, %296 ]
  %281 = call float @dx.op.dot3.f32(i32 55, float %278, float %277, float %276, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %282 = fadd fast float %281, %274
  %283 = call float @dx.op.unary.f32(i32 26, float %282)  ; Round_ne(value)
  %284 = fptoui float %283 to i32
  %285 = and i32 %284, 1
  %286 = lshr i32 %284, 1
  %287 = xor i32 %285, %286
  %288 = shl nuw i32 %287, 1
  %289 = or i32 %286, %280
  %290 = or i32 %289, %288
  %291 = icmp ne i32 %279, 0
  %292 = shl i32 %290, 2
  %293 = select i1 %291, i32 %292, i32 %290
  %294 = add nsw i32 %279, -1
  %295 = icmp sgt i32 %279, 0
  br i1 %295, label %296, label %303

; <label>:296                                     ; preds = %275
  %297 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %294
  %298 = load float, float* %297, align 4
  %299 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %294
  %300 = load float, float* %299, align 4
  %301 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %294
  %302 = load float, float* %301, align 4
  br label %275

; <label>:303                                     ; preds = %275
  br label %304

; <label>:304                                     ; preds = %303, %195
  %305 = phi i32 [ 0, %195 ], [ %293, %303 ]
  %306 = shl i32 %251, 8
  %307 = or i32 %306, %254
  %308 = icmp ult i32 %251, %254
  br i1 %308, label %309, label %419, !dx.controlflow.hints !30

; <label>:309                                     ; preds = %304
  %310 = fsub fast float %191, %192
  %311 = fdiv fast float 7.000000e+00, %310
  %312 = fsub fast float %16, %192
  %313 = fmul fast float %312, %311
  %314 = call float @dx.op.unary.f32(i32 26, float %313)  ; Round_ne(value)
  %315 = fptoui float %314 to i32
  %316 = icmp ne i32 %315, 0
  %317 = zext i1 %316 to i32
  %318 = icmp eq i32 %315, 7
  %319 = select i1 %318, i32 65529, i32 0
  %320 = add i32 %319, %315
  %321 = add i32 %320, %317
  %322 = shl i32 %321, 16
  %323 = fsub fast float %25, %192
  %324 = fmul fast float %323, %311
  %325 = call float @dx.op.unary.f32(i32 26, float %324)  ; Round_ne(value)
  %326 = fptoui float %325 to i32
  %327 = icmp ne i32 %326, 0
  %328 = zext i1 %327 to i32
  %329 = icmp eq i32 %326, 7
  %330 = select i1 %329, i32 8185, i32 0
  %331 = add i32 %330, %326
  %332 = add i32 %331, %328
  %333 = shl i32 %332, 19
  %334 = fsub fast float %34, %192
  %335 = fmul fast float %334, %311
  %336 = call float @dx.op.unary.f32(i32 26, float %335)  ; Round_ne(value)
  %337 = fptoui float %336 to i32
  %338 = icmp ne i32 %337, 0
  %339 = zext i1 %338 to i32
  %340 = icmp eq i32 %337, 7
  %341 = select i1 %340, i32 1017, i32 0
  %342 = add i32 %341, %337
  %343 = add i32 %342, %339
  %344 = shl i32 %343, 22
  %345 = fsub fast float %43, %192
  %346 = fmul fast float %345, %311
  %347 = call float @dx.op.unary.f32(i32 26, float %346)  ; Round_ne(value)
  %348 = fptoui float %347 to i32
  %349 = icmp ne i32 %348, 0
  %350 = zext i1 %349 to i32
  %351 = icmp eq i32 %348, 7
  %352 = select i1 %351, i32 121, i32 0
  %353 = add i32 %352, %348
  %354 = add i32 %353, %350
  %355 = shl i32 %354, 25
  %356 = fsub fast float %52, %192
  %357 = fmul fast float %356, %311
  %358 = call float @dx.op.unary.f32(i32 26, float %357)  ; Round_ne(value)
  %359 = fptoui float %358 to i32
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i32
  %362 = icmp eq i32 %359, 7
  %363 = select i1 %362, i32 9, i32 0
  %364 = add i32 %363, %359
  %365 = add i32 %364, %361
  %366 = shl i32 %365, 28
  %367 = fsub fast float %61, %192
  %368 = fmul fast float %367, %311
  %369 = call float @dx.op.unary.f32(i32 26, float %368)  ; Round_ne(value)
  %370 = fptoui float %369 to i32
  %371 = icmp ne i32 %370, 0
  %372 = zext i1 %371 to i32
  %373 = icmp eq i32 %370, 7
  %374 = select i1 %373, i32 7, i32 0
  %375 = sub nsw i32 %372, %374
  %376 = add i32 %375, %370
  %377 = shl i32 %376, 31
  %378 = lshr i32 %376, 1
  %379 = fsub fast float %70, %192
  %380 = fmul fast float %379, %311
  %381 = call float @dx.op.unary.f32(i32 26, float %380)  ; Round_ne(value)
  %382 = fptoui float %381 to i32
  %383 = icmp ne i32 %382, 0
  %384 = zext i1 %383 to i32
  %385 = icmp eq i32 %382, 7
  %386 = select i1 %385, i32 1073741817, i32 0
  %387 = add i32 %386, %382
  %388 = add i32 %387, %384
  %389 = shl i32 %388, 2
  %390 = or i32 %389, %378
  br label %391

; <label>:391                                     ; preds = %391, %309
  %392 = phi i32 [ 7, %309 ], [ %410, %391 ]
  %393 = phi i32 [ %390, %309 ], [ %409, %391 ]
  %394 = phi i32 [ 2, %309 ], [ %395, %391 ]
  %395 = add nuw nsw i32 %394, 3
  %396 = getelementptr inbounds [16 x float], [16 x float]* %9, i32 0, i32 %392
  %397 = load float, float* %396, align 4, !tbaa !16, !noalias !31
  %398 = fsub fast float %397, %192
  %399 = fmul fast float %398, %311
  %400 = call float @dx.op.unary.f32(i32 26, float %399)  ; Round_ne(value)
  %401 = fptoui float %400 to i32
  %402 = icmp ne i32 %401, 0
  %403 = zext i1 %402 to i32
  %404 = icmp eq i32 %401, 7
  %405 = select i1 %404, i32 -7, i32 0
  %406 = add i32 %405, %401
  %407 = add i32 %406, %403
  %408 = shl i32 %407, %395
  %409 = or i32 %408, %393
  %410 = add nuw nsw i32 %392, 1
  %411 = icmp eq i32 %410, 16
  br i1 %411, label %412, label %391

; <label>:412                                     ; preds = %391
  %413 = or i32 %322, %307
  %414 = or i32 %413, %333
  %415 = or i32 %414, %344
  %416 = or i32 %415, %355
  %417 = or i32 %416, %366
  %418 = or i32 %417, %377
  br label %419

; <label>:419                                     ; preds = %412, %304
  %420 = phi i32 [ %307, %304 ], [ %418, %412 ]
  %421 = phi i32 [ 0, %304 ], [ %409, %412 ]
  %422 = shl i32 %235, 16
  %423 = or i32 %248, %422
  %424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.i32 %424, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 %425, i32 %420, i32 %421, i32 %423, i32 %305, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{void ()* @cs_bc3_compress_one_mip, !"cs_bc3_compress_one_mip", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"\01?LoadTexelsRGBA@@YAXV?$Texture2D@V?$vector@M$03@@@@V?$vector@I$01@@Y0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z: %blockA"}
!22 = distinct !{!22, !"\01?LoadTexelsRGBA@@YAXV?$Texture2D@V?$vector@M$03@@@@V?$vector@I$01@@Y0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"\01?LoadTexelsRGBA@@YAXV?$Texture2D@V?$vector@M$03@@@@V?$vector@I$01@@Y0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z: %blockRGB"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!27 = distinct !{!27, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!28 = distinct !{!28, !27, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = !{!32}
!32 = distinct !{!32, !33, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!33 = distinct !{!33, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

