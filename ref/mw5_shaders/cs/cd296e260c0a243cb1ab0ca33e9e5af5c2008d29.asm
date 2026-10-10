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
; shader hash: a5370868a19d825aa0c2ca1b4513339a
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
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     f32     2darray      T9            t32     1
;                                   texture     f32          3d     T10            t31     1
;                                   texture     f32          2d     T11            t30     1
;                                   texture     f32          2d     T12            t29     1
;                                   texture     u32          2d     T13            t22     1
;                                   texture     f32          3d     T14            t23     1
;                                   texture     f32          3d     T15            t14     1
;                                   texture     f32     2darray     T16            t50     1
;                                   texture     f32     2darray     T17            t21     1
;                                   texture     f32          2d     T18            t18     1
;                                   texture    byte         r/o     T19            t15     1
;                                       UAV     f32          3d      U0             u0     1
;                                       UAV     u32          3d      U1             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<unsigned int>" = type { i32 }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
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

define void @cs_vol_sh_sample_lightgrid_isotropic_skylight() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %29 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x float], align 4
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %38 = extractvalue %dx.types.CBufRet.i32 %35, 2
  %39 = add i32 %36, 3
  %40 = add i32 %37, 3
  %41 = add i32 %38, 3
  %42 = lshr i32 %39, 2
  %43 = lshr i32 %40, 2
  %44 = lshr i32 %41, 2
  %45 = icmp uge i32 %28, %42
  %46 = icmp uge i32 %29, %43
  %47 = icmp uge i32 %30, %44
  %48 = or i1 %45, %46
  %49 = or i1 %47, %48
  br i1 %49, label %57, label %50, !dx.controlflow.hints !41

; <label>:50                                      ; preds = %0
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %28, i32 %29, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = fmul fast float %52, 2.550000e+02
  %54 = fadd fast float %53, 0x3F70101020000000
  %55 = fptoui float %54 to i32
  %56 = icmp ule i32 %30, %55
  br label %57

; <label>:57                                      ; preds = %50, %0
  %58 = phi i1 [ %56, %50 ], [ false, %0 ]
  br i1 %58, label %59, label %1506, !dx.controlflow.hints !42

; <label>:59                                      ; preds = %57
  %60 = uitofp i32 %28 to float
  %61 = uitofp i32 %29 to float
  %62 = uitofp i32 %30 to float
  %63 = fadd fast float %60, 5.000000e-01
  %64 = fadd fast float %61, 5.000000e-01
  %65 = fadd fast float %62, 5.000000e-01
  %66 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.i32 %66, 3
  %68 = add i32 %67, %30
  %69 = and i32 %68, 7
  switch i32 %69, label %77 [
    i32 0, label %78
    i32 1, label %70
    i32 2, label %71
    i32 3, label %72
    i32 4, label %73
    i32 5, label %74
    i32 6, label %75
    i32 7, label %76
  ], !dx.controlflow.hints !43

; <label>:70                                      ; preds = %59
  br label %78

; <label>:71                                      ; preds = %59
  br label %78

; <label>:72                                      ; preds = %59
  br label %78

; <label>:73                                      ; preds = %59
  br label %78

; <label>:74                                      ; preds = %59
  br label %78

; <label>:75                                      ; preds = %59
  br label %78

; <label>:76                                      ; preds = %59
  br label %78

; <label>:77                                      ; preds = %59
  br label %78

; <label>:78                                      ; preds = %77, %76, %75, %74, %73, %72, %71, %70, %59
  %79 = phi float [ 0.000000e+00, %77 ], [ 0xBFAAFDA2C0000000, %76 ], [ 0xBFDC840460000000, %75 ], [ 0x3FAD325520000000, %74 ], [ 0xBFC0D2F360000000, %73 ], [ 0x3FD3DBFA80000000, %72 ], [ 0xBFD546BCA0000000, %71 ], [ 0x3FDD88B380000000, %70 ], [ 0xBF98669800000000, %59 ]
  %80 = phi float [ 0.000000e+00, %77 ], [ 0xBFB3D00D00000000, %76 ], [ 0xBFD1E41C40000000, %75 ], [ 0xBFCDD22A60000000, %74 ], [ 0x3FBD22CF20000000, %73 ], [ 0x3FBA443A80000000, %72 ], [ 0x3FDB80DE80000000, %71 ], [ 0xBFB1C6F4E0000000, %70 ], [ 0xBFDDE0E000000000, %59 ]
  %81 = phi float [ 0.000000e+00, %77 ], [ 0xBFD38FB280000000, %76 ], [ 0xBF8D0A4580000000, %75 ], [ 0x3FD36603C0000000, %74 ], [ 0x3FBA950300000000, %73 ], [ 0xBFC14853E0000000, %72 ], [ 0x3FDBE53FA0000000, %71 ], [ 0x3FD8D79020000000, %70 ], [ 0xBFC22590A0000000, %59 ]
  %82 = fadd fast float %63, %79
  %83 = fadd fast float %64, %80
  %84 = fadd fast float %65, %81
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = fmul fast float %84, 4.000000e+00
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = fmul fast float %88, %91
  %93 = call float @dx.op.unary.f32(i32 21, float %92)  ; Exp(value)
  %94 = fmul fast float %93, %90
  %95 = fsub fast float 4.000000e+00, %90
  %96 = fadd fast float %95, %94
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %28, i32 %29, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fcmp fast ogt float %98, -1.000000e+00
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %102 = select i1 %99, float %101, float 1.000000e+00
  %103 = fadd fast float %98, 1.000000e+00
  %104 = fmul fast float %102, %103
  %105 = call float @dx.op.binary.f32(i32 36, float %96, float %104)  ; FMin(a,b)
  %106 = fmul fast float %82, 8.000000e+00
  %107 = fmul fast float %106, %86
  %108 = fmul fast float %83, 8.000000e+00
  %109 = fmul fast float %108, %87
  %110 = fsub fast float 1.000000e+00, %107
  %111 = fsub fast float 1.000000e+00, %109
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fmul fast float %113, %110
  %117 = fmul fast float %114, %110
  %118 = fmul fast float %115, %110
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %120, %111
  %124 = fmul fast float %121, %111
  %125 = fmul fast float %122, %111
  %126 = fadd fast float %123, %116
  %127 = fadd fast float %124, %117
  %128 = fadd fast float %125, %118
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fadd fast float %126, %130
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %128, %132
  %136 = fmul fast float %133, %105
  %137 = fmul fast float %134, %105
  %138 = fmul fast float %135, %105
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fadd fast float %136, %140
  %144 = fadd fast float %137, %141
  %145 = fadd fast float %138, %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 3
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %252, label %151, !dx.controlflow.hints !44

; <label>:151                                     ; preds = %78
  %152 = fmul fast float %65, 4.000000e+00
  %153 = fmul fast float %152, %91
  %154 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %155 = fmul fast float %154, %90
  %156 = fadd fast float %95, %155
  %157 = fmul fast float %63, 8.000000e+00
  %158 = fmul fast float %157, %86
  %159 = fmul fast float %64, 8.000000e+00
  %160 = fmul fast float %159, %87
  %161 = fsub fast float 1.000000e+00, %158
  %162 = fsub fast float 1.000000e+00, %160
  %163 = fmul fast float %113, %161
  %164 = fmul fast float %114, %161
  %165 = fmul fast float %115, %161
  %166 = fmul fast float %120, %162
  %167 = fmul fast float %121, %162
  %168 = fmul fast float %122, %162
  %169 = fadd fast float %166, %163
  %170 = fadd fast float %167, %164
  %171 = fadd fast float %168, %165
  %172 = fadd fast float %169, %130
  %173 = fadd fast float %170, %131
  %174 = fadd fast float %171, %132
  %175 = fmul fast float %172, %156
  %176 = fmul fast float %173, %156
  %177 = fmul fast float %174, %156
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %194 = fmul fast float %175, %179
  %195 = call float @dx.op.tertiary.f32(i32 46, float %183, float %176, float %194)  ; FMad(a,b,c)
  %196 = call float @dx.op.tertiary.f32(i32 46, float %187, float %177, float %195)  ; FMad(a,b,c)
  %197 = fadd fast float %196, %191
  %198 = fmul fast float %175, %180
  %199 = call float @dx.op.tertiary.f32(i32 46, float %184, float %176, float %198)  ; FMad(a,b,c)
  %200 = call float @dx.op.tertiary.f32(i32 46, float %188, float %177, float %199)  ; FMad(a,b,c)
  %201 = fadd fast float %200, %192
  %202 = fmul fast float %175, %181
  %203 = call float @dx.op.tertiary.f32(i32 46, float %185, float %176, float %202)  ; FMad(a,b,c)
  %204 = call float @dx.op.tertiary.f32(i32 46, float %189, float %177, float %203)  ; FMad(a,b,c)
  %205 = fadd fast float %204, %193
  %206 = fmul fast float %197, 5.000000e-01
  %207 = fdiv fast float %206, %205
  %208 = fadd fast float %207, 5.000000e-01
  %209 = fmul fast float %201, -5.000000e-01
  %210 = fdiv fast float %209, %205
  %211 = fadd fast float %210, 5.000000e-01
  %212 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %213 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %214 = fadd fast float %205, -4.000000e+00
  %215 = call float @dx.op.binary.f32(i32 35, float %214, float 0.000000e+00)  ; FMax(a,b)
  %216 = fadd fast float %215, %90
  %217 = fmul fast float %216, %212
  %218 = call float @dx.op.unary.f32(i32 23, float %217)  ; Log(value)
  %219 = fmul fast float %218, %213
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fmul fast float %219, %221
  %223 = call float @dx.op.unary.f32(i32 27, float %208)  ; Round_ni(value)
  %224 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %225 = call float @dx.op.unary.f32(i32 27, float %211)  ; Round_ni(value)
  %226 = call float @dx.op.unary.f32(i32 6, float %225)  ; FAbs(value)
  %227 = fadd fast float %226, %224
  %228 = call float @dx.op.unary.f32(i32 27, float %222)  ; Round_ni(value)
  %229 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %230 = fadd fast float %227, %229
  %231 = fcmp fast oeq float %230, 0.000000e+00
  %232 = zext i1 %231 to i32
  br i1 %231, label %233, label %241, !dx.controlflow.hints !45

