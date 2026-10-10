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
; shader hash: 3c7da7c3b8c89874173111fe74b593ce
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
; cbuffer 
; {
;
;   [48 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     u32         buf      T0             t0     1
;                                   texture    byte         r/o      T1             t2     1
;                                   texture    byte         r/o      T2             t1     1
;                                   texture     u32         buf      T3             t3     1
;                                   texture  struct         r/o      T4             t4     1
;                                   texture     u32         buf      T5             t5     1
;                                   texture    byte         r/o      T6             t6     1
;                                   texture     f32     2darray      T7            t23     1
;                                   texture     f32          3d      T8            t22     1
;                                   texture     f32          2d      T9            t20     1
;                                   texture     u32          2d     T10            t24     1
;                                   texture     f32          3d     T11            t25     1
;                                       UAV     f32          3d      U0             u0     1
;                                       UAVunorm_f32          3d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Buffer<unsigned int>" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }
%struct.SamplerState = type { i32 }

@"\01?g_batchVolumesProbeCounts@@3PAHA" = external addrspace(3) global [64 x i32], align 4

define void @cs_combine_sampled_data() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %20 = alloca [9 x float], align 4
  %21 = alloca [9 x float], align 4
  %22 = alloca [9 x float], align 4
  %23 = icmp ugt i32 %18, 16383
  br i1 %23, label %1434, label %24, !dx.controlflow.hints !33

; <label>:24                                      ; preds = %0
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = lshr i32 %28, 12
  %30 = and i32 %28, 4095
  %31 = add i32 %26, -1
  %32 = add i32 %29, %19
  %33 = call i32 @dx.op.binary.i32(i32 40, i32 %32, i32 %31)  ; UMin(a,b)
  %34 = shl i32 %33, 5
  %35 = or i32 %34, 12
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = and i32 %37, 255
  %39 = lshr i32 %37, 8
  %40 = and i32 %39, 255
  %41 = lshr i32 %37, 16
  %42 = and i32 %41, 255
  %43 = mul nuw nsw i32 %40, %38
  %44 = mul nuw nsw i32 %43, %42
  %45 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %19
  store i32 %44, i32 addrspace(3)* %45, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %46 = add i32 %30, %19
  %47 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !34, !noalias !38
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %62, label %49

; <label>:49                                      ; preds = %24
  br label %50

; <label>:50                                      ; preds = %50, %49
  %51 = phi i32 [ %58, %50 ], [ %47, %49 ]
  %52 = phi i32 [ %54, %50 ], [ %46, %49 ]
  %53 = phi i32 [ %55, %50 ], [ 0, %49 ]
  %54 = sub nsw i32 %52, %51
  %55 = add nuw nsw i32 %53, 1
  %56 = icmp slt i32 %55, 64
  %57 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %55
  %58 = load i32, i32 addrspace(3)* %57, align 4, !tbaa !34, !noalias !38
  %59 = icmp sge i32 %54, %58
  %60 = and i1 %56, %59
  br i1 %60, label %50, label %61

; <label>:61                                      ; preds = %50
  br label %62

; <label>:62                                      ; preds = %61, %24
  %63 = phi i32 [ %46, %24 ], [ %54, %61 ]
  %64 = phi i32 [ 0, %24 ], [ %55, %61 ]
  %65 = add nsw i32 %64, %29
  %66 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.i32 %66, 0
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %1434, !dx.controlflow.hints !42

; <label>:69                                      ; preds = %62
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %71)  ; Countbits(value)
  %73 = shl i32 %65, 5
  %74 = or i32 %73, 12
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = or i32 %73, 16
  %78 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = or i32 %73, 28
  %83 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = and i32 %76, 255
  %86 = lshr i32 %76, 8
  %87 = and i32 %86, 255
  %88 = lshr i32 %76, 16
  %89 = and i32 %88, 255
  %90 = mul nuw nsw i32 %87, %85
  %91 = udiv i32 %63, %90
  %92 = urem i32 %63, %90
  %93 = udiv i32 %92, %85
  %94 = urem i32 %92, %85
  %95 = shl i32 %65, 6
  %96 = or i32 %95, 56
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = or i32 %95, 60
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = icmp ugt i32 %85, 1
  %105 = select i1 %104, float 0.000000e+00, float 5.000000e-01
  %106 = icmp ugt i32 %87, 1
  %107 = select i1 %106, float 0.000000e+00, float 5.000000e-01
  %108 = icmp ugt i32 %89, 1
  %109 = select i1 %108, float 0.000000e+00, float 5.000000e-01
  %110 = uitofp i32 %85 to float
  %111 = uitofp i32 %87 to float
  %112 = uitofp i32 %89 to float
  %113 = fadd fast float %110, -1.000000e+00
  %114 = fadd fast float %111, -1.000000e+00
  %115 = fadd fast float %112, -1.000000e+00
  %116 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %113)  ; FMax(a,b)
  %117 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %114)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %115)  ; FMax(a,b)
  %119 = fdiv fast float 1.000000e+00, %116
  %120 = fdiv fast float 1.000000e+00, %117
  %121 = fdiv fast float 1.000000e+00, %118
  %122 = uitofp i32 %94 to float
  %123 = uitofp i32 %93 to float
  %124 = uitofp i32 %91 to float
  %125 = fadd fast float %122, %105
  %126 = fadd fast float %123, %107
  %127 = fadd fast float %109, %124
  %128 = fmul fast float %119, %125
  %129 = fmul fast float %120, %126
  %130 = fmul fast float %121, %127
  %131 = fmul fast float %119, %103
  %132 = fsub fast float -0.000000e+00, %131
  %133 = fmul fast float %120, %103
  %134 = fsub fast float -0.000000e+00, %133
  %135 = fmul fast float %121, %103
  %136 = fsub fast float -0.000000e+00, %135
  %137 = fmul fast float %128, 5.000000e-01
  %138 = fmul fast float %129, 5.000000e-01
  %139 = fmul fast float %130, 5.000000e-01
  %140 = fsub fast float %131, %137
  %141 = fsub fast float %133, %138
  %142 = fsub fast float %135, %139
  %143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %140)  ; FMax(a,b)
  %144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %141)  ; FMax(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %142)  ; FMax(a,b)
  %146 = call float @dx.op.binary.f32(i32 36, float %131, float %143)  ; FMin(a,b)
  %147 = call float @dx.op.binary.f32(i32 36, float %133, float %144)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 36, float %135, float %145)  ; FMin(a,b)
  %149 = fsub fast float 5.000000e-01, %131
  %150 = fsub fast float 5.000000e-01, %133
  %151 = fsub fast float 5.000000e-01, %135
  %152 = fsub fast float %149, %137
  %153 = fsub fast float %150, %138
  %154 = fsub fast float %151, %139
  %155 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %152)  ; FMin(a,b)
  %156 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %153)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %154)  ; FMin(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %132, float %155)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float %134, float %156)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %136, float %157)  ; FMax(a,b)
  %161 = fadd fast float %146, %128
  %162 = fadd fast float %147, %129
  %163 = fadd fast float %148, %130
  %164 = fadd fast float %161, %158
  %165 = fadd fast float %162, %159
  %166 = fadd fast float %163, %160
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = or i32 %95, 16
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 1
  %172 = or i32 %95, 32
  %173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 2
  %175 = fmul fast float %174, %171
  %176 = extractvalue %dx.types.ResRet.f32 %170, 2
  %177 = extractvalue %dx.types.ResRet.f32 %173, 1
  %178 = fmul fast float %177, %176
  %179 = fsub fast float %175, %178
  %180 = fmul fast float %179, %168
  %181 = extractvalue %dx.types.ResRet.f32 %167, 1
  %182 = extractvalue %dx.types.ResRet.f32 %170, 0
  %183 = fmul fast float %174, %182
  %184 = extractvalue %dx.types.ResRet.f32 %173, 0
  %185 = fmul fast float %184, %176
  %186 = fsub fast float %183, %185
  %187 = fmul fast float %186, %181
  %188 = fsub fast float %180, %187
  %189 = extractvalue %dx.types.ResRet.f32 %167, 2
  %190 = fmul fast float %177, %182
  %191 = fmul fast float %184, %171
  %192 = fsub fast float %190, %191
  %193 = fmul fast float %192, %189
  %194 = fadd fast float %188, %193
  %195 = extractvalue %dx.types.ResRet.f32 %167, 3
  %196 = fmul fast float %179, %195
  %197 = extractvalue %dx.types.ResRet.f32 %170, 3
  %198 = fmul fast float %174, %181
  %199 = fmul fast float %177, %189
  %200 = fsub fast float %198, %199
  %201 = fmul fast float %200, %197
  %202 = fsub fast float %201, %196
  %203 = extractvalue %dx.types.ResRet.f32 %173, 3
  %204 = fmul fast float %176, %181
  %205 = fmul fast float %171, %189
  %206 = fsub fast float %204, %205
  %207 = fmul fast float %206, %203
  %208 = fsub fast float %202, %207
  %209 = fmul fast float %186, %195
  %210 = fmul fast float %174, %168
  %211 = fmul fast float %184, %189
  %212 = fsub fast float %210, %211
  %213 = fmul fast float %212, %197
  %214 = fsub fast float %209, %213
  %215 = fmul fast float %176, %168
  %216 = fmul fast float %182, %189
  %217 = fsub fast float %215, %216
  %218 = fmul fast float %217, %203
  %219 = fadd fast float %214, %218
  %220 = fmul fast float %192, %195
  %221 = fmul fast float %177, %168
  %222 = fmul fast float %184, %181
  %223 = fsub fast float %221, %222
  %224 = fmul fast float %223, %197
  %225 = fsub fast float %224, %220
  %226 = fmul fast float %171, %168
  %227 = fmul fast float %182, %181
  %228 = fsub fast float %226, %227
  %229 = fmul fast float %228, %203
  %230 = fsub fast float %225, %229
  %231 = fsub fast float %199, %198
  %232 = fsub fast float %185, %183
  %233 = fsub fast float %216, %215
  %234 = fsub fast float %222, %221
  %235 = fdiv fast float 1.000000e+00, %194
  %236 = fmul fast float %235, %179
  %237 = fmul fast float %235, %231
  %238 = fmul fast float %235, %206
  %239 = fmul fast float %235, %208
  %240 = fmul fast float %235, %232
  %241 = fmul fast float %235, %212
  %242 = fmul fast float %235, %233
  %243 = fmul fast float %235, %219
  %244 = fmul fast float %235, %192
  %245 = fmul fast float %235, %234
  %246 = fmul fast float %228, %235
  %247 = fmul fast float %235, %230
  %248 = call float @dx.op.dot4.f32(i32 56, float %236, float %237, float %238, float %239, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %249 = call float @dx.op.dot4.f32(i32 56, float %240, float %241, float %242, float %243, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %250 = call float @dx.op.dot4.f32(i32 56, float %244, float %245, float %246, float %247, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %251 = lshr i32 %101, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = and i32 %101, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = and i32 %98, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = and i32 %98, 65536
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %272, label %259, !dx.controlflow.hints !43

; <label>:259                                     ; preds = %69
  %260 = fadd fast float %164, -5.000000e-01
  %261 = fadd fast float %165, -5.000000e-01
  %262 = fadd fast float %166, -5.000000e-01
  %263 = call float @dx.op.dot3.f32(i32 55, float %260, float %261, float %262, float %252, float %254, float %256)  ; Dot3(ax,ay,az,bx,by,bz)
  %264 = fcmp fast ogt float %263, 0.000000e+00
  %265 = select i1 %264, float 1.000000e+00, float -1.000000e+00
  %266 = call float @dx.op.dot3.f32(i32 55, float %236, float %237, float %238, float %252, float %254, float %256)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = call float @dx.op.dot3.f32(i32 55, float %240, float %241, float %242, float %252, float %254, float %256)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = call float @dx.op.dot3.f32(i32 55, float %244, float %245, float %246, float %252, float %254, float %256)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = fmul fast float %265, %266
  %270 = fmul fast float %267, %265
  %271 = fmul fast float %268, %265
  br label %272

; <label>:272                                     ; preds = %259, %69
  %273 = phi float [ %269, %259 ], [ %252, %69 ]
  %274 = phi float [ %270, %259 ], [ %254, %69 ]
  %275 = phi float [ %271, %259 ], [ %256, %69 ]
  %276 = fadd fast float %273, %248
  %277 = fadd fast float %274, %249
  %278 = fadd fast float %275, %250
  %279 = and i32 %84, -1610612736
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %1434, !dx.controlflow.hints !44

; <label>:281                                     ; preds = %272
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = mul i32 %72, %63
  %285 = add i32 %283, %284
  %286 = icmp eq i32 %72, 0
  br i1 %286, label %458, label %287

; <label>:287                                     ; preds = %281
  br label %288

; <label>:288                                     ; preds = %364, %287
  %289 = phi float [ %453, %364 ], [ 0.000000e+00, %287 ]
  %290 = phi float [ %450, %364 ], [ 0.000000e+00, %287 ]
  %291 = phi float [ %447, %364 ], [ 0.000000e+00, %287 ]
  %292 = phi float [ %444, %364 ], [ 0.000000e+00, %287 ]
  %293 = phi float [ %441, %364 ], [ 0.000000e+00, %287 ]
  %294 = phi float [ %438, %364 ], [ 0.000000e+00, %287 ]
  %295 = phi float [ %435, %364 ], [ 0.000000e+00, %287 ]
  %296 = phi float [ %432, %364 ], [ 0.000000e+00, %287 ]
  %297 = phi float [ %429, %364 ], [ 0.000000e+00, %287 ]
  %298 = phi float [ %426, %364 ], [ 0.000000e+00, %287 ]
  %299 = phi float [ %423, %364 ], [ 0.000000e+00, %287 ]
  %300 = phi float [ %420, %364 ], [ 0.000000e+00, %287 ]
  %301 = phi float [ %417, %364 ], [ 0.000000e+00, %287 ]
  %302 = phi float [ %414, %364 ], [ 0.000000e+00, %287 ]
  %303 = phi float [ %411, %364 ], [ 0.000000e+00, %287 ]
  %304 = phi float [ %408, %364 ], [ 0.000000e+00, %287 ]
  %305 = phi float [ %405, %364 ], [ 0.000000e+00, %287 ]
  %306 = phi float [ %402, %364 ], [ 0.000000e+00, %287 ]
  %307 = phi float [ %399, %364 ], [ 0.000000e+00, %287 ]
  %308 = phi float [ %396, %364 ], [ 0.000000e+00, %287 ]
  %309 = phi float [ %393, %364 ], [ 0.000000e+00, %287 ]
  %310 = phi float [ %390, %364 ], [ 0.000000e+00, %287 ]
  %311 = phi float [ %387, %364 ], [ 0.000000e+00, %287 ]
  %312 = phi float [ %384, %364 ], [ 0.000000e+00, %287 ]
  %313 = phi float [ %381, %364 ], [ 0.000000e+00, %287 ]
  %314 = phi float [ %378, %364 ], [ 0.000000e+00, %287 ]
  %315 = phi float [ %375, %364 ], [ 0.000000e+00, %287 ]
  %316 = phi float [ %454, %364 ], [ 0.000000e+00, %287 ]
  %317 = phi i32 [ %455, %364 ], [ 0, %287 ]
  %318 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 0
  store float 0.000000e+00, float* %318, align 4
  %319 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 1
  store float 0.000000e+00, float* %319, align 4
  %320 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 2
  store float 0.000000e+00, float* %320, align 4
  %321 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 3
  store float 0.000000e+00, float* %321, align 4
  %322 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 4
  store float 0.000000e+00, float* %322, align 4
  %323 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 5
  store float 0.000000e+00, float* %323, align 4
  %324 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 6
  store float 0.000000e+00, float* %324, align 4
  %325 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 7
  store float 0.000000e+00, float* %325, align 4
  %326 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 8
  store float 0.000000e+00, float* %326, align 4
  %327 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 0
  store float 0.000000e+00, float* %327, align 4
  %328 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 1
  store float 0.000000e+00, float* %328, align 4
  %329 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 2
  store float 0.000000e+00, float* %329, align 4
  %330 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 3
  store float 0.000000e+00, float* %330, align 4
  %331 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 4
  store float 0.000000e+00, float* %331, align 4
  %332 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 5
  store float 0.000000e+00, float* %332, align 4
  %333 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 6
  store float 0.000000e+00, float* %333, align 4
  %334 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 7
  store float 0.000000e+00, float* %334, align 4
  %335 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 8
  store float 0.000000e+00, float* %335, align 4
  %336 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 0
  store float 0.000000e+00, float* %336, align 4
  %337 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 1
  store float 0.000000e+00, float* %337, align 4
  %338 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 2
  store float 0.000000e+00, float* %338, align 4
  %339 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 3
  store float 0.000000e+00, float* %339, align 4
  %340 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 4
  store float 0.000000e+00, float* %340, align 4
  %341 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 5
  store float 0.000000e+00, float* %341, align 4
  %342 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 6
  store float 0.000000e+00, float* %342, align 4
  %343 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 7
  store float 0.000000e+00, float* %343, align 4
  %344 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 8
  store float 0.000000e+00, float* %344, align 4
  %345 = add i32 %285, %317
  br label %346

; <label>:346                                     ; preds = %346, %288
  %347 = phi i32 [ 0, %288 ], [ %362, %346 ]
  %348 = mul i32 %345, 13
  %349 = add i32 %347, %348
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %349, i32 0)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = extractvalue %dx.types.ResRet.i32 %350, 1
  %353 = and i32 %351, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %351, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = and i32 %352, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = getelementptr inbounds [9 x float], [9 x float]* %21, i32 0, i32 %347
  store float %354, float* %359, align 4, !tbaa !45, !alias.scope !47, !noalias !50
  %360 = getelementptr inbounds [9 x float], [9 x float]* %20, i32 0, i32 %347
  store float %356, float* %360, align 4, !tbaa !45, !alias.scope !55, !noalias !56
  %361 = getelementptr inbounds [9 x float], [9 x float]* %22, i32 0, i32 %347
  store float %358, float* %361, align 4, !tbaa !45, !alias.scope !57, !noalias !58
  %362 = add nuw nsw i32 %347, 1
  %363 = icmp eq i32 %362, 9
  br i1 %363, label %364, label %346

; <label>:364                                     ; preds = %346
  %365 = add i32 %348, 12
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %365, i32 0)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = fmul fast float %371, %369
  %373 = load float, float* %318, align 4, !tbaa !45, !noalias !59
  %374 = fmul fast float %373, %372
  %375 = fadd fast float %374, %315
  %376 = load float, float* %319, align 4, !tbaa !45, !noalias !59
  %377 = fmul fast float %376, %372
  %378 = fadd fast float %377, %314
  %379 = load float, float* %320, align 4, !tbaa !45, !noalias !59
  %380 = fmul fast float %379, %372
  %381 = fadd fast float %380, %313
  %382 = load float, float* %321, align 4, !tbaa !45, !noalias !59
  %383 = fmul fast float %382, %372
  %384 = fadd fast float %383, %312
  %385 = load float, float* %322, align 4, !tbaa !45, !noalias !59
  %386 = fmul fast float %385, %372
  %387 = fadd fast float %386, %311
  %388 = load float, float* %323, align 4, !tbaa !45, !noalias !59
  %389 = fmul fast float %388, %372
  %390 = fadd fast float %389, %310
  %391 = load float, float* %324, align 4, !tbaa !45, !noalias !59
  %392 = fmul fast float %391, %372
  %393 = fadd fast float %392, %309
  %394 = load float, float* %325, align 4, !tbaa !45, !noalias !59
  %395 = fmul fast float %394, %372
  %396 = fadd fast float %395, %308
  %397 = load float, float* %326, align 4, !tbaa !45, !noalias !59
  %398 = fmul fast float %397, %372
  %399 = fadd fast float %398, %307
  %400 = load float, float* %327, align 4, !tbaa !45, !noalias !62
  %401 = fmul fast float %400, %372
  %402 = fadd fast float %401, %306
  %403 = load float, float* %328, align 4, !tbaa !45, !noalias !62
  %404 = fmul fast float %403, %372
  %405 = fadd fast float %404, %305
  %406 = load float, float* %329, align 4, !tbaa !45, !noalias !62
  %407 = fmul fast float %406, %372
  %408 = fadd fast float %407, %304
  %409 = load float, float* %330, align 4, !tbaa !45, !noalias !62
  %410 = fmul fast float %409, %372
  %411 = fadd fast float %410, %303
  %412 = load float, float* %331, align 4, !tbaa !45, !noalias !62
  %413 = fmul fast float %412, %372
  %414 = fadd fast float %413, %302
  %415 = load float, float* %332, align 4, !tbaa !45, !noalias !62
  %416 = fmul fast float %415, %372
  %417 = fadd fast float %416, %301
  %418 = load float, float* %333, align 4, !tbaa !45, !noalias !62
  %419 = fmul fast float %418, %372
  %420 = fadd fast float %419, %300
  %421 = load float, float* %334, align 4, !tbaa !45, !noalias !62
  %422 = fmul fast float %421, %372
  %423 = fadd fast float %422, %299
  %424 = load float, float* %335, align 4, !tbaa !45, !noalias !62
  %425 = fmul fast float %424, %372
  %426 = fadd fast float %425, %298
  %427 = load float, float* %336, align 4, !tbaa !45, !noalias !65
  %428 = fmul fast float %427, %372
  %429 = fadd fast float %428, %297
  %430 = load float, float* %337, align 4, !tbaa !45, !noalias !65
  %431 = fmul fast float %430, %372
  %432 = fadd fast float %431, %296
  %433 = load float, float* %338, align 4, !tbaa !45, !noalias !65
  %434 = fmul fast float %433, %372
  %435 = fadd fast float %434, %295
  %436 = load float, float* %339, align 4, !tbaa !45, !noalias !65
  %437 = fmul fast float %436, %372
  %438 = fadd fast float %437, %294
  %439 = load float, float* %340, align 4, !tbaa !45, !noalias !65
  %440 = fmul fast float %439, %372
  %441 = fadd fast float %440, %293
  %442 = load float, float* %341, align 4, !tbaa !45, !noalias !65
  %443 = fmul fast float %442, %372
  %444 = fadd fast float %443, %292
  %445 = load float, float* %342, align 4, !tbaa !45, !noalias !65
  %446 = fmul fast float %445, %372
  %447 = fadd fast float %446, %291
  %448 = load float, float* %343, align 4, !tbaa !45, !noalias !65
  %449 = fmul fast float %448, %372
  %450 = fadd fast float %449, %290
  %451 = load float, float* %344, align 4, !tbaa !45, !noalias !65
  %452 = fmul fast float %451, %372
  %453 = fadd fast float %452, %289
  %454 = fadd fast float %372, %316
  %455 = add nuw i32 %317, 1
  %456 = icmp eq i32 %455, %72
  br i1 %456, label %457, label %288

; <label>:457                                     ; preds = %364
  br label %458

; <label>:458                                     ; preds = %457, %281
  %459 = phi float [ 0.000000e+00, %281 ], [ %453, %457 ]
  %460 = phi float [ 0.000000e+00, %281 ], [ %450, %457 ]
  %461 = phi float [ 0.000000e+00, %281 ], [ %447, %457 ]
  %462 = phi float [ 0.000000e+00, %281 ], [ %444, %457 ]
  %463 = phi float [ 0.000000e+00, %281 ], [ %441, %457 ]
  %464 = phi float [ 0.000000e+00, %281 ], [ %438, %457 ]
  %465 = phi float [ 0.000000e+00, %281 ], [ %435, %457 ]
  %466 = phi float [ 0.000000e+00, %281 ], [ %432, %457 ]
  %467 = phi float [ 0.000000e+00, %281 ], [ %429, %457 ]
  %468 = phi float [ 0.000000e+00, %281 ], [ %426, %457 ]
  %469 = phi float [ 0.000000e+00, %281 ], [ %423, %457 ]
  %470 = phi float [ 0.000000e+00, %281 ], [ %420, %457 ]
  %471 = phi float [ 0.000000e+00, %281 ], [ %417, %457 ]
  %472 = phi float [ 0.000000e+00, %281 ], [ %414, %457 ]
  %473 = phi float [ 0.000000e+00, %281 ], [ %411, %457 ]
  %474 = phi float [ 0.000000e+00, %281 ], [ %408, %457 ]
  %475 = phi float [ 0.000000e+00, %281 ], [ %405, %457 ]
  %476 = phi float [ 0.000000e+00, %281 ], [ %402, %457 ]
  %477 = phi float [ 0.000000e+00, %281 ], [ %399, %457 ]
  %478 = phi float [ 0.000000e+00, %281 ], [ %396, %457 ]
  %479 = phi float [ 0.000000e+00, %281 ], [ %393, %457 ]
  %480 = phi float [ 0.000000e+00, %281 ], [ %390, %457 ]
  %481 = phi float [ 0.000000e+00, %281 ], [ %387, %457 ]
  %482 = phi float [ 0.000000e+00, %281 ], [ %384, %457 ]
  %483 = phi float [ 0.000000e+00, %281 ], [ %381, %457 ]
  %484 = phi float [ 0.000000e+00, %281 ], [ %378, %457 ]
  %485 = phi float [ 0.000000e+00, %281 ], [ %375, %457 ]
  %486 = phi float [ 0.000000e+00, %281 ], [ %454, %457 ]
  %487 = fcmp fast ogt float %486, 0.000000e+00
  %488 = fcmp fast une float %486, 1.000000e+00
  %489 = and i1 %487, %488
  br i1 %489, label %490, label %519, !dx.controlflow.hints !68

; <label>:490                                     ; preds = %458
  %491 = fdiv fast float 1.000000e+00, %486
  %492 = fmul fast float %491, %485
  %493 = fmul fast float %491, %484
  %494 = fmul fast float %491, %483
  %495 = fmul fast float %491, %482
  %496 = fmul fast float %491, %481
  %497 = fmul fast float %491, %480
  %498 = fmul fast float %491, %479
  %499 = fmul fast float %491, %478
  %500 = fmul fast float %491, %477
  %501 = fmul fast float %491, %476
  %502 = fmul fast float %491, %475
  %503 = fmul fast float %491, %474
  %504 = fmul fast float %491, %473
  %505 = fmul fast float %491, %472
  %506 = fmul fast float %491, %471
  %507 = fmul fast float %491, %470
  %508 = fmul fast float %491, %469
  %509 = fmul fast float %491, %468
  %510 = fmul fast float %491, %467
  %511 = fmul fast float %491, %466
  %512 = fmul fast float %491, %465
  %513 = fmul fast float %491, %464
  %514 = fmul fast float %491, %463
  %515 = fmul fast float %491, %462
  %516 = fmul fast float %491, %461
  %517 = fmul fast float %491, %460
  %518 = fmul fast float %491, %459
  br label %519

; <label>:519                                     ; preds = %490, %458
  %520 = phi float [ %518, %490 ], [ %459, %458 ]
  %521 = phi float [ %517, %490 ], [ %460, %458 ]
  %522 = phi float [ %516, %490 ], [ %461, %458 ]
  %523 = phi float [ %515, %490 ], [ %462, %458 ]
  %524 = phi float [ %514, %490 ], [ %463, %458 ]
  %525 = phi float [ %513, %490 ], [ %464, %458 ]
  %526 = phi float [ %512, %490 ], [ %465, %458 ]
  %527 = phi float [ %511, %490 ], [ %466, %458 ]
  %528 = phi float [ %510, %490 ], [ %467, %458 ]
  %529 = phi float [ %509, %490 ], [ %468, %458 ]
  %530 = phi float [ %508, %490 ], [ %469, %458 ]
  %531 = phi float [ %507, %490 ], [ %470, %458 ]
  %532 = phi float [ %506, %490 ], [ %471, %458 ]
  %533 = phi float [ %505, %490 ], [ %472, %458 ]
  %534 = phi float [ %504, %490 ], [ %473, %458 ]
  %535 = phi float [ %503, %490 ], [ %474, %458 ]
  %536 = phi float [ %502, %490 ], [ %475, %458 ]
  %537 = phi float [ %501, %490 ], [ %476, %458 ]
  %538 = phi float [ %500, %490 ], [ %477, %458 ]
  %539 = phi float [ %499, %490 ], [ %478, %458 ]
  %540 = phi float [ %498, %490 ], [ %479, %458 ]
  %541 = phi float [ %497, %490 ], [ %480, %458 ]
  %542 = phi float [ %496, %490 ], [ %481, %458 ]
  %543 = phi float [ %495, %490 ], [ %482, %458 ]
  %544 = phi float [ %494, %490 ], [ %483, %458 ]
  %545 = phi float [ %493, %490 ], [ %484, %458 ]
  %546 = phi float [ %492, %490 ], [ %485, %458 ]
  %547 = phi float [ 1.000000e+00, %490 ], [ %486, %458 ]
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = fsub fast float 1.000000e+00, %548
  %550 = fcmp fast ogt float %549, 0.000000e+00
  br i1 %550, label %551, label %1319, !dx.controlflow.hints !69

; <label>:551                                     ; preds = %519
  %552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.i32 %552, 0
  %554 = icmp eq i32 %553, 1
  br i1 %554, label %555, label %1164, !dx.controlflow.hints !70

; <label>:555                                     ; preds = %551
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = fsub fast float %276, %557
  %560 = fsub fast float %277, %558
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = fmul fast float %559, %562
  %565 = fmul fast float %560, %563
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = fmul fast float %567, %564
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %570 = fadd fast float %568, %569
  %571 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %572 = fmul fast float %571, %565
  %573 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %574 = fadd fast float %572, %573
  %575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %570, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %581 = fsub fast float %579, %580
  %582 = fmul fast float %581, %576
  %583 = fadd fast float %582, %580
  %584 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %585 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %586 = fsub fast float %584, %585
  %587 = fmul fast float %586, %577
  %588 = fadd fast float %587, %585
  %589 = fsub fast float %278, %583
  %590 = fsub fast float %588, %583
  %591 = fdiv fast float %589, %590
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = fmul fast float %594, %592
  %596 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %597 = fadd fast float %595, %596
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %570, float %574, float %597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = fmul fast float %603, %599
  %607 = fmul fast float %604, %600
  %608 = fmul fast float %605, %601
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %612 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %613 = fadd fast float %606, %610
  %614 = fadd fast float %607, %611
  %615 = fadd fast float %608, %612
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = fmul fast float %617, %564
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %620 = fadd fast float %618, %619
  %621 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %622 = fmul fast float %621, %565
  %623 = extractvalue %dx.types.CBufRet.f32 %616, 3
  %624 = fadd fast float %622, %623
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %628 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %629 = extractvalue %dx.types.CBufRet.f32 %625, 3
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %634 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %620, float %624, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = extractvalue %dx.types.ResRet.f32 %635, 3
  %640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %620, float %624, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = extractvalue %dx.types.ResRet.f32 %640, 3
  %645 = fmul fast float %636, %613
  %646 = fmul fast float %641, %613
  %647 = fmul fast float %643, %613
  %648 = fmul fast float %639, %613
  %649 = fadd fast float %645, %626
  %650 = fadd fast float %646, %627
  %651 = fadd fast float %647, %628
  %652 = fadd fast float %648, %629
  %653 = fmul fast float %637, %613
  %654 = fmul fast float %642, %613
  %655 = fadd fast float %653, %631
  %656 = fadd fast float %654, %632
  %657 = fmul fast float %638, %613
  %658 = fmul fast float %644, %613
  %659 = fadd fast float %657, %633
  %660 = fadd fast float %658, %634
  %661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %620, float %624, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %620, float %624, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = extractvalue %dx.types.ResRet.f32 %666, 3
  %671 = fmul fast float %662, %614
  %672 = fmul fast float %667, %614
  %673 = fmul fast float %669, %614
  %674 = fmul fast float %665, %614
  %675 = fadd fast float %649, %671
  %676 = fadd fast float %650, %672
  %677 = fadd fast float %651, %673
  %678 = fadd fast float %652, %674
  %679 = fmul fast float %663, %614
  %680 = fmul fast float %668, %614
  %681 = fadd fast float %655, %679
  %682 = fadd fast float %656, %680
  %683 = fmul fast float %664, %614
  %684 = fmul fast float %670, %614
  %685 = fadd fast float %659, %683
  %686 = fadd fast float %660, %684
  %687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %620, float %624, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  %692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %620, float %624, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = extractvalue %dx.types.ResRet.f32 %692, 1
  %695 = extractvalue %dx.types.ResRet.f32 %692, 2
  %696 = extractvalue %dx.types.ResRet.f32 %692, 3
  %697 = fmul fast float %688, %615
  %698 = fmul fast float %693, %615
  %699 = fmul fast float %695, %615
  %700 = fmul fast float %691, %615
  %701 = fadd fast float %675, %697
  %702 = fadd fast float %676, %698
  %703 = fadd fast float %677, %699
  %704 = fadd fast float %678, %700
  %705 = fmul fast float %689, %615
  %706 = fmul fast float %694, %615
  %707 = fadd fast float %681, %705
  %708 = fadd fast float %682, %706
  %709 = fmul fast float %690, %615
  %710 = fmul fast float %696, %615
  %711 = fadd fast float %685, %709
  %712 = fadd fast float %686, %710
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 0
  %715 = fsub fast float %276, %714
  %716 = fsub fast float %557, %276
  %717 = call float @dx.op.binary.f32(i32 35, float %716, float %715)  ; FMax(a,b)
  %718 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %719 = fsub fast float %277, %718
  %720 = fsub fast float %558, %277
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float %719)  ; FMax(a,b)
  %722 = call float @dx.op.binary.f32(i32 35, float %717, float %721)  ; FMax(a,b)
  %723 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %724 = fmul fast float %723, %722
  %725 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %729 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %726, 3
  %731 = fsub fast float %727, %701
  %732 = fsub fast float %728, %702
  %733 = fsub fast float %729, %703
  %734 = fsub fast float %730, %704
  %735 = fmul fast float %731, %725
  %736 = fmul fast float %732, %725
  %737 = fmul fast float %733, %725
  %738 = fmul fast float %734, %725
  %739 = fadd fast float %735, %701
  %740 = fadd fast float %736, %702
  %741 = fadd fast float %737, %703
  %742 = fadd fast float %738, %704
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %746 = fsub fast float %744, %707
  %747 = fsub fast float %745, %708
  %748 = fmul fast float %746, %725
  %749 = fmul fast float %747, %725
  %750 = fadd fast float %748, %707
  %751 = fadd fast float %749, %708
  %752 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %753 = extractvalue %dx.types.CBufRet.f32 %743, 3
  %754 = fsub fast float %752, %711
  %755 = fsub fast float %753, %712
  %756 = fmul fast float %754, %725
  %757 = fmul fast float %755, %725
  %758 = fadd fast float %756, %711
  %759 = fadd fast float %757, %712
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %762 = fmul fast float %761, %739
  %763 = fmul fast float %761, %740
  %764 = fmul fast float %761, %741
  %765 = fmul fast float %761, %742
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = fmul fast float %767, %750
  %769 = fmul fast float %767, %751
  %770 = fadd fast float %768, %762
  %771 = fadd fast float %769, %764
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = fmul fast float %773, %758
  %775 = fmul fast float %773, %759
  %776 = fadd fast float %770, %774
  %777 = fadd fast float %771, %775
  %778 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %779 = fmul fast float %778, %739
  %780 = fmul fast float %778, %740
  %781 = fmul fast float %778, %741
  %782 = fmul fast float %778, %742
  %783 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %784 = fmul fast float %783, %750
  %785 = fmul fast float %783, %751
  %786 = fadd fast float %784, %779
  %787 = fadd fast float %785, %781
  %788 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %789 = fmul fast float %788, %758
  %790 = fmul fast float %788, %759
  %791 = fadd fast float %786, %789
  %792 = fadd fast float %787, %790
  %793 = extractvalue %dx.types.CBufRet.f32 %760, 2
  %794 = fmul fast float %793, %739
  %795 = fmul fast float %793, %740
  %796 = fmul fast float %793, %741
  %797 = fmul fast float %793, %742
  %798 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %799 = fmul fast float %798, %750
  %800 = fmul fast float %798, %751
  %801 = fadd fast float %799, %794
  %802 = fadd fast float %800, %796
  %803 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %804 = fmul fast float %803, %758
  %805 = fmul fast float %803, %759
  %806 = fadd fast float %801, %804
  %807 = fadd fast float %802, %805
  %808 = fmul fast float %795, %795
  %809 = fmul fast float %807, %807
  %810 = fmul fast float %797, %797
  %811 = fadd fast float %810, %808
  %812 = fadd fast float %811, %809
  %813 = call float @dx.op.unary.f32(i32 24, float %812)  ; Sqrt(value)
  %814 = fcmp fast ugt float %813, 0.000000e+00
  br i1 %814, label %815, label %830, !dx.controlflow.hints !71

