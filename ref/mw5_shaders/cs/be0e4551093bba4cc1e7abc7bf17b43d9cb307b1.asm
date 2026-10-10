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
; shader hash: 56e87668072fd9b3a42b53957d3c92eb
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
;                                   texture    byte         r/o      T7            t13     1
;                                   texture    byte         r/o      T8            t43     1
;                                   texture    byte         r/o      T9            t11     1
;                                   texture    byte         r/o     T10            t12     1
;                                   texture     f32     2darray     T11            t23     1
;                                   texture     f32          3d     T12            t22     1
;                                   texture     f32          2d     T13            t20     1
;                                   texture     u32          2d     T14            t24     1
;                                   texture     f32          3d     T15            t25     1
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

define void @cs_combine_sampled_data_reflection_volumes() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = alloca [9 x float], align 4
  %25 = alloca [9 x float], align 4
  %26 = alloca [9 x float], align 4
  %27 = icmp ugt i32 %22, 16383
  br i1 %27, label %1901, label %28, !dx.controlflow.hints !37

; <label>:28                                      ; preds = %0
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 0
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 12
  %34 = and i32 %32, 4095
  %35 = add i32 %30, -1
  %36 = add i32 %33, %23
  %37 = call i32 @dx.op.binary.i32(i32 40, i32 %36, i32 %35)  ; UMin(a,b)
  %38 = shl i32 %37, 5
  %39 = or i32 %38, 12
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = and i32 %41, 255
  %43 = lshr i32 %41, 8
  %44 = and i32 %43, 255
  %45 = lshr i32 %41, 16
  %46 = and i32 %45, 255
  %47 = mul nuw nsw i32 %44, %42
  %48 = mul nuw nsw i32 %47, %46
  %49 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %23
  store i32 %48, i32 addrspace(3)* %49, align 4, !tbaa !38, !noalias !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %50 = add i32 %34, %23
  %51 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !38, !noalias !42
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %66, label %53

; <label>:53                                      ; preds = %28
  br label %54

; <label>:54                                      ; preds = %54, %53
  %55 = phi i32 [ %62, %54 ], [ %51, %53 ]
  %56 = phi i32 [ %58, %54 ], [ %50, %53 ]
  %57 = phi i32 [ %59, %54 ], [ 0, %53 ]
  %58 = sub nsw i32 %56, %55
  %59 = add nuw nsw i32 %57, 1
  %60 = icmp slt i32 %59, 64
  %61 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %59
  %62 = load i32, i32 addrspace(3)* %61, align 4, !tbaa !38, !noalias !42
  %63 = icmp sge i32 %58, %62
  %64 = and i1 %60, %63
  br i1 %64, label %54, label %65

; <label>:65                                      ; preds = %54
  br label %66

; <label>:66                                      ; preds = %65, %28
  %67 = phi i32 [ %50, %28 ], [ %58, %65 ]
  %68 = phi i32 [ 0, %28 ], [ %59, %65 ]
  %69 = add nsw i32 %68, %33
  %70 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.i32 %70, 0
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %1901, !dx.controlflow.hints !46

