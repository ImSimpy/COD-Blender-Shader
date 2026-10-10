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
; shader hash: d718ac06c188aff0a77d52bdd068caca
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
;   [11728 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t5     1
;                                   texture    byte         r/o      T5             t6     1
;                                   texture    byte         r/o      T6            t10     1
;                                   texture    byte         r/o      T7            t11     1
;                                   texture    byte         r/o      T8            t12     1
;                                   texture    byte         r/o      T9            t13     1
;                                   texture    byte         r/o     T10            t15     1
;                                   texture    byte         r/o     T11            t16     1
;                                   texture     u32          2d     T12            t29     1
;                                       UAV  struct         r/w      U0             u2     1
;                                       UAV     u32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@"\01?anyLeft@@3PAIA" = external addrspace(3) global [2 x i32], align 4
@"\01?wgDataBins@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [32 x i32] undef, align 4
@"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim" = addrspace(3) global [64 x i32] undef, align 4

define void @vis_buffer_prepass_tangent_frame() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %20 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %17, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = lshr i32 %21, 3
  %26 = and i32 %25, 63
  %27 = lshr i32 %21, 9
  %28 = and i32 %27, 262143
  %29 = select i1 %23, i32 %28, i32 -1
  %30 = icmp ult i32 %26, 32
  %31 = and i32 %25, 31
  %32 = shl i32 1, %31
  %33 = select i1 %30, i32 %32, i32 0
  %34 = icmp ugt i32 %26, 31
  %35 = select i1 %34, i32 %32, i32 0
  %36 = and i32 %29, 15
  br label %37

; <label>:37                                      ; preds = %128, %0
  %38 = phi i32 [ %24, %0 ], [ %108, %128 ]
  %39 = phi i32 [ 0, %0 ], [ %129, %128 ]
  %40 = and i32 %39, 1
  %41 = getelementptr [2 x i32], [2 x i32] addrspace(3)* @"\01?anyLeft@@3PAIA", i32 0, i32 %40
  store i32 0, i32 addrspace(3)* %41, align 4, !tbaa !29
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %59, label %43, !dx.controlflow.hints !33

; <label>:43                                      ; preds = %37
  %44 = shl nsw i32 %29, 8
  %45 = or i32 %44, %19
  %46 = mul i32 %40, 16
  %47 = add i32 %36, %46
  %48 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?wgDataBins@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %47
  store i32 %45, i32 addrspace(3)* %48, align 4, !tbaa !29
  %49 = mul i32 %40, 16
  %50 = add i32 %36, %49
  %51 = mul i32 %50, 2
  %52 = add i32 0, %51
  %53 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %52
  store i32 0, i32 addrspace(3)* %53, align 4
  %54 = mul i32 %40, 16
  %55 = add i32 %36, %54
  %56 = mul i32 %55, 2
  %57 = add i32 1, %56
  %58 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %57
  store i32 0, i32 addrspace(3)* %58, align 4
  br label %59

; <label>:59                                      ; preds = %43, %37
  %60 = phi i1 [ true, %37 ], [ %42, %43 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %60, label %85, label %61, !dx.controlflow.hints !34

; <label>:61                                      ; preds = %59
  %62 = mul i32 %40, 16
  %63 = add i32 %36, %62
  %64 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?wgDataBins@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %63
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !29
  %66 = lshr i32 %65, 8
  %67 = and i32 %65, 255
  %68 = icmp eq i32 %29, %66
  br i1 %68, label %69, label %84, !dx.controlflow.hints !35

; <label>:69                                      ; preds = %61
  %70 = mul i32 %40, 16
  %71 = add i32 %36, %70
  %72 = mul i32 %71, 2
  %73 = add i32 0, %72
  %74 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %73
  %75 = load i32, i32 addrspace(3)* %74, align 4
  %76 = or i32 %75, %33
  store i32 %76, i32 addrspace(3)* %74, align 4
  %77 = mul i32 %40, 16
  %78 = add i32 %36, %77
  %79 = mul i32 %78, 2
  %80 = add i32 1, %79
  %81 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %80
  %82 = load i32, i32 addrspace(3)* %81, align 4
  %83 = or i32 %82, %35
  store i32 %83, i32 addrspace(3)* %81, align 4
  br label %85

; <label>:84                                      ; preds = %61
  store i32 1, i32 addrspace(3)* %41, align 4, !tbaa !29
  br label %85

; <label>:85                                      ; preds = %84, %69, %59
  %86 = phi i1 [ true, %69 ], [ false, %84 ], [ false, %59 ]
  %87 = phi i32 [ %67, %69 ], [ %67, %84 ], [ -1, %59 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %86, label %88, label %107, !dx.controlflow.hints !36

; <label>:88                                      ; preds = %85
  %89 = mul i32 %40, 16
  %90 = add i32 %36, %89
  %91 = mul i32 %90, 2
  %92 = add i32 0, %91
  %93 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %92
  %94 = load i32, i32 addrspace(3)* %93, align 4
  %95 = and i32 %94, %33
  %96 = icmp eq i32 %95, %33
  %97 = mul i32 %40, 16
  %98 = add i32 %36, %97
  %99 = mul i32 %98, 2
  %100 = add i32 1, %99
  %101 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %100
  %102 = load i32, i32 addrspace(3)* %101, align 4
  %103 = and i32 %102, %35
  %104 = icmp eq i32 %103, %35
  %105 = and i1 %96, %104
  br i1 %105, label %107, label %106, !dx.controlflow.hints !37

; <label>:106                                     ; preds = %88
  store i32 1, i32 addrspace(3)* %41, align 4, !tbaa !29
  br label %107

; <label>:107                                     ; preds = %106, %88, %85
  %108 = phi i32 [ %38, %106 ], [ %38, %85 ], [ 0, %88 ]
  %109 = icmp eq i32 %19, %87
  br i1 %109, label %110, label %125, !dx.controlflow.hints !38

; <label>:110                                     ; preds = %107
  %111 = mul i32 %40, 16
  %112 = add i32 %36, %111
  %113 = mul i32 %112, 2
  %114 = add i32 0, %113
  %115 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %114
  %116 = load i32, i32 addrspace(3)* %115, align 4
  %117 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %29, i32 0, i32 undef, i32 %116)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %118 = mul i32 %40, 16
  %119 = add i32 %36, %118
  %120 = mul i32 %119, 2
  %121 = add i32 1, %120
  %122 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %121
  %123 = load i32, i32 addrspace(3)* %122, align 4
  %124 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %29, i32 4, i32 undef, i32 %123)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %125

; <label>:125                                     ; preds = %110, %107
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %126 = load i32, i32 addrspace(3)* %41, align 4, !tbaa !29
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128, !dx.controlflow.hints !39

; <label>:128                                     ; preds = %125
  %129 = add nuw nsw i32 %39, 1
  %130 = icmp ult i32 %129, 64
  br i1 %130, label %37, label %131

; <label>:131                                     ; preds = %128, %125
  %132 = lshr i32 %21, 7
  %133 = and i32 %132, 1048572
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %135, 65535
  %137 = and i32 %135, 134217728
  %138 = and i32 %135, 536870912
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145, !dx.controlflow.hints !40

; <label>:140                                     ; preds = %131
  %141 = shl nuw nsw i32 %136, 4
  %142 = add nuw nsw i32 %141, 5767168
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 1
  br label %152

; <label>:145                                     ; preds = %131
  %146 = mul nuw nsw i32 %136, 12
  %147 = add nuw nsw i32 %146, 1572864
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = and i32 %150, 65535
  br label %152

; <label>:152                                     ; preds = %145, %140
  %153 = phi i32 [ 0, %140 ], [ %151, %145 ]
  %154 = phi i32 [ %144, %140 ], [ %149, %145 ]
  br i1 %139, label %155, label %167, !dx.controlflow.hints !41

; <label>:155                                     ; preds = %152
  %156 = shl nuw nsw i32 %136, 3
  %157 = or i32 %156, 5242880
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = extractvalue %dx.types.ResRet.i32 %158, 1
  %161 = lshr i32 %160, 24
  %162 = lshr i32 %160, 25
  %163 = and i32 %162, 2
  %164 = xor i32 %163, 3
  %165 = shl i32 %160, 7
  %166 = and i32 %165, 2147483520
  br label %181

; <label>:167                                     ; preds = %152
  %168 = mul nuw nsw i32 %136, 12
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = extractvalue %dx.types.ResRet.i32 %169, 1
  %172 = extractvalue %dx.types.ResRet.i32 %169, 2
  %173 = lshr i32 %170, 28
  %174 = and i32 %171, 65535
  %175 = shl nuw nsw i32 %173, 16
  %176 = or i32 %175, %174
  %177 = and i32 %170, 268435455
  %178 = and i32 %172, 15
  %179 = lshr i32 %172, 4
  %180 = and i32 %179, 15
  br label %181

; <label>:181                                     ; preds = %167, %155
  %182 = phi i32 [ %166, %155 ], [ 0, %167 ]
  %183 = phi i32 [ %159, %155 ], [ %172, %167 ]
  %184 = phi i32 [ %161, %155 ], [ %180, %167 ]
  %185 = phi i32 [ %164, %155 ], [ %178, %167 ]
  %186 = phi i32 [ 0, %155 ], [ %176, %167 ]
  %187 = phi i32 [ 0, %155 ], [ %177, %167 ]
  %188 = lshr i32 %183, 24
  br i1 %139, label %189, label %194, !dx.controlflow.hints !42

; <label>:189                                     ; preds = %181
  %190 = shl nuw nsw i32 %136, 3
  %191 = or i32 %190, 6815744
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  br label %200

; <label>:194                                     ; preds = %181
  %195 = mul nuw nsw i32 %136, 12
  %196 = add nuw nsw i32 %195, 786432
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = extractvalue %dx.types.ResRet.i32 %197, 1
  br label %200

; <label>:200                                     ; preds = %194, %189
  %201 = phi i32 [ 0, %189 ], [ %199, %194 ]
  %202 = phi i32 [ %193, %189 ], [ %198, %194 ]
  %203 = shl nuw nsw i32 %136, 4
  %204 = add nuw nsw i32 %203, 2359296
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 2
  %207 = icmp eq i32 %185, 2
  br i1 %207, label %208, label %286, !dx.controlflow.hints !43

; <label>:208                                     ; preds = %200
  %209 = shl nsw i32 %186, 5
  %210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = extractvalue %dx.types.ResRet.f32 %210, 1
  %213 = extractvalue %dx.types.ResRet.f32 %210, 2
  %214 = or i32 %209, 16
  %215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = extractvalue %dx.types.ResRet.f32 %215, 1
  %218 = extractvalue %dx.types.ResRet.f32 %215, 2
  %219 = mul i32 %187, 24
  %220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = extractvalue %dx.types.ResRet.f32 %220, 1
  %223 = extractvalue %dx.types.ResRet.f32 %220, 2
  %224 = add i32 %219, 12
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = extractvalue %dx.types.ResRet.i32 %225, 1
  %228 = add i32 %219, 20
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %226, 65535
  %232 = uitofp i32 %231 to float
  %233 = lshr i32 %226, 16
  %234 = uitofp i32 %233 to float
  %235 = and i32 %227, 65535
  %236 = uitofp i32 %235 to float
  %237 = lshr i32 %227, 16
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %232, 0x3F00001000000000
  %240 = fmul fast float %234, 0x3F00001000000000
  %241 = fmul fast float %236, 0x3F00001000000000
  %242 = fmul fast float %238, 0x3F00001000000000
  %243 = fadd fast float %239, -1.000000e+00
  %244 = fadd fast float %240, -1.000000e+00
  %245 = fadd fast float %241, -1.000000e+00
  %246 = fadd fast float %242, -1.000000e+00
  %247 = and i32 %230, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = fmul fast float %234, 0x3F10001000000000
  %250 = fadd fast float %249, -2.000000e+00
  %251 = fmul fast float %250, %244
  %252 = fsub fast float 1.000000e+00, %251
  %253 = fmul fast float %236, 0x3F10001000000000
  %254 = fadd fast float %253, -2.000000e+00
  %255 = fmul fast float %254, %245
  %256 = fsub fast float %252, %255
  %257 = fmul fast float %232, 0x3F10001000000000
  %258 = fadd fast float %257, -2.000000e+00
  %259 = fmul fast float %258, %244
  %260 = fmul fast float %254, %246
  %261 = fsub fast float %259, %260
  %262 = fmul fast float %258, %245
  %263 = fmul fast float %250, %246
  %264 = fadd fast float %262, %263
  %265 = fadd fast float %259, %260
  %266 = fmul fast float %258, %243
  %267 = fsub fast float 1.000000e+00, %266
  %268 = fsub fast float %267, %255
  %269 = fmul fast float %250, %245
  %270 = fmul fast float %258, %246
  %271 = fsub fast float %269, %270
  %272 = fsub fast float %262, %263
  %273 = fadd fast float %269, %270
  %274 = fsub fast float %267, %251
  %275 = fmul fast float %256, %248
  %276 = fmul fast float %265, %248
  %277 = fmul fast float %272, %248
  %278 = fmul fast float %261, %248
  %279 = fmul fast float %268, %248
  %280 = fmul fast float %273, %248
  %281 = fmul fast float %264, %248
  %282 = fmul fast float %271, %248
  %283 = fmul fast float %274, %248
  %284 = call float @dx.op.binary.f32(i32 35, float %217, float %218), !dx.precise !44  ; FMax(a,b)
  %285 = call float @dx.op.binary.f32(i32 35, float %216, float %284), !dx.precise !44  ; FMax(a,b)
  br label %498

; <label>:286                                     ; preds = %200
  %287 = icmp eq i32 %185, 0
  br i1 %287, label %288, label %422, !dx.controlflow.hints !45

; <label>:288                                     ; preds = %286
  %289 = and i32 %184, 1
  %290 = icmp eq i32 %289, 0
  %291 = lshr exact i32 %137, 6
  %292 = shl i32 %187, 6
  %293 = add i32 %292, %291
  %294 = or i32 %293, 16
  br i1 %290, label %349, label %295, !dx.controlflow.hints !46

; <label>:295                                     ; preds = %288
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = extractvalue %dx.types.ResRet.i32 %296, 1
  %299 = extractvalue %dx.types.ResRet.i32 %296, 2
  %300 = extractvalue %dx.types.ResRet.i32 %296, 3
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = extractvalue %dx.types.ResRet.i32 %301, 1
  %304 = extractvalue %dx.types.ResRet.i32 %301, 2
  %305 = extractvalue %dx.types.ResRet.i32 %301, 3
  %306 = bitcast i32 %297 to float
  %307 = bitcast i32 %298 to float
  %308 = bitcast i32 %299 to float
  %309 = bitcast i32 %300 to float
  %310 = bitcast i32 %302 to float
  %311 = bitcast i32 %303 to float
  %312 = bitcast i32 %304 to float
  %313 = bitcast i32 %305 to float
  %314 = fmul fast float %307, %307
  %315 = fmul fast float %314, 2.000000e+00
  %316 = fsub fast float 1.000000e+00, %315
  %317 = fmul fast float %308, %308
  %318 = fmul fast float %317, 2.000000e+00
  %319 = fsub fast float %316, %318
  %320 = fmul fast float %306, 2.000000e+00
  %321 = fmul fast float %320, %307
  %322 = fmul fast float %308, 2.000000e+00
  %323 = fmul fast float %322, %309
  %324 = fsub fast float %321, %323
  %325 = fmul fast float %308, %306
  %326 = fmul fast float %309, %307
  %327 = fadd fast float %325, %326
  %328 = fmul fast float %327, 2.000000e+00
  %329 = fmul fast float %307, %306
  %330 = fmul fast float %309, %308
  %331 = fadd fast float %329, %330
  %332 = fmul fast float %331, 2.000000e+00
  %333 = fmul fast float %306, %306
  %334 = fmul fast float %333, 2.000000e+00
  %335 = fsub fast float 1.000000e+00, %334
  %336 = fsub fast float %335, %318
  %337 = fmul fast float %307, 2.000000e+00
  %338 = fmul fast float %337, %308
  %339 = fmul fast float %320, %309
  %340 = fsub fast float %338, %339
  %341 = fmul fast float %320, %308
  %342 = fmul fast float %337, %309
  %343 = fsub fast float %341, %342
  %344 = fmul fast float %308, %307
  %345 = fmul fast float %309, %306
  %346 = fadd fast float %344, %345
  %347 = fmul fast float %346, 2.000000e+00
  %348 = fsub fast float %335, %315
  br label %498

; <label>:349                                     ; preds = %288
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = extractvalue %dx.types.ResRet.i32 %350, 1
  %353 = extractvalue %dx.types.ResRet.i32 %350, 2
  %354 = extractvalue %dx.types.ResRet.i32 %350, 3
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = extractvalue %dx.types.ResRet.i32 %355, 1
  %358 = extractvalue %dx.types.ResRet.i32 %355, 2
  %359 = extractvalue %dx.types.ResRet.i32 %355, 3
  %360 = or i32 %293, 48
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = extractvalue %dx.types.ResRet.i32 %361, 1
  %364 = extractvalue %dx.types.ResRet.i32 %361, 2
  %365 = extractvalue %dx.types.ResRet.i32 %361, 3
  %366 = bitcast i32 %351 to float
  %367 = bitcast i32 %352 to float
  %368 = bitcast i32 %353 to float
  %369 = bitcast i32 %354 to float
  %370 = bitcast i32 %356 to float
  %371 = bitcast i32 %357 to float
  %372 = bitcast i32 %358 to float
  %373 = bitcast i32 %359 to float
  %374 = bitcast i32 %362 to float
  %375 = bitcast i32 %363 to float
  %376 = bitcast i32 %364 to float
  %377 = bitcast i32 %365 to float
  %378 = fmul fast float %367, %367
  %379 = fmul fast float %378, 2.000000e+00
  %380 = fsub fast float 1.000000e+00, %379
  %381 = fmul fast float %368, %368
  %382 = fmul fast float %381, 2.000000e+00
  %383 = fsub fast float %380, %382
  %384 = fmul fast float %366, 2.000000e+00
  %385 = fmul fast float %384, %367
  %386 = fmul fast float %368, 2.000000e+00
  %387 = fmul fast float %386, %369
  %388 = fsub fast float %385, %387
  %389 = fmul fast float %368, %366
  %390 = fmul fast float %369, %367
  %391 = fadd fast float %389, %390
  %392 = fmul fast float %391, 2.000000e+00
  %393 = fmul fast float %367, %366
  %394 = fmul fast float %369, %368
  %395 = fadd fast float %393, %394
  %396 = fmul fast float %395, 2.000000e+00
  %397 = fmul fast float %366, %366
  %398 = fmul fast float %397, 2.000000e+00
  %399 = fsub fast float 1.000000e+00, %398
  %400 = fsub fast float %399, %382
  %401 = fmul fast float %367, 2.000000e+00
  %402 = fmul fast float %401, %368
  %403 = fmul fast float %384, %369
  %404 = fsub fast float %402, %403
  %405 = fmul fast float %384, %368
  %406 = fmul fast float %401, %369
  %407 = fsub fast float %405, %406
  %408 = fmul fast float %368, %367
  %409 = fmul fast float %369, %366
  %410 = fadd fast float %408, %409
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float %399, %379
  %413 = fmul fast float %383, %373
  %414 = fmul fast float %396, %373
  %415 = fmul fast float %407, %373
  %416 = fmul fast float %388, %373
  %417 = fmul fast float %400, %373
  %418 = fmul fast float %411, %373
  %419 = fmul fast float %392, %373
  %420 = fmul fast float %404, %373
  %421 = fmul fast float %412, %373
  br label %498

; <label>:422                                     ; preds = %286
  %423 = icmp eq i32 %185, 3
  br i1 %423, label %424, label %432, !dx.controlflow.hints !47

; <label>:424                                     ; preds = %422
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = or i32 %182, 12
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  br label %498

; <label>:432                                     ; preds = %422
  %433 = icmp eq i32 %185, 1
  br i1 %433, label %434, label %498, !dx.controlflow.hints !48

; <label>:434                                     ; preds = %432
  %435 = lshr exact i32 %137, 6
  %436 = shl nuw nsw i32 %136, 6
  %437 = add nuw nsw i32 %436, 1572864
  %438 = add nuw nsw i32 %437, %435
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = extractvalue %dx.types.ResRet.i32 %439, 1
  %442 = extractvalue %dx.types.ResRet.i32 %439, 2
  %443 = extractvalue %dx.types.ResRet.i32 %439, 3
  %444 = or i32 %438, 16
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = extractvalue %dx.types.ResRet.i32 %445, 1
  %448 = extractvalue %dx.types.ResRet.i32 %445, 2
  %449 = bitcast i32 %440 to float
  %450 = bitcast i32 %441 to float
  %451 = bitcast i32 %442 to float
  %452 = bitcast i32 %443 to float
  %453 = bitcast i32 %446 to float
  %454 = bitcast i32 %447 to float
  %455 = bitcast i32 %448 to float
  %456 = fmul fast float %450, %450
  %457 = fmul fast float %456, 2.000000e+00
  %458 = fsub fast float 1.000000e+00, %457
  %459 = fmul fast float %451, %451
  %460 = fmul fast float %459, 2.000000e+00
  %461 = fsub fast float %458, %460
  %462 = fmul fast float %449, 2.000000e+00
  %463 = fmul fast float %462, %450
  %464 = fmul fast float %451, 2.000000e+00
  %465 = fmul fast float %464, %452
  %466 = fsub fast float %463, %465
  %467 = fmul fast float %451, %449
  %468 = fmul fast float %452, %450
  %469 = fadd fast float %467, %468
  %470 = fmul fast float %469, 2.000000e+00
  %471 = fmul fast float %450, %449
  %472 = fmul fast float %452, %451
  %473 = fadd fast float %471, %472
  %474 = fmul fast float %473, 2.000000e+00
  %475 = fmul fast float %449, %449
  %476 = fmul fast float %475, 2.000000e+00
  %477 = fsub fast float 1.000000e+00, %476
  %478 = fsub fast float %477, %460
  %479 = fmul fast float %450, 2.000000e+00
  %480 = fmul fast float %479, %451
  %481 = fmul fast float %462, %452
  %482 = fsub fast float %480, %481
  %483 = fmul fast float %462, %451
  %484 = fmul fast float %479, %452
  %485 = fsub fast float %483, %484
  %486 = fmul fast float %451, %450
  %487 = fmul fast float %452, %449
  %488 = fadd fast float %486, %487
  %489 = fmul fast float %488, 2.000000e+00
  %490 = fsub fast float %477, %457
  %491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = or i32 %182, 12
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  br label %498

; <label>:498                                     ; preds = %434, %432, %424, %349, %295, %208
  %499 = phi float [ %275, %208 ], [ %319, %295 ], [ %413, %349 ], [ 1.000000e+00, %424 ], [ %461, %434 ], [ 0.000000e+00, %432 ]
  %500 = phi float [ %278, %208 ], [ %324, %295 ], [ %416, %349 ], [ 0.000000e+00, %424 ], [ %466, %434 ], [ 0.000000e+00, %432 ]
  %501 = phi float [ %281, %208 ], [ %328, %295 ], [ %419, %349 ], [ 0.000000e+00, %424 ], [ %470, %434 ], [ 0.000000e+00, %432 ]
  %502 = phi float [ %221, %208 ], [ %310, %295 ], [ %370, %349 ], [ 0.000000e+00, %424 ], [ %453, %434 ], [ 0.000000e+00, %432 ]
  %503 = phi float [ %276, %208 ], [ %332, %295 ], [ %414, %349 ], [ 0.000000e+00, %424 ], [ %474, %434 ], [ 0.000000e+00, %432 ]
  %504 = phi float [ %279, %208 ], [ %336, %295 ], [ %417, %349 ], [ 1.000000e+00, %424 ], [ %478, %434 ], [ 0.000000e+00, %432 ]
  %505 = phi float [ %282, %208 ], [ %340, %295 ], [ %420, %349 ], [ 0.000000e+00, %424 ], [ %482, %434 ], [ 0.000000e+00, %432 ]
  %506 = phi float [ %222, %208 ], [ %311, %295 ], [ %371, %349 ], [ 0.000000e+00, %424 ], [ %454, %434 ], [ 0.000000e+00, %432 ]
  %507 = phi float [ %277, %208 ], [ %343, %295 ], [ %415, %349 ], [ 0.000000e+00, %424 ], [ %485, %434 ], [ 0.000000e+00, %432 ]
  %508 = phi float [ %280, %208 ], [ %347, %295 ], [ %418, %349 ], [ 0.000000e+00, %424 ], [ %489, %434 ], [ 0.000000e+00, %432 ]
  %509 = phi float [ %283, %208 ], [ %348, %295 ], [ %421, %349 ], [ 1.000000e+00, %424 ], [ %490, %434 ], [ 0.000000e+00, %432 ]
  %510 = phi float [ %223, %208 ], [ %312, %295 ], [ %372, %349 ], [ 0.000000e+00, %424 ], [ %455, %434 ], [ 0.000000e+00, %432 ]
  %511 = phi float [ %211, %208 ], [ 0.000000e+00, %295 ], [ %374, %349 ], [ %426, %424 ], [ %492, %434 ], [ 0.000000e+00, %432 ]
  %512 = phi float [ %212, %208 ], [ 0.000000e+00, %295 ], [ %375, %349 ], [ %427, %424 ], [ %493, %434 ], [ 0.000000e+00, %432 ]
  %513 = phi float [ %213, %208 ], [ 0.000000e+00, %295 ], [ %376, %349 ], [ %428, %424 ], [ %494, %434 ], [ 0.000000e+00, %432 ]
  %514 = phi float [ %285, %208 ], [ %313, %295 ], [ %377, %349 ], [ %431, %424 ], [ %497, %434 ], [ 0.000000e+00, %432 ]
  %515 = shl nuw nsw i32 %188, 6
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = extractvalue %dx.types.ResRet.i32 %516, 1
  %519 = extractvalue %dx.types.ResRet.i32 %516, 3
  %520 = bitcast i32 %517 to float
  %521 = bitcast i32 %518 to float
  %522 = bitcast i32 %519 to float
  %523 = or i32 %515, 16
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = extractvalue %dx.types.ResRet.i32 %524, 1
  %527 = extractvalue %dx.types.ResRet.i32 %524, 3
  %528 = bitcast i32 %525 to float
  %529 = bitcast i32 %526 to float
  %530 = bitcast i32 %527 to float
  %531 = or i32 %515, 32
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = extractvalue %dx.types.ResRet.i32 %532, 1
  %535 = extractvalue %dx.types.ResRet.i32 %532, 3
  %536 = bitcast i32 %533 to float
  %537 = bitcast i32 %534 to float
  %538 = bitcast i32 %535 to float
  %539 = or i32 %515, 48
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = extractvalue %dx.types.ResRet.i32 %540, 1
  %543 = extractvalue %dx.types.ResRet.i32 %540, 3
  %544 = bitcast i32 %541 to float
  %545 = bitcast i32 %542 to float
  %546 = bitcast i32 %543 to float
  %547 = shl nuw nsw i32 %188, 4
  %548 = or i32 %547, 4096
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = extractvalue %dx.types.ResRet.i32 %549, 1
  %552 = extractvalue %dx.types.ResRet.i32 %549, 2
  %553 = extractvalue %dx.types.ResRet.i32 %549, 3
  %554 = icmp eq i32 %553, 1
  %555 = bitcast float %502 to i32
  %556 = bitcast float %506 to i32
  %557 = bitcast float %510 to i32
  %558 = select i1 %554, i32 0, i32 %550
  %559 = select i1 %554, i32 0, i32 %551
  %560 = select i1 %554, i32 0, i32 %552
  %561 = sub i32 %555, %558
  %562 = sub i32 %556, %559
  %563 = sub i32 %557, %560
  %564 = sitofp i32 %561 to float
  %565 = sitofp i32 %562 to float
  %566 = sitofp i32 %563 to float
  %567 = fmul fast float %564, 0x3F30000000000000
  %568 = fmul fast float %565, 0x3F30000000000000
  %569 = fmul fast float %566, 0x3F30000000000000
  %570 = lshr i32 %135, 10
  %571 = and i32 %570, 65472
  %572 = or i32 %571, %26
  %573 = add nuw nsw i32 %153, %572
  %574 = add i32 %154, %573
  %575 = lshr i32 %574, 6
  %576 = and i32 %574, 63
  %577 = shl nuw nsw i32 %575, 2
  br i1 %139, label %578, label %989, !dx.controlflow.hints !49

; <label>:578                                     ; preds = %498
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = extractvalue %dx.types.ResRet.f32 %579, 2
  %583 = or i32 %182, 12
  %584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = or i32 %182, 36
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = or i32 %182, 40
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = shl i32 %593, 6
  %595 = or i32 %594, %576
  %596 = mul i32 %595, 3
  %597 = mul i32 %595, 6
  %598 = and i32 %597, -4
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = extractvalue %dx.types.ResRet.i32 %599, 1
  %602 = and i32 %596, 1
  %603 = icmp eq i32 %602, 0
  %604 = lshr i32 %600, 16
  %605 = and i32 %601, 65535
  %606 = lshr i32 %601, 16
  %607 = and i32 %600, 65535
  %608 = select i1 %603, i32 %607, i32 %604
  %609 = select i1 %603, i32 %604, i32 %605
  %610 = select i1 %603, i32 %605, i32 %606
  %611 = shl nuw nsw i32 %608, 3
  %612 = lshr i32 %608, 7
  %613 = add i32 %612, %588
  %614 = shl i32 %613, 2
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = shl i32 %616, 10
  %618 = and i32 %611, 1016
  %619 = or i32 %617, %618
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = extractvalue %dx.types.ResRet.i32 %620, 1
  %623 = and i32 %621, 2097151
  %624 = uitofp i32 %623 to float
  %625 = lshr i32 %621, 21
  %626 = shl i32 %622, 11
  %627 = and i32 %626, 2095104
  %628 = or i32 %627, %625
  %629 = uitofp i32 %628 to float
  %630 = lshr i32 %622, 10
  %631 = and i32 %630, 2097151
  %632 = uitofp i32 %631 to float
  %633 = fmul float %585, %624
  %634 = fmul float %585, %629
  %635 = fmul float %585, %632
  %636 = fadd float %580, %633
  %637 = fadd float %581, %634
  %638 = fadd float %582, %635
  %639 = shl nuw nsw i32 %608, 2
  %640 = lshr i32 %608, 8
  %641 = add i32 %640, %591
  %642 = shl i32 %641, 2
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = shl i32 %644, 10
  %646 = and i32 %639, 1020
  %647 = or i32 %645, %646
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = lshr i32 %649, 30
  %651 = and i32 %649, 1023
  %652 = uitofp i32 %651 to float
  %653 = lshr i32 %649, 10
  %654 = and i32 %653, 1023
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %649, 20
  %657 = and i32 %656, 511
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %652, 0x3F56A64800000000
  %660 = fadd fast float %659, 0xBFE6A09E60000000
  %661 = fmul fast float %655, 0x3F56A64800000000
  %662 = fadd fast float %661, 0xBFE6A09E60000000
  %663 = fmul fast float %658, 0x3F66ABF460000000
  %664 = fadd fast float %663, 0xBFE6A09E60000000
  %665 = call float @dx.op.dot3.f32(i32 55, float %660, float %662, float %664, float %660, float %662, float %664)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %667 = fsub fast float 1.000000e+00, %666
  %668 = call float @dx.op.unary.f32(i32 24, float %667)  ; Sqrt(value)
  %669 = icmp eq i32 %650, 0
  br i1 %669, label %676, label %670, !dx.controlflow.hints !50

; <label>:670                                     ; preds = %578
  %671 = icmp eq i32 %650, 1
  br i1 %671, label %676, label %672, !dx.controlflow.hints !51

; <label>:672                                     ; preds = %670
  %673 = icmp eq i32 %650, 2
  %674 = select i1 %673, float %668, float %664
  %675 = select i1 %673, float %664, float %668
  br label %676

; <label>:676                                     ; preds = %672, %670, %578
  %677 = phi float [ %660, %670 ], [ %668, %578 ], [ %660, %672 ]
  %678 = phi float [ %668, %670 ], [ %660, %578 ], [ %662, %672 ]
  %679 = phi float [ %662, %670 ], [ %662, %578 ], [ %674, %672 ]
  %680 = phi float [ %664, %670 ], [ %664, %578 ], [ %675, %672 ]
  %681 = fmul fast float %679, %677
  %682 = fmul fast float %680, %678
  %683 = fadd fast float %682, %681
  %684 = fmul fast float %683, 2.000000e+00
  %685 = fmul fast float %678, 2.000000e+00
  %686 = fmul fast float %685, %679
  %687 = fmul fast float %677, 2.000000e+00
  %688 = fmul fast float %687, %680
  %689 = fsub fast float %686, %688
  %690 = fmul fast float %677, %677
  %691 = fmul fast float %690, 2.000000e+00
  %692 = fsub fast float 1.000000e+00, %691
  %693 = fmul fast float %678, %678
  %694 = fmul fast float %693, 2.000000e+00
  %695 = fsub fast float %692, %694
  %696 = fmul fast float %636, %499
  %697 = call float @dx.op.tertiary.f32(i32 46, float %637, float %500, float %696)  ; FMad(a,b,c)
  %698 = call float @dx.op.tertiary.f32(i32 46, float %638, float %501, float %697)  ; FMad(a,b,c)
  %699 = fadd fast float %698, %567
  %700 = fmul fast float %636, %503
  %701 = call float @dx.op.tertiary.f32(i32 46, float %637, float %504, float %700)  ; FMad(a,b,c)
  %702 = call float @dx.op.tertiary.f32(i32 46, float %638, float %505, float %701)  ; FMad(a,b,c)
  %703 = fadd fast float %702, %568
  %704 = fmul fast float %636, %507
  %705 = call float @dx.op.tertiary.f32(i32 46, float %637, float %508, float %704)  ; FMad(a,b,c)
  %706 = call float @dx.op.tertiary.f32(i32 46, float %638, float %509, float %705)  ; FMad(a,b,c)
  %707 = fadd fast float %706, %569
  %708 = fmul fast float %684, %499
  %709 = call float @dx.op.tertiary.f32(i32 46, float %689, float %500, float %708)  ; FMad(a,b,c)
  %710 = call float @dx.op.tertiary.f32(i32 46, float %695, float %501, float %709)  ; FMad(a,b,c)
  %711 = fmul fast float %684, %503
  %712 = call float @dx.op.tertiary.f32(i32 46, float %689, float %504, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %695, float %505, float %712)  ; FMad(a,b,c)
  %714 = fmul fast float %684, %507
  %715 = call float @dx.op.tertiary.f32(i32 46, float %689, float %508, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %695, float %509, float %715)  ; FMad(a,b,c)
  %717 = call float @dx.op.dot3.f32(i32 55, float %710, float %713, float %716, float %710, float %713, float %716)  ; Dot3(ax,ay,az,bx,by,bz)
  %718 = call float @dx.op.unary.f32(i32 25, float %717)  ; Rsqrt(value)
  %719 = fmul fast float %718, %710
  %720 = fmul fast float %718, %713
  %721 = fmul fast float %718, %716
  %722 = fmul fast float %699, %520
  %723 = call float @dx.op.tertiary.f32(i32 46, float %703, float %528, float %722)  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float %707, float %536, float %723)  ; FMad(a,b,c)
  %725 = fadd fast float %724, %544
  %726 = fmul fast float %699, %521
  %727 = call float @dx.op.tertiary.f32(i32 46, float %703, float %529, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %707, float %537, float %727)  ; FMad(a,b,c)
  %729 = fadd fast float %728, %545
  %730 = fmul fast float %699, %522
  %731 = call float @dx.op.tertiary.f32(i32 46, float %703, float %530, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %707, float %538, float %731)  ; FMad(a,b,c)
  %733 = fadd fast float %732, %546
  %734 = fdiv fast float 1.000000e+00, %733
  %735 = fmul fast float %734, %725
  %736 = fmul fast float %734, %729
  %737 = shl nuw nsw i32 %609, 3
  %738 = lshr i32 %609, 7
  %739 = add i32 %738, %588
  %740 = shl i32 %739, 2
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = shl i32 %742, 10
  %744 = and i32 %737, 1016
  %745 = or i32 %743, %744
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = extractvalue %dx.types.ResRet.i32 %746, 1
  %749 = and i32 %747, 2097151
  %750 = uitofp i32 %749 to float
  %751 = lshr i32 %747, 21
  %752 = shl i32 %748, 11
  %753 = and i32 %752, 2095104
  %754 = or i32 %753, %751
  %755 = uitofp i32 %754 to float
  %756 = lshr i32 %748, 10
  %757 = and i32 %756, 2097151
  %758 = uitofp i32 %757 to float
  %759 = fmul float %585, %750
  %760 = fmul float %585, %755
  %761 = fmul float %585, %758
  %762 = fadd float %580, %759
  %763 = fadd float %581, %760
  %764 = fadd float %582, %761
  %765 = shl nuw nsw i32 %609, 2
  %766 = lshr i32 %609, 8
  %767 = add i32 %766, %591
  %768 = shl i32 %767, 2
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = shl i32 %770, 10
  %772 = and i32 %765, 1020
  %773 = or i32 %771, %772
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = lshr i32 %775, 30
  %777 = and i32 %775, 1023
  %778 = uitofp i32 %777 to float
  %779 = lshr i32 %775, 10
  %780 = and i32 %779, 1023
  %781 = uitofp i32 %780 to float
  %782 = lshr i32 %775, 20
  %783 = and i32 %782, 511
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %778, 0x3F56A64800000000
  %786 = fadd fast float %785, 0xBFE6A09E60000000
  %787 = fmul fast float %781, 0x3F56A64800000000
  %788 = fadd fast float %787, 0xBFE6A09E60000000
  %789 = fmul fast float %784, 0x3F66ABF460000000
  %790 = fadd fast float %789, 0xBFE6A09E60000000
  %791 = call float @dx.op.dot3.f32(i32 55, float %786, float %788, float %790, float %786, float %788, float %790)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = fsub fast float 1.000000e+00, %792
  %794 = call float @dx.op.unary.f32(i32 24, float %793)  ; Sqrt(value)
  %795 = icmp eq i32 %776, 0
  br i1 %795, label %802, label %796, !dx.controlflow.hints !50

