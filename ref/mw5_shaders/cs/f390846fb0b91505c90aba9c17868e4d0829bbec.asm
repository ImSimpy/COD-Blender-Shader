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
; shader hash: c0c4dfc01367a4d67ceee1f7f213c2f1
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
;                                       UAV     u32     2darray      U1             u1     1
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

@"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [1024 x float] undef, align 4
@"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [3072 x float] undef, align 4

define void @cs_bc3_compress_two_mips() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = alloca [16 x float], align 4
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = alloca [16 x float], align 4
  %15 = alloca [16 x float], align 4
  %16 = alloca [16 x float], align 4
  %17 = alloca [16 x float], align 4
  %18 = shl i32 %5, 2
  %19 = shl i32 %6, 2
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 0, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = extractvalue %dx.types.ResRet.f32 %20, 3
  %25 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 0
  %26 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  %27 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 0
  store float %21, float* %25, align 4
  store float %22, float* %26, align 4
  store float %23, float* %27, align 4
  %28 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 0
  store float %24, float* %28, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 1, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = extractvalue %dx.types.ResRet.f32 %29, 3
  %34 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 1
  %35 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  %36 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 1
  store float %30, float* %34, align 4
  store float %31, float* %35, align 4
  store float %32, float* %36, align 4
  %37 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 1
  store float %33, float* %37, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %38 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 2, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = extractvalue %dx.types.ResRet.f32 %38, 1
  %41 = extractvalue %dx.types.ResRet.f32 %38, 2
  %42 = extractvalue %dx.types.ResRet.f32 %38, 3
  %43 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 2
  %44 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  %45 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 2
  store float %39, float* %43, align 4
  store float %40, float* %44, align 4
  store float %41, float* %45, align 4
  %46 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 2
  store float %42, float* %46, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %47 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 3, i32 0, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = extractvalue %dx.types.ResRet.f32 %47, 1
  %50 = extractvalue %dx.types.ResRet.f32 %47, 2
  %51 = extractvalue %dx.types.ResRet.f32 %47, 3
  %52 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 3
  %53 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  %54 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 3
  store float %48, float* %52, align 4
  store float %49, float* %53, align 4
  store float %50, float* %54, align 4
  %55 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 3
  store float %51, float* %55, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %56 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 0, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = extractvalue %dx.types.ResRet.f32 %56, 3
  %61 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 4
  %62 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  %63 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 4
  store float %57, float* %61, align 4
  store float %58, float* %62, align 4
  store float %59, float* %63, align 4
  %64 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 4
  store float %60, float* %64, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %65 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 1, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = extractvalue %dx.types.ResRet.f32 %65, 1
  %68 = extractvalue %dx.types.ResRet.f32 %65, 2
  %69 = extractvalue %dx.types.ResRet.f32 %65, 3
  %70 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 5
  %71 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  %72 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 5
  store float %66, float* %70, align 4
  store float %67, float* %71, align 4
  store float %68, float* %72, align 4
  %73 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 5
  store float %69, float* %73, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %74 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 2, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = extractvalue %dx.types.ResRet.f32 %74, 1
  %77 = extractvalue %dx.types.ResRet.f32 %74, 2
  %78 = extractvalue %dx.types.ResRet.f32 %74, 3
  %79 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 6
  %80 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  %81 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 6
  store float %75, float* %79, align 4
  store float %76, float* %80, align 4
  store float %77, float* %81, align 4
  %82 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 6
  store float %78, float* %82, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %83 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 3, i32 1, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = extractvalue %dx.types.ResRet.f32 %83, 3
  %88 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 7
  %89 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  %90 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 7
  store float %84, float* %88, align 4
  store float %85, float* %89, align 4
  store float %86, float* %90, align 4
  %91 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 7
  store float %87, float* %91, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %92 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 0, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  %96 = extractvalue %dx.types.ResRet.f32 %92, 3
  %97 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 8
  %98 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  %99 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 8
  store float %93, float* %97, align 4
  store float %94, float* %98, align 4
  store float %95, float* %99, align 4
  %100 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 8
  store float %96, float* %100, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 1, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = extractvalue %dx.types.ResRet.f32 %101, 3
  %106 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 9
  %107 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  %108 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 9
  store float %102, float* %106, align 4
  store float %103, float* %107, align 4
  store float %104, float* %108, align 4
  %109 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 9
  store float %105, float* %109, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 2, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = extractvalue %dx.types.ResRet.f32 %110, 1
  %113 = extractvalue %dx.types.ResRet.f32 %110, 2
  %114 = extractvalue %dx.types.ResRet.f32 %110, 3
  %115 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 10
  %116 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  %117 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 10
  store float %111, float* %115, align 4
  store float %112, float* %116, align 4
  store float %113, float* %117, align 4
  %118 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 10
  store float %114, float* %118, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 3, i32 2, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = extractvalue %dx.types.ResRet.f32 %119, 2
  %123 = extractvalue %dx.types.ResRet.f32 %119, 3
  %124 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 11
  %125 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  %126 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 11
  store float %120, float* %124, align 4
  store float %121, float* %125, align 4
  store float %122, float* %126, align 4
  %127 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 11
  store float %123, float* %127, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %128 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 0, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = extractvalue %dx.types.ResRet.f32 %128, 1
  %131 = extractvalue %dx.types.ResRet.f32 %128, 2
  %132 = extractvalue %dx.types.ResRet.f32 %128, 3
  %133 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 12
  %134 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  %135 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 12
  store float %129, float* %133, align 4
  store float %130, float* %134, align 4
  store float %131, float* %135, align 4
  %136 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 12
  store float %132, float* %136, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %137 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 1, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.ResRet.f32 %137, 1
  %140 = extractvalue %dx.types.ResRet.f32 %137, 2
  %141 = extractvalue %dx.types.ResRet.f32 %137, 3
  %142 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 13
  %143 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  %144 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 13
  store float %138, float* %142, align 4
  store float %139, float* %143, align 4
  store float %140, float* %144, align 4
  %145 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 13
  store float %141, float* %145, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %146 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 2, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = extractvalue %dx.types.ResRet.f32 %146, 1
  %149 = extractvalue %dx.types.ResRet.f32 %146, 2
  %150 = extractvalue %dx.types.ResRet.f32 %146, 3
  %151 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 14
  %152 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  %153 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 14
  store float %147, float* %151, align 4
  store float %148, float* %152, align 4
  store float %149, float* %153, align 4
  %154 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 14
  store float %150, float* %154, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %155 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %18, i32 %19, i32 undef, i32 3, i32 3, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = extractvalue %dx.types.ResRet.f32 %155, 3
  %160 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 15
  %161 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  %162 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 15
  store float %156, float* %160, align 4
  store float %157, float* %161, align 4
  store float %158, float* %162, align 4
  %163 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 15
  store float %159, float* %163, align 4, !tbaa !17, !alias.scope !21, !noalias !24
  %164 = lshr i32 %7, 1
  %165 = lshr i32 %8, 1
  %166 = shl nuw i32 %164, 1
  %167 = shl nuw i32 %165, 1
  %168 = sub i32 %7, %166
  %169 = sub i32 %8, %167
  %170 = shl i32 %168, 1
  %171 = shl i32 %165, 3
  %172 = add i32 %171, %164
  %173 = shl i32 %169, 3
  %174 = add i32 %173, %170
  %175 = fadd fast float %30, %21
  %176 = fadd fast float %31, %22
  %177 = fadd fast float %32, %23
  %178 = fadd fast float %175, %57
  %179 = fadd fast float %176, %58
  %180 = fadd fast float %177, %59
  %181 = fadd fast float %178, %66
  %182 = fadd fast float %179, %67
  %183 = fadd fast float %180, %68
  %184 = mul i32 %172, 16
  %185 = add i32 %174, %184
  %186 = mul i32 %185, 3
  %187 = add i32 0, %186
  %188 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %187
  store float %181, float addrspace(3)* %188, align 4
  %189 = mul i32 %172, 16
  %190 = add i32 %174, %189
  %191 = mul i32 %190, 3
  %192 = add i32 1, %191
  %193 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %192
  store float %182, float addrspace(3)* %193, align 4
  %194 = mul i32 %172, 16
  %195 = add i32 %174, %194
  %196 = mul i32 %195, 3
  %197 = add i32 2, %196
  %198 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %197
  store float %183, float addrspace(3)* %198, align 4
  %199 = fadd fast float %48, %39
  %200 = fadd fast float %49, %40
  %201 = fadd fast float %50, %41
  %202 = fadd fast float %199, %75
  %203 = fadd fast float %200, %76
  %204 = fadd fast float %201, %77
  %205 = fadd fast float %202, %84
  %206 = fadd fast float %203, %85
  %207 = fadd fast float %204, %86
  %208 = or i32 %174, 1
  %209 = mul i32 %172, 16
  %210 = add i32 %208, %209
  %211 = mul i32 %210, 3
  %212 = add i32 0, %211
  %213 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %212
  store float %205, float addrspace(3)* %213, align 4
  %214 = mul i32 %172, 16
  %215 = add i32 %208, %214
  %216 = mul i32 %215, 3
  %217 = add i32 1, %216
  %218 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %217
  store float %206, float addrspace(3)* %218, align 4
  %219 = mul i32 %172, 16
  %220 = add i32 %208, %219
  %221 = mul i32 %220, 3
  %222 = add i32 2, %221
  %223 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %222
  store float %207, float addrspace(3)* %223, align 4
  %224 = fadd fast float %102, %93
  %225 = fadd fast float %103, %94
  %226 = fadd fast float %104, %95
  %227 = fadd fast float %224, %129
  %228 = fadd fast float %225, %130
  %229 = fadd fast float %226, %131
  %230 = fadd fast float %227, %138
  %231 = fadd fast float %228, %139
  %232 = fadd fast float %229, %140
  %233 = add i32 %174, 4
  %234 = mul i32 %172, 16
  %235 = add i32 %233, %234
  %236 = mul i32 %235, 3
  %237 = add i32 0, %236
  %238 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %237
  store float %230, float addrspace(3)* %238, align 4
  %239 = mul i32 %172, 16
  %240 = add i32 %233, %239
  %241 = mul i32 %240, 3
  %242 = add i32 1, %241
  %243 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %242
  store float %231, float addrspace(3)* %243, align 4
  %244 = mul i32 %172, 16
  %245 = add i32 %233, %244
  %246 = mul i32 %245, 3
  %247 = add i32 2, %246
  %248 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %247
  store float %232, float addrspace(3)* %248, align 4
  %249 = fadd fast float %120, %111
  %250 = fadd fast float %121, %112
  %251 = fadd fast float %122, %113
  %252 = fadd fast float %249, %147
  %253 = fadd fast float %250, %148
  %254 = fadd fast float %251, %149
  %255 = fadd fast float %252, %156
  %256 = fadd fast float %253, %157
  %257 = fadd fast float %254, %158
  %258 = add i32 %174, 5
  %259 = mul i32 %172, 16
  %260 = add i32 %258, %259
  %261 = mul i32 %260, 3
  %262 = add i32 0, %261
  %263 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %262
  store float %255, float addrspace(3)* %263, align 4
  %264 = mul i32 %172, 16
  %265 = add i32 %258, %264
  %266 = mul i32 %265, 3
  %267 = add i32 1, %266
  %268 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %267
  store float %256, float addrspace(3)* %268, align 4
  %269 = mul i32 %172, 16
  %270 = add i32 %258, %269
  %271 = mul i32 %270, 3
  %272 = add i32 2, %271
  %273 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %272
  store float %257, float addrspace(3)* %273, align 4
  %274 = fadd fast float %33, %24
  %275 = fadd fast float %274, %60
  %276 = fadd fast float %275, %69
  %277 = mul i32 %172, 16
  %278 = add i32 %174, %277
  %279 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %278
  store float %276, float addrspace(3)* %279, align 4, !tbaa !17
  %280 = fadd fast float %51, %42
  %281 = fadd fast float %280, %78
  %282 = fadd fast float %281, %87
  %283 = mul i32 %172, 16
  %284 = add i32 %208, %283
  %285 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %284
  store float %282, float addrspace(3)* %285, align 4, !tbaa !17
  %286 = fadd fast float %105, %96
  %287 = fadd fast float %286, %132
  %288 = fadd fast float %287, %141
  %289 = mul i32 %172, 16
  %290 = add i32 %233, %289
  %291 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %290
  store float %288, float addrspace(3)* %291, align 4, !tbaa !17
  %292 = fadd fast float %123, %114
  %293 = fadd fast float %292, %150
  %294 = fadd fast float %293, %159
  %295 = mul i32 %172, 16
  %296 = add i32 %258, %295
  %297 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %296
  store float %294, float addrspace(3)* %297, align 4, !tbaa !17
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %298