; <label>:233                                     ; preds = %151
  %234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %28, i32 %29, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fmul fast float %235, 2.550000e+02
  %237 = fadd fast float %236, 0x3F70101020000000
  %238 = fptoui float %237 to i32
  %239 = icmp ule i32 %30, %238
  %240 = zext i1 %239 to i32
  br label %241

; <label>:241                                     ; preds = %233, %151
  %242 = phi i32 [ %240, %233 ], [ %232, %151 ]
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %252, label %244, !dx.controlflow.hints !46

; <label>:244                                     ; preds = %241
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 397)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 2
  %247 = and i32 %246, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252, !dx.controlflow.hints !47

; <label>:249                                     ; preds = %244
  %250 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 undef, i32 %28, i32 %29, i32 %30, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  br label %252

; <label>:252                                     ; preds = %249, %244, %241, %78
  %253 = phi i32 [ -1, %241 ], [ -1, %78 ], [ %251, %249 ], [ -1, %244 ]
  %254 = phi float [ %208, %241 ], [ 0.000000e+00, %78 ], [ %208, %249 ], [ %208, %244 ]
  %255 = phi float [ %211, %241 ], [ 0.000000e+00, %78 ], [ %211, %249 ], [ %211, %244 ]
  %256 = phi float [ %222, %241 ], [ 0.000000e+00, %78 ], [ %222, %249 ], [ %222, %244 ]
  %257 = phi i32 [ 0, %241 ], [ 0, %78 ], [ %242, %249 ], [ %242, %244 ]
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 0
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %291, !dx.controlflow.hints !48

; <label>:261                                     ; preds = %252
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = fsub fast float %143, %263
  %266 = fsub fast float %144, %264
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %270 = fmul fast float %265, %268
  %271 = fmul fast float %266, %269
  %272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %24, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fcmp fast ogt float %273, 0.000000e+00
  %275 = extractvalue %dx.types.CBufRet.i32 %258, 3
  %276 = icmp ne i32 %275, 0
  %277 = and i1 %274, %276
  br i1 %277, label %278, label %291, !dx.controlflow.hints !49

; <label>:278                                     ; preds = %261
  %279 = fmul fast float %136, %136
  %280 = fmul fast float %137, %137
  %281 = fadd fast float %279, %280
  %282 = uitofp i32 %275 to float
  %283 = fmul fast float %282, %282
  %284 = fcmp fast ogt float %281, %283
  br i1 %284, label %291, label %285, !dx.controlflow.hints !50

; <label>:285                                     ; preds = %278
  %286 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %287 = fsub fast float %282, %286
  %288 = fmul fast float %287, 0x3F75555560000000
  %289 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %290 = call float @dx.op.binary.f32(i32 36, float %289, float %273)  ; FMin(a,b)
  br label %291

; <label>:291                                     ; preds = %285, %278, %261, %252
  %292 = phi float [ 1.000000e+00, %252 ], [ %290, %285 ], [ %273, %261 ], [ 0.000000e+00, %278 ]
  %293 = fcmp fast ogt float %292, 0.000000e+00
  br i1 %293, label %294, label %1081, !dx.controlflow.hints !51

; <label>:294                                     ; preds = %291
  %295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.i32 %295, 2
  %297 = extractvalue %dx.types.CBufRet.i32 %295, 1
  %298 = extractvalue %dx.types.CBufRet.i32 %295, 0
  %299 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  store float 0.000000e+00, float* %299, align 4
  %300 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  store float 0.000000e+00, float* %300, align 4
  %301 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  store float 0.000000e+00, float* %301, align 4
  %302 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  store float 0.000000e+00, float* %302, align 4
  %303 = icmp eq i32 %253, -1
  br i1 %303, label %304, label %455, !dx.controlflow.hints !52

; <label>:304                                     ; preds = %294
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = extractvalue %dx.types.ResRet.i32 %307, 1
  %310 = extractvalue %dx.types.ResRet.i32 %307, 2
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = fsub fast float %143, %312
  %320 = fsub fast float %144, %313
  %321 = fsub fast float %145, %314
  %322 = fptoui float %319 to i32
  %323 = fptoui float %320 to i32
  %324 = fptoui float %321 to i32
  %325 = fcmp fast olt float %143, %312
  %326 = fcmp fast olt float %144, %313
  %327 = fcmp fast olt float %145, %314
  %328 = or i1 %325, %326
  %329 = or i1 %327, %328
  %330 = fcmp fast oge float %143, %316
  %331 = fcmp fast oge float %144, %317
  %332 = fcmp fast oge float %145, %318
  %333 = or i1 %330, %331
  %334 = or i1 %332, %333
  %335 = or i1 %329, %334
  %336 = and i32 %308, 31
  %337 = lshr i32 %322, %336
  %338 = lshr i32 %323, %336
  %339 = lshr i32 %324, %336
  %340 = mul i32 %338, %306
  %341 = add i32 %340, %337
  %342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.i32 %342, 0
  %344 = icmp ult i32 %341, %343
  br i1 %344, label %345, label %361, !dx.controlflow.hints !53

; <label>:345                                     ; preds = %304
  %346 = mul i32 %341, 12
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = add i32 %346, 4
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = add i32 %346, 8
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = icmp ult i32 %339, %351
  %356 = icmp ugt i32 %339, %354
  %357 = or i1 %355, %356
  %358 = add i32 %348, %339
  %359 = sub i32 %358, %351
  %360 = select i1 %357, i32 -2147483648, i32 %359
  br label %361

; <label>:361                                     ; preds = %345, %304
  %362 = phi i32 [ %360, %345 ], [ -2147483648, %304 ]
  %363 = select i1 %335, i32 -2147483648, i32 %362
  %364 = icmp sgt i32 %363, -1
  %365 = and i32 %309, 31
  %366 = lshr i32 %322, %365
  %367 = lshr i32 %323, %365
  %368 = lshr i32 %324, %365
  %369 = and i32 %366, 3
  %370 = and i32 %368, 3
  %371 = shl nuw nsw i32 %370, 4
  %372 = shl i32 %367, 2
  %373 = and i32 %372, 12
  %374 = and i32 %371, 16
  %375 = or i32 %373, %369
  %376 = or i32 %375, %374
  %377 = shl i32 1, %376
  %378 = extractvalue %dx.types.CBufRet.i32 %342, 1
  %379 = icmp ult i32 %363, %378
  br i1 %379, label %380, label %398, !dx.controlflow.hints !54

; <label>:380                                     ; preds = %361
  %381 = lshr i32 %370, 1
  %382 = shl i32 %363, 4
  %383 = shl nuw nsw i32 %381, 2
  %384 = or i32 %382, %383
  %385 = or i32 %384, 8
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, %377
  %389 = icmp eq i32 %388, 0
  %390 = add i32 %377, -1
  %391 = and i32 %387, %390
  %392 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %391)  ; Countbits(value)
  %393 = or i32 %382, %383
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = add i32 %395, %392
  %397 = select i1 %389, i32 -2147483648, i32 %396
  br label %398

; <label>:398                                     ; preds = %380, %361
  %399 = phi i32 [ %397, %380 ], [ -2147483648, %361 ]
  %400 = select i1 %364, i32 %399, i32 %363
  %401 = icmp sgt i32 %400, -1
  %402 = and i32 %310, 31
  %403 = lshr i32 %322, %402
  %404 = lshr i32 %323, %402
  %405 = lshr i32 %324, %402
  %406 = and i32 %403, 3
  %407 = and i32 %405, 3
  %408 = shl nuw nsw i32 %407, 4
  %409 = shl i32 %404, 2
  %410 = and i32 %409, 12
  %411 = and i32 %408, 16
  %412 = or i32 %410, %406
  %413 = or i32 %412, %411
  %414 = shl i32 1, %413
  %415 = icmp ult i32 %400, %378
  br i1 %415, label %416, label %434, !dx.controlflow.hints !54