; <label>:73                                      ; preds = %66
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %75)  ; Countbits(value)
  %77 = shl i32 %69, 5
  %78 = or i32 %77, 12
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = or i32 %77, 16
  %82 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = or i32 %77, 28
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %86, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = and i32 %80, 255
  %90 = lshr i32 %80, 8
  %91 = and i32 %90, 255
  %92 = lshr i32 %80, 16
  %93 = and i32 %92, 255
  %94 = mul nuw nsw i32 %91, %89
  %95 = udiv i32 %67, %94
  %96 = urem i32 %67, %94
  %97 = udiv i32 %96, %89
  %98 = urem i32 %96, %89
  %99 = shl i32 %69, 6
  %100 = or i32 %99, 56
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = or i32 %99, 60
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = icmp ugt i32 %89, 1
  %109 = select i1 %108, float 0.000000e+00, float 5.000000e-01
  %110 = icmp ugt i32 %91, 1
  %111 = select i1 %110, float 0.000000e+00, float 5.000000e-01
  %112 = icmp ugt i32 %93, 1
  %113 = select i1 %112, float 0.000000e+00, float 5.000000e-01
  %114 = uitofp i32 %89 to float
  %115 = uitofp i32 %91 to float
  %116 = uitofp i32 %93 to float
  %117 = fadd fast float %114, -1.000000e+00
  %118 = fadd fast float %115, -1.000000e+00
  %119 = fadd fast float %116, -1.000000e+00
  %120 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %117)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %118)  ; FMax(a,b)
  %122 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %119)  ; FMax(a,b)
  %123 = fdiv fast float 1.000000e+00, %120
  %124 = fdiv fast float 1.000000e+00, %121
  %125 = fdiv fast float 1.000000e+00, %122
  %126 = uitofp i32 %98 to float
  %127 = uitofp i32 %97 to float
  %128 = uitofp i32 %95 to float
  %129 = fadd fast float %126, %109
  %130 = fadd fast float %127, %111
  %131 = fadd fast float %113, %128
  %132 = fmul fast float %123, %129
  %133 = fmul fast float %124, %130
  %134 = fmul fast float %125, %131
  %135 = fmul fast float %123, %107
  %136 = fsub fast float -0.000000e+00, %135
  %137 = fmul fast float %124, %107
  %138 = fsub fast float -0.000000e+00, %137
  %139 = fmul fast float %125, %107
  %140 = fsub fast float -0.000000e+00, %139
  %141 = fmul fast float %132, 5.000000e-01
  %142 = fmul fast float %133, 5.000000e-01
  %143 = fmul fast float %134, 5.000000e-01
  %144 = fsub fast float %135, %141
  %145 = fsub fast float %137, %142
  %146 = fsub fast float %139, %143
  %147 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %144)  ; FMax(a,b)
  %148 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %145)  ; FMax(a,b)
  %149 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %146)  ; FMax(a,b)
  %150 = call float @dx.op.binary.f32(i32 36, float %135, float %147)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 36, float %137, float %148)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 36, float %139, float %149)  ; FMin(a,b)
  %153 = fsub fast float 5.000000e-01, %135
  %154 = fsub fast float 5.000000e-01, %137
  %155 = fsub fast float 5.000000e-01, %139
  %156 = fsub fast float %153, %141
  %157 = fsub fast float %154, %142
  %158 = fsub fast float %155, %143
  %159 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %156)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %157)  ; FMin(a,b)
  %161 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %158)  ; FMin(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %136, float %159)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float %138, float %160)  ; FMax(a,b)
  %164 = call float @dx.op.binary.f32(i32 35, float %140, float %161)  ; FMax(a,b)
  %165 = fadd fast float %150, %132
  %166 = fadd fast float %151, %133
  %167 = fadd fast float %152, %134
  %168 = fadd fast float %165, %162
  %169 = fadd fast float %166, %163
  %170 = fadd fast float %167, %164
  %171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = or i32 %99, 16
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 1
  %176 = or i32 %99, 32
  %177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 2
  %179 = fmul fast float %178, %175
  %180 = extractvalue %dx.types.ResRet.f32 %174, 2
  %181 = extractvalue %dx.types.ResRet.f32 %177, 1
  %182 = fmul fast float %181, %180
  %183 = fsub fast float %179, %182
  %184 = fmul fast float %183, %172
  %185 = extractvalue %dx.types.ResRet.f32 %171, 1
  %186 = extractvalue %dx.types.ResRet.f32 %174, 0
  %187 = fmul fast float %178, %186
  %188 = extractvalue %dx.types.ResRet.f32 %177, 0
  %189 = fmul fast float %188, %180
  %190 = fsub fast float %187, %189
  %191 = fmul fast float %190, %185
  %192 = fsub fast float %184, %191
  %193 = extractvalue %dx.types.ResRet.f32 %171, 2
  %194 = fmul fast float %181, %186
  %195 = fmul fast float %188, %175
  %196 = fsub fast float %194, %195
  %197 = fmul fast float %196, %193
  %198 = fadd fast float %192, %197
  %199 = extractvalue %dx.types.ResRet.f32 %171, 3
  %200 = fmul fast float %183, %199
  %201 = extractvalue %dx.types.ResRet.f32 %174, 3
  %202 = fmul fast float %178, %185
  %203 = fmul fast float %181, %193
  %204 = fsub fast float %202, %203
  %205 = fmul fast float %204, %201
  %206 = fsub fast float %205, %200
  %207 = extractvalue %dx.types.ResRet.f32 %177, 3
  %208 = fmul fast float %180, %185
  %209 = fmul fast float %175, %193
  %210 = fsub fast float %208, %209
  %211 = fmul fast float %210, %207
  %212 = fsub fast float %206, %211
  %213 = fmul fast float %190, %199
  %214 = fmul fast float %178, %172
  %215 = fmul fast float %188, %193
  %216 = fsub fast float %214, %215
  %217 = fmul fast float %216, %201
  %218 = fsub fast float %213, %217
  %219 = fmul fast float %180, %172
  %220 = fmul fast float %186, %193
  %221 = fsub fast float %219, %220
  %222 = fmul fast float %221, %207
  %223 = fadd fast float %218, %222
  %224 = fmul fast float %196, %199
  %225 = fmul fast float %181, %172
  %226 = fmul fast float %188, %185
  %227 = fsub fast float %225, %226
  %228 = fmul fast float %227, %201
  %229 = fsub fast float %228, %224
  %230 = fmul fast float %175, %172
  %231 = fmul fast float %186, %185
  %232 = fsub fast float %230, %231
  %233 = fmul fast float %232, %207
  %234 = fsub fast float %229, %233
  %235 = fsub fast float %203, %202
  %236 = fsub fast float %189, %187
  %237 = fsub fast float %220, %219
  %238 = fsub fast float %226, %225
  %239 = fdiv fast float 1.000000e+00, %198
  %240 = fmul fast float %239, %183
  %241 = fmul fast float %239, %235
  %242 = fmul fast float %239, %210
  %243 = fmul fast float %239, %212
  %244 = fmul fast float %239, %236
  %245 = fmul fast float %239, %216
  %246 = fmul fast float %239, %237
  %247 = fmul fast float %239, %223
  %248 = fmul fast float %239, %196
  %249 = fmul fast float %239, %238
  %250 = fmul fast float %232, %239
  %251 = fmul fast float %239, %234
  %252 = call float @dx.op.dot4.f32(i32 56, float %240, float %241, float %242, float %243, float %168, float %169, float %170, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %253 = call float @dx.op.dot4.f32(i32 56, float %244, float %245, float %246, float %247, float %168, float %169, float %170, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %254 = call float @dx.op.dot4.f32(i32 56, float %248, float %249, float %250, float %251, float %168, float %169, float %170, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %255 = lshr i32 %105, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = and i32 %105, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = and i32 %102, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = and i32 %102, 65536
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %276, label %263, !dx.controlflow.hints !47

; <label>:263                                     ; preds = %73
  %264 = fadd fast float %168, -5.000000e-01
  %265 = fadd fast float %169, -5.000000e-01
  %266 = fadd fast float %170, -5.000000e-01
  %267 = call float @dx.op.dot3.f32(i32 55, float %264, float %265, float %266, float %256, float %258, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = fcmp fast ogt float %267, 0.000000e+00
  %269 = select i1 %268, float 1.000000e+00, float -1.000000e+00
  %270 = call float @dx.op.dot3.f32(i32 55, float %240, float %241, float %242, float %256, float %258, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %271 = call float @dx.op.dot3.f32(i32 55, float %244, float %245, float %246, float %256, float %258, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %272 = call float @dx.op.dot3.f32(i32 55, float %248, float %249, float %250, float %256, float %258, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = fmul fast float %269, %270
  %274 = fmul fast float %271, %269
  %275 = fmul fast float %272, %269
  br label %276

; <label>:276                                     ; preds = %263, %73
  %277 = phi float [ %273, %263 ], [ %256, %73 ]
  %278 = phi float [ %274, %263 ], [ %258, %73 ]
  %279 = phi float [ %275, %263 ], [ %260, %73 ]
  %280 = fadd fast float %277, %252
  %281 = fadd fast float %278, %253
  %282 = fadd fast float %279, %254
  %283 = and i32 %88, -1610612736
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %1901, !dx.controlflow.hints !48

; <label>:285                                     ; preds = %276
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = mul i32 %76, %67
  %289 = add i32 %287, %288
  %290 = icmp eq i32 %76, 0
  br i1 %290, label %462, label %291

; <label>:291                                     ; preds = %285
  br label %292

; <label>:292                                     ; preds = %368, %291
  %293 = phi float [ %457, %368 ], [ 0.000000e+00, %291 ]
  %294 = phi float [ %454, %368 ], [ 0.000000e+00, %291 ]
  %295 = phi float [ %451, %368 ], [ 0.000000e+00, %291 ]
  %296 = phi float [ %448, %368 ], [ 0.000000e+00, %291 ]
  %297 = phi float [ %445, %368 ], [ 0.000000e+00, %291 ]
  %298 = phi float [ %442, %368 ], [ 0.000000e+00, %291 ]
  %299 = phi float [ %439, %368 ], [ 0.000000e+00, %291 ]
  %300 = phi float [ %436, %368 ], [ 0.000000e+00, %291 ]
  %301 = phi float [ %433, %368 ], [ 0.000000e+00, %291 ]
  %302 = phi float [ %430, %368 ], [ 0.000000e+00, %291 ]
  %303 = phi float [ %427, %368 ], [ 0.000000e+00, %291 ]
  %304 = phi float [ %424, %368 ], [ 0.000000e+00, %291 ]
  %305 = phi float [ %421, %368 ], [ 0.000000e+00, %291 ]
  %306 = phi float [ %418, %368 ], [ 0.000000e+00, %291 ]
  %307 = phi float [ %415, %368 ], [ 0.000000e+00, %291 ]
  %308 = phi float [ %412, %368 ], [ 0.000000e+00, %291 ]
  %309 = phi float [ %409, %368 ], [ 0.000000e+00, %291 ]
  %310 = phi float [ %406, %368 ], [ 0.000000e+00, %291 ]
  %311 = phi float [ %403, %368 ], [ 0.000000e+00, %291 ]
  %312 = phi float [ %400, %368 ], [ 0.000000e+00, %291 ]
  %313 = phi float [ %397, %368 ], [ 0.000000e+00, %291 ]
  %314 = phi float [ %394, %368 ], [ 0.000000e+00, %291 ]
  %315 = phi float [ %391, %368 ], [ 0.000000e+00, %291 ]
  %316 = phi float [ %388, %368 ], [ 0.000000e+00, %291 ]
  %317 = phi float [ %385, %368 ], [ 0.000000e+00, %291 ]
  %318 = phi float [ %382, %368 ], [ 0.000000e+00, %291 ]
  %319 = phi float [ %379, %368 ], [ 0.000000e+00, %291 ]
  %320 = phi float [ %458, %368 ], [ 0.000000e+00, %291 ]
  %321 = phi i32 [ %459, %368 ], [ 0, %291 ]
  %322 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %322, align 4
  %323 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 1
  store float 0.000000e+00, float* %323, align 4
  %324 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %324, align 4
  %325 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %325, align 4
  %326 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 4
  store float 0.000000e+00, float* %326, align 4
  %327 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 5
  store float 0.000000e+00, float* %327, align 4
  %328 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 6
  store float 0.000000e+00, float* %328, align 4
  %329 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 7
  store float 0.000000e+00, float* %329, align 4
  %330 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 8
  store float 0.000000e+00, float* %330, align 4
  %331 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 0
  store float 0.000000e+00, float* %331, align 4
  %332 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 1
  store float 0.000000e+00, float* %332, align 4
  %333 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 2
  store float 0.000000e+00, float* %333, align 4
  %334 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 3
  store float 0.000000e+00, float* %334, align 4
  %335 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 4
  store float 0.000000e+00, float* %335, align 4
  %336 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 5
  store float 0.000000e+00, float* %336, align 4
  %337 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 6
  store float 0.000000e+00, float* %337, align 4
  %338 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 7
  store float 0.000000e+00, float* %338, align 4
  %339 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 8
  store float 0.000000e+00, float* %339, align 4
  %340 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 0
  store float 0.000000e+00, float* %340, align 4
  %341 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 1
  store float 0.000000e+00, float* %341, align 4
  %342 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 2
  store float 0.000000e+00, float* %342, align 4
  %343 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 3
  store float 0.000000e+00, float* %343, align 4
  %344 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 4
  store float 0.000000e+00, float* %344, align 4
  %345 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 5
  store float 0.000000e+00, float* %345, align 4
  %346 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 6
  store float 0.000000e+00, float* %346, align 4
  %347 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 7
  store float 0.000000e+00, float* %347, align 4
  %348 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 8
  store float 0.000000e+00, float* %348, align 4
  %349 = add i32 %289, %321
  br label %350

; <label>:350                                     ; preds = %350, %292
  %351 = phi i32 [ 0, %292 ], [ %366, %350 ]
  %352 = mul i32 %349, 13
  %353 = add i32 %351, %352
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %353, i32 0)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = extractvalue %dx.types.ResRet.i32 %354, 1
  %357 = and i32 %355, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %355, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = and i32 %356, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 %351
  store float %358, float* %363, align 4, !tbaa !49, !alias.scope !51, !noalias !54
  %364 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 %351
  store float %360, float* %364, align 4, !tbaa !49, !alias.scope !59, !noalias !60
  %365 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 %351
  store float %362, float* %365, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %366 = add nuw nsw i32 %351, 1
  %367 = icmp eq i32 %366, 9
  br i1 %367, label %368, label %350

; <label>:368                                     ; preds = %350
  %369 = add i32 %352, 12
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %369, i32 0)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %375, %373
  %377 = load float, float* %322, align 4, !tbaa !49, !noalias !63
  %378 = fmul fast float %377, %376
  %379 = fadd fast float %378, %319
  %380 = load float, float* %323, align 4, !tbaa !49, !noalias !63
  %381 = fmul fast float %380, %376
  %382 = fadd fast float %381, %318
  %383 = load float, float* %324, align 4, !tbaa !49, !noalias !63
  %384 = fmul fast float %383, %376
  %385 = fadd fast float %384, %317
  %386 = load float, float* %325, align 4, !tbaa !49, !noalias !63
  %387 = fmul fast float %386, %376
  %388 = fadd fast float %387, %316
  %389 = load float, float* %326, align 4, !tbaa !49, !noalias !63
  %390 = fmul fast float %389, %376
  %391 = fadd fast float %390, %315
  %392 = load float, float* %327, align 4, !tbaa !49, !noalias !63
  %393 = fmul fast float %392, %376
  %394 = fadd fast float %393, %314
  %395 = load float, float* %328, align 4, !tbaa !49, !noalias !63
  %396 = fmul fast float %395, %376
  %397 = fadd fast float %396, %313
  %398 = load float, float* %329, align 4, !tbaa !49, !noalias !63
  %399 = fmul fast float %398, %376
  %400 = fadd fast float %399, %312
  %401 = load float, float* %330, align 4, !tbaa !49, !noalias !63
  %402 = fmul fast float %401, %376
  %403 = fadd fast float %402, %311
  %404 = load float, float* %331, align 4, !tbaa !49, !noalias !66
  %405 = fmul fast float %404, %376
  %406 = fadd fast float %405, %310
  %407 = load float, float* %332, align 4, !tbaa !49, !noalias !66
  %408 = fmul fast float %407, %376
  %409 = fadd fast float %408, %309
  %410 = load float, float* %333, align 4, !tbaa !49, !noalias !66
  %411 = fmul fast float %410, %376
  %412 = fadd fast float %411, %308
  %413 = load float, float* %334, align 4, !tbaa !49, !noalias !66
  %414 = fmul fast float %413, %376
  %415 = fadd fast float %414, %307
  %416 = load float, float* %335, align 4, !tbaa !49, !noalias !66
  %417 = fmul fast float %416, %376
  %418 = fadd fast float %417, %306
  %419 = load float, float* %336, align 4, !tbaa !49, !noalias !66
  %420 = fmul fast float %419, %376
  %421 = fadd fast float %420, %305
  %422 = load float, float* %337, align 4, !tbaa !49, !noalias !66
  %423 = fmul fast float %422, %376
  %424 = fadd fast float %423, %304
  %425 = load float, float* %338, align 4, !tbaa !49, !noalias !66
  %426 = fmul fast float %425, %376
  %427 = fadd fast float %426, %303
  %428 = load float, float* %339, align 4, !tbaa !49, !noalias !66
  %429 = fmul fast float %428, %376
  %430 = fadd fast float %429, %302
  %431 = load float, float* %340, align 4, !tbaa !49, !noalias !69
  %432 = fmul fast float %431, %376
  %433 = fadd fast float %432, %301
  %434 = load float, float* %341, align 4, !tbaa !49, !noalias !69
  %435 = fmul fast float %434, %376
  %436 = fadd fast float %435, %300
  %437 = load float, float* %342, align 4, !tbaa !49, !noalias !69
  %438 = fmul fast float %437, %376
  %439 = fadd fast float %438, %299
  %440 = load float, float* %343, align 4, !tbaa !49, !noalias !69
  %441 = fmul fast float %440, %376
  %442 = fadd fast float %441, %298
  %443 = load float, float* %344, align 4, !tbaa !49, !noalias !69
  %444 = fmul fast float %443, %376
  %445 = fadd fast float %444, %297
  %446 = load float, float* %345, align 4, !tbaa !49, !noalias !69
  %447 = fmul fast float %446, %376
  %448 = fadd fast float %447, %296
  %449 = load float, float* %346, align 4, !tbaa !49, !noalias !69
  %450 = fmul fast float %449, %376
  %451 = fadd fast float %450, %295
  %452 = load float, float* %347, align 4, !tbaa !49, !noalias !69
  %453 = fmul fast float %452, %376
  %454 = fadd fast float %453, %294
  %455 = load float, float* %348, align 4, !tbaa !49, !noalias !69
  %456 = fmul fast float %455, %376
  %457 = fadd fast float %456, %293
  %458 = fadd fast float %376, %320
  %459 = add nuw i32 %321, 1
  %460 = icmp eq i32 %459, %76
  br i1 %460, label %461, label %292

; <label>:461                                     ; preds = %368
  br label %462

; <label>:462                                     ; preds = %461, %285
  %463 = phi float [ 0.000000e+00, %285 ], [ %457, %461 ]
  %464 = phi float [ 0.000000e+00, %285 ], [ %454, %461 ]
  %465 = phi float [ 0.000000e+00, %285 ], [ %451, %461 ]
  %466 = phi float [ 0.000000e+00, %285 ], [ %448, %461 ]
  %467 = phi float [ 0.000000e+00, %285 ], [ %445, %461 ]
  %468 = phi float [ 0.000000e+00, %285 ], [ %442, %461 ]
  %469 = phi float [ 0.000000e+00, %285 ], [ %439, %461 ]
  %470 = phi float [ 0.000000e+00, %285 ], [ %436, %461 ]
  %471 = phi float [ 0.000000e+00, %285 ], [ %433, %461 ]
  %472 = phi float [ 0.000000e+00, %285 ], [ %430, %461 ]
  %473 = phi float [ 0.000000e+00, %285 ], [ %427, %461 ]
  %474 = phi float [ 0.000000e+00, %285 ], [ %424, %461 ]
  %475 = phi float [ 0.000000e+00, %285 ], [ %421, %461 ]
  %476 = phi float [ 0.000000e+00, %285 ], [ %418, %461 ]
  %477 = phi float [ 0.000000e+00, %285 ], [ %415, %461 ]
  %478 = phi float [ 0.000000e+00, %285 ], [ %412, %461 ]
  %479 = phi float [ 0.000000e+00, %285 ], [ %409, %461 ]
  %480 = phi float [ 0.000000e+00, %285 ], [ %406, %461 ]
  %481 = phi float [ 0.000000e+00, %285 ], [ %403, %461 ]
  %482 = phi float [ 0.000000e+00, %285 ], [ %400, %461 ]
  %483 = phi float [ 0.000000e+00, %285 ], [ %397, %461 ]
  %484 = phi float [ 0.000000e+00, %285 ], [ %394, %461 ]
  %485 = phi float [ 0.000000e+00, %285 ], [ %391, %461 ]
  %486 = phi float [ 0.000000e+00, %285 ], [ %388, %461 ]
  %487 = phi float [ 0.000000e+00, %285 ], [ %385, %461 ]
  %488 = phi float [ 0.000000e+00, %285 ], [ %382, %461 ]
  %489 = phi float [ 0.000000e+00, %285 ], [ %379, %461 ]
  %490 = phi float [ 0.000000e+00, %285 ], [ %458, %461 ]
  %491 = fcmp fast ogt float %490, 0.000000e+00
  %492 = fcmp fast une float %490, 1.000000e+00
  %493 = and i1 %491, %492
  br i1 %493, label %494, label %523, !dx.controlflow.hints !72

; <label>:494                                     ; preds = %462
  %495 = fdiv fast float 1.000000e+00, %490
  %496 = fmul fast float %495, %489
  %497 = fmul fast float %495, %488
  %498 = fmul fast float %495, %487
  %499 = fmul fast float %495, %486
  %500 = fmul fast float %495, %485
  %501 = fmul fast float %495, %484
  %502 = fmul fast float %495, %483
  %503 = fmul fast float %495, %482
  %504 = fmul fast float %495, %481
  %505 = fmul fast float %495, %480
  %506 = fmul fast float %495, %479
  %507 = fmul fast float %495, %478
  %508 = fmul fast float %495, %477
  %509 = fmul fast float %495, %476
  %510 = fmul fast float %495, %475
  %511 = fmul fast float %495, %474
  %512 = fmul fast float %495, %473
  %513 = fmul fast float %495, %472
  %514 = fmul fast float %495, %471
  %515 = fmul fast float %495, %470
  %516 = fmul fast float %495, %469
  %517 = fmul fast float %495, %468
  %518 = fmul fast float %495, %467
  %519 = fmul fast float %495, %466
  %520 = fmul fast float %495, %465
  %521 = fmul fast float %495, %464
  %522 = fmul fast float %495, %463
  br label %523

; <label>:523                                     ; preds = %494, %462
  %524 = phi float [ %522, %494 ], [ %463, %462 ]
  %525 = phi float [ %521, %494 ], [ %464, %462 ]
  %526 = phi float [ %520, %494 ], [ %465, %462 ]
  %527 = phi float [ %519, %494 ], [ %466, %462 ]
  %528 = phi float [ %518, %494 ], [ %467, %462 ]
  %529 = phi float [ %517, %494 ], [ %468, %462 ]
  %530 = phi float [ %516, %494 ], [ %469, %462 ]
  %531 = phi float [ %515, %494 ], [ %470, %462 ]
  %532 = phi float [ %514, %494 ], [ %471, %462 ]
  %533 = phi float [ %513, %494 ], [ %472, %462 ]
  %534 = phi float [ %512, %494 ], [ %473, %462 ]
  %535 = phi float [ %511, %494 ], [ %474, %462 ]
  %536 = phi float [ %510, %494 ], [ %475, %462 ]
  %537 = phi float [ %509, %494 ], [ %476, %462 ]
  %538 = phi float [ %508, %494 ], [ %477, %462 ]
  %539 = phi float [ %507, %494 ], [ %478, %462 ]
  %540 = phi float [ %506, %494 ], [ %479, %462 ]
  %541 = phi float [ %505, %494 ], [ %480, %462 ]
  %542 = phi float [ %504, %494 ], [ %481, %462 ]
  %543 = phi float [ %503, %494 ], [ %482, %462 ]
  %544 = phi float [ %502, %494 ], [ %483, %462 ]
  %545 = phi float [ %501, %494 ], [ %484, %462 ]
  %546 = phi float [ %500, %494 ], [ %485, %462 ]
  %547 = phi float [ %499, %494 ], [ %486, %462 ]
  %548 = phi float [ %498, %494 ], [ %487, %462 ]
  %549 = phi float [ %497, %494 ], [ %488, %462 ]
  %550 = phi float [ %496, %494 ], [ %489, %462 ]
  %551 = phi float [ 1.000000e+00, %494 ], [ %490, %462 ]
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = fsub fast float 1.000000e+00, %552
  %554 = fcmp fast ogt float %553, 0.000000e+00
  br i1 %554, label %555, label %1323, !dx.controlflow.hints !73

; <label>:555                                     ; preds = %523
  %556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.i32 %556, 0
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %559, label %1168, !dx.controlflow.hints !74

; <label>:559                                     ; preds = %555
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %563 = fsub fast float %280, %561
  %564 = fsub fast float %281, %562
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = fmul fast float %563, %566
  %569 = fmul fast float %564, %567
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = fmul fast float %571, %568
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %574 = fadd fast float %572, %573
  %575 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %576 = fmul fast float %575, %569
  %577 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %578 = fadd fast float %576, %577
  %579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %574, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %585 = fsub fast float %583, %584
  %586 = fmul fast float %585, %580
  %587 = fadd fast float %586, %584
  %588 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %589 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %590 = fsub fast float %588, %589
  %591 = fmul fast float %590, %581
  %592 = fadd fast float %591, %589
  %593 = fsub fast float %282, %587
  %594 = fsub fast float %592, %587
  %595 = fdiv fast float %593, %594
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = fmul fast float %598, %596
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %601 = fadd fast float %599, %600
  %602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %574, float %578, float %601, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = fmul fast float %607, %603
  %611 = fmul fast float %608, %604
  %612 = fmul fast float %609, %605
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = fadd fast float %610, %614
  %618 = fadd fast float %611, %615
  %619 = fadd fast float %612, %616
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = fmul fast float %621, %568
  %623 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %624 = fadd fast float %622, %623
  %625 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %626 = fmul fast float %625, %569
  %627 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %628 = fadd fast float %626, %627
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %632 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %633 = extractvalue %dx.types.CBufRet.f32 %629, 3
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %624, float %628, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = extractvalue %dx.types.ResRet.f32 %639, 3
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %624, float %628, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = extractvalue %dx.types.ResRet.f32 %644, 3
  %649 = fmul fast float %640, %617
  %650 = fmul fast float %645, %617
  %651 = fmul fast float %647, %617
  %652 = fmul fast float %643, %617
  %653 = fadd fast float %649, %630
  %654 = fadd fast float %650, %631
  %655 = fadd fast float %651, %632
  %656 = fadd fast float %652, %633
  %657 = fmul fast float %641, %617
  %658 = fmul fast float %646, %617
  %659 = fadd fast float %657, %635
  %660 = fadd fast float %658, %636
  %661 = fmul fast float %642, %617
  %662 = fmul fast float %648, %617
  %663 = fadd fast float %661, %637
  %664 = fadd fast float %662, %638
  %665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %624, float %628, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.ResRet.f32 %665, 1
  %668 = extractvalue %dx.types.ResRet.f32 %665, 2
  %669 = extractvalue %dx.types.ResRet.f32 %665, 3
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %624, float %628, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = extractvalue %dx.types.ResRet.f32 %670, 3
  %675 = fmul fast float %666, %618
  %676 = fmul fast float %671, %618
  %677 = fmul fast float %673, %618
  %678 = fmul fast float %669, %618
  %679 = fadd fast float %653, %675
  %680 = fadd fast float %654, %676
  %681 = fadd fast float %655, %677
  %682 = fadd fast float %656, %678
  %683 = fmul fast float %667, %618
  %684 = fmul fast float %672, %618
  %685 = fadd fast float %659, %683
  %686 = fadd fast float %660, %684
  %687 = fmul fast float %668, %618
  %688 = fmul fast float %674, %618
  %689 = fadd fast float %663, %687
  %690 = fadd fast float %664, %688
  %691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %624, float %628, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = extractvalue %dx.types.ResRet.f32 %691, 1
  %694 = extractvalue %dx.types.ResRet.f32 %691, 2
  %695 = extractvalue %dx.types.ResRet.f32 %691, 3
  %696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %624, float %628, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = extractvalue %dx.types.ResRet.f32 %696, 3
  %701 = fmul fast float %692, %619
  %702 = fmul fast float %697, %619
  %703 = fmul fast float %699, %619
  %704 = fmul fast float %695, %619
  %705 = fadd fast float %679, %701
  %706 = fadd fast float %680, %702
  %707 = fadd fast float %681, %703
  %708 = fadd fast float %682, %704
  %709 = fmul fast float %693, %619
  %710 = fmul fast float %698, %619
  %711 = fadd fast float %685, %709
  %712 = fadd fast float %686, %710
  %713 = fmul fast float %694, %619
  %714 = fmul fast float %700, %619
  %715 = fadd fast float %689, %713
  %716 = fadd fast float %690, %714
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = fsub fast float %280, %718
  %720 = fsub fast float %561, %280
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float %719)  ; FMax(a,b)
  %722 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %723 = fsub fast float %281, %722
  %724 = fsub fast float %562, %281
  %725 = call float @dx.op.binary.f32(i32 35, float %724, float %723)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float %721, float %725)  ; FMax(a,b)
  %727 = extractvalue %dx.types.CBufRet.f32 %565, 3
  %728 = fmul fast float %727, %726
  %729 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %735 = fsub fast float %731, %705
  %736 = fsub fast float %732, %706
  %737 = fsub fast float %733, %707
  %738 = fsub fast float %734, %708
  %739 = fmul fast float %735, %729
  %740 = fmul fast float %736, %729
  %741 = fmul fast float %737, %729
  %742 = fmul fast float %738, %729
  %743 = fadd fast float %739, %705
  %744 = fadd fast float %740, %706
  %745 = fadd fast float %741, %707
  %746 = fadd fast float %742, %708
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %750 = fsub fast float %748, %711
  %751 = fsub fast float %749, %712
  %752 = fmul fast float %750, %729
  %753 = fmul fast float %751, %729
  %754 = fadd fast float %752, %711
  %755 = fadd fast float %753, %712
  %756 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %757 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %758 = fsub fast float %756, %715
  %759 = fsub fast float %757, %716
  %760 = fmul fast float %758, %729
  %761 = fmul fast float %759, %729
  %762 = fadd fast float %760, %715
  %763 = fadd fast float %761, %716
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = fmul fast float %765, %743
  %767 = fmul fast float %765, %744
  %768 = fmul fast float %765, %745
  %769 = fmul fast float %765, %746
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = fmul fast float %771, %754
  %773 = fmul fast float %771, %755
  %774 = fadd fast float %772, %766
  %775 = fadd fast float %773, %768
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = fmul fast float %777, %762
  %779 = fmul fast float %777, %763
  %780 = fadd fast float %774, %778
  %781 = fadd fast float %775, %779
  %782 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %783 = fmul fast float %782, %743
  %784 = fmul fast float %782, %744
  %785 = fmul fast float %782, %745
  %786 = fmul fast float %782, %746
  %787 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %788 = fmul fast float %787, %754
  %789 = fmul fast float %787, %755
  %790 = fadd fast float %788, %783
  %791 = fadd fast float %789, %785
  %792 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %793 = fmul fast float %792, %762
  %794 = fmul fast float %792, %763
  %795 = fadd fast float %790, %793
  %796 = fadd fast float %791, %794
  %797 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %798 = fmul fast float %797, %743
  %799 = fmul fast float %797, %744
  %800 = fmul fast float %797, %745
  %801 = fmul fast float %797, %746
  %802 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %803 = fmul fast float %802, %754
  %804 = fmul fast float %802, %755
  %805 = fadd fast float %803, %798
  %806 = fadd fast float %804, %800
  %807 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %808 = fmul fast float %807, %762
  %809 = fmul fast float %807, %763
  %810 = fadd fast float %805, %808
  %811 = fadd fast float %806, %809
  %812 = fmul fast float %799, %799
  %813 = fmul fast float %811, %811
  %814 = fmul fast float %801, %801
  %815 = fadd fast float %814, %812
  %816 = fadd fast float %815, %813
  %817 = call float @dx.op.unary.f32(i32 24, float %816)  ; Sqrt(value)
  %818 = fcmp fast ugt float %817, 0.000000e+00
  br i1 %818, label %819, label %834, !dx.controlflow.hints !75

; <label>:819                                     ; preds = %559
  %820 = fsub fast float -0.000000e+00, %801
  %821 = fdiv fast float %820, %817
  %822 = fsub fast float -0.000000e+00, %799
  %823 = fdiv fast float %822, %817
  %824 = fdiv fast float %811, %817
  %825 = fmul fast float %810, 0x3FE279A760000000
  %826 = fmul fast float %823, %799
  %827 = fmul fast float %824, %811
  %828 = fmul fast float %821, %801
  %829 = fadd fast float %826, %828
  %830 = fsub fast float %829, %827
  %831 = call float @dx.op.unary.f32(i32 6, float %830)  ; FAbs(value)
  %832 = fadd fast float %831, 0x3DDB7CDFE0000000
  %833 = fdiv fast float %825, %832
  br label %834

; <label>:834                                     ; preds = %819, %559
  %835 = phi float [ %833, %819 ], [ 1.000000e+00, %559 ]
  %836 = fmul fast float %784, %784
  %837 = fmul fast float %796, %796
  %838 = fmul fast float %786, %786
  %839 = fadd fast float %838, %836
  %840 = fadd fast float %839, %837
  %841 = call float @dx.op.unary.f32(i32 24, float %840)  ; Sqrt(value)
  %842 = fcmp fast ugt float %841, 0.000000e+00
  br i1 %842, label %843, label %858, !dx.controlflow.hints !75

; <label>:843                                     ; preds = %834
  %844 = fsub fast float -0.000000e+00, %786
  %845 = fdiv fast float %844, %841
  %846 = fsub fast float -0.000000e+00, %784
  %847 = fdiv fast float %846, %841
  %848 = fdiv fast float %796, %841
  %849 = fmul fast float %795, 0x3FE279A760000000
  %850 = fmul fast float %847, %784
  %851 = fmul fast float %848, %796
  %852 = fmul fast float %845, %786
  %853 = fadd fast float %850, %852
  %854 = fsub fast float %853, %851
  %855 = call float @dx.op.unary.f32(i32 6, float %854)  ; FAbs(value)
  %856 = fadd fast float %855, 0x3DDB7CDFE0000000
  %857 = fdiv fast float %849, %856
  br label %858

; <label>:858                                     ; preds = %843, %834
  %859 = phi float [ %857, %843 ], [ 1.000000e+00, %834 ]
  %860 = call float @dx.op.binary.f32(i32 36, float %859, float %835)  ; FMin(a,b)
  %861 = fmul fast float %767, %767
  %862 = fmul fast float %781, %781
  %863 = fmul fast float %769, %769
  %864 = fadd fast float %863, %861
  %865 = fadd fast float %864, %862
  %866 = call float @dx.op.unary.f32(i32 24, float %865)  ; Sqrt(value)
  %867 = fcmp fast ugt float %866, 0.000000e+00
  br i1 %867, label %868, label %883, !dx.controlflow.hints !75

; <label>:868                                     ; preds = %858
  %869 = fsub fast float -0.000000e+00, %769
  %870 = fdiv fast float %869, %866
  %871 = fsub fast float -0.000000e+00, %767
  %872 = fdiv fast float %871, %866
  %873 = fdiv fast float %781, %866
  %874 = fmul fast float %780, 0x3FE279A760000000
  %875 = fmul fast float %872, %767
  %876 = fmul fast float %873, %781
  %877 = fmul fast float %870, %769
  %878 = fadd fast float %875, %877
  %879 = fsub fast float %878, %876
  %880 = call float @dx.op.unary.f32(i32 6, float %879)  ; FAbs(value)
  %881 = fadd fast float %880, 0x3DDB7CDFE0000000
  %882 = fdiv fast float %874, %881
  br label %883

; <label>:883                                     ; preds = %868, %858
  %884 = phi float [ %882, %868 ], [ 1.000000e+00, %858 ]
  %885 = call float @dx.op.binary.f32(i32 36, float %884, float %860)  ; FMin(a,b)
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = fcmp fast olt float %886, 1.000000e+00
  br i1 %887, label %888, label %898, !dx.controlflow.hints !76

; <label>:888                                     ; preds = %883
  %889 = fmul fast float %886, %767
  %890 = fmul fast float %886, %781
  %891 = fmul fast float %886, %769
  %892 = fmul fast float %886, %784
  %893 = fmul fast float %886, %796
  %894 = fmul fast float %886, %786
  %895 = fmul fast float %886, %799
  %896 = fmul fast float %886, %811
  %897 = fmul fast float %886, %801
  br label %898

; <label>:898                                     ; preds = %888, %883
  %899 = phi float [ %895, %888 ], [ %799, %883 ]
  %900 = phi float [ %896, %888 ], [ %811, %883 ]
  %901 = phi float [ %897, %888 ], [ %801, %883 ]
  %902 = phi float [ %892, %888 ], [ %784, %883 ]
  %903 = phi float [ %893, %888 ], [ %796, %883 ]
  %904 = phi float [ %894, %888 ], [ %786, %883 ]
  %905 = phi float [ %889, %888 ], [ %767, %883 ]
  %906 = phi float [ %890, %888 ], [ %781, %883 ]
  %907 = phi float [ %891, %888 ], [ %769, %883 ]
  %908 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %780)  ; FMax(a,b)
  %909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %795)  ; FMax(a,b)
  %910 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %810)  ; FMax(a,b)
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = fcmp fast ogt float %912, 0.000000e+00
  %914 = fcmp fast oge float %568, 0.000000e+00
  %915 = and i1 %914, %913
  %916 = fcmp fast ole float %568, 1.000000e+00
  %917 = and i1 %916, %915
  %918 = fcmp fast oge float %569, 0.000000e+00
  %919 = and i1 %918, %917
  %920 = fcmp fast ole float %569, 1.000000e+00
  %921 = and i1 %920, %919
  br i1 %921, label %922, label %1067, !dx.controlflow.hints !77