; <label>:796                                     ; preds = %676
  %797 = icmp eq i32 %776, 1
  br i1 %797, label %802, label %798, !dx.controlflow.hints !51

; <label>:798                                     ; preds = %796
  %799 = icmp eq i32 %776, 2
  %800 = select i1 %799, float %794, float %790
  %801 = select i1 %799, float %790, float %794
  br label %802

; <label>:802                                     ; preds = %798, %796, %676
  %803 = phi float [ %786, %796 ], [ %794, %676 ], [ %786, %798 ]
  %804 = phi float [ %794, %796 ], [ %786, %676 ], [ %788, %798 ]
  %805 = phi float [ %788, %796 ], [ %788, %676 ], [ %800, %798 ]
  %806 = phi float [ %790, %796 ], [ %790, %676 ], [ %801, %798 ]
  %807 = fmul fast float %805, %803
  %808 = fmul fast float %806, %804
  %809 = fadd fast float %808, %807
  %810 = fmul fast float %809, 2.000000e+00
  %811 = fmul fast float %804, 2.000000e+00
  %812 = fmul fast float %811, %805
  %813 = fmul fast float %803, 2.000000e+00
  %814 = fmul fast float %813, %806
  %815 = fsub fast float %812, %814
  %816 = fmul fast float %803, %803
  %817 = fmul fast float %816, 2.000000e+00
  %818 = fsub fast float 1.000000e+00, %817
  %819 = fmul fast float %804, %804
  %820 = fmul fast float %819, 2.000000e+00
  %821 = fsub fast float %818, %820
  %822 = fmul fast float %762, %499
  %823 = call float @dx.op.tertiary.f32(i32 46, float %763, float %500, float %822)  ; FMad(a,b,c)
  %824 = call float @dx.op.tertiary.f32(i32 46, float %764, float %501, float %823)  ; FMad(a,b,c)
  %825 = fadd fast float %824, %567
  %826 = fmul fast float %762, %503
  %827 = call float @dx.op.tertiary.f32(i32 46, float %763, float %504, float %826)  ; FMad(a,b,c)
  %828 = call float @dx.op.tertiary.f32(i32 46, float %764, float %505, float %827)  ; FMad(a,b,c)
  %829 = fadd fast float %828, %568
  %830 = fmul fast float %762, %507
  %831 = call float @dx.op.tertiary.f32(i32 46, float %763, float %508, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float %764, float %509, float %831)  ; FMad(a,b,c)
  %833 = fadd fast float %832, %569
  %834 = fmul fast float %810, %499
  %835 = call float @dx.op.tertiary.f32(i32 46, float %815, float %500, float %834)  ; FMad(a,b,c)
  %836 = call float @dx.op.tertiary.f32(i32 46, float %821, float %501, float %835)  ; FMad(a,b,c)
  %837 = fmul fast float %810, %503
  %838 = call float @dx.op.tertiary.f32(i32 46, float %815, float %504, float %837)  ; FMad(a,b,c)
  %839 = call float @dx.op.tertiary.f32(i32 46, float %821, float %505, float %838)  ; FMad(a,b,c)
  %840 = fmul fast float %810, %507
  %841 = call float @dx.op.tertiary.f32(i32 46, float %815, float %508, float %840)  ; FMad(a,b,c)
  %842 = call float @dx.op.tertiary.f32(i32 46, float %821, float %509, float %841)  ; FMad(a,b,c)
  %843 = call float @dx.op.dot3.f32(i32 55, float %836, float %839, float %842, float %836, float %839, float %842)  ; Dot3(ax,ay,az,bx,by,bz)
  %844 = call float @dx.op.unary.f32(i32 25, float %843)  ; Rsqrt(value)
  %845 = fmul fast float %844, %836
  %846 = fmul fast float %844, %839
  %847 = fmul fast float %844, %842
  %848 = fmul fast float %825, %520
  %849 = call float @dx.op.tertiary.f32(i32 46, float %829, float %528, float %848)  ; FMad(a,b,c)
  %850 = call float @dx.op.tertiary.f32(i32 46, float %833, float %536, float %849)  ; FMad(a,b,c)
  %851 = fadd fast float %850, %544
  %852 = fmul fast float %825, %521
  %853 = call float @dx.op.tertiary.f32(i32 46, float %829, float %529, float %852)  ; FMad(a,b,c)
  %854 = call float @dx.op.tertiary.f32(i32 46, float %833, float %537, float %853)  ; FMad(a,b,c)
  %855 = fadd fast float %854, %545
  %856 = fmul fast float %825, %522
  %857 = call float @dx.op.tertiary.f32(i32 46, float %829, float %530, float %856)  ; FMad(a,b,c)
  %858 = call float @dx.op.tertiary.f32(i32 46, float %833, float %538, float %857)  ; FMad(a,b,c)
  %859 = fadd fast float %858, %546
  %860 = fdiv fast float 1.000000e+00, %859
  %861 = fmul fast float %860, %851
  %862 = fmul fast float %860, %855
  %863 = shl nuw nsw i32 %610, 3
  %864 = lshr i32 %610, 7
  %865 = add i32 %864, %588
  %866 = shl i32 %865, 2
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = shl i32 %868, 10
  %870 = and i32 %863, 1016
  %871 = or i32 %869, %870
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = extractvalue %dx.types.ResRet.i32 %872, 1
  %875 = and i32 %873, 2097151
  %876 = uitofp i32 %875 to float
  %877 = lshr i32 %873, 21
  %878 = shl i32 %874, 11
  %879 = and i32 %878, 2095104
  %880 = or i32 %879, %877
  %881 = uitofp i32 %880 to float
  %882 = lshr i32 %874, 10
  %883 = and i32 %882, 2097151
  %884 = uitofp i32 %883 to float
  %885 = fmul float %585, %876
  %886 = fmul float %585, %881
  %887 = fmul float %585, %884
  %888 = fadd float %580, %885
  %889 = fadd float %581, %886
  %890 = fadd float %582, %887
  %891 = shl nuw nsw i32 %610, 2
  %892 = lshr i32 %610, 8
  %893 = add i32 %892, %591
  %894 = shl i32 %893, 2
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = shl i32 %896, 10
  %898 = and i32 %891, 1020
  %899 = or i32 %897, %898
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = lshr i32 %901, 30
  %903 = and i32 %901, 1023
  %904 = uitofp i32 %903 to float
  %905 = lshr i32 %901, 10
  %906 = and i32 %905, 1023
  %907 = uitofp i32 %906 to float
  %908 = lshr i32 %901, 20
  %909 = and i32 %908, 511
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %904, 0x3F56A64800000000
  %912 = fadd fast float %911, 0xBFE6A09E60000000
  %913 = fmul fast float %907, 0x3F56A64800000000
  %914 = fadd fast float %913, 0xBFE6A09E60000000
  %915 = fmul fast float %910, 0x3F66ABF460000000
  %916 = fadd fast float %915, 0xBFE6A09E60000000
  %917 = call float @dx.op.dot3.f32(i32 55, float %912, float %914, float %916, float %912, float %914, float %916)  ; Dot3(ax,ay,az,bx,by,bz)
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = fsub fast float 1.000000e+00, %918
  %920 = call float @dx.op.unary.f32(i32 24, float %919)  ; Sqrt(value)
  %921 = icmp eq i32 %902, 0
  br i1 %921, label %928, label %922, !dx.controlflow.hints !50

