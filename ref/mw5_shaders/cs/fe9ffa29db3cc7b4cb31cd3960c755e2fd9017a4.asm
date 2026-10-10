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
; shader hash: 0b5a5a07ba871f804a8cc8dfd83b08ff
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
;   [112 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   texture     f32        2dMS      T0             t0     1
;                                   texture     u32          2d      T1             t3     1
;                                   texture    byte         r/o      T2             t1     1
;                                   texture     f32          2d      T3             t4     1
;                                   texture     f32          2d      T4             t2     1
;                                       UAV     f32          2d      U0             u1     1
;                                       UAVunorm_f32          2d      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2DMS<vector<float, 3>, 0>" = type { <3 x float>, %"class.Texture2DMS<vector<float, 3>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 3>, 0>::sample_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<float>" = type { float }
%PostConstantBuffer = type { <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, i32, float, float, i32, <4 x i32>, <4 x i32> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

define void @cs_post_trans_resolve() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %16 = alloca [4 x i32], align 4
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x float], align 4
  %19 = alloca [4 x float], align 4
  %20 = alloca [4 x float], align 4
  %21 = alloca [4 x float], align 4
  %22 = alloca [4 x float], align 4
  %23 = alloca [4 x float], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x i32], align 4
  %26 = shl i32 %14, 3
  %27 = shl i32 %15, 3
  %28 = add i32 %26, %12
  %29 = add i32 %27, %13
  %30 = or i32 %29, %28
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  %34 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %35 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  %36 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %37 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  %38 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %39 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  %40 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 0, i32* %41, align 4, !tbaa !23
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 0, i32* %42, align 4, !tbaa !23
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 0, i32* %43, align 4, !tbaa !23
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 0, i32* %44, align 4, !tbaa !23
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 0, i32* %45, align 4, !tbaa !23
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 0, i32* %46, align 4, !tbaa !23
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 0, i32* %47, align 4, !tbaa !23
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 0, i32* %48, align 4, !tbaa !23
  %49 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %28, i32 %29, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %54, !dx.controlflow.hints !27

; <label>:53                                      ; preds = %0
  store i32 0, i32* %41, align 4, !tbaa !23
  store i32 1, i32* %42, align 4, !tbaa !23
  store i32 2, i32* %43, align 4, !tbaa !23
  store i32 3, i32* %44, align 4, !tbaa !23
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 1, i32* %45, align 4, !tbaa !23
  store i32 2, i32* %46, align 4, !tbaa !23
  store i32 4, i32* %47, align 4, !tbaa !23
  store i32 8, i32* %48, align 4, !tbaa !23
  br label %61

; <label>:54                                      ; preds = %0
  %55 = icmp eq i32 %51, 1
  br i1 %55, label %56, label %57, !dx.controlflow.hints !28

; <label>:56                                      ; preds = %54
  store i32 0, i32* %41, align 4, !tbaa !23
  store i32 1, i32* %42, align 4, !tbaa !23
  store i32 0, i32* %43, align 4, !tbaa !23
  store i32 1, i32* %44, align 4, !tbaa !23
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 1, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 1, i32* %40, align 4
  store i32 1, i32* %45, align 4, !tbaa !23
  store i32 2, i32* %46, align 4, !tbaa !23
  store i32 5, i32* %47, align 4, !tbaa !23
  store i32 10, i32* %48, align 4, !tbaa !23
  br label %61

; <label>:57                                      ; preds = %54
  %58 = icmp eq i32 %51, 2
  br i1 %58, label %59, label %60, !dx.controlflow.hints !29

; <label>:59                                      ; preds = %57
  store i32 0, i32* %41, align 4, !tbaa !23
  store i32 0, i32* %42, align 4, !tbaa !23
  store i32 2, i32* %43, align 4, !tbaa !23
  store i32 2, i32* %44, align 4, !tbaa !23
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 1, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 1, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 1, i32* %45, align 4, !tbaa !23
  store i32 3, i32* %46, align 4, !tbaa !23
  store i32 4, i32* %47, align 4, !tbaa !23
  store i32 12, i32* %48, align 4, !tbaa !23
  br label %61