; <label>:298                                     ; preds = %317, %0
  %299 = phi float [ %32, %0 ], [ %323, %317 ]
  %300 = phi float [ %31, %0 ], [ %321, %317 ]
  %301 = phi float [ %30, %0 ], [ %319, %317 ]
  %302 = phi float [ %21, %0 ], [ %312, %317 ]
  %303 = phi float [ %22, %0 ], [ %313, %317 ]
  %304 = phi float [ %23, %0 ], [ %314, %317 ]
  %305 = phi float [ %21, %0 ], [ %309, %317 ]
  %306 = phi float [ %22, %0 ], [ %310, %317 ]
  %307 = phi float [ %23, %0 ], [ %311, %317 ]
  %308 = phi i32 [ 1, %0 ], [ %315, %317 ]
  %309 = call float @dx.op.binary.f32(i32 36, float %305, float %301)  ; FMin(a,b)
  %310 = call float @dx.op.binary.f32(i32 36, float %306, float %300)  ; FMin(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float %307, float %299)  ; FMin(a,b)
  %312 = call float @dx.op.binary.f32(i32 35, float %302, float %301)  ; FMax(a,b)
  %313 = call float @dx.op.binary.f32(i32 35, float %303, float %300)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %304, float %299)  ; FMax(a,b)
  %315 = add nuw nsw i32 %308, 1
  %316 = icmp eq i32 %315, 16
  br i1 %316, label %324, label %317

; <label>:317                                     ; preds = %298
  %318 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %315
  %319 = load float, float* %318, align 4
  %320 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %315
  %321 = load float, float* %320, align 4
  %322 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %315
  %323 = load float, float* %322, align 4
  br label %298

; <label>:324                                     ; preds = %298
  %325 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %326 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %327 = call float @dx.op.binary.f32(i32 36, float %24, float %33)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %24, float %33)  ; FMax(a,b)
  br label %329

; <label>:329                                     ; preds = %329, %324
  %330 = phi i32 [ 2, %324 ], [ %337, %329 ]
  %331 = phi float [ %328, %324 ], [ %336, %329 ]
  %332 = phi float [ %327, %324 ], [ %335, %329 ]
  %333 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 %330
  %334 = load float, float* %333, align 4, !tbaa !17, !noalias !26
  %335 = call float @dx.op.binary.f32(i32 36, float %332, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %331, float %334)  ; FMax(a,b)
  %337 = add nuw nsw i32 %330, 1
  %338 = icmp eq i32 %337, 16
  br i1 %338, label %339, label %329