; <label>:416                                     ; preds = %398
  %417 = lshr i32 %407, 1
  %418 = shl i32 %400, 4
  %419 = shl nuw nsw i32 %417, 2
  %420 = or i32 %418, %419
  %421 = or i32 %420, 8
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, %414
  %425 = icmp eq i32 %424, 0
  %426 = add i32 %414, -1
  %427 = and i32 %423, %426
  %428 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %427)  ; Countbits(value)
  %429 = or i32 %418, %419
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = add i32 %431, %428
  %433 = select i1 %425, i32 -2147483648, i32 %432
  br label %434

; <label>:434                                     ; preds = %416, %398
  %435 = phi i32 [ %433, %416 ], [ -2147483648, %398 ]
  %436 = select i1 %401, i32 %435, i32 %400
  br i1 %335, label %451, label %437, !dx.controlflow.hints !55

; <label>:437                                     ; preds = %434
  %438 = icmp eq i32 %436, -2147483648
  %439 = icmp eq i32 %400, -2147483648
  %440 = select i1 %439, i32 %363, i32 %400
  %441 = select i1 %438, i32 %440, i32 %436
  %442 = icmp sgt i32 %441, -1
  %443 = icmp ne i32 %296, -1
  %444 = and i1 %443, %442
  %445 = select i1 %444, i32 %296, i32 0
  %446 = add i32 %441, %297
  %447 = add i32 %446, %445
  %448 = shl i32 %447, 2
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  br label %451

; <label>:451                                     ; preds = %437, %434
  %452 = phi i32 [ %450, %437 ], [ -1, %434 ]
  %453 = icmp eq i32 %452, -1
  %454 = select i1 %453, i32 %298, i32 %452
  br label %455

; <label>:455                                     ; preds = %451, %294
  %456 = phi i32 [ %454, %451 ], [ %253, %294 ]
  %457 = icmp eq i32 %456, -1
  br i1 %457, label %606, label %458

; <label>:458                                     ; preds = %455
  br label %459

; <label>:459                                     ; preds = %597, %458
  %460 = phi i32 [ %598, %597 ], [ 0, %458 ]
  %461 = phi i32 [ %462, %597 ], [ -1, %458 ]
  %462 = phi i32 [ %593, %597 ], [ %456, %458 ]
  %463 = phi float [ %569, %597 ], [ 0.000000e+00, %458 ]
  %464 = phi float [ %570, %597 ], [ 0.000000e+00, %458 ]
  %465 = phi float [ %571, %597 ], [ 0.000000e+00, %458 ]
  %466 = phi float [ %574, %597 ], [ 0.000000e+00, %458 ]
  %467 = icmp ugt i32 %460, 50
  br i1 %467, label %600, label %468, !dx.controlflow.hints !56

; <label>:468                                     ; preds = %459
  %469 = shl i32 %462, 4
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = extractvalue %dx.types.ResRet.i32 %470, 1
  %473 = extractvalue %dx.types.ResRet.i32 %470, 2
  %474 = extractvalue %dx.types.ResRet.i32 %470, 3
  %475 = and i32 %471, 2147483647
  %476 = mul nsw i32 %475, 12
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = extractvalue %dx.types.ResRet.i32 %477, 1
  %480 = extractvalue %dx.types.ResRet.i32 %477, 2
  %481 = and i32 %472, 2147483647
  %482 = mul nsw i32 %481, 12
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = extractvalue %dx.types.ResRet.i32 %483, 1
  %486 = extractvalue %dx.types.ResRet.i32 %483, 2
  %487 = and i32 %473, 2147483647
  %488 = mul nsw i32 %487, 12
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = extractvalue %dx.types.ResRet.i32 %489, 1
  %492 = extractvalue %dx.types.ResRet.i32 %489, 2
  %493 = and i32 %474, 2147483647
  %494 = mul nsw i32 %493, 12
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = extractvalue %dx.types.ResRet.i32 %495, 1
  %498 = extractvalue %dx.types.ResRet.i32 %495, 2
  %499 = bitcast i32 %478 to float
  %500 = bitcast i32 %479 to float
  %501 = bitcast i32 %480 to float
  %502 = bitcast i32 %496 to float
  %503 = bitcast i32 %497 to float
  %504 = bitcast i32 %498 to float
  %505 = fsub fast float %499, %502
  %506 = fsub fast float %500, %503
  %507 = fsub fast float %501, %504
  %508 = bitcast i32 %484 to float
  %509 = bitcast i32 %485 to float
  %510 = bitcast i32 %486 to float
  %511 = fsub fast float %508, %502
  %512 = fsub fast float %509, %503
  %513 = fsub fast float %510, %504
  %514 = bitcast i32 %490 to float
  %515 = bitcast i32 %491 to float
  %516 = bitcast i32 %492 to float
  %517 = fsub fast float %514, %502
  %518 = fsub fast float %515, %503
  %519 = fsub fast float %516, %504
  %520 = fsub fast float %143, %502
  %521 = fsub fast float %144, %503
  %522 = fsub fast float %145, %504
  %523 = fmul fast float %512, %519
  %524 = fmul fast float %518, %513
  %525 = fsub fast float %523, %524
  %526 = fmul fast float %525, %505
  %527 = fmul fast float %511, %519
  %528 = fmul fast float %513, %517
  %529 = fsub fast float %527, %528
  %530 = fmul fast float %529, %506
  %531 = fsub fast float %526, %530
  %532 = fmul fast float %511, %518
  %533 = fmul fast float %512, %517
  %534 = fsub fast float %532, %533
  %535 = fmul fast float %534, %507
  %536 = fadd fast float %531, %535
  %537 = fdiv fast float 1.000000e+00, %536
  %538 = fmul fast float %525, %537
  %539 = fmul fast float %537, %529
  %540 = fsub fast float -0.000000e+00, %539
  %541 = fmul fast float %534, %537
  %542 = fmul fast float %506, %519
  %543 = fmul fast float %507, %518
  %544 = fsub fast float %542, %543
  %545 = fmul fast float %537, %544
  %546 = fsub fast float -0.000000e+00, %545
  %547 = fmul fast float %505, %519
  %548 = fmul fast float %517, %507
  %549 = fsub fast float %547, %548
  %550 = fmul fast float %549, %537
  %551 = fmul fast float %505, %518
  %552 = fmul fast float %506, %517
  %553 = fsub fast float %551, %552
  %554 = fmul fast float %537, %553
  %555 = fsub fast float -0.000000e+00, %554
  %556 = fmul fast float %506, %513
  %557 = fmul fast float %507, %512
  %558 = fsub fast float %556, %557
  %559 = fmul fast float %558, %537
  %560 = fmul fast float %505, %513
  %561 = fmul fast float %507, %511
  %562 = fsub fast float %560, %561
  %563 = fmul fast float %537, %562
  %564 = fsub fast float -0.000000e+00, %563
  %565 = fmul fast float %505, %512
  %566 = fmul fast float %506, %511
  %567 = fsub fast float %565, %566
  %568 = fmul fast float %567, %537
  %569 = call float @dx.op.dot3.f32(i32 55, float %538, float %540, float %541, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = call float @dx.op.dot3.f32(i32 55, float %546, float %550, float %555, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = call float @dx.op.dot3.f32(i32 55, float %559, float %564, float %568, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %572 = fsub fast float 1.000000e+00, %569
  %573 = fsub fast float %572, %570
  %574 = fsub fast float %573, %571
  %575 = call float @dx.op.binary.f32(i32 36, float %569, float %570)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %575, float %571)  ; FMin(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %576, float %574)  ; FMin(a,b)
  %578 = call float @dx.op.binary.f32(i32 35, float %569, float %570)  ; FMax(a,b)
  %579 = call float @dx.op.binary.f32(i32 35, float %578, float %571)  ; FMax(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %579, float %574)  ; FMax(a,b)
  %581 = fcmp fast oge float %577, 0xBF50624DE0000000
  %582 = fcmp fast olt float %580, 0x3FF00068E0000000
  %583 = and i1 %581, %582
  br i1 %583, label %600, label %584, !dx.controlflow.hints !57

; <label>:584                                     ; preds = %468
  %585 = fcmp fast oeq float %577, %569
  %586 = fcmp fast oeq float %577, %570
  %587 = fcmp fast oeq float %577, %571
  %588 = select i1 %587, i32 8, i32 12
  %589 = select i1 %586, i32 4, i32 %588
  %590 = select i1 %585, i32 0, i32 %589
  %591 = or i32 %590, %469
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = icmp ne i32 %461, -1
  %595 = icmp eq i32 %593, %461
  %596 = and i1 %594, %595
  br i1 %596, label %600, label %597, !dx.controlflow.hints !58

; <label>:597                                     ; preds = %584
  %598 = add nuw nsw i32 %460, 1
  %599 = icmp eq i32 %593, -1
  br i1 %599, label %600, label %459, !llvm.loop !59

; <label>:600                                     ; preds = %597, %584, %468, %459
  %601 = phi i32 [ %462, %584 ], [ %462, %468 ], [ -1, %597 ], [ -1, %459 ]
  %602 = phi float [ %569, %584 ], [ %569, %468 ], [ %569, %597 ], [ %463, %459 ]
  %603 = phi float [ %570, %584 ], [ %570, %468 ], [ %570, %597 ], [ %464, %459 ]
  %604 = phi float [ %571, %584 ], [ %571, %468 ], [ %571, %597 ], [ %465, %459 ]
  %605 = phi float [ %574, %584 ], [ %574, %468 ], [ %574, %597 ], [ %466, %459 ]
  br label %606

; <label>:606                                     ; preds = %600, %455
  %607 = phi i32 [ -1, %455 ], [ %601, %600 ]
  %608 = phi float [ 0.000000e+00, %455 ], [ %602, %600 ]
  %609 = phi float [ 0.000000e+00, %455 ], [ %603, %600 ]
  %610 = phi float [ 0.000000e+00, %455 ], [ %604, %600 ]
  %611 = phi float [ 0.000000e+00, %455 ], [ %605, %600 ]
  %612 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %608)  ; FMax(a,b)
  %613 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %609)  ; FMax(a,b)
  %614 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %610)  ; FMax(a,b)
  %615 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %611)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %612)  ; FMin(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %613)  ; FMin(a,b)
  %618 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %614)  ; FMin(a,b)
  %619 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %615)  ; FMin(a,b)
  store float %616, float* %299, align 4
  store float %617, float* %300, align 4
  store float %618, float* %301, align 4
  store float %619, float* %302, align 4
  %620 = icmp eq i32 %607, -1
  br i1 %620, label %621, label %634, !dx.controlflow.hints !61