; <label>:922                                     ; preds = %898
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %926 = fmul fast float %924, %568
  %927 = fmul fast float %925, %569
  %928 = call float @dx.op.unary.f32(i32 27, float %926)  ; Round_ni(value)
  %929 = call float @dx.op.unary.f32(i32 27, float %927)  ; Round_ni(value)
  %930 = fptosi float %928 to i32
  %931 = fptosi float %929 to i32
  %932 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %930, i32 %931, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = and i32 %933, 65535
  %935 = lshr i32 %933, 16
  %936 = icmp eq i32 %934, 65535
  br i1 %936, label %973, label %937, !dx.controlflow.hints !78

; <label>:937                                     ; preds = %922
  %938 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %939 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %941 = fmul fast float %939, %568
  %942 = fmul fast float %940, %569
  %943 = fmul fast float %941, 1.250000e-01
  %944 = fmul fast float %942, 1.250000e-01
  %945 = call float @dx.op.unary.f32(i32 27, float %943)  ; Round_ni(value)
  %946 = call float @dx.op.unary.f32(i32 27, float %944)  ; Round_ni(value)
  %947 = fmul fast float %945, 8.000000e+00
  %948 = fmul fast float %946, 8.000000e+00
  %949 = and i32 %933, 255
  %950 = lshr i32 %933, 8
  %951 = and i32 %950, 255
  %952 = mul nuw nsw i32 %949, 9
  %953 = uitofp i32 %952 to float
  %954 = mul nuw nsw i32 %951, 9
  %955 = uitofp i32 %954 to float
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fadd fast float %956, %941
  %958 = fsub fast float %957, %947
  %959 = fadd fast float %955, 5.000000e-01
  %960 = fadd fast float %959, %942
  %961 = fsub fast float %960, %948
  %962 = fdiv fast float %958, %912
  %963 = fdiv fast float %961, %938
  %964 = fmul fast float %596, 4.375000e-01
  %965 = fadd fast float %964, 3.125000e-02
  %966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %962, float %963, float %965, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = fadd fast float %967, %908
  %971 = fadd fast float %968, %909
  %972 = fadd fast float %969, %910
  br label %973