; <label>:922                                     ; preds = %802
  %923 = icmp eq i32 %902, 1
  br i1 %923, label %928, label %924, !dx.controlflow.hints !51

; <label>:924                                     ; preds = %922
  %925 = icmp eq i32 %902, 2
  %926 = select i1 %925, float %920, float %916
  %927 = select i1 %925, float %916, float %920
  br label %928

; <label>:928                                     ; preds = %924, %922, %802
  %929 = phi float [ %912, %922 ], [ %920, %802 ], [ %912, %924 ]
  %930 = phi float [ %920, %922 ], [ %912, %802 ], [ %914, %924 ]
  %931 = phi float [ %914, %922 ], [ %914, %802 ], [ %926, %924 ]
  %932 = phi float [ %916, %922 ], [ %916, %802 ], [ %927, %924 ]
  %933 = fmul fast float %931, %929
  %934 = fmul fast float %932, %930
  %935 = fadd fast float %934, %933
  %936 = fmul fast float %935, 2.000000e+00
  %937 = fmul fast float %930, 2.000000e+00
  %938 = fmul fast float %937, %931
  %939 = fmul fast float %929, 2.000000e+00
  %940 = fmul fast float %939, %932
  %941 = fsub fast float %938, %940
  %942 = fmul fast float %929, %929
  %943 = fmul fast float %942, 2.000000e+00
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %930, %930
  %946 = fmul fast float %945, 2.000000e+00
  %947 = fsub fast float %944, %946
  %948 = fmul fast float %888, %499
  %949 = call float @dx.op.tertiary.f32(i32 46, float %889, float %500, float %948)  ; FMad(a,b,c)
  %950 = call float @dx.op.tertiary.f32(i32 46, float %890, float %501, float %949)  ; FMad(a,b,c)
  %951 = fadd fast float %950, %567
  %952 = fmul fast float %888, %503
  %953 = call float @dx.op.tertiary.f32(i32 46, float %889, float %504, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.tertiary.f32(i32 46, float %890, float %505, float %953)  ; FMad(a,b,c)
  %955 = fadd fast float %954, %568
  %956 = fmul fast float %888, %507
  %957 = call float @dx.op.tertiary.f32(i32 46, float %889, float %508, float %956)  ; FMad(a,b,c)
  %958 = call float @dx.op.tertiary.f32(i32 46, float %890, float %509, float %957)  ; FMad(a,b,c)
  %959 = fadd fast float %958, %569
  %960 = fmul fast float %936, %499
  %961 = call float @dx.op.tertiary.f32(i32 46, float %941, float %500, float %960)  ; FMad(a,b,c)
  %962 = call float @dx.op.tertiary.f32(i32 46, float %947, float %501, float %961)  ; FMad(a,b,c)
  %963 = fmul fast float %936, %503
  %964 = call float @dx.op.tertiary.f32(i32 46, float %941, float %504, float %963)  ; FMad(a,b,c)
  %965 = call float @dx.op.tertiary.f32(i32 46, float %947, float %505, float %964)  ; FMad(a,b,c)
  %966 = fmul fast float %936, %507
  %967 = call float @dx.op.tertiary.f32(i32 46, float %941, float %508, float %966)  ; FMad(a,b,c)
  %968 = call float @dx.op.tertiary.f32(i32 46, float %947, float %509, float %967)  ; FMad(a,b,c)
  %969 = call float @dx.op.dot3.f32(i32 55, float %962, float %965, float %968, float %962, float %965, float %968)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.unary.f32(i32 25, float %969)  ; Rsqrt(value)
  %971 = fmul fast float %970, %962
  %972 = fmul fast float %970, %965
  %973 = fmul fast float %970, %968
  %974 = fmul fast float %951, %520
  %975 = call float @dx.op.tertiary.f32(i32 46, float %955, float %528, float %974)  ; FMad(a,b,c)
  %976 = call float @dx.op.tertiary.f32(i32 46, float %959, float %536, float %975)  ; FMad(a,b,c)
  %977 = fadd fast float %976, %544
  %978 = fmul fast float %951, %521
  %979 = call float @dx.op.tertiary.f32(i32 46, float %955, float %529, float %978)  ; FMad(a,b,c)
  %980 = call float @dx.op.tertiary.f32(i32 46, float %959, float %537, float %979)  ; FMad(a,b,c)
  %981 = fadd fast float %980, %545
  %982 = fmul fast float %951, %522
  %983 = call float @dx.op.tertiary.f32(i32 46, float %955, float %530, float %982)  ; FMad(a,b,c)
  %984 = call float @dx.op.tertiary.f32(i32 46, float %959, float %538, float %983)  ; FMad(a,b,c)
  %985 = fadd fast float %984, %546
  %986 = fdiv fast float 1.000000e+00, %985
  %987 = fmul fast float %986, %977
  %988 = fmul fast float %986, %981
  br label %1800

; <label>:989                                     ; preds = %498
  %990 = and i32 %184, 1
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1375, label %992, !dx.controlflow.hints !52

; <label>:992                                     ; preds = %989
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = shl i32 %994, 6
  %996 = or i32 %995, %576
  %997 = mul i32 %996, 3
  %998 = mul i32 %996, 6
  %999 = and i32 %998, -4
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.i32 %1000, 1
  %1003 = and i32 %997, 1
  %1004 = icmp eq i32 %1003, 0
  %1005 = lshr i32 %1001, 16
  %1006 = and i32 %1002, 65535
  %1007 = lshr i32 %1002, 16
  %1008 = and i32 %1001, 65535
  %1009 = select i1 %1004, i32 %1008, i32 %1005
  %1010 = select i1 %1004, i32 %1005, i32 %1006
  %1011 = select i1 %1004, i32 %1006, i32 %1007
  %1012 = shl nuw nsw i32 %1009, 3
  %1013 = add i32 %1012, %201
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.i32 %1014, 1
  %1017 = and i32 %1015, 2097151
  %1018 = uitofp i32 %1017 to float
  %1019 = lshr i32 %1015, 21
  %1020 = shl i32 %1016, 11
  %1021 = and i32 %1020, 2095104
  %1022 = or i32 %1021, %1019
  %1023 = uitofp i32 %1022 to float
  %1024 = lshr i32 %1016, 10
  %1025 = and i32 %1024, 2097151
  %1026 = uitofp i32 %1025 to float
  %1027 = fdiv float %1018, 2.097151e+06
  %1028 = fdiv float %1023, 2.097151e+06
  %1029 = fdiv float %1026, 2.097151e+06
  %1030 = fmul float %1027, 2.000000e+00
  %1031 = fmul float %1028, 2.000000e+00
  %1032 = fmul float %1029, 2.000000e+00
  %1033 = fadd float %1030, -1.000000e+00
  %1034 = fadd float %1031, -1.000000e+00
  %1035 = fadd float %1032, -1.000000e+00
  %1036 = fmul float %514, %1033
  %1037 = fmul float %514, %1034
  %1038 = fmul float %514, %1035
  %1039 = fadd float %511, %1036
  %1040 = fadd float %512, %1037
  %1041 = fadd float %513, %1038
  %1042 = shl nuw nsw i32 %1009, 2
  %1043 = add i32 %1042, %206
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = lshr i32 %1045, 30
  %1047 = and i32 %1045, 1023
  %1048 = uitofp i32 %1047 to float
  %1049 = lshr i32 %1045, 10
  %1050 = and i32 %1049, 1023
  %1051 = uitofp i32 %1050 to float
  %1052 = lshr i32 %1045, 20
  %1053 = and i32 %1052, 511
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1048, 0x3F56A64800000000
  %1056 = fadd fast float %1055, 0xBFE6A09E60000000
  %1057 = fmul fast float %1051, 0x3F56A64800000000
  %1058 = fadd fast float %1057, 0xBFE6A09E60000000
  %1059 = fmul fast float %1054, 0x3F66ABF460000000
  %1060 = fadd fast float %1059, 0xBFE6A09E60000000
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1056, float %1058, float %1060, float %1056, float %1058, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = call float @dx.op.unary.f32(i32 24, float %1063)  ; Sqrt(value)
  %1065 = icmp eq i32 %1046, 0
  br i1 %1065, label %1072, label %1066, !dx.controlflow.hints !50

; <label>:1066                                    ; preds = %992
  %1067 = icmp eq i32 %1046, 1
  br i1 %1067, label %1072, label %1068, !dx.controlflow.hints !51

; <label>:1068                                    ; preds = %1066
  %1069 = icmp eq i32 %1046, 2
  %1070 = select i1 %1069, float %1064, float %1060
  %1071 = select i1 %1069, float %1060, float %1064
  br label %1072

; <label>:1072                                    ; preds = %1068, %1066, %992
  %1073 = phi float [ %1056, %1066 ], [ %1064, %992 ], [ %1056, %1068 ]
  %1074 = phi float [ %1064, %1066 ], [ %1056, %992 ], [ %1058, %1068 ]
  %1075 = phi float [ %1058, %1066 ], [ %1058, %992 ], [ %1070, %1068 ]
  %1076 = phi float [ %1060, %1066 ], [ %1060, %992 ], [ %1071, %1068 ]
  %1077 = fmul fast float %1075, %1073
  %1078 = fmul fast float %1076, %1074
  %1079 = fadd fast float %1078, %1077
  %1080 = fmul fast float %1079, 2.000000e+00
  %1081 = fmul fast float %1074, 2.000000e+00
  %1082 = fmul fast float %1081, %1075
  %1083 = fmul fast float %1073, 2.000000e+00
  %1084 = fmul fast float %1083, %1076
  %1085 = fsub fast float %1082, %1084
  %1086 = fmul fast float %1073, %1073
  %1087 = fmul fast float %1086, 2.000000e+00
  %1088 = fsub fast float 1.000000e+00, %1087
  %1089 = fmul fast float %1074, %1074
  %1090 = fmul fast float %1089, 2.000000e+00
  %1091 = fsub fast float %1088, %1090
  %1092 = fmul fast float %1039, %499
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %500, float %1092)  ; FMad(a,b,c)
  %1094 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %501, float %1093)  ; FMad(a,b,c)
  %1095 = fadd fast float %1094, %567
  %1096 = fmul fast float %1039, %503
  %1097 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %504, float %1096)  ; FMad(a,b,c)
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %505, float %1097)  ; FMad(a,b,c)
  %1099 = fadd fast float %1098, %568
  %1100 = fmul fast float %1039, %507
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %508, float %1100)  ; FMad(a,b,c)
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %509, float %1101)  ; FMad(a,b,c)
  %1103 = fadd fast float %1102, %569
  %1104 = fmul fast float %1080, %499
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %1085, float %500, float %1104)  ; FMad(a,b,c)
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1091, float %501, float %1105)  ; FMad(a,b,c)
  %1107 = fmul fast float %1080, %503
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1085, float %504, float %1107)  ; FMad(a,b,c)
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1091, float %505, float %1108)  ; FMad(a,b,c)
  %1110 = fmul fast float %1080, %507
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %1085, float %508, float %1110)  ; FMad(a,b,c)
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %1091, float %509, float %1111)  ; FMad(a,b,c)
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1109, float %1112, float %1106, float %1109, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call float @dx.op.unary.f32(i32 25, float %1113)  ; Rsqrt(value)
  %1115 = fmul fast float %1114, %1106
  %1116 = fmul fast float %1114, %1109
  %1117 = fmul fast float %1114, %1112
  %1118 = fmul fast float %1095, %520
  %1119 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %528, float %1118)  ; FMad(a,b,c)
  %1120 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %536, float %1119)  ; FMad(a,b,c)
  %1121 = fadd fast float %1120, %544
  %1122 = fmul fast float %1095, %521
  %1123 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %529, float %1122)  ; FMad(a,b,c)
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %537, float %1123)  ; FMad(a,b,c)
  %1125 = fadd fast float %1124, %545
  %1126 = fmul fast float %1095, %522
  %1127 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %530, float %1126)  ; FMad(a,b,c)
  %1128 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %538, float %1127)  ; FMad(a,b,c)
  %1129 = fadd fast float %1128, %546
  %1130 = fdiv fast float 1.000000e+00, %1129
  %1131 = fmul fast float %1130, %1121
  %1132 = fmul fast float %1130, %1125
  %1133 = shl nuw nsw i32 %1010, 3
  %1134 = add i32 %1133, %201
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.i32 %1135, 1
  %1138 = and i32 %1136, 2097151
  %1139 = uitofp i32 %1138 to float
  %1140 = lshr i32 %1136, 21
  %1141 = shl i32 %1137, 11
  %1142 = and i32 %1141, 2095104
  %1143 = or i32 %1142, %1140
  %1144 = uitofp i32 %1143 to float
  %1145 = lshr i32 %1137, 10
  %1146 = and i32 %1145, 2097151
  %1147 = uitofp i32 %1146 to float
  %1148 = fdiv float %1139, 2.097151e+06
  %1149 = fdiv float %1144, 2.097151e+06
  %1150 = fdiv float %1147, 2.097151e+06
  %1151 = fmul float %1148, 2.000000e+00
  %1152 = fmul float %1149, 2.000000e+00
  %1153 = fmul float %1150, 2.000000e+00
  %1154 = fadd float %1151, -1.000000e+00
  %1155 = fadd float %1152, -1.000000e+00
  %1156 = fadd float %1153, -1.000000e+00
  %1157 = fmul float %514, %1154
  %1158 = fmul float %514, %1155
  %1159 = fmul float %514, %1156
  %1160 = fadd float %511, %1157
  %1161 = fadd float %512, %1158
  %1162 = fadd float %513, %1159
  %1163 = shl nuw nsw i32 %1010, 2
  %1164 = add i32 %1163, %206
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = lshr i32 %1166, 30
  %1168 = and i32 %1166, 1023
  %1169 = uitofp i32 %1168 to float
  %1170 = lshr i32 %1166, 10
  %1171 = and i32 %1170, 1023
  %1172 = uitofp i32 %1171 to float
  %1173 = lshr i32 %1166, 20
  %1174 = and i32 %1173, 511
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1169, 0x3F56A64800000000
  %1177 = fadd fast float %1176, 0xBFE6A09E60000000
  %1178 = fmul fast float %1172, 0x3F56A64800000000
  %1179 = fadd fast float %1178, 0xBFE6A09E60000000
  %1180 = fmul fast float %1175, 0x3F66ABF460000000
  %1181 = fadd fast float %1180, 0xBFE6A09E60000000
  %1182 = call float @dx.op.dot3.f32(i32 55, float %1177, float %1179, float %1181, float %1177, float %1179, float %1181)  ; Dot3(ax,ay,az,bx,by,bz)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = fsub fast float 1.000000e+00, %1183
  %1185 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1186 = icmp eq i32 %1167, 0
  br i1 %1186, label %1193, label %1187, !dx.controlflow.hints !50