; <label>:339                                     ; preds = %329
  %340 = fsub fast float %312, %309
  %341 = fsub fast float %313, %310
  %342 = fsub fast float %314, %311
  %343 = fmul fast float %340, 6.250000e-02
  %344 = fmul fast float %341, 6.250000e-02
  %345 = fmul fast float %342, 6.250000e-02
  %346 = fsub fast float %312, %343
  %347 = fsub fast float %313, %344
  %348 = fsub fast float %314, %345
  %349 = fmul fast float %346, 2.550000e+02
  %350 = fmul fast float %347, 2.550000e+02
  %351 = fmul fast float %348, 2.550000e+02
  %352 = call float @dx.op.unary.f32(i32 28, float %349)  ; Round_pi(value)
  %353 = call float @dx.op.unary.f32(i32 28, float %350)  ; Round_pi(value)
  %354 = call float @dx.op.unary.f32(i32 28, float %351)  ; Round_pi(value)
  %355 = fmul fast float %352, 0x3F70101020000000
  %356 = fmul fast float %353, 0x3F70101020000000
  %357 = fmul fast float %354, 0x3F70101020000000
  %358 = fadd fast float %343, %309
  %359 = fadd fast float %344, %310
  %360 = fadd fast float %345, %311
  %361 = fmul fast float %358, 2.550000e+02
  %362 = fmul fast float %359, 2.550000e+02
  %363 = fmul fast float %360, 2.550000e+02
  %364 = call float @dx.op.unary.f32(i32 27, float %361)  ; Round_ni(value)
  %365 = call float @dx.op.unary.f32(i32 27, float %362)  ; Round_ni(value)
  %366 = call float @dx.op.unary.f32(i32 27, float %363)  ; Round_ni(value)
  %367 = fmul fast float %364, 0x3FBF1F1F40000000
  %368 = fmul fast float %365, 0x3FCF9F9FC0000000
  %369 = fmul fast float %366, 0x3FBF1F1F40000000
  %370 = call float @dx.op.unary.f32(i32 26, float %367)  ; Round_ne(value)
  %371 = call float @dx.op.unary.f32(i32 26, float %368)  ; Round_ne(value)
  %372 = call float @dx.op.unary.f32(i32 26, float %369)  ; Round_ne(value)
  %373 = fptoui float %370 to i32
  %374 = fptoui float %371 to i32
  %375 = fptoui float %372 to i32
  %376 = shl i32 %373, 11
  %377 = shl i32 %374, 5
  %378 = or i32 %377, %376
  %379 = or i32 %378, %375
  %380 = fmul fast float %352, 0x3FBF1F1F40000000
  %381 = fmul fast float %353, 0x3FCF9F9FC0000000
  %382 = fmul fast float %354, 0x3FBF1F1F40000000
  %383 = call float @dx.op.unary.f32(i32 26, float %380)  ; Round_ne(value)
  %384 = call float @dx.op.unary.f32(i32 26, float %381)  ; Round_ne(value)
  %385 = call float @dx.op.unary.f32(i32 26, float %382)  ; Round_ne(value)
  %386 = fptoui float %383 to i32
  %387 = fptoui float %384 to i32
  %388 = fptoui float %385 to i32
  %389 = shl i32 %386, 11
  %390 = shl i32 %387, 5
  %391 = or i32 %390, %389
  %392 = or i32 %391, %388
  %393 = fmul fast float %335, 2.550000e+02
  %394 = call float @dx.op.unary.f32(i32 26, float %393)  ; Round_ne(value)
  %395 = fptoui float %394 to i32
  %396 = fmul fast float %336, 2.550000e+02
  %397 = call float @dx.op.unary.f32(i32 26, float %396)  ; Round_ne(value)
  %398 = fptoui float %397 to i32
  %399 = icmp ult i32 %379, %392
  br i1 %399, label %400, label %448, !dx.controlflow.hints !30