; <label>:60                                      ; preds = %57
  store i32 0, i32* %41, align 4, !tbaa !23
  store i32 0, i32* %42, align 4, !tbaa !23
  store i32 0, i32* %43, align 4, !tbaa !23
  store i32 0, i32* %44, align 4, !tbaa !23
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 1, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 1, i32* %38, align 4
  store i32 1, i32* %39, align 4
  store i32 1, i32* %40, align 4
  store i32 1, i32* %45, align 4, !tbaa !23
  store i32 3, i32* %46, align 4, !tbaa !23
  store i32 5, i32* %47, align 4, !tbaa !23
  store i32 15, i32* %48, align 4, !tbaa !23
  br label %61

; <label>:61                                      ; preds = %60, %59, %56, %53
  %62 = phi i32 [ 1, %56 ], [ 0, %60 ], [ 0, %59 ], [ 1, %53 ]
  %63 = phi i32 [ 0, %56 ], [ 1, %60 ], [ 1, %59 ], [ 0, %53 ]
  %64 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %28, i32 %29, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = getelementptr [4 x float], [4 x float]* %18, i32 0, i32 0
  %69 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 0
  %70 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 0
  store float %65, float* %68, align 4
  store float %66, float* %69, align 4
  store float %67, float* %70, align 4
  br label %71

; <label>:71                                      ; preds = %91, %61
  %72 = phi i32 [ %62, %61 ], [ %97, %91 ]
  %73 = phi i32 [ 0, %61 ], [ %95, %91 ]
  %74 = phi i32 [ %63, %61 ], [ %93, %91 ]
  %75 = phi i32 [ 1, %61 ], [ %89, %91 ]
  %76 = add i32 %74, %28
  %77 = add i32 %73, %29
  %78 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %76, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = and i32 %79, 15
  %81 = and i32 %80, %72
  %82 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 %81, i32 %76, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = getelementptr [4 x float], [4 x float]* %18, i32 0, i32 %75
  %87 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %75
  %88 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %75
  store float %83, float* %86, align 4
  store float %84, float* %87, align 4
  store float %85, float* %88, align 4
  %89 = add nuw nsw i32 %75, 1
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %98, label %91

; <label>:91                                      ; preds = %71
  %92 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %89
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %89
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 %89
  %97 = load i32, i32* %96, align 4, !tbaa !23
  br label %71

; <label>:98                                      ; preds = %71
  %99 = load float, float* %68, align 4
  %100 = load float, float* %69, align 4
  %101 = load float, float* %70, align 4
  %102 = getelementptr [4 x float], [4 x float]* %18, i32 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 1
  %105 = load float, float* %104, align 4
  %106 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 1
  %107 = load float, float* %106, align 4
  %108 = getelementptr [4 x float], [4 x float]* %18, i32 0, i32 2
  %109 = load float, float* %108, align 4
  %110 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 2
  %111 = load float, float* %110, align 4
  %112 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 2
  %113 = load float, float* %112, align 4
  %114 = getelementptr [4 x float], [4 x float]* %18, i32 0, i32 3
  %115 = load float, float* %114, align 4
  %116 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 3
  %117 = load float, float* %116, align 4
  %118 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 3
  %119 = load float, float* %118, align 4
  br label %120