; <label>:1187                                    ; preds = %1072
  %1188 = icmp eq i32 %1167, 1
  br i1 %1188, label %1193, label %1189, !dx.controlflow.hints !51

; <label>:1189                                    ; preds = %1187
  %1190 = icmp eq i32 %1167, 2
  %1191 = select i1 %1190, float %1185, float %1181
  %1192 = select i1 %1190, float %1181, float %1185
  br label %1193

; <label>:1193                                    ; preds = %1189, %1187, %1072
  %1194 = phi float [ %1177, %1187 ], [ %1185, %1072 ], [ %1177, %1189 ]
  %1195 = phi float [ %1185, %1187 ], [ %1177, %1072 ], [ %1179, %1189 ]
  %1196 = phi float [ %1179, %1187 ], [ %1179, %1072 ], [ %1191, %1189 ]
  %1197 = phi float [ %1181, %1187 ], [ %1181, %1072 ], [ %1192, %1189 ]
  %1198 = fmul fast float %1196, %1194
  %1199 = fmul fast float %1197, %1195
  %1200 = fadd fast float %1199, %1198
  %1201 = fmul fast float %1200, 2.000000e+00
  %1202 = fmul fast float %1195, 2.000000e+00
  %1203 = fmul fast float %1202, %1196
  %1204 = fmul fast float %1194, 2.000000e+00
  %1205 = fmul fast float %1204, %1197
  %1206 = fsub fast float %1203, %1205
  %1207 = fmul fast float %1194, %1194
  %1208 = fmul fast float %1207, 2.000000e+00
  %1209 = fsub fast float 1.000000e+00, %1208
  %1210 = fmul fast float %1195, %1195
  %1211 = fmul fast float %1210, 2.000000e+00
  %1212 = fsub fast float %1209, %1211
  %1213 = fmul fast float %1160, %499
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1161, float %500, float %1213)  ; FMad(a,b,c)
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1162, float %501, float %1214)  ; FMad(a,b,c)
  %1216 = fadd fast float %1215, %567
  %1217 = fmul fast float %1160, %503
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1161, float %504, float %1217)  ; FMad(a,b,c)
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1162, float %505, float %1218)  ; FMad(a,b,c)
  %1220 = fadd fast float %1219, %568
  %1221 = fmul fast float %1160, %507
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1161, float %508, float %1221)  ; FMad(a,b,c)
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1162, float %509, float %1222)  ; FMad(a,b,c)
  %1224 = fadd fast float %1223, %569
  %1225 = fmul fast float %1201, %499
  %1226 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %500, float %1225)  ; FMad(a,b,c)
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %501, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1201, %503
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %504, float %1228)  ; FMad(a,b,c)
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %505, float %1229)  ; FMad(a,b,c)
  %1231 = fmul fast float %1201, %507
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %508, float %1231)  ; FMad(a,b,c)
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %509, float %1232)  ; FMad(a,b,c)
  %1234 = call float @dx.op.dot3.f32(i32 55, float %1227, float %1230, float %1233, float %1227, float %1230, float %1233)  ; Dot3(ax,ay,az,bx,by,bz)
  %1235 = call float @dx.op.unary.f32(i32 25, float %1234)  ; Rsqrt(value)
  %1236 = fmul fast float %1235, %1227
  %1237 = fmul fast float %1235, %1230
  %1238 = fmul fast float %1235, %1233
  %1239 = fmul fast float %1216, %520
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %528, float %1239)  ; FMad(a,b,c)
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %536, float %1240)  ; FMad(a,b,c)
  %1242 = fadd fast float %1241, %544
  %1243 = fmul fast float %1216, %521
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %529, float %1243)  ; FMad(a,b,c)
  %1245 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %537, float %1244)  ; FMad(a,b,c)
  %1246 = fadd fast float %1245, %545
  %1247 = fmul fast float %1216, %522
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %530, float %1247)  ; FMad(a,b,c)
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %538, float %1248)  ; FMad(a,b,c)
  %1250 = fadd fast float %1249, %546
  %1251 = fdiv fast float 1.000000e+00, %1250
  %1252 = fmul fast float %1251, %1242
  %1253 = fmul fast float %1251, %1246
  %1254 = shl nuw nsw i32 %1011, 3
  %1255 = add i32 %1254, %201
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.i32 %1256, 1
  %1259 = and i32 %1257, 2097151
  %1260 = uitofp i32 %1259 to float
  %1261 = lshr i32 %1257, 21
  %1262 = shl i32 %1258, 11
  %1263 = and i32 %1262, 2095104
  %1264 = or i32 %1263, %1261
  %1265 = uitofp i32 %1264 to float
  %1266 = lshr i32 %1258, 10
  %1267 = and i32 %1266, 2097151
  %1268 = uitofp i32 %1267 to float
  %1269 = fdiv float %1260, 2.097151e+06
  %1270 = fdiv float %1265, 2.097151e+06
  %1271 = fdiv float %1268, 2.097151e+06
  %1272 = fmul float %1269, 2.000000e+00
  %1273 = fmul float %1270, 2.000000e+00
  %1274 = fmul float %1271, 2.000000e+00
  %1275 = fadd float %1272, -1.000000e+00
  %1276 = fadd float %1273, -1.000000e+00
  %1277 = fadd float %1274, -1.000000e+00
  %1278 = fmul float %514, %1275
  %1279 = fmul float %514, %1276
  %1280 = fmul float %514, %1277
  %1281 = fadd float %511, %1278
  %1282 = fadd float %512, %1279
  %1283 = fadd float %513, %1280
  %1284 = shl nuw nsw i32 %1011, 2
  %1285 = add i32 %1284, %206
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 30
  %1289 = and i32 %1287, 1023
  %1290 = uitofp i32 %1289 to float
  %1291 = lshr i32 %1287, 10
  %1292 = and i32 %1291, 1023
  %1293 = uitofp i32 %1292 to float
  %1294 = lshr i32 %1287, 20
  %1295 = and i32 %1294, 511
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1290, 0x3F56A64800000000
  %1298 = fadd fast float %1297, 0xBFE6A09E60000000
  %1299 = fmul fast float %1293, 0x3F56A64800000000
  %1300 = fadd fast float %1299, 0xBFE6A09E60000000
  %1301 = fmul fast float %1296, 0x3F66ABF460000000
  %1302 = fadd fast float %1301, 0xBFE6A09E60000000
  %1303 = call float @dx.op.dot3.f32(i32 55, float %1298, float %1300, float %1302, float %1298, float %1300, float %1302)  ; Dot3(ax,ay,az,bx,by,bz)
  %1304 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1305 = fsub fast float 1.000000e+00, %1304
  %1306 = call float @dx.op.unary.f32(i32 24, float %1305)  ; Sqrt(value)
  %1307 = icmp eq i32 %1288, 0
  br i1 %1307, label %1314, label %1308, !dx.controlflow.hints !50