; <label>:621                                     ; preds = %606
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 1
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 65535
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = lshr i32 %625, 16
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = and i32 %623, 65535
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  br label %1081

; <label>:634                                     ; preds = %606
  %635 = shl nsw i32 %607, 4
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = extractvalue %dx.types.ResRet.i32 %636, 1
  %639 = extractvalue %dx.types.ResRet.i32 %636, 2
  %640 = extractvalue %dx.types.ResRet.i32 %636, 3
  %641 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %637, i32* %641, align 4
  %642 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %638, i32* %642, align 4
  %643 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %639, i32* %643, align 4
  %644 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %640, i32* %644, align 4
  %645 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float 0.000000e+00, float* %645, align 4
  %646 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float 0.000000e+00, float* %646, align 4
  %647 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float 0.000000e+00, float* %647, align 4
  %648 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float 0.000000e+00, float* %648, align 4
  %649 = icmp slt i32 %637, 0
  br i1 %649, label %650, label %740, !dx.controlflow.hints !62

; <label>:650                                     ; preds = %634
  %651 = fsub fast float 1.000000e+00, %616
  %652 = fdiv fast float 1.000000e+00, %651
  %653 = shl nsw i32 %607, 6
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = extractvalue %dx.types.ResRet.i32 %654, 1
  %657 = extractvalue %dx.types.ResRet.i32 %654, 2
  %658 = extractvalue %dx.types.ResRet.i32 %654, 3
  %659 = fmul fast float %652, %619
  %660 = fmul fast float %652, %617
  %661 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %655, i32* %661, align 4
  %662 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %656, i32* %662, align 4
  %663 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %657, i32* %663, align 4
  %664 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %658, i32* %664, align 4
  %665 = fmul fast float %660, 4.000000e+00
  %666 = call float @dx.op.unary.f32(i32 27, float %665)  ; Round_ni(value)
  %667 = fmul fast float %659, 4.000000e+00
  %668 = call float @dx.op.unary.f32(i32 27, float %667)  ; Round_ni(value)
  %669 = fsub fast float 1.100000e+01, %666
  %670 = fmul fast float %666, 5.000000e-01
  %671 = fmul fast float %670, %669
  %672 = fadd fast float %668, 5.000000e-01
  %673 = fadd fast float %672, %671
  %674 = fptosi float %673 to i32
  %675 = fptosi float %666 to i32
  %676 = sub nsw i32 5, %675
  %677 = fmul fast float %668, 2.500000e-01
  %678 = fmul fast float %666, 2.500000e-01
  %679 = add nsw i32 %674, 1
  %680 = add nsw i32 %674, %676
  %681 = fsub fast float %659, %677
  %682 = fmul fast float %681, 4.000000e+00
  %683 = fsub fast float %660, %678
  %684 = fmul fast float %683, 4.000000e+00
  %685 = fadd fast float %681, %683
  %686 = fmul fast float %685, 4.000000e+00
  %687 = fcmp fast ogt float %686, 1.000000e+00
  br i1 %687, label %688, label %694, !dx.controlflow.hints !63

; <label>:688                                     ; preds = %650
  %689 = add nsw i32 %680, 1
  %690 = fadd fast float %684, -1.000000e+00
  %691 = fsub fast float -0.000000e+00, %690
  %692 = fadd fast float %682, -1.000000e+00
  %693 = fsub fast float -0.000000e+00, %692
  br label %694

; <label>:694                                     ; preds = %688, %650
  %695 = phi i32 [ %689, %688 ], [ %674, %650 ]
  %696 = phi i32 [ %679, %688 ], [ %680, %650 ]
  %697 = phi i32 [ %680, %688 ], [ %679, %650 ]
  %698 = phi float [ %693, %688 ], [ %684, %650 ]
  %699 = phi float [ %691, %688 ], [ %682, %650 ]
  %700 = fsub fast float 1.000000e+00, %698
  %701 = fsub fast float %700, %699
  %702 = lshr i32 %697, 2
  %703 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %702
  %704 = load i32, i32* %703, align 4, !tbaa !64, !noalias !68
  %705 = shl i32 %697, 3
  %706 = and i32 %705, 24
  %707 = lshr i32 %704, %706
  %708 = and i32 %707, 255
  %709 = sitofp i32 %708 to float
  %710 = fmul fast float %699, 0x3F70101020000000
  %711 = fmul fast float %710, %709
  %712 = lshr i32 %696, 2
  %713 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %712
  %714 = load i32, i32* %713, align 4, !tbaa !64, !noalias !68
  %715 = shl i32 %696, 3
  %716 = and i32 %715, 24
  %717 = lshr i32 %714, %716
  %718 = and i32 %717, 255
  %719 = sitofp i32 %718 to float
  %720 = fmul fast float %698, 0x3F70101020000000
  %721 = fmul fast float %720, %719
  %722 = lshr i32 %695, 2
  %723 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %722
  %724 = load i32, i32* %723, align 4, !tbaa !64, !noalias !68
  %725 = shl i32 %695, 3
  %726 = and i32 %725, 24
  %727 = lshr i32 %724, %726
  %728 = and i32 %727, 255
  %729 = sitofp i32 %728 to float
  %730 = fmul fast float %701, 0x3F70101020000000
  %731 = fmul fast float %730, %729
  %732 = fsub fast float 1.000000e+00, %711
  %733 = fsub fast float %732, %721
  %734 = fsub fast float %733, %731
  %735 = fmul fast float %616, 2.000000e+01
  %736 = fadd fast float %735, 1.000000e+00
  %737 = fmul fast float %734, 2.000000e+01
  %738 = fsub fast float %736, %737
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  br label %740

; <label>:740                                     ; preds = %694, %634
  %741 = phi float [ %739, %694 ], [ 1.000000e+00, %634 ]
  store float %741, float* %645, align 4, !tbaa !82, !noalias !68
  %742 = icmp slt i32 %638, 0
  br i1 %742, label %743, label %834, !dx.controlflow.hints !62

; <label>:743                                     ; preds = %740
  %744 = fsub fast float 1.000000e+00, %617
  %745 = fdiv fast float 1.000000e+00, %744
  %746 = shl i32 %607, 6
  %747 = or i32 %746, 16
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = extractvalue %dx.types.ResRet.i32 %748, 1
  %751 = extractvalue %dx.types.ResRet.i32 %748, 2
  %752 = extractvalue %dx.types.ResRet.i32 %748, 3
  %753 = fmul fast float %745, %616
  %754 = fmul fast float %745, %619
  %755 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %749, i32* %755, align 4
  %756 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %750, i32* %756, align 4
  %757 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %751, i32* %757, align 4
  %758 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %752, i32* %758, align 4
  %759 = fmul fast float %754, 4.000000e+00
  %760 = call float @dx.op.unary.f32(i32 27, float %759)  ; Round_ni(value)
  %761 = fmul fast float %753, 4.000000e+00
  %762 = call float @dx.op.unary.f32(i32 27, float %761)  ; Round_ni(value)
  %763 = fsub fast float 1.100000e+01, %760
  %764 = fmul fast float %760, 5.000000e-01
  %765 = fmul fast float %764, %763
  %766 = fadd fast float %762, 5.000000e-01
  %767 = fadd fast float %766, %765
  %768 = fptosi float %767 to i32
  %769 = fptosi float %760 to i32
  %770 = sub nsw i32 5, %769
  %771 = fmul fast float %762, 2.500000e-01
  %772 = fmul fast float %760, 2.500000e-01
  %773 = add nsw i32 %768, 1
  %774 = add nsw i32 %768, %770
  %775 = fsub fast float %753, %771
  %776 = fmul fast float %775, 4.000000e+00
  %777 = fsub fast float %754, %772
  %778 = fmul fast float %777, 4.000000e+00
  %779 = fadd fast float %775, %777
  %780 = fmul fast float %779, 4.000000e+00
  %781 = fcmp fast ogt float %780, 1.000000e+00
  br i1 %781, label %782, label %788, !dx.controlflow.hints !63