; <label>:815                                     ; preds = %555
  %816 = fsub fast float -0.000000e+00, %797
  %817 = fdiv fast float %816, %813
  %818 = fsub fast float -0.000000e+00, %795
  %819 = fdiv fast float %818, %813
  %820 = fdiv fast float %807, %813
  %821 = fmul fast float %806, 0x3FE279A760000000
  %822 = fmul fast float %819, %795
  %823 = fmul fast float %820, %807
  %824 = fmul fast float %817, %797
  %825 = fadd fast float %822, %824
  %826 = fsub fast float %825, %823
  %827 = call float @dx.op.unary.f32(i32 6, float %826)  ; FAbs(value)
  %828 = fadd fast float %827, 0x3DDB7CDFE0000000
  %829 = fdiv fast float %821, %828
  br label %830

; <label>:830                                     ; preds = %815, %555
  %831 = phi float [ %829, %815 ], [ 1.000000e+00, %555 ]
  %832 = fmul fast float %780, %780
  %833 = fmul fast float %792, %792
  %834 = fmul fast float %782, %782
  %835 = fadd fast float %834, %832
  %836 = fadd fast float %835, %833
  %837 = call float @dx.op.unary.f32(i32 24, float %836)  ; Sqrt(value)
  %838 = fcmp fast ugt float %837, 0.000000e+00
  br i1 %838, label %839, label %854, !dx.controlflow.hints !71