; <label>:120                                     ; preds = %166, %98
  %121 = phi i32 [ %168, %166 ], [ 1, %98 ]
  %122 = phi i32 [ %164, %166 ], [ 0, %98 ]
  %123 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %122
  %124 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 %122
  %125 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 %122
  %126 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %121)  ; Countbits(value)
  %127 = uitofp i32 %126 to float
  %128 = fdiv fast float 1.000000e+00, %127
  %129 = and i32 %121, 1
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %130, %99
  %132 = fmul fast float %130, %100
  %133 = fmul fast float %130, %101
  %134 = lshr i32 %121, 1
  %135 = and i32 %134, 1
  %136 = uitofp i32 %135 to float
  %137 = fmul fast float %136, %103
  %138 = fmul fast float %136, %105
  %139 = fmul fast float %136, %107
  %140 = fadd fast float %137, %131
  %141 = fadd fast float %138, %132
  %142 = fadd fast float %139, %133
  %143 = lshr i32 %121, 2
  %144 = and i32 %143, 1
  %145 = uitofp i32 %144 to float
  %146 = fmul fast float %145, %109
  %147 = fmul fast float %145, %111
  %148 = fmul fast float %145, %113
  %149 = fadd fast float %146, %140
  %150 = fadd fast float %147, %141
  %151 = fadd fast float %148, %142
  %152 = lshr i32 %121, 3
  %153 = and i32 %152, 1
  %154 = uitofp i32 %153 to float
  %155 = fmul fast float %154, %115
  %156 = fmul fast float %154, %117
  %157 = fmul fast float %154, %119
  %158 = fadd fast float %155, %149
  %159 = fadd fast float %156, %150
  %160 = fadd fast float %157, %151
  %161 = fmul fast float %158, %128
  %162 = fmul fast float %159, %128
  %163 = fmul fast float %160, %128
  store float %161, float* %123, align 4
  store float %162, float* %124, align 4
  store float %163, float* %125, align 4
  %164 = add nuw nsw i32 %122, 1
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %169, label %166

; <label>:166                                     ; preds = %120
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 %164
  %168 = load i32, i32* %167, align 4, !tbaa !23
  br label %120

; <label>:169                                     ; preds = %120
  %170 = shl i32 %10, 1
  %171 = shl i32 %11, 1
  %172 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 0
  %173 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 0
  %174 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 0
  %175 = load float, float* %172, align 4
  %176 = load float, float* %173, align 4
  %177 = load float, float* %174, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %170, i32 %171, i32 undef, float %175, float %176, float %177, float %175, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %178 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 1
  %179 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 1
  %180 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 1
  %181 = load float, float* %178, align 4
  %182 = load float, float* %179, align 4
  %183 = load float, float* %180, align 4
  %184 = or i32 %170, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %184, i32 %171, i32 undef, float %181, float %182, float %183, float %181, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %185 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 2
  %186 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 2
  %187 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 2
  %188 = load float, float* %185, align 4
  %189 = load float, float* %186, align 4
  %190 = load float, float* %187, align 4
  %191 = or i32 %171, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %170, i32 %191, i32 undef, float %188, float %189, float %190, float %188, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %192 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 3
  %193 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 3
  %194 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 3
  %195 = load float, float* %192, align 4
  %196 = load float, float* %193, align 4
  %197 = load float, float* %194, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %184, i32 %191, i32 undef, float %195, float %196, float %197, float %195, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %198 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %201 = call float @dx.op.binary.f32(i32 36, float %198, float 0.000000e+00)  ; FMin(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %198, float 0.000000e+00)  ; FMax(a,b)
  %203 = fmul fast float %200, 3.200000e+01
  %204 = fmul fast float %201, 0x3F1A36E2E0000000
  %205 = fmul fast float %204, %203
  %206 = call float @dx.op.unary.f32(i32 23, float %205)  ; Log(value)
  %207 = fmul fast float %206, 0x3FC4640000000000
  %208 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %209 = fmul fast float %208, 0x4032DA0000000000
  %210 = fadd fast float %209, 8.359375e-01
  %211 = fmul fast float %208, 1.868750e+01
  %212 = fadd fast float %211, 1.000000e+00
  %213 = fdiv fast float %210, %212
  %214 = call float @dx.op.unary.f32(i32 23, float %213)  ; Log(value)
  %215 = fmul fast float %214, 7.884375e+01
  %216 = call float @dx.op.unary.f32(i32 21, float %215)  ; Exp(value)
  %217 = fmul fast float %202, 0x3F1A36E2E0000000
  %218 = fmul fast float %217, %203
  %219 = call float @dx.op.unary.f32(i32 23, float %218)  ; Log(value)
  %220 = fmul fast float %219, 0x3FC4640000000000
  %221 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %222 = fmul fast float %221, 0x4032DA0000000000
  %223 = fadd fast float %222, 8.359375e-01
  %224 = fmul fast float %221, 1.868750e+01
  %225 = fadd fast float %224, 1.000000e+00
  %226 = fdiv fast float %223, %225
  %227 = call float @dx.op.unary.f32(i32 23, float %226)  ; Log(value)
  %228 = fmul fast float %227, 7.884375e+01
  %229 = call float @dx.op.unary.f32(i32 21, float %228)  ; Exp(value)
  %230 = fmul fast float %216, 0x40778E40E0000000
  %231 = fmul fast float %229, 0x40778E40E0000000
  %232 = call float @dx.op.unary.f32(i32 26, float %230)  ; Round_ne(value)
  %233 = call float @dx.op.unary.f32(i32 26, float %231)  ; Round_ne(value)
  %234 = fmul fast float %232, 0x3F70101020000000
  %235 = fmul fast float %233, 0x3F70101020000000
  %236 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %237 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  br i1 %32, label %238, label %293, !dx.controlflow.hints !30