; <label>:782                                     ; preds = %743
  %783 = add nsw i32 %774, 1
  %784 = fadd fast float %778, -1.000000e+00
  %785 = fsub fast float -0.000000e+00, %784
  %786 = fadd fast float %776, -1.000000e+00
  %787 = fsub fast float -0.000000e+00, %786
  br label %788

; <label>:788                                     ; preds = %782, %743
  %789 = phi i32 [ %783, %782 ], [ %768, %743 ]
  %790 = phi i32 [ %773, %782 ], [ %774, %743 ]
  %791 = phi i32 [ %774, %782 ], [ %773, %743 ]
  %792 = phi float [ %787, %782 ], [ %778, %743 ]
  %793 = phi float [ %785, %782 ], [ %776, %743 ]
  %794 = fsub fast float 1.000000e+00, %792
  %795 = fsub fast float %794, %793
  %796 = lshr i32 %791, 2
  %797 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %796
  %798 = load i32, i32* %797, align 4, !tbaa !64, !noalias !68
  %799 = shl i32 %791, 3
  %800 = and i32 %799, 24
  %801 = lshr i32 %798, %800
  %802 = and i32 %801, 255
  %803 = sitofp i32 %802 to float
  %804 = fmul fast float %793, 0x3F70101020000000
  %805 = fmul fast float %804, %803
  %806 = lshr i32 %790, 2
  %807 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %806
  %808 = load i32, i32* %807, align 4, !tbaa !64, !noalias !68
  %809 = shl i32 %790, 3
  %810 = and i32 %809, 24
  %811 = lshr i32 %808, %810
  %812 = and i32 %811, 255
  %813 = sitofp i32 %812 to float
  %814 = fmul fast float %792, 0x3F70101020000000
  %815 = fmul fast float %814, %813
  %816 = lshr i32 %789, 2
  %817 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %816
  %818 = load i32, i32* %817, align 4, !tbaa !64, !noalias !68
  %819 = shl i32 %789, 3
  %820 = and i32 %819, 24
  %821 = lshr i32 %818, %820
  %822 = and i32 %821, 255
  %823 = sitofp i32 %822 to float
  %824 = fmul fast float %795, 0x3F70101020000000
  %825 = fmul fast float %824, %823
  %826 = fsub fast float 1.000000e+00, %805
  %827 = fsub fast float %826, %815
  %828 = fsub fast float %827, %825
  %829 = fmul fast float %617, 2.000000e+01
  %830 = fadd fast float %829, 1.000000e+00
  %831 = fmul fast float %828, 2.000000e+01
  %832 = fsub fast float %830, %831
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  br label %834

; <label>:834                                     ; preds = %788, %740
  %835 = phi float [ %833, %788 ], [ 1.000000e+00, %740 ]
  store float %835, float* %646, align 4, !tbaa !82, !noalias !68
  %836 = fadd fast float %835, %741
  %837 = icmp slt i32 %639, 0
  br i1 %837, label %838, label %929, !dx.controlflow.hints !62

; <label>:838                                     ; preds = %834
  %839 = fsub fast float 1.000000e+00, %618
  %840 = fdiv fast float 1.000000e+00, %839
  %841 = shl i32 %607, 6
  %842 = or i32 %841, 32
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = extractvalue %dx.types.ResRet.i32 %843, 1
  %846 = extractvalue %dx.types.ResRet.i32 %843, 2
  %847 = extractvalue %dx.types.ResRet.i32 %843, 3
  %848 = fmul fast float %840, %616
  %849 = fmul fast float %840, %617
  %850 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %844, i32* %850, align 4
  %851 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %845, i32* %851, align 4
  %852 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %846, i32* %852, align 4
  %853 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %847, i32* %853, align 4
  %854 = fmul fast float %849, 4.000000e+00
  %855 = call float @dx.op.unary.f32(i32 27, float %854)  ; Round_ni(value)
  %856 = fmul fast float %848, 4.000000e+00
  %857 = call float @dx.op.unary.f32(i32 27, float %856)  ; Round_ni(value)
  %858 = fsub fast float 1.100000e+01, %855
  %859 = fmul fast float %855, 5.000000e-01
  %860 = fmul fast float %859, %858
  %861 = fadd fast float %857, 5.000000e-01
  %862 = fadd fast float %861, %860
  %863 = fptosi float %862 to i32
  %864 = fptosi float %855 to i32
  %865 = sub nsw i32 5, %864
  %866 = fmul fast float %857, 2.500000e-01
  %867 = fmul fast float %855, 2.500000e-01
  %868 = add nsw i32 %863, 1
  %869 = add nsw i32 %863, %865
  %870 = fsub fast float %848, %866
  %871 = fmul fast float %870, 4.000000e+00
  %872 = fsub fast float %849, %867
  %873 = fmul fast float %872, 4.000000e+00
  %874 = fadd fast float %870, %872
  %875 = fmul fast float %874, 4.000000e+00
  %876 = fcmp fast ogt float %875, 1.000000e+00
  br i1 %876, label %877, label %883, !dx.controlflow.hints !63

; <label>:877                                     ; preds = %838
  %878 = add nsw i32 %869, 1
  %879 = fadd fast float %873, -1.000000e+00
  %880 = fsub fast float -0.000000e+00, %879
  %881 = fadd fast float %871, -1.000000e+00
  %882 = fsub fast float -0.000000e+00, %881
  br label %883

; <label>:883                                     ; preds = %877, %838
  %884 = phi i32 [ %878, %877 ], [ %863, %838 ]
  %885 = phi i32 [ %868, %877 ], [ %869, %838 ]
  %886 = phi i32 [ %869, %877 ], [ %868, %838 ]
  %887 = phi float [ %882, %877 ], [ %873, %838 ]
  %888 = phi float [ %880, %877 ], [ %871, %838 ]
  %889 = fsub fast float 1.000000e+00, %887
  %890 = fsub fast float %889, %888
  %891 = lshr i32 %886, 2
  %892 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %891
  %893 = load i32, i32* %892, align 4, !tbaa !64, !noalias !68
  %894 = shl i32 %886, 3
  %895 = and i32 %894, 24
  %896 = lshr i32 %893, %895
  %897 = and i32 %896, 255
  %898 = sitofp i32 %897 to float
  %899 = fmul fast float %888, 0x3F70101020000000
  %900 = fmul fast float %899, %898
  %901 = lshr i32 %885, 2
  %902 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %901
  %903 = load i32, i32* %902, align 4, !tbaa !64, !noalias !68
  %904 = shl i32 %885, 3
  %905 = and i32 %904, 24
  %906 = lshr i32 %903, %905
  %907 = and i32 %906, 255
  %908 = sitofp i32 %907 to float
  %909 = fmul fast float %887, 0x3F70101020000000
  %910 = fmul fast float %909, %908
  %911 = lshr i32 %884, 2
  %912 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %911
  %913 = load i32, i32* %912, align 4, !tbaa !64, !noalias !68
  %914 = shl i32 %884, 3
  %915 = and i32 %914, 24
  %916 = lshr i32 %913, %915
  %917 = and i32 %916, 255
  %918 = sitofp i32 %917 to float
  %919 = fmul fast float %890, 0x3F70101020000000
  %920 = fmul fast float %919, %918
  %921 = fsub fast float 1.000000e+00, %900
  %922 = fsub fast float %921, %910
  %923 = fsub fast float %922, %920
  %924 = fmul fast float %618, 2.000000e+01
  %925 = fadd fast float %924, 1.000000e+00
  %926 = fmul fast float %923, 2.000000e+01
  %927 = fsub fast float %925, %926
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  br label %929

; <label>:929                                     ; preds = %883, %834
  %930 = phi float [ %928, %883 ], [ 1.000000e+00, %834 ]
  store float %930, float* %647, align 4, !tbaa !82, !noalias !68
  %931 = fadd fast float %836, %930
  %932 = icmp slt i32 %640, 0
  br i1 %932, label %933, label %1024, !dx.controlflow.hints !62

; <label>:933                                     ; preds = %929
  %934 = fsub fast float 1.000000e+00, %619
  %935 = fdiv fast float 1.000000e+00, %934
  %936 = shl i32 %607, 6
  %937 = or i32 %936, 48
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = extractvalue %dx.types.ResRet.i32 %938, 1
  %941 = extractvalue %dx.types.ResRet.i32 %938, 2
  %942 = extractvalue %dx.types.ResRet.i32 %938, 3
  %943 = fmul fast float %935, %616
  %944 = fmul fast float %935, %617
  %945 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %939, i32* %945, align 4
  %946 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %940, i32* %946, align 4
  %947 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %941, i32* %947, align 4
  %948 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %942, i32* %948, align 4
  %949 = fmul fast float %944, 4.000000e+00
  %950 = call float @dx.op.unary.f32(i32 27, float %949)  ; Round_ni(value)
  %951 = fmul fast float %943, 4.000000e+00
  %952 = call float @dx.op.unary.f32(i32 27, float %951)  ; Round_ni(value)
  %953 = fsub fast float 1.100000e+01, %950
  %954 = fmul fast float %950, 5.000000e-01
  %955 = fmul fast float %954, %953
  %956 = fadd fast float %952, 5.000000e-01
  %957 = fadd fast float %956, %955
  %958 = fptosi float %957 to i32
  %959 = fptosi float %950 to i32
  %960 = sub nsw i32 5, %959
  %961 = fmul fast float %952, 2.500000e-01
  %962 = fmul fast float %950, 2.500000e-01
  %963 = add nsw i32 %958, 1
  %964 = add nsw i32 %958, %960
  %965 = fsub fast float %943, %961
  %966 = fmul fast float %965, 4.000000e+00
  %967 = fsub fast float %944, %962
  %968 = fmul fast float %967, 4.000000e+00
  %969 = fadd fast float %965, %967
  %970 = fmul fast float %969, 4.000000e+00
  %971 = fcmp fast ogt float %970, 1.000000e+00
  br i1 %971, label %972, label %978, !dx.controlflow.hints !63