; <label>:839                                     ; preds = %830
  %840 = fsub fast float -0.000000e+00, %782
  %841 = fdiv fast float %840, %837
  %842 = fsub fast float -0.000000e+00, %780
  %843 = fdiv fast float %842, %837
  %844 = fdiv fast float %792, %837
  %845 = fmul fast float %791, 0x3FE279A760000000
  %846 = fmul fast float %843, %780
  %847 = fmul fast float %844, %792
  %848 = fmul fast float %841, %782
  %849 = fadd fast float %846, %848
  %850 = fsub fast float %849, %847
  %851 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %852 = fadd fast float %851, 0x3DDB7CDFE0000000
  %853 = fdiv fast float %845, %852
  br label %854

; <label>:854                                     ; preds = %839, %830
  %855 = phi float [ %853, %839 ], [ 1.000000e+00, %830 ]
  %856 = call float @dx.op.binary.f32(i32 36, float %855, float %831)  ; FMin(a,b)
  %857 = fmul fast float %763, %763
  %858 = fmul fast float %777, %777
  %859 = fmul fast float %765, %765
  %860 = fadd fast float %859, %857
  %861 = fadd fast float %860, %858
  %862 = call float @dx.op.unary.f32(i32 24, float %861)  ; Sqrt(value)
  %863 = fcmp fast ugt float %862, 0.000000e+00
  br i1 %863, label %864, label %879, !dx.controlflow.hints !71