; <label>:1308                                    ; preds = %1193
  %1309 = icmp eq i32 %1288, 1
  br i1 %1309, label %1314, label %1310, !dx.controlflow.hints !51

; <label>:1310                                    ; preds = %1308
  %1311 = icmp eq i32 %1288, 2
  %1312 = select i1 %1311, float %1306, float %1302
  %1313 = select i1 %1311, float %1302, float %1306
  br label %1314

; <label>:1314                                    ; preds = %1310, %1308, %1193
  %1315 = phi float [ %1298, %1308 ], [ %1306, %1193 ], [ %1298, %1310 ]
  %1316 = phi float [ %1306, %1308 ], [ %1298, %1193 ], [ %1300, %1310 ]
  %1317 = phi float [ %1300, %1308 ], [ %1300, %1193 ], [ %1312, %1310 ]
  %1318 = phi float [ %1302, %1308 ], [ %1302, %1193 ], [ %1313, %1310 ]
  %1319 = fmul fast float %1317, %1315
  %1320 = fmul fast float %1318, %1316
  %1321 = fadd fast float %1320, %1319
  %1322 = fmul fast float %1321, 2.000000e+00
  %1323 = fmul fast float %1316, 2.000000e+00
  %1324 = fmul fast float %1323, %1317
  %1325 = fmul fast float %1315, 2.000000e+00
  %1326 = fmul fast float %1325, %1318
  %1327 = fsub fast float %1324, %1326
  %1328 = fmul fast float %1315, %1315
  %1329 = fmul fast float %1328, 2.000000e+00
  %1330 = fsub fast float 1.000000e+00, %1329
  %1331 = fmul fast float %1316, %1316
  %1332 = fmul fast float %1331, 2.000000e+00
  %1333 = fsub fast float %1330, %1332
  %1334 = fmul fast float %1281, %499
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %500, float %1334)  ; FMad(a,b,c)
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %501, float %1335)  ; FMad(a,b,c)
  %1337 = fadd fast float %1336, %567
  %1338 = fmul fast float %1281, %503
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %504, float %1338)  ; FMad(a,b,c)
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %505, float %1339)  ; FMad(a,b,c)
  %1341 = fadd fast float %1340, %568
  %1342 = fmul fast float %1281, %507
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %508, float %1342)  ; FMad(a,b,c)
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %509, float %1343)  ; FMad(a,b,c)
  %1345 = fadd fast float %1344, %569
  %1346 = fmul fast float %1322, %499
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %500, float %1346)  ; FMad(a,b,c)
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %501, float %1347)  ; FMad(a,b,c)
  %1349 = fmul fast float %1322, %503
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %504, float %1349)  ; FMad(a,b,c)
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %505, float %1350)  ; FMad(a,b,c)
  %1352 = fmul fast float %1322, %507
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %508, float %1352)  ; FMad(a,b,c)
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %509, float %1353)  ; FMad(a,b,c)
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1348, float %1351, float %1354, float %1348, float %1351, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = call float @dx.op.unary.f32(i32 25, float %1355)  ; Rsqrt(value)
  %1357 = fmul fast float %1356, %1348
  %1358 = fmul fast float %1356, %1351
  %1359 = fmul fast float %1356, %1354
  %1360 = fmul fast float %1337, %520
  %1361 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %528, float %1360)  ; FMad(a,b,c)
  %1362 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %536, float %1361)  ; FMad(a,b,c)
  %1363 = fadd fast float %1362, %544
  %1364 = fmul fast float %1337, %521
  %1365 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %529, float %1364)  ; FMad(a,b,c)
  %1366 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %537, float %1365)  ; FMad(a,b,c)
  %1367 = fadd fast float %1366, %545
  %1368 = fmul fast float %1337, %522
  %1369 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %530, float %1368)  ; FMad(a,b,c)
  %1370 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %538, float %1369)  ; FMad(a,b,c)
  %1371 = fadd fast float %1370, %546
  %1372 = fdiv fast float 1.000000e+00, %1371
  %1373 = fmul fast float %1372, %1363
  %1374 = fmul fast float %1372, %1367
  br label %1800