; <label>:972                                     ; preds = %933
  %973 = add nsw i32 %964, 1
  %974 = fadd fast float %968, -1.000000e+00
  %975 = fsub fast float -0.000000e+00, %974
  %976 = fadd fast float %966, -1.000000e+00
  %977 = fsub fast float -0.000000e+00, %976
  br label %978

; <label>:978                                     ; preds = %972, %933
  %979 = phi i32 [ %973, %972 ], [ %958, %933 ]
  %980 = phi i32 [ %963, %972 ], [ %964, %933 ]
  %981 = phi i32 [ %964, %972 ], [ %963, %933 ]
  %982 = phi float [ %977, %972 ], [ %968, %933 ]
  %983 = phi float [ %975, %972 ], [ %966, %933 ]
  %984 = fsub fast float 1.000000e+00, %982
  %985 = fsub fast float %984, %983
  %986 = lshr i32 %981, 2
  %987 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %986
  %988 = load i32, i32* %987, align 4, !tbaa !64, !noalias !68
  %989 = shl i32 %981, 3
  %990 = and i32 %989, 24
  %991 = lshr i32 %988, %990
  %992 = and i32 %991, 255
  %993 = sitofp i32 %992 to float
  %994 = fmul fast float %983, 0x3F70101020000000
  %995 = fmul fast float %994, %993
  %996 = lshr i32 %980, 2
  %997 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %996
  %998 = load i32, i32* %997, align 4, !tbaa !64, !noalias !68
  %999 = shl i32 %980, 3
  %1000 = and i32 %999, 24
  %1001 = lshr i32 %998, %1000
  %1002 = and i32 %1001, 255
  %1003 = sitofp i32 %1002 to float
  %1004 = fmul fast float %982, 0x3F70101020000000
  %1005 = fmul fast float %1004, %1003
  %1006 = lshr i32 %979, 2
  %1007 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1006
  %1008 = load i32, i32* %1007, align 4, !tbaa !64, !noalias !68
  %1009 = shl i32 %979, 3
  %1010 = and i32 %1009, 24
  %1011 = lshr i32 %1008, %1010
  %1012 = and i32 %1011, 255
  %1013 = sitofp i32 %1012 to float
  %1014 = fmul fast float %985, 0x3F70101020000000
  %1015 = fmul fast float %1014, %1013
  %1016 = fsub fast float 1.000000e+00, %995
  %1017 = fsub fast float %1016, %1005
  %1018 = fsub fast float %1017, %1015
  %1019 = fmul fast float %619, 2.000000e+01
  %1020 = fadd fast float %1019, 1.000000e+00
  %1021 = fmul fast float %1018, 2.000000e+01
  %1022 = fsub fast float %1020, %1021
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  br label %1024

; <label>:1024                                    ; preds = %978, %929
  %1025 = phi float [ %1023, %978 ], [ 1.000000e+00, %929 ]
  store float %1025, float* %648, align 4, !tbaa !82, !noalias !68
  %1026 = fadd fast float %931, %1025
  %1027 = fcmp fast oeq float %1026, 0.000000e+00
  br i1 %1027, label %1028, label %1029, !dx.controlflow.hints !84

; <label>:1028                                    ; preds = %1024
  store float 2.500000e-01, float* %645, align 4
  store float 2.500000e-01, float* %646, align 4
  store float 2.500000e-01, float* %647, align 4
  store float 2.500000e-01, float* %648, align 4
  br label %1029

; <label>:1029                                    ; preds = %1028, %1024
  %1030 = phi float [ 2.500000e-01, %1028 ], [ %741, %1024 ]
  br label %1031

; <label>:1031                                    ; preds = %1071, %1029
  %1032 = phi float [ %1073, %1071 ], [ %1030, %1029 ]
  %1033 = phi float [ %1065, %1071 ], [ 0.000000e+00, %1029 ]
  %1034 = phi float [ %1066, %1071 ], [ 0.000000e+00, %1029 ]
  %1035 = phi float [ %1067, %1071 ], [ 0.000000e+00, %1029 ]
  %1036 = phi float [ %1068, %1071 ], [ 0.000000e+00, %1029 ]
  %1037 = phi i32 [ %1069, %1071 ], [ 0, %1029 ]
  %1038 = fcmp fast ogt float %1032, 0.000000e+00
  br i1 %1038, label %1039, label %1064, !dx.controlflow.hints !85

; <label>:1039                                    ; preds = %1031
  %1040 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %1037
  %1041 = load float, float* %1040, align 4, !tbaa !82, !noalias !68
  %1042 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1037
  %1043 = load i32, i32* %1042, align 4, !tbaa !64, !noalias !68
  %1044 = fmul fast float %1041, %1032
  %1045 = shl i32 %1043, 5
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = shl i32 %1047, 4
  %1049 = and i32 %1048, 32752
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = lshr i32 %1047, 7
  %1052 = and i32 %1051, 32752
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = lshr i32 %1047, 22
  %1055 = shl nuw nsw i32 %1054, 5
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = fmul fast float %1050, %1044
  %1058 = fadd fast float %1057, %1033
  %1059 = fmul fast float %1053, %1044
  %1060 = fadd fast float %1059, %1034
  %1061 = fmul fast float %1056, %1044
  %1062 = fadd fast float %1061, %1035
  %1063 = fadd fast float %1044, %1036
  br label %1064

; <label>:1064                                    ; preds = %1039, %1031
  %1065 = phi float [ %1058, %1039 ], [ %1033, %1031 ]
  %1066 = phi float [ %1060, %1039 ], [ %1034, %1031 ]
  %1067 = phi float [ %1062, %1039 ], [ %1035, %1031 ]
  %1068 = phi float [ %1063, %1039 ], [ %1036, %1031 ]
  %1069 = add nuw nsw i32 %1037, 1
  %1070 = icmp eq i32 %1069, 4
  br i1 %1070, label %1074, label %1071

; <label>:1071                                    ; preds = %1064
  %1072 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1069
  %1073 = load float, float* %1072, align 4, !tbaa !82, !noalias !68
  br label %1031

; <label>:1074                                    ; preds = %1064
  %1075 = fcmp fast ogt float %1068, 0.000000e+00
  %1076 = fdiv fast float 1.000000e+00, %1068
  %1077 = select i1 %1075, float %1076, float 1.000000e+00
  %1078 = fmul fast float %1077, %1065
  %1079 = fmul fast float %1077, %1066
  %1080 = fmul fast float %1077, %1067
  br label %1081

; <label>:1081                                    ; preds = %1074, %621, %291
  %1082 = phi float [ 0.000000e+00, %291 ], [ %633, %621 ], [ %1080, %1074 ]
  %1083 = phi float [ 0.000000e+00, %291 ], [ %631, %621 ], [ %1079, %1074 ]
  %1084 = phi float [ 0.000000e+00, %291 ], [ %629, %621 ], [ %1078, %1074 ]
  %1085 = phi i32 [ 0, %291 ], [ -1, %621 ], [ %607, %1074 ]
  %1086 = fcmp fast olt float %292, 1.000000e+00
  br i1 %1086, label %1087, label %1449, !dx.controlflow.hints !86