; <label>:864                                     ; preds = %854
  %865 = fsub fast float -0.000000e+00, %765
  %866 = fdiv fast float %865, %862
  %867 = fsub fast float -0.000000e+00, %763
  %868 = fdiv fast float %867, %862
  %869 = fdiv fast float %777, %862
  %870 = fmul fast float %776, 0x3FE279A760000000
  %871 = fmul fast float %868, %763
  %872 = fmul fast float %869, %777
  %873 = fmul fast float %866, %765
  %874 = fadd fast float %871, %873
  %875 = fsub fast float %874, %872
  %876 = call float @dx.op.unary.f32(i32 6, float %875)  ; FAbs(value)
  %877 = fadd fast float %876, 0x3DDB7CDFE0000000
  %878 = fdiv fast float %870, %877
  br label %879

; <label>:879                                     ; preds = %864, %854
  %880 = phi float [ %878, %864 ], [ 1.000000e+00, %854 ]
  %881 = call float @dx.op.binary.f32(i32 36, float %880, float %856)  ; FMin(a,b)
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fcmp fast olt float %882, 1.000000e+00
  br i1 %883, label %884, label %894, !dx.controlflow.hints !72

; <label>:884                                     ; preds = %879
  %885 = fmul fast float %882, %763
  %886 = fmul fast float %882, %777
  %887 = fmul fast float %882, %765
  %888 = fmul fast float %882, %780
  %889 = fmul fast float %882, %792
  %890 = fmul fast float %882, %782
  %891 = fmul fast float %882, %795
  %892 = fmul fast float %882, %807
  %893 = fmul fast float %882, %797
  br label %894

