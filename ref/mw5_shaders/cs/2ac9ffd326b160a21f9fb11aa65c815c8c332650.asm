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
; shader hash: 4289773179fa2986f7d4937105a06de9
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t1     1
;                                   texture    byte         r/o      T3             t2     1
;                                   texture    byte         r/o      T4             t3     1
;                                   texture    byte         r/o      T5             t5     1
;                                   texture    byte         r/o      T6             t6     1
;                                   texture     u32          2d      T7            t10     1
;                                   texture     f32          2d      T8            t11     1
;                                   texture    byte         r/o      T9            t18     1
;                                   texture    byte         r/o     T10            t20     1
;                                   texture    byte         r/o     T11            t15     1
;                                   texture    byte         r/o     T12            t16     1
;                                   texture    byte         r/o     T13            t13     1
;                                   texture    byte         r/o     T14            t14     1
;                                   texture    byte         r/o     T15            t12     1
;                                   texture     f32          2d     T16            t24     1
;                                   texture     f32          3d     T17             t4     1
;                                   texture    byte         r/o     T18            t19     1
;                                   texture     u32     2darray     T19            t22     1
;                                   texture     f32     2darray     T20            t23     1
;                                   texture    byte         r/o     T21            t29     1
;                                   texture     f32          2d     T22            t21     1
;                                   texture    byte         r/o     T23            t28     1
;                                   texture    byte         r/o     T24            t27     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<unsigned int, 2> >" = type { <2 x i32>, %"class.Texture2D<vector<unsigned int, 2> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 2> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %31 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = alloca [4 x float], align 4
  %35 = alloca [4 x float], align 4
  %36 = alloca [4 x float], align 4
  %37 = alloca [4 x float], align 4
  %38 = alloca [8 x float], align 4
  %39 = alloca [12 x float], align 4
  %40 = alloca [4 x float], align 4
  %41 = alloca [4 x float], align 4
  %42 = alloca [24 x float], align 4
  %43 = alloca [9 x i32], align 4
  %44 = alloca [3 x i32], align 4
  %45 = alloca [36 x float], align 4
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %30, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %6258, !dx.controlflow.hints !45

; <label>:52                                      ; preds = %0
  %53 = lshr i32 %49, 3
  %54 = and i32 %53, 63
  %55 = lshr i32 %49, 7
  %56 = and i32 %55, 1048572
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = and i32 %58, 65535
  %60 = and i32 %58, 134217728
  %61 = and i32 %58, 536870912
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68, !dx.controlflow.hints !46

; <label>:63                                      ; preds = %52
  %64 = shl nuw nsw i32 %59, 4
  %65 = add nuw nsw i32 %64, 5767168
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 2
  br label %75

; <label>:68                                      ; preds = %52
  %69 = mul nuw nsw i32 %59, 12
  %70 = add nuw nsw i32 %69, 1572864
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %70, i32 undef)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 1
  %73 = extractvalue %dx.types.ResRet.i32 %71, 2
  %74 = and i32 %72, 65535
  br label %75

; <label>:75                                      ; preds = %68, %63
  %76 = phi i32 [ %67, %63 ], [ %73, %68 ]
  %77 = phi i32 [ 0, %63 ], [ %74, %68 ]
  br i1 %62, label %78, label %89, !dx.controlflow.hints !47

; <label>:78                                      ; preds = %75
  %79 = shl nuw nsw i32 %59, 3
  %80 = or i32 %79, 5242880
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %80, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = extractvalue %dx.types.ResRet.i32 %81, 1
  %84 = and i32 %83, 16777215
  %85 = lshr i32 %83, 24
  %86 = lshr i32 %83, 25
  %87 = and i32 %86, 2
  %88 = xor i32 %87, 3
  br label %103

; <label>:89                                      ; preds = %75
  %90 = mul nuw nsw i32 %59, 12
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = extractvalue %dx.types.ResRet.i32 %91, 1
  %94 = extractvalue %dx.types.ResRet.i32 %91, 2
  %95 = lshr i32 %92, 28
  %96 = and i32 %93, 65535
  %97 = shl nuw nsw i32 %95, 16
  %98 = or i32 %97, %96
  %99 = and i32 %92, 268435455
  %100 = and i32 %94, 15
  %101 = lshr i32 %94, 4
  %102 = and i32 %101, 15
  br label %103

; <label>:103                                     ; preds = %89, %78
  %104 = phi i32 [ %84, %78 ], [ 0, %89 ]
  %105 = phi i32 [ %82, %78 ], [ %94, %89 ]
  %106 = phi i32 [ %85, %78 ], [ %102, %89 ]
  %107 = phi i32 [ %88, %78 ], [ %100, %89 ]
  %108 = phi i32 [ 0, %78 ], [ %98, %89 ]
  %109 = phi i32 [ 0, %78 ], [ %99, %89 ]
  %110 = lshr i32 %105, 24
  br i1 %62, label %111, label %116, !dx.controlflow.hints !48

; <label>:111                                     ; preds = %103
  %112 = shl nuw nsw i32 %59, 3
  %113 = or i32 %112, 6815744
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  br label %122

; <label>:116                                     ; preds = %103
  %117 = mul nuw nsw i32 %59, 12
  %118 = add nuw nsw i32 %117, 786432
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = extractvalue %dx.types.ResRet.i32 %119, 1
  br label %122

; <label>:122                                     ; preds = %116, %111
  %123 = phi i32 [ 0, %111 ], [ %121, %116 ]
  %124 = phi i32 [ %115, %111 ], [ %120, %116 ]
  %125 = shl nuw nsw i32 %59, 3
  br i1 %62, label %126, label %130, !dx.controlflow.hints !49

; <label>:126                                     ; preds = %122
  %127 = or i32 %125, 7340032
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  br label %134

; <label>:130                                     ; preds = %122
  %131 = add nuw nsw i32 %125, 3407872
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  br label %134

; <label>:134                                     ; preds = %130, %126
  %135 = phi i32 [ %129, %126 ], [ %133, %130 ]
  %136 = icmp eq i32 %107, 2
  br i1 %136, label %137, label %215, !dx.controlflow.hints !50

; <label>:137                                     ; preds = %134
  %138 = shl nsw i32 %108, 5
  %139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = extractvalue %dx.types.ResRet.f32 %139, 2
  %143 = or i32 %138, 16
  %144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = mul i32 %109, 24
  %149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  %153 = add i32 %148, 12
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = extractvalue %dx.types.ResRet.i32 %154, 1
  %157 = add i32 %148, 20
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %155, 65535
  %161 = uitofp i32 %160 to float
  %162 = lshr i32 %155, 16
  %163 = uitofp i32 %162 to float
  %164 = and i32 %156, 65535
  %165 = uitofp i32 %164 to float
  %166 = lshr i32 %156, 16
  %167 = uitofp i32 %166 to float
  %168 = fmul fast float %161, 0x3F00001000000000
  %169 = fmul fast float %163, 0x3F00001000000000
  %170 = fmul fast float %165, 0x3F00001000000000
  %171 = fmul fast float %167, 0x3F00001000000000
  %172 = fadd fast float %168, -1.000000e+00
  %173 = fadd fast float %169, -1.000000e+00
  %174 = fadd fast float %170, -1.000000e+00
  %175 = fadd fast float %171, -1.000000e+00
  %176 = and i32 %159, 65535
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = fmul fast float %163, 0x3F10001000000000
  %179 = fadd fast float %178, -2.000000e+00
  %180 = fmul fast float %179, %173
  %181 = fsub fast float 1.000000e+00, %180
  %182 = fmul fast float %165, 0x3F10001000000000
  %183 = fadd fast float %182, -2.000000e+00
  %184 = fmul fast float %183, %174
  %185 = fsub fast float %181, %184
  %186 = fmul fast float %161, 0x3F10001000000000
  %187 = fadd fast float %186, -2.000000e+00
  %188 = fmul fast float %187, %173
  %189 = fmul fast float %183, %175
  %190 = fsub fast float %188, %189
  %191 = fmul fast float %187, %174
  %192 = fmul fast float %179, %175
  %193 = fadd fast float %191, %192
  %194 = fadd fast float %188, %189
  %195 = fmul fast float %187, %172
  %196 = fsub fast float 1.000000e+00, %195
  %197 = fsub fast float %196, %184
  %198 = fmul fast float %179, %174
  %199 = fmul fast float %187, %175
  %200 = fsub fast float %198, %199
  %201 = fsub fast float %191, %192
  %202 = fadd fast float %198, %199
  %203 = fsub fast float %196, %180
  %204 = fmul fast float %185, %177
  %205 = fmul fast float %194, %177
  %206 = fmul fast float %201, %177
  %207 = fmul fast float %190, %177
  %208 = fmul fast float %197, %177
  %209 = fmul fast float %202, %177
  %210 = fmul fast float %193, %177
  %211 = fmul fast float %200, %177
  %212 = fmul fast float %203, %177
  %213 = call float @dx.op.binary.f32(i32 35, float %146, float %147), !dx.precise !51  ; FMax(a,b)
  %214 = call float @dx.op.binary.f32(i32 35, float %145, float %213), !dx.precise !51  ; FMax(a,b)
  br label %429

; <label>:215                                     ; preds = %134
  %216 = icmp eq i32 %107, 0
  br i1 %216, label %217, label %351, !dx.controlflow.hints !52

; <label>:217                                     ; preds = %215
  %218 = and i32 %106, 1
  %219 = icmp eq i32 %218, 0
  %220 = lshr exact i32 %60, 6
  %221 = shl i32 %109, 6
  %222 = add i32 %221, %220
  %223 = or i32 %222, 16
  br i1 %219, label %278, label %224, !dx.controlflow.hints !53

; <label>:224                                     ; preds = %217
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = extractvalue %dx.types.ResRet.i32 %225, 1
  %228 = extractvalue %dx.types.ResRet.i32 %225, 2
  %229 = extractvalue %dx.types.ResRet.i32 %225, 3
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = extractvalue %dx.types.ResRet.i32 %230, 1
  %233 = extractvalue %dx.types.ResRet.i32 %230, 2
  %234 = extractvalue %dx.types.ResRet.i32 %230, 3
  %235 = bitcast i32 %226 to float
  %236 = bitcast i32 %227 to float
  %237 = bitcast i32 %228 to float
  %238 = bitcast i32 %229 to float
  %239 = bitcast i32 %231 to float
  %240 = bitcast i32 %232 to float
  %241 = bitcast i32 %233 to float
  %242 = bitcast i32 %234 to float
  %243 = fmul fast float %236, %236
  %244 = fmul fast float %243, 2.000000e+00
  %245 = fsub fast float 1.000000e+00, %244
  %246 = fmul fast float %237, %237
  %247 = fmul fast float %246, 2.000000e+00
  %248 = fsub fast float %245, %247
  %249 = fmul fast float %235, 2.000000e+00
  %250 = fmul fast float %249, %236
  %251 = fmul fast float %237, 2.000000e+00
  %252 = fmul fast float %251, %238
  %253 = fsub fast float %250, %252
  %254 = fmul fast float %237, %235
  %255 = fmul fast float %238, %236
  %256 = fadd fast float %254, %255
  %257 = fmul fast float %256, 2.000000e+00
  %258 = fmul fast float %236, %235
  %259 = fmul fast float %238, %237
  %260 = fadd fast float %258, %259
  %261 = fmul fast float %260, 2.000000e+00
  %262 = fmul fast float %235, %235
  %263 = fmul fast float %262, 2.000000e+00
  %264 = fsub fast float 1.000000e+00, %263
  %265 = fsub fast float %264, %247
  %266 = fmul fast float %236, 2.000000e+00
  %267 = fmul fast float %266, %237
  %268 = fmul fast float %249, %238
  %269 = fsub fast float %267, %268
  %270 = fmul fast float %249, %237
  %271 = fmul fast float %266, %238
  %272 = fsub fast float %270, %271
  %273 = fmul fast float %237, %236
  %274 = fmul fast float %238, %235
  %275 = fadd fast float %273, %274
  %276 = fmul fast float %275, 2.000000e+00
  %277 = fsub fast float %264, %244
  br label %429

; <label>:278                                     ; preds = %217
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = extractvalue %dx.types.ResRet.i32 %279, 1
  %282 = extractvalue %dx.types.ResRet.i32 %279, 2
  %283 = extractvalue %dx.types.ResRet.i32 %279, 3
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = extractvalue %dx.types.ResRet.i32 %284, 1
  %287 = extractvalue %dx.types.ResRet.i32 %284, 2
  %288 = extractvalue %dx.types.ResRet.i32 %284, 3
  %289 = or i32 %222, 48
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = extractvalue %dx.types.ResRet.i32 %290, 1
  %293 = extractvalue %dx.types.ResRet.i32 %290, 2
  %294 = extractvalue %dx.types.ResRet.i32 %290, 3
  %295 = bitcast i32 %280 to float
  %296 = bitcast i32 %281 to float
  %297 = bitcast i32 %282 to float
  %298 = bitcast i32 %283 to float
  %299 = bitcast i32 %285 to float
  %300 = bitcast i32 %286 to float
  %301 = bitcast i32 %287 to float
  %302 = bitcast i32 %288 to float
  %303 = bitcast i32 %291 to float
  %304 = bitcast i32 %292 to float
  %305 = bitcast i32 %293 to float
  %306 = bitcast i32 %294 to float
  %307 = fmul fast float %296, %296
  %308 = fmul fast float %307, 2.000000e+00
  %309 = fsub fast float 1.000000e+00, %308
  %310 = fmul fast float %297, %297
  %311 = fmul fast float %310, 2.000000e+00
  %312 = fsub fast float %309, %311
  %313 = fmul fast float %295, 2.000000e+00
  %314 = fmul fast float %313, %296
  %315 = fmul fast float %297, 2.000000e+00
  %316 = fmul fast float %315, %298
  %317 = fsub fast float %314, %316
  %318 = fmul fast float %297, %295
  %319 = fmul fast float %298, %296
  %320 = fadd fast float %318, %319
  %321 = fmul fast float %320, 2.000000e+00
  %322 = fmul fast float %296, %295
  %323 = fmul fast float %298, %297
  %324 = fadd fast float %322, %323
  %325 = fmul fast float %324, 2.000000e+00
  %326 = fmul fast float %295, %295
  %327 = fmul fast float %326, 2.000000e+00
  %328 = fsub fast float 1.000000e+00, %327
  %329 = fsub fast float %328, %311
  %330 = fmul fast float %296, 2.000000e+00
  %331 = fmul fast float %330, %297
  %332 = fmul fast float %313, %298
  %333 = fsub fast float %331, %332
  %334 = fmul fast float %313, %297
  %335 = fmul fast float %330, %298
  %336 = fsub fast float %334, %335
  %337 = fmul fast float %297, %296
  %338 = fmul fast float %298, %295
  %339 = fadd fast float %337, %338
  %340 = fmul fast float %339, 2.000000e+00
  %341 = fsub fast float %328, %308
  %342 = fmul fast float %312, %302
  %343 = fmul fast float %325, %302
  %344 = fmul fast float %336, %302
  %345 = fmul fast float %317, %302
  %346 = fmul fast float %329, %302
  %347 = fmul fast float %340, %302
  %348 = fmul fast float %321, %302
  %349 = fmul fast float %333, %302
  %350 = fmul fast float %341, %302
  br label %429

; <label>:351                                     ; preds = %215
  %352 = icmp eq i32 %107, 3
  br i1 %352, label %353, label %362, !dx.controlflow.hints !54

; <label>:353                                     ; preds = %351
  %354 = shl nuw nsw i32 %104, 7
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = or i32 %354, 12
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  br label %429

; <label>:362                                     ; preds = %351
  %363 = icmp eq i32 %107, 1
  br i1 %363, label %364, label %429, !dx.controlflow.hints !55

; <label>:364                                     ; preds = %362
  %365 = lshr exact i32 %60, 6
  %366 = shl nuw nsw i32 %59, 6
  %367 = add nuw nsw i32 %366, 1572864
  %368 = add nuw nsw i32 %367, %365
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = extractvalue %dx.types.ResRet.i32 %369, 1
  %372 = extractvalue %dx.types.ResRet.i32 %369, 2
  %373 = extractvalue %dx.types.ResRet.i32 %369, 3
  %374 = or i32 %368, 16
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = extractvalue %dx.types.ResRet.i32 %375, 1
  %378 = extractvalue %dx.types.ResRet.i32 %375, 2
  %379 = bitcast i32 %370 to float
  %380 = bitcast i32 %371 to float
  %381 = bitcast i32 %372 to float
  %382 = bitcast i32 %373 to float
  %383 = bitcast i32 %376 to float
  %384 = bitcast i32 %377 to float
  %385 = bitcast i32 %378 to float
  %386 = fmul fast float %380, %380
  %387 = fmul fast float %386, 2.000000e+00
  %388 = fsub fast float 1.000000e+00, %387
  %389 = fmul fast float %381, %381
  %390 = fmul fast float %389, 2.000000e+00
  %391 = fsub fast float %388, %390
  %392 = fmul fast float %379, 2.000000e+00
  %393 = fmul fast float %392, %380
  %394 = fmul fast float %381, 2.000000e+00
  %395 = fmul fast float %394, %382
  %396 = fsub fast float %393, %395
  %397 = fmul fast float %381, %379
  %398 = fmul fast float %382, %380
  %399 = fadd fast float %397, %398
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fmul fast float %380, %379
  %402 = fmul fast float %382, %381
  %403 = fadd fast float %401, %402
  %404 = fmul fast float %403, 2.000000e+00
  %405 = fmul fast float %379, %379
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 1.000000e+00, %406
  %408 = fsub fast float %407, %390
  %409 = fmul fast float %380, 2.000000e+00
  %410 = fmul fast float %409, %381
  %411 = fmul fast float %392, %382
  %412 = fsub fast float %410, %411
  %413 = fmul fast float %392, %381
  %414 = fmul fast float %409, %382
  %415 = fsub fast float %413, %414
  %416 = fmul fast float %381, %380
  %417 = fmul fast float %382, %379
  %418 = fadd fast float %416, %417
  %419 = fmul fast float %418, 2.000000e+00
  %420 = fsub fast float %407, %387
  %421 = shl nuw nsw i32 %104, 7
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = or i32 %421, 12
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  br label %429

; <label>:429                                     ; preds = %364, %362, %353, %278, %224, %137
  %430 = phi float [ %140, %137 ], [ 0.000000e+00, %224 ], [ %303, %278 ], [ %356, %353 ], [ %423, %364 ], [ 0.000000e+00, %362 ]
  %431 = phi float [ %141, %137 ], [ 0.000000e+00, %224 ], [ %304, %278 ], [ %357, %353 ], [ %424, %364 ], [ 0.000000e+00, %362 ]
  %432 = phi float [ %142, %137 ], [ 0.000000e+00, %224 ], [ %305, %278 ], [ %358, %353 ], [ %425, %364 ], [ 0.000000e+00, %362 ]
  %433 = phi float [ %214, %137 ], [ %242, %224 ], [ %306, %278 ], [ %361, %353 ], [ %428, %364 ], [ 0.000000e+00, %362 ]
  %434 = phi float [ %204, %137 ], [ %248, %224 ], [ %342, %278 ], [ 1.000000e+00, %353 ], [ %391, %364 ], [ 0.000000e+00, %362 ]
  %435 = phi float [ %207, %137 ], [ %253, %224 ], [ %345, %278 ], [ 0.000000e+00, %353 ], [ %396, %364 ], [ 0.000000e+00, %362 ]
  %436 = phi float [ %210, %137 ], [ %257, %224 ], [ %348, %278 ], [ 0.000000e+00, %353 ], [ %400, %364 ], [ 0.000000e+00, %362 ]
  %437 = phi float [ %150, %137 ], [ %239, %224 ], [ %299, %278 ], [ 0.000000e+00, %353 ], [ %383, %364 ], [ 0.000000e+00, %362 ]
  %438 = phi float [ %205, %137 ], [ %261, %224 ], [ %343, %278 ], [ 0.000000e+00, %353 ], [ %404, %364 ], [ 0.000000e+00, %362 ]
  %439 = phi float [ %208, %137 ], [ %265, %224 ], [ %346, %278 ], [ 1.000000e+00, %353 ], [ %408, %364 ], [ 0.000000e+00, %362 ]
  %440 = phi float [ %211, %137 ], [ %269, %224 ], [ %349, %278 ], [ 0.000000e+00, %353 ], [ %412, %364 ], [ 0.000000e+00, %362 ]
  %441 = phi float [ %151, %137 ], [ %240, %224 ], [ %300, %278 ], [ 0.000000e+00, %353 ], [ %384, %364 ], [ 0.000000e+00, %362 ]
  %442 = phi float [ %206, %137 ], [ %272, %224 ], [ %344, %278 ], [ 0.000000e+00, %353 ], [ %415, %364 ], [ 0.000000e+00, %362 ]
  %443 = phi float [ %209, %137 ], [ %276, %224 ], [ %347, %278 ], [ 0.000000e+00, %353 ], [ %419, %364 ], [ 0.000000e+00, %362 ]
  %444 = phi float [ %212, %137 ], [ %277, %224 ], [ %350, %278 ], [ 1.000000e+00, %353 ], [ %420, %364 ], [ 0.000000e+00, %362 ]
  %445 = phi float [ %152, %137 ], [ %241, %224 ], [ %301, %278 ], [ 0.000000e+00, %353 ], [ %385, %364 ], [ 0.000000e+00, %362 ]
  %446 = shl nuw nsw i32 %110, 6
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = extractvalue %dx.types.ResRet.i32 %447, 1
  %450 = extractvalue %dx.types.ResRet.i32 %447, 3
  %451 = bitcast i32 %448 to float
  %452 = bitcast i32 %449 to float
  %453 = bitcast i32 %450 to float
  %454 = or i32 %446, 16
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = extractvalue %dx.types.ResRet.i32 %455, 1
  %458 = extractvalue %dx.types.ResRet.i32 %455, 3
  %459 = bitcast i32 %456 to float
  %460 = bitcast i32 %457 to float
  %461 = bitcast i32 %458 to float
  %462 = or i32 %446, 32
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = extractvalue %dx.types.ResRet.i32 %463, 1
  %466 = extractvalue %dx.types.ResRet.i32 %463, 3
  %467 = bitcast i32 %464 to float
  %468 = bitcast i32 %465 to float
  %469 = bitcast i32 %466 to float
  %470 = or i32 %446, 48
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = extractvalue %dx.types.ResRet.i32 %471, 1
  %474 = extractvalue %dx.types.ResRet.i32 %471, 3
  %475 = bitcast i32 %472 to float
  %476 = bitcast i32 %473 to float
  %477 = bitcast i32 %474 to float
  %478 = shl nuw nsw i32 %110, 4
  %479 = or i32 %478, 4096
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = extractvalue %dx.types.ResRet.i32 %480, 1
  %483 = extractvalue %dx.types.ResRet.i32 %480, 2
  %484 = extractvalue %dx.types.ResRet.i32 %480, 3
  %485 = icmp eq i32 %484, 1
  %486 = lshr i32 %58, 10
  %487 = and i32 %486, 65472
  %488 = or i32 %487, %54
  %489 = add nuw nsw i32 %77, %488
  %490 = bitcast float %437 to i32
  %491 = bitcast float %441 to i32
  %492 = bitcast float %445 to i32
  %493 = select i1 %485, i32 0, i32 %481
  %494 = select i1 %485, i32 0, i32 %482
  %495 = select i1 %485, i32 0, i32 %483
  %496 = sub i32 %490, %493
  %497 = sub i32 %491, %494
  %498 = sub i32 %492, %495
  %499 = sitofp i32 %496 to float
  %500 = sitofp i32 %497 to float
  %501 = sitofp i32 %498 to float
  %502 = fmul fast float %499, 0x3F30000000000000
  %503 = fmul fast float %500, 0x3F30000000000000
  %504 = fmul fast float %501, 0x3F30000000000000
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = extractvalue %dx.types.ResRet.i32 %505, 1
  %508 = extractvalue %dx.types.ResRet.i32 %505, 2
  %509 = call i32 @dx.op.unary.i32(i32 30, i32 %506)  ; Bfrev(value)
  %510 = call i32 @dx.op.unary.i32(i32 30, i32 %507)  ; Bfrev(value)
  %511 = call i32 @dx.op.unary.i32(i32 30, i32 %508)  ; Bfrev(value)
  %512 = add i32 %135, 12
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = extractvalue %dx.types.ResRet.i32 %513, 1
  %516 = call i32 @dx.op.unary.i32(i32 30, i32 %514)  ; Bfrev(value)
  %517 = call i32 @dx.op.unary.i32(i32 30, i32 %515)  ; Bfrev(value)
  %518 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %509)  ; Countbits(value)
  %519 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %510)  ; Countbits(value)
  %520 = add i32 %519, %518
  %521 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %511)  ; Countbits(value)
  %522 = add i32 %520, %521
  %523 = add i32 %135, 24
  %524 = shl i32 %522, 4
  %525 = add i32 %524, %523
  br i1 %62, label %526, label %566, !dx.controlflow.hints !56

; <label>:526                                     ; preds = %429
  %527 = shl nuw nsw i32 %104, 7
  %528 = or i32 %527, 36
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = or i32 %527, 40
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = or i32 %527, 48
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = or i32 %527, 52
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = or i32 %527, 60
  %538 = icmp eq i32 %534, 0
  br label %539

; <label>:539                                     ; preds = %557, %526
  %540 = phi i32 [ 1, %526 ], [ %565, %557 ]
  %541 = and i32 %509, 268435455
  %542 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %541)  ; Countbits(value)
  %543 = shl i32 %542, 4
  %544 = add i32 %543, %523
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 1
  %547 = lshr i32 %546, 17
  %548 = and i32 %547, 1
  %549 = add nuw nsw i32 %548, 1
  %550 = lshr i32 %546, 18
  %551 = and i32 %550, 1
  %552 = add nuw nsw i32 %549, %551
  %553 = lshr i32 %546, 19
  %554 = and i32 %553, 1
  %555 = add nuw nsw i32 %552, %554
  %556 = icmp slt i32 %540, %555
  br i1 %556, label %557, label %577

; <label>:557                                     ; preds = %539
  %558 = shl i32 %540, 2
  %559 = add nsw i32 %537, -4
  %560 = add i32 %559, %558
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = add nsw i32 %540, -1
  %564 = getelementptr inbounds [3 x i32], [3 x i32]* %44, i32 0, i32 %563
  store i32 %562, i32* %564, align 4, !tbaa !57, !noalias !61
  %565 = add nuw nsw i32 %540, 1
  br label %539

; <label>:566                                     ; preds = %429
  %567 = shl nuw nsw i32 %59, 4
  %568 = add nuw nsw i32 %567, 2359296
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 1
  %571 = extractvalue %dx.types.ResRet.i32 %569, 2
  %572 = and i32 %106, 1
  %573 = icmp ne i32 %572, 0
  %574 = select i1 %573, i32 %123, i32 %124
  %575 = shl nuw nsw i32 %572, 1
  %576 = add nuw nsw i32 %575, 2
  br label %582

; <label>:577                                     ; preds = %539
  %578 = extractvalue %dx.types.ResRet.i32 %529, 0
  %579 = extractvalue %dx.types.ResRet.i32 %531, 0
  %580 = extractvalue %dx.types.ResRet.i32 %536, 0
  %581 = select i1 %538, i32 -1, i32 %534
  br label %582

; <label>:582                                     ; preds = %577, %566
  %583 = phi i32 [ %571, %566 ], [ %579, %577 ]
  %584 = phi i32 [ undef, %566 ], [ %581, %577 ]
  %585 = phi i32 [ %570, %566 ], [ %580, %577 ]
  %586 = phi i32 [ %574, %566 ], [ %578, %577 ]
  %587 = phi i32 [ %576, %566 ], [ 0, %577 ]
  %588 = lshr i32 %489, 6
  %589 = and i32 %489, 63
  %590 = add i32 %588, %76
  %591 = shl i32 %590, 2
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = shl i32 %593, 6
  %595 = or i32 %594, %589
  %596 = mul i32 %595, 3
  %597 = mul i32 %595, 6
  %598 = and i32 %597, -4
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %611 = icmp eq i32 %587, 0
  %612 = shl nuw nsw i32 %608, 3
  %613 = shl nuw nsw i32 %609, 3
  %614 = shl nuw nsw i32 %610, 3
  %615 = shl nuw nsw i32 %608, 2
  %616 = lshr i32 %608, 8
  %617 = and i32 %615, 1020
  %618 = shl nuw nsw i32 %609, 2
  %619 = lshr i32 %609, 8
  %620 = and i32 %618, 1020
  %621 = shl nuw nsw i32 %610, 2
  %622 = lshr i32 %610, 8
  %623 = and i32 %621, 1020
  br i1 %611, label %624, label %916, !dx.controlflow.hints !64

; <label>:624                                     ; preds = %582
  %625 = lshr i32 %608, 7
  %626 = add i32 %625, %586
  %627 = shl i32 %626, 2
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = shl i32 %629, 10
  %631 = and i32 %612, 1016
  %632 = or i32 %630, %631
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = extractvalue %dx.types.ResRet.i32 %633, 1
  %636 = and i32 %634, 2097151
  %637 = lshr i32 %634, 21
  %638 = shl i32 %635, 11
  %639 = and i32 %638, 2095104
  %640 = or i32 %639, %637
  %641 = lshr i32 %635, 10
  %642 = and i32 %641, 2097151
  %643 = lshr i32 %609, 7
  %644 = add i32 %643, %586
  %645 = shl i32 %644, 2
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = shl i32 %647, 10
  %649 = and i32 %613, 1016
  %650 = or i32 %648, %649
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = extractvalue %dx.types.ResRet.i32 %651, 1
  %654 = and i32 %652, 2097151
  %655 = lshr i32 %652, 21
  %656 = shl i32 %653, 11
  %657 = and i32 %656, 2095104
  %658 = or i32 %657, %655
  %659 = lshr i32 %653, 10
  %660 = and i32 %659, 2097151
  %661 = lshr i32 %610, 7
  %662 = add i32 %661, %586
  %663 = shl i32 %662, 2
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = shl i32 %665, 10
  %667 = and i32 %614, 1016
  %668 = or i32 %666, %667
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = extractvalue %dx.types.ResRet.i32 %669, 1
  %672 = and i32 %670, 2097151
  %673 = lshr i32 %670, 21
  %674 = shl i32 %671, 11
  %675 = and i32 %674, 2095104
  %676 = or i32 %675, %673
  %677 = lshr i32 %671, 10
  %678 = and i32 %677, 2097151
  %679 = add i32 %616, %583
  %680 = shl i32 %679, 2
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = shl i32 %682, 10
  %684 = or i32 %683, %617
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = add i32 %619, %583
  %687 = shl i32 %686, 2
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = shl i32 %689, 10
  %691 = or i32 %690, %620
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = add i32 %622, %583
  %694 = shl i32 %693, 2
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = shl i32 %696, 10
  %698 = or i32 %697, %623
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %616, %584
  %702 = shl i32 %701, 2
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = shl i32 %704, 10
  %706 = or i32 %705, %617
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = icmp eq i32 %584, -1
  %710 = add i32 %619, %584
  %711 = shl i32 %710, 2
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = shl i32 %713, 10
  %715 = or i32 %714, %620
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = select i1 %709, i32 -1, i32 %717
  %719 = add i32 %622, %584
  %720 = shl i32 %719, 2
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = shl i32 %722, 10
  %724 = or i32 %723, %623
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  br label %727

; <label>:727                                     ; preds = %759, %624
  %728 = phi i32 [ %863, %759 ], [ 0, %624 ]
  %729 = and i32 %509, 268435455
  %730 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %729)  ; Countbits(value)
  %731 = shl i32 %730, 4
  %732 = add i32 %731, %523
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 1
  %735 = lshr i32 %734, 17
  %736 = and i32 %735, 1
  %737 = add nuw nsw i32 %736, 1
  %738 = lshr i32 %734, 18
  %739 = and i32 %738, 1
  %740 = add nuw nsw i32 %737, %739
  %741 = lshr i32 %734, 19
  %742 = and i32 %741, 1
  %743 = add nuw nsw i32 %740, %742
  %744 = icmp slt i32 %728, %743
  br i1 %744, label %759, label %745

; <label>:745                                     ; preds = %727
  %746 = uitofp i32 %636 to float
  %747 = uitofp i32 %640 to float
  %748 = uitofp i32 %642 to float
  %749 = uitofp i32 %654 to float
  %750 = uitofp i32 %658 to float
  %751 = uitofp i32 %660 to float
  %752 = uitofp i32 %672 to float
  %753 = uitofp i32 %676 to float
  %754 = uitofp i32 %678 to float
  %755 = extractvalue %dx.types.ResRet.i32 %685, 0
  %756 = extractvalue %dx.types.ResRet.i32 %692, 0
  %757 = select i1 %709, i32 -1, i32 %708
  %758 = select i1 %709, i32 -1, i32 %726
  br label %864

; <label>:759                                     ; preds = %727
  %760 = mul nuw nsw i32 %743, %608
  %761 = add i32 %760, %728
  %762 = shl i32 %761, 3
  %763 = lshr i32 %761, 7
  %764 = and i32 %763, 4194303
  %765 = add i32 %764, %585
  %766 = shl i32 %765, 2
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = shl i32 %768, 10
  %770 = and i32 %762, 1016
  %771 = or i32 %770, %769
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = extractvalue %dx.types.ResRet.i32 %772, 1
  %775 = mul i32 %728, 3
  %776 = add i32 0, %775
  %777 = mul i32 %776, 2
  %778 = add i32 0, %777
  %779 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %778
  %780 = bitcast float* %779 to i32*
  store i32 %773, i32* %780, align 4
  %781 = mul i32 %728, 3
  %782 = add i32 0, %781
  %783 = mul i32 %782, 2
  %784 = add i32 1, %783
  %785 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %784
  %786 = bitcast float* %785 to i32*
  store i32 %774, i32* %786, align 4
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 1
  %789 = lshr i32 %788, 17
  %790 = and i32 %789, 1
  %791 = add nuw nsw i32 %790, 1
  %792 = lshr i32 %788, 18
  %793 = and i32 %792, 1
  %794 = add nuw nsw i32 %791, %793
  %795 = lshr i32 %788, 19
  %796 = and i32 %795, 1
  %797 = add nuw nsw i32 %794, %796
  %798 = mul nuw nsw i32 %797, %609
  %799 = add i32 %798, %728
  %800 = shl i32 %799, 3
  %801 = lshr i32 %799, 7
  %802 = and i32 %801, 4194303
  %803 = add i32 %802, %585
  %804 = shl i32 %803, 2
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = shl i32 %806, 10
  %808 = and i32 %800, 1016
  %809 = or i32 %808, %807
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = extractvalue %dx.types.ResRet.i32 %810, 1
  %813 = mul i32 %728, 3
  %814 = add i32 1, %813
  %815 = mul i32 %814, 2
  %816 = add i32 0, %815
  %817 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %816
  %818 = bitcast float* %817 to i32*
  store i32 %811, i32* %818, align 4
  %819 = mul i32 %728, 3
  %820 = add i32 1, %819
  %821 = mul i32 %820, 2
  %822 = add i32 1, %821
  %823 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %822
  %824 = bitcast float* %823 to i32*
  store i32 %812, i32* %824, align 4
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 1
  %827 = lshr i32 %826, 17
  %828 = and i32 %827, 1
  %829 = add nuw nsw i32 %828, 1
  %830 = lshr i32 %826, 18
  %831 = and i32 %830, 1
  %832 = add nuw nsw i32 %829, %831
  %833 = lshr i32 %826, 19
  %834 = and i32 %833, 1
  %835 = add nuw nsw i32 %832, %834
  %836 = mul nuw nsw i32 %835, %610
  %837 = add i32 %836, %728
  %838 = shl i32 %837, 3
  %839 = lshr i32 %837, 7
  %840 = and i32 %839, 4194303
  %841 = add i32 %840, %585
  %842 = shl i32 %841, 2
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = shl i32 %844, 10
  %846 = and i32 %838, 1016
  %847 = or i32 %846, %845
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = extractvalue %dx.types.ResRet.i32 %848, 1
  %851 = mul i32 %728, 3
  %852 = add i32 2, %851
  %853 = mul i32 %852, 2
  %854 = add i32 0, %853
  %855 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %854
  %856 = bitcast float* %855 to i32*
  store i32 %849, i32* %856, align 4
  %857 = mul i32 %728, 3
  %858 = add i32 2, %857
  %859 = mul i32 %858, 2
  %860 = add i32 1, %859
  %861 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %860
  %862 = bitcast float* %861 to i32*
  store i32 %850, i32* %862, align 4
  %863 = add nuw nsw i32 %728, 1
  br label %727, !llvm.loop !65

; <label>:864                                     ; preds = %878, %745
  %865 = phi i32 [ %915, %878 ], [ 1, %745 ]
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 1
  %868 = lshr i32 %867, 17
  %869 = and i32 %868, 1
  %870 = add nuw nsw i32 %869, 1
  %871 = lshr i32 %867, 18
  %872 = and i32 %871, 1
  %873 = add nuw nsw i32 %870, %872
  %874 = lshr i32 %867, 19
  %875 = and i32 %874, 1
  %876 = add nuw nsw i32 %873, %875
  %877 = icmp slt i32 %865, %876
  br i1 %877, label %878, label %1184

; <label>:878                                     ; preds = %864
  %879 = add nsw i32 %865, -1
  %880 = getelementptr inbounds [3 x i32], [3 x i32]* %44, i32 0, i32 %879
  %881 = load i32, i32* %880, align 4, !tbaa !57, !noalias !67
  %882 = add i32 %881, %616
  %883 = shl i32 %882, 2
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = shl i32 %885, 10
  %887 = or i32 %886, %617
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = mul i32 %879, 3
  %891 = add i32 0, %890
  %892 = getelementptr [9 x i32], [9 x i32]* %43, i32 0, i32 %891
  store i32 %889, i32* %892, align 4, !tbaa !57, !alias.scope !67
  %893 = add i32 %881, %619
  %894 = shl i32 %893, 2
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = shl i32 %896, 10
  %898 = or i32 %897, %620
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = mul i32 %879, 3
  %902 = add i32 1, %901
  %903 = getelementptr [9 x i32], [9 x i32]* %43, i32 0, i32 %902
  store i32 %900, i32* %903, align 4, !tbaa !57, !alias.scope !67
  %904 = add i32 %881, %622
  %905 = shl i32 %904, 2
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = shl i32 %907, 10
  %909 = or i32 %908, %623
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = mul i32 %879, 3
  %913 = add i32 2, %912
  %914 = getelementptr [9 x i32], [9 x i32]* %43, i32 0, i32 %913
  store i32 %911, i32* %914, align 4, !tbaa !57, !alias.scope !67
  %915 = add nuw nsw i32 %865, 1
  br label %864, !llvm.loop !70

; <label>:916                                     ; preds = %582
  %917 = icmp eq i32 %587, 4
  %918 = add i32 %616, %585
  %919 = shl i32 %918, 2
  %920 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 0
  %921 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 1
  %922 = add i32 %619, %585
  %923 = shl i32 %922, 2
  %924 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 2
  %925 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 3
  %926 = add i32 %622, %585
  %927 = shl i32 %926, 2
  %928 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 4
  %929 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 5
  br i1 %917, label %930, label %1039, !dx.controlflow.hints !71

; <label>:930                                     ; preds = %916
  %931 = add i32 %612, %586
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = extractvalue %dx.types.ResRet.i32 %932, 1
  %935 = and i32 %933, 2097151
  %936 = uitofp i32 %935 to float
  %937 = lshr i32 %933, 21
  %938 = shl i32 %934, 11
  %939 = and i32 %938, 2095104
  %940 = or i32 %939, %937
  %941 = uitofp i32 %940 to float
  %942 = lshr i32 %934, 10
  %943 = and i32 %942, 2097151
  %944 = uitofp i32 %943 to float
  %945 = fdiv float %936, 2.097151e+06
  %946 = fdiv float %941, 2.097151e+06
  %947 = fdiv float %944, 2.097151e+06
  %948 = fmul float %945, 2.000000e+00
  %949 = fmul float %946, 2.000000e+00
  %950 = fmul float %947, 2.000000e+00
  %951 = fadd float %948, -1.000000e+00
  %952 = fadd float %949, -1.000000e+00
  %953 = fadd float %950, -1.000000e+00
  %954 = add i32 %613, %586
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = extractvalue %dx.types.ResRet.i32 %955, 1
  %958 = and i32 %956, 2097151
  %959 = uitofp i32 %958 to float
  %960 = lshr i32 %956, 21
  %961 = shl i32 %957, 11
  %962 = and i32 %961, 2095104
  %963 = or i32 %962, %960
  %964 = uitofp i32 %963 to float
  %965 = lshr i32 %957, 10
  %966 = and i32 %965, 2097151
  %967 = uitofp i32 %966 to float
  %968 = fdiv float %959, 2.097151e+06
  %969 = fdiv float %964, 2.097151e+06
  %970 = fdiv float %967, 2.097151e+06
  %971 = fmul float %968, 2.000000e+00
  %972 = fmul float %969, 2.000000e+00
  %973 = fmul float %970, 2.000000e+00
  %974 = fadd float %971, -1.000000e+00
  %975 = fadd float %972, -1.000000e+00
  %976 = fadd float %973, -1.000000e+00
  %977 = add i32 %614, %586
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = extractvalue %dx.types.ResRet.i32 %978, 1
  %981 = and i32 %979, 2097151
  %982 = uitofp i32 %981 to float
  %983 = lshr i32 %979, 21
  %984 = shl i32 %980, 11
  %985 = and i32 %984, 2095104
  %986 = or i32 %985, %983
  %987 = uitofp i32 %986 to float
  %988 = lshr i32 %980, 10
  %989 = and i32 %988, 2097151
  %990 = uitofp i32 %989 to float
  %991 = fdiv float %982, 2.097151e+06
  %992 = fdiv float %987, 2.097151e+06
  %993 = fdiv float %990, 2.097151e+06
  %994 = fmul float %991, 2.000000e+00
  %995 = fmul float %992, 2.000000e+00
  %996 = fmul float %993, 2.000000e+00
  %997 = fadd float %994, -1.000000e+00
  %998 = fadd float %995, -1.000000e+00
  %999 = fadd float %996, -1.000000e+00
  %1000 = add i32 %615, %583
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = add i32 %618, %583
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = add i32 %621, %583
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = shl i32 %1010, 10
  %1012 = or i32 %1011, %617
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 65535
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = lshr i32 %1014, 16
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  store float %1016, float* %920, align 4
  store float %1018, float* %921, align 4
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = shl i32 %1020, 10
  %1022 = or i32 %1021, %620
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 65535
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = lshr i32 %1024, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  store float %1026, float* %924, align 4
  store float %1028, float* %925, align 4
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = shl i32 %1030, 10
  %1032 = or i32 %1031, %623
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 65535
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = lshr i32 %1034, 16
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  store float %1036, float* %928, align 4
  store float %1038, float* %929, align 4
  br label %1185

; <label>:1039                                    ; preds = %916
  %1040 = lshr i32 %608, 7
  %1041 = add i32 %1040, %586
  %1042 = shl i32 %1041, 2
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = shl i32 %1044, 10
  %1046 = and i32 %612, 1016
  %1047 = or i32 %1045, %1046
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.i32 %1048, 1
  %1051 = and i32 %1049, 2097151
  %1052 = uitofp i32 %1051 to float
  %1053 = lshr i32 %1049, 21
  %1054 = shl i32 %1050, 11
  %1055 = and i32 %1054, 2095104
  %1056 = or i32 %1055, %1053
  %1057 = uitofp i32 %1056 to float
  %1058 = lshr i32 %1050, 10
  %1059 = and i32 %1058, 2097151
  %1060 = uitofp i32 %1059 to float
  %1061 = fdiv float %1052, 2.097151e+06
  %1062 = fdiv float %1057, 2.097151e+06
  %1063 = fdiv float %1060, 2.097151e+06
  %1064 = fmul float %1061, 2.000000e+00
  %1065 = fmul float %1062, 2.000000e+00
  %1066 = fmul float %1063, 2.000000e+00
  %1067 = fadd float %1064, -1.000000e+00
  %1068 = fadd float %1065, -1.000000e+00
  %1069 = fadd float %1066, -1.000000e+00
  %1070 = lshr i32 %609, 7
  %1071 = add i32 %1070, %586
  %1072 = shl i32 %1071, 2
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = shl i32 %1074, 10
  %1076 = and i32 %613, 1016
  %1077 = or i32 %1075, %1076
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.i32 %1078, 1
  %1081 = and i32 %1079, 2097151
  %1082 = uitofp i32 %1081 to float
  %1083 = lshr i32 %1079, 21
  %1084 = shl i32 %1080, 11
  %1085 = and i32 %1084, 2095104
  %1086 = or i32 %1085, %1083
  %1087 = uitofp i32 %1086 to float
  %1088 = lshr i32 %1080, 10
  %1089 = and i32 %1088, 2097151
  %1090 = uitofp i32 %1089 to float
  %1091 = fdiv float %1082, 2.097151e+06
  %1092 = fdiv float %1087, 2.097151e+06
  %1093 = fdiv float %1090, 2.097151e+06
  %1094 = fmul float %1091, 2.000000e+00
  %1095 = fmul float %1092, 2.000000e+00
  %1096 = fmul float %1093, 2.000000e+00
  %1097 = fadd float %1094, -1.000000e+00
  %1098 = fadd float %1095, -1.000000e+00
  %1099 = fadd float %1096, -1.000000e+00
  %1100 = lshr i32 %610, 7
  %1101 = add i32 %1100, %586
  %1102 = shl i32 %1101, 2
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = shl i32 %1104, 10
  %1106 = and i32 %614, 1016
  %1107 = or i32 %1105, %1106
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.i32 %1108, 1
  %1111 = and i32 %1109, 2097151
  %1112 = uitofp i32 %1111 to float
  %1113 = lshr i32 %1109, 21
  %1114 = shl i32 %1110, 11
  %1115 = and i32 %1114, 2095104
  %1116 = or i32 %1115, %1113
  %1117 = uitofp i32 %1116 to float
  %1118 = lshr i32 %1110, 10
  %1119 = and i32 %1118, 2097151
  %1120 = uitofp i32 %1119 to float
  %1121 = fdiv float %1112, 2.097151e+06
  %1122 = fdiv float %1117, 2.097151e+06
  %1123 = fdiv float %1120, 2.097151e+06
  %1124 = fmul float %1121, 2.000000e+00
  %1125 = fmul float %1122, 2.000000e+00
  %1126 = fmul float %1123, 2.000000e+00
  %1127 = fadd float %1124, -1.000000e+00
  %1128 = fadd float %1125, -1.000000e+00
  %1129 = fadd float %1126, -1.000000e+00
  %1130 = add i32 %616, %583
  %1131 = shl i32 %1130, 2
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = shl i32 %1133, 10
  %1135 = or i32 %1134, %617
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %619, %583
  %1139 = shl i32 %1138, 2
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = shl i32 %1141, 10
  %1143 = or i32 %1142, %620
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = add i32 %622, %583
  %1147 = shl i32 %1146, 2
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = shl i32 %1149, 10
  %1151 = or i32 %1150, %623
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = shl i32 %1155, 10
  %1157 = or i32 %1156, %617
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 65535
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = lshr i32 %1159, 16
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  store float %1161, float* %920, align 4
  store float %1163, float* %921, align 4
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = shl i32 %1165, 10
  %1167 = or i32 %1166, %620
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 65535
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = lshr i32 %1169, 16
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  store float %1171, float* %924, align 4
  store float %1173, float* %925, align 4
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = shl i32 %1175, 10
  %1177 = or i32 %1176, %623
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 65535
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = lshr i32 %1179, 16
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  store float %1181, float* %928, align 4
  store float %1183, float* %929, align 4
  br label %1185

; <label>:1184                                    ; preds = %864
  br label %1185

; <label>:1185                                    ; preds = %1184, %1039, %930
  %1186 = phi float [ %1127, %1039 ], [ %997, %930 ], [ %752, %1184 ]
  %1187 = phi float [ %1097, %1039 ], [ %974, %930 ], [ %749, %1184 ]
  %1188 = phi float [ %1067, %1039 ], [ %951, %930 ], [ %746, %1184 ]
  %1189 = phi float [ %1128, %1039 ], [ %998, %930 ], [ %753, %1184 ]
  %1190 = phi float [ %1098, %1039 ], [ %975, %930 ], [ %750, %1184 ]
  %1191 = phi float [ %1068, %1039 ], [ %952, %930 ], [ %747, %1184 ]
  %1192 = phi float [ %1129, %1039 ], [ %999, %930 ], [ %754, %1184 ]
  %1193 = phi float [ %1099, %1039 ], [ %976, %930 ], [ %751, %1184 ]
  %1194 = phi float [ %1069, %1039 ], [ %953, %930 ], [ %748, %1184 ]
  %1195 = phi i32 [ %1153, %1039 ], [ %1008, %930 ], [ %700, %1184 ]
  %1196 = phi i32 [ %1145, %1039 ], [ %1005, %930 ], [ %756, %1184 ]
  %1197 = phi i32 [ %1137, %1039 ], [ %1002, %930 ], [ %755, %1184 ]
  %1198 = phi i32 [ undef, %1039 ], [ undef, %930 ], [ %758, %1184 ]
  %1199 = phi i32 [ undef, %1039 ], [ undef, %930 ], [ %718, %1184 ]
  %1200 = phi i32 [ undef, %1039 ], [ undef, %930 ], [ %757, %1184 ]
  %1201 = fmul float %433, %1194
  %1202 = fmul float %433, %1193
  %1203 = fmul float %433, %1192
  %1204 = fmul float %433, %1191
  %1205 = fmul float %433, %1190
  %1206 = fmul float %433, %1189
  %1207 = fmul float %433, %1188
  %1208 = fmul float %433, %1187
  %1209 = fmul float %433, %1186
  %1210 = fadd float %432, %1201
  %1211 = fadd float %432, %1202
  %1212 = fadd float %432, %1203
  %1213 = fadd float %431, %1204
  %1214 = fadd float %431, %1205
  %1215 = fadd float %431, %1206
  %1216 = fadd float %430, %1207
  %1217 = fadd float %430, %1208
  %1218 = fadd float %430, %1209
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1222 = extractvalue %dx.types.CBufRet.f32 %1219, 3
  %1223 = lshr i32 %1197, 30
  %1224 = and i32 %1197, 1023
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1197, 10
  %1227 = and i32 %1226, 1023
  %1228 = uitofp i32 %1227 to float
  %1229 = lshr i32 %1197, 20
  %1230 = and i32 %1229, 511
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1225, 0x3F56A64800000000
  %1233 = fadd fast float %1232, 0xBFE6A09E60000000
  %1234 = fmul fast float %1228, 0x3F56A64800000000
  %1235 = fadd fast float %1234, 0xBFE6A09E60000000
  %1236 = fmul fast float %1231, 0x3F66ABF460000000
  %1237 = fadd fast float %1236, 0xBFE6A09E60000000
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1233, float %1235, float %1237, float %1233, float %1235, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = fsub fast float 1.000000e+00, %1239
  %1241 = call float @dx.op.unary.f32(i32 24, float %1240)  ; Sqrt(value)
  %1242 = icmp eq i32 %1223, 0
  br i1 %1242, label %1249, label %1243, !dx.controlflow.hints !72

; <label>:1243                                    ; preds = %1185
  %1244 = icmp eq i32 %1223, 1
  br i1 %1244, label %1249, label %1245, !dx.controlflow.hints !73

; <label>:1245                                    ; preds = %1243
  %1246 = icmp eq i32 %1223, 2
  %1247 = select i1 %1246, float %1241, float %1237
  %1248 = select i1 %1246, float %1237, float %1241
  br label %1249

; <label>:1249                                    ; preds = %1245, %1243, %1185
  %1250 = phi float [ %1233, %1243 ], [ %1241, %1185 ], [ %1233, %1245 ]
  %1251 = phi float [ %1241, %1243 ], [ %1233, %1185 ], [ %1235, %1245 ]
  %1252 = phi float [ %1235, %1243 ], [ %1235, %1185 ], [ %1247, %1245 ]
  %1253 = phi float [ %1237, %1243 ], [ %1237, %1185 ], [ %1248, %1245 ]
  %1254 = fmul fast float %1252, %1250
  %1255 = fmul fast float %1253, %1251
  %1256 = fadd fast float %1255, %1254
  %1257 = fmul fast float %1256, 2.000000e+00
  %1258 = fmul fast float %1251, 2.000000e+00
  %1259 = fmul fast float %1258, %1252
  %1260 = fmul fast float %1250, 2.000000e+00
  %1261 = fmul fast float %1260, %1253
  %1262 = fsub fast float %1259, %1261
  %1263 = fmul fast float %1250, %1250
  %1264 = fmul fast float %1263, 2.000000e+00
  %1265 = fsub fast float 1.000000e+00, %1264
  %1266 = fmul fast float %1251, %1251
  %1267 = fmul fast float %1266, 2.000000e+00
  %1268 = fsub fast float %1265, %1267
  br i1 %1242, label %1275, label %1269, !dx.controlflow.hints !72

; <label>:1269                                    ; preds = %1249
  %1270 = icmp eq i32 %1223, 1
  br i1 %1270, label %1275, label %1271, !dx.controlflow.hints !73

; <label>:1271                                    ; preds = %1269
  %1272 = icmp eq i32 %1223, 2
  %1273 = select i1 %1272, float %1241, float %1237
  %1274 = select i1 %1272, float %1237, float %1241
  br label %1275

; <label>:1275                                    ; preds = %1271, %1269, %1249
  %1276 = phi float [ %1233, %1269 ], [ %1241, %1249 ], [ %1233, %1271 ]
  %1277 = phi float [ %1241, %1269 ], [ %1233, %1249 ], [ %1235, %1271 ]
  %1278 = phi float [ %1235, %1269 ], [ %1235, %1249 ], [ %1273, %1271 ]
  %1279 = phi float [ %1237, %1269 ], [ %1237, %1249 ], [ %1274, %1271 ]
  %1280 = fmul fast float %1277, %1277
  %1281 = fmul fast float %1280, 2.000000e+00
  %1282 = fsub fast float 1.000000e+00, %1281
  %1283 = fmul fast float %1278, %1278
  %1284 = fmul fast float %1283, 2.000000e+00
  %1285 = fsub fast float %1282, %1284
  %1286 = fmul fast float %1277, %1276
  %1287 = fmul fast float %1279, %1278
  %1288 = fadd fast float %1287, %1286
  %1289 = fmul fast float %1288, 2.000000e+00
  %1290 = fmul fast float %1276, 2.000000e+00
  %1291 = fmul fast float %1290, %1278
  %1292 = fmul fast float %1277, 2.000000e+00
  %1293 = fmul fast float %1292, %1279
  %1294 = fsub fast float %1291, %1293
  %1295 = fmul fast float %1294, %1262
  %1296 = fmul fast float %1289, %1268
  %1297 = fsub fast float %1295, %1296
  %1298 = fmul fast float %1285, %1268
  %1299 = fmul fast float %1294, %1257
  %1300 = fsub fast float %1298, %1299
  %1301 = fmul fast float %1289, %1257
  %1302 = fmul fast float %1285, %1262
  %1303 = fsub fast float %1301, %1302
  %1304 = and i32 %1197, 536870912
  %1305 = icmp ne i32 %1304, 0
  %1306 = select i1 %1305, float -1.000000e+00, float 1.000000e+00
  %1307 = fmul fast float %1297, %1306
  %1308 = fmul fast float %1300, %1306
  %1309 = fmul fast float %1303, %1306
  %1310 = fmul fast float %1216, %434
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %435, float %1310)  ; FMad(a,b,c)
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %436, float %1311)  ; FMad(a,b,c)
  %1313 = fmul fast float %1216, %438
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %439, float %1313)  ; FMad(a,b,c)
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %440, float %1314)  ; FMad(a,b,c)
  %1316 = fmul fast float %1216, %442
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %443, float %1316)  ; FMad(a,b,c)
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %444, float %1317)  ; FMad(a,b,c)
  %1319 = fmul fast float %1257, %434
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1262, float %435, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1268, float %436, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1257, %438
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1262, float %439, float %1322)  ; FMad(a,b,c)
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1268, float %440, float %1323)  ; FMad(a,b,c)
  %1325 = fmul fast float %1257, %442
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1262, float %443, float %1325)  ; FMad(a,b,c)
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1268, float %444, float %1326)  ; FMad(a,b,c)
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1324, float %1327, float %1321, float %1324, float %1327)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = call float @dx.op.unary.f32(i32 25, float %1328)  ; Rsqrt(value)
  %1330 = fmul fast float %1329, %1324
  %1331 = fmul fast float %1285, %434
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %435, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1294, float %436, float %1332)  ; FMad(a,b,c)
  %1334 = fmul fast float %1285, %438
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %439, float %1334)  ; FMad(a,b,c)
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1294, float %440, float %1335)  ; FMad(a,b,c)
  %1337 = fmul fast float %1285, %442
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %443, float %1337)  ; FMad(a,b,c)
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %1294, float %444, float %1338)  ; FMad(a,b,c)
  %1340 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1336, float %1339, float %1333, float %1336, float %1339)  ; Dot3(ax,ay,az,bx,by,bz)
  %1341 = call float @dx.op.unary.f32(i32 25, float %1340)  ; Rsqrt(value)
  %1342 = fmul fast float %1341, %1336
  %1343 = fmul fast float %1307, %434
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %1308, float %435, float %1343)  ; FMad(a,b,c)
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1309, float %436, float %1344)  ; FMad(a,b,c)
  %1346 = fmul fast float %1307, %438
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1308, float %439, float %1346)  ; FMad(a,b,c)
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1309, float %440, float %1347)  ; FMad(a,b,c)
  %1349 = fmul fast float %1307, %442
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1308, float %443, float %1349)  ; FMad(a,b,c)
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1309, float %444, float %1350)  ; FMad(a,b,c)
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1345, float %1348, float %1351, float %1345, float %1348, float %1351)  ; Dot3(ax,ay,az,bx,by,bz)
  %1353 = call float @dx.op.unary.f32(i32 25, float %1352)  ; Rsqrt(value)
  %1354 = fmul fast float %1353, %1348
  %1355 = and i32 %1200, 255
  %1356 = uitofp i32 %1355 to float
  %1357 = lshr i32 %1200, 8
  %1358 = and i32 %1357, 255
  %1359 = lshr i32 %1200, 16
  %1360 = and i32 %1359, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = lshr i32 %1200, 24
  %1363 = fmul fast float %1356, 0x3F70101020000000
  %1364 = fmul fast float %1361, 0x3F70101020000000
  br label %1365

; <label>:1365                                    ; preds = %1432, %1275
  %1366 = phi i32 [ 1, %1275 ], [ %1476, %1432 ]
  %1367 = and i32 %509, 268435455
  %1368 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1367)  ; Countbits(value)
  %1369 = shl i32 %1368, 4
  %1370 = add i32 %1369, %523
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 1
  %1373 = lshr i32 %1372, 17
  %1374 = and i32 %1373, 1
  %1375 = add nuw nsw i32 %1374, 1
  %1376 = lshr i32 %1372, 18
  %1377 = and i32 %1376, 1
  %1378 = add nuw nsw i32 %1375, %1377
  %1379 = lshr i32 %1372, 19
  %1380 = and i32 %1379, 1
  %1381 = add nuw nsw i32 %1378, %1380
  %1382 = icmp slt i32 %1366, %1381
  br i1 %1382, label %1432, label %1383

; <label>:1383                                    ; preds = %1365
  %1384 = fadd fast float %1312, %502
  %1385 = fadd fast float %1315, %503
  %1386 = fadd fast float %1318, %504
  %1387 = fmul fast float %1329, %1321
  %1388 = fmul fast float %1329, %1327
  %1389 = fmul fast float %1341, %1333
  %1390 = fmul fast float %1341, %1339
  %1391 = fmul fast float %1353, %1345
  %1392 = fmul fast float %1353, %1351
  %1393 = uitofp i32 %1358 to float
  %1394 = uitofp i32 %1362 to float
  %1395 = fmul fast float %1393, 0x3F70101020000000
  %1396 = fmul fast float %1394, 0x3F70101020000000
  %1397 = fmul fast float %1384, %451
  %1398 = call float @dx.op.tertiary.f32(i32 46, float %1385, float %459, float %1397)  ; FMad(a,b,c)
  %1399 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %467, float %1398)  ; FMad(a,b,c)
  %1400 = fadd fast float %1399, %475
  %1401 = fmul fast float %1384, %452
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1385, float %460, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %468, float %1402)  ; FMad(a,b,c)
  %1404 = fadd fast float %1403, %476
  %1405 = fmul fast float %1384, %453
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1385, float %461, float %1405)  ; FMad(a,b,c)
  %1407 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %469, float %1406)  ; FMad(a,b,c)
  %1408 = fadd fast float %1407, %477
  %1409 = fdiv fast float 1.000000e+00, %1408
  %1410 = fmul fast float %1409, %1400
  %1411 = fmul fast float %1409, %1404
  %1412 = lshr i32 %1196, 30
  %1413 = and i32 %1196, 1023
  %1414 = uitofp i32 %1413 to float
  %1415 = lshr i32 %1196, 10
  %1416 = and i32 %1415, 1023
  %1417 = uitofp i32 %1416 to float
  %1418 = lshr i32 %1196, 20
  %1419 = and i32 %1418, 511
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1414, 0x3F56A64800000000
  %1422 = fadd fast float %1421, 0xBFE6A09E60000000
  %1423 = fmul fast float %1417, 0x3F56A64800000000
  %1424 = fadd fast float %1423, 0xBFE6A09E60000000
  %1425 = fmul fast float %1420, 0x3F66ABF460000000
  %1426 = fadd fast float %1425, 0xBFE6A09E60000000
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1424, float %1426, float %1422, float %1424, float %1426)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fsub fast float 1.000000e+00, %1428
  %1430 = call float @dx.op.unary.f32(i32 24, float %1429)  ; Sqrt(value)
  %1431 = icmp eq i32 %1412, 0
  br i1 %1431, label %1483, label %1477, !dx.controlflow.hints !72

; <label>:1432                                    ; preds = %1365
  %1433 = add nsw i32 %1366, -1
  %1434 = mul i32 %1433, 3
  %1435 = add i32 0, %1434
  %1436 = getelementptr [9 x i32], [9 x i32]* %43, i32 0, i32 %1435
  %1437 = load i32, i32* %1436, align 4, !tbaa !57, !noalias !74
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = fmul fast float %1439, 0x3F80101020000000
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = lshr i32 %1437, 8
  %1443 = and i32 %1442, 255
  %1444 = uitofp i32 %1443 to float
  %1445 = fmul fast float %1444, 0x3F80101020000000
  %1446 = fadd fast float %1445, -1.000000e+00
  %1447 = lshr i32 %1437, 16
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = fmul fast float %1449, 0x3F80101020000000
  %1451 = fadd fast float %1450, -1.000000e+00
  %1452 = lshr i32 %1437, 24
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F80101020000000
  %1455 = fadd fast float %1454, -1.000000e+00
  %1456 = mul i32 %1433, 3
  %1457 = add i32 0, %1456
  %1458 = mul i32 %1457, 4
  %1459 = add i32 0, %1458
  %1460 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1459
  store float %1441, float* %1460, align 4
  %1461 = mul i32 %1433, 3
  %1462 = add i32 0, %1461
  %1463 = mul i32 %1462, 4
  %1464 = add i32 1, %1463
  %1465 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1464
  store float %1446, float* %1465, align 4
  %1466 = mul i32 %1433, 3
  %1467 = add i32 0, %1466
  %1468 = mul i32 %1467, 4
  %1469 = add i32 2, %1468
  %1470 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1469
  store float %1451, float* %1470, align 4
  %1471 = mul i32 %1433, 3
  %1472 = add i32 0, %1471
  %1473 = mul i32 %1472, 4
  %1474 = add i32 3, %1473
  %1475 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1474
  store float %1455, float* %1475, align 4
  %1476 = add nuw nsw i32 %1366, 1
  br label %1365

; <label>:1477                                    ; preds = %1383
  %1478 = icmp eq i32 %1412, 1
  br i1 %1478, label %1483, label %1479, !dx.controlflow.hints !73

; <label>:1479                                    ; preds = %1477
  %1480 = icmp eq i32 %1412, 2
  %1481 = select i1 %1480, float %1430, float %1426
  %1482 = select i1 %1480, float %1426, float %1430
  br label %1483

; <label>:1483                                    ; preds = %1479, %1477, %1383
  %1484 = phi float [ %1422, %1477 ], [ %1430, %1383 ], [ %1422, %1479 ]
  %1485 = phi float [ %1430, %1477 ], [ %1422, %1383 ], [ %1424, %1479 ]
  %1486 = phi float [ %1424, %1477 ], [ %1424, %1383 ], [ %1481, %1479 ]
  %1487 = phi float [ %1426, %1477 ], [ %1426, %1383 ], [ %1482, %1479 ]
  %1488 = fmul fast float %1486, %1484
  %1489 = fmul fast float %1487, %1485
  %1490 = fadd fast float %1489, %1488
  %1491 = fmul fast float %1490, 2.000000e+00
  %1492 = fmul fast float %1485, 2.000000e+00
  %1493 = fmul fast float %1492, %1486
  %1494 = fmul fast float %1484, 2.000000e+00
  %1495 = fmul fast float %1494, %1487
  %1496 = fsub fast float %1493, %1495
  %1497 = fmul fast float %1484, %1484
  %1498 = fmul fast float %1497, 2.000000e+00
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = fmul fast float %1485, %1485
  %1501 = fmul fast float %1500, 2.000000e+00
  %1502 = fsub fast float %1499, %1501
  br i1 %1431, label %1509, label %1503, !dx.controlflow.hints !72

; <label>:1503                                    ; preds = %1483
  %1504 = icmp eq i32 %1412, 1
  br i1 %1504, label %1509, label %1505, !dx.controlflow.hints !73

; <label>:1505                                    ; preds = %1503
  %1506 = icmp eq i32 %1412, 2
  %1507 = select i1 %1506, float %1430, float %1426
  %1508 = select i1 %1506, float %1426, float %1430
  br label %1509

; <label>:1509                                    ; preds = %1505, %1503, %1483
  %1510 = phi float [ %1422, %1503 ], [ %1430, %1483 ], [ %1422, %1505 ]
  %1511 = phi float [ %1430, %1503 ], [ %1422, %1483 ], [ %1424, %1505 ]
  %1512 = phi float [ %1424, %1503 ], [ %1424, %1483 ], [ %1507, %1505 ]
  %1513 = phi float [ %1426, %1503 ], [ %1426, %1483 ], [ %1508, %1505 ]
  %1514 = fmul fast float %1511, %1511
  %1515 = fmul fast float %1514, 2.000000e+00
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1512, %1512
  %1518 = fmul fast float %1517, 2.000000e+00
  %1519 = fsub fast float %1516, %1518
  %1520 = fmul fast float %1511, %1510
  %1521 = fmul fast float %1513, %1512
  %1522 = fadd fast float %1521, %1520
  %1523 = fmul fast float %1522, 2.000000e+00
  %1524 = fmul fast float %1510, 2.000000e+00
  %1525 = fmul fast float %1524, %1512
  %1526 = fmul fast float %1511, 2.000000e+00
  %1527 = fmul fast float %1526, %1513
  %1528 = fsub fast float %1525, %1527
  %1529 = fmul fast float %1528, %1496
  %1530 = fmul fast float %1523, %1502
  %1531 = fsub fast float %1529, %1530
  %1532 = fmul fast float %1519, %1502
  %1533 = fmul fast float %1528, %1491
  %1534 = fsub fast float %1532, %1533
  %1535 = fmul fast float %1523, %1491
  %1536 = fmul fast float %1519, %1496
  %1537 = fsub fast float %1535, %1536
  %1538 = and i32 %1196, 536870912
  %1539 = icmp ne i32 %1538, 0
  %1540 = select i1 %1539, float -1.000000e+00, float 1.000000e+00
  %1541 = fmul fast float %1531, %1540
  %1542 = fmul fast float %1534, %1540
  %1543 = fmul fast float %1537, %1540
  %1544 = fmul fast float %1217, %434
  %1545 = call float @dx.op.tertiary.f32(i32 46, float %1214, float %435, float %1544)  ; FMad(a,b,c)
  %1546 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %436, float %1545)  ; FMad(a,b,c)
  %1547 = fmul fast float %1217, %438
  %1548 = call float @dx.op.tertiary.f32(i32 46, float %1214, float %439, float %1547)  ; FMad(a,b,c)
  %1549 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %440, float %1548)  ; FMad(a,b,c)
  %1550 = fmul fast float %1217, %442
  %1551 = call float @dx.op.tertiary.f32(i32 46, float %1214, float %443, float %1550)  ; FMad(a,b,c)
  %1552 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %444, float %1551)  ; FMad(a,b,c)
  %1553 = fmul fast float %1491, %434
  %1554 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %435, float %1553)  ; FMad(a,b,c)
  %1555 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %436, float %1554)  ; FMad(a,b,c)
  %1556 = fmul fast float %1491, %438
  %1557 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %439, float %1556)  ; FMad(a,b,c)
  %1558 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %440, float %1557)  ; FMad(a,b,c)
  %1559 = fmul fast float %1491, %442
  %1560 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %443, float %1559)  ; FMad(a,b,c)
  %1561 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %444, float %1560)  ; FMad(a,b,c)
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1555, float %1558, float %1561, float %1555, float %1558, float %1561)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = call float @dx.op.unary.f32(i32 25, float %1562)  ; Rsqrt(value)
  %1564 = fmul fast float %1563, %1558
  %1565 = fmul fast float %1519, %434
  %1566 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %435, float %1565)  ; FMad(a,b,c)
  %1567 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %436, float %1566)  ; FMad(a,b,c)
  %1568 = fmul fast float %1519, %438
  %1569 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %439, float %1568)  ; FMad(a,b,c)
  %1570 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %440, float %1569)  ; FMad(a,b,c)
  %1571 = fmul fast float %1519, %442
  %1572 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %443, float %1571)  ; FMad(a,b,c)
  %1573 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %444, float %1572)  ; FMad(a,b,c)
  %1574 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1570, float %1573, float %1567, float %1570, float %1573)  ; Dot3(ax,ay,az,bx,by,bz)
  %1575 = call float @dx.op.unary.f32(i32 25, float %1574)  ; Rsqrt(value)
  %1576 = fmul fast float %1575, %1570
  %1577 = fmul fast float %1541, %434
  %1578 = call float @dx.op.tertiary.f32(i32 46, float %1542, float %435, float %1577)  ; FMad(a,b,c)
  %1579 = call float @dx.op.tertiary.f32(i32 46, float %1543, float %436, float %1578)  ; FMad(a,b,c)
  %1580 = fmul fast float %1541, %438
  %1581 = call float @dx.op.tertiary.f32(i32 46, float %1542, float %439, float %1580)  ; FMad(a,b,c)
  %1582 = call float @dx.op.tertiary.f32(i32 46, float %1543, float %440, float %1581)  ; FMad(a,b,c)
  %1583 = fmul fast float %1541, %442
  %1584 = call float @dx.op.tertiary.f32(i32 46, float %1542, float %443, float %1583)  ; FMad(a,b,c)
  %1585 = call float @dx.op.tertiary.f32(i32 46, float %1543, float %444, float %1584)  ; FMad(a,b,c)
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1579, float %1582, float %1585, float %1579, float %1582, float %1585)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = call float @dx.op.unary.f32(i32 25, float %1586)  ; Rsqrt(value)
  %1588 = fmul fast float %1587, %1582
  %1589 = and i32 %1199, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = lshr i32 %1199, 8
  %1592 = and i32 %1591, 255
  %1593 = lshr i32 %1199, 16
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = lshr i32 %1199, 24
  %1597 = fmul fast float %1590, 0x3F70101020000000
  %1598 = fmul fast float %1595, 0x3F70101020000000
  br label %1599

; <label>:1599                                    ; preds = %1662, %1509
  %1600 = phi i32 [ 1, %1509 ], [ %1706, %1662 ]
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 1
  %1603 = lshr i32 %1602, 17
  %1604 = and i32 %1603, 1
  %1605 = add nuw nsw i32 %1604, 1
  %1606 = lshr i32 %1602, 18
  %1607 = and i32 %1606, 1
  %1608 = add nuw nsw i32 %1605, %1607
  %1609 = lshr i32 %1602, 19
  %1610 = and i32 %1609, 1
  %1611 = add nuw nsw i32 %1608, %1610
  %1612 = icmp slt i32 %1600, %1611
  br i1 %1612, label %1662, label %1613

; <label>:1613                                    ; preds = %1599
  %1614 = fadd fast float %1546, %502
  %1615 = fadd fast float %1549, %503
  %1616 = fadd fast float %1552, %504
  %1617 = fmul fast float %1563, %1555
  %1618 = fmul fast float %1563, %1561
  %1619 = fmul fast float %1575, %1567
  %1620 = fmul fast float %1575, %1573
  %1621 = fmul fast float %1587, %1579
  %1622 = fmul fast float %1587, %1585
  %1623 = uitofp i32 %1592 to float
  %1624 = uitofp i32 %1596 to float
  %1625 = fmul fast float %1623, 0x3F70101020000000
  %1626 = fmul fast float %1624, 0x3F70101020000000
  %1627 = fmul fast float %1614, %451
  %1628 = call float @dx.op.tertiary.f32(i32 46, float %1615, float %459, float %1627)  ; FMad(a,b,c)
  %1629 = call float @dx.op.tertiary.f32(i32 46, float %1616, float %467, float %1628)  ; FMad(a,b,c)
  %1630 = fadd fast float %1629, %475
  %1631 = fmul fast float %1614, %452
  %1632 = call float @dx.op.tertiary.f32(i32 46, float %1615, float %460, float %1631)  ; FMad(a,b,c)
  %1633 = call float @dx.op.tertiary.f32(i32 46, float %1616, float %468, float %1632)  ; FMad(a,b,c)
  %1634 = fadd fast float %1633, %476
  %1635 = fmul fast float %1614, %453
  %1636 = call float @dx.op.tertiary.f32(i32 46, float %1615, float %461, float %1635)  ; FMad(a,b,c)
  %1637 = call float @dx.op.tertiary.f32(i32 46, float %1616, float %469, float %1636)  ; FMad(a,b,c)
  %1638 = fadd fast float %1637, %477
  %1639 = fdiv fast float 1.000000e+00, %1638
  %1640 = fmul fast float %1639, %1630
  %1641 = fmul fast float %1639, %1634
  %1642 = lshr i32 %1195, 30
  %1643 = and i32 %1195, 1023
  %1644 = uitofp i32 %1643 to float
  %1645 = lshr i32 %1195, 10
  %1646 = and i32 %1645, 1023
  %1647 = uitofp i32 %1646 to float
  %1648 = lshr i32 %1195, 20
  %1649 = and i32 %1648, 511
  %1650 = uitofp i32 %1649 to float
  %1651 = fmul fast float %1644, 0x3F56A64800000000
  %1652 = fadd fast float %1651, 0xBFE6A09E60000000
  %1653 = fmul fast float %1647, 0x3F56A64800000000
  %1654 = fadd fast float %1653, 0xBFE6A09E60000000
  %1655 = fmul fast float %1650, 0x3F66ABF460000000
  %1656 = fadd fast float %1655, 0xBFE6A09E60000000
  %1657 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1654, float %1656, float %1652, float %1654, float %1656)  ; Dot3(ax,ay,az,bx,by,bz)
  %1658 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1659 = fsub fast float 1.000000e+00, %1658
  %1660 = call float @dx.op.unary.f32(i32 24, float %1659)  ; Sqrt(value)
  %1661 = icmp eq i32 %1642, 0
  br i1 %1661, label %1713, label %1707, !dx.controlflow.hints !72

; <label>:1662                                    ; preds = %1599
  %1663 = add nsw i32 %1600, -1
  %1664 = mul i32 %1663, 3
  %1665 = add i32 1, %1664
  %1666 = getelementptr [9 x i32], [9 x i32]* %43, i32 0, i32 %1665
  %1667 = load i32, i32* %1666, align 4, !tbaa !57, !noalias !74
  %1668 = and i32 %1667, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = fmul fast float %1669, 0x3F80101020000000
  %1671 = fadd fast float %1670, -1.000000e+00
  %1672 = lshr i32 %1667, 8
  %1673 = and i32 %1672, 255
  %1674 = uitofp i32 %1673 to float
  %1675 = fmul fast float %1674, 0x3F80101020000000
  %1676 = fadd fast float %1675, -1.000000e+00
  %1677 = lshr i32 %1667, 16
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F80101020000000
  %1681 = fadd fast float %1680, -1.000000e+00
  %1682 = lshr i32 %1667, 24
  %1683 = uitofp i32 %1682 to float
  %1684 = fmul fast float %1683, 0x3F80101020000000
  %1685 = fadd fast float %1684, -1.000000e+00
  %1686 = mul i32 %1663, 3
  %1687 = add i32 1, %1686
  %1688 = mul i32 %1687, 4
  %1689 = add i32 0, %1688
  %1690 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1689
  store float %1671, float* %1690, align 4
  %1691 = mul i32 %1663, 3
  %1692 = add i32 1, %1691
  %1693 = mul i32 %1692, 4
  %1694 = add i32 1, %1693
  %1695 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1694
  store float %1676, float* %1695, align 4
  %1696 = mul i32 %1663, 3
  %1697 = add i32 1, %1696
  %1698 = mul i32 %1697, 4
  %1699 = add i32 2, %1698
  %1700 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1699
  store float %1681, float* %1700, align 4
  %1701 = mul i32 %1663, 3
  %1702 = add i32 1, %1701
  %1703 = mul i32 %1702, 4
  %1704 = add i32 3, %1703
  %1705 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1704
  store float %1685, float* %1705, align 4
  %1706 = add nuw nsw i32 %1600, 1
  br label %1599

; <label>:1707                                    ; preds = %1613
  %1708 = icmp eq i32 %1642, 1
  br i1 %1708, label %1713, label %1709, !dx.controlflow.hints !73

; <label>:1709                                    ; preds = %1707
  %1710 = icmp eq i32 %1642, 2
  %1711 = select i1 %1710, float %1660, float %1656
  %1712 = select i1 %1710, float %1656, float %1660
  br label %1713

; <label>:1713                                    ; preds = %1709, %1707, %1613
  %1714 = phi float [ %1652, %1707 ], [ %1660, %1613 ], [ %1652, %1709 ]
  %1715 = phi float [ %1660, %1707 ], [ %1652, %1613 ], [ %1654, %1709 ]
  %1716 = phi float [ %1654, %1707 ], [ %1654, %1613 ], [ %1711, %1709 ]
  %1717 = phi float [ %1656, %1707 ], [ %1656, %1613 ], [ %1712, %1709 ]
  %1718 = fmul fast float %1716, %1714
  %1719 = fmul fast float %1717, %1715
  %1720 = fadd fast float %1719, %1718
  %1721 = fmul fast float %1720, 2.000000e+00
  %1722 = fmul fast float %1715, 2.000000e+00
  %1723 = fmul fast float %1722, %1716
  %1724 = fmul fast float %1714, 2.000000e+00
  %1725 = fmul fast float %1724, %1717
  %1726 = fsub fast float %1723, %1725
  %1727 = fmul fast float %1714, %1714
  %1728 = fmul fast float %1727, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1715, %1715
  %1731 = fmul fast float %1730, 2.000000e+00
  %1732 = fsub fast float %1729, %1731
  br i1 %1661, label %1739, label %1733, !dx.controlflow.hints !72

; <label>:1733                                    ; preds = %1713
  %1734 = icmp eq i32 %1642, 1
  br i1 %1734, label %1739, label %1735, !dx.controlflow.hints !73

; <label>:1735                                    ; preds = %1733
  %1736 = icmp eq i32 %1642, 2
  %1737 = select i1 %1736, float %1660, float %1656
  %1738 = select i1 %1736, float %1656, float %1660
  br label %1739

; <label>:1739                                    ; preds = %1735, %1733, %1713
  %1740 = phi float [ %1652, %1733 ], [ %1660, %1713 ], [ %1652, %1735 ]
  %1741 = phi float [ %1660, %1733 ], [ %1652, %1713 ], [ %1654, %1735 ]
  %1742 = phi float [ %1654, %1733 ], [ %1654, %1713 ], [ %1737, %1735 ]
  %1743 = phi float [ %1656, %1733 ], [ %1656, %1713 ], [ %1738, %1735 ]
  %1744 = fmul fast float %1741, %1741
  %1745 = fmul fast float %1744, 2.000000e+00
  %1746 = fsub fast float 1.000000e+00, %1745
  %1747 = fmul fast float %1742, %1742
  %1748 = fmul fast float %1747, 2.000000e+00
  %1749 = fsub fast float %1746, %1748
  %1750 = fmul fast float %1741, %1740
  %1751 = fmul fast float %1743, %1742
  %1752 = fadd fast float %1751, %1750
  %1753 = fmul fast float %1752, 2.000000e+00
  %1754 = fmul fast float %1740, 2.000000e+00
  %1755 = fmul fast float %1754, %1742
  %1756 = fmul fast float %1741, 2.000000e+00
  %1757 = fmul fast float %1756, %1743
  %1758 = fsub fast float %1755, %1757
  %1759 = fmul fast float %1758, %1726
  %1760 = fmul fast float %1753, %1732
  %1761 = fsub fast float %1759, %1760
  %1762 = fmul fast float %1749, %1732
  %1763 = fmul fast float %1758, %1721
  %1764 = fsub fast float %1762, %1763
  %1765 = fmul fast float %1753, %1721
  %1766 = fmul fast float %1749, %1726
  %1767 = fsub fast float %1765, %1766
  %1768 = and i32 %1195, 536870912
  %1769 = icmp ne i32 %1768, 0
  %1770 = select i1 %1769, float -1.000000e+00, float 1.000000e+00
  %1771 = fmul fast float %1761, %1770
  %1772 = fmul fast float %1764, %1770
  %1773 = fmul fast float %1767, %1770
  %1774 = fmul fast float %1218, %434
  %1775 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %435, float %1774)  ; FMad(a,b,c)
  %1776 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %436, float %1775)  ; FMad(a,b,c)
  %1777 = fmul fast float %1218, %438
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %439, float %1777)  ; FMad(a,b,c)
  %1779 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %440, float %1778)  ; FMad(a,b,c)
  %1780 = fmul fast float %1218, %442
  %1781 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %443, float %1780)  ; FMad(a,b,c)
  %1782 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %444, float %1781)  ; FMad(a,b,c)
  %1783 = fmul fast float %1721, %434
  %1784 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %435, float %1783)  ; FMad(a,b,c)
  %1785 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %436, float %1784)  ; FMad(a,b,c)
  %1786 = fmul fast float %1721, %438
  %1787 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %439, float %1786)  ; FMad(a,b,c)
  %1788 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %440, float %1787)  ; FMad(a,b,c)
  %1789 = fmul fast float %1721, %442
  %1790 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %443, float %1789)  ; FMad(a,b,c)
  %1791 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %444, float %1790)  ; FMad(a,b,c)
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1785, float %1788, float %1791, float %1785, float %1788, float %1791)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = call float @dx.op.unary.f32(i32 25, float %1792)  ; Rsqrt(value)
  %1794 = fmul fast float %1793, %1788
  %1795 = fmul fast float %1749, %434
  %1796 = call float @dx.op.tertiary.f32(i32 46, float %1753, float %435, float %1795)  ; FMad(a,b,c)
  %1797 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %436, float %1796)  ; FMad(a,b,c)
  %1798 = fmul fast float %1749, %438
  %1799 = call float @dx.op.tertiary.f32(i32 46, float %1753, float %439, float %1798)  ; FMad(a,b,c)
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %440, float %1799)  ; FMad(a,b,c)
  %1801 = fmul fast float %1749, %442
  %1802 = call float @dx.op.tertiary.f32(i32 46, float %1753, float %443, float %1801)  ; FMad(a,b,c)
  %1803 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %444, float %1802)  ; FMad(a,b,c)
  %1804 = call float @dx.op.dot3.f32(i32 55, float %1797, float %1800, float %1803, float %1797, float %1800, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %1805 = call float @dx.op.unary.f32(i32 25, float %1804)  ; Rsqrt(value)
  %1806 = fmul fast float %1805, %1800
  %1807 = fmul fast float %1771, %434
  %1808 = call float @dx.op.tertiary.f32(i32 46, float %1772, float %435, float %1807)  ; FMad(a,b,c)
  %1809 = call float @dx.op.tertiary.f32(i32 46, float %1773, float %436, float %1808)  ; FMad(a,b,c)
  %1810 = fmul fast float %1771, %438
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1772, float %439, float %1810)  ; FMad(a,b,c)
  %1812 = call float @dx.op.tertiary.f32(i32 46, float %1773, float %440, float %1811)  ; FMad(a,b,c)
  %1813 = fmul fast float %1771, %442
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1772, float %443, float %1813)  ; FMad(a,b,c)
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %1773, float %444, float %1814)  ; FMad(a,b,c)
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1812, float %1815, float %1809, float %1812, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = call float @dx.op.unary.f32(i32 25, float %1816)  ; Rsqrt(value)
  %1818 = fmul fast float %1817, %1812
  %1819 = and i32 %1198, 255
  %1820 = uitofp i32 %1819 to float
  %1821 = lshr i32 %1198, 8
  %1822 = and i32 %1821, 255
  %1823 = lshr i32 %1198, 16
  %1824 = and i32 %1823, 255
  %1825 = uitofp i32 %1824 to float
  %1826 = lshr i32 %1198, 24
  %1827 = fmul fast float %1820, 0x3F70101020000000
  %1828 = fmul fast float %1825, 0x3F70101020000000
  br label %1829

; <label>:1829                                    ; preds = %1873, %1739
  %1830 = phi i32 [ 1, %1739 ], [ %1917, %1873 ]
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 1
  %1833 = lshr i32 %1832, 17
  %1834 = and i32 %1833, 1
  %1835 = add nuw nsw i32 %1834, 1
  %1836 = lshr i32 %1832, 18
  %1837 = and i32 %1836, 1
  %1838 = add nuw nsw i32 %1835, %1837
  %1839 = lshr i32 %1832, 19
  %1840 = and i32 %1839, 1
  %1841 = add nuw nsw i32 %1838, %1840
  %1842 = icmp slt i32 %1830, %1841
  br i1 %1842, label %1873, label %1843

; <label>:1843                                    ; preds = %1829
  %1844 = fadd fast float %1776, %502
  %1845 = fadd fast float %1779, %503
  %1846 = fadd fast float %1782, %504
  %1847 = fmul fast float %1793, %1785
  %1848 = fmul fast float %1793, %1791
  %1849 = fmul fast float %1805, %1797
  %1850 = fmul fast float %1805, %1803
  %1851 = fmul fast float %1817, %1809
  %1852 = fmul fast float %1817, %1815
  %1853 = uitofp i32 %1822 to float
  %1854 = uitofp i32 %1826 to float
  %1855 = fmul fast float %1853, 0x3F70101020000000
  %1856 = fmul fast float %1854, 0x3F70101020000000
  %1857 = fmul fast float %1844, %451
  %1858 = call float @dx.op.tertiary.f32(i32 46, float %1845, float %459, float %1857)  ; FMad(a,b,c)
  %1859 = call float @dx.op.tertiary.f32(i32 46, float %1846, float %467, float %1858)  ; FMad(a,b,c)
  %1860 = fadd fast float %1859, %475
  %1861 = fmul fast float %1844, %452
  %1862 = call float @dx.op.tertiary.f32(i32 46, float %1845, float %460, float %1861)  ; FMad(a,b,c)
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1846, float %468, float %1862)  ; FMad(a,b,c)
  %1864 = fadd fast float %1863, %476
  %1865 = fmul fast float %1844, %453
  %1866 = call float @dx.op.tertiary.f32(i32 46, float %1845, float %461, float %1865)  ; FMad(a,b,c)
  %1867 = call float @dx.op.tertiary.f32(i32 46, float %1846, float %469, float %1866)  ; FMad(a,b,c)
  %1868 = fadd fast float %1867, %477
  %1869 = fdiv fast float 1.000000e+00, %1868
  %1870 = fmul fast float %1869, %1860
  %1871 = fmul fast float %1869, %1864
  %1872 = fcmp fast oeq float %1220, 0.000000e+00
  br i1 %1872, label %1968, label %1918, !dx.controlflow.hints !79

; <label>:1873                                    ; preds = %1829
  %1874 = add nsw i32 %1830, -1
  %1875 = mul i32 %1874, 3
  %1876 = add i32 2, %1875
  %1877 = getelementptr [9 x i32], [9 x i32]* %43, i32 0, i32 %1876
  %1878 = load i32, i32* %1877, align 4, !tbaa !57, !noalias !74
  %1879 = and i32 %1878, 255
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1880, 0x3F80101020000000
  %1882 = fadd fast float %1881, -1.000000e+00
  %1883 = lshr i32 %1878, 8
  %1884 = and i32 %1883, 255
  %1885 = uitofp i32 %1884 to float
  %1886 = fmul fast float %1885, 0x3F80101020000000
  %1887 = fadd fast float %1886, -1.000000e+00
  %1888 = lshr i32 %1878, 16
  %1889 = and i32 %1888, 255
  %1890 = uitofp i32 %1889 to float
  %1891 = fmul fast float %1890, 0x3F80101020000000
  %1892 = fadd fast float %1891, -1.000000e+00
  %1893 = lshr i32 %1878, 24
  %1894 = uitofp i32 %1893 to float
  %1895 = fmul fast float %1894, 0x3F80101020000000
  %1896 = fadd fast float %1895, -1.000000e+00
  %1897 = mul i32 %1874, 3
  %1898 = add i32 2, %1897
  %1899 = mul i32 %1898, 4
  %1900 = add i32 0, %1899
  %1901 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1900
  store float %1882, float* %1901, align 4
  %1902 = mul i32 %1874, 3
  %1903 = add i32 2, %1902
  %1904 = mul i32 %1903, 4
  %1905 = add i32 1, %1904
  %1906 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1905
  store float %1887, float* %1906, align 4
  %1907 = mul i32 %1874, 3
  %1908 = add i32 2, %1907
  %1909 = mul i32 %1908, 4
  %1910 = add i32 2, %1909
  %1911 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1910
  store float %1892, float* %1911, align 4
  %1912 = mul i32 %1874, 3
  %1913 = add i32 2, %1912
  %1914 = mul i32 %1913, 4
  %1915 = add i32 3, %1914
  %1916 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %1915
  store float %1896, float* %1916, align 4
  %1917 = add nuw nsw i32 %1830, 1
  br label %1829

; <label>:1918                                    ; preds = %1843
  %1919 = fsub fast float %1870, %1640
  %1920 = fsub fast float %1871, %1641
  %1921 = fsub fast float %1410, %1640
  %1922 = fsub fast float %1411, %1641
  %1923 = fmul fast float %1919, %1922
  %1924 = fmul fast float %1920, %1921
  %1925 = fsub fast float %1923, %1924
  %1926 = fdiv fast float 1.000000e+00, %1925
  %1927 = fsub fast float %1641, %1871
  %1928 = fsub fast float %1871, %1411
  %1929 = fmul fast float %1926, %1927
  %1930 = fmul fast float %1926, %1928
  %1931 = fmul fast float %1926, %1922
  %1932 = fsub fast float %1410, %1870
  %1933 = fsub fast float %1640, %1410
  %1934 = fmul fast float %1926, %1919
  %1935 = fmul fast float %1926, %1932
  %1936 = fmul fast float %1926, %1933
  %1937 = uitofp i32 %30 to float
  %1938 = uitofp i32 %31 to float
  %1939 = fadd fast float %1937, 5.000000e-01
  %1940 = fadd fast float %1938, 5.000000e-01
  %1941 = fmul fast float %1939, 2.000000e+00
  %1942 = fmul fast float %1941, %1221
  %1943 = fmul fast float %1940, 2.000000e+00
  %1944 = fmul fast float %1943, %1222
  %1945 = fadd fast float %1942, -1.000000e+00
  %1946 = fsub fast float 1.000000e+00, %1944
  %1947 = fsub fast float %1945, %1410
  %1948 = fsub fast float %1946, %1411
  %1949 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1639, float %1869, float %1929, float %1930, float %1931)  ; Dot3(ax,ay,az,bx,by,bz)
  %1950 = fmul fast float %1949, %1947
  %1951 = fadd fast float %1950, %1409
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1639, float %1869, float %1934, float %1935, float %1936)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = fmul fast float %1952, %1948
  %1954 = fadd fast float %1951, %1953
  %1955 = fdiv fast float 1.000000e+00, %1954
  %1956 = fmul fast float %1930, %1947
  %1957 = fmul fast float %1935, %1948
  %1958 = fadd fast float %1956, %1957
  %1959 = fmul fast float %1958, %1639
  %1960 = fmul fast float %1959, %1955
  %1961 = fmul fast float %1931, %1947
  %1962 = fmul fast float %1936, %1948
  %1963 = fadd fast float %1961, %1962
  %1964 = fmul fast float %1963, %1869
  %1965 = fmul fast float %1964, %1955
  %1966 = fsub fast float 1.000000e+00, %1960
  %1967 = fsub fast float %1966, %1965
  br label %1968

; <label>:1968                                    ; preds = %1918, %1843
  %1969 = phi float [ %1967, %1918 ], [ 1.000000e+00, %1843 ]
  %1970 = phi float [ %1960, %1918 ], [ 0.000000e+00, %1843 ]
  %1971 = phi float [ %1965, %1918 ], [ 0.000000e+00, %1843 ]
  %1972 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1387, float %1617, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1973 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1389, float %1619, float %1849)  ; Dot3(ax,ay,az,bx,by,bz)
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1391, float %1621, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1330, float %1564, float %1794)  ; Dot3(ax,ay,az,bx,by,bz)
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1342, float %1576, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1354, float %1588, float %1818)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1388, float %1618, float %1848)  ; Dot3(ax,ay,az,bx,by,bz)
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1390, float %1620, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1392, float %1622, float %1852)  ; Dot3(ax,ay,az,bx,by,bz)
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1972, float %1975, float %1978, float %1972, float %1975, float %1978)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = call float @dx.op.unary.f32(i32 25, float %1981)  ; Rsqrt(value)
  %1983 = fmul fast float %1982, %1975
  %1984 = call float @dx.op.dot3.f32(i32 55, float %1973, float %1976, float %1979, float %1973, float %1976, float %1979)  ; Dot3(ax,ay,az,bx,by,bz)
  %1985 = call float @dx.op.unary.f32(i32 25, float %1984)  ; Rsqrt(value)
  %1986 = fmul fast float %1985, %1976
  %1987 = call float @dx.op.dot3.f32(i32 55, float %1974, float %1977, float %1980, float %1974, float %1977, float %1980)  ; Dot3(ax,ay,az,bx,by,bz)
  %1988 = call float @dx.op.unary.f32(i32 25, float %1987)  ; Rsqrt(value)
  %1989 = fmul fast float %1988, %1977
  br label %1990

; <label>:1990                                    ; preds = %2014, %1968
  %1991 = phi i32 [ 0, %1968 ], [ %2059, %2014 ]
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 1
  %1994 = lshr i32 %1993, 17
  %1995 = and i32 %1994, 1
  %1996 = add nuw nsw i32 %1995, 1
  %1997 = lshr i32 %1993, 18
  %1998 = and i32 %1997, 1
  %1999 = add nuw nsw i32 %1996, %1998
  %2000 = lshr i32 %1993, 19
  %2001 = and i32 %2000, 1
  %2002 = add nuw nsw i32 %1999, %2001
  %2003 = icmp slt i32 %1991, %2002
  br i1 %2003, label %2014, label %2004

; <label>:2004                                    ; preds = %1990
  %2005 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1384, float %1614, float %1844)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1385, float %1615, float %1845)  ; Dot3(ax,ay,az,bx,by,bz)
  %2007 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1386, float %1616, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = fmul fast float %1982, %1972
  %2009 = fmul fast float %1982, %1978
  %2010 = fmul fast float %1985, %1973
  %2011 = fmul fast float %1985, %1979
  %2012 = fmul fast float %1988, %1974
  %2013 = fmul fast float %1988, %1980
  br label %2060

; <label>:2014                                    ; preds = %1990
  %2015 = mul i32 %1991, 3
  %2016 = add i32 0, %2015
  %2017 = mul i32 %2016, 2
  %2018 = add i32 0, %2017
  %2019 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %2018
  %2020 = load float, float* %2019, align 4, !tbaa !80, !noalias !74
  %2021 = mul i32 %1991, 3
  %2022 = add i32 1, %2021
  %2023 = mul i32 %2022, 2
  %2024 = add i32 0, %2023
  %2025 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %2024
  %2026 = load float, float* %2025, align 4, !tbaa !80, !noalias !74
  %2027 = mul i32 %1991, 3
  %2028 = add i32 2, %2027
  %2029 = mul i32 %2028, 2
  %2030 = add i32 0, %2029
  %2031 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %2030
  %2032 = load float, float* %2031, align 4, !tbaa !80, !noalias !74
  %2033 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %2020, float %2026, float %2032)  ; Dot3(ax,ay,az,bx,by,bz)
  %2034 = mul i32 %1991, 2
  %2035 = add i32 0, %2034
  %2036 = getelementptr [8 x float], [8 x float]* %38, i32 0, i32 %2035
  store float %2033, float* %2036, align 4, !tbaa !80, !alias.scope !74
  %2037 = mul i32 %1991, 3
  %2038 = add i32 0, %2037
  %2039 = mul i32 %2038, 2
  %2040 = add i32 1, %2039
  %2041 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %2040
  %2042 = load float, float* %2041, align 4, !tbaa !80, !noalias !74
  %2043 = mul i32 %1991, 3
  %2044 = add i32 1, %2043
  %2045 = mul i32 %2044, 2
  %2046 = add i32 1, %2045
  %2047 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %2046
  %2048 = load float, float* %2047, align 4, !tbaa !80, !noalias !74
  %2049 = mul i32 %1991, 3
  %2050 = add i32 2, %2049
  %2051 = mul i32 %2050, 2
  %2052 = add i32 1, %2051
  %2053 = getelementptr [24 x float], [24 x float]* %42, i32 0, i32 %2052
  %2054 = load float, float* %2053, align 4, !tbaa !80, !noalias !74
  %2055 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %2042, float %2048, float %2054)  ; Dot3(ax,ay,az,bx,by,bz)
  %2056 = mul i32 %1991, 2
  %2057 = add i32 1, %2056
  %2058 = getelementptr [8 x float], [8 x float]* %38, i32 0, i32 %2057
  store float %2055, float* %2058, align 4, !tbaa !80, !alias.scope !74
  %2059 = add nuw nsw i32 %1991, 1
  br label %1990, !llvm.loop !82

; <label>:2060                                    ; preds = %2074, %2004
  %2061 = phi i32 [ %2164, %2074 ], [ 1, %2004 ]
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 1
  %2064 = lshr i32 %2063, 17
  %2065 = and i32 %2064, 1
  %2066 = add nuw nsw i32 %2065, 1
  %2067 = lshr i32 %2063, 18
  %2068 = and i32 %2067, 1
  %2069 = add nuw nsw i32 %2066, %2068
  %2070 = lshr i32 %2063, 19
  %2071 = and i32 %2070, 1
  %2072 = add nuw nsw i32 %2069, %2071
  %2073 = icmp slt i32 %2061, %2072
  br i1 %2073, label %2074, label %2165

; <label>:2074                                    ; preds = %2060
  %2075 = add nsw i32 %2061, -1
  %2076 = mul i32 %2075, 3
  %2077 = add i32 0, %2076
  %2078 = mul i32 %2077, 4
  %2079 = add i32 0, %2078
  %2080 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2079
  %2081 = load float, float* %2080, align 4, !tbaa !80, !noalias !74
  %2082 = mul i32 %2075, 3
  %2083 = add i32 1, %2082
  %2084 = mul i32 %2083, 4
  %2085 = add i32 0, %2084
  %2086 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2085
  %2087 = load float, float* %2086, align 4, !tbaa !80, !noalias !74
  %2088 = mul i32 %2075, 3
  %2089 = add i32 2, %2088
  %2090 = mul i32 %2089, 4
  %2091 = add i32 0, %2090
  %2092 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2091
  %2093 = load float, float* %2092, align 4, !tbaa !80, !noalias !74
  %2094 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %2081, float %2087, float %2093)  ; Dot3(ax,ay,az,bx,by,bz)
  %2095 = mul i32 %2075, 4
  %2096 = add i32 0, %2095
  %2097 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2096
  store float %2094, float* %2097, align 4, !tbaa !80, !alias.scope !74
  %2098 = mul i32 %2075, 3
  %2099 = add i32 0, %2098
  %2100 = mul i32 %2099, 4
  %2101 = add i32 1, %2100
  %2102 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2101
  %2103 = load float, float* %2102, align 4, !tbaa !80, !noalias !74
  %2104 = mul i32 %2075, 3
  %2105 = add i32 1, %2104
  %2106 = mul i32 %2105, 4
  %2107 = add i32 1, %2106
  %2108 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2107
  %2109 = load float, float* %2108, align 4, !tbaa !80, !noalias !74
  %2110 = mul i32 %2075, 3
  %2111 = add i32 2, %2110
  %2112 = mul i32 %2111, 4
  %2113 = add i32 1, %2112
  %2114 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2113
  %2115 = load float, float* %2114, align 4, !tbaa !80, !noalias !74
  %2116 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %2103, float %2109, float %2115)  ; Dot3(ax,ay,az,bx,by,bz)
  %2117 = mul i32 %2075, 4
  %2118 = add i32 1, %2117
  %2119 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2118
  store float %2116, float* %2119, align 4, !tbaa !80, !alias.scope !74
  %2120 = mul i32 %2075, 3
  %2121 = add i32 0, %2120
  %2122 = mul i32 %2121, 4
  %2123 = add i32 2, %2122
  %2124 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2123
  %2125 = load float, float* %2124, align 4, !tbaa !80, !noalias !74
  %2126 = mul i32 %2075, 3
  %2127 = add i32 1, %2126
  %2128 = mul i32 %2127, 4
  %2129 = add i32 2, %2128
  %2130 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2129
  %2131 = load float, float* %2130, align 4, !tbaa !80, !noalias !74
  %2132 = mul i32 %2075, 3
  %2133 = add i32 2, %2132
  %2134 = mul i32 %2133, 4
  %2135 = add i32 2, %2134
  %2136 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2135
  %2137 = load float, float* %2136, align 4, !tbaa !80, !noalias !74
  %2138 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %2125, float %2131, float %2137)  ; Dot3(ax,ay,az,bx,by,bz)
  %2139 = mul i32 %2075, 4
  %2140 = add i32 2, %2139
  %2141 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2140
  store float %2138, float* %2141, align 4, !tbaa !80, !alias.scope !74
  %2142 = mul i32 %2075, 3
  %2143 = add i32 0, %2142
  %2144 = mul i32 %2143, 4
  %2145 = add i32 3, %2144
  %2146 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2145
  %2147 = load float, float* %2146, align 4, !tbaa !80, !noalias !74
  %2148 = mul i32 %2075, 3
  %2149 = add i32 1, %2148
  %2150 = mul i32 %2149, 4
  %2151 = add i32 3, %2150
  %2152 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2151
  %2153 = load float, float* %2152, align 4, !tbaa !80, !noalias !74
  %2154 = mul i32 %2075, 3
  %2155 = add i32 2, %2154
  %2156 = mul i32 %2155, 4
  %2157 = add i32 3, %2156
  %2158 = getelementptr [36 x float], [36 x float]* %45, i32 0, i32 %2157
  %2159 = load float, float* %2158, align 4, !tbaa !80, !noalias !74
  %2160 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %2147, float %2153, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2161 = mul i32 %2075, 4
  %2162 = add i32 3, %2161
  %2163 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2162
  store float %2160, float* %2163, align 4, !tbaa !80, !alias.scope !74
  %2164 = add nuw nsw i32 %2061, 1
  br label %2060, !llvm.loop !83

; <label>:2165                                    ; preds = %2060
  %2166 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1363, float %1597, float %1827)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = getelementptr [4 x float], [4 x float]* %40, i32 0, i32 0
  store float %2166, float* %2167, align 4, !tbaa !80, !alias.scope !74
  %2168 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1395, float %1625, float %1855)  ; Dot3(ax,ay,az,bx,by,bz)
  %2169 = getelementptr [4 x float], [4 x float]* %40, i32 0, i32 1
  store float %2168, float* %2169, align 4, !tbaa !80, !alias.scope !74
  %2170 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1364, float %1598, float %1828)  ; Dot3(ax,ay,az,bx,by,bz)
  %2171 = getelementptr [4 x float], [4 x float]* %40, i32 0, i32 2
  store float %2170, float* %2171, align 4, !tbaa !80, !alias.scope !74
  %2172 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1396, float %1626, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2173 = getelementptr [4 x float], [4 x float]* %40, i32 0, i32 3
  store float %2172, float* %2173, align 4, !tbaa !80, !alias.scope !74
  %2174 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %30, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = fcmp fast ogt float %2175, 9.843750e-01
  %2179 = select i1 %2178, float 6.400000e+01, float 0x3FF0410420000000
  %2180 = select i1 %2178, float -6.300000e+01, float -0.000000e+00
  %2181 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2182 = fmul fast float %2179, %2181
  %2183 = fadd fast float %2182, %2180
  %2184 = call float @dx.op.binary.f32(i32 35, float %2183, float 0x3E45798EE0000000)  ; FMax(a,b)
  %2185 = uitofp i32 %30 to float
  %2186 = fadd fast float %2185, 5.000000e-01
  %2187 = and i32 %2070, 1
  %2188 = and i32 %2067, 1
  %2189 = add nuw nsw i32 %2187, %2188
  %2190 = and i32 %2064, 1
  %2191 = add nuw nsw i32 %2189, %2190
  %2192 = getelementptr [8 x float], [8 x float]* %38, i32 0, i32 0
  %2193 = load float, float* %2192, align 4
  %2194 = getelementptr [8 x float], [8 x float]* %38, i32 0, i32 1
  %2195 = load float, float* %2194, align 4
  %2196 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 0
  %2197 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 0
  store float %2193, float* %2196, align 4
  store float %2195, float* %2197, align 4
  %2198 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 0
  store float %2166, float* %2198, align 4, !tbaa !80
  %2199 = icmp eq i32 %2191, 0
  br i1 %2199, label %2219, label %2200

; <label>:2200                                    ; preds = %2165
  br label %2201

; <label>:2201                                    ; preds = %2201, %2200
  %2202 = phi i32 [ %2216, %2201 ], [ 1, %2200 ]
  %2203 = getelementptr [4 x float], [4 x float]* %40, i32 0, i32 %2202
  %2204 = load float, float* %2203, align 4, !tbaa !80
  %2205 = mul i32 %2202, 2
  %2206 = add i32 0, %2205
  %2207 = getelementptr [8 x float], [8 x float]* %38, i32 0, i32 %2206
  %2208 = load float, float* %2207, align 4
  %2209 = mul i32 %2202, 2
  %2210 = add i32 1, %2209
  %2211 = getelementptr [8 x float], [8 x float]* %38, i32 0, i32 %2210
  %2212 = load float, float* %2211, align 4
  %2213 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %2202
  %2214 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %2202
  store float %2208, float* %2213, align 4
  store float %2212, float* %2214, align 4
  %2215 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 %2202
  store float %2204, float* %2215, align 4, !tbaa !80
  %2216 = add nuw nsw i32 %2202, 1
  %2217 = icmp eq i32 %2202, %2191
  br i1 %2217, label %2218, label %2201

; <label>:2218                                    ; preds = %2201
  br label %2219

; <label>:2219                                    ; preds = %2218, %2165
  %2220 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2221 = select i1 %2178, float %2177, float %2220
  %2222 = fdiv fast float %2221, %2184
  %2223 = uitofp i32 %31 to float
  %2224 = fadd fast float %2223, 5.000000e-01
  %2225 = icmp ult i32 %2072, 4
  br i1 %2225, label %2226, label %2242

; <label>:2226                                    ; preds = %2219
  br label %2227

; <label>:2227                                    ; preds = %2227, %2226
  %2228 = phi i32 [ %2239, %2227 ], [ %2072, %2226 ]
  %2229 = add nsw i32 %2072, -1
  %2230 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %2229
  %2231 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %2229
  %2232 = load float, float* %2230, align 4
  %2233 = load float, float* %2231, align 4
  %2234 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %2228
  %2235 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %2228
  store float %2232, float* %2234, align 4
  store float %2233, float* %2235, align 4
  %2236 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 %2229
  %2237 = load float, float* %2236, align 4, !tbaa !80
  %2238 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 %2228
  store float %2237, float* %2238, align 4, !tbaa !80
  %2239 = add nsw i32 %2228, 1
  %2240 = icmp slt i32 %2239, 4
  br i1 %2240, label %2227, label %2241

; <label>:2241                                    ; preds = %2227
  br label %2242

; <label>:2242                                    ; preds = %2241, %2219
  %2243 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 0
  %2244 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 0
  %2245 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 0
  %2246 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 0
  store float 1.000000e+00, float* %2243, align 4
  store float 0.000000e+00, float* %2244, align 4
  store float 0.000000e+00, float* %2245, align 4
  store float 1.000000e+00, float* %2246, align 4
  %2247 = icmp ugt i32 %2072, 1
  br i1 %2247, label %2248, label %2275

; <label>:2248                                    ; preds = %2242
  br label %2249

; <label>:2249                                    ; preds = %2249, %2248
  %2250 = phi i32 [ %2272, %2249 ], [ 1, %2248 ]
  %2251 = add nsw i32 %2250, -1
  %2252 = mul i32 %2251, 4
  %2253 = add i32 0, %2252
  %2254 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2253
  %2255 = load float, float* %2254, align 4
  %2256 = mul i32 %2251, 4
  %2257 = add i32 1, %2256
  %2258 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2257
  %2259 = load float, float* %2258, align 4
  %2260 = mul i32 %2251, 4
  %2261 = add i32 2, %2260
  %2262 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2261
  %2263 = load float, float* %2262, align 4
  %2264 = mul i32 %2251, 4
  %2265 = add i32 3, %2264
  %2266 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2265
  %2267 = load float, float* %2266, align 4
  %2268 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %2250
  %2269 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %2250
  %2270 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 %2250
  %2271 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 %2250
  store float %2255, float* %2268, align 4
  store float %2259, float* %2269, align 4
  store float %2263, float* %2270, align 4
  store float %2267, float* %2271, align 4
  %2272 = add nuw nsw i32 %2250, 1
  %2273 = icmp slt i32 %2272, %2072
  br i1 %2273, label %2249, label %2274

; <label>:2274                                    ; preds = %2249
  br label %2275

; <label>:2275                                    ; preds = %2274, %2242
  br i1 %2225, label %2276, label %2295

; <label>:2276                                    ; preds = %2275
  br label %2277

; <label>:2277                                    ; preds = %2277, %2276
  %2278 = phi i32 [ %2292, %2277 ], [ %2072, %2276 ]
  %2279 = add nsw i32 %2072, -1
  %2280 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %2279
  %2281 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %2279
  %2282 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 %2279
  %2283 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 %2279
  %2284 = load float, float* %2280, align 4
  %2285 = load float, float* %2281, align 4
  %2286 = load float, float* %2282, align 4
  %2287 = load float, float* %2283, align 4
  %2288 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %2278
  %2289 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %2278
  %2290 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 %2278
  %2291 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 %2278
  store float %2284, float* %2288, align 4
  store float %2285, float* %2289, align 4
  store float %2286, float* %2290, align 4
  store float %2287, float* %2291, align 4
  %2292 = add nsw i32 %2278, 1
  %2293 = icmp slt i32 %2292, 4
  br i1 %2293, label %2277, label %2294

; <label>:2294                                    ; preds = %2277
  br label %2295

; <label>:2295                                    ; preds = %2294, %2275
  %2296 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 1
  %2297 = load float, float* %2296, align 4
  %2298 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 2
  %2299 = load float, float* %2298, align 4
  %2300 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 3
  %2301 = load float, float* %2300, align 4
  %2302 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 0
  %2303 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 0
  %2304 = load float, float* %2302, align 4
  %2305 = load float, float* %2303, align 4
  %2306 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 1
  %2307 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 1
  %2308 = load float, float* %2306, align 4
  %2309 = load float, float* %2307, align 4
  %2310 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 2
  %2311 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 2
  %2312 = load float, float* %2310, align 4
  %2313 = load float, float* %2311, align 4
  %2314 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 3
  %2315 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 3
  %2316 = load float, float* %2314, align 4
  %2317 = load float, float* %2315, align 4
  %2318 = load float, float* %2243, align 4
  %2319 = load float, float* %2244, align 4
  %2320 = load float, float* %2245, align 4
  %2321 = load float, float* %2246, align 4
  %2322 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 1
  %2323 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 1
  %2324 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 1
  %2325 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 1
  %2326 = load float, float* %2322, align 4
  %2327 = load float, float* %2323, align 4
  %2328 = load float, float* %2324, align 4
  %2329 = load float, float* %2325, align 4
  %2330 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 2
  %2331 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 2
  %2332 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 2
  %2333 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 2
  %2334 = load float, float* %2330, align 4
  %2335 = load float, float* %2331, align 4
  %2336 = load float, float* %2332, align 4
  %2337 = load float, float* %2333, align 4
  %2338 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 3
  %2339 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 3
  %2340 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 3
  %2341 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 3
  %2342 = load float, float* %2338, align 4
  %2343 = load float, float* %2339, align 4
  %2344 = load float, float* %2340, align 4
  %2345 = load float, float* %2341, align 4
  %2346 = and i32 %509, 255
  %2347 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2346)  ; Countbits(value)
  %2348 = shl i32 %2347, 4
  %2349 = add i32 %2348, %523
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 1
  %2352 = shl i32 %2351, 4
  %2353 = and i32 %2352, 32752
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = lshr i32 %2351, 7
  %2356 = and i32 %2355, 32752
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = lshr i32 %2351, 22
  %2359 = shl nuw nsw i32 %2358, 5
  %2360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2359)  ; LegacyF16ToF32(value)
  %2361 = and i32 %509, 4095
  %2362 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2361)  ; Countbits(value)
  %2363 = shl i32 %2362, 4
  %2364 = add i32 %2363, %523
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101020000000
  %2370 = lshr i32 %2366, 8
  %2371 = and i32 %2370, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = lshr i32 %2366, 16
  %2375 = and i32 %2374, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = fmul fast float %2376, 0x3F70101020000000
  %2378 = and i32 %509, 511
  %2379 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2378)  ; Countbits(value)
  %2380 = shl i32 %2379, 4
  %2381 = add i32 %2380, %523
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 1
  %2384 = shl i32 %2383, 4
  %2385 = and i32 %2384, 32752
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = lshr i32 %2383, 7
  %2388 = and i32 %2387, 32752
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = lshr i32 %2383, 22
  %2391 = shl nuw nsw i32 %2390, 5
  %2392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2391)  ; LegacyF16ToF32(value)
  %2393 = and i32 %509, 8191
  %2394 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2393)  ; Countbits(value)
  %2395 = shl i32 %2394, 4
  %2396 = add i32 %2395, %523
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = lshr i32 %2398, 8
  %2403 = and i32 %2402, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2404, 0x3F70101020000000
  %2406 = lshr i32 %2398, 16
  %2407 = and i32 %2406, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101020000000
  %2410 = and i32 %509, 1023
  %2411 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2410)  ; Countbits(value)
  %2412 = shl i32 %2411, 4
  %2413 = add i32 %2412, %523
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 1
  %2416 = shl i32 %2415, 4
  %2417 = and i32 %2416, 32752
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = lshr i32 %2415, 7
  %2420 = and i32 %2419, 32752
  %2421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2420)  ; LegacyF16ToF32(value)
  %2422 = lshr i32 %2415, 22
  %2423 = shl nuw nsw i32 %2422, 5
  %2424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2423)  ; LegacyF16ToF32(value)
  %2425 = and i32 %509, 16383
  %2426 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2425)  ; Countbits(value)
  %2427 = shl i32 %2426, 4
  %2428 = add i32 %2427, %523
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 255
  %2432 = uitofp i32 %2431 to float
  %2433 = fmul fast float %2432, 0x3F70101020000000
  %2434 = lshr i32 %2430, 8
  %2435 = and i32 %2434, 255
  %2436 = uitofp i32 %2435 to float
  %2437 = fmul fast float %2436, 0x3F70101020000000
  %2438 = lshr i32 %2430, 16
  %2439 = and i32 %2438, 255
  %2440 = uitofp i32 %2439 to float
  %2441 = fmul fast float %2440, 0x3F70101020000000
  %2442 = and i32 %509, 2047
  %2443 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2442)  ; Countbits(value)
  %2444 = shl i32 %2443, 4
  %2445 = add i32 %2444, %523
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 1
  %2448 = shl i32 %2447, 4
  %2449 = and i32 %2448, 32752
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = lshr i32 %2447, 7
  %2452 = and i32 %2451, 32752
  %2453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2452)  ; LegacyF16ToF32(value)
  %2454 = lshr i32 %2447, 22
  %2455 = shl nuw nsw i32 %2454, 5
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = and i32 %509, 32767
  %2458 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2457)  ; Countbits(value)
  %2459 = shl i32 %2458, 4
  %2460 = add i32 %2459, %523
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 255
  %2464 = uitofp i32 %2463 to float
  %2465 = fmul fast float %2464, 0x3F70101020000000
  %2466 = lshr i32 %2462, 8
  %2467 = and i32 %2466, 255
  %2468 = uitofp i32 %2467 to float
  %2469 = fmul fast float %2468, 0x3F70101020000000
  %2470 = lshr i32 %2462, 16
  %2471 = and i32 %2470, 255
  %2472 = uitofp i32 %2471 to float
  %2473 = fmul fast float %2472, 0x3F70101020000000
  %2474 = and i32 %2063, 32
  %2475 = icmp eq i32 %2474, 0
  %2476 = and i32 %2063, 64
  %2477 = icmp eq i32 %2476, 0
  %2478 = and i32 %2063, 128
  %2479 = icmp eq i32 %2478, 0
  %2480 = and i32 %2063, 2
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2500, label %2482, !dx.controlflow.hints !84

; <label>:2482                                    ; preds = %2295
  %2483 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %516)  ; Countbits(value)
  %2484 = and i32 %517, 262143
  %2485 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2484)  ; Countbits(value)
  %2486 = add i32 %2485, %2483
  %2487 = shl i32 %2486, 2
  %2488 = add i32 %2487, %525
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = add i32 %2490, 0
  %2492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2492, %dx.types.Handle %47, float %2304, float %2305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2494 = extractvalue %dx.types.ResRet.f32 %2493, 0
  %2495 = extractvalue %dx.types.ResRet.f32 %2493, 1
  %2496 = extractvalue %dx.types.ResRet.f32 %2493, 2
  %2497 = fmul fast float %2494, %2297
  %2498 = fmul fast float %2495, %2299
  %2499 = fmul fast float %2496, %2301
  br label %2500

; <label>:2500                                    ; preds = %2482, %2295
  %2501 = phi float [ %2301, %2295 ], [ %2499, %2482 ]
  %2502 = phi float [ %2299, %2295 ], [ %2498, %2482 ]
  %2503 = phi float [ %2297, %2295 ], [ %2497, %2482 ]
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 1
  %2506 = and i32 %2505, 2
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2536, label %2508, !dx.controlflow.hints !85

; <label>:2508                                    ; preds = %2500
  %2509 = and i32 %509, 1
  %2510 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2509)  ; Countbits(value)
  %2511 = shl i32 %2510, 4
  %2512 = add i32 %2511, %523
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 1
  %2515 = and i32 %2514, 1
  %2516 = icmp ne i32 %2515, 0
  %2517 = select i1 %2516, float %2503, float 1.000000e+00
  %2518 = and i32 %509, 3
  %2519 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2518)  ; Countbits(value)
  %2520 = shl i32 %2519, 4
  %2521 = add i32 %2520, %523
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 1
  %2524 = and i32 %2523, 1
  %2525 = icmp ne i32 %2524, 0
  %2526 = select i1 %2525, float %2502, float 1.000000e+00
  %2527 = and i32 %509, 7
  %2528 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2527)  ; Countbits(value)
  %2529 = shl i32 %2528, 4
  %2530 = add i32 %2529, %523
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 1
  %2533 = and i32 %2532, 1
  %2534 = icmp ne i32 %2533, 0
  %2535 = select i1 %2534, float %2501, float 1.000000e+00
  br label %2536

; <label>:2536                                    ; preds = %2508, %2500
  %2537 = phi float [ %2501, %2500 ], [ %2535, %2508 ]
  %2538 = phi float [ %2502, %2500 ], [ %2526, %2508 ]
  %2539 = phi float [ %2503, %2500 ], [ %2517, %2508 ]
  %2540 = lshr i32 %2505, 20
  %2541 = and i32 %2540, 3
  %2542 = add nuw nsw i32 %2541, 1
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = extractvalue %dx.types.ResRet.i32 %2543, 1
  %2546 = or i32 %2545, %2544
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2921, label %2548, !dx.controlflow.hints !86

; <label>:2548                                    ; preds = %2536
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2551 = bitcast float %2550 to i32
  %2552 = lshr i32 %2551, 27
  %2553 = and i32 %2552, 15
  %2554 = uitofp i32 %2553 to float
  %2555 = fcmp fast olt float %2554, 1.000000e+00
  br i1 %2555, label %2921, label %2556, !dx.controlflow.hints !87

; <label>:2556                                    ; preds = %2548
  %2557 = and i32 %2544, 16
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2785, label %2559

; <label>:2559                                    ; preds = %2556
  %2560 = and i32 %509, 15
  %2561 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2560)  ; Countbits(value)
  %2562 = shl i32 %2561, 4
  %2563 = add i32 %2562, %523
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = add i32 %2567, 0
  %2569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2569, %dx.types.Handle %46, float %2304, float %2305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2571 = extractvalue %dx.types.ResRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.ResRet.f32 %2570, 1
  %2573 = extractvalue %dx.types.ResRet.f32 %2570, 2
  %2574 = extractvalue %dx.types.ResRet.f32 %2570, 3
  %2575 = and i32 %2565, 255
  %2576 = uitofp i32 %2575 to float
  %2577 = lshr i32 %2565, 8
  %2578 = and i32 %2577, 255
  %2579 = uitofp i32 %2578 to float
  %2580 = fmul fast float %2574, %2576
  %2581 = fadd fast float %2580, %2579
  %2582 = fmul fast float %2581, 0x3F70101000000000
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = bitcast float %2584 to i32
  %2586 = lshr i32 %2585, 16
  %2587 = and i32 %2586, 255
  %2588 = uitofp i32 %2587 to float
  %2589 = fptoui float %2588 to i32
  %2590 = icmp eq i32 %2589, 8
  br i1 %2590, label %2591, label %2607, !dx.controlflow.hints !88

; <label>:2591                                    ; preds = %2559
  %2592 = fmul fast float %2571, 0x3FD322D0E0000000
  %2593 = fmul fast float %2572, 0x3FE2C8B440000000
  %2594 = fadd fast float %2592, %2593
  %2595 = fmul fast float %2573, 0x3FBD2F1AA0000000
  %2596 = fadd fast float %2594, %2595
  %2597 = fsub fast float %2573, %2596
  %2598 = fsub fast float %2571, %2596
  %2599 = fmul fast float %2598, 0x3FEFFE3280000000
  %2600 = fadd fast float %2599, %2596
  %2601 = fmul fast float %2597, 0x3FC8E02220000000
  %2602 = fsub fast float %2596, %2601
  %2603 = fmul fast float %2598, 0x3FE04E2080000000
  %2604 = fsub fast float %2602, %2603
  %2605 = fmul fast float %2597, 0x3FEFFDE740000000
  %2606 = fadd fast float %2605, %2596
  br label %2607

; <label>:2607                                    ; preds = %2591, %2559
  %2608 = phi float [ %2600, %2591 ], [ %2571, %2559 ]
  %2609 = phi float [ %2604, %2591 ], [ %2572, %2559 ]
  %2610 = phi float [ %2606, %2591 ], [ %2573, %2559 ]
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 512
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2626, label %2615

; <label>:2615                                    ; preds = %2607
  %2616 = and i32 %516, 1073741823
  %2617 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2616)  ; Countbits(value)
  %2618 = shl i32 %2617, 2
  %2619 = add i32 %2618, %525
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %2621, 0
  %2623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2623, %dx.types.Handle %47, float %2304, float %2305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  br label %2626

; <label>:2626                                    ; preds = %2615, %2607
  %2627 = phi float [ %2625, %2615 ], [ 1.000000e+00, %2607 ]
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 33554432
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2732, label %2632

; <label>:2632                                    ; preds = %2626
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 2
  %2635 = and i32 %2634, 65535
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2634, 16
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = extractvalue %dx.types.ResRet.i32 %2633, 3
  %2640 = and i32 %2639, 65535
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2643 = lshr i32 %2642, 24
  %2644 = uitofp i32 %2643 to float
  %2645 = fmul fast float %2644, 0x3F70101020000000
  %2646 = and i32 %2642, 255
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2647, 0x3F70101020000000
  %2649 = lshr i32 %2642, 8
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2651, 0x3F70101020000000
  %2653 = lshr i32 %2642, 16
  %2654 = and i32 %2653, 255
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = extractvalue %dx.types.ResRet.i32 %2633, 1
  %2658 = lshr i32 %2657, 24
  %2659 = uitofp i32 %2658 to float
  %2660 = fmul fast float %2659, 0x3F70101020000000
  %2661 = and i32 %2657, 255
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = lshr i32 %2657, 8
  %2665 = and i32 %2664, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = lshr i32 %2657, 16
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = bitcast float %2608 to i32
  %2673 = ashr i32 %2672, 1
  %2674 = sub nsw i32 1597463174, %2673
  %2675 = bitcast i32 %2674 to float
  %2676 = fmul fast float %2608, 5.000000e-01
  %2677 = fmul fast float %2675, %2675
  %2678 = fmul fast float %2677, %2676
  %2679 = fsub fast float 1.500000e+00, %2678
  %2680 = fmul fast float %2675, %2608
  %2681 = fmul fast float %2680, %2679
  %2682 = bitcast float %2609 to i32
  %2683 = ashr i32 %2682, 1
  %2684 = sub nsw i32 1597463174, %2683
  %2685 = bitcast i32 %2684 to float
  %2686 = fmul fast float %2609, 5.000000e-01
  %2687 = fmul fast float %2685, %2685
  %2688 = fmul fast float %2687, %2686
  %2689 = fsub fast float 1.500000e+00, %2688
  %2690 = fmul fast float %2685, %2609
  %2691 = fmul fast float %2690, %2689
  %2692 = bitcast float %2610 to i32
  %2693 = ashr i32 %2692, 1
  %2694 = sub nsw i32 1597463174, %2693
  %2695 = bitcast i32 %2694 to float
  %2696 = fmul fast float %2610, 5.000000e-01
  %2697 = fmul fast float %2695, %2695
  %2698 = fmul fast float %2697, %2696
  %2699 = fsub fast float 1.500000e+00, %2698
  %2700 = fmul fast float %2695, %2610
  %2701 = fmul fast float %2700, %2699
  %2702 = fsub fast float %2681, %2663
  %2703 = fsub fast float %2691, %2667
  %2704 = fsub fast float %2701, %2671
  %2705 = fmul fast float %2702, %2636
  %2706 = fmul fast float %2703, %2638
  %2707 = fmul fast float %2704, %2641
  %2708 = fadd fast float %2705, %2648
  %2709 = fadd fast float %2706, %2652
  %2710 = fadd fast float %2707, %2656
  %2711 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2712 = call float @dx.op.unary.f32(i32 7, float %2709)  ; Saturate(value)
  %2713 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2714 = fmul fast float %2711, %2711
  %2715 = fmul fast float %2712, %2712
  %2716 = fmul fast float %2713, %2713
  %2717 = fsub fast float %2714, %2608
  %2718 = fsub fast float %2715, %2609
  %2719 = fsub fast float %2716, %2610
  %2720 = fmul fast float %2717, %2627
  %2721 = fmul fast float %2718, %2627
  %2722 = fmul fast float %2719, %2627
  %2723 = fadd fast float %2720, %2608
  %2724 = fadd fast float %2721, %2609
  %2725 = fadd fast float %2722, %2610
  %2726 = fadd fast float %2645, %2582
  %2727 = fsub fast float %2726, %2660
  %2728 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2729 = fsub fast float %2728, %2582
  %2730 = fmul fast float %2729, %2627
  %2731 = fadd fast float %2730, %2582
  br label %2785

; <label>:2732                                    ; preds = %2626
  %2733 = and i32 %2629, 134217728
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %2769, label %2735

; <label>:2735                                    ; preds = %2732
  %2736 = call float @dx.op.unary.f32(i32 24, float %2369)  ; Sqrt(value)
  %2737 = call float @dx.op.unary.f32(i32 24, float %2373)  ; Sqrt(value)
  %2738 = call float @dx.op.unary.f32(i32 24, float %2377)  ; Sqrt(value)
  %2739 = fadd fast float %2736, -5.000000e-01
  %2740 = fadd fast float %2737, -5.000000e-01
  %2741 = fadd fast float %2738, -5.000000e-01
  %2742 = fmul fast float %2739, %2627
  %2743 = fmul fast float %2740, %2627
  %2744 = fmul fast float %2741, %2627
  %2745 = fadd fast float %2742, 5.000000e-01
  %2746 = fadd fast float %2743, 5.000000e-01
  %2747 = fadd fast float %2744, 5.000000e-01
  %2748 = call float @dx.op.unary.f32(i32 24, float %2608)  ; Sqrt(value)
  %2749 = call float @dx.op.unary.f32(i32 24, float %2609)  ; Sqrt(value)
  %2750 = call float @dx.op.unary.f32(i32 24, float %2610)  ; Sqrt(value)
  %2751 = fmul fast float %2745, 2.000000e+00
  %2752 = fsub fast float 1.000000e+00, %2751
  %2753 = fmul fast float %2752, %2748
  %2754 = fadd fast float %2753, %2751
  %2755 = fmul fast float %2754, %2748
  %2756 = fmul fast float %2746, 2.000000e+00
  %2757 = fsub fast float 1.000000e+00, %2756
  %2758 = fmul fast float %2757, %2749
  %2759 = fadd fast float %2758, %2756
  %2760 = fmul fast float %2759, %2749
  %2761 = fmul fast float %2747, 2.000000e+00
  %2762 = fsub fast float 1.000000e+00, %2761
  %2763 = fmul fast float %2762, %2750
  %2764 = fadd fast float %2763, %2761
  %2765 = fmul fast float %2764, %2750
  %2766 = fmul fast float %2755, %2755
  %2767 = fmul fast float %2760, %2760
  %2768 = fmul fast float %2765, %2765
  br label %2785

; <label>:2769                                    ; preds = %2732
  %2770 = fmul fast float %2369, %2369
  %2771 = fmul fast float %2373, %2373
  %2772 = fmul fast float %2377, %2377
  %2773 = fadd fast float %2770, -1.000000e+00
  %2774 = fadd fast float %2771, -1.000000e+00
  %2775 = fadd fast float %2772, -1.000000e+00
  %2776 = fmul fast float %2627, %2773
  %2777 = fmul fast float %2627, %2774
  %2778 = fmul fast float %2627, %2775
  %2779 = fadd fast float %2776, 1.000000e+00
  %2780 = fadd fast float %2777, 1.000000e+00
  %2781 = fadd fast float %2778, 1.000000e+00
  %2782 = fmul fast float %2779, %2608
  %2783 = fmul fast float %2780, %2609
  %2784 = fmul fast float %2781, %2610
  br label %2785

; <label>:2785                                    ; preds = %2769, %2735, %2632, %2556
  %2786 = phi float [ %2731, %2632 ], [ %2582, %2735 ], [ %2582, %2769 ], [ 0x3FA23C0BE0000000, %2556 ]
  %2787 = phi float [ %2723, %2632 ], [ %2766, %2735 ], [ %2782, %2769 ], [ 1.000000e+00, %2556 ]
  %2788 = phi float [ %2724, %2632 ], [ %2767, %2735 ], [ %2783, %2769 ], [ 1.000000e+00, %2556 ]
  %2789 = phi float [ %2725, %2632 ], [ %2768, %2735 ], [ %2784, %2769 ], [ 1.000000e+00, %2556 ]
  %2790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.i32 %2790, 1
  %2792 = and i32 %2791, 1
  %2793 = icmp ne i32 %2792, 0
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 3
  %2796 = and i32 %2795, 32
  %2797 = icmp ne i32 %2796, 0
  %2798 = and i1 %2793, %2797
  %2799 = select i1 %2798, float 1.000000e+00, float %2787
  %2800 = select i1 %2798, float 0x3FD3333340000000, float %2788
  %2801 = select i1 %2798, float 0x3FD3333340000000, float %2789
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, 32
  %2805 = icmp eq i32 %2804, 0
  br i1 %2805, label %2886, label %2806, !dx.controlflow.hints !89

; <label>:2806                                    ; preds = %2785
  %2807 = and i32 %509, 15
  %2808 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2807)  ; Countbits(value)
  %2809 = shl i32 %2808, 4
  %2810 = add i32 %2809, %523
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 1
  %2813 = and i32 %516, 15
  %2814 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2813)  ; Countbits(value)
  %2815 = shl i32 %2814, 2
  %2816 = add i32 %2815, %525
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = add i32 %2818, 0
  %2820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2820, %dx.types.Handle %46, float %2304, float %2305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.ResRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.ResRet.f32 %2821, 2
  %2825 = extractvalue %dx.types.ResRet.f32 %2821, 3
  %2826 = and i32 %2812, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = lshr i32 %2812, 8
  %2829 = and i32 %2828, 255
  %2830 = uitofp i32 %2829 to float
  %2831 = lshr i32 %2812, 16
  %2832 = and i32 %2831, 255
  %2833 = uitofp i32 %2832 to float
  %2834 = fmul fast float %2833, 0x3F70101000000000
  %2835 = fmul fast float %2822, %2827
  %2836 = fadd fast float %2835, %2830
  %2837 = fmul fast float %2836, 0x3F70101000000000
  %2838 = fadd fast float %2823, -5.000000e-01
  %2839 = fadd fast float %2825, -5.000000e-01
  %2840 = fmul fast float %2838, %2834
  %2841 = fmul fast float %2839, %2834
  %2842 = fadd fast float %2840, 5.000000e-01
  %2843 = fadd fast float %2841, 5.000000e-01
  %2844 = fmul fast float %2842, 2.000000e+00
  %2845 = fadd fast float %2844, -1.000000e+00
  %2846 = fmul fast float %2843, 2.000000e+00
  %2847 = fadd fast float %2846, -1.000000e+00
  %2848 = fadd fast float %2845, %2847
  %2849 = fmul fast float %2848, 5.000000e-01
  %2850 = fsub fast float %2845, %2847
  %2851 = fmul fast float %2850, 5.000000e-01
  %2852 = call float @dx.op.unary.f32(i32 6, float %2849)  ; FAbs(value)
  %2853 = fsub fast float 1.000000e+00, %2852
  %2854 = call float @dx.op.unary.f32(i32 6, float %2851)  ; FAbs(value)
  %2855 = fsub fast float %2853, %2854
  %2856 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2851, float %2855, float %2849, float %2851, float %2855)  ; Dot3(ax,ay,az,bx,by,bz)
  %2857 = call float @dx.op.unary.f32(i32 25, float %2856)  ; Rsqrt(value)
  %2858 = fmul fast float %2849, %2857
  %2859 = fmul fast float %2851, %2857
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, 67108864
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2882, label %2864

; <label>:2864                                    ; preds = %2806
  %2865 = and i32 %509, 65535
  %2866 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2865)  ; Countbits(value)
  %2867 = shl i32 %2866, 4
  %2868 = add i32 %2867, %523
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 65535
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = extractvalue %dx.types.ResRet.i32 %2869, 1
  %2874 = and i32 %2873, 65535
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = lshr i32 %2870, 16
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = fsub fast float %2837, %2877
  %2879 = fmul fast float %2878, %2872
  %2880 = fadd fast float %2879, %2875
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  br label %2882

; <label>:2882                                    ; preds = %2864, %2806
  %2883 = phi float [ %2881, %2864 ], [ %2837, %2806 ]
  %2884 = call float @dx.op.dot2.f32(i32 54, float %2858, float %2859, float %2318, float %2319)  ; Dot2(ax,ay,bx,by)
  %2885 = call float @dx.op.dot2.f32(i32 54, float %2858, float %2859, float %2320, float %2321)  ; Dot2(ax,ay,bx,by)
  br label %2886

; <label>:2886                                    ; preds = %2882, %2785
  %2887 = phi float [ %2883, %2882 ], [ 0x3FD6666660000000, %2785 ]
  %2888 = phi float [ %2884, %2882 ], [ 0.000000e+00, %2785 ]
  %2889 = phi float [ %2885, %2882 ], [ 0.000000e+00, %2785 ]
  %2890 = phi float [ %2824, %2882 ], [ 1.000000e+00, %2785 ]
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 64
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2921, label %2895, !dx.controlflow.hints !90

; <label>:2895                                    ; preds = %2886
  %2896 = and i32 %516, 255
  %2897 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2896)  ; Countbits(value)
  %2898 = shl i32 %2897, 2
  %2899 = add i32 %2898, %525
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = add i32 %2901, 0
  %2903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = and i32 %2905, 131072
  %2907 = icmp eq i32 %2906, 0
  %2908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2903, %dx.types.Handle %46, float %2304, float %2305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.ResRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.ResRet.f32 %2908, 2
  %2912 = fmul fast float %2909, %2354
  %2913 = fmul fast float %2910, %2357
  %2914 = fmul fast float %2911, %2360
  br i1 %2907, label %2921, label %2915, !dx.controlflow.hints !91

; <label>:2915                                    ; preds = %2895
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 0
  %2918 = fmul fast float %2917, %2912
  %2919 = fmul fast float %2917, %2913
  %2920 = fmul fast float %2917, %2914
  br label %2921

; <label>:2921                                    ; preds = %2915, %2895, %2886, %2548, %2536
  %2922 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2888, %2895 ], [ %2888, %2886 ], [ %2888, %2915 ]
  %2923 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2889, %2895 ], [ %2889, %2886 ], [ %2889, %2915 ]
  %2924 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2799, %2895 ], [ %2799, %2886 ], [ %2799, %2915 ]
  %2925 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2800, %2895 ], [ %2800, %2886 ], [ %2800, %2915 ]
  %2926 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2801, %2895 ], [ %2801, %2886 ], [ %2801, %2915 ]
  %2927 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2912, %2895 ], [ 0.000000e+00, %2886 ], [ %2918, %2915 ]
  %2928 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2913, %2895 ], [ 0.000000e+00, %2886 ], [ %2919, %2915 ]
  %2929 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2914, %2895 ], [ 0.000000e+00, %2886 ], [ %2920, %2915 ]
  %2930 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2786, %2895 ], [ %2786, %2886 ], [ %2786, %2915 ]
  %2931 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ 1.000000e+00, %2895 ], [ 1.000000e+00, %2886 ], [ 1.000000e+00, %2915 ]
  %2932 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2887, %2895 ], [ %2887, %2886 ], [ %2887, %2915 ]
  %2933 = phi float [ 0.000000e+00, %2536 ], [ 0.000000e+00, %2548 ], [ %2890, %2895 ], [ %2890, %2886 ], [ %2890, %2915 ]
  %2934 = phi float [ 0.000000e+00, %2536 ], [ 1.000000e+00, %2548 ], [ 1.000000e+00, %2895 ], [ 1.000000e+00, %2886 ], [ 1.000000e+00, %2915 ]
  br i1 %2475, label %3592, label %2935, !dx.controlflow.hints !92

; <label>:2935                                    ; preds = %2921
  %2936 = icmp ult i32 %2542, 2
  %2937 = and i32 %509, 1
  %2938 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2937)  ; Countbits(value)
  %2939 = shl i32 %2938, 4
  %2940 = add i32 %2939, %523
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.i32 %2941, 1
  %2944 = or i32 %2943, %2942
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %3592, label %2946, !dx.controlflow.hints !93

; <label>:2946                                    ; preds = %2935
  %2947 = fadd fast float %2934, 1.000000e+00
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 2
  %2950 = bitcast float %2949 to i32
  %2951 = lshr i32 %2950, 27
  %2952 = and i32 %2951, 15
  %2953 = uitofp i32 %2952 to float
  %2954 = fcmp fast ogt float %2947, %2953
  br i1 %2954, label %3592, label %2955, !dx.controlflow.hints !94

; <label>:2955                                    ; preds = %2946
  %2956 = and i32 %2942, 16777216
  %2957 = icmp ne i32 %2956, 0
  %2958 = select i1 %2957, float 0.000000e+00, float %2539
  %2959 = and i32 %2942, 256
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %3013, label %2961

; <label>:2961                                    ; preds = %2955
  %2962 = and i32 %516, 131071
  %2963 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2962)  ; Countbits(value)
  %2964 = shl i32 %2963, 2
  %2965 = add i32 %2964, %525
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %2967, 0
  %2969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2969, %dx.types.Handle %47, float %2308, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = and i32 %509, 31
  %2973 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2972)  ; Countbits(value)
  %2974 = shl i32 %2973, 4
  %2975 = add i32 %2974, %523
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 3
  %2978 = shl i32 %2977, 4
  %2979 = and i32 %2978, 32752
  %2980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2979)  ; LegacyF16ToF32(value)
  %2981 = lshr i32 %2977, 7
  %2982 = and i32 %2981, 32752
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = fsub fast float 1.000000e+00, %2958
  %2985 = call float @dx.op.binary.f32(i32 35, float %2984, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2986 = bitcast float %2958 to i32
  %2987 = sitofp i32 %2986 to float
  %2988 = fadd fast float %2987, 0xC1CFBF8940000000
  %2989 = fmul fast float %2983, %2988
  %2990 = fadd fast float %2989, 0x41CFBF8940000000
  %2991 = fptosi float %2990 to i32
  %2992 = bitcast i32 %2991 to float
  %2993 = bitcast float %2985 to i32
  %2994 = sitofp i32 %2993 to float
  %2995 = fadd fast float %2994, 0xC1CFBF8940000000
  %2996 = fmul fast float %2995, %2983
  %2997 = fadd fast float %2996, 0x41CFBF8940000000
  %2998 = fptosi float %2997 to i32
  %2999 = bitcast i32 %2998 to float
  %3000 = fmul fast float %2992, %2980
  %3001 = fmul fast float %2999, %2980
  %3002 = fsub fast float %2985, %3000
  %3003 = fadd fast float %3001, %2985
  %3004 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3005 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3006 = fsub fast float %2971, %3004
  %3007 = fsub fast float %3005, %3004
  %3008 = bitcast float %3007 to i32
  %3009 = sub nsw i32 2129859010, %3008
  %3010 = bitcast i32 %3009 to float
  %3011 = fmul fast float %3010, %3006
  %3012 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  br label %3013

; <label>:3013                                    ; preds = %2961, %2955
  %3014 = phi float [ %3012, %2961 ], [ %2958, %2955 ]
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 128
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3038, label %3019

; <label>:3019                                    ; preds = %3013
  %3020 = and i32 %516, 8191
  %3021 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3020)  ; Countbits(value)
  %3022 = shl i32 %3021, 2
  %3023 = add i32 %3022, %525
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3027, %dx.types.Handle %47, float %2308, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = and i32 %3031, 524288
  %3033 = icmp ne i32 %3032, 0
  %3034 = fcmp fast ogt float %3029, 0x3FE0101020000000
  %3035 = select i1 %3034, float 1.000000e+00, float 0.000000e+00
  %3036 = select i1 %3033, float %3035, float %3029
  %3037 = fmul fast float %3036, %3014
  br label %3038

; <label>:3038                                    ; preds = %3019, %3013
  %3039 = phi float [ %3037, %3019 ], [ %3014, %3013 ]
  %3040 = fcmp fast ult float %3039, 0x3F70101020000000
  br i1 %3040, label %3592, label %3041, !dx.controlflow.hints !95

; <label>:3041                                    ; preds = %3038
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 16
  %3045 = icmp eq i32 %3044, 0
  br i1 %3045, label %3276, label %3046

; <label>:3046                                    ; preds = %3041
  %3047 = and i32 %509, 31
  %3048 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3047)  ; Countbits(value)
  %3049 = shl i32 %3048, 4
  %3050 = add i32 %3049, %523
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %516, 1
  %3054 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3053)  ; Countbits(value)
  %3055 = shl i32 %3054, 2
  %3056 = add i32 %3055, %525
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3060, %dx.types.Handle %46, float %2308, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = extractvalue %dx.types.ResRet.f32 %3061, 3
  %3066 = and i32 %3052, 255
  %3067 = uitofp i32 %3066 to float
  %3068 = lshr i32 %3052, 8
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = fmul fast float %3065, %3067
  %3072 = fadd fast float %3071, %3070
  %3073 = fmul fast float %3072, 0x3F70101000000000
  %3074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3075 = extractvalue %dx.types.CBufRet.f32 %3074, 0
  %3076 = bitcast float %3075 to i32
  %3077 = lshr i32 %3076, 16
  %3078 = and i32 %3077, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = fptoui float %3079 to i32
  %3081 = icmp eq i32 %3080, 8
  br i1 %3081, label %3082, label %3098, !dx.controlflow.hints !96

; <label>:3082                                    ; preds = %3046
  %3083 = fmul fast float %3062, 0x3FD322D0E0000000
  %3084 = fmul fast float %3063, 0x3FE2C8B440000000
  %3085 = fadd fast float %3083, %3084
  %3086 = fmul fast float %3064, 0x3FBD2F1AA0000000
  %3087 = fadd fast float %3085, %3086
  %3088 = fsub fast float %3064, %3087
  %3089 = fsub fast float %3062, %3087
  %3090 = fmul fast float %3089, 0x3FEFFE3280000000
  %3091 = fadd fast float %3090, %3087
  %3092 = fmul fast float %3088, 0x3FC8E02220000000
  %3093 = fsub fast float %3087, %3092
  %3094 = fmul fast float %3089, 0x3FE04E2080000000
  %3095 = fsub fast float %3093, %3094
  %3096 = fmul fast float %3088, 0x3FEFFDE740000000
  %3097 = fadd fast float %3096, %3087
  br label %3098

; <label>:3098                                    ; preds = %3082, %3046
  %3099 = phi float [ %3091, %3082 ], [ %3062, %3046 ]
  %3100 = phi float [ %3095, %3082 ], [ %3063, %3046 ]
  %3101 = phi float [ %3097, %3082 ], [ %3064, %3046 ]
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 512
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %3117, label %3106

; <label>:3106                                    ; preds = %3098
  %3107 = and i32 %516, 2147483647
  %3108 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3107)  ; Countbits(value)
  %3109 = shl i32 %3108, 2
  %3110 = add i32 %3109, %525
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = add i32 %3112, 0
  %3114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3114, %dx.types.Handle %47, float %2308, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3116 = extractvalue %dx.types.ResRet.f32 %3115, 0
  br label %3117

; <label>:3117                                    ; preds = %3106, %3098
  %3118 = phi float [ %3116, %3106 ], [ 1.000000e+00, %3098 ]
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, 33554432
  %3122 = icmp eq i32 %3121, 0
  br i1 %3122, label %3223, label %3123

; <label>:3123                                    ; preds = %3117
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 2
  %3126 = and i32 %3125, 65535
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = lshr i32 %3125, 16
  %3129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3128)  ; LegacyF16ToF32(value)
  %3130 = extractvalue %dx.types.ResRet.i32 %3124, 3
  %3131 = and i32 %3130, 65535
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3134 = lshr i32 %3133, 24
  %3135 = uitofp i32 %3134 to float
  %3136 = fmul fast float %3135, 0x3F70101020000000
  %3137 = and i32 %3133, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = fmul fast float %3138, 0x3F70101020000000
  %3140 = lshr i32 %3133, 8
  %3141 = and i32 %3140, 255
  %3142 = uitofp i32 %3141 to float
  %3143 = fmul fast float %3142, 0x3F70101020000000
  %3144 = lshr i32 %3133, 16
  %3145 = and i32 %3144, 255
  %3146 = uitofp i32 %3145 to float
  %3147 = fmul fast float %3146, 0x3F70101020000000
  %3148 = extractvalue %dx.types.ResRet.i32 %3124, 1
  %3149 = lshr i32 %3148, 24
  %3150 = uitofp i32 %3149 to float
  %3151 = fmul fast float %3150, 0x3F70101020000000
  %3152 = and i32 %3148, 255
  %3153 = uitofp i32 %3152 to float
  %3154 = fmul fast float %3153, 0x3F70101020000000
  %3155 = lshr i32 %3148, 8
  %3156 = and i32 %3155, 255
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3157, 0x3F70101020000000
  %3159 = lshr i32 %3148, 16
  %3160 = and i32 %3159, 255
  %3161 = uitofp i32 %3160 to float
  %3162 = fmul fast float %3161, 0x3F70101020000000
  %3163 = bitcast float %3099 to i32
  %3164 = ashr i32 %3163, 1
  %3165 = sub nsw i32 1597463174, %3164
  %3166 = bitcast i32 %3165 to float
  %3167 = fmul fast float %3099, 5.000000e-01
  %3168 = fmul fast float %3166, %3166
  %3169 = fmul fast float %3168, %3167
  %3170 = fsub fast float 1.500000e+00, %3169
  %3171 = fmul fast float %3166, %3099
  %3172 = fmul fast float %3171, %3170
  %3173 = bitcast float %3100 to i32
  %3174 = ashr i32 %3173, 1
  %3175 = sub nsw i32 1597463174, %3174
  %3176 = bitcast i32 %3175 to float
  %3177 = fmul fast float %3100, 5.000000e-01
  %3178 = fmul fast float %3176, %3176
  %3179 = fmul fast float %3178, %3177
  %3180 = fsub fast float 1.500000e+00, %3179
  %3181 = fmul fast float %3176, %3100
  %3182 = fmul fast float %3181, %3180
  %3183 = bitcast float %3101 to i32
  %3184 = ashr i32 %3183, 1
  %3185 = sub nsw i32 1597463174, %3184
  %3186 = bitcast i32 %3185 to float
  %3187 = fmul fast float %3101, 5.000000e-01
  %3188 = fmul fast float %3186, %3186
  %3189 = fmul fast float %3188, %3187
  %3190 = fsub fast float 1.500000e+00, %3189
  %3191 = fmul fast float %3186, %3101
  %3192 = fmul fast float %3191, %3190
  %3193 = fsub fast float %3172, %3154
  %3194 = fsub fast float %3182, %3158
  %3195 = fsub fast float %3192, %3162
  %3196 = fmul fast float %3193, %3127
  %3197 = fmul fast float %3194, %3129
  %3198 = fmul fast float %3195, %3132
  %3199 = fadd fast float %3196, %3139
  %3200 = fadd fast float %3197, %3143
  %3201 = fadd fast float %3198, %3147
  %3202 = call float @dx.op.unary.f32(i32 7, float %3199)  ; Saturate(value)
  %3203 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  %3204 = call float @dx.op.unary.f32(i32 7, float %3201)  ; Saturate(value)
  %3205 = fmul fast float %3202, %3202
  %3206 = fmul fast float %3203, %3203
  %3207 = fmul fast float %3204, %3204
  %3208 = fsub fast float %3205, %3099
  %3209 = fsub fast float %3206, %3100
  %3210 = fsub fast float %3207, %3101
  %3211 = fmul fast float %3208, %3118
  %3212 = fmul fast float %3209, %3118
  %3213 = fmul fast float %3210, %3118
  %3214 = fadd fast float %3211, %3099
  %3215 = fadd fast float %3212, %3100
  %3216 = fadd fast float %3213, %3101
  %3217 = fadd fast float %3136, %3073
  %3218 = fsub fast float %3217, %3151
  %3219 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3220 = fsub fast float %3219, %3073
  %3221 = fmul fast float %3220, %3118
  %3222 = fadd fast float %3221, %3073
  br label %3276

; <label>:3223                                    ; preds = %3117
  %3224 = and i32 %3120, 134217728
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3260, label %3226

; <label>:3226                                    ; preds = %3223
  %3227 = call float @dx.op.unary.f32(i32 24, float %2401)  ; Sqrt(value)
  %3228 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %3229 = call float @dx.op.unary.f32(i32 24, float %2409)  ; Sqrt(value)
  %3230 = fadd fast float %3227, -5.000000e-01
  %3231 = fadd fast float %3228, -5.000000e-01
  %3232 = fadd fast float %3229, -5.000000e-01
  %3233 = fmul fast float %3230, %3118
  %3234 = fmul fast float %3231, %3118
  %3235 = fmul fast float %3232, %3118
  %3236 = fadd fast float %3233, 5.000000e-01
  %3237 = fadd fast float %3234, 5.000000e-01
  %3238 = fadd fast float %3235, 5.000000e-01
  %3239 = call float @dx.op.unary.f32(i32 24, float %3099)  ; Sqrt(value)
  %3240 = call float @dx.op.unary.f32(i32 24, float %3100)  ; Sqrt(value)
  %3241 = call float @dx.op.unary.f32(i32 24, float %3101)  ; Sqrt(value)
  %3242 = fmul fast float %3236, 2.000000e+00
  %3243 = fsub fast float 1.000000e+00, %3242
  %3244 = fmul fast float %3243, %3239
  %3245 = fadd fast float %3244, %3242
  %3246 = fmul fast float %3245, %3239
  %3247 = fmul fast float %3237, 2.000000e+00
  %3248 = fsub fast float 1.000000e+00, %3247
  %3249 = fmul fast float %3248, %3240
  %3250 = fadd fast float %3249, %3247
  %3251 = fmul fast float %3250, %3240
  %3252 = fmul fast float %3238, 2.000000e+00
  %3253 = fsub fast float 1.000000e+00, %3252
  %3254 = fmul fast float %3253, %3241
  %3255 = fadd fast float %3254, %3252
  %3256 = fmul fast float %3255, %3241
  %3257 = fmul fast float %3246, %3246
  %3258 = fmul fast float %3251, %3251
  %3259 = fmul fast float %3256, %3256
  br label %3276

; <label>:3260                                    ; preds = %3223
  %3261 = fmul fast float %2401, %2401
  %3262 = fmul fast float %2405, %2405
  %3263 = fmul fast float %2409, %2409
  %3264 = fadd fast float %3261, -1.000000e+00
  %3265 = fadd fast float %3262, -1.000000e+00
  %3266 = fadd fast float %3263, -1.000000e+00
  %3267 = fmul fast float %3118, %3264
  %3268 = fmul fast float %3118, %3265
  %3269 = fmul fast float %3118, %3266
  %3270 = fadd fast float %3267, 1.000000e+00
  %3271 = fadd fast float %3268, 1.000000e+00
  %3272 = fadd fast float %3269, 1.000000e+00
  %3273 = fmul fast float %3270, %3099
  %3274 = fmul fast float %3271, %3100
  %3275 = fmul fast float %3272, %3101
  br label %3276

; <label>:3276                                    ; preds = %3260, %3226, %3123, %3041
  %3277 = phi float [ %3222, %3123 ], [ %3073, %3226 ], [ %3073, %3260 ], [ 0x3FA23C0BE0000000, %3041 ]
  %3278 = phi float [ %3214, %3123 ], [ %3257, %3226 ], [ %3273, %3260 ], [ 1.000000e+00, %3041 ]
  %3279 = phi float [ %3215, %3123 ], [ %3258, %3226 ], [ %3274, %3260 ], [ 1.000000e+00, %3041 ]
  %3280 = phi float [ %3216, %3123 ], [ %3259, %3226 ], [ %3275, %3260 ], [ 1.000000e+00, %3041 ]
  %3281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3282 = extractvalue %dx.types.CBufRet.i32 %3281, 1
  %3283 = and i32 %3282, 1
  %3284 = icmp ne i32 %3283, 0
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 3
  %3287 = and i32 %3286, 32
  %3288 = icmp ne i32 %3287, 0
  %3289 = and i1 %3284, %3288
  %3290 = select i1 %3289, float 1.000000e+00, float %3278
  %3291 = select i1 %3289, float 0x3FD3333340000000, float %3279
  %3292 = select i1 %3289, float 0x3FD3333340000000, float %3280
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, 32
  %3296 = icmp eq i32 %3295, 0
  br i1 %3296, label %3377, label %3297, !dx.controlflow.hints !97

; <label>:3297                                    ; preds = %3276
  %3298 = and i32 %509, 31
  %3299 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3298)  ; Countbits(value)
  %3300 = shl i32 %3299, 4
  %3301 = add i32 %3300, %523
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 1
  %3304 = and i32 %516, 31
  %3305 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3304)  ; Countbits(value)
  %3306 = shl i32 %3305, 2
  %3307 = add i32 %3306, %525
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3311, %dx.types.Handle %46, float %2308, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = extractvalue %dx.types.ResRet.f32 %3312, 3
  %3317 = and i32 %3303, 255
  %3318 = uitofp i32 %3317 to float
  %3319 = lshr i32 %3303, 8
  %3320 = and i32 %3319, 255
  %3321 = uitofp i32 %3320 to float
  %3322 = lshr i32 %3303, 16
  %3323 = and i32 %3322, 255
  %3324 = uitofp i32 %3323 to float
  %3325 = fmul fast float %3324, 0x3F70101000000000
  %3326 = fmul fast float %3313, %3318
  %3327 = fadd fast float %3326, %3321
  %3328 = fmul fast float %3327, 0x3F70101000000000
  %3329 = fadd fast float %3314, -5.000000e-01
  %3330 = fadd fast float %3316, -5.000000e-01
  %3331 = fmul fast float %3329, %3325
  %3332 = fmul fast float %3330, %3325
  %3333 = fadd fast float %3331, 5.000000e-01
  %3334 = fadd fast float %3332, 5.000000e-01
  %3335 = fmul fast float %3333, 2.000000e+00
  %3336 = fadd fast float %3335, -1.000000e+00
  %3337 = fmul fast float %3334, 2.000000e+00
  %3338 = fadd fast float %3337, -1.000000e+00
  %3339 = fadd fast float %3336, %3338
  %3340 = fmul fast float %3339, 5.000000e-01
  %3341 = fsub fast float %3336, %3338
  %3342 = fmul fast float %3341, 5.000000e-01
  %3343 = call float @dx.op.unary.f32(i32 6, float %3340)  ; FAbs(value)
  %3344 = fsub fast float 1.000000e+00, %3343
  %3345 = call float @dx.op.unary.f32(i32 6, float %3342)  ; FAbs(value)
  %3346 = fsub fast float %3344, %3345
  %3347 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3342, float %3346, float %3340, float %3342, float %3346)  ; Dot3(ax,ay,az,bx,by,bz)
  %3348 = call float @dx.op.unary.f32(i32 25, float %3347)  ; Rsqrt(value)
  %3349 = fmul fast float %3340, %3348
  %3350 = fmul fast float %3342, %3348
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = and i32 %3352, 67108864
  %3354 = icmp eq i32 %3353, 0
  br i1 %3354, label %3373, label %3355

; <label>:3355                                    ; preds = %3297
  %3356 = and i32 %509, 131071
  %3357 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3356)  ; Countbits(value)
  %3358 = shl i32 %3357, 4
  %3359 = add i32 %3358, %523
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = and i32 %3361, 65535
  %3363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3362)  ; LegacyF16ToF32(value)
  %3364 = extractvalue %dx.types.ResRet.i32 %3360, 1
  %3365 = and i32 %3364, 65535
  %3366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3365)  ; LegacyF16ToF32(value)
  %3367 = lshr i32 %3361, 16
  %3368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3367)  ; LegacyF16ToF32(value)
  %3369 = fsub fast float %3328, %3368
  %3370 = fmul fast float %3369, %3363
  %3371 = fadd fast float %3370, %3366
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  br label %3373

; <label>:3373                                    ; preds = %3355, %3297
  %3374 = phi float [ %3372, %3355 ], [ %3328, %3297 ]
  %3375 = call float @dx.op.dot2.f32(i32 54, float %3349, float %3350, float %2326, float %2327)  ; Dot2(ax,ay,bx,by)
  %3376 = call float @dx.op.dot2.f32(i32 54, float %3349, float %3350, float %2328, float %2329)  ; Dot2(ax,ay,bx,by)
  br label %3377

; <label>:3377                                    ; preds = %3373, %3276
  %3378 = phi float [ %3374, %3373 ], [ 0x3FD6666660000000, %3276 ]
  %3379 = phi float [ %3375, %3373 ], [ 0.000000e+00, %3276 ]
  %3380 = phi float [ %3376, %3373 ], [ 0.000000e+00, %3276 ]
  %3381 = phi float [ %3315, %3373 ], [ 1.000000e+00, %3276 ]
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = and i32 %3383, 64
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3412, label %3386, !dx.controlflow.hints !90

; <label>:3386                                    ; preds = %3377
  %3387 = and i32 %516, 511
  %3388 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3387)  ; Countbits(value)
  %3389 = shl i32 %3388, 2
  %3390 = add i32 %3389, %525
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = add i32 %3392, 0
  %3394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 131072
  %3398 = icmp eq i32 %3397, 0
  %3399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3394, %dx.types.Handle %46, float %2308, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = fmul fast float %3400, %2386
  %3404 = fmul fast float %3401, %2389
  %3405 = fmul fast float %3402, %2392
  br i1 %3398, label %3412, label %3406, !dx.controlflow.hints !91

; <label>:3406                                    ; preds = %3386
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 0
  %3409 = fmul fast float %3408, %3403
  %3410 = fmul fast float %3408, %3404
  %3411 = fmul fast float %3408, %3405
  br label %3412

; <label>:3412                                    ; preds = %3406, %3386, %3377
  %3413 = phi float [ %3409, %3406 ], [ %3403, %3386 ], [ 0.000000e+00, %3377 ]
  %3414 = phi float [ %3410, %3406 ], [ %3404, %3386 ], [ 0.000000e+00, %3377 ]
  %3415 = phi float [ %3411, %3406 ], [ %3405, %3386 ], [ 0.000000e+00, %3377 ]
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  br i1 %2936, label %3418, label %3426, !dx.controlflow.hints !98

; <label>:3418                                    ; preds = %3412
  %3419 = fsub fast float 1.000000e+00, %3039
  %3420 = fmul fast float %3419, %2924
  %3421 = fmul fast float %3419, %2925
  %3422 = fmul fast float %3419, %2926
  %3423 = fmul fast float %3419, %2927
  %3424 = fmul fast float %3419, %2928
  %3425 = fmul fast float %3419, %2929
  br label %3426

; <label>:3426                                    ; preds = %3418, %3412
  %3427 = phi float [ %2924, %3412 ], [ %3420, %3418 ]
  %3428 = phi float [ %2925, %3412 ], [ %3421, %3418 ]
  %3429 = phi float [ %2926, %3412 ], [ %3422, %3418 ]
  %3430 = phi float [ %2927, %3412 ], [ %3423, %3418 ]
  %3431 = phi float [ %2928, %3412 ], [ %3424, %3418 ]
  %3432 = phi float [ %2929, %3412 ], [ %3425, %3418 ]
  %3433 = and i32 %3417, 3
  %3434 = icmp eq i32 %3433, 3
  br i1 %3434, label %3510, label %3435, !dx.controlflow.hints !99

; <label>:3435                                    ; preds = %3426
  %3436 = and i32 %3417, 16
  %3437 = icmp ne i32 %3436, 0
  %3438 = select i1 %3437, float %3039, float 0.000000e+00
  %3439 = icmp eq i32 %3433, 0
  br i1 %3439, label %3440, label %3465, !dx.controlflow.hints !100

; <label>:3440                                    ; preds = %3435
  %3441 = and i32 %3417, 64
  %3442 = icmp ne i32 %3441, 0
  %3443 = select i1 %3442, float %3039, float 0.000000e+00
  %3444 = fsub fast float %3290, %3427
  %3445 = fsub fast float %3291, %3428
  %3446 = fsub fast float %3292, %3429
  %3447 = fmul fast float %3438, %3444
  %3448 = fmul fast float %3438, %3445
  %3449 = fmul fast float %3438, %3446
  %3450 = fadd fast float %3447, %3427
  %3451 = fadd fast float %3448, %3428
  %3452 = fadd fast float %3449, %3429
  %3453 = fsub fast float %3277, %2930
  %3454 = fmul fast float %3438, %3453
  %3455 = fadd fast float %3454, %2930
  %3456 = fsub fast float %3413, %3430
  %3457 = fsub fast float %3414, %3431
  %3458 = fsub fast float %3415, %3432
  %3459 = fmul fast float %3443, %3456
  %3460 = fmul fast float %3443, %3457
  %3461 = fmul fast float %3443, %3458
  %3462 = fadd fast float %3459, %3430
  %3463 = fadd fast float %3460, %3431
  %3464 = fadd fast float %3461, %3432
  br label %3510

; <label>:3465                                    ; preds = %3435
  %3466 = icmp eq i32 %3433, 1
  br i1 %3466, label %3467, label %3480, !dx.controlflow.hints !101

; <label>:3467                                    ; preds = %3465
  %3468 = fadd fast float %3290, -1.000000e+00
  %3469 = fadd fast float %3291, -1.000000e+00
  %3470 = fadd fast float %3292, -1.000000e+00
  %3471 = fmul fast float %3438, %3468
  %3472 = fmul fast float %3438, %3469
  %3473 = fmul fast float %3438, %3470
  %3474 = fadd fast float %3471, 1.000000e+00
  %3475 = fadd fast float %3472, 1.000000e+00
  %3476 = fadd fast float %3473, 1.000000e+00
  %3477 = fmul fast float %3474, %3427
  %3478 = fmul fast float %3475, %3428
  %3479 = fmul fast float %3476, %3429
  br label %3510

; <label>:3480                                    ; preds = %3465
  %3481 = icmp eq i32 %3433, 2
  br i1 %3481, label %3482, label %3510, !dx.controlflow.hints !102

; <label>:3482                                    ; preds = %3480
  %3483 = call float @dx.op.unary.f32(i32 24, float %3290)  ; Sqrt(value)
  %3484 = call float @dx.op.unary.f32(i32 24, float %3291)  ; Sqrt(value)
  %3485 = call float @dx.op.unary.f32(i32 24, float %3292)  ; Sqrt(value)
  %3486 = fadd fast float %3483, -5.000000e-01
  %3487 = fadd fast float %3484, -5.000000e-01
  %3488 = fadd fast float %3485, -5.000000e-01
  %3489 = fmul fast float %3486, %3438
  %3490 = fmul fast float %3487, %3438
  %3491 = fmul fast float %3488, %3438
  %3492 = fadd fast float %3489, 5.000000e-01
  %3493 = fadd fast float %3490, 5.000000e-01
  %3494 = fadd fast float %3491, 5.000000e-01
  %3495 = fmul fast float %3492, 2.000000e+00
  %3496 = fsub fast float 1.000000e+00, %3495
  %3497 = fmul fast float %3496, %3427
  %3498 = fadd fast float %3497, %3495
  %3499 = fmul fast float %3498, %3427
  %3500 = fmul fast float %3493, 2.000000e+00
  %3501 = fsub fast float 1.000000e+00, %3500
  %3502 = fmul fast float %3501, %3428
  %3503 = fadd fast float %3502, %3500
  %3504 = fmul fast float %3503, %3428
  %3505 = fmul fast float %3494, 2.000000e+00
  %3506 = fsub fast float 1.000000e+00, %3505
  %3507 = fmul fast float %3506, %3429
  %3508 = fadd fast float %3507, %3505
  %3509 = fmul fast float %3508, %3429
  br label %3510

; <label>:3510                                    ; preds = %3482, %3480, %3467, %3440, %3426
  %3511 = phi float [ %3427, %3426 ], [ %3450, %3440 ], [ %3477, %3467 ], [ %3427, %3480 ], [ %3499, %3482 ]
  %3512 = phi float [ %3428, %3426 ], [ %3451, %3440 ], [ %3478, %3467 ], [ %3428, %3480 ], [ %3504, %3482 ]
  %3513 = phi float [ %3429, %3426 ], [ %3452, %3440 ], [ %3479, %3467 ], [ %3429, %3480 ], [ %3509, %3482 ]
  %3514 = phi float [ %3430, %3426 ], [ %3462, %3440 ], [ %3430, %3467 ], [ %3430, %3480 ], [ %3430, %3482 ]
  %3515 = phi float [ %3431, %3426 ], [ %3463, %3440 ], [ %3431, %3467 ], [ %3431, %3480 ], [ %3431, %3482 ]
  %3516 = phi float [ %3432, %3426 ], [ %3464, %3440 ], [ %3432, %3467 ], [ %3432, %3480 ], [ %3432, %3482 ]
  %3517 = phi float [ %2930, %3426 ], [ %3455, %3440 ], [ %2930, %3467 ], [ %2930, %3480 ], [ %2930, %3482 ]
  %3518 = and i32 %3417, 12
  %3519 = icmp eq i32 %3518, 12
  br i1 %3519, label %3592, label %3520, !dx.controlflow.hints !103

; <label>:3520                                    ; preds = %3510
  %3521 = and i32 %3417, 2097184
  %3522 = icmp eq i32 %3521, 2097184
  %3523 = select i1 %3522, float %3039, float 0.000000e+00
  %3524 = and i32 %3417, 4194336
  %3525 = icmp eq i32 %3524, 4194336
  %3526 = select i1 %3525, float %3039, float 0.000000e+00
  %3527 = and i32 %3417, 8388640
  %3528 = icmp eq i32 %3527, 8388640
  %3529 = select i1 %3528, float %3039, float 0.000000e+00
  %3530 = icmp eq i32 %3518, 0
  br i1 %3530, label %3531, label %3544, !dx.controlflow.hints !104

; <label>:3531                                    ; preds = %3520
  %3532 = fsub fast float %3379, %2922
  %3533 = fsub fast float %3380, %2923
  %3534 = fmul fast float %3523, %3532
  %3535 = fmul fast float %3523, %3533
  %3536 = fadd fast float %3534, %2922
  %3537 = fadd fast float %3535, %2923
  %3538 = fsub fast float %3381, %2933
  %3539 = fmul fast float %3526, %3538
  %3540 = fadd fast float %3539, %2933
  %3541 = fsub fast float %3378, %2932
  %3542 = fmul fast float %3529, %3541
  %3543 = fadd fast float %3542, %2932
  br label %3592

; <label>:3544                                    ; preds = %3520
  %3545 = icmp eq i32 %3518, 4
  br i1 %3545, label %3546, label %3578, !dx.controlflow.hints !105

; <label>:3546                                    ; preds = %3544
  %3547 = fmul fast float %3523, %3379
  %3548 = fmul fast float %3523, %3380
  %3549 = fadd fast float %3547, %2922
  %3550 = fadd fast float %3548, %2923
  %3551 = call float @dx.op.binary.f32(i32 36, float %2933, float %3381)  ; FMin(a,b)
  %3552 = fsub fast float %3551, %2933
  %3553 = fmul fast float %3552, %3526
  %3554 = fadd fast float %3553, %2933
  %3555 = fadd fast float %3378, %2932
  %3556 = fmul fast float %3555, 0x3FF337FAE0000000
  %3557 = fmul fast float %2932, %2932
  %3558 = fmul fast float %3378, %3378
  %3559 = fadd fast float %3558, %3557
  %3560 = fmul fast float %3559, 0x3FE5152B00000000
  %3561 = fmul fast float %2932, 0xBFCC1F85E0000000
  %3562 = fmul fast float %3561, %3378
  %3563 = fadd fast float %3562, 0xBFE1363700000000
  %3564 = fadd fast float %3563, %3556
  %3565 = fsub fast float %3564, %3560
  %3566 = fmul fast float %3555, 0x3FBA6F0D00000000
  %3567 = fmul fast float %3559, 0x3FD0432880000000
  %3568 = fmul fast float %2932, 0xBFEF110800000000
  %3569 = fmul fast float %3568, %3378
  %3570 = fadd fast float %3569, 1.000000e+00
  %3571 = fsub fast float %3570, %3566
  %3572 = fadd fast float %3571, %3567
  %3573 = fdiv fast float %3565, %3572
  %3574 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3575 = fsub fast float %3574, %2932
  %3576 = fmul fast float %3575, %3529
  %3577 = fadd fast float %3576, %2932
  br label %3592

; <label>:3578                                    ; preds = %3544
  %3579 = icmp eq i32 %3518, 8
  br i1 %3579, label %3580, label %3592, !dx.controlflow.hints !106

; <label>:3580                                    ; preds = %3578
  %3581 = fmul fast float %3523, %3379
  %3582 = fmul fast float %3523, %3380
  %3583 = fadd fast float %3581, %2922
  %3584 = fadd fast float %3582, %2923
  %3585 = call float @dx.op.binary.f32(i32 36, float %2933, float %3381)  ; FMin(a,b)
  %3586 = fsub fast float %3585, %2933
  %3587 = fmul fast float %3586, %3526
  %3588 = fadd fast float %3587, %2933
  %3589 = fsub fast float %3378, %2932
  %3590 = fmul fast float %3529, %3589
  %3591 = fadd fast float %3590, %2932
  br label %3592

; <label>:3592                                    ; preds = %3580, %3578, %3546, %3531, %3510, %3038, %2946, %2935, %2921
  %3593 = phi float [ %2922, %2921 ], [ %2922, %2935 ], [ %2922, %2946 ], [ %3536, %3531 ], [ %3549, %3546 ], [ %3583, %3580 ], [ %2922, %3578 ], [ %2922, %3510 ], [ %2922, %3038 ]
  %3594 = phi float [ %2923, %2921 ], [ %2923, %2935 ], [ %2923, %2946 ], [ %3537, %3531 ], [ %3550, %3546 ], [ %3584, %3580 ], [ %2923, %3578 ], [ %2923, %3510 ], [ %2923, %3038 ]
  %3595 = phi float [ %2924, %2921 ], [ %2924, %2935 ], [ %2924, %2946 ], [ %3511, %3531 ], [ %3511, %3546 ], [ %3511, %3580 ], [ %3511, %3578 ], [ %3511, %3510 ], [ %2924, %3038 ]
  %3596 = phi float [ %2925, %2921 ], [ %2925, %2935 ], [ %2925, %2946 ], [ %3512, %3531 ], [ %3512, %3546 ], [ %3512, %3580 ], [ %3512, %3578 ], [ %3512, %3510 ], [ %2925, %3038 ]
  %3597 = phi float [ %2926, %2921 ], [ %2926, %2935 ], [ %2926, %2946 ], [ %3513, %3531 ], [ %3513, %3546 ], [ %3513, %3580 ], [ %3513, %3578 ], [ %3513, %3510 ], [ %2926, %3038 ]
  %3598 = phi float [ %2927, %2921 ], [ %2927, %2935 ], [ %2927, %2946 ], [ %3514, %3531 ], [ %3514, %3546 ], [ %3514, %3580 ], [ %3514, %3578 ], [ %3514, %3510 ], [ %2927, %3038 ]
  %3599 = phi float [ %2928, %2921 ], [ %2928, %2935 ], [ %2928, %2946 ], [ %3515, %3531 ], [ %3515, %3546 ], [ %3515, %3580 ], [ %3515, %3578 ], [ %3515, %3510 ], [ %2928, %3038 ]
  %3600 = phi float [ %2929, %2921 ], [ %2929, %2935 ], [ %2929, %2946 ], [ %3516, %3531 ], [ %3516, %3546 ], [ %3516, %3580 ], [ %3516, %3578 ], [ %3516, %3510 ], [ %2929, %3038 ]
  %3601 = phi float [ %2930, %2921 ], [ %2930, %2935 ], [ %2930, %2946 ], [ %3517, %3531 ], [ %3517, %3546 ], [ %3517, %3580 ], [ %3517, %3578 ], [ %3517, %3510 ], [ %2930, %3038 ]
  %3602 = phi float [ %2932, %2921 ], [ %2932, %2935 ], [ %2932, %2946 ], [ %3543, %3531 ], [ %3577, %3546 ], [ %3591, %3580 ], [ %2932, %3578 ], [ %2932, %3510 ], [ %2932, %3038 ]
  %3603 = phi float [ %2933, %2921 ], [ %2933, %2935 ], [ %2933, %2946 ], [ %3540, %3531 ], [ %3554, %3546 ], [ %3588, %3580 ], [ %2933, %3578 ], [ %2933, %3510 ], [ %2933, %3038 ]
  %3604 = phi float [ %2934, %2921 ], [ %2934, %2935 ], [ %2947, %2946 ], [ %2947, %3531 ], [ %2947, %3546 ], [ %2947, %3580 ], [ %2947, %3578 ], [ %2947, %3510 ], [ %2947, %3038 ]
  br i1 %2477, label %4261, label %3605, !dx.controlflow.hints !107

; <label>:3605                                    ; preds = %3592
  %3606 = icmp ult i32 %2542, 3
  %3607 = and i32 %509, 3
  %3608 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3607)  ; Countbits(value)
  %3609 = shl i32 %3608, 4
  %3610 = add i32 %3609, %523
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.i32 %3611, 1
  %3614 = or i32 %3613, %3612
  %3615 = icmp eq i32 %3614, 0
  br i1 %3615, label %4261, label %3616, !dx.controlflow.hints !108

; <label>:3616                                    ; preds = %3605
  %3617 = fadd fast float %3604, 1.000000e+00
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 2
  %3620 = bitcast float %3619 to i32
  %3621 = lshr i32 %3620, 27
  %3622 = and i32 %3621, 15
  %3623 = uitofp i32 %3622 to float
  %3624 = fcmp fast ogt float %3617, %3623
  br i1 %3624, label %4261, label %3625, !dx.controlflow.hints !109

; <label>:3625                                    ; preds = %3616
  %3626 = and i32 %3612, 16777216
  %3627 = icmp ne i32 %3626, 0
  %3628 = select i1 %3627, float 0.000000e+00, float %2538
  %3629 = and i32 %3612, 256
  %3630 = icmp eq i32 %3629, 0
  br i1 %3630, label %3683, label %3631

; <label>:3631                                    ; preds = %3625
  %3632 = and i32 %516, 262143
  %3633 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3632)  ; Countbits(value)
  %3634 = shl i32 %3633, 2
  %3635 = add i32 %3634, %525
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = add i32 %3637, 0
  %3639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3639, %dx.types.Handle %47, float %2312, float %2313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = and i32 %509, 63
  %3643 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3642)  ; Countbits(value)
  %3644 = shl i32 %3643, 4
  %3645 = add i32 %3644, %523
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 3
  %3648 = shl i32 %3647, 4
  %3649 = and i32 %3648, 32752
  %3650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3649)  ; LegacyF16ToF32(value)
  %3651 = lshr i32 %3647, 7
  %3652 = and i32 %3651, 32752
  %3653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3652)  ; LegacyF16ToF32(value)
  %3654 = fsub fast float 1.000000e+00, %3628
  %3655 = call float @dx.op.binary.f32(i32 35, float %3654, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3656 = bitcast float %3628 to i32
  %3657 = sitofp i32 %3656 to float
  %3658 = fadd fast float %3657, 0xC1CFBF8940000000
  %3659 = fmul fast float %3653, %3658
  %3660 = fadd fast float %3659, 0x41CFBF8940000000
  %3661 = fptosi float %3660 to i32
  %3662 = bitcast i32 %3661 to float
  %3663 = bitcast float %3655 to i32
  %3664 = sitofp i32 %3663 to float
  %3665 = fadd fast float %3664, 0xC1CFBF8940000000
  %3666 = fmul fast float %3665, %3653
  %3667 = fadd fast float %3666, 0x41CFBF8940000000
  %3668 = fptosi float %3667 to i32
  %3669 = bitcast i32 %3668 to float
  %3670 = fmul fast float %3662, %3650
  %3671 = fmul fast float %3669, %3650
  %3672 = fsub fast float %3655, %3670
  %3673 = fadd fast float %3671, %3655
  %3674 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3675 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3676 = fsub fast float %3641, %3674
  %3677 = fsub fast float %3675, %3674
  %3678 = bitcast float %3677 to i32
  %3679 = sub nsw i32 2129859010, %3678
  %3680 = bitcast i32 %3679 to float
  %3681 = fmul fast float %3680, %3676
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  br label %3683

; <label>:3683                                    ; preds = %3631, %3625
  %3684 = phi float [ %3682, %3631 ], [ %3628, %3625 ]
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = and i32 %3686, 128
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3708, label %3689

; <label>:3689                                    ; preds = %3683
  %3690 = and i32 %516, 16383
  %3691 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3690)  ; Countbits(value)
  %3692 = shl i32 %3691, 2
  %3693 = add i32 %3692, %525
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = add i32 %3695, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3697, %dx.types.Handle %47, float %2312, float %2313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = and i32 %3701, 524288
  %3703 = icmp ne i32 %3702, 0
  %3704 = fcmp fast ogt float %3699, 0x3FE0101020000000
  %3705 = select i1 %3704, float 1.000000e+00, float 0.000000e+00
  %3706 = select i1 %3703, float %3705, float %3699
  %3707 = fmul fast float %3706, %3684
  br label %3708

; <label>:3708                                    ; preds = %3689, %3683
  %3709 = phi float [ %3707, %3689 ], [ %3684, %3683 ]
  %3710 = fcmp fast ult float %3709, 0x3F70101020000000
  br i1 %3710, label %4261, label %3711, !dx.controlflow.hints !110

; <label>:3711                                    ; preds = %3708
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = and i32 %3713, 16
  %3715 = icmp eq i32 %3714, 0
  br i1 %3715, label %3945, label %3716

; <label>:3716                                    ; preds = %3711
  %3717 = and i32 %509, 63
  %3718 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3717)  ; Countbits(value)
  %3719 = shl i32 %3718, 4
  %3720 = add i32 %3719, %523
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = and i32 %516, 3
  %3724 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3723)  ; Countbits(value)
  %3725 = shl i32 %3724, 2
  %3726 = add i32 %3725, %525
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = add i32 %3728, 0
  %3730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3729, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3730, %dx.types.Handle %46, float %2312, float %2313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3736 = and i32 %3722, 255
  %3737 = uitofp i32 %3736 to float
  %3738 = lshr i32 %3722, 8
  %3739 = and i32 %3738, 255
  %3740 = uitofp i32 %3739 to float
  %3741 = fmul fast float %3735, %3737
  %3742 = fadd fast float %3741, %3740
  %3743 = fmul fast float %3742, 0x3F70101000000000
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = bitcast float %3745 to i32
  %3747 = lshr i32 %3746, 16
  %3748 = and i32 %3747, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = fptoui float %3749 to i32
  %3751 = icmp eq i32 %3750, 8
  br i1 %3751, label %3752, label %3768, !dx.controlflow.hints !111

; <label>:3752                                    ; preds = %3716
  %3753 = fmul fast float %3732, 0x3FD322D0E0000000
  %3754 = fmul fast float %3733, 0x3FE2C8B440000000
  %3755 = fadd fast float %3753, %3754
  %3756 = fmul fast float %3734, 0x3FBD2F1AA0000000
  %3757 = fadd fast float %3755, %3756
  %3758 = fsub fast float %3734, %3757
  %3759 = fsub fast float %3732, %3757
  %3760 = fmul fast float %3759, 0x3FEFFE3280000000
  %3761 = fadd fast float %3760, %3757
  %3762 = fmul fast float %3758, 0x3FC8E02220000000
  %3763 = fsub fast float %3757, %3762
  %3764 = fmul fast float %3759, 0x3FE04E2080000000
  %3765 = fsub fast float %3763, %3764
  %3766 = fmul fast float %3758, 0x3FEFFDE740000000
  %3767 = fadd fast float %3766, %3757
  br label %3768

; <label>:3768                                    ; preds = %3752, %3716
  %3769 = phi float [ %3761, %3752 ], [ %3732, %3716 ]
  %3770 = phi float [ %3765, %3752 ], [ %3733, %3716 ]
  %3771 = phi float [ %3767, %3752 ], [ %3734, %3716 ]
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = and i32 %3773, 512
  %3775 = icmp eq i32 %3774, 0
  br i1 %3775, label %3786, label %3776

; <label>:3776                                    ; preds = %3768
  %3777 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %516)  ; Countbits(value)
  %3778 = shl i32 %3777, 2
  %3779 = add i32 %3778, %525
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = add i32 %3781, 0
  %3783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3783, %dx.types.Handle %47, float %2312, float %2313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3785 = extractvalue %dx.types.ResRet.f32 %3784, 0
  br label %3786

; <label>:3786                                    ; preds = %3776, %3768
  %3787 = phi float [ %3785, %3776 ], [ 1.000000e+00, %3768 ]
  %3788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.i32 %3788, 0
  %3790 = and i32 %3789, 33554432
  %3791 = icmp eq i32 %3790, 0
  br i1 %3791, label %3892, label %3792

; <label>:3792                                    ; preds = %3786
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 2
  %3795 = and i32 %3794, 65535
  %3796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3795)  ; LegacyF16ToF32(value)
  %3797 = lshr i32 %3794, 16
  %3798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3797)  ; LegacyF16ToF32(value)
  %3799 = extractvalue %dx.types.ResRet.i32 %3793, 3
  %3800 = and i32 %3799, 65535
  %3801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3800)  ; LegacyF16ToF32(value)
  %3802 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3803 = lshr i32 %3802, 24
  %3804 = uitofp i32 %3803 to float
  %3805 = fmul fast float %3804, 0x3F70101020000000
  %3806 = and i32 %3802, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = fmul fast float %3807, 0x3F70101020000000
  %3809 = lshr i32 %3802, 8
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = fmul fast float %3811, 0x3F70101020000000
  %3813 = lshr i32 %3802, 16
  %3814 = and i32 %3813, 255
  %3815 = uitofp i32 %3814 to float
  %3816 = fmul fast float %3815, 0x3F70101020000000
  %3817 = extractvalue %dx.types.ResRet.i32 %3793, 1
  %3818 = lshr i32 %3817, 24
  %3819 = uitofp i32 %3818 to float
  %3820 = fmul fast float %3819, 0x3F70101020000000
  %3821 = and i32 %3817, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = fmul fast float %3822, 0x3F70101020000000
  %3824 = lshr i32 %3817, 8
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = fmul fast float %3826, 0x3F70101020000000
  %3828 = lshr i32 %3817, 16
  %3829 = and i32 %3828, 255
  %3830 = uitofp i32 %3829 to float
  %3831 = fmul fast float %3830, 0x3F70101020000000
  %3832 = bitcast float %3769 to i32
  %3833 = ashr i32 %3832, 1
  %3834 = sub nsw i32 1597463174, %3833
  %3835 = bitcast i32 %3834 to float
  %3836 = fmul fast float %3769, 5.000000e-01
  %3837 = fmul fast float %3835, %3835
  %3838 = fmul fast float %3837, %3836
  %3839 = fsub fast float 1.500000e+00, %3838
  %3840 = fmul fast float %3835, %3769
  %3841 = fmul fast float %3840, %3839
  %3842 = bitcast float %3770 to i32
  %3843 = ashr i32 %3842, 1
  %3844 = sub nsw i32 1597463174, %3843
  %3845 = bitcast i32 %3844 to float
  %3846 = fmul fast float %3770, 5.000000e-01
  %3847 = fmul fast float %3845, %3845
  %3848 = fmul fast float %3847, %3846
  %3849 = fsub fast float 1.500000e+00, %3848
  %3850 = fmul fast float %3845, %3770
  %3851 = fmul fast float %3850, %3849
  %3852 = bitcast float %3771 to i32
  %3853 = ashr i32 %3852, 1
  %3854 = sub nsw i32 1597463174, %3853
  %3855 = bitcast i32 %3854 to float
  %3856 = fmul fast float %3771, 5.000000e-01
  %3857 = fmul fast float %3855, %3855
  %3858 = fmul fast float %3857, %3856
  %3859 = fsub fast float 1.500000e+00, %3858
  %3860 = fmul fast float %3855, %3771
  %3861 = fmul fast float %3860, %3859
  %3862 = fsub fast float %3841, %3823
  %3863 = fsub fast float %3851, %3827
  %3864 = fsub fast float %3861, %3831
  %3865 = fmul fast float %3862, %3796
  %3866 = fmul fast float %3863, %3798
  %3867 = fmul fast float %3864, %3801
  %3868 = fadd fast float %3865, %3808
  %3869 = fadd fast float %3866, %3812
  %3870 = fadd fast float %3867, %3816
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3874 = fmul fast float %3871, %3871
  %3875 = fmul fast float %3872, %3872
  %3876 = fmul fast float %3873, %3873
  %3877 = fsub fast float %3874, %3769
  %3878 = fsub fast float %3875, %3770
  %3879 = fsub fast float %3876, %3771
  %3880 = fmul fast float %3877, %3787
  %3881 = fmul fast float %3878, %3787
  %3882 = fmul fast float %3879, %3787
  %3883 = fadd fast float %3880, %3769
  %3884 = fadd fast float %3881, %3770
  %3885 = fadd fast float %3882, %3771
  %3886 = fadd fast float %3805, %3743
  %3887 = fsub fast float %3886, %3820
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fsub fast float %3888, %3743
  %3890 = fmul fast float %3889, %3787
  %3891 = fadd fast float %3890, %3743
  br label %3945

; <label>:3892                                    ; preds = %3786
  %3893 = and i32 %3789, 134217728
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %3929, label %3895

; <label>:3895                                    ; preds = %3892
  %3896 = call float @dx.op.unary.f32(i32 24, float %2433)  ; Sqrt(value)
  %3897 = call float @dx.op.unary.f32(i32 24, float %2437)  ; Sqrt(value)
  %3898 = call float @dx.op.unary.f32(i32 24, float %2441)  ; Sqrt(value)
  %3899 = fadd fast float %3896, -5.000000e-01
  %3900 = fadd fast float %3897, -5.000000e-01
  %3901 = fadd fast float %3898, -5.000000e-01
  %3902 = fmul fast float %3899, %3787
  %3903 = fmul fast float %3900, %3787
  %3904 = fmul fast float %3901, %3787
  %3905 = fadd fast float %3902, 5.000000e-01
  %3906 = fadd fast float %3903, 5.000000e-01
  %3907 = fadd fast float %3904, 5.000000e-01
  %3908 = call float @dx.op.unary.f32(i32 24, float %3769)  ; Sqrt(value)
  %3909 = call float @dx.op.unary.f32(i32 24, float %3770)  ; Sqrt(value)
  %3910 = call float @dx.op.unary.f32(i32 24, float %3771)  ; Sqrt(value)
  %3911 = fmul fast float %3905, 2.000000e+00
  %3912 = fsub fast float 1.000000e+00, %3911
  %3913 = fmul fast float %3912, %3908
  %3914 = fadd fast float %3913, %3911
  %3915 = fmul fast float %3914, %3908
  %3916 = fmul fast float %3906, 2.000000e+00
  %3917 = fsub fast float 1.000000e+00, %3916
  %3918 = fmul fast float %3917, %3909
  %3919 = fadd fast float %3918, %3916
  %3920 = fmul fast float %3919, %3909
  %3921 = fmul fast float %3907, 2.000000e+00
  %3922 = fsub fast float 1.000000e+00, %3921
  %3923 = fmul fast float %3922, %3910
  %3924 = fadd fast float %3923, %3921
  %3925 = fmul fast float %3924, %3910
  %3926 = fmul fast float %3915, %3915
  %3927 = fmul fast float %3920, %3920
  %3928 = fmul fast float %3925, %3925
  br label %3945

; <label>:3929                                    ; preds = %3892
  %3930 = fmul fast float %2433, %2433
  %3931 = fmul fast float %2437, %2437
  %3932 = fmul fast float %2441, %2441
  %3933 = fadd fast float %3930, -1.000000e+00
  %3934 = fadd fast float %3931, -1.000000e+00
  %3935 = fadd fast float %3932, -1.000000e+00
  %3936 = fmul fast float %3787, %3933
  %3937 = fmul fast float %3787, %3934
  %3938 = fmul fast float %3787, %3935
  %3939 = fadd fast float %3936, 1.000000e+00
  %3940 = fadd fast float %3937, 1.000000e+00
  %3941 = fadd fast float %3938, 1.000000e+00
  %3942 = fmul fast float %3939, %3769
  %3943 = fmul fast float %3940, %3770
  %3944 = fmul fast float %3941, %3771
  br label %3945

; <label>:3945                                    ; preds = %3929, %3895, %3792, %3711
  %3946 = phi float [ %3891, %3792 ], [ %3743, %3895 ], [ %3743, %3929 ], [ 0x3FA23C0BE0000000, %3711 ]
  %3947 = phi float [ %3883, %3792 ], [ %3926, %3895 ], [ %3942, %3929 ], [ 1.000000e+00, %3711 ]
  %3948 = phi float [ %3884, %3792 ], [ %3927, %3895 ], [ %3943, %3929 ], [ 1.000000e+00, %3711 ]
  %3949 = phi float [ %3885, %3792 ], [ %3928, %3895 ], [ %3944, %3929 ], [ 1.000000e+00, %3711 ]
  %3950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.i32 %3950, 1
  %3952 = and i32 %3951, 1
  %3953 = icmp ne i32 %3952, 0
  %3954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.i32 %3954, 3
  %3956 = and i32 %3955, 32
  %3957 = icmp ne i32 %3956, 0
  %3958 = and i1 %3953, %3957
  %3959 = select i1 %3958, float 1.000000e+00, float %3947
  %3960 = select i1 %3958, float 0x3FD3333340000000, float %3948
  %3961 = select i1 %3958, float 0x3FD3333340000000, float %3949
  %3962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.i32 %3962, 0
  %3964 = and i32 %3963, 32
  %3965 = icmp eq i32 %3964, 0
  br i1 %3965, label %4046, label %3966, !dx.controlflow.hints !112

; <label>:3966                                    ; preds = %3945
  %3967 = and i32 %509, 63
  %3968 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3967)  ; Countbits(value)
  %3969 = shl i32 %3968, 4
  %3970 = add i32 %3969, %523
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 1
  %3973 = and i32 %516, 63
  %3974 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3973)  ; Countbits(value)
  %3975 = shl i32 %3974, 2
  %3976 = add i32 %3975, %525
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = add i32 %3978, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3980, %dx.types.Handle %46, float %2312, float %2313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %3986 = and i32 %3972, 255
  %3987 = uitofp i32 %3986 to float
  %3988 = lshr i32 %3972, 8
  %3989 = and i32 %3988, 255
  %3990 = uitofp i32 %3989 to float
  %3991 = lshr i32 %3972, 16
  %3992 = and i32 %3991, 255
  %3993 = uitofp i32 %3992 to float
  %3994 = fmul fast float %3993, 0x3F70101000000000
  %3995 = fmul fast float %3982, %3987
  %3996 = fadd fast float %3995, %3990
  %3997 = fmul fast float %3996, 0x3F70101000000000
  %3998 = fadd fast float %3983, -5.000000e-01
  %3999 = fadd fast float %3985, -5.000000e-01
  %4000 = fmul fast float %3998, %3994
  %4001 = fmul fast float %3999, %3994
  %4002 = fadd fast float %4000, 5.000000e-01
  %4003 = fadd fast float %4001, 5.000000e-01
  %4004 = fmul fast float %4002, 2.000000e+00
  %4005 = fadd fast float %4004, -1.000000e+00
  %4006 = fmul fast float %4003, 2.000000e+00
  %4007 = fadd fast float %4006, -1.000000e+00
  %4008 = fadd fast float %4005, %4007
  %4009 = fmul fast float %4008, 5.000000e-01
  %4010 = fsub fast float %4005, %4007
  %4011 = fmul fast float %4010, 5.000000e-01
  %4012 = call float @dx.op.unary.f32(i32 6, float %4009)  ; FAbs(value)
  %4013 = fsub fast float 1.000000e+00, %4012
  %4014 = call float @dx.op.unary.f32(i32 6, float %4011)  ; FAbs(value)
  %4015 = fsub fast float %4013, %4014
  %4016 = call float @dx.op.dot3.f32(i32 55, float %4009, float %4011, float %4015, float %4009, float %4011, float %4015)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 25, float %4016)  ; Rsqrt(value)
  %4018 = fmul fast float %4009, %4017
  %4019 = fmul fast float %4011, %4017
  %4020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.i32 %4020, 0
  %4022 = and i32 %4021, 67108864
  %4023 = icmp eq i32 %4022, 0
  br i1 %4023, label %4042, label %4024

; <label>:4024                                    ; preds = %3966
  %4025 = and i32 %509, 262143
  %4026 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4025)  ; Countbits(value)
  %4027 = shl i32 %4026, 4
  %4028 = add i32 %4027, %523
  %4029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.i32 %4029, 0
  %4031 = and i32 %4030, 65535
  %4032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4031)  ; LegacyF16ToF32(value)
  %4033 = extractvalue %dx.types.ResRet.i32 %4029, 1
  %4034 = and i32 %4033, 65535
  %4035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4034)  ; LegacyF16ToF32(value)
  %4036 = lshr i32 %4030, 16
  %4037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4036)  ; LegacyF16ToF32(value)
  %4038 = fsub fast float %3997, %4037
  %4039 = fmul fast float %4038, %4032
  %4040 = fadd fast float %4039, %4035
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  br label %4042

; <label>:4042                                    ; preds = %4024, %3966
  %4043 = phi float [ %4041, %4024 ], [ %3997, %3966 ]
  %4044 = call float @dx.op.dot2.f32(i32 54, float %4018, float %4019, float %2334, float %2335)  ; Dot2(ax,ay,bx,by)
  %4045 = call float @dx.op.dot2.f32(i32 54, float %4018, float %4019, float %2336, float %2337)  ; Dot2(ax,ay,bx,by)
  br label %4046

; <label>:4046                                    ; preds = %4042, %3945
  %4047 = phi float [ %4043, %4042 ], [ 0x3FD6666660000000, %3945 ]
  %4048 = phi float [ %4044, %4042 ], [ 0.000000e+00, %3945 ]
  %4049 = phi float [ %4045, %4042 ], [ 0.000000e+00, %3945 ]
  %4050 = phi float [ %3984, %4042 ], [ 1.000000e+00, %3945 ]
  %4051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.i32 %4051, 0
  %4053 = and i32 %4052, 64
  %4054 = icmp eq i32 %4053, 0
  br i1 %4054, label %4081, label %4055, !dx.controlflow.hints !90

; <label>:4055                                    ; preds = %4046
  %4056 = and i32 %516, 1023
  %4057 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4056)  ; Countbits(value)
  %4058 = shl i32 %4057, 2
  %4059 = add i32 %4058, %525
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4059, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = add i32 %4061, 0
  %4063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.i32 %4064, 0
  %4066 = and i32 %4065, 131072
  %4067 = icmp eq i32 %4066, 0
  %4068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4063, %dx.types.Handle %46, float %2312, float %2313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.ResRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.ResRet.f32 %4068, 2
  %4072 = fmul fast float %4069, %2418
  %4073 = fmul fast float %4070, %2421
  %4074 = fmul fast float %4071, %2424
  br i1 %4067, label %4081, label %4075, !dx.controlflow.hints !91

; <label>:4075                                    ; preds = %4055
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = fmul fast float %4077, %4072
  %4079 = fmul fast float %4077, %4073
  %4080 = fmul fast float %4077, %4074
  br label %4081

; <label>:4081                                    ; preds = %4075, %4055, %4046
  %4082 = phi float [ %4078, %4075 ], [ %4072, %4055 ], [ 0.000000e+00, %4046 ]
  %4083 = phi float [ %4079, %4075 ], [ %4073, %4055 ], [ 0.000000e+00, %4046 ]
  %4084 = phi float [ %4080, %4075 ], [ %4074, %4055 ], [ 0.000000e+00, %4046 ]
  %4085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.i32 %4085, 0
  br i1 %3606, label %4087, label %4095, !dx.controlflow.hints !113

; <label>:4087                                    ; preds = %4081
  %4088 = fsub fast float 1.000000e+00, %3709
  %4089 = fmul fast float %4088, %3595
  %4090 = fmul fast float %4088, %3596
  %4091 = fmul fast float %4088, %3597
  %4092 = fmul fast float %4088, %3598
  %4093 = fmul fast float %4088, %3599
  %4094 = fmul fast float %4088, %3600
  br label %4095

; <label>:4095                                    ; preds = %4087, %4081
  %4096 = phi float [ %3595, %4081 ], [ %4089, %4087 ]
  %4097 = phi float [ %3596, %4081 ], [ %4090, %4087 ]
  %4098 = phi float [ %3597, %4081 ], [ %4091, %4087 ]
  %4099 = phi float [ %3598, %4081 ], [ %4092, %4087 ]
  %4100 = phi float [ %3599, %4081 ], [ %4093, %4087 ]
  %4101 = phi float [ %3600, %4081 ], [ %4094, %4087 ]
  %4102 = and i32 %4086, 3
  %4103 = icmp eq i32 %4102, 3
  br i1 %4103, label %4179, label %4104, !dx.controlflow.hints !114

; <label>:4104                                    ; preds = %4095
  %4105 = and i32 %4086, 16
  %4106 = icmp ne i32 %4105, 0
  %4107 = select i1 %4106, float %3709, float 0.000000e+00
  %4108 = icmp eq i32 %4102, 0
  br i1 %4108, label %4109, label %4134, !dx.controlflow.hints !115

; <label>:4109                                    ; preds = %4104
  %4110 = and i32 %4086, 64
  %4111 = icmp ne i32 %4110, 0
  %4112 = select i1 %4111, float %3709, float 0.000000e+00
  %4113 = fsub fast float %3959, %4096
  %4114 = fsub fast float %3960, %4097
  %4115 = fsub fast float %3961, %4098
  %4116 = fmul fast float %4107, %4113
  %4117 = fmul fast float %4107, %4114
  %4118 = fmul fast float %4107, %4115
  %4119 = fadd fast float %4116, %4096
  %4120 = fadd fast float %4117, %4097
  %4121 = fadd fast float %4118, %4098
  %4122 = fsub fast float %3946, %3601
  %4123 = fmul fast float %4107, %4122
  %4124 = fadd fast float %4123, %3601
  %4125 = fsub fast float %4082, %4099
  %4126 = fsub fast float %4083, %4100
  %4127 = fsub fast float %4084, %4101
  %4128 = fmul fast float %4112, %4125
  %4129 = fmul fast float %4112, %4126
  %4130 = fmul fast float %4112, %4127
  %4131 = fadd fast float %4128, %4099
  %4132 = fadd fast float %4129, %4100
  %4133 = fadd fast float %4130, %4101
  br label %4179

; <label>:4134                                    ; preds = %4104
  %4135 = icmp eq i32 %4102, 1
  br i1 %4135, label %4136, label %4149, !dx.controlflow.hints !116

; <label>:4136                                    ; preds = %4134
  %4137 = fadd fast float %3959, -1.000000e+00
  %4138 = fadd fast float %3960, -1.000000e+00
  %4139 = fadd fast float %3961, -1.000000e+00
  %4140 = fmul fast float %4107, %4137
  %4141 = fmul fast float %4107, %4138
  %4142 = fmul fast float %4107, %4139
  %4143 = fadd fast float %4140, 1.000000e+00
  %4144 = fadd fast float %4141, 1.000000e+00
  %4145 = fadd fast float %4142, 1.000000e+00
  %4146 = fmul fast float %4143, %4096
  %4147 = fmul fast float %4144, %4097
  %4148 = fmul fast float %4145, %4098
  br label %4179

; <label>:4149                                    ; preds = %4134
  %4150 = icmp eq i32 %4102, 2
  br i1 %4150, label %4151, label %4179, !dx.controlflow.hints !117

; <label>:4151                                    ; preds = %4149
  %4152 = call float @dx.op.unary.f32(i32 24, float %3959)  ; Sqrt(value)
  %4153 = call float @dx.op.unary.f32(i32 24, float %3960)  ; Sqrt(value)
  %4154 = call float @dx.op.unary.f32(i32 24, float %3961)  ; Sqrt(value)
  %4155 = fadd fast float %4152, -5.000000e-01
  %4156 = fadd fast float %4153, -5.000000e-01
  %4157 = fadd fast float %4154, -5.000000e-01
  %4158 = fmul fast float %4155, %4107
  %4159 = fmul fast float %4156, %4107
  %4160 = fmul fast float %4157, %4107
  %4161 = fadd fast float %4158, 5.000000e-01
  %4162 = fadd fast float %4159, 5.000000e-01
  %4163 = fadd fast float %4160, 5.000000e-01
  %4164 = fmul fast float %4161, 2.000000e+00
  %4165 = fsub fast float 1.000000e+00, %4164
  %4166 = fmul fast float %4165, %4096
  %4167 = fadd fast float %4166, %4164
  %4168 = fmul fast float %4167, %4096
  %4169 = fmul fast float %4162, 2.000000e+00
  %4170 = fsub fast float 1.000000e+00, %4169
  %4171 = fmul fast float %4170, %4097
  %4172 = fadd fast float %4171, %4169
  %4173 = fmul fast float %4172, %4097
  %4174 = fmul fast float %4163, 2.000000e+00
  %4175 = fsub fast float 1.000000e+00, %4174
  %4176 = fmul fast float %4175, %4098
  %4177 = fadd fast float %4176, %4174
  %4178 = fmul fast float %4177, %4098
  br label %4179

; <label>:4179                                    ; preds = %4151, %4149, %4136, %4109, %4095
  %4180 = phi float [ %4096, %4095 ], [ %4119, %4109 ], [ %4146, %4136 ], [ %4096, %4149 ], [ %4168, %4151 ]
  %4181 = phi float [ %4097, %4095 ], [ %4120, %4109 ], [ %4147, %4136 ], [ %4097, %4149 ], [ %4173, %4151 ]
  %4182 = phi float [ %4098, %4095 ], [ %4121, %4109 ], [ %4148, %4136 ], [ %4098, %4149 ], [ %4178, %4151 ]
  %4183 = phi float [ %4099, %4095 ], [ %4131, %4109 ], [ %4099, %4136 ], [ %4099, %4149 ], [ %4099, %4151 ]
  %4184 = phi float [ %4100, %4095 ], [ %4132, %4109 ], [ %4100, %4136 ], [ %4100, %4149 ], [ %4100, %4151 ]
  %4185 = phi float [ %4101, %4095 ], [ %4133, %4109 ], [ %4101, %4136 ], [ %4101, %4149 ], [ %4101, %4151 ]
  %4186 = phi float [ %3601, %4095 ], [ %4124, %4109 ], [ %3601, %4136 ], [ %3601, %4149 ], [ %3601, %4151 ]
  %4187 = and i32 %4086, 12
  %4188 = icmp eq i32 %4187, 12
  br i1 %4188, label %4261, label %4189, !dx.controlflow.hints !118

; <label>:4189                                    ; preds = %4179
  %4190 = and i32 %4086, 2097184
  %4191 = icmp eq i32 %4190, 2097184
  %4192 = select i1 %4191, float %3709, float 0.000000e+00
  %4193 = and i32 %4086, 4194336
  %4194 = icmp eq i32 %4193, 4194336
  %4195 = select i1 %4194, float %3709, float 0.000000e+00
  %4196 = and i32 %4086, 8388640
  %4197 = icmp eq i32 %4196, 8388640
  %4198 = select i1 %4197, float %3709, float 0.000000e+00
  %4199 = icmp eq i32 %4187, 0
  br i1 %4199, label %4200, label %4213, !dx.controlflow.hints !119

; <label>:4200                                    ; preds = %4189
  %4201 = fsub fast float %4048, %3593
  %4202 = fsub fast float %4049, %3594
  %4203 = fmul fast float %4192, %4201
  %4204 = fmul fast float %4192, %4202
  %4205 = fadd fast float %4203, %3593
  %4206 = fadd fast float %4204, %3594
  %4207 = fsub fast float %4050, %3603
  %4208 = fmul fast float %4195, %4207
  %4209 = fadd fast float %4208, %3603
  %4210 = fsub fast float %4047, %3602
  %4211 = fmul fast float %4198, %4210
  %4212 = fadd fast float %4211, %3602
  br label %4261

; <label>:4213                                    ; preds = %4189
  %4214 = icmp eq i32 %4187, 4
  br i1 %4214, label %4215, label %4247, !dx.controlflow.hints !120

; <label>:4215                                    ; preds = %4213
  %4216 = fmul fast float %4192, %4048
  %4217 = fmul fast float %4192, %4049
  %4218 = fadd fast float %4216, %3593
  %4219 = fadd fast float %4217, %3594
  %4220 = call float @dx.op.binary.f32(i32 36, float %3603, float %4050)  ; FMin(a,b)
  %4221 = fsub fast float %4220, %3603
  %4222 = fmul fast float %4221, %4195
  %4223 = fadd fast float %4222, %3603
  %4224 = fadd fast float %4047, %3602
  %4225 = fmul fast float %4224, 0x3FF337FAE0000000
  %4226 = fmul fast float %3602, %3602
  %4227 = fmul fast float %4047, %4047
  %4228 = fadd fast float %4227, %4226
  %4229 = fmul fast float %4228, 0x3FE5152B00000000
  %4230 = fmul fast float %3602, 0xBFCC1F85E0000000
  %4231 = fmul fast float %4230, %4047
  %4232 = fadd fast float %4231, 0xBFE1363700000000
  %4233 = fadd fast float %4232, %4225
  %4234 = fsub fast float %4233, %4229
  %4235 = fmul fast float %4224, 0x3FBA6F0D00000000
  %4236 = fmul fast float %4228, 0x3FD0432880000000
  %4237 = fmul fast float %3602, 0xBFEF110800000000
  %4238 = fmul fast float %4237, %4047
  %4239 = fadd fast float %4238, 1.000000e+00
  %4240 = fsub fast float %4239, %4235
  %4241 = fadd fast float %4240, %4236
  %4242 = fdiv fast float %4234, %4241
  %4243 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4244 = fsub fast float %4243, %3602
  %4245 = fmul fast float %4244, %4198
  %4246 = fadd fast float %4245, %3602
  br label %4261

; <label>:4247                                    ; preds = %4213
  %4248 = icmp eq i32 %4187, 8
  br i1 %4248, label %4249, label %4261, !dx.controlflow.hints !121

; <label>:4249                                    ; preds = %4247
  %4250 = fmul fast float %4192, %4048
  %4251 = fmul fast float %4192, %4049
  %4252 = fadd fast float %4250, %3593
  %4253 = fadd fast float %4251, %3594
  %4254 = call float @dx.op.binary.f32(i32 36, float %3603, float %4050)  ; FMin(a,b)
  %4255 = fsub fast float %4254, %3603
  %4256 = fmul fast float %4255, %4195
  %4257 = fadd fast float %4256, %3603
  %4258 = fsub fast float %4047, %3602
  %4259 = fmul fast float %4198, %4258
  %4260 = fadd fast float %4259, %3602
  br label %4261

; <label>:4261                                    ; preds = %4249, %4247, %4215, %4200, %4179, %3708, %3616, %3605, %3592
  %4262 = phi float [ %3593, %3592 ], [ %3593, %3605 ], [ %3593, %3616 ], [ %4205, %4200 ], [ %4218, %4215 ], [ %4252, %4249 ], [ %3593, %4247 ], [ %3593, %4179 ], [ %3593, %3708 ]
  %4263 = phi float [ %3594, %3592 ], [ %3594, %3605 ], [ %3594, %3616 ], [ %4206, %4200 ], [ %4219, %4215 ], [ %4253, %4249 ], [ %3594, %4247 ], [ %3594, %4179 ], [ %3594, %3708 ]
  %4264 = phi float [ %3595, %3592 ], [ %3595, %3605 ], [ %3595, %3616 ], [ %4180, %4200 ], [ %4180, %4215 ], [ %4180, %4249 ], [ %4180, %4247 ], [ %4180, %4179 ], [ %3595, %3708 ]
  %4265 = phi float [ %3596, %3592 ], [ %3596, %3605 ], [ %3596, %3616 ], [ %4181, %4200 ], [ %4181, %4215 ], [ %4181, %4249 ], [ %4181, %4247 ], [ %4181, %4179 ], [ %3596, %3708 ]
  %4266 = phi float [ %3597, %3592 ], [ %3597, %3605 ], [ %3597, %3616 ], [ %4182, %4200 ], [ %4182, %4215 ], [ %4182, %4249 ], [ %4182, %4247 ], [ %4182, %4179 ], [ %3597, %3708 ]
  %4267 = phi float [ %3598, %3592 ], [ %3598, %3605 ], [ %3598, %3616 ], [ %4183, %4200 ], [ %4183, %4215 ], [ %4183, %4249 ], [ %4183, %4247 ], [ %4183, %4179 ], [ %3598, %3708 ]
  %4268 = phi float [ %3599, %3592 ], [ %3599, %3605 ], [ %3599, %3616 ], [ %4184, %4200 ], [ %4184, %4215 ], [ %4184, %4249 ], [ %4184, %4247 ], [ %4184, %4179 ], [ %3599, %3708 ]
  %4269 = phi float [ %3600, %3592 ], [ %3600, %3605 ], [ %3600, %3616 ], [ %4185, %4200 ], [ %4185, %4215 ], [ %4185, %4249 ], [ %4185, %4247 ], [ %4185, %4179 ], [ %3600, %3708 ]
  %4270 = phi float [ %3601, %3592 ], [ %3601, %3605 ], [ %3601, %3616 ], [ %4186, %4200 ], [ %4186, %4215 ], [ %4186, %4249 ], [ %4186, %4247 ], [ %4186, %4179 ], [ %3601, %3708 ]
  %4271 = phi float [ %3602, %3592 ], [ %3602, %3605 ], [ %3602, %3616 ], [ %4212, %4200 ], [ %4246, %4215 ], [ %4260, %4249 ], [ %3602, %4247 ], [ %3602, %4179 ], [ %3602, %3708 ]
  %4272 = phi float [ %3603, %3592 ], [ %3603, %3605 ], [ %3603, %3616 ], [ %4209, %4200 ], [ %4223, %4215 ], [ %4257, %4249 ], [ %3603, %4247 ], [ %3603, %4179 ], [ %3603, %3708 ]
  %4273 = phi float [ %3604, %3592 ], [ %3604, %3605 ], [ %3617, %3616 ], [ %3617, %4200 ], [ %3617, %4215 ], [ %3617, %4249 ], [ %3617, %4247 ], [ %3617, %4179 ], [ %3617, %3708 ]
  br i1 %2479, label %4933, label %4274, !dx.controlflow.hints !122

; <label>:4274                                    ; preds = %4261
  %4275 = icmp ult i32 %2542, 4
  %4276 = and i32 %509, 7
  %4277 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4276)  ; Countbits(value)
  %4278 = shl i32 %4277, 4
  %4279 = add i32 %4278, %523
  %4280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.i32 %4280, 0
  %4282 = extractvalue %dx.types.ResRet.i32 %4280, 1
  %4283 = or i32 %4282, %4281
  %4284 = icmp eq i32 %4283, 0
  br i1 %4284, label %4933, label %4285, !dx.controlflow.hints !123

; <label>:4285                                    ; preds = %4274
  %4286 = fadd fast float %4273, 1.000000e+00
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4289 = bitcast float %4288 to i32
  %4290 = lshr i32 %4289, 27
  %4291 = and i32 %4290, 15
  %4292 = uitofp i32 %4291 to float
  %4293 = fcmp fast ogt float %4286, %4292
  br i1 %4293, label %4933, label %4294, !dx.controlflow.hints !124

; <label>:4294                                    ; preds = %4285
  %4295 = and i32 %4281, 16777216
  %4296 = icmp ne i32 %4295, 0
  %4297 = select i1 %4296, float 0.000000e+00, float %2537
  %4298 = and i32 %4281, 256
  %4299 = icmp eq i32 %4298, 0
  br i1 %4299, label %4352, label %4300

; <label>:4300                                    ; preds = %4294
  %4301 = and i32 %516, 524287
  %4302 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4301)  ; Countbits(value)
  %4303 = shl i32 %4302, 2
  %4304 = add i32 %4303, %525
  %4305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.i32 %4305, 0
  %4307 = add i32 %4306, 0
  %4308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4308, %dx.types.Handle %47, float %2316, float %2317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = and i32 %509, 127
  %4312 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4311)  ; Countbits(value)
  %4313 = shl i32 %4312, 4
  %4314 = add i32 %4313, %523
  %4315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.i32 %4315, 3
  %4317 = shl i32 %4316, 4
  %4318 = and i32 %4317, 32752
  %4319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4318)  ; LegacyF16ToF32(value)
  %4320 = lshr i32 %4316, 7
  %4321 = and i32 %4320, 32752
  %4322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4321)  ; LegacyF16ToF32(value)
  %4323 = fsub fast float 1.000000e+00, %4297
  %4324 = call float @dx.op.binary.f32(i32 35, float %4323, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4325 = bitcast float %4297 to i32
  %4326 = sitofp i32 %4325 to float
  %4327 = fadd fast float %4326, 0xC1CFBF8940000000
  %4328 = fmul fast float %4322, %4327
  %4329 = fadd fast float %4328, 0x41CFBF8940000000
  %4330 = fptosi float %4329 to i32
  %4331 = bitcast i32 %4330 to float
  %4332 = bitcast float %4324 to i32
  %4333 = sitofp i32 %4332 to float
  %4334 = fadd fast float %4333, 0xC1CFBF8940000000
  %4335 = fmul fast float %4334, %4322
  %4336 = fadd fast float %4335, 0x41CFBF8940000000
  %4337 = fptosi float %4336 to i32
  %4338 = bitcast i32 %4337 to float
  %4339 = fmul fast float %4331, %4319
  %4340 = fmul fast float %4338, %4319
  %4341 = fsub fast float %4324, %4339
  %4342 = fadd fast float %4340, %4324
  %4343 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4345 = fsub fast float %4310, %4343
  %4346 = fsub fast float %4344, %4343
  %4347 = bitcast float %4346 to i32
  %4348 = sub nsw i32 2129859010, %4347
  %4349 = bitcast i32 %4348 to float
  %4350 = fmul fast float %4349, %4345
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  br label %4352

; <label>:4352                                    ; preds = %4300, %4294
  %4353 = phi float [ %4351, %4300 ], [ %4297, %4294 ]
  %4354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4355 = extractvalue %dx.types.ResRet.i32 %4354, 0
  %4356 = and i32 %4355, 128
  %4357 = icmp eq i32 %4356, 0
  br i1 %4357, label %4377, label %4358

; <label>:4358                                    ; preds = %4352
  %4359 = and i32 %516, 32767
  %4360 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4359)  ; Countbits(value)
  %4361 = shl i32 %4360, 2
  %4362 = add i32 %4361, %525
  %4363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.i32 %4363, 0
  %4365 = add i32 %4364, 0
  %4366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4366, %dx.types.Handle %47, float %2316, float %2317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.i32 %4369, 0
  %4371 = and i32 %4370, 524288
  %4372 = icmp ne i32 %4371, 0
  %4373 = fcmp fast ogt float %4368, 0x3FE0101020000000
  %4374 = select i1 %4373, float 1.000000e+00, float 0.000000e+00
  %4375 = select i1 %4372, float %4374, float %4368
  %4376 = fmul fast float %4375, %4353
  br label %4377

; <label>:4377                                    ; preds = %4358, %4352
  %4378 = phi float [ %4376, %4358 ], [ %4353, %4352 ]
  %4379 = fcmp fast ult float %4378, 0x3F70101020000000
  br i1 %4379, label %4933, label %4380, !dx.controlflow.hints !125

; <label>:4380                                    ; preds = %4377
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = and i32 %4382, 16
  %4384 = icmp eq i32 %4383, 0
  br i1 %4384, label %4617, label %4385

; <label>:4385                                    ; preds = %4380
  %4386 = and i32 %509, 127
  %4387 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4386)  ; Countbits(value)
  %4388 = shl i32 %4387, 4
  %4389 = add i32 %4388, %523
  %4390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.i32 %4390, 0
  %4392 = and i32 %516, 7
  %4393 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4392)  ; Countbits(value)
  %4394 = shl i32 %4393, 2
  %4395 = add i32 %4394, %525
  %4396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.i32 %4396, 0
  %4398 = add i32 %4397, 0
  %4399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4399, %dx.types.Handle %46, float %2316, float %2317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = extractvalue %dx.types.ResRet.f32 %4400, 3
  %4405 = and i32 %4391, 255
  %4406 = uitofp i32 %4405 to float
  %4407 = lshr i32 %4391, 8
  %4408 = and i32 %4407, 255
  %4409 = uitofp i32 %4408 to float
  %4410 = fmul fast float %4404, %4406
  %4411 = fadd fast float %4410, %4409
  %4412 = fmul fast float %4411, 0x3F70101000000000
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 0
  %4415 = bitcast float %4414 to i32
  %4416 = lshr i32 %4415, 16
  %4417 = and i32 %4416, 255
  %4418 = uitofp i32 %4417 to float
  %4419 = fptoui float %4418 to i32
  %4420 = icmp eq i32 %4419, 8
  br i1 %4420, label %4421, label %4437, !dx.controlflow.hints !126

; <label>:4421                                    ; preds = %4385
  %4422 = fmul fast float %4401, 0x3FD322D0E0000000
  %4423 = fmul fast float %4402, 0x3FE2C8B440000000
  %4424 = fadd fast float %4422, %4423
  %4425 = fmul fast float %4403, 0x3FBD2F1AA0000000
  %4426 = fadd fast float %4424, %4425
  %4427 = fsub fast float %4403, %4426
  %4428 = fsub fast float %4401, %4426
  %4429 = fmul fast float %4428, 0x3FEFFE3280000000
  %4430 = fadd fast float %4429, %4426
  %4431 = fmul fast float %4427, 0x3FC8E02220000000
  %4432 = fsub fast float %4426, %4431
  %4433 = fmul fast float %4428, 0x3FE04E2080000000
  %4434 = fsub fast float %4432, %4433
  %4435 = fmul fast float %4427, 0x3FEFFDE740000000
  %4436 = fadd fast float %4435, %4426
  br label %4437

; <label>:4437                                    ; preds = %4421, %4385
  %4438 = phi float [ %4430, %4421 ], [ %4401, %4385 ]
  %4439 = phi float [ %4434, %4421 ], [ %4402, %4385 ]
  %4440 = phi float [ %4436, %4421 ], [ %4403, %4385 ]
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = and i32 %4442, 512
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4458, label %4445

; <label>:4445                                    ; preds = %4437
  %4446 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %516)  ; Countbits(value)
  %4447 = and i32 %517, 1
  %4448 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4447)  ; Countbits(value)
  %4449 = add i32 %4448, %4446
  %4450 = shl i32 %4449, 2
  %4451 = add i32 %4450, %525
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = add i32 %4453, 0
  %4455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4455, %dx.types.Handle %47, float %2316, float %2317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4457 = extractvalue %dx.types.ResRet.f32 %4456, 0
  br label %4458

; <label>:4458                                    ; preds = %4445, %4437
  %4459 = phi float [ %4457, %4445 ], [ 1.000000e+00, %4437 ]
  %4460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4461 = extractvalue %dx.types.ResRet.i32 %4460, 0
  %4462 = and i32 %4461, 33554432
  %4463 = icmp eq i32 %4462, 0
  br i1 %4463, label %4564, label %4464

; <label>:4464                                    ; preds = %4458
  %4465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4466 = extractvalue %dx.types.ResRet.i32 %4465, 2
  %4467 = and i32 %4466, 65535
  %4468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4467)  ; LegacyF16ToF32(value)
  %4469 = lshr i32 %4466, 16
  %4470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4469)  ; LegacyF16ToF32(value)
  %4471 = extractvalue %dx.types.ResRet.i32 %4465, 3
  %4472 = and i32 %4471, 65535
  %4473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4472)  ; LegacyF16ToF32(value)
  %4474 = extractvalue %dx.types.ResRet.i32 %4465, 0
  %4475 = lshr i32 %4474, 24
  %4476 = uitofp i32 %4475 to float
  %4477 = fmul fast float %4476, 0x3F70101020000000
  %4478 = and i32 %4474, 255
  %4479 = uitofp i32 %4478 to float
  %4480 = fmul fast float %4479, 0x3F70101020000000
  %4481 = lshr i32 %4474, 8
  %4482 = and i32 %4481, 255
  %4483 = uitofp i32 %4482 to float
  %4484 = fmul fast float %4483, 0x3F70101020000000
  %4485 = lshr i32 %4474, 16
  %4486 = and i32 %4485, 255
  %4487 = uitofp i32 %4486 to float
  %4488 = fmul fast float %4487, 0x3F70101020000000
  %4489 = extractvalue %dx.types.ResRet.i32 %4465, 1
  %4490 = lshr i32 %4489, 24
  %4491 = uitofp i32 %4490 to float
  %4492 = fmul fast float %4491, 0x3F70101020000000
  %4493 = and i32 %4489, 255
  %4494 = uitofp i32 %4493 to float
  %4495 = fmul fast float %4494, 0x3F70101020000000
  %4496 = lshr i32 %4489, 8
  %4497 = and i32 %4496, 255
  %4498 = uitofp i32 %4497 to float
  %4499 = fmul fast float %4498, 0x3F70101020000000
  %4500 = lshr i32 %4489, 16
  %4501 = and i32 %4500, 255
  %4502 = uitofp i32 %4501 to float
  %4503 = fmul fast float %4502, 0x3F70101020000000
  %4504 = bitcast float %4438 to i32
  %4505 = ashr i32 %4504, 1
  %4506 = sub nsw i32 1597463174, %4505
  %4507 = bitcast i32 %4506 to float
  %4508 = fmul fast float %4438, 5.000000e-01
  %4509 = fmul fast float %4507, %4507
  %4510 = fmul fast float %4509, %4508
  %4511 = fsub fast float 1.500000e+00, %4510
  %4512 = fmul fast float %4507, %4438
  %4513 = fmul fast float %4512, %4511
  %4514 = bitcast float %4439 to i32
  %4515 = ashr i32 %4514, 1
  %4516 = sub nsw i32 1597463174, %4515
  %4517 = bitcast i32 %4516 to float
  %4518 = fmul fast float %4439, 5.000000e-01
  %4519 = fmul fast float %4517, %4517
  %4520 = fmul fast float %4519, %4518
  %4521 = fsub fast float 1.500000e+00, %4520
  %4522 = fmul fast float %4517, %4439
  %4523 = fmul fast float %4522, %4521
  %4524 = bitcast float %4440 to i32
  %4525 = ashr i32 %4524, 1
  %4526 = sub nsw i32 1597463174, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = fmul fast float %4440, 5.000000e-01
  %4529 = fmul fast float %4527, %4527
  %4530 = fmul fast float %4529, %4528
  %4531 = fsub fast float 1.500000e+00, %4530
  %4532 = fmul fast float %4527, %4440
  %4533 = fmul fast float %4532, %4531
  %4534 = fsub fast float %4513, %4495
  %4535 = fsub fast float %4523, %4499
  %4536 = fsub fast float %4533, %4503
  %4537 = fmul fast float %4534, %4468
  %4538 = fmul fast float %4535, %4470
  %4539 = fmul fast float %4536, %4473
  %4540 = fadd fast float %4537, %4480
  %4541 = fadd fast float %4538, %4484
  %4542 = fadd fast float %4539, %4488
  %4543 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4544 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4545 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4546 = fmul fast float %4543, %4543
  %4547 = fmul fast float %4544, %4544
  %4548 = fmul fast float %4545, %4545
  %4549 = fsub fast float %4546, %4438
  %4550 = fsub fast float %4547, %4439
  %4551 = fsub fast float %4548, %4440
  %4552 = fmul fast float %4549, %4459
  %4553 = fmul fast float %4550, %4459
  %4554 = fmul fast float %4551, %4459
  %4555 = fadd fast float %4552, %4438
  %4556 = fadd fast float %4553, %4439
  %4557 = fadd fast float %4554, %4440
  %4558 = fadd fast float %4477, %4412
  %4559 = fsub fast float %4558, %4492
  %4560 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4561 = fsub fast float %4560, %4412
  %4562 = fmul fast float %4561, %4459
  %4563 = fadd fast float %4562, %4412
  br label %4617

; <label>:4564                                    ; preds = %4458
  %4565 = and i32 %4461, 134217728
  %4566 = icmp eq i32 %4565, 0
  br i1 %4566, label %4601, label %4567

; <label>:4567                                    ; preds = %4564
  %4568 = call float @dx.op.unary.f32(i32 24, float %2465)  ; Sqrt(value)
  %4569 = call float @dx.op.unary.f32(i32 24, float %2469)  ; Sqrt(value)
  %4570 = call float @dx.op.unary.f32(i32 24, float %2473)  ; Sqrt(value)
  %4571 = fadd fast float %4568, -5.000000e-01
  %4572 = fadd fast float %4569, -5.000000e-01
  %4573 = fadd fast float %4570, -5.000000e-01
  %4574 = fmul fast float %4571, %4459
  %4575 = fmul fast float %4572, %4459
  %4576 = fmul fast float %4573, %4459
  %4577 = fadd fast float %4574, 5.000000e-01
  %4578 = fadd fast float %4575, 5.000000e-01
  %4579 = fadd fast float %4576, 5.000000e-01
  %4580 = call float @dx.op.unary.f32(i32 24, float %4438)  ; Sqrt(value)
  %4581 = call float @dx.op.unary.f32(i32 24, float %4439)  ; Sqrt(value)
  %4582 = call float @dx.op.unary.f32(i32 24, float %4440)  ; Sqrt(value)
  %4583 = fmul fast float %4577, 2.000000e+00
  %4584 = fsub fast float 1.000000e+00, %4583
  %4585 = fmul fast float %4584, %4580
  %4586 = fadd fast float %4585, %4583
  %4587 = fmul fast float %4586, %4580
  %4588 = fmul fast float %4578, 2.000000e+00
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = fmul fast float %4589, %4581
  %4591 = fadd fast float %4590, %4588
  %4592 = fmul fast float %4591, %4581
  %4593 = fmul fast float %4579, 2.000000e+00
  %4594 = fsub fast float 1.000000e+00, %4593
  %4595 = fmul fast float %4594, %4582
  %4596 = fadd fast float %4595, %4593
  %4597 = fmul fast float %4596, %4582
  %4598 = fmul fast float %4587, %4587
  %4599 = fmul fast float %4592, %4592
  %4600 = fmul fast float %4597, %4597
  br label %4617

; <label>:4601                                    ; preds = %4564
  %4602 = fmul fast float %2465, %2465
  %4603 = fmul fast float %2469, %2469
  %4604 = fmul fast float %2473, %2473
  %4605 = fadd fast float %4602, -1.000000e+00
  %4606 = fadd fast float %4603, -1.000000e+00
  %4607 = fadd fast float %4604, -1.000000e+00
  %4608 = fmul fast float %4459, %4605
  %4609 = fmul fast float %4459, %4606
  %4610 = fmul fast float %4459, %4607
  %4611 = fadd fast float %4608, 1.000000e+00
  %4612 = fadd fast float %4609, 1.000000e+00
  %4613 = fadd fast float %4610, 1.000000e+00
  %4614 = fmul fast float %4611, %4438
  %4615 = fmul fast float %4612, %4439
  %4616 = fmul fast float %4613, %4440
  br label %4617

; <label>:4617                                    ; preds = %4601, %4567, %4464, %4380
  %4618 = phi float [ %4563, %4464 ], [ %4412, %4567 ], [ %4412, %4601 ], [ 0x3FA23C0BE0000000, %4380 ]
  %4619 = phi float [ %4555, %4464 ], [ %4598, %4567 ], [ %4614, %4601 ], [ 1.000000e+00, %4380 ]
  %4620 = phi float [ %4556, %4464 ], [ %4599, %4567 ], [ %4615, %4601 ], [ 1.000000e+00, %4380 ]
  %4621 = phi float [ %4557, %4464 ], [ %4600, %4567 ], [ %4616, %4601 ], [ 1.000000e+00, %4380 ]
  %4622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.i32 %4622, 1
  %4624 = and i32 %4623, 1
  %4625 = icmp ne i32 %4624, 0
  %4626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.i32 %4626, 3
  %4628 = and i32 %4627, 32
  %4629 = icmp ne i32 %4628, 0
  %4630 = and i1 %4625, %4629
  %4631 = select i1 %4630, float 1.000000e+00, float %4619
  %4632 = select i1 %4630, float 0x3FD3333340000000, float %4620
  %4633 = select i1 %4630, float 0x3FD3333340000000, float %4621
  %4634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.i32 %4634, 0
  %4636 = and i32 %4635, 32
  %4637 = icmp eq i32 %4636, 0
  br i1 %4637, label %4718, label %4638, !dx.controlflow.hints !127

; <label>:4638                                    ; preds = %4617
  %4639 = and i32 %509, 127
  %4640 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4639)  ; Countbits(value)
  %4641 = shl i32 %4640, 4
  %4642 = add i32 %4641, %523
  %4643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.i32 %4643, 1
  %4645 = and i32 %516, 127
  %4646 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4645)  ; Countbits(value)
  %4647 = shl i32 %4646, 2
  %4648 = add i32 %4647, %525
  %4649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.i32 %4649, 0
  %4651 = add i32 %4650, 0
  %4652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4652, %dx.types.Handle %46, float %2316, float %2317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.ResRet.f32 %4653, 3
  %4658 = and i32 %4644, 255
  %4659 = uitofp i32 %4658 to float
  %4660 = lshr i32 %4644, 8
  %4661 = and i32 %4660, 255
  %4662 = uitofp i32 %4661 to float
  %4663 = lshr i32 %4644, 16
  %4664 = and i32 %4663, 255
  %4665 = uitofp i32 %4664 to float
  %4666 = fmul fast float %4665, 0x3F70101000000000
  %4667 = fmul fast float %4654, %4659
  %4668 = fadd fast float %4667, %4662
  %4669 = fmul fast float %4668, 0x3F70101000000000
  %4670 = fadd fast float %4655, -5.000000e-01
  %4671 = fadd fast float %4657, -5.000000e-01
  %4672 = fmul fast float %4670, %4666
  %4673 = fmul fast float %4671, %4666
  %4674 = fadd fast float %4672, 5.000000e-01
  %4675 = fadd fast float %4673, 5.000000e-01
  %4676 = fmul fast float %4674, 2.000000e+00
  %4677 = fadd fast float %4676, -1.000000e+00
  %4678 = fmul fast float %4675, 2.000000e+00
  %4679 = fadd fast float %4678, -1.000000e+00
  %4680 = fadd fast float %4677, %4679
  %4681 = fmul fast float %4680, 5.000000e-01
  %4682 = fsub fast float %4677, %4679
  %4683 = fmul fast float %4682, 5.000000e-01
  %4684 = call float @dx.op.unary.f32(i32 6, float %4681)  ; FAbs(value)
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = call float @dx.op.unary.f32(i32 6, float %4683)  ; FAbs(value)
  %4687 = fsub fast float %4685, %4686
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4681, float %4683, float %4687, float %4681, float %4683, float %4687)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call float @dx.op.unary.f32(i32 25, float %4688)  ; Rsqrt(value)
  %4690 = fmul fast float %4681, %4689
  %4691 = fmul fast float %4683, %4689
  %4692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4693 = extractvalue %dx.types.ResRet.i32 %4692, 0
  %4694 = and i32 %4693, 67108864
  %4695 = icmp eq i32 %4694, 0
  br i1 %4695, label %4714, label %4696

; <label>:4696                                    ; preds = %4638
  %4697 = and i32 %509, 524287
  %4698 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4697)  ; Countbits(value)
  %4699 = shl i32 %4698, 4
  %4700 = add i32 %4699, %523
  %4701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4700, i32 undef)  ; BufferLoad(srv,index,wot)
  %4702 = extractvalue %dx.types.ResRet.i32 %4701, 0
  %4703 = and i32 %4702, 65535
  %4704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4703)  ; LegacyF16ToF32(value)
  %4705 = extractvalue %dx.types.ResRet.i32 %4701, 1
  %4706 = and i32 %4705, 65535
  %4707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4706)  ; LegacyF16ToF32(value)
  %4708 = lshr i32 %4702, 16
  %4709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4708)  ; LegacyF16ToF32(value)
  %4710 = fsub fast float %4669, %4709
  %4711 = fmul fast float %4710, %4704
  %4712 = fadd fast float %4711, %4707
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  br label %4714

; <label>:4714                                    ; preds = %4696, %4638
  %4715 = phi float [ %4713, %4696 ], [ %4669, %4638 ]
  %4716 = call float @dx.op.dot2.f32(i32 54, float %4690, float %4691, float %2342, float %2343)  ; Dot2(ax,ay,bx,by)
  %4717 = call float @dx.op.dot2.f32(i32 54, float %4690, float %4691, float %2344, float %2345)  ; Dot2(ax,ay,bx,by)
  br label %4718

; <label>:4718                                    ; preds = %4714, %4617
  %4719 = phi float [ %4715, %4714 ], [ 0x3FD6666660000000, %4617 ]
  %4720 = phi float [ %4716, %4714 ], [ 0.000000e+00, %4617 ]
  %4721 = phi float [ %4717, %4714 ], [ 0.000000e+00, %4617 ]
  %4722 = phi float [ %4656, %4714 ], [ 1.000000e+00, %4617 ]
  %4723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4724 = extractvalue %dx.types.ResRet.i32 %4723, 0
  %4725 = and i32 %4724, 64
  %4726 = icmp eq i32 %4725, 0
  br i1 %4726, label %4753, label %4727, !dx.controlflow.hints !90

; <label>:4727                                    ; preds = %4718
  %4728 = and i32 %516, 2047
  %4729 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4728)  ; Countbits(value)
  %4730 = shl i32 %4729, 2
  %4731 = add i32 %4730, %525
  %4732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4731, i32 undef)  ; BufferLoad(srv,index,wot)
  %4733 = extractvalue %dx.types.ResRet.i32 %4732, 0
  %4734 = add i32 %4733, 0
  %4735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4737 = extractvalue %dx.types.ResRet.i32 %4736, 0
  %4738 = and i32 %4737, 131072
  %4739 = icmp eq i32 %4738, 0
  %4740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4735, %dx.types.Handle %46, float %2316, float %2317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4741 = extractvalue %dx.types.ResRet.f32 %4740, 0
  %4742 = extractvalue %dx.types.ResRet.f32 %4740, 1
  %4743 = extractvalue %dx.types.ResRet.f32 %4740, 2
  %4744 = fmul fast float %4741, %2450
  %4745 = fmul fast float %4742, %2453
  %4746 = fmul fast float %4743, %2456
  br i1 %4739, label %4753, label %4747, !dx.controlflow.hints !91

; <label>:4747                                    ; preds = %4727
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4750 = fmul fast float %4749, %4744
  %4751 = fmul fast float %4749, %4745
  %4752 = fmul fast float %4749, %4746
  br label %4753

; <label>:4753                                    ; preds = %4747, %4727, %4718
  %4754 = phi float [ %4750, %4747 ], [ %4744, %4727 ], [ 0.000000e+00, %4718 ]
  %4755 = phi float [ %4751, %4747 ], [ %4745, %4727 ], [ 0.000000e+00, %4718 ]
  %4756 = phi float [ %4752, %4747 ], [ %4746, %4727 ], [ 0.000000e+00, %4718 ]
  %4757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.i32 %4757, 0
  br i1 %4275, label %4759, label %4767, !dx.controlflow.hints !128

; <label>:4759                                    ; preds = %4753
  %4760 = fsub fast float 1.000000e+00, %4378
  %4761 = fmul fast float %4760, %4264
  %4762 = fmul fast float %4760, %4265
  %4763 = fmul fast float %4760, %4266
  %4764 = fmul fast float %4760, %4267
  %4765 = fmul fast float %4760, %4268
  %4766 = fmul fast float %4760, %4269
  br label %4767

; <label>:4767                                    ; preds = %4759, %4753
  %4768 = phi float [ %4264, %4753 ], [ %4761, %4759 ]
  %4769 = phi float [ %4265, %4753 ], [ %4762, %4759 ]
  %4770 = phi float [ %4266, %4753 ], [ %4763, %4759 ]
  %4771 = phi float [ %4267, %4753 ], [ %4764, %4759 ]
  %4772 = phi float [ %4268, %4753 ], [ %4765, %4759 ]
  %4773 = phi float [ %4269, %4753 ], [ %4766, %4759 ]
  %4774 = and i32 %4758, 3
  %4775 = icmp eq i32 %4774, 3
  br i1 %4775, label %4851, label %4776, !dx.controlflow.hints !129

; <label>:4776                                    ; preds = %4767
  %4777 = and i32 %4758, 16
  %4778 = icmp ne i32 %4777, 0
  %4779 = select i1 %4778, float %4378, float 0.000000e+00
  %4780 = icmp eq i32 %4774, 0
  br i1 %4780, label %4781, label %4806, !dx.controlflow.hints !130

; <label>:4781                                    ; preds = %4776
  %4782 = and i32 %4758, 64
  %4783 = icmp ne i32 %4782, 0
  %4784 = select i1 %4783, float %4378, float 0.000000e+00
  %4785 = fsub fast float %4631, %4768
  %4786 = fsub fast float %4632, %4769
  %4787 = fsub fast float %4633, %4770
  %4788 = fmul fast float %4779, %4785
  %4789 = fmul fast float %4779, %4786
  %4790 = fmul fast float %4779, %4787
  %4791 = fadd fast float %4788, %4768
  %4792 = fadd fast float %4789, %4769
  %4793 = fadd fast float %4790, %4770
  %4794 = fsub fast float %4618, %4270
  %4795 = fmul fast float %4779, %4794
  %4796 = fadd fast float %4795, %4270
  %4797 = fsub fast float %4754, %4771
  %4798 = fsub fast float %4755, %4772
  %4799 = fsub fast float %4756, %4773
  %4800 = fmul fast float %4784, %4797
  %4801 = fmul fast float %4784, %4798
  %4802 = fmul fast float %4784, %4799
  %4803 = fadd fast float %4800, %4771
  %4804 = fadd fast float %4801, %4772
  %4805 = fadd fast float %4802, %4773
  br label %4851

; <label>:4806                                    ; preds = %4776
  %4807 = icmp eq i32 %4774, 1
  br i1 %4807, label %4808, label %4821, !dx.controlflow.hints !131

; <label>:4808                                    ; preds = %4806
  %4809 = fadd fast float %4631, -1.000000e+00
  %4810 = fadd fast float %4632, -1.000000e+00
  %4811 = fadd fast float %4633, -1.000000e+00
  %4812 = fmul fast float %4779, %4809
  %4813 = fmul fast float %4779, %4810
  %4814 = fmul fast float %4779, %4811
  %4815 = fadd fast float %4812, 1.000000e+00
  %4816 = fadd fast float %4813, 1.000000e+00
  %4817 = fadd fast float %4814, 1.000000e+00
  %4818 = fmul fast float %4815, %4768
  %4819 = fmul fast float %4816, %4769
  %4820 = fmul fast float %4817, %4770
  br label %4851

; <label>:4821                                    ; preds = %4806
  %4822 = icmp eq i32 %4774, 2
  br i1 %4822, label %4823, label %4851, !dx.controlflow.hints !132

; <label>:4823                                    ; preds = %4821
  %4824 = call float @dx.op.unary.f32(i32 24, float %4631)  ; Sqrt(value)
  %4825 = call float @dx.op.unary.f32(i32 24, float %4632)  ; Sqrt(value)
  %4826 = call float @dx.op.unary.f32(i32 24, float %4633)  ; Sqrt(value)
  %4827 = fadd fast float %4824, -5.000000e-01
  %4828 = fadd fast float %4825, -5.000000e-01
  %4829 = fadd fast float %4826, -5.000000e-01
  %4830 = fmul fast float %4827, %4779
  %4831 = fmul fast float %4828, %4779
  %4832 = fmul fast float %4829, %4779
  %4833 = fadd fast float %4830, 5.000000e-01
  %4834 = fadd fast float %4831, 5.000000e-01
  %4835 = fadd fast float %4832, 5.000000e-01
  %4836 = fmul fast float %4833, 2.000000e+00
  %4837 = fsub fast float 1.000000e+00, %4836
  %4838 = fmul fast float %4837, %4768
  %4839 = fadd fast float %4838, %4836
  %4840 = fmul fast float %4839, %4768
  %4841 = fmul fast float %4834, 2.000000e+00
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = fmul fast float %4842, %4769
  %4844 = fadd fast float %4843, %4841
  %4845 = fmul fast float %4844, %4769
  %4846 = fmul fast float %4835, 2.000000e+00
  %4847 = fsub fast float 1.000000e+00, %4846
  %4848 = fmul fast float %4847, %4770
  %4849 = fadd fast float %4848, %4846
  %4850 = fmul fast float %4849, %4770
  br label %4851

; <label>:4851                                    ; preds = %4823, %4821, %4808, %4781, %4767
  %4852 = phi float [ %4768, %4767 ], [ %4791, %4781 ], [ %4818, %4808 ], [ %4768, %4821 ], [ %4840, %4823 ]
  %4853 = phi float [ %4769, %4767 ], [ %4792, %4781 ], [ %4819, %4808 ], [ %4769, %4821 ], [ %4845, %4823 ]
  %4854 = phi float [ %4770, %4767 ], [ %4793, %4781 ], [ %4820, %4808 ], [ %4770, %4821 ], [ %4850, %4823 ]
  %4855 = phi float [ %4771, %4767 ], [ %4803, %4781 ], [ %4771, %4808 ], [ %4771, %4821 ], [ %4771, %4823 ]
  %4856 = phi float [ %4772, %4767 ], [ %4804, %4781 ], [ %4772, %4808 ], [ %4772, %4821 ], [ %4772, %4823 ]
  %4857 = phi float [ %4773, %4767 ], [ %4805, %4781 ], [ %4773, %4808 ], [ %4773, %4821 ], [ %4773, %4823 ]
  %4858 = phi float [ %4270, %4767 ], [ %4796, %4781 ], [ %4270, %4808 ], [ %4270, %4821 ], [ %4270, %4823 ]
  %4859 = and i32 %4758, 12
  %4860 = icmp eq i32 %4859, 12
  br i1 %4860, label %4933, label %4861, !dx.controlflow.hints !133

; <label>:4861                                    ; preds = %4851
  %4862 = and i32 %4758, 2097184
  %4863 = icmp eq i32 %4862, 2097184
  %4864 = select i1 %4863, float %4378, float 0.000000e+00
  %4865 = and i32 %4758, 4194336
  %4866 = icmp eq i32 %4865, 4194336
  %4867 = select i1 %4866, float %4378, float 0.000000e+00
  %4868 = and i32 %4758, 8388640
  %4869 = icmp eq i32 %4868, 8388640
  %4870 = select i1 %4869, float %4378, float 0.000000e+00
  %4871 = icmp eq i32 %4859, 0
  br i1 %4871, label %4872, label %4885, !dx.controlflow.hints !134

; <label>:4872                                    ; preds = %4861
  %4873 = fsub fast float %4720, %4262
  %4874 = fsub fast float %4721, %4263
  %4875 = fmul fast float %4864, %4873
  %4876 = fmul fast float %4864, %4874
  %4877 = fadd fast float %4875, %4262
  %4878 = fadd fast float %4876, %4263
  %4879 = fsub fast float %4722, %4272
  %4880 = fmul fast float %4867, %4879
  %4881 = fadd fast float %4880, %4272
  %4882 = fsub fast float %4719, %4271
  %4883 = fmul fast float %4870, %4882
  %4884 = fadd fast float %4883, %4271
  br label %4933

; <label>:4885                                    ; preds = %4861
  %4886 = icmp eq i32 %4859, 4
  br i1 %4886, label %4887, label %4919, !dx.controlflow.hints !135

; <label>:4887                                    ; preds = %4885
  %4888 = fmul fast float %4864, %4720
  %4889 = fmul fast float %4864, %4721
  %4890 = fadd fast float %4888, %4262
  %4891 = fadd fast float %4889, %4263
  %4892 = call float @dx.op.binary.f32(i32 36, float %4272, float %4722)  ; FMin(a,b)
  %4893 = fsub fast float %4892, %4272
  %4894 = fmul fast float %4893, %4867
  %4895 = fadd fast float %4894, %4272
  %4896 = fadd fast float %4719, %4271
  %4897 = fmul fast float %4896, 0x3FF337FAE0000000
  %4898 = fmul fast float %4271, %4271
  %4899 = fmul fast float %4719, %4719
  %4900 = fadd fast float %4899, %4898
  %4901 = fmul fast float %4900, 0x3FE5152B00000000
  %4902 = fmul fast float %4271, 0xBFCC1F85E0000000
  %4903 = fmul fast float %4902, %4719
  %4904 = fadd fast float %4903, 0xBFE1363700000000
  %4905 = fadd fast float %4904, %4897
  %4906 = fsub fast float %4905, %4901
  %4907 = fmul fast float %4896, 0x3FBA6F0D00000000
  %4908 = fmul fast float %4900, 0x3FD0432880000000
  %4909 = fmul fast float %4271, 0xBFEF110800000000
  %4910 = fmul fast float %4909, %4719
  %4911 = fadd fast float %4910, 1.000000e+00
  %4912 = fsub fast float %4911, %4907
  %4913 = fadd fast float %4912, %4908
  %4914 = fdiv fast float %4906, %4913
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fsub fast float %4915, %4271
  %4917 = fmul fast float %4916, %4870
  %4918 = fadd fast float %4917, %4271
  br label %4933

; <label>:4919                                    ; preds = %4885
  %4920 = icmp eq i32 %4859, 8
  br i1 %4920, label %4921, label %4933, !dx.controlflow.hints !136

; <label>:4921                                    ; preds = %4919
  %4922 = fmul fast float %4864, %4720
  %4923 = fmul fast float %4864, %4721
  %4924 = fadd fast float %4922, %4262
  %4925 = fadd fast float %4923, %4263
  %4926 = call float @dx.op.binary.f32(i32 36, float %4272, float %4722)  ; FMin(a,b)
  %4927 = fsub fast float %4926, %4272
  %4928 = fmul fast float %4927, %4867
  %4929 = fadd fast float %4928, %4272
  %4930 = fsub fast float %4719, %4271
  %4931 = fmul fast float %4870, %4930
  %4932 = fadd fast float %4931, %4271
  br label %4933

; <label>:4933                                    ; preds = %4921, %4919, %4887, %4872, %4851, %4377, %4285, %4274, %4261
  %4934 = phi float [ %4262, %4851 ], [ %4262, %4377 ], [ %4262, %4261 ], [ %4262, %4274 ], [ %4262, %4285 ], [ %4877, %4872 ], [ %4890, %4887 ], [ %4262, %4919 ], [ %4924, %4921 ]
  %4935 = phi float [ %4263, %4851 ], [ %4263, %4377 ], [ %4263, %4261 ], [ %4263, %4274 ], [ %4263, %4285 ], [ %4878, %4872 ], [ %4891, %4887 ], [ %4263, %4919 ], [ %4925, %4921 ]
  %4936 = phi float [ %4852, %4851 ], [ %4264, %4377 ], [ %4264, %4261 ], [ %4264, %4274 ], [ %4264, %4285 ], [ %4852, %4872 ], [ %4852, %4887 ], [ %4852, %4919 ], [ %4852, %4921 ]
  %4937 = phi float [ %4853, %4851 ], [ %4265, %4377 ], [ %4265, %4261 ], [ %4265, %4274 ], [ %4265, %4285 ], [ %4853, %4872 ], [ %4853, %4887 ], [ %4853, %4919 ], [ %4853, %4921 ]
  %4938 = phi float [ %4854, %4851 ], [ %4266, %4377 ], [ %4266, %4261 ], [ %4266, %4274 ], [ %4266, %4285 ], [ %4854, %4872 ], [ %4854, %4887 ], [ %4854, %4919 ], [ %4854, %4921 ]
  %4939 = phi float [ %4855, %4851 ], [ %4267, %4377 ], [ %4267, %4261 ], [ %4267, %4274 ], [ %4267, %4285 ], [ %4855, %4872 ], [ %4855, %4887 ], [ %4855, %4919 ], [ %4855, %4921 ]
  %4940 = phi float [ %4856, %4851 ], [ %4268, %4377 ], [ %4268, %4261 ], [ %4268, %4274 ], [ %4268, %4285 ], [ %4856, %4872 ], [ %4856, %4887 ], [ %4856, %4919 ], [ %4856, %4921 ]
  %4941 = phi float [ %4857, %4851 ], [ %4269, %4377 ], [ %4269, %4261 ], [ %4269, %4274 ], [ %4269, %4285 ], [ %4857, %4872 ], [ %4857, %4887 ], [ %4857, %4919 ], [ %4857, %4921 ]
  %4942 = phi float [ %4858, %4851 ], [ %4270, %4377 ], [ %4270, %4261 ], [ %4270, %4274 ], [ %4270, %4285 ], [ %4858, %4872 ], [ %4858, %4887 ], [ %4858, %4919 ], [ %4858, %4921 ]
  %4943 = phi float [ %4271, %4851 ], [ %4271, %4377 ], [ %4271, %4261 ], [ %4271, %4274 ], [ %4271, %4285 ], [ %4884, %4872 ], [ %4918, %4887 ], [ %4271, %4919 ], [ %4932, %4921 ]
  %4944 = phi float [ %4272, %4851 ], [ %4272, %4377 ], [ %4272, %4261 ], [ %4272, %4274 ], [ %4272, %4285 ], [ %4881, %4872 ], [ %4895, %4887 ], [ %4272, %4919 ], [ %4929, %4921 ]
  %4945 = call float @dx.op.dot2.f32(i32 54, float %4934, float %4935, float %4934, float %4935)  ; Dot2(ax,ay,bx,by)
  %4946 = fmul fast float %4945, 0x3FE3333340000000
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %4947, float %4934, float %4935, float %4947)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 25, float %4948)  ; Rsqrt(value)
  %4950 = fmul fast float %4949, %4934
  %4951 = fmul fast float %4949, %4935
  %4952 = fmul fast float %4947, %4949
  %4953 = fmul fast float %4952, %2008
  %4954 = fmul fast float %4952, %1983
  %4955 = fmul fast float %4952, %2009
  %4956 = fmul fast float %2010, %4950
  %4957 = fmul fast float %1986, %4950
  %4958 = fmul fast float %2011, %4950
  %4959 = fadd fast float %4953, %4956
  %4960 = fadd fast float %4954, %4957
  %4961 = fadd fast float %4955, %4958
  %4962 = fmul fast float %2012, %4951
  %4963 = fmul fast float %1989, %4951
  %4964 = fmul fast float %2013, %4951
  %4965 = fadd fast float %4959, %4962
  %4966 = fadd fast float %4960, %4963
  %4967 = fadd fast float %4961, %4964
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4965, float %4966, float %4967, float %4965, float %4966, float %4967)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.unary.f32(i32 25, float %4968)  ; Rsqrt(value)
  %4970 = fmul fast float %4965, %4969
  %4971 = fmul fast float %4966, %4969
  %4972 = fmul fast float %4967, %4969
  %4973 = fadd fast float %4942, 0xBFB99999A0000000
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, 0x3FF1C71C80000000
  %4976 = call float @dx.op.binary.f32(i32 36, float %4942, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4977 = fsub fast float 1.000000e+00, %4975
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, %4936
  %4980 = fmul fast float %4978, %4937
  %4981 = fmul fast float %4978, %4938
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = fmul fast float %4975, %4936
  %4986 = fmul fast float %4975, %4937
  %4987 = fmul fast float %4975, %4938
  %4988 = fadd fast float %4985, %4976
  %4989 = fadd fast float %4986, %4976
  %4990 = fadd fast float %4987, %4976
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4995 = call float @dx.op.dot3.f32(i32 55, float %2005, float %2006, float %2007, float %2005, float %2006, float %2007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = call float @dx.op.unary.f32(i32 25, float %4995)  ; Rsqrt(value)
  %4997 = fmul fast float %4996, %2005
  %4998 = fmul fast float %4996, %2006
  %4999 = fmul fast float %4996, %2007
  %5000 = fsub fast float -0.000000e+00, %4997
  %5001 = fsub fast float -0.000000e+00, %4998
  %5002 = fsub fast float -0.000000e+00, %4999
  %5003 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %5000, float %5001, float %5002)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %4970, float %4971, float %4972)  ; Dot3(ax,ay,az,bx,by,bz)
  %5006 = fmul fast float %5005, 2.000000e+00
  %5007 = fmul fast float %5006, %4970
  %5008 = fmul fast float %5006, %4971
  %5009 = fmul fast float %5006, %4972
  %5010 = fsub fast float %4997, %5007
  %5011 = fsub fast float %4998, %5008
  %5012 = fsub fast float %4999, %5009
  %5013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5014 = extractvalue %dx.types.CBufRet.f32 %5013, 0
  %5015 = bitcast float %5014 to i32
  %5016 = lshr i32 %5015, 8
  %5017 = and i32 %5016, 255
  %5018 = uitofp i32 %5017 to float
  %5019 = fptoui float %5018 to i32
  %5020 = and i32 %5019, 4
  %5021 = icmp ne i32 %5020, 0
  %5022 = select i1 %5021, float %4944, float 1.000000e+00
  %5023 = call float @dx.op.binary.f32(i32 36, float %5022, float 0.000000e+00)  ; FMin(a,b)
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = bitcast float %5024 to i32
  %5026 = ashr i32 %5025, 1
  %5027 = add nsw i32 %5026, 532487669
  %5028 = bitcast i32 %5027 to float
  %5029 = fsub fast float 1.000000e+00, %4994
  %5030 = call float @dx.op.binary.f32(i32 35, float %5029, float 0x3F847AE140000000)  ; FMax(a,b)
  %5031 = fmul fast float %5030, %5030
  %5032 = fmul fast float %5031, %5031
  %5033 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %27, float %5028, float %5032, float %5033, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = and i32 %5019, 1
  %5037 = icmp ne i32 %5036, 0
  %5038 = select i1 %5037, float %5035, float 1.000000e+00
  %5039 = fsub fast float 1.000000e+00, %5022
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %4939, %2931
  %5044 = fmul fast float %4940, %2931
  %5045 = fmul fast float %4941, %2931
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = bitcast float %5049 to i32
  %5051 = lshr i32 %5050, 8
  %5052 = and i32 %5051, 255
  %5053 = uitofp i32 %5052 to float
  %5054 = fptoui float %5053 to i32
  %5055 = icmp eq i32 %5054, 23
  br i1 %5055, label %5056, label %5097, !dx.controlflow.hints !137

; <label>:5056                                    ; preds = %4933
  %5057 = call float @dx.op.binary.f32(i32 36, float %4984, float %5047)  ; FMin(a,b)
  %5058 = fmul fast float %5057, %5024
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = bitcast float %5059 to i32
  %5061 = sub nsw i32 2129859010, %5060
  %5062 = bitcast i32 %5061 to float
  %5063 = fmul fast float %5062, %5023
  %5064 = call float @dx.op.binary.f32(i32 36, float %4983, float %5047)  ; FMin(a,b)
  %5065 = fmul fast float %5064, %5024
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = bitcast float %5066 to i32
  %5068 = sub nsw i32 2129859010, %5067
  %5069 = bitcast i32 %5068 to float
  %5070 = fmul fast float %5069, %5023
  %5071 = call float @dx.op.binary.f32(i32 36, float %4982, float %5047)  ; FMin(a,b)
  %5072 = fmul fast float %5071, %5024
  %5073 = fsub fast float 1.000000e+00, %5072
  %5074 = bitcast float %5073 to i32
  %5075 = sub nsw i32 2129859010, %5074
  %5076 = bitcast i32 %5075 to float
  %5077 = fmul fast float %5076, %5023
  %5078 = fadd fast float %5077, 1.000000e+00
  %5079 = fadd fast float %5070, 1.000000e+00
  %5080 = fadd fast float %5063, 1.000000e+00
  %5081 = fmul fast float %5078, 5.000000e-01
  %5082 = fmul fast float %5079, 5.000000e-01
  %5083 = fmul fast float %5080, 5.000000e-01
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = fmul fast float %5084, 1.023000e+03
  %5088 = fmul fast float %5085, 1.023000e+03
  %5089 = fmul fast float %5086, 1.023000e+03
  %5090 = fptoui float %5087 to i32
  %5091 = fptoui float %5088 to i32
  %5092 = fptoui float %5089 to i32
  %5093 = shl i32 %5091, 10
  %5094 = or i32 %5093, %5090
  %5095 = shl i32 %5092, 20
  %5096 = or i32 %5094, %5095
  br label %5097

; <label>:5097                                    ; preds = %5056, %4933
  %5098 = phi i32 [ %5096, %5056 ], [ 0, %4933 ]
  %5099 = fmul fast float %5004, 9.843750e-01
  %5100 = fmul fast float %4994, 9.843750e-01
  %5101 = fadd fast float %5099, 7.812500e-03
  %5102 = fadd fast float %5100, 7.812500e-03
  %5103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %27, float %5101, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 2
  %5105 = extractvalue %dx.types.ResRet.f32 %5103, 3
  %5106 = fmul fast float %5104, %4991
  %5107 = fmul fast float %5104, %4992
  %5108 = fmul fast float %5104, %4993
  %5109 = fadd fast float %5106, %5105
  %5110 = fadd fast float %5107, %5105
  %5111 = fadd fast float %5108, %5105
  %5112 = call float @dx.op.binary.f32(i32 35, float %5110, float %5111)  ; FMax(a,b)
  %5113 = call float @dx.op.binary.f32(i32 35, float %5109, float %5112)  ; FMax(a,b)
  %5114 = fmul fast float %5113, %4994
  %5115 = fadd fast float %5114, %4994
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 2
  %5118 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5119 = fmul fast float %5115, %5117
  %5120 = fadd fast float %5119, %5118
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fsub fast float 1.000000e+00, %5038
  %5123 = fadd fast float %5122, %5121
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = and i32 %5050, 255
  %5126 = uitofp i32 %5125 to float
  %5127 = fptoui float %5126 to i32
  %5128 = icmp eq i32 %5127, 38
  %5129 = bitcast float %5124 to i32
  %5130 = select i1 %5128, i32 %5129, i32 %5098
  %5131 = icmp eq i32 %5054, 24
  br i1 %5131, label %5132, label %5142, !dx.controlflow.hints !138

; <label>:5132                                    ; preds = %5097
  %5133 = fadd fast float %5038, 1.000000e+00
  %5134 = fmul fast float %5133, 5.000000e-01
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5135, 1.023000e+03
  %5137 = fptoui float %5136 to i32
  %5138 = shl i32 %5137, 10
  %5139 = or i32 %5138, %5137
  %5140 = shl i32 %5137, 20
  %5141 = or i32 %5139, %5140
  br label %5142

; <label>:5142                                    ; preds = %5132, %5097
  %5143 = phi i32 [ %5141, %5132 ], [ %5130, %5097 ]
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 3
  %5146 = fcmp fast oeq float %5145, 0.000000e+00
  br i1 %5146, label %5443, label %5147, !dx.controlflow.hints !139

; <label>:5147                                    ; preds = %5142
  %5148 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5149 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5150 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5159 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.CBufRet.f32 %5165, 2
  %5169 = extractvalue %dx.types.CBufRet.f32 %5165, 3
  %5170 = fmul fast float %5156, %2005
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %2006, float %5157, float %5170)  ; FMad(a,b,c)
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %2007, float %5158, float %5171)  ; FMad(a,b,c)
  %5173 = fadd fast float %5172, %5159
  %5174 = fmul fast float %5161, %2005
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %2006, float %5162, float %5174)  ; FMad(a,b,c)
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %2007, float %5163, float %5175)  ; FMad(a,b,c)
  %5177 = fadd fast float %5176, %5164
  %5178 = fmul fast float %5166, %2005
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %2006, float %5167, float %5178)  ; FMad(a,b,c)
  %5180 = call float @dx.op.tertiary.f32(i32 46, float %2007, float %5168, float %5179)  ; FMad(a,b,c)
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.CBufRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.CBufRet.f32 %5181, 3
  %5185 = fmul fast float %5184, %5173
  %5186 = fmul fast float %5184, %5177
  %5187 = fadd fast float %5185, %5182
  %5188 = fadd fast float %5186, %5183
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.CBufRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5193 = fmul fast float %5192, %5173
  %5194 = fmul fast float %5192, %5177
  %5195 = fadd fast float %5193, %5190
  %5196 = fadd fast float %5194, %5191
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %5199 = fsub fast float -0.000000e+00, %5169
  %5200 = fsub fast float %5199, %5180
  %5201 = fadd fast float %5200, %5198
  %5202 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5203 = fmul fast float %5201, %5202
  %5204 = fsub fast float 1.000000e+00, %5203
  %5205 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.CBufRet.f32 %5206, 1
  %5209 = fsub fast float %5195, %5207
  %5210 = fsub fast float %5196, %5208
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.CBufRet.f32 %5212, 1
  %5215 = fsub fast float %5187, %5213
  %5216 = fsub fast float %5188, %5214
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5218, 0
  %5220 = extractvalue %dx.types.CBufRet.f32 %5218, 1
  %5221 = fsub fast float %5173, %5219
  %5222 = fsub fast float %5177, %5220
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = and i32 %5054, -2
  %5225 = icmp eq i32 %5224, 10
  br i1 %5225, label %5226, label %5296, !dx.controlflow.hints !140

; <label>:5226                                    ; preds = %5147
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = fcmp fast olt float %5221, 0.000000e+00
  %5230 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5232 = select i1 %5229, float %5230, float %5231
  %5233 = fmul fast float %5232, %5221
  %5234 = call float @dx.op.unary.f32(i32 6, float %5233)  ; FAbs(value)
  %5235 = fcmp fast olt float %5222, 0.000000e+00
  %5236 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5238 = select i1 %5235, float %5236, float %5237
  %5239 = fmul fast float %5238, %5222
  %5240 = call float @dx.op.unary.f32(i32 6, float %5239)  ; FAbs(value)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5234, float %5240)  ; FMax(a,b)
  %5242 = fsub fast float %5228, %5241
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %5243, %5205
  %5245 = fcmp fast olt float %5215, 0.000000e+00
  %5246 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5248 = select i1 %5245, float %5246, float %5247
  %5249 = fmul fast float %5248, %5215
  %5250 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5251 = fcmp fast olt float %5216, 0.000000e+00
  %5252 = extractvalue %dx.types.CBufRet.f32 %5217, 1
  %5253 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5254 = select i1 %5251, float %5252, float %5253
  %5255 = fmul fast float %5254, %5216
  %5256 = call float @dx.op.unary.f32(i32 6, float %5255)  ; FAbs(value)
  %5257 = call float @dx.op.binary.f32(i32 35, float %5250, float %5256)  ; FMax(a,b)
  %5258 = fsub fast float %5228, %5257
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fmul fast float %5259, %5205
  %5261 = fcmp fast olt float %5209, 0.000000e+00
  %5262 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5264 = select i1 %5261, float %5262, float %5263
  %5265 = fmul fast float %5264, %5209
  %5266 = call float @dx.op.unary.f32(i32 6, float %5265)  ; FAbs(value)
  %5267 = fcmp fast olt float %5210, 0.000000e+00
  %5268 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5270 = select i1 %5267, float %5268, float %5269
  %5271 = fmul fast float %5270, %5210
  %5272 = call float @dx.op.unary.f32(i32 6, float %5271)  ; FAbs(value)
  %5273 = call float @dx.op.binary.f32(i32 35, float %5266, float %5272)  ; FMax(a,b)
  %5274 = fsub fast float %5228, %5273
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %5275, %5205
  %5277 = fadd fast float %5244, 1.000000e+00
  %5278 = fadd fast float %5260, 1.000000e+00
  %5279 = fadd fast float %5276, 1.000000e+00
  %5280 = fmul fast float %5277, 5.000000e-01
  %5281 = fmul fast float %5278, 5.000000e-01
  %5282 = fmul fast float %5279, 5.000000e-01
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5286 = fmul fast float %5283, 1.023000e+03
  %5287 = fmul fast float %5284, 1.023000e+03
  %5288 = fmul fast float %5285, 1.023000e+03
  %5289 = fptoui float %5286 to i32
  %5290 = fptoui float %5287 to i32
  %5291 = fptoui float %5288 to i32
  %5292 = shl i32 %5290, 10
  %5293 = or i32 %5292, %5289
  %5294 = shl i32 %5291, 20
  %5295 = or i32 %5293, %5294
  br label %5296

; <label>:5296                                    ; preds = %5226, %5147
  %5297 = phi i32 [ %5295, %5226 ], [ %5143, %5147 ]
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5300 = fcmp fast une float %5299, 0.000000e+00
  br i1 %5300, label %5301, label %5318, !dx.controlflow.hints !141

; <label>:5301                                    ; preds = %5296
  %5302 = fptoui float %2186 to i32
  %5303 = fptoui float %2224 to i32
  %5304 = lshr i32 %5302, 4
  %5305 = lshr i32 %5303, 4
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = fptoui float %5307 to i32
  %5309 = add i32 %5308, 15
  %5310 = lshr i32 %5309, 4
  %5311 = mul i32 %5310, %5305
  %5312 = add i32 %5311, %5304
  %5313 = shl i32 %5312, 3
  %5314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %5313, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.i32 %5314, 0
  %5316 = and i32 %5315, -268435456
  %5317 = icmp eq i32 %5316, -1342177280
  br i1 %5317, label %5328, label %5318, !dx.controlflow.hints !142

; <label>:5318                                    ; preds = %5301, %5296
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5322 = fmul fast float %5320, %2186
  %5323 = fmul fast float %5321, %2224
  %5324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %5322, float %5323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  br label %5328

; <label>:5328                                    ; preds = %5318, %5301
  %5329 = phi float [ %5325, %5318 ], [ 0.000000e+00, %5301 ]
  %5330 = phi float [ %5326, %5318 ], [ 0.000000e+00, %5301 ]
  %5331 = phi float [ %5327, %5318 ], [ 0.000000e+00, %5301 ]
  %5332 = call float @dx.op.binary.f32(i32 36, float %5330, float %5331)  ; FMin(a,b)
  %5333 = call float @dx.op.binary.f32(i32 36, float %5329, float %5332)  ; FMin(a,b)
  %5334 = fcmp fast ogt float %5333, 0.000000e+00
  br i1 %5334, label %5335, label %5443, !dx.controlflow.hints !143

; <label>:5335                                    ; preds = %5328
  %5336 = fmul fast float %5329, %5152
  %5337 = fmul fast float %5330, %5153
  %5338 = fmul fast float %5331, %5154
  %5339 = fsub fast float %5148, %4997
  %5340 = fsub fast float %5149, %4998
  %5341 = fsub fast float %5150, %4999
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float %5339, float %5340, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.unary.f32(i32 25, float %5342)  ; Rsqrt(value)
  %5344 = fmul fast float %5343, %5339
  %5345 = fmul fast float %5343, %5340
  %5346 = fmul fast float %5343, %5341
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %4970, float %4971, float %4972)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5000, float %5001, float %5002, float %5344, float %5345, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5350 = fmul fast float %5349, %5349
  %5351 = fmul fast float %5350, %5042
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = and i32 %5019, 8
  %5354 = icmp ne i32 %5353, 0
  %5355 = select i1 %5354, float %5352, float 1.000000e+00
  %5356 = fmul fast float %5355, %5349
  %5357 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %5344, float %5345, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = fmul fast float %5357, %5357
  %5359 = call float @dx.op.unary.f32(i32 6, float %5347)  ; FAbs(value)
  %5360 = fsub fast float 1.000000e+00, %5032
  %5361 = fmul fast float %5004, %5004
  %5362 = fmul fast float %5361, %5360
  %5363 = fadd fast float %5362, %5032
  %5364 = bitcast float %5363 to i32
  %5365 = ashr i32 %5364, 1
  %5366 = add nsw i32 %5365, 532487669
  %5367 = bitcast i32 %5366 to float
  %5368 = fadd fast float %5367, %5004
  %5369 = fmul fast float %5032, %5358
  %5370 = fsub fast float 1.000000e+00, %5358
  %5371 = fadd fast float %5370, %5369
  %5372 = fmul fast float %5359, %5359
  %5373 = fmul fast float %5372, %5360
  %5374 = fadd fast float %5373, %5032
  %5375 = bitcast float %5374 to i32
  %5376 = ashr i32 %5375, 1
  %5377 = add nsw i32 %5376, 532487669
  %5378 = bitcast i32 %5377 to float
  %5379 = fadd fast float %5378, %5359
  %5380 = fmul fast float %5371, %5371
  %5381 = fmul fast float %5380, %5368
  %5382 = fmul fast float %5381, %5379
  %5383 = fdiv fast float 0x3FF0A00000000000, %5382
  %5384 = fmul fast float %5383, %5032
  %5385 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5386 = fsub fast float 1.000000e+00, %5385
  %5387 = bitcast float %5386 to i32
  %5388 = sitofp i32 %5387 to float
  %5389 = fmul fast float %5388, 5.000000e+00
  %5390 = fadd fast float %5389, 0xC1EFBF8940000000
  %5391 = fptosi float %5390 to i32
  %5392 = bitcast i32 %5391 to float
  %5393 = fsub fast float 1.000000e+00, %4991
  %5394 = fsub fast float 1.000000e+00, %4992
  %5395 = fsub fast float 1.000000e+00, %4993
  %5396 = fmul fast float %5392, %5393
  %5397 = fmul fast float %5392, %5394
  %5398 = fmul fast float %5392, %5395
  %5399 = fadd fast float %5396, %4991
  %5400 = fadd fast float %5397, %4992
  %5401 = fadd fast float %5398, %4993
  %5402 = fmul fast float %5347, 9.843750e-01
  %5403 = fadd fast float %5402, 7.812500e-03
  %5404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %27, float %5403, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 2
  %5406 = extractvalue %dx.types.ResRet.f32 %5404, 3
  %5407 = fmul fast float %5405, %4991
  %5408 = fmul fast float %5405, %4992
  %5409 = fmul fast float %5405, %4993
  %5410 = fadd fast float %5407, %5406
  %5411 = fadd fast float %5408, %5406
  %5412 = fadd fast float %5409, %5406
  %5413 = call float @dx.op.binary.f32(i32 35, float %5411, float %5412)  ; FMax(a,b)
  %5414 = call float @dx.op.binary.f32(i32 35, float %5410, float %5413)  ; FMax(a,b)
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = fmul fast float %5356, %5336
  %5417 = fmul fast float %5416, %5415
  %5418 = fmul fast float %5356, %5337
  %5419 = fmul fast float %5418, %5415
  %5420 = fmul fast float %5356, %5338
  %5421 = fmul fast float %5420, %5415
  %5422 = fmul fast float %5384, %5336
  %5423 = fmul fast float %5422, %5356
  %5424 = fmul fast float %5423, %5399
  %5425 = fmul fast float %5384, %5337
  %5426 = fmul fast float %5425, %5356
  %5427 = fmul fast float %5426, %5400
  %5428 = fmul fast float %5384, %5338
  %5429 = fmul fast float %5428, %5356
  %5430 = fmul fast float %5429, %5401
  %5431 = fmul fast float %5417, %2931
  %5432 = fmul fast float %5419, %2931
  %5433 = fmul fast float %5421, %2931
  %5434 = fadd fast float %5424, %4939
  %5435 = fmul fast float %5434, %2931
  %5436 = fadd fast float %5427, %4940
  %5437 = fmul fast float %5436, %2931
  %5438 = fadd fast float %5430, %4941
  %5439 = fmul fast float %5438, %2931
  %5440 = fmul fast float %5424, %2931
  %5441 = fmul fast float %5427, %2931
  %5442 = fmul fast float %5430, %2931
  br label %5443

; <label>:5443                                    ; preds = %5335, %5328, %5142
  %5444 = phi i32 [ %5143, %5142 ], [ %5297, %5328 ], [ %5297, %5335 ]
  %5445 = phi float [ 0.000000e+00, %5142 ], [ 0.000000e+00, %5328 ], [ %5440, %5335 ]
  %5446 = phi float [ 0.000000e+00, %5142 ], [ 0.000000e+00, %5328 ], [ %5441, %5335 ]
  %5447 = phi float [ 0.000000e+00, %5142 ], [ 0.000000e+00, %5328 ], [ %5442, %5335 ]
  %5448 = phi float [ 0.000000e+00, %5142 ], [ 0.000000e+00, %5328 ], [ %5431, %5335 ]
  %5449 = phi float [ 0.000000e+00, %5142 ], [ 0.000000e+00, %5328 ], [ %5432, %5335 ]
  %5450 = phi float [ 0.000000e+00, %5142 ], [ 0.000000e+00, %5328 ], [ %5433, %5335 ]
  %5451 = phi float [ %5043, %5142 ], [ %5043, %5328 ], [ %5435, %5335 ]
  %5452 = phi float [ %5044, %5142 ], [ %5044, %5328 ], [ %5437, %5335 ]
  %5453 = phi float [ %5045, %5142 ], [ %5045, %5328 ], [ %5439, %5335 ]
  %5454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.i32 %5454, 0
  %5456 = icmp eq i32 %5455, 0
  br i1 %5456, label %5973, label %5457, !dx.controlflow.hints !144

; <label>:5457                                    ; preds = %5443
  %5458 = fptoui float %2186 to i32
  %5459 = fptoui float %2224 to i32
  %5460 = lshr i32 %5458, 4
  %5461 = lshr i32 %5459, 4
  %5462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.i32 %5462, 0
  %5464 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5461, i32 %5463, i32 %5460)  ; UMad(a,b,c)
  %5465 = add nsw i32 %5455, -1
  %5466 = call i32 @dx.op.binary.i32(i32 37, i32 %5465, i32 0)  ; IMax(a,b)
  %5467 = call float @dx.op.binary.f32(i32 35, float %2222, float 0.000000e+00)  ; FMax(a,b)
  %5468 = fptoui float %5467 to i32
  %5469 = lshr i32 %5468, 5
  %5470 = call i32 @dx.op.binary.i32(i32 40, i32 %5469, i32 8191)  ; UMin(a,b)
  %5471 = shl i32 %5470, 2
  %5472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5471, i32 undef)  ; BufferLoad(srv,index,wot)
  %5473 = extractvalue %dx.types.ResRet.i32 %5472, 0
  %5474 = lshr i32 %5473, 16
  %5475 = and i32 %5473, 65535
  %5476 = lshr i32 %5473, 21
  %5477 = lshr i32 %5475, 5
  %5478 = call i32 @dx.op.binary.i32(i32 40, i32 %5477, i32 %5466)  ; UMin(a,b)
  %5479 = icmp ugt i32 %5476, %5478
  br i1 %5479, label %5944, label %5480

; <label>:5480                                    ; preds = %5457
  br label %5481

; <label>:5481                                    ; preds = %5921, %5480
  %5482 = phi i32 [ %5922, %5921 ], [ %5444, %5480 ]
  %5483 = phi i32 [ %5941, %5921 ], [ %5476, %5480 ]
  %5484 = phi float [ %5923, %5921 ], [ %5445, %5480 ]
  %5485 = phi float [ %5924, %5921 ], [ %5446, %5480 ]
  %5486 = phi float [ %5925, %5921 ], [ %5447, %5480 ]
  %5487 = phi float [ %5926, %5921 ], [ %5448, %5480 ]
  %5488 = phi float [ %5927, %5921 ], [ %5449, %5480 ]
  %5489 = phi float [ %5928, %5921 ], [ %5450, %5480 ]
  %5490 = phi float [ %5929, %5921 ], [ %5445, %5480 ]
  %5491 = phi float [ %5930, %5921 ], [ %5446, %5480 ]
  %5492 = phi float [ %5931, %5921 ], [ %5447, %5480 ]
  %5493 = phi float [ %5932, %5921 ], [ %5448, %5480 ]
  %5494 = phi float [ %5933, %5921 ], [ %5449, %5480 ]
  %5495 = phi float [ %5934, %5921 ], [ %5450, %5480 ]
  %5496 = phi float [ %5935, %5921 ], [ %5451, %5480 ]
  %5497 = phi float [ %5936, %5921 ], [ %5452, %5480 ]
  %5498 = phi float [ %5937, %5921 ], [ %5453, %5480 ]
  %5499 = phi float [ %5938, %5921 ], [ %5448, %5480 ]
  %5500 = phi float [ %5939, %5921 ], [ %5449, %5480 ]
  %5501 = phi float [ %5940, %5921 ], [ %5450, %5480 ]
  %5502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.i32 %5502, 0
  %5504 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5464, i32 %5503, i32 %5483)  ; UMad(a,b,c)
  %5505 = shl i32 %5504, 2
  %5506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.i32 %5506, 0
  %5508 = shl i32 %5483, 5
  %5509 = sub nsw i32 %5474, %5508
  %5510 = call i32 @dx.op.binary.i32(i32 37, i32 %5509, i32 0)  ; IMax(a,b)
  %5511 = call i32 @dx.op.binary.i32(i32 38, i32 %5510, i32 31)  ; IMin(a,b)
  %5512 = sub nsw i32 1, %5474
  %5513 = add nsw i32 %5512, %5475
  %5514 = call i32 @dx.op.binary.i32(i32 37, i32 %5513, i32 0)  ; IMax(a,b)
  %5515 = call i32 @dx.op.binary.i32(i32 38, i32 %5514, i32 32)  ; IMin(a,b)
  %5516 = and i32 %5515, 31
  %5517 = shl i32 -1, %5516
  %5518 = xor i32 %5517, -1
  %5519 = and i32 %5511, 31
  %5520 = shl i32 %5518, %5519
  %5521 = icmp eq i32 %5515, 32
  %5522 = select i1 %5521, i32 -1, i32 %5520
  %5523 = and i32 %5522, %5507
  %5524 = icmp eq i32 %5523, 0
  br i1 %5524, label %5921, label %5525

; <label>:5525                                    ; preds = %5481
  br label %5526

; <label>:5526                                    ; preds = %5622, %5525
  %5527 = phi i32 [ %5623, %5622 ], [ %5482, %5525 ]
  %5528 = phi i32 [ %5551, %5622 ], [ %5523, %5525 ]
  %5529 = phi float [ %5624, %5622 ], [ %5484, %5525 ]
  %5530 = phi float [ %5625, %5622 ], [ %5485, %5525 ]
  %5531 = phi float [ %5626, %5622 ], [ %5486, %5525 ]
  %5532 = phi float [ %5627, %5622 ], [ %5487, %5525 ]
  %5533 = phi float [ %5628, %5622 ], [ %5488, %5525 ]
  %5534 = phi float [ %5629, %5622 ], [ %5489, %5525 ]
  %5535 = phi float [ %5630, %5622 ], [ %5490, %5525 ]
  %5536 = phi float [ %5631, %5622 ], [ %5491, %5525 ]
  %5537 = phi float [ %5632, %5622 ], [ %5492, %5525 ]
  %5538 = phi float [ %5633, %5622 ], [ %5493, %5525 ]
  %5539 = phi float [ %5634, %5622 ], [ %5494, %5525 ]
  %5540 = phi float [ %5635, %5622 ], [ %5495, %5525 ]
  %5541 = phi float [ %5636, %5622 ], [ %5496, %5525 ]
  %5542 = phi float [ %5637, %5622 ], [ %5497, %5525 ]
  %5543 = phi float [ %5638, %5622 ], [ %5498, %5525 ]
  %5544 = phi float [ %5639, %5622 ], [ %5499, %5525 ]
  %5545 = phi float [ %5640, %5622 ], [ %5500, %5525 ]
  %5546 = phi float [ %5641, %5622 ], [ %5501, %5525 ]
  %5547 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5528)  ; FirstbitLo(value)
  %5548 = add i32 %5547, %5508
  %5549 = and i32 %5547, 31
  %5550 = shl i32 1, %5549
  %5551 = xor i32 %5550, %5528
  %5552 = mul i32 %5548, 112
  %5553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %5552, i32 undef)  ; BufferLoad(srv,index,wot)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.ResRet.f32 %5553, 1
  %5556 = extractvalue %dx.types.ResRet.f32 %5553, 2
  %5557 = add i32 %5552, 32
  %5558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %5557, i32 undef)  ; BufferLoad(srv,index,wot)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5562 = add i32 %5552, 44
  %5563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %5562, i32 undef)  ; BufferLoad(srv,index,wot)
  %5564 = extractvalue %dx.types.ResRet.f32 %5563, 0
  %5565 = add i32 %5552, 48
  %5566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %5565, i32 undef)  ; BufferLoad(srv,index,wot)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.ResRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.ResRet.f32 %5566, 2
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5561, float %5559, float %5560, float %5561)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = fsub fast float %2005, %5567
  %5572 = fsub fast float %2006, %5568
  %5573 = fsub fast float %2007, %5569
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %5573, float %5559, float %5560, float %5561)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = fdiv fast float %5574, %5570
  %5576 = call float @dx.op.binary.f32(i32 35, float %5575, float -1.000000e+00)  ; FMax(a,b)
  %5577 = call float @dx.op.binary.f32(i32 36, float %5576, float 1.000000e+00)  ; FMin(a,b)
  %5578 = fmul fast float %5577, %5559
  %5579 = fmul fast float %5577, %5560
  %5580 = fmul fast float %5577, %5561
  %5581 = fadd fast float %5578, %5567
  %5582 = fadd fast float %5579, %5568
  %5583 = fadd fast float %5580, %5569
  %5584 = fsub fast float %5581, %2005
  %5585 = fsub fast float %5582, %2006
  %5586 = fsub fast float %5583, %2007
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = call float @dx.op.unary.f32(i32 24, float %5587)  ; Sqrt(value)
  %5589 = fdiv fast float 1.000000e+00, %5588
  %5590 = fmul fast float %5584, %5589
  %5591 = fmul fast float %5585, %5589
  %5592 = fmul fast float %5586, %5589
  %5593 = and i32 %5550, %5523
  %5594 = icmp eq i32 %5593, 0
  br i1 %5594, label %5617, label %5595, !dx.controlflow.hints !145

; <label>:5595                                    ; preds = %5526
  %5596 = lshr i32 %5458, 5
  %5597 = lshr i32 %5459, 5
  %5598 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %5596, i32 %5597, i32 %5548, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5599 = extractvalue %dx.types.ResRet.i32 %5598, 0
  %5600 = and i32 %5599, 3
  %5601 = icmp eq i32 %5600, 0
  %5602 = select i1 %5601, float 1.000000e+00, float 0.000000e+00
  %5603 = icmp eq i32 %5600, 3
  br i1 %5603, label %5604, label %5617, !dx.controlflow.hints !146

; <label>:5604                                    ; preds = %5595
  %5605 = lshr i32 %5599, 10
  %5606 = and i32 %5605, 8160
  %5607 = and i32 %5459, 31
  %5608 = or i32 %5606, %5607
  %5609 = lshr i32 %5599, 1
  %5610 = and i32 %5609, 16352
  %5611 = and i32 %5458, 31
  %5612 = or i32 %5610, %5611
  %5613 = lshr i32 %5599, 23
  %5614 = and i32 %5613, 255
  %5615 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %5612, i32 %5608, i32 %5614, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  br label %5617

; <label>:5617                                    ; preds = %5604, %5595, %5526
  %5618 = phi float [ %5616, %5604 ], [ %5602, %5595 ], [ 0.000000e+00, %5526 ]
  %5619 = call float @dx.op.binary.f32(i32 36, float %5618, float %5618)  ; FMin(a,b)
  %5620 = call float @dx.op.binary.f32(i32 36, float %5618, float %5619)  ; FMin(a,b)
  %5621 = fcmp fast ogt float %5620, 0.000000e+00
  br i1 %5621, label %5643, label %5622, !dx.controlflow.hints !147

; <label>:5622                                    ; preds = %5909, %5617
  %5623 = phi i32 [ %5919, %5909 ], [ %5527, %5617 ]
  %5624 = phi float [ %5895, %5909 ], [ %5529, %5617 ]
  %5625 = phi float [ %5896, %5909 ], [ %5530, %5617 ]
  %5626 = phi float [ %5897, %5909 ], [ %5531, %5617 ]
  %5627 = phi float [ %5892, %5909 ], [ %5532, %5617 ]
  %5628 = phi float [ %5893, %5909 ], [ %5533, %5617 ]
  %5629 = phi float [ %5894, %5909 ], [ %5534, %5617 ]
  %5630 = phi float [ %5889, %5909 ], [ %5535, %5617 ]
  %5631 = phi float [ %5890, %5909 ], [ %5536, %5617 ]
  %5632 = phi float [ %5891, %5909 ], [ %5537, %5617 ]
  %5633 = phi float [ %5886, %5909 ], [ %5538, %5617 ]
  %5634 = phi float [ %5887, %5909 ], [ %5539, %5617 ]
  %5635 = phi float [ %5888, %5909 ], [ %5540, %5617 ]
  %5636 = phi float [ %5883, %5909 ], [ %5541, %5617 ]
  %5637 = phi float [ %5884, %5909 ], [ %5542, %5617 ]
  %5638 = phi float [ %5885, %5909 ], [ %5543, %5617 ]
  %5639 = phi float [ %5877, %5909 ], [ %5544, %5617 ]
  %5640 = phi float [ %5878, %5909 ], [ %5545, %5617 ]
  %5641 = phi float [ %5879, %5909 ], [ %5546, %5617 ]
  %5642 = icmp eq i32 %5528, %5550
  br i1 %5642, label %5920, label %5526

; <label>:5643                                    ; preds = %5617
  %5644 = fmul fast float %5618, %5554
  %5645 = fmul fast float %5618, %5555
  %5646 = fmul fast float %5618, %5556
  %5647 = fadd fast float %5590, %4970
  %5648 = fadd fast float %5591, %4971
  %5649 = fadd fast float %5592, %4972
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5647, float %5648, float %5649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = fdiv fast float 1.000000e+00, %5651
  %5653 = fmul fast float %5652, %5650
  %5654 = fmul fast float %5653, %5647
  %5655 = fmul fast float %5653, %5648
  %5656 = fmul fast float %5653, %5649
  %5657 = fadd fast float %5571, %5654
  %5658 = fadd fast float %5572, %5655
  %5659 = fadd fast float %5573, %5656
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %5559, float %5560, float %5561)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = fdiv fast float %5660, %5570
  %5662 = call float @dx.op.binary.f32(i32 35, float %5661, float -1.000000e+00)  ; FMax(a,b)
  %5663 = call float @dx.op.binary.f32(i32 36, float %5662, float 1.000000e+00)  ; FMin(a,b)
  %5664 = fmul fast float %5663, %5559
  %5665 = fmul fast float %5663, %5560
  %5666 = fmul fast float %5663, %5561
  %5667 = fsub fast float %5567, %2005
  %5668 = fadd fast float %5667, %5664
  %5669 = fsub fast float %5568, %2006
  %5670 = fadd fast float %5669, %5665
  %5671 = fsub fast float %5569, %2007
  %5672 = fadd fast float %5671, %5666
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5670, float %5672, float %5668, float %5670, float %5672)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = call float @dx.op.unary.f32(i32 25, float %5673)  ; Rsqrt(value)
  %5675 = fmul fast float %5668, %5674
  %5676 = fmul fast float %5670, %5674
  %5677 = fmul fast float %5672, %5674
  %5678 = fsub fast float %5675, %4997
  %5679 = fsub fast float %5676, %4998
  %5680 = fsub fast float %5677, %4999
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float %5678, float %5679, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = call float @dx.op.unary.f32(i32 25, float %5681)  ; Rsqrt(value)
  %5683 = fmul fast float %5678, %5682
  %5684 = fmul fast float %5679, %5682
  %5685 = fmul fast float %5680, %5682
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %4970, float %4971, float %4972)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5000, float %5001, float %5002, float %5683, float %5684, float %5685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = fmul fast float %5674, %5564
  %5689 = fmul fast float %5688, %5688
  %5690 = bitcast float %5689 to i32
  %5691 = ashr i32 %5690, 1
  %5692 = sub nsw i32 1597463007, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5693, %5686
  %5695 = fmul fast float %5694, %5694
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = fmul fast float %5686, %5689
  %5698 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5699 = fmul fast float %5694, 5.000000e-01
  %5700 = fadd fast float %5699, 5.000000e-01
  %5701 = fmul fast float %5700, %5689
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5703 = bitcast float %5702 to i32
  %5704 = ashr i32 %5703, 1
  %5705 = add nsw i32 %5704, 532487669
  %5706 = bitcast i32 %5705 to float
  %5707 = fmul fast float %5706, %5702
  %5708 = fcmp fast ogt float %5696, 0.000000e+00
  %5709 = select i1 %5708, float %5707, float %5698
  %5710 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5711 = fmul fast float %5710, %5710
  %5712 = fmul fast float %5711, %5042
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 0
  %5716 = bitcast float %5715 to i32
  %5717 = lshr i32 %5716, 8
  %5718 = and i32 %5717, 255
  %5719 = uitofp i32 %5718 to float
  %5720 = fptoui float %5719 to i32
  %5721 = and i32 %5720, 8
  %5722 = icmp ne i32 %5721, 0
  %5723 = select i1 %5722, float %5713, float 1.000000e+00
  %5724 = fmul fast float %5723, %5709
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5561, float %5010, float %5011, float %5012)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5561, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = fmul fast float %5725, %5725
  %5729 = fsub fast float %5570, %5728
  %5730 = fmul fast float %5727, %5725
  %5731 = fsub fast float %5730, %5726
  %5732 = fdiv fast float %5731, %5729
  %5733 = call float @dx.op.binary.f32(i32 35, float %5732, float -1.500000e+00)  ; FMax(a,b)
  %5734 = call float @dx.op.binary.f32(i32 36, float %5733, float 1.500000e+00)  ; FMin(a,b)
  %5735 = fmul fast float %5734, %5734
  %5736 = fmul fast float %5735, 0x3FC2F68380000000
  %5737 = fmul fast float %5736, %5734
  %5738 = fsub fast float %5734, %5737
  %5739 = fmul fast float %5738, %5559
  %5740 = fmul fast float %5738, %5560
  %5741 = fmul fast float %5738, %5561
  %5742 = fadd fast float %5739, %5581
  %5743 = fadd fast float %5740, %5582
  %5744 = fadd fast float %5741, %5583
  %5745 = fsub fast float %5742, %2005
  %5746 = fsub fast float %5743, %2006
  %5747 = fsub fast float %5744, %2007
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5010, float %5011, float %5012)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = fmul fast float %5748, %5010
  %5750 = fmul fast float %5748, %5011
  %5751 = fmul fast float %5748, %5012
  %5752 = fsub fast float %5749, %5745
  %5753 = fsub fast float %5750, %5746
  %5754 = fsub fast float %5751, %5747
  %5755 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = bitcast float %5755 to i32
  %5757 = ashr i32 %5756, 1
  %5758 = sub nsw i32 1597463007, %5757
  %5759 = bitcast i32 %5758 to float
  %5760 = fmul fast float %5759, %5564
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5745, float %5746, float %5747)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = bitcast float %5761 to i32
  %5763 = ashr i32 %5762, 1
  %5764 = sub nsw i32 1597463007, %5763
  %5765 = bitcast i32 %5764 to float
  %5766 = fmul fast float %5760, %5760
  %5767 = fadd fast float %5766, 1.250000e-01
  %5768 = call float @dx.op.unary.f32(i32 25, float %5767)  ; Rsqrt(value)
  %5769 = fmul fast float %5760, %5768
  %5770 = fmul fast float %5752, %5769
  %5771 = fmul fast float %5753, %5769
  %5772 = fmul fast float %5754, %5769
  %5773 = fadd fast float %5745, %5770
  %5774 = fadd fast float %5746, %5771
  %5775 = fadd fast float %5747, %5772
  %5776 = call float @dx.op.dot3.f32(i32 55, float %5773, float %5774, float %5775, float %5773, float %5774, float %5775)  ; Dot3(ax,ay,az,bx,by,bz)
  %5777 = call float @dx.op.unary.f32(i32 25, float %5776)  ; Rsqrt(value)
  %5778 = fmul fast float %5773, %5777
  %5779 = fmul fast float %5774, %5777
  %5780 = fmul fast float %5775, %5777
  %5781 = fsub fast float %5778, %4997
  %5782 = fsub fast float %5779, %4998
  %5783 = fsub fast float %5780, %4999
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5782, float %5783, float %5781, float %5782, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.unary.f32(i32 25, float %5784)  ; Rsqrt(value)
  %5786 = fmul fast float %5781, %5785
  %5787 = fmul fast float %5782, %5785
  %5788 = fmul fast float %5783, %5785
  %5789 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = fmul fast float %5789, %5789
  %5791 = call float @dx.op.unary.f32(i32 6, float %5686)  ; FAbs(value)
  %5792 = fsub fast float 1.000000e+00, %5032
  %5793 = fmul fast float %5004, %5004
  %5794 = fmul fast float %5793, %5792
  %5795 = fadd fast float %5794, %5032
  %5796 = bitcast float %5795 to i32
  %5797 = ashr i32 %5796, 1
  %5798 = add nsw i32 %5797, 532487669
  %5799 = bitcast i32 %5798 to float
  %5800 = fadd fast float %5799, %5004
  %5801 = fmul fast float %5032, %5790
  %5802 = fsub fast float 1.000000e+00, %5790
  %5803 = fadd fast float %5802, %5801
  %5804 = fmul fast float %5791, %5791
  %5805 = fmul fast float %5804, %5792
  %5806 = fadd fast float %5805, %5032
  %5807 = bitcast float %5806 to i32
  %5808 = ashr i32 %5807, 1
  %5809 = add nsw i32 %5808, 532487669
  %5810 = bitcast i32 %5809 to float
  %5811 = fadd fast float %5810, %5791
  %5812 = fmul fast float %5803, %5803
  %5813 = fmul fast float %5812, %5800
  %5814 = fmul fast float %5813, %5811
  %5815 = fdiv fast float 1.000000e+00, %5814
  %5816 = bitcast float %5032 to i32
  %5817 = sitofp i32 %5816 to float
  %5818 = fmul fast float %5817, 0x3FE7F73180000000
  %5819 = fadd fast float %5818, 0x41AFE27C40000000
  %5820 = fptosi float %5819 to i32
  %5821 = bitcast i32 %5820 to float
  %5822 = fmul fast float %5564, 0x3FD80E9D60000000
  %5823 = fmul fast float %5822, %5765
  %5824 = fadd fast float %5821, %5823
  %5825 = bitcast float %5824 to i32
  %5826 = sub nsw i32 2129859010, %5825
  %5827 = bitcast i32 %5826 to float
  %5828 = fmul fast float %5032, %5815
  %5829 = fmul fast float %5828, %5821
  %5830 = fmul fast float %5829, %5827
  %5831 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = bitcast float %5832 to i32
  %5834 = sitofp i32 %5833 to float
  %5835 = fmul fast float %5834, 5.000000e+00
  %5836 = fadd fast float %5835, 0xC1EFBF8940000000
  %5837 = fptosi float %5836 to i32
  %5838 = bitcast i32 %5837 to float
  %5839 = fsub fast float 1.000000e+00, %4991
  %5840 = fsub fast float 1.000000e+00, %4992
  %5841 = fsub fast float 1.000000e+00, %4993
  %5842 = fmul fast float %5838, %5839
  %5843 = fmul fast float %5838, %5840
  %5844 = fmul fast float %5838, %5841
  %5845 = fadd fast float %5842, %4991
  %5846 = fadd fast float %5843, %4992
  %5847 = fadd fast float %5844, %4993
  %5848 = fmul fast float %5686, 9.843750e-01
  %5849 = fadd fast float %5848, 7.812500e-03
  %5850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %27, float %5849, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5851 = extractvalue %dx.types.ResRet.f32 %5850, 2
  %5852 = extractvalue %dx.types.ResRet.f32 %5850, 3
  %5853 = fmul fast float %5851, %4991
  %5854 = fmul fast float %5851, %4992
  %5855 = fmul fast float %5851, %4993
  %5856 = fadd fast float %5853, %5852
  %5857 = fadd fast float %5854, %5852
  %5858 = fadd fast float %5855, %5852
  %5859 = call float @dx.op.binary.f32(i32 35, float %5857, float %5858)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5856, float %5859)  ; FMax(a,b)
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = fmul fast float %5724, %5644
  %5863 = fmul fast float %5862, %5861
  %5864 = fmul fast float %5724, %5645
  %5865 = fmul fast float %5864, %5861
  %5866 = fmul fast float %5724, %5646
  %5867 = fmul fast float %5866, %5861
  %5868 = fmul fast float %5862, %5845
  %5869 = fmul fast float %5868, %5830
  %5870 = fmul fast float %5864, %5846
  %5871 = fmul fast float %5870, %5830
  %5872 = fmul fast float %5866, %5847
  %5873 = fmul fast float %5872, %5830
  %5874 = fmul fast float %5863, %2931
  %5875 = fmul fast float %5865, %2931
  %5876 = fmul fast float %5867, %2931
  %5877 = fadd fast float %5874, %5544
  %5878 = fadd fast float %5875, %5545
  %5879 = fadd fast float %5876, %5546
  %5880 = fmul fast float %5869, %2931
  %5881 = fmul fast float %5871, %2931
  %5882 = fmul fast float %5873, %2931
  %5883 = fadd fast float %5880, %5541
  %5884 = fadd fast float %5881, %5542
  %5885 = fadd fast float %5882, %5543
  %5886 = fadd fast float %5874, %5538
  %5887 = fadd fast float %5875, %5539
  %5888 = fadd fast float %5876, %5540
  %5889 = fadd fast float %5880, %5535
  %5890 = fadd fast float %5881, %5536
  %5891 = fadd fast float %5882, %5537
  %5892 = fadd fast float %5874, %5532
  %5893 = fadd fast float %5875, %5533
  %5894 = fadd fast float %5876, %5534
  %5895 = fadd fast float %5880, %5529
  %5896 = fadd fast float %5881, %5530
  %5897 = fadd fast float %5882, %5531
  %5898 = bitcast i32 %5527 to float
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 1
  %5901 = bitcast float %5900 to i32
  %5902 = and i32 %5901, 65535
  %5903 = icmp eq i32 %5902, 65535
  br i1 %5903, label %5904, label %5906, !dx.controlflow.hints !148

; <label>:5904                                    ; preds = %5643
  %5905 = call float @dx.op.binary.f32(i32 35, float %5898, float %5618)  ; FMax(a,b)
  br label %5909

; <label>:5906                                    ; preds = %5643
  %5907 = icmp eq i32 %5902, %5548
  %5908 = select i1 %5907, float %5618, float %5898
  br label %5909

; <label>:5909                                    ; preds = %5906, %5904
  %5910 = phi float [ %5905, %5904 ], [ %5908, %5906 ]
  %5911 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5912 = bitcast float %5911 to i32
  %5913 = lshr i32 %5912, 8
  %5914 = and i32 %5913, 255
  %5915 = uitofp i32 %5914 to float
  %5916 = fptoui float %5915 to i32
  %5917 = icmp eq i32 %5916, 15
  %5918 = bitcast float %5910 to i32
  %5919 = select i1 %5917, i32 %5918, i32 %5527
  br label %5622

; <label>:5920                                    ; preds = %5622
  br label %5921

; <label>:5921                                    ; preds = %5920, %5481
  %5922 = phi i32 [ %5482, %5481 ], [ %5623, %5920 ]
  %5923 = phi float [ %5484, %5481 ], [ %5624, %5920 ]
  %5924 = phi float [ %5485, %5481 ], [ %5625, %5920 ]
  %5925 = phi float [ %5486, %5481 ], [ %5626, %5920 ]
  %5926 = phi float [ %5487, %5481 ], [ %5627, %5920 ]
  %5927 = phi float [ %5488, %5481 ], [ %5628, %5920 ]
  %5928 = phi float [ %5489, %5481 ], [ %5629, %5920 ]
  %5929 = phi float [ %5490, %5481 ], [ %5630, %5920 ]
  %5930 = phi float [ %5491, %5481 ], [ %5631, %5920 ]
  %5931 = phi float [ %5492, %5481 ], [ %5632, %5920 ]
  %5932 = phi float [ %5493, %5481 ], [ %5633, %5920 ]
  %5933 = phi float [ %5494, %5481 ], [ %5634, %5920 ]
  %5934 = phi float [ %5495, %5481 ], [ %5635, %5920 ]
  %5935 = phi float [ %5496, %5481 ], [ %5636, %5920 ]
  %5936 = phi float [ %5497, %5481 ], [ %5637, %5920 ]
  %5937 = phi float [ %5498, %5481 ], [ %5638, %5920 ]
  %5938 = phi float [ %5499, %5481 ], [ %5639, %5920 ]
  %5939 = phi float [ %5500, %5481 ], [ %5640, %5920 ]
  %5940 = phi float [ %5501, %5481 ], [ %5641, %5920 ]
  %5941 = add i32 %5483, 1
  %5942 = icmp ugt i32 %5941, %5478
  br i1 %5942, label %5943, label %5481

; <label>:5943                                    ; preds = %5921
  br label %5944

; <label>:5944                                    ; preds = %5943, %5457
  %5945 = phi i32 [ %5444, %5457 ], [ %5922, %5943 ]
  %5946 = phi float [ %5445, %5457 ], [ %5923, %5943 ]
  %5947 = phi float [ %5446, %5457 ], [ %5924, %5943 ]
  %5948 = phi float [ %5447, %5457 ], [ %5925, %5943 ]
  %5949 = phi float [ %5448, %5457 ], [ %5926, %5943 ]
  %5950 = phi float [ %5449, %5457 ], [ %5927, %5943 ]
  %5951 = phi float [ %5450, %5457 ], [ %5928, %5943 ]
  %5952 = phi float [ %5445, %5457 ], [ %5929, %5943 ]
  %5953 = phi float [ %5446, %5457 ], [ %5930, %5943 ]
  %5954 = phi float [ %5447, %5457 ], [ %5931, %5943 ]
  %5955 = phi float [ %5448, %5457 ], [ %5932, %5943 ]
  %5956 = phi float [ %5449, %5457 ], [ %5933, %5943 ]
  %5957 = phi float [ %5450, %5457 ], [ %5934, %5943 ]
  %5958 = phi float [ %5451, %5457 ], [ %5935, %5943 ]
  %5959 = phi float [ %5452, %5457 ], [ %5936, %5943 ]
  %5960 = phi float [ %5453, %5457 ], [ %5937, %5943 ]
  %5961 = phi float [ %5448, %5457 ], [ %5938, %5943 ]
  %5962 = phi float [ %5449, %5457 ], [ %5939, %5943 ]
  %5963 = phi float [ %5450, %5457 ], [ %5940, %5943 ]
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 0
  %5966 = bitcast float %5965 to i32
  %5967 = lshr i32 %5966, 8
  %5968 = and i32 %5967, 255
  %5969 = uitofp i32 %5968 to float
  %5970 = fptoui float %5969 to i32
  %5971 = icmp eq i32 %5970, 12
  %5972 = select i1 %5971, i32 0, i32 %5945
  br label %5973

; <label>:5973                                    ; preds = %5944, %5443
  %5974 = phi i32 [ %5444, %5443 ], [ %5972, %5944 ]
  %5975 = phi float [ %5445, %5443 ], [ %5946, %5944 ]
  %5976 = phi float [ %5446, %5443 ], [ %5947, %5944 ]
  %5977 = phi float [ %5447, %5443 ], [ %5948, %5944 ]
  %5978 = phi float [ %5448, %5443 ], [ %5949, %5944 ]
  %5979 = phi float [ %5449, %5443 ], [ %5950, %5944 ]
  %5980 = phi float [ %5450, %5443 ], [ %5951, %5944 ]
  %5981 = phi float [ %5445, %5443 ], [ %5952, %5944 ]
  %5982 = phi float [ %5446, %5443 ], [ %5953, %5944 ]
  %5983 = phi float [ %5447, %5443 ], [ %5954, %5944 ]
  %5984 = phi float [ %5448, %5443 ], [ %5955, %5944 ]
  %5985 = phi float [ %5449, %5443 ], [ %5956, %5944 ]
  %5986 = phi float [ %5450, %5443 ], [ %5957, %5944 ]
  %5987 = phi float [ %5451, %5443 ], [ %5958, %5944 ]
  %5988 = phi float [ %5452, %5443 ], [ %5959, %5944 ]
  %5989 = phi float [ %5453, %5443 ], [ %5960, %5944 ]
  %5990 = phi float [ %5448, %5443 ], [ %5961, %5944 ]
  %5991 = phi float [ %5449, %5443 ], [ %5962, %5944 ]
  %5992 = phi float [ %5450, %5443 ], [ %5963, %5944 ]
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = bitcast float %5994 to i32
  %5996 = and i32 %5995, 255
  %5997 = uitofp i32 %5996 to float
  %5998 = fptoui float %5997 to i32
  %5999 = icmp eq i32 %5998, 15
  br i1 %5999, label %6000, label %6020, !dx.controlflow.hints !149

; <label>:6000                                    ; preds = %5973
  %6001 = fadd fast float %2008, 1.000000e+00
  %6002 = fadd fast float %1983, 1.000000e+00
  %6003 = fadd fast float %2009, 1.000000e+00
  %6004 = fmul fast float %6001, 5.000000e-01
  %6005 = fmul fast float %6002, 5.000000e-01
  %6006 = fmul fast float %6003, 5.000000e-01
  %6007 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6008 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6009 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6010 = fmul fast float %6007, 1.023000e+03
  %6011 = fmul fast float %6008, 1.023000e+03
  %6012 = fmul fast float %6009, 1.023000e+03
  %6013 = fptoui float %6010 to i32
  %6014 = fptoui float %6011 to i32
  %6015 = fptoui float %6012 to i32
  %6016 = shl i32 %6014, 10
  %6017 = or i32 %6016, %6013
  %6018 = shl i32 %6015, 20
  %6019 = or i32 %6017, %6018
  br label %6020

; <label>:6020                                    ; preds = %6000, %5973
  %6021 = phi i32 [ %5974, %5973 ], [ %6019, %6000 ]
  %6022 = fmul fast float %5990, %4982
  %6023 = fmul fast float %5991, %4983
  %6024 = fmul fast float %5992, %4984
  %6025 = fadd fast float %6022, %5987
  %6026 = fadd fast float %6023, %5988
  %6027 = fadd fast float %6024, %5989
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  %6030 = fmul fast float %6029, %6025
  %6031 = fmul fast float %6029, %6026
  %6032 = fmul fast float %6029, %6027
  %6033 = lshr i32 %5995, 8
  %6034 = and i32 %6033, 255
  %6035 = uitofp i32 %6034 to float
  %6036 = fptoui float %6035 to i32
  switch i32 %6036, label %6244 [
    i32 1, label %6037
    i32 2, label %6041
    i32 3, label %6045
    i32 4, label %6049
    i32 5, label %6053
    i32 6, label %6057
    i32 7, label %6058
    i32 8, label %6059
    i32 9, label %6060
    i32 10, label %6062
    i32 11, label %6083
    i32 12, label %6104
    i32 13, label %6116
    i32 14, label %6131
    i32 15, label %6136
    i32 16, label %6138
    i32 17, label %6140
    i32 18, label %6142
    i32 19, label %6144
    i32 20, label %6153
    i32 21, label %6162
    i32 22, label %6174
    i32 23, label %6208
    i32 24, label %6223
    i32 25, label %6238
    i32 26, label %6240
    i32 27, label %6242
  ], !dx.controlflow.hints !150

; <label>:6037                                    ; preds = %6020
  %6038 = fmul fast float %6029, %5984
  %6039 = fmul fast float %6029, %5985
  %6040 = fmul fast float %6029, %5986
  br label %6244

; <label>:6041                                    ; preds = %6020
  %6042 = fmul fast float %6029, %5981
  %6043 = fmul fast float %6029, %5982
  %6044 = fmul fast float %6029, %5983
  br label %6244

; <label>:6045                                    ; preds = %6020
  %6046 = fmul fast float %5043, %6029
  %6047 = fmul fast float %5044, %6029
  %6048 = fmul fast float %5045, %6029
  br label %6244

; <label>:6049                                    ; preds = %6020
  %6050 = fmul fast float %6029, %5978
  %6051 = fmul fast float %6029, %5979
  %6052 = fmul fast float %6029, %5980
  br label %6244

; <label>:6053                                    ; preds = %6020
  %6054 = fmul fast float %6029, %5975
  %6055 = fmul fast float %6029, %5976
  %6056 = fmul fast float %6029, %5977
  br label %6244

; <label>:6057                                    ; preds = %6020
  br label %6244

; <label>:6058                                    ; preds = %6020
  br label %6244

; <label>:6059                                    ; preds = %6020
  br label %6244

; <label>:6060                                    ; preds = %6020
  %6061 = bitcast i32 %6021 to float
  br label %6244

; <label>:6062                                    ; preds = %6020
  %6063 = and i32 %6021, 1023
  %6064 = uitofp i32 %6063 to float
  %6065 = lshr i32 %6021, 10
  %6066 = and i32 %6065, 1023
  %6067 = uitofp i32 %6066 to float
  %6068 = lshr i32 %6021, 20
  %6069 = and i32 %6068, 1023
  %6070 = uitofp i32 %6069 to float
  %6071 = fmul fast float %6064, 0x3F60040100000000
  %6072 = fmul fast float %6067, 0x3F60040100000000
  %6073 = fmul fast float %6070, 0x3F60040100000000
  %6074 = fadd fast float %6071, -1.000000e+00
  %6075 = fadd fast float %6072, -1.000000e+00
  %6076 = fadd fast float %6073, -1.000000e+00
  %6077 = fcmp fast ogt float %6074, 0.000000e+00
  %6078 = select i1 %6077, float 1.000000e+00, float 0.000000e+00
  %6079 = fcmp fast ogt float %6075, 0.000000e+00
  %6080 = select i1 %6079, float 1.000000e+00, float 0.000000e+00
  %6081 = fcmp fast ogt float %6076, 0.000000e+00
  %6082 = select i1 %6081, float 1.000000e+00, float 0.000000e+00
  br label %6244

; <label>:6083                                    ; preds = %6020
  %6084 = and i32 %6021, 1023
  %6085 = uitofp i32 %6084 to float
  %6086 = lshr i32 %6021, 10
  %6087 = and i32 %6086, 1023
  %6088 = uitofp i32 %6087 to float
  %6089 = lshr i32 %6021, 20
  %6090 = and i32 %6089, 1023
  %6091 = uitofp i32 %6090 to float
  %6092 = fmul fast float %6085, 0x3F60040100000000
  %6093 = fmul fast float %6088, 0x3F60040100000000
  %6094 = fmul fast float %6091, 0x3F60040100000000
  %6095 = fadd fast float %6092, -1.000000e+00
  %6096 = fadd fast float %6093, -1.000000e+00
  %6097 = fadd fast float %6094, -1.000000e+00
  %6098 = fmul fast float %6097, %6096
  %6099 = fsub fast float %6097, %6098
  %6100 = fmul fast float %6096, %6095
  %6101 = fmul fast float %6099, %6095
  %6102 = fsub fast float %6096, %6100
  %6103 = fsub fast float %6099, %6101
  br label %6244

; <label>:6104                                    ; preds = %6020
  %6105 = and i32 %6021, 255
  %6106 = uitofp i32 %6105 to float
  %6107 = fmul fast float %6106, 0x3F70101020000000
  %6108 = lshr i32 %6021, 8
  %6109 = and i32 %6108, 255
  %6110 = uitofp i32 %6109 to float
  %6111 = fmul fast float %6110, 0x3F70101020000000
  %6112 = lshr i32 %6021, 16
  %6113 = and i32 %6112, 255
  %6114 = uitofp i32 %6113 to float
  %6115 = fmul fast float %6114, 0x3F70101020000000
  br label %6244

; <label>:6116                                    ; preds = %6020
  %6117 = and i32 %6021, 1023
  %6118 = uitofp i32 %6117 to float
  %6119 = lshr i32 %6021, 10
  %6120 = and i32 %6119, 1023
  %6121 = uitofp i32 %6120 to float
  %6122 = lshr i32 %6021, 20
  %6123 = and i32 %6122, 1023
  %6124 = uitofp i32 %6123 to float
  %6125 = fmul fast float %6118, 0x3F60040100000000
  %6126 = fmul fast float %6121, 0x3F60040100000000
  %6127 = fmul fast float %6124, 0x3F60040100000000
  %6128 = fadd fast float %6125, -1.000000e+00
  %6129 = fadd fast float %6126, -1.000000e+00
  %6130 = fadd fast float %6127, -1.000000e+00
  br label %6244

; <label>:6131                                    ; preds = %6020
  %6132 = icmp ne i32 %6021, 0
  %6133 = select i1 %6132, float 1.000000e+00, float %6030
  %6134 = select i1 %6132, float 0.000000e+00, float %6031
  %6135 = select i1 %6132, float 0.000000e+00, float %6032
  br label %6244

; <label>:6136                                    ; preds = %6020
  %6137 = bitcast i32 %6021 to float
  br label %6244

; <label>:6138                                    ; preds = %6020
  %6139 = bitcast i32 %6021 to float
  br label %6244

; <label>:6140                                    ; preds = %6020
  %6141 = bitcast i32 %6021 to float
  br label %6244

; <label>:6142                                    ; preds = %6020
  %6143 = bitcast i32 %6021 to float
  br label %6244

; <label>:6144                                    ; preds = %6020
  %6145 = and i32 %6021, 65535
  %6146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6145)  ; LegacyF16ToF32(value)
  %6147 = lshr i32 %6021, 16
  %6148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6147)  ; LegacyF16ToF32(value)
  %6149 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6150 = fmul fast float %6029, %6146
  %6151 = fmul fast float %6029, %6148
  %6152 = fmul fast float %6029, %6149
  br label %6244

; <label>:6153                                    ; preds = %6020
  %6154 = and i32 %6021, 65535
  %6155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6154)  ; LegacyF16ToF32(value)
  %6156 = lshr i32 %6021, 16
  %6157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6156)  ; LegacyF16ToF32(value)
  %6158 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6159 = fmul fast float %6029, %6155
  %6160 = fmul fast float %6029, %6157
  %6161 = fmul fast float %6029, %6158
  br label %6244

; <label>:6162                                    ; preds = %6020
  %6163 = and i32 %6021, 1023
  %6164 = uitofp i32 %6163 to float
  %6165 = lshr i32 %6021, 10
  %6166 = and i32 %6165, 1023
  %6167 = uitofp i32 %6166 to float
  %6168 = lshr i32 %6021, 20
  %6169 = and i32 %6168, 1023
  %6170 = uitofp i32 %6169 to float
  %6171 = fmul fast float %6164, 0x3F50040100000000
  %6172 = fmul fast float %6167, 0x3F50040100000000
  %6173 = fmul fast float %6170, 0x3F50040100000000
  br label %6244

; <label>:6174                                    ; preds = %6020
  %6175 = and i32 %6021, 1023
  %6176 = uitofp i32 %6175 to float
  %6177 = lshr i32 %6021, 10
  %6178 = and i32 %6177, 1023
  %6179 = uitofp i32 %6178 to float
  %6180 = lshr i32 %6021, 20
  %6181 = and i32 %6180, 1023
  %6182 = uitofp i32 %6181 to float
  %6183 = fmul fast float %6176, 0x3F60040100000000
  %6184 = fmul fast float %6179, 0x3F60040100000000
  %6185 = fmul fast float %6182, 0x3F60040100000000
  %6186 = fadd fast float %6183, -1.000000e+00
  %6187 = fadd fast float %6184, -1.000000e+00
  %6188 = fadd fast float %6185, -1.000000e+00
  %6189 = call float @dx.op.binary.f32(i32 35, float %6187, float %6188)  ; FMax(a,b)
  %6190 = call float @dx.op.binary.f32(i32 35, float %6186, float %6189)  ; FMax(a,b)
  %6191 = fmul fast float %6190, 2.000000e+00
  %6192 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6193 = fmul fast float %6176, 0x3F94050140000000
  %6194 = fadd fast float %6193, -1.000000e+01
  %6195 = fmul fast float %6179, 0x3F94050140000000
  %6196 = fmul fast float %6182, 0x3F94050140000000
  %6197 = fsub fast float %6194, %6030
  %6198 = fsub fast float -1.000000e+01, %6031
  %6199 = fadd fast float %6198, %6195
  %6200 = fsub fast float -1.000000e+01, %6032
  %6201 = fadd fast float %6200, %6196
  %6202 = fmul fast float %6192, %6197
  %6203 = fmul fast float %6192, %6199
  %6204 = fmul fast float %6192, %6201
  %6205 = fadd fast float %6202, %6030
  %6206 = fadd fast float %6203, %6031
  %6207 = fadd fast float %6204, %6032
  br label %6244

; <label>:6208                                    ; preds = %6020
  %6209 = and i32 %6021, 1023
  %6210 = uitofp i32 %6209 to float
  %6211 = lshr i32 %6021, 10
  %6212 = and i32 %6211, 1023
  %6213 = uitofp i32 %6212 to float
  %6214 = lshr i32 %6021, 20
  %6215 = and i32 %6214, 1023
  %6216 = uitofp i32 %6215 to float
  %6217 = fmul fast float %6210, 0x3F60040100000000
  %6218 = fmul fast float %6213, 0x3F60040100000000
  %6219 = fmul fast float %6216, 0x3F60040100000000
  %6220 = fadd fast float %6217, -1.000000e+00
  %6221 = fadd fast float %6218, -1.000000e+00
  %6222 = fadd fast float %6219, -1.000000e+00
  br label %6244

; <label>:6223                                    ; preds = %6020
  %6224 = and i32 %6021, 1023
  %6225 = uitofp i32 %6224 to float
  %6226 = lshr i32 %6021, 10
  %6227 = and i32 %6226, 1023
  %6228 = uitofp i32 %6227 to float
  %6229 = lshr i32 %6021, 20
  %6230 = and i32 %6229, 1023
  %6231 = uitofp i32 %6230 to float
  %6232 = fmul fast float %6225, 0x3F60040100000000
  %6233 = fmul fast float %6228, 0x3F60040100000000
  %6234 = fmul fast float %6231, 0x3F60040100000000
  %6235 = fadd fast float %6232, -1.000000e+00
  %6236 = fadd fast float %6233, -1.000000e+00
  %6237 = fadd fast float %6234, -1.000000e+00
  br label %6244

; <label>:6238                                    ; preds = %6020
  %6239 = bitcast i32 %6021 to float
  br label %6244

; <label>:6240                                    ; preds = %6020
  %6241 = bitcast i32 %6021 to float
  br label %6244

; <label>:6242                                    ; preds = %6020
  %6243 = bitcast i32 %6021 to float
  br label %6244

; <label>:6244                                    ; preds = %6242, %6240, %6238, %6223, %6208, %6174, %6162, %6153, %6144, %6142, %6140, %6138, %6136, %6131, %6116, %6104, %6083, %6062, %6060, %6059, %6058, %6057, %6053, %6049, %6045, %6041, %6037, %6020
  %6245 = phi float [ %6030, %6020 ], [ %6243, %6242 ], [ %6241, %6240 ], [ %6239, %6238 ], [ %6235, %6223 ], [ %6220, %6208 ], [ %6205, %6174 ], [ %6171, %6162 ], [ %6159, %6153 ], [ %6150, %6144 ], [ %6143, %6142 ], [ %6141, %6140 ], [ %6139, %6138 ], [ %6137, %6136 ], [ %6128, %6116 ], [ %6107, %6104 ], [ %6095, %6083 ], [ %6078, %6062 ], [ %6061, %6060 ], [ 0.000000e+00, %6059 ], [ 0.000000e+00, %6058 ], [ 0.000000e+00, %6057 ], [ %6054, %6053 ], [ %6050, %6049 ], [ %6046, %6045 ], [ %6042, %6041 ], [ %6038, %6037 ], [ %6133, %6131 ]
  %6246 = phi float [ %6031, %6020 ], [ %6243, %6242 ], [ %6241, %6240 ], [ %6239, %6238 ], [ %6236, %6223 ], [ %6221, %6208 ], [ %6206, %6174 ], [ %6172, %6162 ], [ %6160, %6153 ], [ %6151, %6144 ], [ %6143, %6142 ], [ %6141, %6140 ], [ %6139, %6138 ], [ %6137, %6136 ], [ %6129, %6116 ], [ %6111, %6104 ], [ %6102, %6083 ], [ %6080, %6062 ], [ %6061, %6060 ], [ 0.000000e+00, %6059 ], [ 0.000000e+00, %6058 ], [ 0.000000e+00, %6057 ], [ %6055, %6053 ], [ %6051, %6049 ], [ %6047, %6045 ], [ %6043, %6041 ], [ %6039, %6037 ], [ %6134, %6131 ]
  %6247 = phi float [ %6032, %6020 ], [ %6243, %6242 ], [ %6241, %6240 ], [ %6239, %6238 ], [ %6237, %6223 ], [ %6222, %6208 ], [ %6207, %6174 ], [ %6173, %6162 ], [ %6161, %6153 ], [ %6152, %6144 ], [ %6143, %6142 ], [ %6141, %6140 ], [ %6139, %6138 ], [ %6137, %6136 ], [ %6130, %6116 ], [ %6115, %6104 ], [ %6103, %6083 ], [ %6082, %6062 ], [ %6061, %6060 ], [ 0.000000e+00, %6059 ], [ 0.000000e+00, %6058 ], [ 0.000000e+00, %6057 ], [ %6056, %6053 ], [ %6052, %6049 ], [ %6048, %6045 ], [ %6044, %6041 ], [ %6040, %6037 ], [ %6135, %6131 ]
  %6248 = extractvalue %dx.types.CBufRet.f32 %5993, 3
  %6249 = fsub fast float %6245, %6030
  %6250 = fsub fast float %6246, %6031
  %6251 = fsub fast float %6247, %6032
  %6252 = fmul fast float %6248, %6249
  %6253 = fmul fast float %6248, %6250
  %6254 = fmul fast float %6248, %6251
  %6255 = fadd fast float %6252, %6030
  %6256 = fadd fast float %6253, %6031
  %6257 = fadd fast float %6254, %6032
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %30, i32 %31, i32 undef, float %6255, float %6256, float %6257, float %6255, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %6258

; <label>:6258                                    ; preds = %6244, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unary.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !33, !36, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture3D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 4, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 7, i32 0, !15}
!28 = !{i32 20, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 23, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 29, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!33 = !{!34, !35}
!34 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!35 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!36 = !{!37}
!37 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!38 = !{!39, !40, !41}
!39 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{void ()* @cs_main, !"cs_main", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 8, i32 8, i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = !{i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"\01?BindlessGeometry_GetInputFromGP@@YA?AUBindlessGeometryInput@@IUByteAddressBuffer@@00@Z: %agg.result"}
!63 = distinct !{!63, !"\01?BindlessGeometry_GetInputFromGP@@YA?AUBindlessGeometryInput@@IUByteAddressBuffer@@00@Z"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.full"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"\01?BindlessGeometry_GetPackedTri@@YA?AUBindlessGeometryPackedTri@@UBindlessGeometryInput@@UByteAddressBuffer@@@Z: %agg.result"}
!69 = distinct !{!69, !"\01?BindlessGeometry_GetPackedTri@@YA?AUBindlessGeometryPackedTri@@UBindlessGeometryInput@@UByteAddressBuffer@@@Z"}
!70 = distinct !{!70, !66}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = !{!75, !77}
!75 = distinct !{!75, !76, !"\01?BindlessGeometry_UnpackTri@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@M$01@@V?$vector@I$01@@V?$vector@M$03@@@Z: %agg.result"}
!76 = distinct !{!76, !"\01?BindlessGeometry_UnpackTri@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@M$01@@V?$vector@I$01@@V?$vector@M$03@@@Z"}
!77 = distinct !{!77, !78, !"\01?BindlessGeometry_UnpackTriGP@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@I$01@@V?$vector@M$03@@@Z: %agg.result"}
!78 = distinct !{!78, !"\01?BindlessGeometry_UnpackTriGP@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@I$01@@V?$vector@M$03@@@Z"}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !59, i64 0}
!82 = distinct !{!82, !66}
!83 = distinct !{!83, !66}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 2}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}