; <label>:1087                                    ; preds = %1081
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1091 = fsub fast float %143, %1089
  %1092 = fsub fast float %144, %1090
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1096 = fmul fast float %1091, %1094
  %1097 = fmul fast float %1092, %1095
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = fmul fast float %1099, %1096
  %1101 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1102 = fadd fast float %1100, %1101
  %1103 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1104 = fmul fast float %1103, %1097
  %1105 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1106 = fadd fast float %1104, %1105
  %1107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %24, float %1102, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1113 = fsub fast float %1111, %1112
  %1114 = fmul fast float %1113, %1108
  %1115 = fadd fast float %1114, %1112
  %1116 = extractvalue %dx.types.CBufRet.f32 %1110, 3
  %1117 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1118 = fsub fast float %1116, %1117
  %1119 = fmul fast float %1118, %1109
  %1120 = fadd fast float %1119, %1117
  %1121 = fsub fast float %145, %1115
  %1122 = fsub fast float %1120, %1115
  %1123 = fdiv fast float %1121, %1122
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = fmul fast float %1126, %1124
  %1128 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1129 = fadd fast float %1127, %1128
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1102, float %1106, float %1129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1138 = fmul fast float %1135, %1131
  %1139 = fmul fast float %1136, %1132
  %1140 = fmul fast float %1137, %1133
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.CBufRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1145 = fadd fast float %1138, %1142
  %1146 = fadd fast float %1139, %1143
  %1147 = fadd fast float %1140, %1144
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = fmul fast float %1149, %1096
  %1151 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1152 = fadd fast float %1150, %1151
  %1153 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1154 = fmul fast float %1153, %1097
  %1155 = extractvalue %dx.types.CBufRet.f32 %1148, 3
  %1156 = fadd fast float %1154, %1155
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1152, float %1156, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = fmul fast float %1163, %1145
  %1167 = fadd fast float %1166, %1158
  %1168 = fmul fast float %1164, %1145
  %1169 = fadd fast float %1168, %1160
  %1170 = fmul fast float %1165, %1145
  %1171 = fadd fast float %1170, %1161
  %1172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1152, float %1156, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1176 = fmul fast float %1173, %1146
  %1177 = fadd fast float %1167, %1176
  %1178 = fmul fast float %1174, %1146
  %1179 = fadd fast float %1169, %1178
  %1180 = fmul fast float %1175, %1146
  %1181 = fadd fast float %1171, %1180
  %1182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1152, float %1156, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = fmul fast float %1183, %1147
  %1187 = fadd fast float %1177, %1186
  %1188 = fmul fast float %1184, %1147
  %1189 = fadd fast float %1179, %1188
  %1190 = fmul fast float %1185, %1147
  %1191 = fadd fast float %1181, %1190
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = fsub fast float %143, %1193
  %1195 = fsub fast float %1089, %143
  %1196 = call float @dx.op.binary.f32(i32 35, float %1195, float %1194)  ; FMax(a,b)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1198 = fsub fast float %144, %1197
  %1199 = fsub fast float %1090, %144
  %1200 = call float @dx.op.binary.f32(i32 35, float %1199, float %1198)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 35, float %1196, float %1200)  ; FMax(a,b)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1093, 3
  %1203 = fmul fast float %1202, %1201
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = fsub fast float %1206, %1187
  %1208 = fmul fast float %1207, %1204
  %1209 = fadd fast float %1208, %1187
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = fsub fast float %1211, %1189
  %1213 = fmul fast float %1212, %1204
  %1214 = fadd fast float %1213, %1189
  %1215 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1216 = fsub fast float %1215, %1191
  %1217 = fmul fast float %1216, %1204
  %1218 = fadd fast float %1217, %1191
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = fmul fast float %1220, %1209
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = fmul fast float %1223, %1214
  %1225 = fadd fast float %1224, %1221
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = fmul fast float %1227, %1218
  %1229 = fadd fast float %1225, %1228
  %1230 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1231 = fmul fast float %1230, %1209
  %1232 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1233 = fmul fast float %1232, %1214
  %1234 = fadd fast float %1233, %1231
  %1235 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1236 = fmul fast float %1235, %1218
  %1237 = fadd fast float %1234, %1236
  %1238 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1239 = fmul fast float %1238, %1209
  %1240 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1241 = fmul fast float %1240, %1214
  %1242 = fadd fast float %1241, %1239
  %1243 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1244 = fmul fast float %1243, %1218
  %1245 = fadd fast float %1242, %1244
  %1246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1229)  ; FMax(a,b)
  %1247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1237)  ; FMax(a,b)
  %1248 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1245)  ; FMax(a,b)
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = fcmp fast ogt float %1250, 0.000000e+00
  %1252 = fcmp fast oge float %1096, 0.000000e+00
  %1253 = and i1 %1252, %1251
  %1254 = fcmp fast ole float %1096, 1.000000e+00
  %1255 = and i1 %1254, %1253
  %1256 = fcmp fast oge float %1097, 0.000000e+00
  %1257 = and i1 %1256, %1255
  %1258 = fcmp fast ole float %1097, 1.000000e+00
  %1259 = and i1 %1258, %1257
  br i1 %1259, label %1260, label %1405, !dx.controlflow.hints !87

; <label>:1260                                    ; preds = %1087
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 2
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1264 = fmul fast float %1262, %1096
  %1265 = fmul fast float %1263, %1097
  %1266 = call float @dx.op.unary.f32(i32 27, float %1264)  ; Round_ni(value)
  %1267 = call float @dx.op.unary.f32(i32 27, float %1265)  ; Round_ni(value)
  %1268 = fptosi float %1266 to i32
  %1269 = fptosi float %1267 to i32
  %1270 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1268, i32 %1269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = and i32 %1271, 65535
  %1273 = lshr i32 %1271, 16
  %1274 = icmp eq i32 %1272, 65535
  br i1 %1274, label %1311, label %1275, !dx.controlflow.hints !88

; <label>:1275                                    ; preds = %1260
  %1276 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1277 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1278 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1279 = fmul fast float %1277, %1096
  %1280 = fmul fast float %1278, %1097
  %1281 = fmul fast float %1279, 1.250000e-01
  %1282 = fmul fast float %1280, 1.250000e-01
  %1283 = call float @dx.op.unary.f32(i32 27, float %1281)  ; Round_ni(value)
  %1284 = call float @dx.op.unary.f32(i32 27, float %1282)  ; Round_ni(value)
  %1285 = fmul fast float %1283, 8.000000e+00
  %1286 = fmul fast float %1284, 8.000000e+00
  %1287 = and i32 %1271, 255
  %1288 = lshr i32 %1271, 8
  %1289 = and i32 %1288, 255
  %1290 = mul nuw nsw i32 %1287, 9
  %1291 = uitofp i32 %1290 to float
  %1292 = mul nuw nsw i32 %1289, 9
  %1293 = uitofp i32 %1292 to float
  %1294 = fadd fast float %1291, 5.000000e-01
  %1295 = fadd fast float %1294, %1279
  %1296 = fsub fast float %1295, %1285
  %1297 = fadd fast float %1293, 5.000000e-01
  %1298 = fadd fast float %1297, %1280
  %1299 = fsub fast float %1298, %1286
  %1300 = fdiv fast float %1296, %1250
  %1301 = fdiv fast float %1299, %1276
  %1302 = fmul fast float %1124, 4.375000e-01
  %1303 = fadd fast float %1302, 3.125000e-02
  %1304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1300, float %1301, float %1303, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = fadd fast float %1305, %1246
  %1309 = fadd fast float %1306, %1247
  %1310 = fadd fast float %1307, %1248
  br label %1311

; <label>:1311                                    ; preds = %1275, %1260
  %1312 = phi float [ %1310, %1275 ], [ %1248, %1260 ]
  %1313 = phi float [ %1309, %1275 ], [ %1247, %1260 ]
  %1314 = phi float [ %1308, %1275 ], [ %1246, %1260 ]
  %1315 = icmp eq i32 %1273, 65535
  br i1 %1315, label %1405, label %1316, !dx.controlflow.hints !89

; <label>:1316                                    ; preds = %1311
  %1317 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1318 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1320 = fmul fast float %1318, %1096
  %1321 = fmul fast float %1319, %1097
  %1322 = fmul fast float %1320, 1.250000e-01
  %1323 = fmul fast float %1321, 1.250000e-01
  %1324 = call float @dx.op.unary.f32(i32 27, float %1322)  ; Round_ni(value)
  %1325 = call float @dx.op.unary.f32(i32 27, float %1323)  ; Round_ni(value)
  %1326 = fmul fast float %1324, 8.000000e+00
  %1327 = fmul fast float %1325, 8.000000e+00
  %1328 = fsub fast float %1320, %1326
  %1329 = fsub fast float %1321, %1327
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fadd fast float %1329, 5.000000e-01
  %1332 = and i32 %1273, 255
  %1333 = lshr i32 %1271, 24
  %1334 = mul nuw nsw i32 %1332, 9
  %1335 = uitofp i32 %1334 to float
  %1336 = mul nuw nsw i32 %1333, 9
  %1337 = uitofp i32 %1336 to float
  %1338 = fadd fast float %1330, %1335
  %1339 = fadd fast float %1331, %1337
  %1340 = fdiv fast float %1338, %1250
  %1341 = fdiv fast float %1339, %1317
  %1342 = fmul fast float %1124, 4.375000e-01
  %1343 = fadd fast float %1342, 3.125000e-02
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1340, float %1341, float %1343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = fadd fast float %1342, 5.312500e-01
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1340, float %1341, float %1348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = fmul fast float %1350, 2.000000e+00
  %1354 = fmul fast float %1351, 2.000000e+00
  %1355 = fmul fast float %1352, 2.000000e+00
  %1356 = fadd fast float %1353, -1.000000e+00
  %1357 = fadd fast float %1354, -1.000000e+00
  %1358 = fadd fast float %1355, -1.000000e+00
  %1359 = fmul fast float %1356, %1356
  %1360 = fmul fast float %1357, %1357
  %1361 = fadd fast float %1359, %1360
  %1362 = fmul fast float %1358, %1358
  %1363 = fadd fast float %1361, %1362
  %1364 = call float @dx.op.unary.f32(i32 24, float %1363)  ; Sqrt(value)
  %1365 = fcmp fast ogt float %1364, 0.000000e+00
  br i1 %1365, label %1366, label %1370, !dx.controlflow.hints !90