; <label>:894                                     ; preds = %884, %879
  %895 = phi float [ %891, %884 ], [ %795, %879 ]
  %896 = phi float [ %892, %884 ], [ %807, %879 ]
  %897 = phi float [ %893, %884 ], [ %797, %879 ]
  %898 = phi float [ %888, %884 ], [ %780, %879 ]
  %899 = phi float [ %889, %884 ], [ %792, %879 ]
  %900 = phi float [ %890, %884 ], [ %782, %879 ]
  %901 = phi float [ %885, %884 ], [ %763, %879 ]
  %902 = phi float [ %886, %884 ], [ %777, %879 ]
  %903 = phi float [ %887, %884 ], [ %765, %879 ]
  %904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %776)  ; FMax(a,b)
  %905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %791)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %806)  ; FMax(a,b)
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = fcmp fast ogt float %908, 0.000000e+00
  %910 = fcmp fast oge float %564, 0.000000e+00
  %911 = and i1 %910, %909
  %912 = fcmp fast ole float %564, 1.000000e+00
  %913 = and i1 %912, %911
  %914 = fcmp fast oge float %565, 0.000000e+00
  %915 = and i1 %914, %913
  %916 = fcmp fast ole float %565, 1.000000e+00
  %917 = and i1 %916, %915
  br i1 %917, label %918, label %1063, !dx.controlflow.hints !73

; <label>:918                                     ; preds = %894
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %922 = fmul fast float %920, %564
  %923 = fmul fast float %921, %565
  %924 = call float @dx.op.unary.f32(i32 27, float %922)  ; Round_ni(value)
  %925 = call float @dx.op.unary.f32(i32 27, float %923)  ; Round_ni(value)
  %926 = fptosi float %924 to i32
  %927 = fptosi float %925 to i32
  %928 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %926, i32 %927, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 65535
  %931 = lshr i32 %929, 16
  %932 = icmp eq i32 %930, 65535
  br i1 %932, label %969, label %933, !dx.controlflow.hints !74