; <label>:1375                                    ; preds = %989
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = shl i32 %1377, 6
  %1379 = or i32 %1378, %576
  %1380 = mul i32 %1379, 3
  %1381 = mul i32 %1379, 6
  %1382 = and i32 %1381, -4
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.i32 %1383, 1
  %1386 = and i32 %1380, 1
  %1387 = icmp eq i32 %1386, 0
  %1388 = lshr i32 %1384, 16
  %1389 = and i32 %1385, 65535
  %1390 = lshr i32 %1385, 16
  %1391 = and i32 %1384, 65535
  %1392 = select i1 %1387, i32 %1391, i32 %1388
  %1393 = select i1 %1387, i32 %1388, i32 %1389
  %1394 = select i1 %1387, i32 %1389, i32 %1390
  %1395 = shl nuw nsw i32 %1392, 3
  %1396 = lshr i32 %1392, 7
  %1397 = add i32 %1396, %202
  %1398 = shl i32 %1397, 2
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = shl i32 %1400, 10
  %1402 = and i32 %1395, 1016
  %1403 = or i32 %1401, %1402
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.i32 %1404, 1
  %1407 = and i32 %1405, 2097151
  %1408 = uitofp i32 %1407 to float
  %1409 = lshr i32 %1405, 21
  %1410 = shl i32 %1406, 11
  %1411 = and i32 %1410, 2095104
  %1412 = or i32 %1411, %1409
  %1413 = uitofp i32 %1412 to float
  %1414 = lshr i32 %1406, 10
  %1415 = and i32 %1414, 2097151
  %1416 = uitofp i32 %1415 to float
  %1417 = fdiv float %1408, 2.097151e+06
  %1418 = fdiv float %1413, 2.097151e+06
  %1419 = fdiv float %1416, 2.097151e+06
  %1420 = fmul float %1417, 2.000000e+00
  %1421 = fmul float %1418, 2.000000e+00
  %1422 = fmul float %1419, 2.000000e+00
  %1423 = fadd float %1420, -1.000000e+00
  %1424 = fadd float %1421, -1.000000e+00
  %1425 = fadd float %1422, -1.000000e+00
  %1426 = fmul float %514, %1423
  %1427 = fmul float %514, %1424
  %1428 = fmul float %514, %1425
  %1429 = fadd float %511, %1426
  %1430 = fadd float %512, %1427
  %1431 = fadd float %513, %1428
  %1432 = shl nuw nsw i32 %1392, 2
  %1433 = lshr i32 %1392, 8
  %1434 = add i32 %1433, %206
  %1435 = shl i32 %1434, 2
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = shl i32 %1437, 10
  %1439 = and i32 %1432, 1020
  %1440 = or i32 %1438, %1439
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = lshr i32 %1442, 30
  %1444 = and i32 %1442, 1023
  %1445 = uitofp i32 %1444 to float
  %1446 = lshr i32 %1442, 10
  %1447 = and i32 %1446, 1023
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1442, 20
  %1450 = and i32 %1449, 511
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1445, 0x3F56A64800000000
  %1453 = fadd fast float %1452, 0xBFE6A09E60000000
  %1454 = fmul fast float %1448, 0x3F56A64800000000
  %1455 = fadd fast float %1454, 0xBFE6A09E60000000
  %1456 = fmul fast float %1451, 0x3F66ABF460000000
  %1457 = fadd fast float %1456, 0xBFE6A09E60000000
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1455, float %1457, float %1453, float %1455, float %1457)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1460 = fsub fast float 1.000000e+00, %1459
  %1461 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1462 = icmp eq i32 %1443, 0
  br i1 %1462, label %1469, label %1463, !dx.controlflow.hints !50

; <label>:1463                                    ; preds = %1375
  %1464 = icmp eq i32 %1443, 1
  br i1 %1464, label %1469, label %1465, !dx.controlflow.hints !51

; <label>:1465                                    ; preds = %1463
  %1466 = icmp eq i32 %1443, 2
  %1467 = select i1 %1466, float %1461, float %1457
  %1468 = select i1 %1466, float %1457, float %1461
  br label %1469