; <label>:400                                     ; preds = %339
  %401 = fmul fast float %366, 0x3F70101020000000
  %402 = fmul fast float %365, 0x3F70101020000000
  %403 = fmul fast float %364, 0x3F70101020000000
  %404 = fsub fast float %364, %352
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = fsub fast float %365, %353
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = fsub fast float %366, %354
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = call float @dx.op.dot3.f32(i32 55, float %405, float %407, float %409, float %405, float %407, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = fdiv fast float 3.000000e+00, %410
  %412 = fmul fast float %411, %405
  %413 = fmul fast float %411, %407
  %414 = fmul fast float %411, %409
  %415 = call float @dx.op.dot3.f32(i32 55, float %355, float %356, float %357, float %355, float %356, float %357)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = call float @dx.op.dot3.f32(i32 55, float %355, float %356, float %357, float %403, float %402, float %401)  ; Dot3(ax,ay,az,bx,by,bz)
  %417 = fsub fast float %415, %416
  %418 = fmul fast float %417, %411
  br label %419

; <label>:419                                     ; preds = %440, %400
  %420 = phi float [ %158, %400 ], [ %446, %440 ]
  %421 = phi float [ %157, %400 ], [ %444, %440 ]
  %422 = phi float [ %156, %400 ], [ %442, %440 ]
  %423 = phi i32 [ 0, %400 ], [ %437, %440 ]
  %424 = phi i32 [ 15, %400 ], [ %438, %440 ]
  %425 = call float @dx.op.dot3.f32(i32 55, float %422, float %421, float %420, float %412, float %413, float %414)  ; Dot3(ax,ay,az,bx,by,bz)
  %426 = fadd fast float %425, %418
  %427 = call float @dx.op.unary.f32(i32 26, float %426)  ; Round_ne(value)
  %428 = fptoui float %427 to i32
  %429 = and i32 %428, 1
  %430 = lshr i32 %428, 1
  %431 = xor i32 %429, %430
  %432 = shl nuw i32 %431, 1
  %433 = or i32 %430, %423
  %434 = or i32 %433, %432
  %435 = icmp ne i32 %424, 0
  %436 = shl i32 %434, 2
  %437 = select i1 %435, i32 %436, i32 %434
  %438 = add nsw i32 %424, -1
  %439 = icmp sgt i32 %424, 0
  br i1 %439, label %440, label %447

; <label>:440                                     ; preds = %419
  %441 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %438
  %442 = load float, float* %441, align 4
  %443 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %438
  %444 = load float, float* %443, align 4
  %445 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %438
  %446 = load float, float* %445, align 4
  br label %419

; <label>:447                                     ; preds = %419
  br label %448

; <label>:448                                     ; preds = %447, %339
  %449 = phi i32 [ 0, %339 ], [ %437, %447 ]
  %450 = shl i32 %395, 8
  %451 = or i32 %450, %398
  %452 = icmp ult i32 %395, %398
  br i1 %452, label %453, label %564, !dx.controlflow.hints !31

; <label>:453                                     ; preds = %448
  %454 = fsub fast float %335, %336
  %455 = fdiv fast float 7.000000e+00, %454
  %456 = fsub fast float %24, %336
  %457 = fmul fast float %456, %455
  %458 = call float @dx.op.unary.f32(i32 26, float %457)  ; Round_ne(value)
  %459 = fptoui float %458 to i32
  %460 = icmp ne i32 %459, 0
  %461 = zext i1 %460 to i32
  %462 = icmp eq i32 %459, 7
  %463 = select i1 %462, i32 65529, i32 0
  %464 = add i32 %463, %459
  %465 = add i32 %464, %461
  %466 = shl i32 %465, 16
  %467 = fsub fast float %33, %336
  %468 = fmul fast float %467, %455
  %469 = call float @dx.op.unary.f32(i32 26, float %468)  ; Round_ne(value)
  %470 = fptoui float %469 to i32
  %471 = icmp ne i32 %470, 0
  %472 = zext i1 %471 to i32
  %473 = icmp eq i32 %470, 7
  %474 = select i1 %473, i32 8185, i32 0
  %475 = add i32 %474, %470
  %476 = add i32 %475, %472
  %477 = shl i32 %476, 19
  %478 = load float, float* %46, align 4, !tbaa !17, !noalias !32
  %479 = fsub fast float %478, %336
  %480 = fmul fast float %479, %455
  %481 = call float @dx.op.unary.f32(i32 26, float %480)  ; Round_ne(value)
  %482 = fptoui float %481 to i32
  %483 = icmp ne i32 %482, 0
  %484 = zext i1 %483 to i32
  %485 = icmp eq i32 %482, 7
  %486 = select i1 %485, i32 1017, i32 0
  %487 = add i32 %486, %482
  %488 = add i32 %487, %484
  %489 = shl i32 %488, 22
  %490 = fsub fast float %51, %336
  %491 = fmul fast float %490, %455
  %492 = call float @dx.op.unary.f32(i32 26, float %491)  ; Round_ne(value)
  %493 = fptoui float %492 to i32
  %494 = icmp ne i32 %493, 0
  %495 = zext i1 %494 to i32
  %496 = icmp eq i32 %493, 7
  %497 = select i1 %496, i32 121, i32 0
  %498 = add i32 %497, %493
  %499 = add i32 %498, %495
  %500 = shl i32 %499, 25
  %501 = fsub fast float %60, %336
  %502 = fmul fast float %501, %455
  %503 = call float @dx.op.unary.f32(i32 26, float %502)  ; Round_ne(value)
  %504 = fptoui float %503 to i32
  %505 = icmp ne i32 %504, 0
  %506 = zext i1 %505 to i32
  %507 = icmp eq i32 %504, 7
  %508 = select i1 %507, i32 9, i32 0
  %509 = add i32 %508, %504
  %510 = add i32 %509, %506
  %511 = shl i32 %510, 28
  %512 = fsub fast float %69, %336
  %513 = fmul fast float %512, %455
  %514 = call float @dx.op.unary.f32(i32 26, float %513)  ; Round_ne(value)
  %515 = fptoui float %514 to i32
  %516 = icmp ne i32 %515, 0
  %517 = zext i1 %516 to i32
  %518 = icmp eq i32 %515, 7
  %519 = select i1 %518, i32 7, i32 0
  %520 = sub nsw i32 %517, %519
  %521 = add i32 %520, %515
  %522 = shl i32 %521, 31
  %523 = lshr i32 %521, 1
  %524 = fsub fast float %78, %336
  %525 = fmul fast float %524, %455
  %526 = call float @dx.op.unary.f32(i32 26, float %525)  ; Round_ne(value)
  %527 = fptoui float %526 to i32
  %528 = icmp ne i32 %527, 0
  %529 = zext i1 %528 to i32
  %530 = icmp eq i32 %527, 7
  %531 = select i1 %530, i32 1073741817, i32 0
  %532 = add i32 %531, %527
  %533 = add i32 %532, %529
  %534 = shl i32 %533, 2
  %535 = or i32 %534, %523
  br label %536

; <label>:536                                     ; preds = %536, %453
  %537 = phi i32 [ 7, %453 ], [ %555, %536 ]
  %538 = phi i32 [ %535, %453 ], [ %554, %536 ]
  %539 = phi i32 [ 2, %453 ], [ %540, %536 ]
  %540 = add nuw nsw i32 %539, 3
  %541 = getelementptr inbounds [16 x float], [16 x float]* %17, i32 0, i32 %537
  %542 = load float, float* %541, align 4, !tbaa !17, !noalias !32
  %543 = fsub fast float %542, %336
  %544 = fmul fast float %543, %455
  %545 = call float @dx.op.unary.f32(i32 26, float %544)  ; Round_ne(value)
  %546 = fptoui float %545 to i32
  %547 = icmp ne i32 %546, 0
  %548 = zext i1 %547 to i32
  %549 = icmp eq i32 %546, 7
  %550 = select i1 %549, i32 -7, i32 0
  %551 = add i32 %550, %546
  %552 = add i32 %551, %548
  %553 = shl i32 %552, %540
  %554 = or i32 %553, %538
  %555 = add nuw nsw i32 %537, 1
  %556 = icmp eq i32 %555, 16
  br i1 %556, label %557, label %536

; <label>:557                                     ; preds = %536
  %558 = or i32 %466, %451
  %559 = or i32 %558, %477
  %560 = or i32 %559, %489
  %561 = or i32 %560, %500
  %562 = or i32 %561, %511
  %563 = or i32 %562, %522
  br label %564

; <label>:564                                     ; preds = %557, %448
  %565 = phi i32 [ %451, %448 ], [ %563, %557 ]
  %566 = phi i32 [ 0, %448 ], [ %554, %557 ]
  %567 = shl i32 %379, 16
  %568 = or i32 %392, %567
  %569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.i32 %569, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %5, i32 %6, i32 %570, i32 %565, i32 %566, i32 %568, i32 %449, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %571 = icmp ult i32 %325, 64
  br i1 %571, label %572, label %1265, !dx.controlflow.hints !35

; <label>:572                                     ; preds = %564
  %573 = and i32 %325, 7
  %574 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 0
  %575 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 0
  %576 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 0
  %577 = mul i32 %325, 16
  %578 = add i32 0, %577
  %579 = mul i32 %578, 3
  %580 = add i32 0, %579
  %581 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %580
  %582 = load float, float addrspace(3)* %581, align 4
  %583 = mul i32 %325, 16
  %584 = add i32 0, %583
  %585 = mul i32 %584, 3
  %586 = add i32 1, %585
  %587 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %586
  %588 = load float, float addrspace(3)* %587, align 4
  %589 = mul i32 %325, 16
  %590 = add i32 0, %589
  %591 = mul i32 %590, 3
  %592 = add i32 2, %591
  %593 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %592
  %594 = load float, float addrspace(3)* %593, align 4
  store float %582, float* %574, align 4
  store float %588, float* %575, align 4
  store float %594, float* %576, align 4
  %595 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 1
  %596 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 1
  %597 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 1
  %598 = mul i32 %325, 16
  %599 = add i32 1, %598
  %600 = mul i32 %599, 3
  %601 = add i32 0, %600
  %602 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %601
  %603 = load float, float addrspace(3)* %602, align 4
  %604 = mul i32 %325, 16
  %605 = add i32 1, %604
  %606 = mul i32 %605, 3
  %607 = add i32 1, %606
  %608 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %607
  %609 = load float, float addrspace(3)* %608, align 4
  %610 = mul i32 %325, 16
  %611 = add i32 1, %610
  %612 = mul i32 %611, 3
  %613 = add i32 2, %612
  %614 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %613
  %615 = load float, float addrspace(3)* %614, align 4
  store float %603, float* %595, align 4
  store float %609, float* %596, align 4
  store float %615, float* %597, align 4
  %616 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 2
  %617 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 2
  %618 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 2
  %619 = mul i32 %325, 16
  %620 = add i32 2, %619
  %621 = mul i32 %620, 3
  %622 = add i32 0, %621
  %623 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %622
  %624 = load float, float addrspace(3)* %623, align 4
  %625 = mul i32 %325, 16
  %626 = add i32 2, %625
  %627 = mul i32 %626, 3
  %628 = add i32 1, %627
  %629 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %628
  %630 = load float, float addrspace(3)* %629, align 4
  %631 = mul i32 %325, 16
  %632 = add i32 2, %631
  %633 = mul i32 %632, 3
  %634 = add i32 2, %633
  %635 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %634
  %636 = load float, float addrspace(3)* %635, align 4
  store float %624, float* %616, align 4
  store float %630, float* %617, align 4
  store float %636, float* %618, align 4
  %637 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 3
  %638 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 3
  %639 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 3
  %640 = mul i32 %325, 16
  %641 = add i32 3, %640
  %642 = mul i32 %641, 3
  %643 = add i32 0, %642
  %644 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %643
  %645 = load float, float addrspace(3)* %644, align 4
  %646 = mul i32 %325, 16
  %647 = add i32 3, %646
  %648 = mul i32 %647, 3
  %649 = add i32 1, %648
  %650 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %649
  %651 = load float, float addrspace(3)* %650, align 4
  %652 = mul i32 %325, 16
  %653 = add i32 3, %652
  %654 = mul i32 %653, 3
  %655 = add i32 2, %654
  %656 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %655
  %657 = load float, float addrspace(3)* %656, align 4
  store float %645, float* %637, align 4
  store float %651, float* %638, align 4
  store float %657, float* %639, align 4
  %658 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 4
  %659 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 4
  %660 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 4
  %661 = mul i32 %325, 16
  %662 = add i32 4, %661
  %663 = mul i32 %662, 3
  %664 = add i32 0, %663
  %665 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %664
  %666 = load float, float addrspace(3)* %665, align 4
  %667 = mul i32 %325, 16
  %668 = add i32 4, %667
  %669 = mul i32 %668, 3
  %670 = add i32 1, %669
  %671 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %670
  %672 = load float, float addrspace(3)* %671, align 4
  %673 = mul i32 %325, 16
  %674 = add i32 4, %673
  %675 = mul i32 %674, 3
  %676 = add i32 2, %675
  %677 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %676
  %678 = load float, float addrspace(3)* %677, align 4
  store float %666, float* %658, align 4
  store float %672, float* %659, align 4
  store float %678, float* %660, align 4
  %679 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 5
  %680 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 5
  %681 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 5
  %682 = mul i32 %325, 16
  %683 = add i32 5, %682
  %684 = mul i32 %683, 3
  %685 = add i32 0, %684
  %686 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %685
  %687 = load float, float addrspace(3)* %686, align 4
  %688 = mul i32 %325, 16
  %689 = add i32 5, %688
  %690 = mul i32 %689, 3
  %691 = add i32 1, %690
  %692 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %691
  %693 = load float, float addrspace(3)* %692, align 4
  %694 = mul i32 %325, 16
  %695 = add i32 5, %694
  %696 = mul i32 %695, 3
  %697 = add i32 2, %696
  %698 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %697
  %699 = load float, float addrspace(3)* %698, align 4
  store float %687, float* %679, align 4
  store float %693, float* %680, align 4
  store float %699, float* %681, align 4
  %700 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 6
  %701 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 6
  %702 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 6
  %703 = mul i32 %325, 16
  %704 = add i32 6, %703
  %705 = mul i32 %704, 3
  %706 = add i32 0, %705
  %707 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %706
  %708 = load float, float addrspace(3)* %707, align 4
  %709 = mul i32 %325, 16
  %710 = add i32 6, %709
  %711 = mul i32 %710, 3
  %712 = add i32 1, %711
  %713 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %712
  %714 = load float, float addrspace(3)* %713, align 4
  %715 = mul i32 %325, 16
  %716 = add i32 6, %715
  %717 = mul i32 %716, 3
  %718 = add i32 2, %717
  %719 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %718
  %720 = load float, float addrspace(3)* %719, align 4
  store float %708, float* %700, align 4
  store float %714, float* %701, align 4
  store float %720, float* %702, align 4
  %721 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 7
  %722 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 7
  %723 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 7
  %724 = mul i32 %325, 16
  %725 = add i32 7, %724
  %726 = mul i32 %725, 3
  %727 = add i32 0, %726
  %728 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %727
  %729 = load float, float addrspace(3)* %728, align 4
  %730 = mul i32 %325, 16
  %731 = add i32 7, %730
  %732 = mul i32 %731, 3
  %733 = add i32 1, %732
  %734 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %733
  %735 = load float, float addrspace(3)* %734, align 4
  %736 = mul i32 %325, 16
  %737 = add i32 7, %736
  %738 = mul i32 %737, 3
  %739 = add i32 2, %738
  %740 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %739
  %741 = load float, float addrspace(3)* %740, align 4
  store float %729, float* %721, align 4
  store float %735, float* %722, align 4
  store float %741, float* %723, align 4
  %742 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 8
  %743 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 8
  %744 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 8
  %745 = mul i32 %325, 16
  %746 = add i32 8, %745
  %747 = mul i32 %746, 3
  %748 = add i32 0, %747
  %749 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %748
  %750 = load float, float addrspace(3)* %749, align 4
  %751 = mul i32 %325, 16
  %752 = add i32 8, %751
  %753 = mul i32 %752, 3
  %754 = add i32 1, %753
  %755 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %754
  %756 = load float, float addrspace(3)* %755, align 4
  %757 = mul i32 %325, 16
  %758 = add i32 8, %757
  %759 = mul i32 %758, 3
  %760 = add i32 2, %759
  %761 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %760
  %762 = load float, float addrspace(3)* %761, align 4
  store float %750, float* %742, align 4
  store float %756, float* %743, align 4
  store float %762, float* %744, align 4
  %763 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 9
  %764 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 9
  %765 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 9
  %766 = mul i32 %325, 16
  %767 = add i32 9, %766
  %768 = mul i32 %767, 3
  %769 = add i32 0, %768
  %770 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %769
  %771 = load float, float addrspace(3)* %770, align 4
  %772 = mul i32 %325, 16
  %773 = add i32 9, %772
  %774 = mul i32 %773, 3
  %775 = add i32 1, %774
  %776 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %775
  %777 = load float, float addrspace(3)* %776, align 4
  %778 = mul i32 %325, 16
  %779 = add i32 9, %778
  %780 = mul i32 %779, 3
  %781 = add i32 2, %780
  %782 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %781
  %783 = load float, float addrspace(3)* %782, align 4
  store float %771, float* %763, align 4
  store float %777, float* %764, align 4
  store float %783, float* %765, align 4
  %784 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 10
  %785 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 10
  %786 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 10
  %787 = mul i32 %325, 16
  %788 = add i32 10, %787
  %789 = mul i32 %788, 3
  %790 = add i32 0, %789
  %791 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %790
  %792 = load float, float addrspace(3)* %791, align 4
  %793 = mul i32 %325, 16
  %794 = add i32 10, %793
  %795 = mul i32 %794, 3
  %796 = add i32 1, %795
  %797 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %796
  %798 = load float, float addrspace(3)* %797, align 4
  %799 = mul i32 %325, 16
  %800 = add i32 10, %799
  %801 = mul i32 %800, 3
  %802 = add i32 2, %801
  %803 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %802
  %804 = load float, float addrspace(3)* %803, align 4
  store float %792, float* %784, align 4
  store float %798, float* %785, align 4
  store float %804, float* %786, align 4
  %805 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 11
  %806 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 11
  %807 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 11
  %808 = mul i32 %325, 16
  %809 = add i32 11, %808
  %810 = mul i32 %809, 3
  %811 = add i32 0, %810
  %812 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %811
  %813 = load float, float addrspace(3)* %812, align 4
  %814 = mul i32 %325, 16
  %815 = add i32 11, %814
  %816 = mul i32 %815, 3
  %817 = add i32 1, %816
  %818 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %817
  %819 = load float, float addrspace(3)* %818, align 4
  %820 = mul i32 %325, 16
  %821 = add i32 11, %820
  %822 = mul i32 %821, 3
  %823 = add i32 2, %822
  %824 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %823
  %825 = load float, float addrspace(3)* %824, align 4
  store float %813, float* %805, align 4
  store float %819, float* %806, align 4
  store float %825, float* %807, align 4
  %826 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 12
  %827 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 12
  %828 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 12
  %829 = mul i32 %325, 16
  %830 = add i32 12, %829
  %831 = mul i32 %830, 3
  %832 = add i32 0, %831
  %833 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %832
  %834 = load float, float addrspace(3)* %833, align 4
  %835 = mul i32 %325, 16
  %836 = add i32 12, %835
  %837 = mul i32 %836, 3
  %838 = add i32 1, %837
  %839 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %838
  %840 = load float, float addrspace(3)* %839, align 4
  %841 = mul i32 %325, 16
  %842 = add i32 12, %841
  %843 = mul i32 %842, 3
  %844 = add i32 2, %843
  %845 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %844
  %846 = load float, float addrspace(3)* %845, align 4
  store float %834, float* %826, align 4
  store float %840, float* %827, align 4
  store float %846, float* %828, align 4
  %847 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 13
  %848 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 13
  %849 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 13
  %850 = mul i32 %325, 16
  %851 = add i32 13, %850
  %852 = mul i32 %851, 3
  %853 = add i32 0, %852
  %854 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %853
  %855 = load float, float addrspace(3)* %854, align 4
  %856 = mul i32 %325, 16
  %857 = add i32 13, %856
  %858 = mul i32 %857, 3
  %859 = add i32 1, %858
  %860 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %859
  %861 = load float, float addrspace(3)* %860, align 4
  %862 = mul i32 %325, 16
  %863 = add i32 13, %862
  %864 = mul i32 %863, 3
  %865 = add i32 2, %864
  %866 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %865
  %867 = load float, float addrspace(3)* %866, align 4
  store float %855, float* %847, align 4
  store float %861, float* %848, align 4
  store float %867, float* %849, align 4
  %868 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 14
  %869 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 14
  %870 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 14
  %871 = mul i32 %325, 16
  %872 = add i32 14, %871
  %873 = mul i32 %872, 3
  %874 = add i32 0, %873
  %875 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %874
  %876 = load float, float addrspace(3)* %875, align 4
  %877 = mul i32 %325, 16
  %878 = add i32 14, %877
  %879 = mul i32 %878, 3
  %880 = add i32 1, %879
  %881 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %880
  %882 = load float, float addrspace(3)* %881, align 4
  %883 = mul i32 %325, 16
  %884 = add i32 14, %883
  %885 = mul i32 %884, 3
  %886 = add i32 2, %885
  %887 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %886
  %888 = load float, float addrspace(3)* %887, align 4
  store float %876, float* %868, align 4
  store float %882, float* %869, align 4
  store float %888, float* %870, align 4
  %889 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 15
  %890 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 15
  %891 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 15
  %892 = mul i32 %325, 16
  %893 = add i32 15, %892
  %894 = mul i32 %893, 3
  %895 = add i32 0, %894
  %896 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %895
  %897 = load float, float addrspace(3)* %896, align 4
  %898 = mul i32 %325, 16
  %899 = add i32 15, %898
  %900 = mul i32 %899, 3
  %901 = add i32 1, %900
  %902 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %901
  %903 = load float, float addrspace(3)* %902, align 4
  %904 = mul i32 %325, 16
  %905 = add i32 15, %904
  %906 = mul i32 %905, 3
  %907 = add i32 2, %906
  %908 = getelementptr [3072 x float], [3072 x float] addrspace(3)* @"\01?gs_mip1BlocksRGB@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %907
  %909 = load float, float addrspace(3)* %908, align 4
  store float %897, float* %889, align 4
  store float %903, float* %890, align 4
  store float %909, float* %891, align 4
  %910 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 0
  %911 = mul i32 %325, 16
  %912 = add i32 0, %911
  %913 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %912
  %914 = load float, float addrspace(3)* %913, align 4
  store float %914, float* %910, align 4
  %915 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 1
  %916 = mul i32 %325, 16
  %917 = add i32 1, %916
  %918 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %917
  %919 = load float, float addrspace(3)* %918, align 4
  store float %919, float* %915, align 4
  %920 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 2
  %921 = mul i32 %325, 16
  %922 = add i32 2, %921
  %923 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %922
  %924 = load float, float addrspace(3)* %923, align 4
  store float %924, float* %920, align 4
  %925 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 3
  %926 = mul i32 %325, 16
  %927 = add i32 3, %926
  %928 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %927
  %929 = load float, float addrspace(3)* %928, align 4
  store float %929, float* %925, align 4
  %930 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 4
  %931 = mul i32 %325, 16
  %932 = add i32 4, %931
  %933 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %932
  %934 = load float, float addrspace(3)* %933, align 4
  store float %934, float* %930, align 4
  %935 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 5
  %936 = mul i32 %325, 16
  %937 = add i32 5, %936
  %938 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %937
  %939 = load float, float addrspace(3)* %938, align 4
  store float %939, float* %935, align 4
  %940 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 6
  %941 = mul i32 %325, 16
  %942 = add i32 6, %941
  %943 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %942
  %944 = load float, float addrspace(3)* %943, align 4
  store float %944, float* %940, align 4
  %945 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 7
  %946 = mul i32 %325, 16
  %947 = add i32 7, %946
  %948 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %947
  %949 = load float, float addrspace(3)* %948, align 4
  store float %949, float* %945, align 4
  %950 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 8
  %951 = mul i32 %325, 16
  %952 = add i32 8, %951
  %953 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %952
  %954 = load float, float addrspace(3)* %953, align 4
  store float %954, float* %950, align 4
  %955 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 9
  %956 = mul i32 %325, 16
  %957 = add i32 9, %956
  %958 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %957
  %959 = load float, float addrspace(3)* %958, align 4
  store float %959, float* %955, align 4
  %960 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 10
  %961 = mul i32 %325, 16
  %962 = add i32 10, %961
  %963 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %962
  %964 = load float, float addrspace(3)* %963, align 4
  store float %964, float* %960, align 4
  %965 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 11
  %966 = mul i32 %325, 16
  %967 = add i32 11, %966
  %968 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %967
  %969 = load float, float addrspace(3)* %968, align 4
  store float %969, float* %965, align 4
  %970 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 12
  %971 = mul i32 %325, 16
  %972 = add i32 12, %971
  %973 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %972
  %974 = load float, float addrspace(3)* %973, align 4
  store float %974, float* %970, align 4
  %975 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 13
  %976 = mul i32 %325, 16
  %977 = add i32 13, %976
  %978 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %977
  %979 = load float, float addrspace(3)* %978, align 4
  store float %979, float* %975, align 4
  %980 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 14
  %981 = mul i32 %325, 16
  %982 = add i32 14, %981
  %983 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %982
  %984 = load float, float addrspace(3)* %983, align 4
  store float %984, float* %980, align 4
  %985 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 15
  %986 = mul i32 %325, 16
  %987 = add i32 15, %986
  %988 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %987
  %989 = load float, float addrspace(3)* %988, align 4
  store float %989, float* %985, align 4
  br label %990

; <label>:990                                     ; preds = %1009, %572
  %991 = phi float [ %615, %572 ], [ %1015, %1009 ]
  %992 = phi float [ %609, %572 ], [ %1013, %1009 ]
  %993 = phi float [ %603, %572 ], [ %1011, %1009 ]
  %994 = phi i32 [ 1, %572 ], [ %1007, %1009 ]
  %995 = phi float [ %582, %572 ], [ %1001, %1009 ]
  %996 = phi float [ %588, %572 ], [ %1002, %1009 ]
  %997 = phi float [ %594, %572 ], [ %1003, %1009 ]
  %998 = phi float [ %582, %572 ], [ %1004, %1009 ]
  %999 = phi float [ %588, %572 ], [ %1005, %1009 ]
  %1000 = phi float [ %594, %572 ], [ %1006, %1009 ]
  %1001 = call float @dx.op.binary.f32(i32 36, float %995, float %993)  ; FMin(a,b)
  %1002 = call float @dx.op.binary.f32(i32 36, float %996, float %992)  ; FMin(a,b)
  %1003 = call float @dx.op.binary.f32(i32 36, float %997, float %991)  ; FMin(a,b)
  %1004 = call float @dx.op.binary.f32(i32 35, float %998, float %993)  ; FMax(a,b)
  %1005 = call float @dx.op.binary.f32(i32 35, float %999, float %992)  ; FMax(a,b)
  %1006 = call float @dx.op.binary.f32(i32 35, float %1000, float %991)  ; FMax(a,b)
  %1007 = add nuw nsw i32 %994, 1
  %1008 = icmp eq i32 %1007, 16
  br i1 %1008, label %1016, label %1009

; <label>:1009                                    ; preds = %990
  %1010 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %1007
  %1011 = load float, float* %1010, align 4
  %1012 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %1007
  %1013 = load float, float* %1012, align 4
  %1014 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %1007
  %1015 = load float, float* %1014, align 4
  br label %990

; <label>:1016                                    ; preds = %990
  %1017 = lshr i32 %325, 3
  %1018 = call float @dx.op.binary.f32(i32 36, float %914, float %919)  ; FMin(a,b)
  %1019 = call float @dx.op.binary.f32(i32 35, float %914, float %919)  ; FMax(a,b)
  br label %1020

; <label>:1020                                    ; preds = %1020, %1016
  %1021 = phi i32 [ 2, %1016 ], [ %1028, %1020 ]
  %1022 = phi float [ %1019, %1016 ], [ %1027, %1020 ]
  %1023 = phi float [ %1018, %1016 ], [ %1026, %1020 ]
  %1024 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 %1021
  %1025 = load float, float* %1024, align 4, !tbaa !17, !noalias !36
  %1026 = call float @dx.op.binary.f32(i32 36, float %1023, float %1025)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 35, float %1022, float %1025)  ; FMax(a,b)
  %1028 = add nuw nsw i32 %1021, 1
  %1029 = icmp eq i32 %1028, 16
  br i1 %1029, label %1030, label %1020