; <label>:933                                     ; preds = %918
  %934 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %935 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %937 = fmul fast float %935, %564
  %938 = fmul fast float %936, %565
  %939 = fmul fast float %937, 1.250000e-01
  %940 = fmul fast float %938, 1.250000e-01
  %941 = call float @dx.op.unary.f32(i32 27, float %939)  ; Round_ni(value)
  %942 = call float @dx.op.unary.f32(i32 27, float %940)  ; Round_ni(value)
  %943 = fmul fast float %941, 8.000000e+00
  %944 = fmul fast float %942, 8.000000e+00
  %945 = and i32 %929, 255
  %946 = lshr i32 %929, 8
  %947 = and i32 %946, 255
  %948 = mul nuw nsw i32 %945, 9
  %949 = uitofp i32 %948 to float
  %950 = mul nuw nsw i32 %947, 9
  %951 = uitofp i32 %950 to float
  %952 = fadd fast float %949, 5.000000e-01
  %953 = fadd fast float %952, %937
  %954 = fsub fast float %953, %943
  %955 = fadd fast float %951, 5.000000e-01
  %956 = fadd fast float %955, %938
  %957 = fsub fast float %956, %944
  %958 = fdiv fast float %954, %908
  %959 = fdiv fast float %957, %934
  %960 = fmul fast float %592, 4.375000e-01
  %961 = fadd fast float %960, 3.125000e-02
  %962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %15, float %958, float %959, float %961, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = extractvalue %dx.types.ResRet.f32 %962, 1
  %965 = extractvalue %dx.types.ResRet.f32 %962, 2
  %966 = fadd fast float %963, %904
  %967 = fadd fast float %964, %905
  %968 = fadd fast float %965, %906
  br label %969

; <label>:969                                     ; preds = %933, %918
  %970 = phi float [ %968, %933 ], [ %906, %918 ]
  %971 = phi float [ %967, %933 ], [ %905, %918 ]
  %972 = phi float [ %966, %933 ], [ %904, %918 ]
  %973 = icmp eq i32 %931, 65535
  br i1 %973, label %1063, label %974, !dx.controlflow.hints !75

; <label>:974                                     ; preds = %969
  %975 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %976 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %977 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %978 = fmul fast float %976, %564
  %979 = fmul fast float %977, %565
  %980 = fmul fast float %978, 1.250000e-01
  %981 = fmul fast float %979, 1.250000e-01
  %982 = call float @dx.op.unary.f32(i32 27, float %980)  ; Round_ni(value)
  %983 = call float @dx.op.unary.f32(i32 27, float %981)  ; Round_ni(value)
  %984 = fmul fast float %982, 8.000000e+00
  %985 = fmul fast float %983, 8.000000e+00
  %986 = fsub fast float %978, %984
  %987 = fsub fast float %979, %985
  %988 = fadd fast float %986, 5.000000e-01
  %989 = fadd fast float %987, 5.000000e-01
  %990 = and i32 %931, 255
  %991 = lshr i32 %929, 24
  %992 = mul nuw nsw i32 %990, 9
  %993 = uitofp i32 %992 to float
  %994 = mul nuw nsw i32 %991, 9
  %995 = uitofp i32 %994 to float
  %996 = fadd fast float %988, %993
  %997 = fadd fast float %989, %995
  %998 = fdiv fast float %996, %908
  %999 = fdiv fast float %997, %975
  %1000 = fmul fast float %592, 4.375000e-01
  %1001 = fadd fast float %1000, 3.125000e-02
  %1002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %15, float %998, float %999, float %1001, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = fadd fast float %1000, 5.312500e-01
  %1007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %15, float %998, float %999, float %1006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = fmul fast float %1008, 2.000000e+00
  %1012 = fmul fast float %1009, 2.000000e+00
  %1013 = fmul fast float %1010, 2.000000e+00
  %1014 = fadd fast float %1011, -1.000000e+00
  %1015 = fadd fast float %1012, -1.000000e+00
  %1016 = fadd fast float %1013, -1.000000e+00
  %1017 = fmul fast float %1014, %1014
  %1018 = fmul fast float %1015, %1015
  %1019 = fadd fast float %1017, %1018
  %1020 = fmul fast float %1016, %1016
  %1021 = fadd fast float %1019, %1020
  %1022 = call float @dx.op.unary.f32(i32 24, float %1021)  ; Sqrt(value)
  %1023 = fcmp fast ogt float %1022, 0.000000e+00
  br i1 %1023, label %1024, label %1028, !dx.controlflow.hints !76

; <label>:1024                                    ; preds = %974
  %1025 = fdiv fast float %1014, %1022
  %1026 = fdiv fast float %1015, %1022
  %1027 = fdiv fast float %1016, %1022
  br label %1028

; <label>:1028                                    ; preds = %1024, %974
  %1029 = phi float [ %1025, %1024 ], [ 0.000000e+00, %974 ]
  %1030 = phi float [ %1026, %1024 ], [ 0.000000e+00, %974 ]
  %1031 = phi float [ %1027, %1024 ], [ 0.000000e+00, %974 ]
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = fsub fast float %276, %1033
  %1036 = fsub fast float %277, %1034
  %1037 = fmul fast float %1035, %1035
  %1038 = fmul fast float %1036, %1036
  %1039 = fadd fast float %1037, %1038
  %1040 = call float @dx.op.unary.f32(i32 24, float %1039)  ; Sqrt(value)
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = fsub fast float %1040, %1042
  %1045 = fdiv fast float %1044, %1043
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = fmul fast float %1046, 2.000000e+00
  %1048 = fsub fast float 3.000000e+00, %1047
  %1049 = fmul fast float %1046, %1046
  %1050 = fmul fast float %1049, %1048
  %1051 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1031, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1052 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1051)  ; FMax(a,b)
  %1053 = fmul fast float %1052, 0x400C5BF8A0000000
  %1054 = fmul fast float %1050, %1003
  %1055 = fmul fast float %1054, %1053
  %1056 = fadd fast float %1055, %972
  %1057 = fmul fast float %1050, %1004
  %1058 = fmul fast float %1057, %1053
  %1059 = fadd fast float %1058, %971
  %1060 = fmul fast float %1050, %1005
  %1061 = fmul fast float %1060, %1053
  %1062 = fadd fast float %1061, %970
  br label %1063

; <label>:1063                                    ; preds = %1028, %969, %894
  %1064 = phi float [ %1062, %1028 ], [ %970, %969 ], [ %906, %894 ]
  %1065 = phi float [ %1059, %1028 ], [ %971, %969 ], [ %905, %894 ]
  %1066 = phi float [ %1056, %1028 ], [ %972, %969 ], [ %904, %894 ]
  %1067 = fcmp fast ogt float %278, %588
  %1068 = and i1 %910, %1067
  %1069 = and i1 %912, %1068
  %1070 = and i1 %914, %1069
  %1071 = and i1 %916, %1070
  br i1 %1071, label %1072, label %1129, !dx.controlflow.hints !77

; <label>:1072                                    ; preds = %1063
  %1073 = fmul fast float %590, 0x3FC24924A0000000
  %1074 = fsub fast float %278, %588
  %1075 = fdiv fast float %1074, %1073
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = fsub fast float %1078, %1066
  %1084 = fsub fast float %1080, %901
  %1085 = fsub fast float %1081, %902
  %1086 = fsub fast float %1082, %903
  %1087 = fmul fast float %1083, %1076
  %1088 = fmul fast float %1084, %1076
  %1089 = fmul fast float %1085, %1076
  %1090 = fmul fast float %1086, %1076
  %1091 = fadd fast float %1087, %1066
  %1092 = fadd fast float %1088, %901
  %1093 = fadd fast float %1089, %902
  %1094 = fadd fast float %1090, %903
  %1095 = extractvalue %dx.types.CBufRet.f32 %1077, 1
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1100 = fsub fast float %1095, %1065
  %1101 = fsub fast float %1097, %898
  %1102 = fsub fast float %1098, %899
  %1103 = fsub fast float %1099, %900
  %1104 = fmul fast float %1100, %1076
  %1105 = fmul fast float %1101, %1076
  %1106 = fmul fast float %1102, %1076
  %1107 = fmul fast float %1103, %1076
  %1108 = fadd fast float %1104, %1065
  %1109 = fadd fast float %1105, %898
  %1110 = fadd fast float %1106, %899
  %1111 = fadd fast float %1107, %900
  %1112 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1117 = fsub fast float %1112, %1064
  %1118 = fsub fast float %1114, %895
  %1119 = fsub fast float %1115, %896
  %1120 = fsub fast float %1116, %897
  %1121 = fmul fast float %1117, %1076
  %1122 = fmul fast float %1118, %1076
  %1123 = fmul fast float %1119, %1076
  %1124 = fmul fast float %1120, %1076
  %1125 = fadd fast float %1121, %1064
  %1126 = fadd fast float %1122, %895
  %1127 = fadd fast float %1123, %896
  %1128 = fadd fast float %1124, %897
  br label %1129