; <label>:973                                     ; preds = %937, %922
  %974 = phi float [ %972, %937 ], [ %910, %922 ]
  %975 = phi float [ %971, %937 ], [ %909, %922 ]
  %976 = phi float [ %970, %937 ], [ %908, %922 ]
  %977 = icmp eq i32 %935, 65535
  br i1 %977, label %1067, label %978, !dx.controlflow.hints !79

; <label>:978                                     ; preds = %973
  %979 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %982 = fmul fast float %980, %568
  %983 = fmul fast float %981, %569
  %984 = fmul fast float %982, 1.250000e-01
  %985 = fmul fast float %983, 1.250000e-01
  %986 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %987 = call float @dx.op.unary.f32(i32 27, float %985)  ; Round_ni(value)
  %988 = fmul fast float %986, 8.000000e+00
  %989 = fmul fast float %987, 8.000000e+00
  %990 = fsub fast float %982, %988
  %991 = fsub fast float %983, %989
  %992 = fadd fast float %990, 5.000000e-01
  %993 = fadd fast float %991, 5.000000e-01
  %994 = and i32 %935, 255
  %995 = lshr i32 %933, 24
  %996 = mul nuw nsw i32 %994, 9
  %997 = uitofp i32 %996 to float
  %998 = mul nuw nsw i32 %995, 9
  %999 = uitofp i32 %998 to float
  %1000 = fadd fast float %992, %997
  %1001 = fadd fast float %993, %999
  %1002 = fdiv fast float %1000, %912
  %1003 = fdiv fast float %1001, %979
  %1004 = fmul fast float %596, 4.375000e-01
  %1005 = fadd fast float %1004, 3.125000e-02
  %1006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %1002, float %1003, float %1005, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.ResRet.f32 %1006, 2
  %1010 = fadd fast float %1004, 5.312500e-01
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %1002, float %1003, float %1010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = fmul fast float %1012, 2.000000e+00
  %1016 = fmul fast float %1013, 2.000000e+00
  %1017 = fmul fast float %1014, 2.000000e+00
  %1018 = fadd fast float %1015, -1.000000e+00
  %1019 = fadd fast float %1016, -1.000000e+00
  %1020 = fadd fast float %1017, -1.000000e+00
  %1021 = fmul fast float %1018, %1018
  %1022 = fmul fast float %1019, %1019
  %1023 = fadd fast float %1021, %1022
  %1024 = fmul fast float %1020, %1020
  %1025 = fadd fast float %1023, %1024
  %1026 = call float @dx.op.unary.f32(i32 24, float %1025)  ; Sqrt(value)
  %1027 = fcmp fast ogt float %1026, 0.000000e+00
  br i1 %1027, label %1028, label %1032, !dx.controlflow.hints !80