; <label>:1469                                    ; preds = %1465, %1463, %1375
  %1470 = phi float [ %1453, %1463 ], [ %1461, %1375 ], [ %1453, %1465 ]
  %1471 = phi float [ %1461, %1463 ], [ %1453, %1375 ], [ %1455, %1465 ]
  %1472 = phi float [ %1455, %1463 ], [ %1455, %1375 ], [ %1467, %1465 ]
  %1473 = phi float [ %1457, %1463 ], [ %1457, %1375 ], [ %1468, %1465 ]
  %1474 = fmul fast float %1472, %1470
  %1475 = fmul fast float %1473, %1471
  %1476 = fadd fast float %1475, %1474
  %1477 = fmul fast float %1476, 2.000000e+00
  %1478 = fmul fast float %1471, 2.000000e+00
  %1479 = fmul fast float %1478, %1472
  %1480 = fmul fast float %1470, 2.000000e+00
  %1481 = fmul fast float %1480, %1473
  %1482 = fsub fast float %1479, %1481
  %1483 = fmul fast float %1470, %1470
  %1484 = fmul fast float %1483, 2.000000e+00
  %1485 = fsub fast float 1.000000e+00, %1484
  %1486 = fmul fast float %1471, %1471
  %1487 = fmul fast float %1486, 2.000000e+00
  %1488 = fsub fast float %1485, %1487
  %1489 = fmul fast float %1429, %499
  %1490 = call float @dx.op.tertiary.f32(i32 46, float %1430, float %500, float %1489)  ; FMad(a,b,c)
  %1491 = call float @dx.op.tertiary.f32(i32 46, float %1431, float %501, float %1490)  ; FMad(a,b,c)
  %1492 = fadd fast float %1491, %567
  %1493 = fmul fast float %1429, %503
  %1494 = call float @dx.op.tertiary.f32(i32 46, float %1430, float %504, float %1493)  ; FMad(a,b,c)
  %1495 = call float @dx.op.tertiary.f32(i32 46, float %1431, float %505, float %1494)  ; FMad(a,b,c)
  %1496 = fadd fast float %1495, %568
  %1497 = fmul fast float %1429, %507
  %1498 = call float @dx.op.tertiary.f32(i32 46, float %1430, float %508, float %1497)  ; FMad(a,b,c)
  %1499 = call float @dx.op.tertiary.f32(i32 46, float %1431, float %509, float %1498)  ; FMad(a,b,c)
  %1500 = fadd fast float %1499, %569
  %1501 = fmul fast float %1477, %499
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1482, float %500, float %1501)  ; FMad(a,b,c)
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1488, float %501, float %1502)  ; FMad(a,b,c)
  %1504 = fmul fast float %1477, %503
  %1505 = call float @dx.op.tertiary.f32(i32 46, float %1482, float %504, float %1504)  ; FMad(a,b,c)
  %1506 = call float @dx.op.tertiary.f32(i32 46, float %1488, float %505, float %1505)  ; FMad(a,b,c)
  %1507 = fmul fast float %1477, %507
  %1508 = call float @dx.op.tertiary.f32(i32 46, float %1482, float %508, float %1507)  ; FMad(a,b,c)
  %1509 = call float @dx.op.tertiary.f32(i32 46, float %1488, float %509, float %1508)  ; FMad(a,b,c)
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1503, float %1506, float %1509, float %1503, float %1506, float %1509)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = call float @dx.op.unary.f32(i32 25, float %1510)  ; Rsqrt(value)
  %1512 = fmul fast float %1511, %1503
  %1513 = fmul fast float %1511, %1506
  %1514 = fmul fast float %1511, %1509
  %1515 = fmul fast float %1492, %520
  %1516 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %528, float %1515)  ; FMad(a,b,c)
  %1517 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %536, float %1516)  ; FMad(a,b,c)
  %1518 = fadd fast float %1517, %544
  %1519 = fmul fast float %1492, %521
  %1520 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %529, float %1519)  ; FMad(a,b,c)
  %1521 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %537, float %1520)  ; FMad(a,b,c)
  %1522 = fadd fast float %1521, %545
  %1523 = fmul fast float %1492, %522
  %1524 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %530, float %1523)  ; FMad(a,b,c)
  %1525 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %538, float %1524)  ; FMad(a,b,c)
  %1526 = fadd fast float %1525, %546
  %1527 = fdiv fast float 1.000000e+00, %1526
  %1528 = fmul fast float %1527, %1518
  %1529 = fmul fast float %1527, %1522
  %1530 = shl nuw nsw i32 %1393, 3
  %1531 = lshr i32 %1393, 7
  %1532 = add i32 %1531, %202
  %1533 = shl i32 %1532, 2
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = shl i32 %1535, 10
  %1537 = and i32 %1530, 1016
  %1538 = or i32 %1536, %1537
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = extractvalue %dx.types.ResRet.i32 %1539, 1
  %1542 = and i32 %1540, 2097151
  %1543 = uitofp i32 %1542 to float
  %1544 = lshr i32 %1540, 21
  %1545 = shl i32 %1541, 11
  %1546 = and i32 %1545, 2095104
  %1547 = or i32 %1546, %1544
  %1548 = uitofp i32 %1547 to float
  %1549 = lshr i32 %1541, 10
  %1550 = and i32 %1549, 2097151
  %1551 = uitofp i32 %1550 to float
  %1552 = fdiv float %1543, 2.097151e+06
  %1553 = fdiv float %1548, 2.097151e+06
  %1554 = fdiv float %1551, 2.097151e+06
  %1555 = fmul float %1552, 2.000000e+00
  %1556 = fmul float %1553, 2.000000e+00
  %1557 = fmul float %1554, 2.000000e+00
  %1558 = fadd float %1555, -1.000000e+00
  %1559 = fadd float %1556, -1.000000e+00
  %1560 = fadd float %1557, -1.000000e+00
  %1561 = fmul float %514, %1558
  %1562 = fmul float %514, %1559
  %1563 = fmul float %514, %1560
  %1564 = fadd float %511, %1561
  %1565 = fadd float %512, %1562
  %1566 = fadd float %513, %1563
  %1567 = shl nuw nsw i32 %1393, 2
  %1568 = lshr i32 %1393, 8
  %1569 = add i32 %1568, %206
  %1570 = shl i32 %1569, 2
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = shl i32 %1572, 10
  %1574 = and i32 %1567, 1020
  %1575 = or i32 %1573, %1574
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = lshr i32 %1577, 30
  %1579 = and i32 %1577, 1023
  %1580 = uitofp i32 %1579 to float
  %1581 = lshr i32 %1577, 10
  %1582 = and i32 %1581, 1023
  %1583 = uitofp i32 %1582 to float
  %1584 = lshr i32 %1577, 20
  %1585 = and i32 %1584, 511
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1580, 0x3F56A64800000000
  %1588 = fadd fast float %1587, 0xBFE6A09E60000000
  %1589 = fmul fast float %1583, 0x3F56A64800000000
  %1590 = fadd fast float %1589, 0xBFE6A09E60000000
  %1591 = fmul fast float %1586, 0x3F66ABF460000000
  %1592 = fadd fast float %1591, 0xBFE6A09E60000000
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1590, float %1592, float %1588, float %1590, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1595 = fsub fast float 1.000000e+00, %1594
  %1596 = call float @dx.op.unary.f32(i32 24, float %1595)  ; Sqrt(value)
  %1597 = icmp eq i32 %1578, 0
  br i1 %1597, label %1604, label %1598, !dx.controlflow.hints !50

; <label>:1598                                    ; preds = %1469
  %1599 = icmp eq i32 %1578, 1
  br i1 %1599, label %1604, label %1600, !dx.controlflow.hints !51

; <label>:1600                                    ; preds = %1598
  %1601 = icmp eq i32 %1578, 2
  %1602 = select i1 %1601, float %1596, float %1592
  %1603 = select i1 %1601, float %1592, float %1596
  br label %1604

; <label>:1604                                    ; preds = %1600, %1598, %1469
  %1605 = phi float [ %1588, %1598 ], [ %1596, %1469 ], [ %1588, %1600 ]
  %1606 = phi float [ %1596, %1598 ], [ %1588, %1469 ], [ %1590, %1600 ]
  %1607 = phi float [ %1590, %1598 ], [ %1590, %1469 ], [ %1602, %1600 ]
  %1608 = phi float [ %1592, %1598 ], [ %1592, %1469 ], [ %1603, %1600 ]
  %1609 = fmul fast float %1607, %1605
  %1610 = fmul fast float %1608, %1606
  %1611 = fadd fast float %1610, %1609
  %1612 = fmul fast float %1611, 2.000000e+00
  %1613 = fmul fast float %1606, 2.000000e+00
  %1614 = fmul fast float %1613, %1607
  %1615 = fmul fast float %1605, 2.000000e+00
  %1616 = fmul fast float %1615, %1608
  %1617 = fsub fast float %1614, %1616
  %1618 = fmul fast float %1605, %1605
  %1619 = fmul fast float %1618, 2.000000e+00
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = fmul fast float %1606, %1606
  %1622 = fmul fast float %1621, 2.000000e+00
  %1623 = fsub fast float %1620, %1622
  %1624 = fmul fast float %1564, %499
  %1625 = call float @dx.op.tertiary.f32(i32 46, float %1565, float %500, float %1624)  ; FMad(a,b,c)
  %1626 = call float @dx.op.tertiary.f32(i32 46, float %1566, float %501, float %1625)  ; FMad(a,b,c)
  %1627 = fadd fast float %1626, %567
  %1628 = fmul fast float %1564, %503
  %1629 = call float @dx.op.tertiary.f32(i32 46, float %1565, float %504, float %1628)  ; FMad(a,b,c)
  %1630 = call float @dx.op.tertiary.f32(i32 46, float %1566, float %505, float %1629)  ; FMad(a,b,c)
  %1631 = fadd fast float %1630, %568
  %1632 = fmul fast float %1564, %507
  %1633 = call float @dx.op.tertiary.f32(i32 46, float %1565, float %508, float %1632)  ; FMad(a,b,c)
  %1634 = call float @dx.op.tertiary.f32(i32 46, float %1566, float %509, float %1633)  ; FMad(a,b,c)
  %1635 = fadd fast float %1634, %569
  %1636 = fmul fast float %1612, %499
  %1637 = call float @dx.op.tertiary.f32(i32 46, float %1617, float %500, float %1636)  ; FMad(a,b,c)
  %1638 = call float @dx.op.tertiary.f32(i32 46, float %1623, float %501, float %1637)  ; FMad(a,b,c)
  %1639 = fmul fast float %1612, %503
  %1640 = call float @dx.op.tertiary.f32(i32 46, float %1617, float %504, float %1639)  ; FMad(a,b,c)
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %1623, float %505, float %1640)  ; FMad(a,b,c)
  %1642 = fmul fast float %1612, %507
  %1643 = call float @dx.op.tertiary.f32(i32 46, float %1617, float %508, float %1642)  ; FMad(a,b,c)
  %1644 = call float @dx.op.tertiary.f32(i32 46, float %1623, float %509, float %1643)  ; FMad(a,b,c)
  %1645 = call float @dx.op.dot3.f32(i32 55, float %1638, float %1641, float %1644, float %1638, float %1641, float %1644)  ; Dot3(ax,ay,az,bx,by,bz)
  %1646 = call float @dx.op.unary.f32(i32 25, float %1645)  ; Rsqrt(value)
  %1647 = fmul fast float %1646, %1638
  %1648 = fmul fast float %1646, %1641
  %1649 = fmul fast float %1646, %1644
  %1650 = fmul fast float %1627, %520
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1631, float %528, float %1650)  ; FMad(a,b,c)
  %1652 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %536, float %1651)  ; FMad(a,b,c)
  %1653 = fadd fast float %1652, %544
  %1654 = fmul fast float %1627, %521
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1631, float %529, float %1654)  ; FMad(a,b,c)
  %1656 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %537, float %1655)  ; FMad(a,b,c)
  %1657 = fadd fast float %1656, %545
  %1658 = fmul fast float %1627, %522
  %1659 = call float @dx.op.tertiary.f32(i32 46, float %1631, float %530, float %1658)  ; FMad(a,b,c)
  %1660 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %538, float %1659)  ; FMad(a,b,c)
  %1661 = fadd fast float %1660, %546
  %1662 = fdiv fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1653
  %1664 = fmul fast float %1662, %1657
  %1665 = shl nuw nsw i32 %1394, 3
  %1666 = lshr i32 %1394, 7
  %1667 = add i32 %1666, %202
  %1668 = shl i32 %1667, 2
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = shl i32 %1670, 10
  %1672 = and i32 %1665, 1016
  %1673 = or i32 %1671, %1672
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.i32 %1674, 1
  %1677 = and i32 %1675, 2097151
  %1678 = uitofp i32 %1677 to float
  %1679 = lshr i32 %1675, 21
  %1680 = shl i32 %1676, 11
  %1681 = and i32 %1680, 2095104
  %1682 = or i32 %1681, %1679
  %1683 = uitofp i32 %1682 to float
  %1684 = lshr i32 %1676, 10
  %1685 = and i32 %1684, 2097151
  %1686 = uitofp i32 %1685 to float
  %1687 = fdiv float %1678, 2.097151e+06
  %1688 = fdiv float %1683, 2.097151e+06
  %1689 = fdiv float %1686, 2.097151e+06
  %1690 = fmul float %1687, 2.000000e+00
  %1691 = fmul float %1688, 2.000000e+00
  %1692 = fmul float %1689, 2.000000e+00
  %1693 = fadd float %1690, -1.000000e+00
  %1694 = fadd float %1691, -1.000000e+00
  %1695 = fadd float %1692, -1.000000e+00
  %1696 = fmul float %514, %1693
  %1697 = fmul float %514, %1694
  %1698 = fmul float %514, %1695
  %1699 = fadd float %511, %1696
  %1700 = fadd float %512, %1697
  %1701 = fadd float %513, %1698
  %1702 = shl nuw nsw i32 %1394, 2
  %1703 = lshr i32 %1394, 8
  %1704 = add i32 %1703, %206
  %1705 = shl i32 %1704, 2
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = shl i32 %1707, 10
  %1709 = and i32 %1702, 1020
  %1710 = or i32 %1708, %1709
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = lshr i32 %1712, 30
  %1714 = and i32 %1712, 1023
  %1715 = uitofp i32 %1714 to float
  %1716 = lshr i32 %1712, 10
  %1717 = and i32 %1716, 1023
  %1718 = uitofp i32 %1717 to float
  %1719 = lshr i32 %1712, 20
  %1720 = and i32 %1719, 511
  %1721 = uitofp i32 %1720 to float
  %1722 = fmul fast float %1715, 0x3F56A64800000000
  %1723 = fadd fast float %1722, 0xBFE6A09E60000000
  %1724 = fmul fast float %1718, 0x3F56A64800000000
  %1725 = fadd fast float %1724, 0xBFE6A09E60000000
  %1726 = fmul fast float %1721, 0x3F66ABF460000000
  %1727 = fadd fast float %1726, 0xBFE6A09E60000000
  %1728 = call float @dx.op.dot3.f32(i32 55, float %1723, float %1725, float %1727, float %1723, float %1725, float %1727)  ; Dot3(ax,ay,az,bx,by,bz)
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = call float @dx.op.unary.f32(i32 24, float %1730)  ; Sqrt(value)
  %1732 = icmp eq i32 %1713, 0
  br i1 %1732, label %1739, label %1733, !dx.controlflow.hints !50