; <label>:1030                                    ; preds = %1020
  %1031 = fsub fast float %1004, %1001
  %1032 = fsub fast float %1005, %1002
  %1033 = fsub fast float %1006, %1003
  %1034 = fmul fast float %1031, 6.250000e-02
  %1035 = fmul fast float %1032, 6.250000e-02
  %1036 = fmul fast float %1033, 6.250000e-02
  %1037 = fsub fast float %1004, %1034
  %1038 = fsub fast float %1005, %1035
  %1039 = fsub fast float %1006, %1036
  %1040 = fmul fast float %1037, 6.375000e+01
  %1041 = fmul fast float %1038, 6.375000e+01
  %1042 = fmul fast float %1039, 6.375000e+01
  %1043 = call float @dx.op.unary.f32(i32 28, float %1040)  ; Round_pi(value)
  %1044 = call float @dx.op.unary.f32(i32 28, float %1041)  ; Round_pi(value)
  %1045 = call float @dx.op.unary.f32(i32 28, float %1042)  ; Round_pi(value)
  %1046 = fmul fast float %1043, 0x3F90101020000000
  %1047 = fmul fast float %1044, 0x3F90101020000000
  %1048 = fmul fast float %1045, 0x3F90101020000000
  %1049 = fadd fast float %1034, %1001
  %1050 = fadd fast float %1035, %1002
  %1051 = fadd fast float %1036, %1003
  %1052 = fmul fast float %1049, 6.375000e+01
  %1053 = fmul fast float %1050, 6.375000e+01
  %1054 = fmul fast float %1051, 6.375000e+01
  %1055 = call float @dx.op.unary.f32(i32 27, float %1052)  ; Round_ni(value)
  %1056 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1057 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1058 = fmul fast float %1055, 0x3FBF1F1F40000000
  %1059 = fmul fast float %1056, 0x3FCF9F9FC0000000
  %1060 = fmul fast float %1057, 0x3FBF1F1F40000000
  %1061 = call float @dx.op.unary.f32(i32 26, float %1058)  ; Round_ne(value)
  %1062 = call float @dx.op.unary.f32(i32 26, float %1059)  ; Round_ne(value)
  %1063 = call float @dx.op.unary.f32(i32 26, float %1060)  ; Round_ne(value)
  %1064 = fptoui float %1061 to i32
  %1065 = fptoui float %1062 to i32
  %1066 = fptoui float %1063 to i32
  %1067 = shl i32 %1064, 11
  %1068 = shl i32 %1065, 5
  %1069 = or i32 %1068, %1067
  %1070 = or i32 %1069, %1066
  %1071 = fmul fast float %1043, 0x3FBF1F1F40000000
  %1072 = fmul fast float %1044, 0x3FCF9F9FC0000000
  %1073 = fmul fast float %1045, 0x3FBF1F1F40000000
  %1074 = call float @dx.op.unary.f32(i32 26, float %1071)  ; Round_ne(value)
  %1075 = call float @dx.op.unary.f32(i32 26, float %1072)  ; Round_ne(value)
  %1076 = call float @dx.op.unary.f32(i32 26, float %1073)  ; Round_ne(value)
  %1077 = fptoui float %1074 to i32
  %1078 = fptoui float %1075 to i32
  %1079 = fptoui float %1076 to i32
  %1080 = shl i32 %1077, 11
  %1081 = shl i32 %1078, 5
  %1082 = or i32 %1081, %1080
  %1083 = or i32 %1082, %1079
  %1084 = fmul fast float %1026, 6.375000e+01
  %1085 = call float @dx.op.unary.f32(i32 26, float %1084)  ; Round_ne(value)
  %1086 = fptoui float %1085 to i32
  %1087 = fmul fast float %1027, 6.375000e+01
  %1088 = call float @dx.op.unary.f32(i32 26, float %1087)  ; Round_ne(value)
  %1089 = fptoui float %1088 to i32
  %1090 = icmp ult i32 %1070, %1083
  br i1 %1090, label %1091, label %1139, !dx.controlflow.hints !30