; <label>:1028                                    ; preds = %978
  %1029 = fdiv fast float %1018, %1026
  %1030 = fdiv fast float %1019, %1026
  %1031 = fdiv fast float %1020, %1026
  br label %1032

; <label>:1032                                    ; preds = %1028, %978
  %1033 = phi float [ %1029, %1028 ], [ 0.000000e+00, %978 ]
  %1034 = phi float [ %1030, %1028 ], [ 0.000000e+00, %978 ]
  %1035 = phi float [ %1031, %1028 ], [ 0.000000e+00, %978 ]
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = fsub fast float %280, %1037
  %1040 = fsub fast float %281, %1038
  %1041 = fmul fast float %1039, %1039
  %1042 = fmul fast float %1040, %1040
  %1043 = fadd fast float %1041, %1042
  %1044 = call float @dx.op.unary.f32(i32 24, float %1043)  ; Sqrt(value)
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = fsub fast float %1044, %1046
  %1049 = fdiv fast float %1048, %1047
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = fmul fast float %1050, 2.000000e+00
  %1052 = fsub fast float 3.000000e+00, %1051
  %1053 = fmul fast float %1050, %1050
  %1054 = fmul fast float %1053, %1052
  %1055 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1035, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1055)  ; FMax(a,b)
  %1057 = fmul fast float %1056, 0x400C5BF8A0000000
  %1058 = fmul fast float %1054, %1007
  %1059 = fmul fast float %1058, %1057
  %1060 = fadd fast float %1059, %976
  %1061 = fmul fast float %1054, %1008
  %1062 = fmul fast float %1061, %1057
  %1063 = fadd fast float %1062, %975
  %1064 = fmul fast float %1054, %1009
  %1065 = fmul fast float %1064, %1057
  %1066 = fadd fast float %1065, %974
  br label %1067

; <label>:1067                                    ; preds = %1032, %973, %898
  %1068 = phi float [ %1066, %1032 ], [ %974, %973 ], [ %910, %898 ]
  %1069 = phi float [ %1063, %1032 ], [ %975, %973 ], [ %909, %898 ]
  %1070 = phi float [ %1060, %1032 ], [ %976, %973 ], [ %908, %898 ]
  %1071 = fcmp fast ogt float %282, %592
  %1072 = and i1 %914, %1071
  %1073 = and i1 %916, %1072
  %1074 = and i1 %918, %1073
  %1075 = and i1 %920, %1074
  br i1 %1075, label %1076, label %1133, !dx.controlflow.hints !81

; <label>:1076                                    ; preds = %1067
  %1077 = fmul fast float %594, 0x3FC24924A0000000
  %1078 = fsub fast float %282, %592
  %1079 = fdiv fast float %1078, %1077
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1087 = fsub fast float %1082, %1070
  %1088 = fsub fast float %1084, %905
  %1089 = fsub fast float %1085, %906
  %1090 = fsub fast float %1086, %907
  %1091 = fmul fast float %1087, %1080
  %1092 = fmul fast float %1088, %1080
  %1093 = fmul fast float %1089, %1080
  %1094 = fmul fast float %1090, %1080
  %1095 = fadd fast float %1091, %1070
  %1096 = fadd fast float %1092, %905
  %1097 = fadd fast float %1093, %906
  %1098 = fadd fast float %1094, %907
  %1099 = extractvalue %dx.types.CBufRet.f32 %1081, 1
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1104 = fsub fast float %1099, %1069
  %1105 = fsub fast float %1101, %902
  %1106 = fsub fast float %1102, %903
  %1107 = fsub fast float %1103, %904
  %1108 = fmul fast float %1104, %1080
  %1109 = fmul fast float %1105, %1080
  %1110 = fmul fast float %1106, %1080
  %1111 = fmul fast float %1107, %1080
  %1112 = fadd fast float %1108, %1069
  %1113 = fadd fast float %1109, %902
  %1114 = fadd fast float %1110, %903
  %1115 = fadd fast float %1111, %904
  %1116 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fsub fast float %1116, %1068
  %1122 = fsub fast float %1118, %899
  %1123 = fsub fast float %1119, %900
  %1124 = fsub fast float %1120, %901
  %1125 = fmul fast float %1121, %1080
  %1126 = fmul fast float %1122, %1080
  %1127 = fmul fast float %1123, %1080
  %1128 = fmul fast float %1124, %1080
  %1129 = fadd fast float %1125, %1068
  %1130 = fadd fast float %1126, %899
  %1131 = fadd fast float %1127, %900
  %1132 = fadd fast float %1128, %901
  br label %1133

; <label>:1133                                    ; preds = %1076, %1067
  %1134 = phi float [ %1129, %1076 ], [ %1068, %1067 ]
  %1135 = phi float [ %1130, %1076 ], [ %899, %1067 ]
  %1136 = phi float [ %1131, %1076 ], [ %900, %1067 ]
  %1137 = phi float [ %1132, %1076 ], [ %901, %1067 ]
  %1138 = phi float [ %1112, %1076 ], [ %1069, %1067 ]
  %1139 = phi float [ %1113, %1076 ], [ %902, %1067 ]
  %1140 = phi float [ %1114, %1076 ], [ %903, %1067 ]
  %1141 = phi float [ %1115, %1076 ], [ %904, %1067 ]
  %1142 = phi float [ %1095, %1076 ], [ %1070, %1067 ]
  %1143 = phi float [ %1096, %1076 ], [ %905, %1067 ]
  %1144 = phi float [ %1097, %1076 ], [ %906, %1067 ]
  %1145 = phi float [ %1098, %1076 ], [ %907, %1067 ]
  %1146 = extractvalue %dx.types.CBufRet.f32 %717, 3
  %1147 = fmul fast float %1146, %1142
  %1148 = fmul fast float %1146, %1138
  %1149 = fmul fast float %1146, %1134
  %1150 = fmul fast float %1143, 1.500000e+00
  %1151 = fmul fast float %1150, %1146
  %1152 = fmul fast float %1144, 1.500000e+00
  %1153 = fmul fast float %1152, %1146
  %1154 = fmul fast float %1145, 1.500000e+00
  %1155 = fmul fast float %1154, %1146
  %1156 = fmul fast float %1139, 1.500000e+00
  %1157 = fmul fast float %1156, %1146
  %1158 = fmul fast float %1140, 1.500000e+00
  %1159 = fmul fast float %1158, %1146
  %1160 = fmul fast float %1141, 1.500000e+00
  %1161 = fmul fast float %1160, %1146
  %1162 = fmul fast float %1135, 1.500000e+00
  %1163 = fmul fast float %1162, %1146
  %1164 = fmul fast float %1136, 1.500000e+00
  %1165 = fmul fast float %1164, %1146
  %1166 = fmul fast float %1137, 1.500000e+00
  %1167 = fmul fast float %1166, %1146
  br label %1241

; <label>:1168                                    ; preds = %555
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.i32 %1169, 1
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.i32 %1172, 1
  %1175 = extractvalue %dx.types.ResRet.i32 %1172, 2
  %1176 = extractvalue %dx.types.ResRet.i32 %1172, 3
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.i32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.i32 %1177, 2
  %1181 = extractvalue %dx.types.ResRet.i32 %1177, 3
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.i32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.i32 %1182, 2
  %1186 = extractvalue %dx.types.ResRet.i32 %1182, 3
  %1187 = and i32 %1183, 65535
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = lshr i32 %1183, 16
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = and i32 %1184, 65535
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = lshr i32 %1184, 16
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = and i32 %1185, 65535
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = lshr i32 %1185, 16
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = and i32 %1186, 65535
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1186, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = and i32 %1178, 65535
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = lshr i32 %1178, 16
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = and i32 %1179, 65535
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = lshr i32 %1179, 16
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = and i32 %1180, 65535
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = lshr i32 %1180, 16
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = and i32 %1181, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1181, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = and i32 %1173, 65535
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = lshr i32 %1173, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = and i32 %1174, 65535
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = lshr i32 %1174, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = and i32 %1175, 65535
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = lshr i32 %1175, 16
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = and i32 %1176, 65535
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1176, 16
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = and i32 %1170, 65535
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = lshr i32 %1170, 16
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = and i32 %1171, 65535
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  br label %1241

; <label>:1241                                    ; preds = %1168, %1133
  %1242 = phi float [ %1240, %1168 ], [ 0.000000e+00, %1133 ]
  %1243 = phi float [ %1238, %1168 ], [ 0.000000e+00, %1133 ]
  %1244 = phi float [ %1236, %1168 ], [ 0.000000e+00, %1133 ]
  %1245 = phi float [ %1234, %1168 ], [ 0.000000e+00, %1133 ]
  %1246 = phi float [ %1232, %1168 ], [ 0.000000e+00, %1133 ]
  %1247 = phi float [ %1230, %1168 ], [ %1167, %1133 ]
  %1248 = phi float [ %1228, %1168 ], [ %1165, %1133 ]
  %1249 = phi float [ %1226, %1168 ], [ %1163, %1133 ]
  %1250 = phi float [ %1224, %1168 ], [ %1149, %1133 ]
  %1251 = phi float [ %1222, %1168 ], [ 0.000000e+00, %1133 ]
  %1252 = phi float [ %1220, %1168 ], [ 0.000000e+00, %1133 ]
  %1253 = phi float [ %1218, %1168 ], [ 0.000000e+00, %1133 ]
  %1254 = phi float [ %1216, %1168 ], [ 0.000000e+00, %1133 ]
  %1255 = phi float [ %1214, %1168 ], [ 0.000000e+00, %1133 ]
  %1256 = phi float [ %1212, %1168 ], [ %1161, %1133 ]
  %1257 = phi float [ %1210, %1168 ], [ %1159, %1133 ]
  %1258 = phi float [ %1208, %1168 ], [ %1157, %1133 ]
  %1259 = phi float [ %1206, %1168 ], [ %1148, %1133 ]
  %1260 = phi float [ %1204, %1168 ], [ 0.000000e+00, %1133 ]
  %1261 = phi float [ %1202, %1168 ], [ 0.000000e+00, %1133 ]
  %1262 = phi float [ %1200, %1168 ], [ 0.000000e+00, %1133 ]
  %1263 = phi float [ %1198, %1168 ], [ 0.000000e+00, %1133 ]
  %1264 = phi float [ %1196, %1168 ], [ 0.000000e+00, %1133 ]
  %1265 = phi float [ %1194, %1168 ], [ %1155, %1133 ]
  %1266 = phi float [ %1192, %1168 ], [ %1153, %1133 ]
  %1267 = phi float [ %1190, %1168 ], [ %1151, %1133 ]
  %1268 = phi float [ %1188, %1168 ], [ %1147, %1133 ]
  %1269 = fmul fast float %1268, %553
  %1270 = fadd fast float %1269, %550
  %1271 = fmul fast float %1267, %553
  %1272 = fadd fast float %1271, %549
  %1273 = fmul fast float %1266, %553
  %1274 = fadd fast float %1273, %548
  %1275 = fmul fast float %1265, %553
  %1276 = fadd fast float %1275, %547
  %1277 = fmul fast float %1264, %553
  %1278 = fadd fast float %1277, %546
  %1279 = fmul fast float %1263, %553
  %1280 = fadd fast float %1279, %545
  %1281 = fmul fast float %1262, %553
  %1282 = fadd fast float %1281, %544
  %1283 = fmul fast float %1261, %553
  %1284 = fadd fast float %1283, %543
  %1285 = fmul fast float %1260, %553
  %1286 = fadd fast float %1285, %542
  %1287 = fmul fast float %1259, %553
  %1288 = fadd fast float %1287, %541
  %1289 = fmul fast float %1258, %553
  %1290 = fadd fast float %1289, %540
  %1291 = fmul fast float %1257, %553
  %1292 = fadd fast float %1291, %539
  %1293 = fmul fast float %1256, %553
  %1294 = fadd fast float %1293, %538
  %1295 = fmul fast float %1255, %553
  %1296 = fadd fast float %1295, %537
  %1297 = fmul fast float %1254, %553
  %1298 = fadd fast float %1297, %536
  %1299 = fmul fast float %1253, %553
  %1300 = fadd fast float %1299, %535
  %1301 = fmul fast float %1252, %553
  %1302 = fadd fast float %1301, %534
  %1303 = fmul fast float %1251, %553
  %1304 = fadd fast float %1303, %533
  %1305 = fmul fast float %1250, %553
  %1306 = fadd fast float %1305, %532
  %1307 = fmul fast float %1249, %553
  %1308 = fadd fast float %1307, %531
  %1309 = fmul fast float %1248, %553
  %1310 = fadd fast float %1309, %530
  %1311 = fmul fast float %1247, %553
  %1312 = fadd fast float %1311, %529
  %1313 = fmul fast float %1246, %553
  %1314 = fadd fast float %1313, %528
  %1315 = fmul fast float %1245, %553
  %1316 = fadd fast float %1315, %527
  %1317 = fmul fast float %1244, %553
  %1318 = fadd fast float %1317, %526
  %1319 = fmul fast float %1243, %553
  %1320 = fadd fast float %1319, %525
  %1321 = fmul fast float %1242, %553
  %1322 = fadd fast float %1321, %524
  br label %1323