; <label>:1733                                    ; preds = %1604
  %1734 = icmp eq i32 %1713, 1
  br i1 %1734, label %1739, label %1735, !dx.controlflow.hints !51

; <label>:1735                                    ; preds = %1733
  %1736 = icmp eq i32 %1713, 2
  %1737 = select i1 %1736, float %1731, float %1727
  %1738 = select i1 %1736, float %1727, float %1731
  br label %1739

; <label>:1739                                    ; preds = %1735, %1733, %1604
  %1740 = phi float [ %1723, %1733 ], [ %1731, %1604 ], [ %1723, %1735 ]
  %1741 = phi float [ %1731, %1733 ], [ %1723, %1604 ], [ %1725, %1735 ]
  %1742 = phi float [ %1725, %1733 ], [ %1725, %1604 ], [ %1737, %1735 ]
  %1743 = phi float [ %1727, %1733 ], [ %1727, %1604 ], [ %1738, %1735 ]
  %1744 = fmul fast float %1742, %1740
  %1745 = fmul fast float %1743, %1741
  %1746 = fadd fast float %1745, %1744
  %1747 = fmul fast float %1746, 2.000000e+00
  %1748 = fmul fast float %1741, 2.000000e+00
  %1749 = fmul fast float %1748, %1742
  %1750 = fmul fast float %1740, 2.000000e+00
  %1751 = fmul fast float %1750, %1743
  %1752 = fsub fast float %1749, %1751
  %1753 = fmul fast float %1740, %1740
  %1754 = fmul fast float %1753, 2.000000e+00
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = fmul fast float %1741, %1741
  %1757 = fmul fast float %1756, 2.000000e+00
  %1758 = fsub fast float %1755, %1757
  %1759 = fmul fast float %1699, %499
  %1760 = call float @dx.op.tertiary.f32(i32 46, float %1700, float %500, float %1759)  ; FMad(a,b,c)
  %1761 = call float @dx.op.tertiary.f32(i32 46, float %1701, float %501, float %1760)  ; FMad(a,b,c)
  %1762 = fadd fast float %1761, %567
  %1763 = fmul fast float %1699, %503
  %1764 = call float @dx.op.tertiary.f32(i32 46, float %1700, float %504, float %1763)  ; FMad(a,b,c)
  %1765 = call float @dx.op.tertiary.f32(i32 46, float %1701, float %505, float %1764)  ; FMad(a,b,c)
  %1766 = fadd fast float %1765, %568
  %1767 = fmul fast float %1699, %507
  %1768 = call float @dx.op.tertiary.f32(i32 46, float %1700, float %508, float %1767)  ; FMad(a,b,c)
  %1769 = call float @dx.op.tertiary.f32(i32 46, float %1701, float %509, float %1768)  ; FMad(a,b,c)
  %1770 = fadd fast float %1769, %569
  %1771 = fmul fast float %1747, %499
  %1772 = call float @dx.op.tertiary.f32(i32 46, float %1752, float %500, float %1771)  ; FMad(a,b,c)
  %1773 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %501, float %1772)  ; FMad(a,b,c)
  %1774 = fmul fast float %1747, %503
  %1775 = call float @dx.op.tertiary.f32(i32 46, float %1752, float %504, float %1774)  ; FMad(a,b,c)
  %1776 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %505, float %1775)  ; FMad(a,b,c)
  %1777 = fmul fast float %1747, %507
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %1752, float %508, float %1777)  ; FMad(a,b,c)
  %1779 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %509, float %1778)  ; FMad(a,b,c)
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1776, float %1779, float %1773, float %1776, float %1779)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = call float @dx.op.unary.f32(i32 25, float %1780)  ; Rsqrt(value)
  %1782 = fmul fast float %1781, %1773
  %1783 = fmul fast float %1781, %1776
  %1784 = fmul fast float %1781, %1779
  %1785 = fmul fast float %1762, %520
  %1786 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %528, float %1785)  ; FMad(a,b,c)
  %1787 = call float @dx.op.tertiary.f32(i32 46, float %1770, float %536, float %1786)  ; FMad(a,b,c)
  %1788 = fadd fast float %1787, %544
  %1789 = fmul fast float %1762, %521
  %1790 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %529, float %1789)  ; FMad(a,b,c)
  %1791 = call float @dx.op.tertiary.f32(i32 46, float %1770, float %537, float %1790)  ; FMad(a,b,c)
  %1792 = fadd fast float %1791, %545
  %1793 = fmul fast float %1762, %522
  %1794 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %530, float %1793)  ; FMad(a,b,c)
  %1795 = call float @dx.op.tertiary.f32(i32 46, float %1770, float %538, float %1794)  ; FMad(a,b,c)
  %1796 = fadd fast float %1795, %546
  %1797 = fdiv fast float 1.000000e+00, %1796
  %1798 = fmul fast float %1797, %1788
  %1799 = fmul fast float %1797, %1792
  br label %1800

; <label>:1800                                    ; preds = %1739, %1314, %928
  %1801 = phi float [ %1798, %1739 ], [ %1373, %1314 ], [ %987, %928 ]
  %1802 = phi float [ %1663, %1739 ], [ %1252, %1314 ], [ %861, %928 ]
  %1803 = phi float [ %1528, %1739 ], [ %1131, %1314 ], [ %735, %928 ]
  %1804 = phi float [ %1799, %1739 ], [ %1374, %1314 ], [ %988, %928 ]
  %1805 = phi float [ %1664, %1739 ], [ %1253, %1314 ], [ %862, %928 ]
  %1806 = phi float [ %1529, %1739 ], [ %1132, %1314 ], [ %736, %928 ]
  %1807 = phi float [ %1784, %1739 ], [ %1359, %1314 ], [ %973, %928 ]
  %1808 = phi float [ %1783, %1739 ], [ %1358, %1314 ], [ %972, %928 ]
  %1809 = phi float [ %1782, %1739 ], [ %1357, %1314 ], [ %971, %928 ]
  %1810 = phi float [ %1649, %1739 ], [ %1238, %1314 ], [ %847, %928 ]
  %1811 = phi float [ %1648, %1739 ], [ %1237, %1314 ], [ %846, %928 ]
  %1812 = phi float [ %1647, %1739 ], [ %1236, %1314 ], [ %845, %928 ]
  %1813 = phi float [ %1514, %1739 ], [ %1117, %1314 ], [ %721, %928 ]
  %1814 = phi float [ %1513, %1739 ], [ %1116, %1314 ], [ %720, %928 ]
  %1815 = phi float [ %1512, %1739 ], [ %1115, %1314 ], [ %719, %928 ]
  %1816 = phi float [ %1797, %1739 ], [ %1372, %1314 ], [ %986, %928 ]
  %1817 = phi float [ %1662, %1739 ], [ %1251, %1314 ], [ %860, %928 ]
  %1818 = phi float [ %1527, %1739 ], [ %1130, %1314 ], [ %734, %928 ]
  %1819 = fsub fast float %1801, %1802
  %1820 = fsub fast float %1804, %1805
  %1821 = fsub fast float %1803, %1802
  %1822 = fsub fast float %1806, %1805
  %1823 = fmul fast float %1822, %1819
  %1824 = fmul fast float %1820, %1821
  %1825 = fsub fast float %1823, %1824
  %1826 = fdiv fast float 1.000000e+00, %1825
  %1827 = fsub fast float %1805, %1804
  %1828 = fsub fast float %1804, %1806
  %1829 = fmul fast float %1826, %1827
  %1830 = fmul fast float %1826, %1828
  %1831 = fmul fast float %1826, %1822
  %1832 = fsub fast float %1803, %1801
  %1833 = fsub fast float %1802, %1803
  %1834 = fmul fast float %1826, %1819
  %1835 = fmul fast float %1826, %1832
  %1836 = fmul fast float %1826, %1833
  %1837 = uitofp i32 %17 to float
  %1838 = uitofp i32 %18 to float
  %1839 = fadd fast float %1837, 5.000000e-01
  %1840 = fadd fast float %1838, 5.000000e-01
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1844 = fmul fast float %1839, 2.000000e+00
  %1845 = fmul fast float %1844, %1842
  %1846 = fmul fast float %1840, 2.000000e+00
  %1847 = fmul fast float %1846, %1843
  %1848 = fsub fast float 1.000000e+00, %1847
  %1849 = fsub fast float -1.000000e+00, %1803
  %1850 = fadd fast float %1849, %1845
  %1851 = fsub fast float %1848, %1806
  %1852 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1817, float %1816, float %1829, float %1830, float %1831)  ; Dot3(ax,ay,az,bx,by,bz)
  %1853 = fmul fast float %1850, %1852
  %1854 = fadd fast float %1853, %1818
  %1855 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1817, float %1816, float %1834, float %1835, float %1836)  ; Dot3(ax,ay,az,bx,by,bz)
  %1856 = fmul fast float %1851, %1855
  %1857 = fadd fast float %1854, %1856
  %1858 = fdiv fast float 1.000000e+00, %1857
  %1859 = fmul fast float %1850, %1830
  %1860 = fmul fast float %1851, %1835
  %1861 = fadd fast float %1860, %1859
  %1862 = fmul fast float %1858, %1817
  %1863 = fmul fast float %1862, %1861
  %1864 = fmul fast float %1850, %1831
  %1865 = fmul fast float %1851, %1836
  %1866 = fadd fast float %1865, %1864
  %1867 = fmul fast float %1858, %1816
  %1868 = fmul fast float %1867, %1866
  %1869 = fsub fast float 1.000000e+00, %1863
  %1870 = fsub fast float %1869, %1868
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1870, float %1863, float %1868, float %1815, float %1812, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.dot3.f32(i32 55, float %1870, float %1863, float %1868, float %1814, float %1811, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1870, float %1863, float %1868, float %1813, float %1810, float %1807)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = call float @dx.op.dot3.f32(i32 55, float %1871, float %1872, float %1873, float %1871, float %1872, float %1873)  ; Dot3(ax,ay,az,bx,by,bz)
  %1875 = call float @dx.op.unary.f32(i32 25, float %1874)  ; Rsqrt(value)
  %1876 = fmul fast float %1875, %1871
  %1877 = fmul fast float %1875, %1872
  %1878 = fmul fast float %1875, %1873
  %1879 = call float @dx.op.unary.f32(i32 6, float %1876)  ; FAbs(value)
  %1880 = call float @dx.op.unary.f32(i32 6, float %1877)  ; FAbs(value)
  %1881 = fadd fast float %1880, %1879
  %1882 = call float @dx.op.unary.f32(i32 6, float %1878)  ; FAbs(value)
  %1883 = fadd fast float %1881, %1882
  %1884 = fdiv fast float %1876, %1883
  %1885 = fdiv fast float %1877, %1883
  %1886 = fdiv fast float %1878, %1883
  %1887 = fcmp fast oge float %1886, 0.000000e+00
  %1888 = call float @dx.op.unary.f32(i32 6, float %1885)  ; FAbs(value)
  %1889 = call float @dx.op.unary.f32(i32 6, float %1884)  ; FAbs(value)
  %1890 = fsub fast float 1.000000e+00, %1888
  %1891 = fsub fast float 1.000000e+00, %1889
  %1892 = fcmp fast oge float %1884, 0.000000e+00
  %1893 = select i1 %1892, float 1.000000e+00, float -1.000000e+00
  %1894 = fcmp fast oge float %1885, 0.000000e+00
  %1895 = select i1 %1894, float 1.000000e+00, float -1.000000e+00
  %1896 = fmul fast float %1890, %1893
  %1897 = fmul fast float %1891, %1895
  %1898 = select i1 %1887, float %1884, float %1896
  %1899 = select i1 %1887, float %1885, float %1897
  %1900 = fmul fast float %1898, 1.275000e+02
  %1901 = fmul fast float %1899, 1.275000e+02
  %1902 = fadd fast float %1900, 1.275000e+02
  %1903 = fadd fast float %1901, 1.275000e+02
  %1904 = call float @dx.op.unary.f32(i32 26, float %1902)  ; Round_ne(value)
  %1905 = call float @dx.op.unary.f32(i32 26, float %1903)  ; Round_ne(value)
  %1906 = fptoui float %1904 to i32
  %1907 = fptoui float %1905 to i32
  %1908 = shl i32 %1907, 8
  %1909 = or i32 %1908, %1906
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, i32 %1909, i32 %1909, i32 %1909, i32 %1909, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !24, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!16 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!17 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!18 = !{i32 12, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !19}
!19 = !{i32 0, i32 5}
!20 = !{!21, !23}
!21 = !{i32 0, %"class.RWStructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !22}
!22 = !{i32 1, i32 8}
!23 = !{i32 1, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !19}
!24 = !{!25}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{void ()* @vis_buffer_prepass_tangent_frame, !"vis_buffer_prepass_tangent_frame", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}