; <label>:238                                     ; preds = %169
  %239 = lshr i32 %28, 1
  %240 = lshr i32 %29, 1
  %241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %239, i32 %240, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = fsub fast float %242, %236
  %245 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %246 = call float @dx.op.binary.f32(i32 35, float %236, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %247 = call float @dx.op.binary.f32(i32 35, float %242, float %246)  ; FMax(a,b)
  %248 = fdiv fast float %245, %247
  %249 = fsub fast float 1.000000e+00, %248
  %250 = call float @dx.op.unary.f32(i32 7, float %249)  ; Saturate(value)
  %251 = fsub fast float %243, %237
  %252 = call float @dx.op.unary.f32(i32 6, float %251)  ; FAbs(value)
  %253 = call float @dx.op.binary.f32(i32 35, float %237, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %254 = call float @dx.op.binary.f32(i32 35, float %243, float %253)  ; FMax(a,b)
  %255 = fdiv fast float %252, %254
  %256 = fsub fast float 1.000000e+00, %255
  %257 = call float @dx.op.unary.f32(i32 7, float %256)  ; Saturate(value)
  %258 = call float @dx.op.binary.f32(i32 36, float %250, float %257)  ; FMin(a,b)
  %259 = fcmp fast ogt float %258, 0x3FEF780340000000
  %260 = select i1 %259, float 1.000000e+00, float %258
  %261 = call float @dx.op.unary.f32(i32 23, float %260)  ; Log(value)
  %262 = fmul fast float %261, 4.000000e+00
  %263 = call float @dx.op.unary.f32(i32 21, float %262)  ; Exp(value)
  %264 = fmul fast float %263, 0x3FEDDDDDE0000000
  %265 = fadd fast float %264, 0x3FB1111120000000
  %266 = lshr i32 %10, 1
  %267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.i32 %267, 1
  %269 = shl i32 %268, 1
  %270 = lshr i32 %11, 3
  %271 = extractvalue %dx.types.CBufRet.i32 %267, 0
  %272 = mul i32 %271, %270
  %273 = lshr i32 %10, 4
  %274 = add i32 %269, %273
  %275 = add i32 %274, %272
  %276 = shl i32 %275, 2
  %277 = shl i32 %11, 2
  %278 = and i32 %277, 24
  %279 = and i32 %266, 7
  %280 = or i32 %278, %279
  %281 = shl i32 1, %280
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, %281
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %291, label %286, !dx.controlflow.hints !31

; <label>:286                                     ; preds = %238
  %287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %10, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fcmp fast une float %288, 0.000000e+00
  %290 = select i1 %289, float 0.000000e+00, float %265
  br label %291

; <label>:291                                     ; preds = %286, %238
  %292 = phi float [ %290, %286 ], [ %265, %238 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %239, i32 %240, i32 undef, float %292, float %292, float %292, float %292, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %293

; <label>:293                                     ; preds = %291, %169
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !17, null}
!5 = !{!6, !8, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2DMS<vector<float, 3>, 0>"* undef, !"", i32 0, i32 0, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !16}
!16 = !{i32 0, i32 14}
!17 = !{!18, !19}
!18 = !{i32 0, %PostConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!19 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{void ()* @cs_post_trans_resolve, !"cs_post_trans_resolve", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