; <label>:1323                                    ; preds = %1241, %523
  %1324 = phi float [ %524, %523 ], [ %1322, %1241 ]
  %1325 = phi float [ %525, %523 ], [ %1320, %1241 ]
  %1326 = phi float [ %526, %523 ], [ %1318, %1241 ]
  %1327 = phi float [ %527, %523 ], [ %1316, %1241 ]
  %1328 = phi float [ %528, %523 ], [ %1314, %1241 ]
  %1329 = phi float [ %529, %523 ], [ %1312, %1241 ]
  %1330 = phi float [ %530, %523 ], [ %1310, %1241 ]
  %1331 = phi float [ %531, %523 ], [ %1308, %1241 ]
  %1332 = phi float [ %532, %523 ], [ %1306, %1241 ]
  %1333 = phi float [ %533, %523 ], [ %1304, %1241 ]
  %1334 = phi float [ %534, %523 ], [ %1302, %1241 ]
  %1335 = phi float [ %535, %523 ], [ %1300, %1241 ]
  %1336 = phi float [ %536, %523 ], [ %1298, %1241 ]
  %1337 = phi float [ %537, %523 ], [ %1296, %1241 ]
  %1338 = phi float [ %538, %523 ], [ %1294, %1241 ]
  %1339 = phi float [ %539, %523 ], [ %1292, %1241 ]
  %1340 = phi float [ %540, %523 ], [ %1290, %1241 ]
  %1341 = phi float [ %541, %523 ], [ %1288, %1241 ]
  %1342 = phi float [ %542, %523 ], [ %1286, %1241 ]
  %1343 = phi float [ %543, %523 ], [ %1284, %1241 ]
  %1344 = phi float [ %544, %523 ], [ %1282, %1241 ]
  %1345 = phi float [ %545, %523 ], [ %1280, %1241 ]
  %1346 = phi float [ %546, %523 ], [ %1278, %1241 ]
  %1347 = phi float [ %547, %523 ], [ %1276, %1241 ]
  %1348 = phi float [ %548, %523 ], [ %1274, %1241 ]
  %1349 = phi float [ %549, %523 ], [ %1272, %1241 ]
  %1350 = phi float [ %550, %523 ], [ %1270, %1241 ]
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1355 = fsub fast float %280, %1352
  %1356 = fsub fast float %281, %1353
  %1357 = fsub fast float %282, %1354
  %1358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.i32 %1358, 2
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1711, label %1361

; <label>:1361                                    ; preds = %1323
  br label %1362

; <label>:1362                                    ; preds = %1677, %1361
  %1363 = phi float [ %1678, %1677 ], [ 0.000000e+00, %1361 ]
  %1364 = phi float [ %1679, %1677 ], [ 0.000000e+00, %1361 ]
  %1365 = phi float [ %1680, %1677 ], [ 0.000000e+00, %1361 ]
  %1366 = phi float [ %1681, %1677 ], [ 0.000000e+00, %1361 ]
  %1367 = phi float [ %1682, %1677 ], [ 0.000000e+00, %1361 ]
  %1368 = phi float [ %1683, %1677 ], [ 0.000000e+00, %1361 ]
  %1369 = phi float [ %1684, %1677 ], [ 0.000000e+00, %1361 ]
  %1370 = phi float [ %1685, %1677 ], [ 0.000000e+00, %1361 ]
  %1371 = phi float [ %1686, %1677 ], [ 0.000000e+00, %1361 ]
  %1372 = phi float [ %1687, %1677 ], [ 0.000000e+00, %1361 ]
  %1373 = phi float [ %1688, %1677 ], [ 0.000000e+00, %1361 ]
  %1374 = phi float [ %1689, %1677 ], [ 0.000000e+00, %1361 ]
  %1375 = phi float [ %1690, %1677 ], [ 0.000000e+00, %1361 ]
  %1376 = phi float [ %1691, %1677 ], [ 0.000000e+00, %1361 ]
  %1377 = phi float [ %1692, %1677 ], [ 0.000000e+00, %1361 ]
  %1378 = phi float [ %1693, %1677 ], [ 0.000000e+00, %1361 ]
  %1379 = phi float [ %1694, %1677 ], [ 0.000000e+00, %1361 ]
  %1380 = phi float [ %1695, %1677 ], [ 0.000000e+00, %1361 ]
  %1381 = phi float [ %1696, %1677 ], [ 0.000000e+00, %1361 ]
  %1382 = phi float [ %1697, %1677 ], [ 0.000000e+00, %1361 ]
  %1383 = phi float [ %1698, %1677 ], [ 0.000000e+00, %1361 ]
  %1384 = phi float [ %1699, %1677 ], [ 0.000000e+00, %1361 ]
  %1385 = phi float [ %1700, %1677 ], [ 0.000000e+00, %1361 ]
  %1386 = phi float [ %1701, %1677 ], [ 0.000000e+00, %1361 ]
  %1387 = phi float [ %1702, %1677 ], [ 0.000000e+00, %1361 ]
  %1388 = phi float [ %1703, %1677 ], [ 0.000000e+00, %1361 ]
  %1389 = phi float [ %1704, %1677 ], [ 0.000000e+00, %1361 ]
  %1390 = phi float [ %1705, %1677 ], [ 1.000000e+00, %1361 ]
  %1391 = phi i32 [ %1706, %1677 ], [ 0, %1361 ]
  %1392 = shl i32 %1391, 2
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = icmp ne i32 %1394, 0
  %1396 = fcmp fast ogt float %1390, 0.000000e+00
  %1397 = and i1 %1396, %1395
  br i1 %1397, label %1398, label %1677

; <label>:1398                                    ; preds = %1362
  br label %1399

; <label>:1399                                    ; preds = %1644, %1398
  %1400 = phi float [ %1645, %1644 ], [ %1363, %1398 ]
  %1401 = phi float [ %1646, %1644 ], [ %1364, %1398 ]
  %1402 = phi float [ %1647, %1644 ], [ %1365, %1398 ]
  %1403 = phi float [ %1648, %1644 ], [ %1366, %1398 ]
  %1404 = phi float [ %1649, %1644 ], [ %1367, %1398 ]
  %1405 = phi float [ %1650, %1644 ], [ %1368, %1398 ]
  %1406 = phi float [ %1651, %1644 ], [ %1369, %1398 ]
  %1407 = phi float [ %1652, %1644 ], [ %1370, %1398 ]
  %1408 = phi float [ %1653, %1644 ], [ %1371, %1398 ]
  %1409 = phi float [ %1654, %1644 ], [ %1372, %1398 ]
  %1410 = phi float [ %1655, %1644 ], [ %1373, %1398 ]
  %1411 = phi float [ %1656, %1644 ], [ %1374, %1398 ]
  %1412 = phi float [ %1657, %1644 ], [ %1375, %1398 ]
  %1413 = phi float [ %1658, %1644 ], [ %1376, %1398 ]
  %1414 = phi float [ %1659, %1644 ], [ %1377, %1398 ]
  %1415 = phi float [ %1660, %1644 ], [ %1378, %1398 ]
  %1416 = phi float [ %1661, %1644 ], [ %1379, %1398 ]
  %1417 = phi float [ %1662, %1644 ], [ %1380, %1398 ]
  %1418 = phi float [ %1663, %1644 ], [ %1381, %1398 ]
  %1419 = phi float [ %1664, %1644 ], [ %1382, %1398 ]
  %1420 = phi float [ %1665, %1644 ], [ %1383, %1398 ]
  %1421 = phi float [ %1666, %1644 ], [ %1384, %1398 ]
  %1422 = phi float [ %1667, %1644 ], [ %1385, %1398 ]
  %1423 = phi float [ %1668, %1644 ], [ %1386, %1398 ]
  %1424 = phi float [ %1669, %1644 ], [ %1387, %1398 ]
  %1425 = phi float [ %1670, %1644 ], [ %1388, %1398 ]
  %1426 = phi float [ %1671, %1644 ], [ %1389, %1398 ]
  %1427 = phi float [ %1672, %1644 ], [ %1390, %1398 ]
  %1428 = phi i32 [ %1432, %1644 ], [ %1394, %1398 ]
  %1429 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1428)  ; FirstbitLo(value)
  %1430 = and i32 %1429, 31
  %1431 = shl i32 1, %1430
  %1432 = xor i32 %1431, %1428
  %1433 = shl i32 %1391, 5
  %1434 = add i32 %1429, %1433
  %1435 = mul i32 %1434, 72
  %1436 = add i32 %1435, 12
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %1435, 16
  %1440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.ResRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.ResRet.f32 %1440, 2
  %1444 = mul i32 %1434, 60
  %1445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = add i32 %1444, 12
  %1450 = add i32 %1444, 48
  %1451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.ResRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.ResRet.f32 %1451, 2
  %1455 = and i32 %1438, 32767
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.CBufRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  %1460 = fsub fast float %1446, %1457
  %1461 = fsub fast float %1447, %1458
  %1462 = fsub fast float %1448, %1459
  %1463 = fsub fast float %1355, %1460
  %1464 = fsub fast float %1356, %1461
  %1465 = fsub fast float %1357, %1462
  %1466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = call float @dx.op.dot3.f32(i32 55, float %1463, float %1464, float %1465, float %1467, float %1468, float %1469)  ; Dot3(ax,ay,az,bx,by,bz)
  %1471 = add i32 %1444, 24
  %1472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1463, float %1464, float %1465, float %1473, float %1474, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = add i32 %1444, 36
  %1478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.ResRet.f32 %1478, 1
  %1481 = extractvalue %dx.types.ResRet.f32 %1478, 2
  %1482 = call float @dx.op.dot3.f32(i32 55, float %1463, float %1464, float %1465, float %1479, float %1480, float %1481)  ; Dot3(ax,ay,az,bx,by,bz)
  %1483 = call float @dx.op.unary.f32(i32 6, float %1470)  ; FAbs(value)
  %1484 = call float @dx.op.unary.f32(i32 6, float %1476)  ; FAbs(value)
  %1485 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1486 = fsub fast float %1452, %1483
  %1487 = fsub fast float %1453, %1484
  %1488 = fsub fast float %1454, %1485
  %1489 = fmul fast float %1486, %1441
  %1490 = fmul fast float %1487, %1442
  %1491 = fmul fast float %1488, %1443
  %1492 = call float @dx.op.binary.f32(i32 36, float %1490, float %1491)  ; FMin(a,b)
  %1493 = call float @dx.op.binary.f32(i32 36, float %1489, float %1492)  ; FMin(a,b)
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1427, float %1494)  ; FMin(a,b)
  %1496 = fcmp fast ogt float %1495, 0.000000e+00
  br i1 %1496, label %1497, label %1644, !dx.controlflow.hints !82