; <label>:1129                                    ; preds = %1072, %1063
  %1130 = phi float [ %1125, %1072 ], [ %1064, %1063 ]
  %1131 = phi float [ %1126, %1072 ], [ %895, %1063 ]
  %1132 = phi float [ %1127, %1072 ], [ %896, %1063 ]
  %1133 = phi float [ %1128, %1072 ], [ %897, %1063 ]
  %1134 = phi float [ %1108, %1072 ], [ %1065, %1063 ]
  %1135 = phi float [ %1109, %1072 ], [ %898, %1063 ]
  %1136 = phi float [ %1110, %1072 ], [ %899, %1063 ]
  %1137 = phi float [ %1111, %1072 ], [ %900, %1063 ]
  %1138 = phi float [ %1091, %1072 ], [ %1066, %1063 ]
  %1139 = phi float [ %1092, %1072 ], [ %901, %1063 ]
  %1140 = phi float [ %1093, %1072 ], [ %902, %1063 ]
  %1141 = phi float [ %1094, %1072 ], [ %903, %1063 ]
  %1142 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %1143 = fmul fast float %1142, %1138
  %1144 = fmul fast float %1142, %1134
  %1145 = fmul fast float %1142, %1130
  %1146 = fmul fast float %1139, 1.500000e+00
  %1147 = fmul fast float %1146, %1142
  %1148 = fmul fast float %1140, 1.500000e+00
  %1149 = fmul fast float %1148, %1142
  %1150 = fmul fast float %1141, 1.500000e+00
  %1151 = fmul fast float %1150, %1142
  %1152 = fmul fast float %1135, 1.500000e+00
  %1153 = fmul fast float %1152, %1142
  %1154 = fmul fast float %1136, 1.500000e+00
  %1155 = fmul fast float %1154, %1142
  %1156 = fmul fast float %1137, 1.500000e+00
  %1157 = fmul fast float %1156, %1142
  %1158 = fmul fast float %1131, 1.500000e+00
  %1159 = fmul fast float %1158, %1142
  %1160 = fmul fast float %1132, 1.500000e+00
  %1161 = fmul fast float %1160, %1142
  %1162 = fmul fast float %1133, 1.500000e+00
  %1163 = fmul fast float %1162, %1142
  br label %1237

; <label>:1164                                    ; preds = %551
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.i32 %1165, 1
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.i32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.i32 %1168, 2
  %1172 = extractvalue %dx.types.ResRet.i32 %1168, 3
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = extractvalue %dx.types.ResRet.i32 %1173, 1
  %1176 = extractvalue %dx.types.ResRet.i32 %1173, 2
  %1177 = extractvalue %dx.types.ResRet.i32 %1173, 3
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.i32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.i32 %1178, 2
  %1182 = extractvalue %dx.types.ResRet.i32 %1178, 3
  %1183 = and i32 %1179, 65535
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = lshr i32 %1179, 16
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = and i32 %1180, 65535
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = lshr i32 %1180, 16
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = and i32 %1181, 65535
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = lshr i32 %1181, 16
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = and i32 %1182, 65535
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = lshr i32 %1182, 16
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = and i32 %1174, 65535
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1174, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = and i32 %1175, 65535
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = lshr i32 %1175, 16
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = and i32 %1176, 65535
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = lshr i32 %1176, 16
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = and i32 %1177, 65535
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = lshr i32 %1177, 16
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = and i32 %1169, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1169, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = and i32 %1170, 65535
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = lshr i32 %1170, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = and i32 %1171, 65535
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = lshr i32 %1171, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = and i32 %1172, 65535
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = lshr i32 %1172, 16
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = and i32 %1166, 65535
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1166, 16
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = and i32 %1167, 65535
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  br label %1237

; <label>:1237                                    ; preds = %1164, %1129
  %1238 = phi float [ %1236, %1164 ], [ 0.000000e+00, %1129 ]
  %1239 = phi float [ %1234, %1164 ], [ 0.000000e+00, %1129 ]
  %1240 = phi float [ %1232, %1164 ], [ 0.000000e+00, %1129 ]
  %1241 = phi float [ %1230, %1164 ], [ 0.000000e+00, %1129 ]
  %1242 = phi float [ %1228, %1164 ], [ 0.000000e+00, %1129 ]
  %1243 = phi float [ %1226, %1164 ], [ %1163, %1129 ]
  %1244 = phi float [ %1224, %1164 ], [ %1161, %1129 ]
  %1245 = phi float [ %1222, %1164 ], [ %1159, %1129 ]
  %1246 = phi float [ %1220, %1164 ], [ %1145, %1129 ]
  %1247 = phi float [ %1218, %1164 ], [ 0.000000e+00, %1129 ]
  %1248 = phi float [ %1216, %1164 ], [ 0.000000e+00, %1129 ]
  %1249 = phi float [ %1214, %1164 ], [ 0.000000e+00, %1129 ]
  %1250 = phi float [ %1212, %1164 ], [ 0.000000e+00, %1129 ]
  %1251 = phi float [ %1210, %1164 ], [ 0.000000e+00, %1129 ]
  %1252 = phi float [ %1208, %1164 ], [ %1157, %1129 ]
  %1253 = phi float [ %1206, %1164 ], [ %1155, %1129 ]
  %1254 = phi float [ %1204, %1164 ], [ %1153, %1129 ]
  %1255 = phi float [ %1202, %1164 ], [ %1144, %1129 ]
  %1256 = phi float [ %1200, %1164 ], [ 0.000000e+00, %1129 ]
  %1257 = phi float [ %1198, %1164 ], [ 0.000000e+00, %1129 ]
  %1258 = phi float [ %1196, %1164 ], [ 0.000000e+00, %1129 ]
  %1259 = phi float [ %1194, %1164 ], [ 0.000000e+00, %1129 ]
  %1260 = phi float [ %1192, %1164 ], [ 0.000000e+00, %1129 ]
  %1261 = phi float [ %1190, %1164 ], [ %1151, %1129 ]
  %1262 = phi float [ %1188, %1164 ], [ %1149, %1129 ]
  %1263 = phi float [ %1186, %1164 ], [ %1147, %1129 ]
  %1264 = phi float [ %1184, %1164 ], [ %1143, %1129 ]
  %1265 = fmul fast float %1264, %549
  %1266 = fadd fast float %1265, %546
  %1267 = fmul fast float %1263, %549
  %1268 = fadd fast float %1267, %545
  %1269 = fmul fast float %1262, %549
  %1270 = fadd fast float %1269, %544
  %1271 = fmul fast float %1261, %549
  %1272 = fadd fast float %1271, %543
  %1273 = fmul fast float %1260, %549
  %1274 = fadd fast float %1273, %542
  %1275 = fmul fast float %1259, %549
  %1276 = fadd fast float %1275, %541
  %1277 = fmul fast float %1258, %549
  %1278 = fadd fast float %1277, %540
  %1279 = fmul fast float %1257, %549
  %1280 = fadd fast float %1279, %539
  %1281 = fmul fast float %1256, %549
  %1282 = fadd fast float %1281, %538
  %1283 = fmul fast float %1255, %549
  %1284 = fadd fast float %1283, %537
  %1285 = fmul fast float %1254, %549
  %1286 = fadd fast float %1285, %536
  %1287 = fmul fast float %1253, %549
  %1288 = fadd fast float %1287, %535
  %1289 = fmul fast float %1252, %549
  %1290 = fadd fast float %1289, %534
  %1291 = fmul fast float %1251, %549
  %1292 = fadd fast float %1291, %533
  %1293 = fmul fast float %1250, %549
  %1294 = fadd fast float %1293, %532
  %1295 = fmul fast float %1249, %549
  %1296 = fadd fast float %1295, %531
  %1297 = fmul fast float %1248, %549
  %1298 = fadd fast float %1297, %530
  %1299 = fmul fast float %1247, %549
  %1300 = fadd fast float %1299, %529
  %1301 = fmul fast float %1246, %549
  %1302 = fadd fast float %1301, %528
  %1303 = fmul fast float %1245, %549
  %1304 = fadd fast float %1303, %527
  %1305 = fmul fast float %1244, %549
  %1306 = fadd fast float %1305, %526
  %1307 = fmul fast float %1243, %549
  %1308 = fadd fast float %1307, %525
  %1309 = fmul fast float %1242, %549
  %1310 = fadd fast float %1309, %524
  %1311 = fmul fast float %1241, %549
  %1312 = fadd fast float %1311, %523
  %1313 = fmul fast float %1240, %549
  %1314 = fadd fast float %1313, %522
  %1315 = fmul fast float %1239, %549
  %1316 = fadd fast float %1315, %521
  %1317 = fmul fast float %1238, %549
  %1318 = fadd fast float %1317, %520
  br label %1319