; <label>:1091                                    ; preds = %1030
  %1092 = fmul fast float %1057, 0x3F90101020000000
  %1093 = fmul fast float %1056, 0x3F90101020000000
  %1094 = fmul fast float %1055, 0x3F90101020000000
  %1095 = fsub fast float %1055, %1043
  %1096 = fmul fast float %1095, 0x3F90101020000000
  %1097 = fsub fast float %1056, %1044
  %1098 = fmul fast float %1097, 0x3F90101020000000
  %1099 = fsub fast float %1057, %1045
  %1100 = fmul fast float %1099, 0x3F90101020000000
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1098, float %1100, float %1096, float %1098, float %1100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = fdiv fast float 3.000000e+00, %1101
  %1103 = fmul fast float %1102, %1096
  %1104 = fmul fast float %1102, %1098
  %1105 = fmul fast float %1102, %1100
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1047, float %1048, float %1046, float %1047, float %1048)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1047, float %1048, float %1094, float %1093, float %1092)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = fsub fast float %1106, %1107
  %1109 = fmul fast float %1108, %1102
  br label %1110

; <label>:1110                                    ; preds = %1131, %1091
  %1111 = phi float [ %909, %1091 ], [ %1137, %1131 ]
  %1112 = phi float [ %903, %1091 ], [ %1135, %1131 ]
  %1113 = phi float [ %897, %1091 ], [ %1133, %1131 ]
  %1114 = phi i32 [ 15, %1091 ], [ %1129, %1131 ]
  %1115 = phi i32 [ 0, %1091 ], [ %1128, %1131 ]
  %1116 = call float @dx.op.dot3.f32(i32 55, float %1113, float %1112, float %1111, float %1103, float %1104, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = fadd fast float %1116, %1109
  %1118 = call float @dx.op.unary.f32(i32 26, float %1117)  ; Round_ne(value)
  %1119 = fptoui float %1118 to i32
  %1120 = and i32 %1119, 1
  %1121 = lshr i32 %1119, 1
  %1122 = xor i32 %1120, %1121
  %1123 = shl nuw i32 %1122, 1
  %1124 = or i32 %1121, %1115
  %1125 = or i32 %1124, %1123
  %1126 = icmp ne i32 %1114, 0
  %1127 = shl i32 %1125, 2
  %1128 = select i1 %1126, i32 %1127, i32 %1125
  %1129 = add nsw i32 %1114, -1
  %1130 = icmp sgt i32 %1114, 0
  br i1 %1130, label %1131, label %1138

; <label>:1131                                    ; preds = %1110
  %1132 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %1129
  %1133 = load float, float* %1132, align 4
  %1134 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %1129
  %1135 = load float, float* %1134, align 4
  %1136 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %1129
  %1137 = load float, float* %1136, align 4
  br label %1110

; <label>:1138                                    ; preds = %1110
  br label %1139

; <label>:1139                                    ; preds = %1138, %1030
  %1140 = phi i32 [ 0, %1030 ], [ %1128, %1138 ]
  %1141 = shl i32 %1086, 8
  %1142 = or i32 %1141, %1089
  %1143 = icmp ult i32 %1086, %1089
  br i1 %1143, label %1144, label %1254, !dx.controlflow.hints !31

; <label>:1144                                    ; preds = %1139
  %1145 = fsub fast float %1026, %1027
  %1146 = fdiv fast float 7.000000e+00, %1145
  %1147 = fsub fast float %914, %1027
  %1148 = fmul fast float %1147, %1146
  %1149 = call float @dx.op.unary.f32(i32 26, float %1148)  ; Round_ne(value)
  %1150 = fptoui float %1149 to i32
  %1151 = icmp ne i32 %1150, 0
  %1152 = zext i1 %1151 to i32
  %1153 = icmp eq i32 %1150, 7
  %1154 = select i1 %1153, i32 65529, i32 0
  %1155 = add i32 %1154, %1150
  %1156 = add i32 %1155, %1152
  %1157 = shl i32 %1156, 16
  %1158 = fsub fast float %919, %1027
  %1159 = fmul fast float %1158, %1146
  %1160 = call float @dx.op.unary.f32(i32 26, float %1159)  ; Round_ne(value)
  %1161 = fptoui float %1160 to i32
  %1162 = icmp ne i32 %1161, 0
  %1163 = zext i1 %1162 to i32
  %1164 = icmp eq i32 %1161, 7
  %1165 = select i1 %1164, i32 8185, i32 0
  %1166 = add i32 %1165, %1161
  %1167 = add i32 %1166, %1163
  %1168 = shl i32 %1167, 19
  %1169 = fsub fast float %924, %1027
  %1170 = fmul fast float %1169, %1146
  %1171 = call float @dx.op.unary.f32(i32 26, float %1170)  ; Round_ne(value)
  %1172 = fptoui float %1171 to i32
  %1173 = icmp ne i32 %1172, 0
  %1174 = zext i1 %1173 to i32
  %1175 = icmp eq i32 %1172, 7
  %1176 = select i1 %1175, i32 1017, i32 0
  %1177 = add i32 %1176, %1172
  %1178 = add i32 %1177, %1174
  %1179 = shl i32 %1178, 22
  %1180 = fsub fast float %929, %1027
  %1181 = fmul fast float %1180, %1146
  %1182 = call float @dx.op.unary.f32(i32 26, float %1181)  ; Round_ne(value)
  %1183 = fptoui float %1182 to i32
  %1184 = icmp ne i32 %1183, 0
  %1185 = zext i1 %1184 to i32
  %1186 = icmp eq i32 %1183, 7
  %1187 = select i1 %1186, i32 121, i32 0
  %1188 = add i32 %1187, %1183
  %1189 = add i32 %1188, %1185
  %1190 = shl i32 %1189, 25
  %1191 = fsub fast float %934, %1027
  %1192 = fmul fast float %1191, %1146
  %1193 = call float @dx.op.unary.f32(i32 26, float %1192)  ; Round_ne(value)
  %1194 = fptoui float %1193 to i32
  %1195 = icmp ne i32 %1194, 0
  %1196 = zext i1 %1195 to i32
  %1197 = icmp eq i32 %1194, 7
  %1198 = select i1 %1197, i32 9, i32 0
  %1199 = add i32 %1198, %1194
  %1200 = add i32 %1199, %1196
  %1201 = shl i32 %1200, 28
  %1202 = fsub fast float %939, %1027
  %1203 = fmul fast float %1202, %1146
  %1204 = call float @dx.op.unary.f32(i32 26, float %1203)  ; Round_ne(value)
  %1205 = fptoui float %1204 to i32
  %1206 = icmp ne i32 %1205, 0
  %1207 = zext i1 %1206 to i32
  %1208 = icmp eq i32 %1205, 7
  %1209 = select i1 %1208, i32 7, i32 0
  %1210 = sub nsw i32 %1207, %1209
  %1211 = add i32 %1210, %1205
  %1212 = shl i32 %1211, 31
  %1213 = lshr i32 %1211, 1
  %1214 = fsub fast float %944, %1027
  %1215 = fmul fast float %1214, %1146
  %1216 = call float @dx.op.unary.f32(i32 26, float %1215)  ; Round_ne(value)
  %1217 = fptoui float %1216 to i32
  %1218 = icmp ne i32 %1217, 0
  %1219 = zext i1 %1218 to i32
  %1220 = icmp eq i32 %1217, 7
  %1221 = select i1 %1220, i32 1073741817, i32 0
  %1222 = add i32 %1221, %1217
  %1223 = add i32 %1222, %1219
  %1224 = shl i32 %1223, 2
  %1225 = or i32 %1224, %1213
  br label %1226

; <label>:1226                                    ; preds = %1226, %1144
  %1227 = phi i32 [ 7, %1144 ], [ %1245, %1226 ]
  %1228 = phi i32 [ %1225, %1144 ], [ %1244, %1226 ]
  %1229 = phi i32 [ 2, %1144 ], [ %1230, %1226 ]
  %1230 = add nuw nsw i32 %1229, 3
  %1231 = getelementptr inbounds [16 x float], [16 x float]* %16, i32 0, i32 %1227
  %1232 = load float, float* %1231, align 4, !tbaa !17, !noalias !40
  %1233 = fsub fast float %1232, %1027
  %1234 = fmul fast float %1233, %1146
  %1235 = call float @dx.op.unary.f32(i32 26, float %1234)  ; Round_ne(value)
  %1236 = fptoui float %1235 to i32
  %1237 = icmp ne i32 %1236, 0
  %1238 = zext i1 %1237 to i32
  %1239 = icmp eq i32 %1236, 7
  %1240 = select i1 %1239, i32 -7, i32 0
  %1241 = add i32 %1240, %1236
  %1242 = add i32 %1241, %1238
  %1243 = shl i32 %1242, %1230
  %1244 = or i32 %1243, %1228
  %1245 = add nuw nsw i32 %1227, 1
  %1246 = icmp eq i32 %1245, 16
  br i1 %1246, label %1247, label %1226

; <label>:1247                                    ; preds = %1226
  %1248 = or i32 %1157, %1142
  %1249 = or i32 %1248, %1168
  %1250 = or i32 %1249, %1179
  %1251 = or i32 %1250, %1190
  %1252 = or i32 %1251, %1201
  %1253 = or i32 %1252, %1212
  br label %1254

; <label>:1254                                    ; preds = %1247, %1139
  %1255 = phi i32 [ %1142, %1139 ], [ %1253, %1247 ]
  %1256 = phi i32 [ 0, %1139 ], [ %1244, %1247 ]
  %1257 = shl i32 %1070, 16
  %1258 = or i32 %1083, %1257
  %1259 = shl i32 %9, 3
  %1260 = shl i32 %326, 3
  %1261 = or i32 %1259, %573
  %1262 = add i32 %1260, %1017
  %1263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.i32 %1263, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %1261, i32 %1262, i32 %1264, i32 %1255, i32 %1256, i32 %1258, i32 %1140, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1265

; <label>:1265                                    ; preds = %1254, %564
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!4 = !{!5, !8, !12, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !11}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 1, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!12 = !{!13}
!13 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{void ()* @cs_bc3_compress_two_mips, !"cs_bc3_compress_two_mips", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 16, i32 16, i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"\01?LoadTexelsRGBA@@YAXV?$Texture2D@V?$vector@M$03@@@@V?$vector@I$01@@Y0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z: %blockA"}
!23 = distinct !{!23, !"\01?LoadTexelsRGBA@@YAXV?$Texture2D@V?$vector@M$03@@@@V?$vector@I$01@@Y0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"\01?LoadTexelsRGBA@@YAXV?$Texture2D@V?$vector@M$03@@@@V?$vector@I$01@@Y0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z: %blockRGB"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!28 = distinct !{!28, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!29 = distinct !{!29, !28, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33}
!33 = distinct !{!33, !34, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!34 = distinct !{!34, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!38 = distinct !{!38, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!39 = distinct !{!39, !38, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!42 = distinct !{!42, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