; <label>:1497                                    ; preds = %1399
  %1498 = lshr i32 %1438, 16
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 3
  %1502 = bitcast float %1501 to i32
  %1503 = add i32 %1502, %1455
  %1504 = mul i32 %1503, 36
  %1505 = shl i32 %1502, 1
  %1506 = add i32 %1505, %1455
  %1507 = mul i32 %1506, 36
  %1508 = mul i32 %1502, 3
  %1509 = add i32 %1508, %1455
  %1510 = mul i32 %1509, 36
  %1511 = fmul fast float %1499, %1495
  %1512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = fmul fast float %1513, %1511
  %1515 = fadd fast float %1514, %1426
  %1516 = add i32 %1504, 4
  %1517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = fmul fast float %1518, %1511
  %1520 = fadd fast float %1519, %1425
  %1521 = add i32 %1504, 8
  %1522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = fmul fast float %1523, %1511
  %1525 = fadd fast float %1524, %1424
  %1526 = add i32 %1504, 12
  %1527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = fmul fast float %1528, %1511
  %1530 = fadd fast float %1529, %1423
  %1531 = add i32 %1504, 16
  %1532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = fmul fast float %1533, %1511
  %1535 = fadd fast float %1534, %1422
  %1536 = add i32 %1504, 20
  %1537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = fmul fast float %1538, %1511
  %1540 = fadd fast float %1539, %1421
  %1541 = add i32 %1504, 24
  %1542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = fmul fast float %1543, %1511
  %1545 = fadd fast float %1544, %1420
  %1546 = add i32 %1504, 28
  %1547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = fmul fast float %1548, %1511
  %1550 = fadd fast float %1549, %1419
  %1551 = add i32 %1504, 32
  %1552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = fmul fast float %1553, %1511
  %1555 = fadd fast float %1554, %1418
  %1556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = fmul fast float %1557, %1511
  %1559 = fadd fast float %1558, %1408
  %1560 = add i32 %1507, 4
  %1561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = fmul fast float %1562, %1511
  %1564 = fadd fast float %1563, %1407
  %1565 = add i32 %1507, 8
  %1566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = fmul fast float %1567, %1511
  %1569 = fadd fast float %1568, %1406
  %1570 = add i32 %1507, 12
  %1571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.f32 %1571, 0
  %1573 = fmul fast float %1572, %1511
  %1574 = fadd fast float %1573, %1405
  %1575 = add i32 %1507, 16
  %1576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = fmul fast float %1577, %1511
  %1579 = fadd fast float %1578, %1404
  %1580 = add i32 %1507, 20
  %1581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = fmul fast float %1582, %1511
  %1584 = fadd fast float %1583, %1403
  %1585 = add i32 %1507, 24
  %1586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = fmul fast float %1587, %1511
  %1589 = fadd fast float %1588, %1402
  %1590 = add i32 %1507, 28
  %1591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = fmul fast float %1592, %1511
  %1594 = fadd fast float %1593, %1401
  %1595 = add i32 %1507, 32
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = fmul fast float %1597, %1511
  %1599 = fadd fast float %1598, %1400
  %1600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 0
  %1602 = fmul fast float %1601, %1511
  %1603 = fadd fast float %1602, %1417
  %1604 = add i32 %1510, 4
  %1605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = fmul fast float %1606, %1511
  %1608 = fadd fast float %1607, %1416
  %1609 = add i32 %1510, 8
  %1610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.f32 %1610, 0
  %1612 = fmul fast float %1611, %1511
  %1613 = fadd fast float %1612, %1415
  %1614 = add i32 %1510, 12
  %1615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = fmul fast float %1616, %1511
  %1618 = fadd fast float %1617, %1414
  %1619 = add i32 %1510, 16
  %1620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = fmul fast float %1621, %1511
  %1623 = fadd fast float %1622, %1413
  %1624 = add i32 %1510, 20
  %1625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  %1627 = fmul fast float %1626, %1511
  %1628 = fadd fast float %1627, %1412
  %1629 = add i32 %1510, 24
  %1630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = fmul fast float %1631, %1511
  %1633 = fadd fast float %1632, %1411
  %1634 = add i32 %1510, 28
  %1635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = fmul fast float %1636, %1511
  %1638 = fadd fast float %1637, %1410
  %1639 = add i32 %1510, 32
  %1640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1639, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.f32 %1640, 0
  %1642 = fmul fast float %1641, %1511
  %1643 = fadd fast float %1642, %1409
  br label %1644

; <label>:1644                                    ; preds = %1497, %1399
  %1645 = phi float [ %1599, %1497 ], [ %1400, %1399 ]
  %1646 = phi float [ %1594, %1497 ], [ %1401, %1399 ]
  %1647 = phi float [ %1589, %1497 ], [ %1402, %1399 ]
  %1648 = phi float [ %1584, %1497 ], [ %1403, %1399 ]
  %1649 = phi float [ %1579, %1497 ], [ %1404, %1399 ]
  %1650 = phi float [ %1574, %1497 ], [ %1405, %1399 ]
  %1651 = phi float [ %1569, %1497 ], [ %1406, %1399 ]
  %1652 = phi float [ %1564, %1497 ], [ %1407, %1399 ]
  %1653 = phi float [ %1559, %1497 ], [ %1408, %1399 ]
  %1654 = phi float [ %1643, %1497 ], [ %1409, %1399 ]
  %1655 = phi float [ %1638, %1497 ], [ %1410, %1399 ]
  %1656 = phi float [ %1633, %1497 ], [ %1411, %1399 ]
  %1657 = phi float [ %1628, %1497 ], [ %1412, %1399 ]
  %1658 = phi float [ %1623, %1497 ], [ %1413, %1399 ]
  %1659 = phi float [ %1618, %1497 ], [ %1414, %1399 ]
  %1660 = phi float [ %1613, %1497 ], [ %1415, %1399 ]
  %1661 = phi float [ %1608, %1497 ], [ %1416, %1399 ]
  %1662 = phi float [ %1603, %1497 ], [ %1417, %1399 ]
  %1663 = phi float [ %1555, %1497 ], [ %1418, %1399 ]
  %1664 = phi float [ %1550, %1497 ], [ %1419, %1399 ]
  %1665 = phi float [ %1545, %1497 ], [ %1420, %1399 ]
  %1666 = phi float [ %1540, %1497 ], [ %1421, %1399 ]
  %1667 = phi float [ %1535, %1497 ], [ %1422, %1399 ]
  %1668 = phi float [ %1530, %1497 ], [ %1423, %1399 ]
  %1669 = phi float [ %1525, %1497 ], [ %1424, %1399 ]
  %1670 = phi float [ %1520, %1497 ], [ %1425, %1399 ]
  %1671 = phi float [ %1515, %1497 ], [ %1426, %1399 ]
  %1672 = fsub fast float %1427, %1495
  %1673 = icmp ne i32 %1428, %1431
  %1674 = fcmp fast ogt float %1672, 0.000000e+00
  %1675 = and i1 %1673, %1674
  br i1 %1675, label %1399, label %1676

; <label>:1676                                    ; preds = %1644
  br label %1677

; <label>:1677                                    ; preds = %1676, %1362
  %1678 = phi float [ %1363, %1362 ], [ %1645, %1676 ]
  %1679 = phi float [ %1364, %1362 ], [ %1646, %1676 ]
  %1680 = phi float [ %1365, %1362 ], [ %1647, %1676 ]
  %1681 = phi float [ %1366, %1362 ], [ %1648, %1676 ]
  %1682 = phi float [ %1367, %1362 ], [ %1649, %1676 ]
  %1683 = phi float [ %1368, %1362 ], [ %1650, %1676 ]
  %1684 = phi float [ %1369, %1362 ], [ %1651, %1676 ]
  %1685 = phi float [ %1370, %1362 ], [ %1652, %1676 ]
  %1686 = phi float [ %1371, %1362 ], [ %1653, %1676 ]
  %1687 = phi float [ %1372, %1362 ], [ %1654, %1676 ]
  %1688 = phi float [ %1373, %1362 ], [ %1655, %1676 ]
  %1689 = phi float [ %1374, %1362 ], [ %1656, %1676 ]
  %1690 = phi float [ %1375, %1362 ], [ %1657, %1676 ]
  %1691 = phi float [ %1376, %1362 ], [ %1658, %1676 ]
  %1692 = phi float [ %1377, %1362 ], [ %1659, %1676 ]
  %1693 = phi float [ %1378, %1362 ], [ %1660, %1676 ]
  %1694 = phi float [ %1379, %1362 ], [ %1661, %1676 ]
  %1695 = phi float [ %1380, %1362 ], [ %1662, %1676 ]
  %1696 = phi float [ %1381, %1362 ], [ %1663, %1676 ]
  %1697 = phi float [ %1382, %1362 ], [ %1664, %1676 ]
  %1698 = phi float [ %1383, %1362 ], [ %1665, %1676 ]
  %1699 = phi float [ %1384, %1362 ], [ %1666, %1676 ]
  %1700 = phi float [ %1385, %1362 ], [ %1667, %1676 ]
  %1701 = phi float [ %1386, %1362 ], [ %1668, %1676 ]
  %1702 = phi float [ %1387, %1362 ], [ %1669, %1676 ]
  %1703 = phi float [ %1388, %1362 ], [ %1670, %1676 ]
  %1704 = phi float [ %1389, %1362 ], [ %1671, %1676 ]
  %1705 = phi float [ %1390, %1362 ], [ %1672, %1676 ]
  %1706 = add i32 %1391, 1
  %1707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.i32 %1707, 2
  %1709 = icmp ult i32 %1706, %1708
  br i1 %1709, label %1362, label %1710

; <label>:1710                                    ; preds = %1677
  br label %1711