; <label>:1366                                    ; preds = %1316
  %1367 = fdiv fast float %1356, %1364
  %1368 = fdiv fast float %1357, %1364
  %1369 = fdiv fast float %1358, %1364
  br label %1370

; <label>:1370                                    ; preds = %1366, %1316
  %1371 = phi float [ %1367, %1366 ], [ 0.000000e+00, %1316 ]
  %1372 = phi float [ %1368, %1366 ], [ 0.000000e+00, %1316 ]
  %1373 = phi float [ %1369, %1366 ], [ 0.000000e+00, %1316 ]
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1377 = fsub fast float %143, %1375
  %1378 = fsub fast float %144, %1376
  %1379 = fmul fast float %1377, %1377
  %1380 = fmul fast float %1378, %1378
  %1381 = fadd fast float %1379, %1380
  %1382 = call float @dx.op.unary.f32(i32 24, float %1381)  ; Sqrt(value)
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = fsub fast float %1382, %1384
  %1387 = fdiv fast float %1386, %1385
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = fmul fast float %1388, 2.000000e+00
  %1390 = fsub fast float 3.000000e+00, %1389
  %1391 = fmul fast float %1388, %1388
  %1392 = fmul fast float %1391, %1390
  %1393 = call float @dx.op.dot3.f32(i32 55, float %1371, float %1372, float %1373, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1394 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1393)  ; FMax(a,b)
  %1395 = fmul fast float %1394, 0x400C5BF8A0000000
  %1396 = fmul fast float %1392, %1345
  %1397 = fmul fast float %1396, %1395
  %1398 = fadd fast float %1397, %1314
  %1399 = fmul fast float %1392, %1346
  %1400 = fmul fast float %1399, %1395
  %1401 = fadd fast float %1400, %1313
  %1402 = fmul fast float %1392, %1347
  %1403 = fmul fast float %1402, %1395
  %1404 = fadd fast float %1403, %1312
  br label %1405

; <label>:1405                                    ; preds = %1370, %1311, %1087
  %1406 = phi float [ %1404, %1370 ], [ %1312, %1311 ], [ %1248, %1087 ]
  %1407 = phi float [ %1401, %1370 ], [ %1313, %1311 ], [ %1247, %1087 ]
  %1408 = phi float [ %1398, %1370 ], [ %1314, %1311 ], [ %1246, %1087 ]
  %1409 = fcmp fast ogt float %145, %1120
  %1410 = and i1 %1252, %1409
  %1411 = and i1 %1254, %1410
  %1412 = and i1 %1256, %1411
  %1413 = and i1 %1258, %1412
  br i1 %1413, label %1414, label %1432, !dx.controlflow.hints !91

; <label>:1414                                    ; preds = %1405
  %1415 = fmul fast float %1122, 0x3FC24924A0000000
  %1416 = fsub fast float %145, %1120
  %1417 = fdiv fast float %1416, %1415
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = fsub fast float %1420, %1408
  %1422 = fmul fast float %1421, %1418
  %1423 = fadd fast float %1422, %1408
  %1424 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1425 = fsub fast float %1424, %1407
  %1426 = fmul fast float %1425, %1418
  %1427 = fadd fast float %1426, %1407
  %1428 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1429 = fsub fast float %1428, %1406
  %1430 = fmul fast float %1429, %1418
  %1431 = fadd fast float %1430, %1406
  br label %1432

; <label>:1432                                    ; preds = %1414, %1405
  %1433 = phi float [ %1431, %1414 ], [ %1406, %1405 ]
  %1434 = phi float [ %1427, %1414 ], [ %1407, %1405 ]
  %1435 = phi float [ %1423, %1414 ], [ %1408, %1405 ]
  %1436 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1437 = fmul fast float %1436, %1435
  %1438 = fmul fast float %1436, %1434
  %1439 = fmul fast float %1436, %1433
  %1440 = fsub fast float %1084, %1437
  %1441 = fmul fast float %1440, %292
  %1442 = fadd fast float %1441, %1437
  %1443 = fsub fast float %1083, %1438
  %1444 = fmul fast float %1443, %292
  %1445 = fadd fast float %1444, %1438
  %1446 = fsub fast float %1082, %1439
  %1447 = fmul fast float %1446, %292
  %1448 = fadd fast float %1447, %1439
  br label %1449

; <label>:1449                                    ; preds = %1432, %1081
  %1450 = phi float [ %1448, %1432 ], [ %1082, %1081 ]
  %1451 = phi float [ %1445, %1432 ], [ %1083, %1081 ]
  %1452 = phi float [ %1442, %1432 ], [ %1084, %1081 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 %30, i32 %1085, i32 %1085, i32 %1085, i32 %1085, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1453 = fmul fast float %1452, 0x3FD20DD760000000
  %1454 = fmul fast float %1451, 0x3FD20DD760000000
  %1455 = fmul fast float %1450, 0x3FD20DD760000000
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1458 = fmul fast float %1453, %1457
  %1459 = fmul fast float %1454, %1457
  %1460 = fmul fast float %1455, %1457
  %1461 = icmp eq i32 %257, 0
  br i1 %1461, label %1498, label %1462, !dx.controlflow.hints !92

; <label>:1462                                    ; preds = %1449
  %1463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %24, float %254, float %255, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = call float @dx.op.binary.f32(i32 36, float %1465, float %1466)  ; FMin(a,b)
  %1469 = call float @dx.op.binary.f32(i32 36, float %1464, float %1468)  ; FMin(a,b)
  %1470 = call float @dx.op.binary.f32(i32 36, float %1469, float %1467)  ; FMin(a,b)
  %1471 = fmul fast float %1470, 2.550000e+02
  %1472 = fadd fast float %1471, 0x3F70101020000000
  %1473 = fptoui float %1472 to i32
  %1474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.i32 %1474, 1
  %1476 = uitofp i32 %1475 to float
  %1477 = fmul fast float %1476, %256
  %1478 = fptosi float %1477 to i32
  %1479 = icmp slt i32 %1478, %1473
  br i1 %1479, label %1480, label %1498, !dx.controlflow.hints !93

; <label>:1480                                    ; preds = %1462
  %1481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %254, float %255, float %256, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1485 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  %1486 = fmul fast float %1485, %1482
  %1487 = fmul fast float %1485, %1483
  %1488 = fmul fast float %1485, %1484
  %1489 = fsub fast float %1486, %1458
  %1490 = fsub fast float %1487, %1459
  %1491 = fsub fast float %1488, %1460
  %1492 = fmul fast float %1489, %147
  %1493 = fmul fast float %1490, %147
  %1494 = fmul fast float %1491, %147
  %1495 = fadd fast float %1492, %1458
  %1496 = fadd fast float %1493, %1459
  %1497 = fadd fast float %1494, %1460
  br label %1498

; <label>:1498                                    ; preds = %1480, %1462, %1449
  %1499 = phi float [ %1458, %1449 ], [ %1495, %1480 ], [ %1458, %1462 ]
  %1500 = phi float [ %1459, %1449 ], [ %1496, %1480 ], [ %1459, %1462 ]
  %1501 = phi float [ %1460, %1449 ], [ %1497, %1480 ], [ %1460, %1462 ]
  %1502 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1503 = fmul fast float %1502, %1499
  %1504 = fmul fast float %1502, %1500
  %1505 = fmul fast float %1502, %1501
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %28, i32 %29, i32 %30, float %1503, float %1504, float %1505, float %1503, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1506

; <label>:1506                                    ; preds = %1498, %57
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !31, !35}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 7, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 4, i32 0, !16}
!18 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 0, i32 30, i32 1, i32 2, i32 0, !16}
!19 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !16}
!20 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 23, i32 1, i32 4, i32 0, !16}
!23 = !{i32 15, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 14, i32 1, i32 4, i32 0, !16}
!24 = !{i32 16, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !16}
!25 = !{i32 17, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 21, i32 1, i32 7, i32 0, !16}
!26 = !{i32 18, %"class.Texture2D<float>"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !16}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!28 = !{!29, !30}
!29 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !16}
!30 = !{i32 1, %"class.RWTexture3D<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 4, i1 false, i1 false, i1 false, !21}
!31 = !{!32, !33, !34}
!32 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!33 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!34 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{!36, !37}
!36 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!37 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!38 = !{void ()* @cs_vol_sh_sample_lightgrid_isotropic_skylight, !"cs_vol_sh_sample_lightgrid_isotropic_skylight", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 4, i32 4, i32 4}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81}
!69 = distinct !{!69, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!70 = distinct !{!70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!71 = distinct !{!71, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!72 = distinct !{!72, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!73 = distinct !{!73, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!74 = distinct !{!74, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!75 = distinct !{!75, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!76 = distinct !{!76, !77, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %redSH"}
!77 = distinct !{!77, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z"}
!78 = distinct !{!78, !77, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %greenSH"}
!79 = distinct !{!79, !77, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %blueSH"}
!80 = distinct !{!80, !77, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %probeA"}
!81 = distinct !{!81, !77, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %usedTet"}
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !66, i64 0}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}