; <label>:1319                                    ; preds = %1237, %519
  %1320 = phi float [ %1318, %1237 ], [ %520, %519 ]
  %1321 = phi float [ %1316, %1237 ], [ %521, %519 ]
  %1322 = phi float [ %1314, %1237 ], [ %522, %519 ]
  %1323 = phi float [ %1312, %1237 ], [ %523, %519 ]
  %1324 = phi float [ %1310, %1237 ], [ %524, %519 ]
  %1325 = phi float [ %1308, %1237 ], [ %525, %519 ]
  %1326 = phi float [ %1306, %1237 ], [ %526, %519 ]
  %1327 = phi float [ %1304, %1237 ], [ %527, %519 ]
  %1328 = phi float [ %1302, %1237 ], [ %528, %519 ]
  %1329 = phi float [ %1300, %1237 ], [ %529, %519 ]
  %1330 = phi float [ %1298, %1237 ], [ %530, %519 ]
  %1331 = phi float [ %1296, %1237 ], [ %531, %519 ]
  %1332 = phi float [ %1294, %1237 ], [ %532, %519 ]
  %1333 = phi float [ %1292, %1237 ], [ %533, %519 ]
  %1334 = phi float [ %1290, %1237 ], [ %534, %519 ]
  %1335 = phi float [ %1288, %1237 ], [ %535, %519 ]
  %1336 = phi float [ %1286, %1237 ], [ %536, %519 ]
  %1337 = phi float [ %1284, %1237 ], [ %537, %519 ]
  %1338 = phi float [ %1282, %1237 ], [ %538, %519 ]
  %1339 = phi float [ %1280, %1237 ], [ %539, %519 ]
  %1340 = phi float [ %1278, %1237 ], [ %540, %519 ]
  %1341 = phi float [ %1276, %1237 ], [ %541, %519 ]
  %1342 = phi float [ %1274, %1237 ], [ %542, %519 ]
  %1343 = phi float [ %1272, %1237 ], [ %543, %519 ]
  %1344 = phi float [ %1270, %1237 ], [ %544, %519 ]
  %1345 = phi float [ %1268, %1237 ], [ %545, %519 ]
  %1346 = phi float [ %1266, %1237 ], [ %546, %519 ]
  %1347 = fmul fast float %79, 6.400000e+01
  %1348 = fmul fast float %80, 6.400000e+01
  %1349 = fmul fast float %81, 1.600000e+01
  %1350 = fptosi float %1347 to i32
  %1351 = fptosi float %1348 to i32
  %1352 = fptosi float %1349 to i32
  %1353 = add i32 %94, %1350
  %1354 = add i32 %93, %1351
  %1355 = add i32 %1352, %91
  %1356 = fdiv fast float 1.000000e+00, %1346
  %1357 = fdiv fast float 1.000000e+00, %1337
  %1358 = fdiv fast float 1.000000e+00, %1328
  %1359 = fmul fast float %1344, 0x3FD279A740000000
  %1360 = fmul fast float %1359, %1356
  %1361 = fmul fast float %1335, 0x3FD279A740000000
  %1362 = fmul fast float %1361, %1357
  %1363 = fmul fast float %1326, 0x3FD279A740000000
  %1364 = fmul fast float %1363, %1358
  %1365 = fmul fast float %1340, 0x3FCC9F25C0000000
  %1366 = fmul fast float %1365, %1356
  %1367 = fadd fast float %1360, 5.000000e-01
  %1368 = fadd fast float %1362, 5.000000e-01
  %1369 = fadd fast float %1364, 5.000000e-01
  %1370 = fadd fast float %1366, 5.000000e-01
  %1371 = fmul fast float %1331, 0x3FCC9F25C0000000
  %1372 = fmul fast float %1371, %1357
  %1373 = fmul fast float %1322, 0x3FCC9F25C0000000
  %1374 = fmul fast float %1373, %1358
  %1375 = fmul fast float %1345, 0x3FD279A740000000
  %1376 = fmul fast float %1375, %1356
  %1377 = fmul fast float %1336, 0x3FD279A740000000
  %1378 = fmul fast float %1377, %1357
  %1379 = fadd fast float %1372, 5.000000e-01
  %1380 = fadd fast float %1374, 5.000000e-01
  %1381 = fadd fast float %1376, 5.000000e-01
  %1382 = fadd fast float %1378, 5.000000e-01
  %1383 = fmul fast float %1327, 0x3FD279A740000000
  %1384 = fmul fast float %1383, %1358
  %1385 = fmul fast float %1343, 0x3FD279A740000000
  %1386 = fmul fast float %1385, %1356
  %1387 = fmul fast float %1334, 0x3FD279A740000000
  %1388 = fmul fast float %1387, %1357
  %1389 = fmul fast float %1325, 0x3FD279A740000000
  %1390 = fmul fast float %1389, %1358
  %1391 = fadd fast float %1384, 5.000000e-01
  %1392 = fadd fast float %1386, 5.000000e-01
  %1393 = fadd fast float %1388, 5.000000e-01
  %1394 = fadd fast float %1390, 5.000000e-01
  %1395 = fmul fast float %1339, 0x3FD08654A0000000
  %1396 = fmul fast float %1395, %1356
  %1397 = fmul fast float %1330, 0x3FD08654A0000000
  %1398 = fmul fast float %1397, %1357
  %1399 = fmul fast float %1321, 0x3FD08654A0000000
  %1400 = fmul fast float %1399, %1358
  %1401 = fmul fast float %1341, 0x3FD08654A0000000
  %1402 = fmul fast float %1401, %1356
  %1403 = fadd fast float %1396, 5.000000e-01
  %1404 = fadd fast float %1398, 5.000000e-01
  %1405 = fadd fast float %1400, 5.000000e-01
  %1406 = fadd fast float %1402, 5.000000e-01
  %1407 = fmul fast float %1332, 0x3FD08654A0000000
  %1408 = fmul fast float %1407, %1357
  %1409 = fmul fast float %1323, 0x3FD08654A0000000
  %1410 = fmul fast float %1409, %1358
  %1411 = fmul fast float %1338, 0x3FD08654A0000000
  %1412 = fmul fast float %1411, %1356
  %1413 = fmul fast float %1329, 0x3FD08654A0000000
  %1414 = fmul fast float %1413, %1357
  %1415 = fadd fast float %1408, 5.000000e-01
  %1416 = fadd fast float %1410, 5.000000e-01
  %1417 = fadd fast float %1412, 5.000000e-01
  %1418 = fadd fast float %1414, 5.000000e-01
  %1419 = fmul fast float %1320, 0x3FD08654A0000000
  %1420 = fmul fast float %1419, %1358
  %1421 = fmul fast float %1342, 0x3FD08654A0000000
  %1422 = fmul fast float %1421, %1356
  %1423 = fmul fast float %1333, 0x3FD08654A0000000
  %1424 = fmul fast float %1423, %1357
  %1425 = fmul fast float %1324, 0x3FD08654A0000000
  %1426 = fmul fast float %1425, %1358
  %1427 = fadd fast float %1420, 5.000000e-01
  %1428 = fadd fast float %1422, 5.000000e-01
  %1429 = fadd fast float %1424, 5.000000e-01
  %1430 = fadd fast float %1426, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1353, i32 %1354, i32 %1355, float %1346, float %1337, float %1328, float %1346, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1353, i32 %1354, i32 %1355, float %1367, float %1368, float %1369, float %1370, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1431 = add i32 %1353, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1431, i32 %1354, i32 %1355, float %1379, float %1380, float %1381, float %1382, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1432 = add i32 %1354, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1353, i32 %1432, i32 %1355, float %1391, float %1392, float %1393, float %1394, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1431, i32 %1432, i32 %1355, float %1403, float %1404, float %1405, float %1406, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1433 = add i32 %1354, 128
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1353, i32 %1433, i32 %1355, float %1415, float %1416, float %1417, float %1418, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1431, i32 %1433, i32 %1355, float %1427, float %1428, float %1429, float %1430, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1434

; <label>:1434                                    ; preds = %1319, %272, %62, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!11 = !{i32 4, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 8}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !7}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 7, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 4, i32 0, !16}
!18 = !{i32 9, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 20, i32 1, i32 2, i32 0, !16}
!19 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!20 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 25, i32 1, i32 4, i32 0, !16}
!21 = !{!22, !23}
!22 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !16}
!23 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !24}
!24 = !{i32 0, i32 14}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!28 = !{!29}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{void ()* @cs_combine_sampled_data, !"cs_combine_sampled_data", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 64, i32 1, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!40 = distinct !{!40, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!41 = distinct !{!41, !40, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !36, i64 0}
!47 = !{!48}
!48 = distinct !{!48, !49, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleR"}
!49 = distinct !{!49, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z"}
!50 = !{!51, !52, !53, !54}
!51 = distinct !{!51, !49, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleG"}
!52 = distinct !{!52, !49, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleB"}
!53 = distinct !{!53, !49, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %samplePrimaryVis"}
!54 = distinct !{!54, !49, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleAlpha"}
!55 = !{!51}
!56 = !{!48, !52, !53, !54}
!57 = !{!52}
!58 = !{!48, !51, !53, !54}
!59 = !{!60}
!60 = distinct !{!60, !61, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z: %agg.result"}
!61 = distinct !{!61, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z: %agg.result"}
!64 = distinct !{!64, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z: %agg.result"}
!67 = distinct !{!67, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