; <label>:1711                                    ; preds = %1710, %1323
  %1712 = phi float [ 0.000000e+00, %1323 ], [ %1678, %1710 ]
  %1713 = phi float [ 0.000000e+00, %1323 ], [ %1679, %1710 ]
  %1714 = phi float [ 0.000000e+00, %1323 ], [ %1680, %1710 ]
  %1715 = phi float [ 0.000000e+00, %1323 ], [ %1681, %1710 ]
  %1716 = phi float [ 0.000000e+00, %1323 ], [ %1682, %1710 ]
  %1717 = phi float [ 0.000000e+00, %1323 ], [ %1683, %1710 ]
  %1718 = phi float [ 0.000000e+00, %1323 ], [ %1684, %1710 ]
  %1719 = phi float [ 0.000000e+00, %1323 ], [ %1685, %1710 ]
  %1720 = phi float [ 0.000000e+00, %1323 ], [ %1686, %1710 ]
  %1721 = phi float [ 0.000000e+00, %1323 ], [ %1687, %1710 ]
  %1722 = phi float [ 0.000000e+00, %1323 ], [ %1688, %1710 ]
  %1723 = phi float [ 0.000000e+00, %1323 ], [ %1689, %1710 ]
  %1724 = phi float [ 0.000000e+00, %1323 ], [ %1690, %1710 ]
  %1725 = phi float [ 0.000000e+00, %1323 ], [ %1691, %1710 ]
  %1726 = phi float [ 0.000000e+00, %1323 ], [ %1692, %1710 ]
  %1727 = phi float [ 0.000000e+00, %1323 ], [ %1693, %1710 ]
  %1728 = phi float [ 0.000000e+00, %1323 ], [ %1694, %1710 ]
  %1729 = phi float [ 0.000000e+00, %1323 ], [ %1695, %1710 ]
  %1730 = phi float [ 0.000000e+00, %1323 ], [ %1696, %1710 ]
  %1731 = phi float [ 0.000000e+00, %1323 ], [ %1697, %1710 ]
  %1732 = phi float [ 0.000000e+00, %1323 ], [ %1698, %1710 ]
  %1733 = phi float [ 0.000000e+00, %1323 ], [ %1699, %1710 ]
  %1734 = phi float [ 0.000000e+00, %1323 ], [ %1700, %1710 ]
  %1735 = phi float [ 0.000000e+00, %1323 ], [ %1701, %1710 ]
  %1736 = phi float [ 0.000000e+00, %1323 ], [ %1702, %1710 ]
  %1737 = phi float [ 0.000000e+00, %1323 ], [ %1703, %1710 ]
  %1738 = phi float [ 0.000000e+00, %1323 ], [ %1704, %1710 ]
  %1739 = phi float [ 1.000000e+00, %1323 ], [ %1705, %1710 ]
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1742 = fdiv fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1738
  %1744 = fmul fast float %1742, %1737
  %1745 = fmul fast float %1742, %1736
  %1746 = fmul fast float %1742, %1735
  %1747 = fmul fast float %1742, %1734
  %1748 = fmul fast float %1742, %1733
  %1749 = fmul fast float %1742, %1732
  %1750 = fmul fast float %1742, %1731
  %1751 = fmul fast float %1742, %1730
  %1752 = fmul fast float %1742, %1720
  %1753 = fmul fast float %1742, %1719
  %1754 = fmul fast float %1742, %1718
  %1755 = fmul fast float %1742, %1717
  %1756 = fmul fast float %1742, %1716
  %1757 = fmul fast float %1742, %1715
  %1758 = fmul fast float %1742, %1714
  %1759 = fmul fast float %1742, %1713
  %1760 = fmul fast float %1742, %1712
  %1761 = fmul fast float %1742, %1729
  %1762 = fmul fast float %1742, %1728
  %1763 = fmul fast float %1742, %1727
  %1764 = fmul fast float %1742, %1726
  %1765 = fmul fast float %1742, %1725
  %1766 = fmul fast float %1742, %1724
  %1767 = fmul fast float %1742, %1723
  %1768 = fmul fast float %1742, %1722
  %1769 = fmul fast float %1742, %1721
  %1770 = fmul fast float %1739, %1350
  %1771 = fadd fast float %1743, %1770
  %1772 = fmul fast float %1739, %1349
  %1773 = fadd fast float %1744, %1772
  %1774 = fmul fast float %1739, %1348
  %1775 = fadd fast float %1745, %1774
  %1776 = fmul fast float %1739, %1347
  %1777 = fadd fast float %1746, %1776
  %1778 = fmul fast float %1739, %1346
  %1779 = fadd fast float %1747, %1778
  %1780 = fmul fast float %1739, %1345
  %1781 = fadd fast float %1748, %1780
  %1782 = fmul fast float %1739, %1344
  %1783 = fadd fast float %1749, %1782
  %1784 = fmul fast float %1739, %1343
  %1785 = fadd fast float %1750, %1784
  %1786 = fmul fast float %1739, %1342
  %1787 = fadd fast float %1751, %1786
  %1788 = fmul fast float %1739, %1341
  %1789 = fadd fast float %1752, %1788
  %1790 = fmul fast float %1739, %1340
  %1791 = fadd fast float %1753, %1790
  %1792 = fmul fast float %1739, %1339
  %1793 = fadd fast float %1754, %1792
  %1794 = fmul fast float %1739, %1338
  %1795 = fadd fast float %1755, %1794
  %1796 = fmul fast float %1739, %1337
  %1797 = fadd fast float %1756, %1796
  %1798 = fmul fast float %1739, %1336
  %1799 = fadd fast float %1757, %1798
  %1800 = fmul fast float %1739, %1335
  %1801 = fadd fast float %1758, %1800
  %1802 = fmul fast float %1739, %1334
  %1803 = fadd fast float %1759, %1802
  %1804 = fmul fast float %1739, %1333
  %1805 = fadd fast float %1760, %1804
  %1806 = fmul fast float %1739, %1332
  %1807 = fadd fast float %1761, %1806
  %1808 = fmul fast float %1739, %1331
  %1809 = fadd fast float %1762, %1808
  %1810 = fmul fast float %1739, %1330
  %1811 = fadd fast float %1763, %1810
  %1812 = fmul fast float %1739, %1329
  %1813 = fadd fast float %1764, %1812
  %1814 = fmul fast float %1739, %1328
  %1815 = fadd fast float %1765, %1814
  %1816 = fmul fast float %1739, %1327
  %1817 = fadd fast float %1766, %1816
  %1818 = fmul fast float %1739, %1326
  %1819 = fadd fast float %1767, %1818
  %1820 = fmul fast float %1739, %1325
  %1821 = fadd fast float %1768, %1820
  %1822 = fmul fast float %1739, %1324
  %1823 = fadd fast float %1769, %1822
  %1824 = fmul fast float %83, 6.400000e+01
  %1825 = fmul fast float %84, 6.400000e+01
  %1826 = fmul fast float %85, 1.600000e+01
  %1827 = fptosi float %1824 to i32
  %1828 = fptosi float %1825 to i32
  %1829 = fptosi float %1826 to i32
  %1830 = add i32 %98, %1827
  %1831 = add i32 %97, %1828
  %1832 = add i32 %1829, %95
  %1833 = fdiv fast float 1.000000e+00, %1771
  %1834 = fdiv fast float 1.000000e+00, %1789
  %1835 = fdiv fast float 1.000000e+00, %1807
  %1836 = fmul fast float %1833, 0x3FD279A740000000
  %1837 = fmul fast float %1836, %1775
  %1838 = fmul fast float %1834, 0x3FD279A740000000
  %1839 = fmul fast float %1838, %1793
  %1840 = fmul fast float %1811, 0x3FD279A740000000
  %1841 = fmul fast float %1840, %1835
  %1842 = fmul fast float %1833, 0x3FCC9F25C0000000
  %1843 = fmul fast float %1842, %1783
  %1844 = fadd fast float %1837, 5.000000e-01
  %1845 = fadd fast float %1839, 5.000000e-01
  %1846 = fadd fast float %1841, 5.000000e-01
  %1847 = fadd fast float %1843, 5.000000e-01
  %1848 = fmul fast float %1834, 0x3FCC9F25C0000000
  %1849 = fmul fast float %1848, %1801
  %1850 = fmul fast float %1819, 0x3FCC9F25C0000000
  %1851 = fmul fast float %1850, %1835
  %1852 = fmul fast float %1836, %1773
  %1853 = fmul fast float %1838, %1791
  %1854 = fadd fast float %1849, 5.000000e-01
  %1855 = fadd fast float %1851, 5.000000e-01
  %1856 = fadd fast float %1852, 5.000000e-01
  %1857 = fadd fast float %1853, 5.000000e-01
  %1858 = fmul fast float %1809, 0x3FD279A740000000
  %1859 = fmul fast float %1858, %1835
  %1860 = fmul fast float %1836, %1777
  %1861 = fmul fast float %1838, %1795
  %1862 = fmul fast float %1813, 0x3FD279A740000000
  %1863 = fmul fast float %1862, %1835
  %1864 = fadd fast float %1859, 5.000000e-01
  %1865 = fadd fast float %1860, 5.000000e-01
  %1866 = fadd fast float %1861, 5.000000e-01
  %1867 = fadd fast float %1863, 5.000000e-01
  %1868 = fmul fast float %1833, 0x3FD08654A0000000
  %1869 = fmul fast float %1868, %1785
  %1870 = fmul fast float %1834, 0x3FD08654A0000000
  %1871 = fmul fast float %1870, %1803
  %1872 = fmul fast float %1821, 0x3FD08654A0000000
  %1873 = fmul fast float %1872, %1835
  %1874 = fmul fast float %1868, %1781
  %1875 = fadd fast float %1869, 5.000000e-01
  %1876 = fadd fast float %1871, 5.000000e-01
  %1877 = fadd fast float %1873, 5.000000e-01
  %1878 = fadd fast float %1874, 5.000000e-01
  %1879 = fmul fast float %1870, %1799
  %1880 = fmul fast float %1817, 0x3FD08654A0000000
  %1881 = fmul fast float %1880, %1835
  %1882 = fmul fast float %1868, %1787
  %1883 = fmul fast float %1870, %1805
  %1884 = fadd fast float %1879, 5.000000e-01
  %1885 = fadd fast float %1881, 5.000000e-01
  %1886 = fadd fast float %1882, 5.000000e-01
  %1887 = fadd fast float %1883, 5.000000e-01
  %1888 = fmul fast float %1823, 0x3FD08654A0000000
  %1889 = fmul fast float %1888, %1835
  %1890 = fmul fast float %1868, %1779
  %1891 = fmul fast float %1870, %1797
  %1892 = fmul fast float %1815, 0x3FD08654A0000000
  %1893 = fmul fast float %1892, %1835
  %1894 = fadd fast float %1889, 5.000000e-01
  %1895 = fadd fast float %1890, 5.000000e-01
  %1896 = fadd fast float %1891, 5.000000e-01
  %1897 = fadd fast float %1893, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1830, i32 %1831, i32 %1832, float %1771, float %1789, float %1807, float %1771, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1830, i32 %1831, i32 %1832, float %1844, float %1845, float %1846, float %1847, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1898 = add i32 %1830, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1898, i32 %1831, i32 %1832, float %1854, float %1855, float %1856, float %1857, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1899 = add i32 %1831, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1830, i32 %1899, i32 %1832, float %1864, float %1865, float %1866, float %1867, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1898, i32 %1899, i32 %1832, float %1875, float %1876, float %1877, float %1878, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1900 = add i32 %1831, 128
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1830, i32 %1900, i32 %1832, float %1884, float %1885, float %1886, float %1887, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1898, i32 %1900, i32 %1832, float %1894, float %1895, float %1896, float %1897, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1901

; <label>:1901                                    ; preds = %1711, %276, %66, %0
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
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !29, !32}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!11 = !{i32 4, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 8}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !7}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 43, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 9}
!21 = !{i32 12, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 4, i32 0, !20}
!22 = !{i32 13, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 20, i32 1, i32 2, i32 0, !20}
!23 = !{i32 14, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 25, i32 1, i32 4, i32 0, !20}
!25 = !{!26, !27}
!26 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !20}
!27 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !28}
!28 = !{i32 0, i32 14}
!29 = !{!30, !31}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!32 = !{!33}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{void ()* @cs_combine_sampled_data_reflection_volumes, !"cs_combine_sampled_data_reflection_volumes", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 64, i32 1, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!44 = distinct !{!44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!45 = distinct !{!45, !44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !40, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleR"}
!53 = distinct !{!53, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z"}
!54 = !{!55, !56, !57, !58}
!55 = distinct !{!55, !53, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleG"}
!56 = distinct !{!56, !53, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleB"}
!57 = distinct !{!57, !53, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %samplePrimaryVis"}
!58 = distinct !{!58, !53, !"\01?LoadProbeSampledData@@YAXIUSH3Vec@@00AIAM1@Z: %sampleAlpha"}
!59 = !{!55}
!60 = !{!52, !56, !57, !58}
!61 = !{!56}
!62 = !{!52, !55, !57, !58}
!63 = !{!64}
!64 = distinct !{!64, !65, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z: %agg.result"}
!65 = distinct !{!65, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z: %agg.result"}
!68 = distinct !{!68, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z: %agg.result"}
!71 = distinct !{!71, !"\01?SHMad@@YA?AUSH3Vec@@U1@M0@Z"}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}

