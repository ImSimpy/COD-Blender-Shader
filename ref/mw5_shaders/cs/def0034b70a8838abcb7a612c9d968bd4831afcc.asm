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
; shader hash: 2b1f21f194143bace0902d83d49d768f
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

define void @cs_vol_sh_sample_lightgrid_aniso_skylight() {
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
  br i1 %58, label %59, label %2252, !dx.controlflow.hints !42

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
  br i1 %293, label %294, label %1389, !dx.controlflow.hints !51

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
  br i1 %620, label %621, label %694, !dx.controlflow.hints !61

; <label>:621                                     ; preds = %606
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = extractvalue %dx.types.ResRet.i32 %622, 1
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = extractvalue %dx.types.ResRet.i32 %625, 1
  %628 = extractvalue %dx.types.ResRet.i32 %625, 2
  %629 = extractvalue %dx.types.ResRet.i32 %625, 3
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = extractvalue %dx.types.ResRet.i32 %630, 1
  %633 = extractvalue %dx.types.ResRet.i32 %630, 2
  %634 = extractvalue %dx.types.ResRet.i32 %630, 3
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = extractvalue %dx.types.ResRet.i32 %635, 1
  %638 = extractvalue %dx.types.ResRet.i32 %635, 2
  %639 = extractvalue %dx.types.ResRet.i32 %635, 3
  %640 = and i32 %636, 65535
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = lshr i32 %636, 16
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = and i32 %637, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %637, 16
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = and i32 %638, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %638, 16
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = and i32 %639, 65535
  %653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %652)  ; LegacyF16ToF32(value)
  %654 = lshr i32 %639, 16
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = and i32 %631, 65535
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = lshr i32 %631, 16
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = and i32 %632, 65535
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %632, 16
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = and i32 %633, 65535
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = lshr i32 %633, 16
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = and i32 %634, 65535
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = lshr i32 %634, 16
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = and i32 %626, 65535
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = lshr i32 %626, 16
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = and i32 %627, 65535
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = lshr i32 %627, 16
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = and i32 %628, 65535
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = lshr i32 %628, 16
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = and i32 %629, 65535
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = lshr i32 %629, 16
  %687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %686)  ; LegacyF16ToF32(value)
  %688 = and i32 %623, 65535
  %689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %688)  ; LegacyF16ToF32(value)
  %690 = lshr i32 %623, 16
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = and i32 %624, 65535
  %693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %692)  ; LegacyF16ToF32(value)
  br label %1389

; <label>:694                                     ; preds = %606
  %695 = shl nsw i32 %607, 4
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = extractvalue %dx.types.ResRet.i32 %696, 1
  %699 = extractvalue %dx.types.ResRet.i32 %696, 2
  %700 = extractvalue %dx.types.ResRet.i32 %696, 3
  %701 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %697, i32* %701, align 4
  %702 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %698, i32* %702, align 4
  %703 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %699, i32* %703, align 4
  %704 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %700, i32* %704, align 4
  %705 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float 0.000000e+00, float* %705, align 4
  %706 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float 0.000000e+00, float* %706, align 4
  %707 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float 0.000000e+00, float* %707, align 4
  %708 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float 0.000000e+00, float* %708, align 4
  %709 = icmp slt i32 %697, 0
  br i1 %709, label %710, label %800, !dx.controlflow.hints !62

; <label>:710                                     ; preds = %694
  %711 = fsub fast float 1.000000e+00, %616
  %712 = fdiv fast float 1.000000e+00, %711
  %713 = shl nsw i32 %607, 6
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = extractvalue %dx.types.ResRet.i32 %714, 1
  %717 = extractvalue %dx.types.ResRet.i32 %714, 2
  %718 = extractvalue %dx.types.ResRet.i32 %714, 3
  %719 = fmul fast float %712, %619
  %720 = fmul fast float %712, %617
  %721 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %715, i32* %721, align 4
  %722 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %716, i32* %722, align 4
  %723 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %717, i32* %723, align 4
  %724 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %718, i32* %724, align 4
  %725 = fmul fast float %720, 4.000000e+00
  %726 = call float @dx.op.unary.f32(i32 27, float %725)  ; Round_ni(value)
  %727 = fmul fast float %719, 4.000000e+00
  %728 = call float @dx.op.unary.f32(i32 27, float %727)  ; Round_ni(value)
  %729 = fsub fast float 1.100000e+01, %726
  %730 = fmul fast float %726, 5.000000e-01
  %731 = fmul fast float %730, %729
  %732 = fadd fast float %728, 5.000000e-01
  %733 = fadd fast float %732, %731
  %734 = fptosi float %733 to i32
  %735 = fptosi float %726 to i32
  %736 = sub nsw i32 5, %735
  %737 = fmul fast float %728, 2.500000e-01
  %738 = fmul fast float %726, 2.500000e-01
  %739 = add nsw i32 %734, 1
  %740 = add nsw i32 %734, %736
  %741 = fsub fast float %719, %737
  %742 = fmul fast float %741, 4.000000e+00
  %743 = fsub fast float %720, %738
  %744 = fmul fast float %743, 4.000000e+00
  %745 = fadd fast float %741, %743
  %746 = fmul fast float %745, 4.000000e+00
  %747 = fcmp fast ogt float %746, 1.000000e+00
  br i1 %747, label %748, label %754, !dx.controlflow.hints !63

; <label>:748                                     ; preds = %710
  %749 = add nsw i32 %740, 1
  %750 = fadd fast float %744, -1.000000e+00
  %751 = fsub fast float -0.000000e+00, %750
  %752 = fadd fast float %742, -1.000000e+00
  %753 = fsub fast float -0.000000e+00, %752
  br label %754

; <label>:754                                     ; preds = %748, %710
  %755 = phi i32 [ %749, %748 ], [ %734, %710 ]
  %756 = phi i32 [ %739, %748 ], [ %740, %710 ]
  %757 = phi i32 [ %740, %748 ], [ %739, %710 ]
  %758 = phi float [ %753, %748 ], [ %744, %710 ]
  %759 = phi float [ %751, %748 ], [ %742, %710 ]
  %760 = fsub fast float 1.000000e+00, %758
  %761 = fsub fast float %760, %759
  %762 = lshr i32 %757, 2
  %763 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %762
  %764 = load i32, i32* %763, align 4, !tbaa !64, !noalias !68
  %765 = shl i32 %757, 3
  %766 = and i32 %765, 24
  %767 = lshr i32 %764, %766
  %768 = and i32 %767, 255
  %769 = sitofp i32 %768 to float
  %770 = fmul fast float %759, 0x3F70101020000000
  %771 = fmul fast float %770, %769
  %772 = lshr i32 %756, 2
  %773 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %772
  %774 = load i32, i32* %773, align 4, !tbaa !64, !noalias !68
  %775 = shl i32 %756, 3
  %776 = and i32 %775, 24
  %777 = lshr i32 %774, %776
  %778 = and i32 %777, 255
  %779 = sitofp i32 %778 to float
  %780 = fmul fast float %758, 0x3F70101020000000
  %781 = fmul fast float %780, %779
  %782 = lshr i32 %755, 2
  %783 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %782
  %784 = load i32, i32* %783, align 4, !tbaa !64, !noalias !68
  %785 = shl i32 %755, 3
  %786 = and i32 %785, 24
  %787 = lshr i32 %784, %786
  %788 = and i32 %787, 255
  %789 = sitofp i32 %788 to float
  %790 = fmul fast float %761, 0x3F70101020000000
  %791 = fmul fast float %790, %789
  %792 = fsub fast float 1.000000e+00, %771
  %793 = fsub fast float %792, %781
  %794 = fsub fast float %793, %791
  %795 = fmul fast float %616, 2.000000e+01
  %796 = fadd fast float %795, 1.000000e+00
  %797 = fmul fast float %794, 2.000000e+01
  %798 = fsub fast float %796, %797
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  br label %800

; <label>:800                                     ; preds = %754, %694
  %801 = phi float [ %799, %754 ], [ 1.000000e+00, %694 ]
  store float %801, float* %705, align 4, !tbaa !82, !noalias !68
  %802 = icmp slt i32 %698, 0
  br i1 %802, label %803, label %894, !dx.controlflow.hints !62

; <label>:803                                     ; preds = %800
  %804 = fsub fast float 1.000000e+00, %617
  %805 = fdiv fast float 1.000000e+00, %804
  %806 = shl i32 %607, 6
  %807 = or i32 %806, 16
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = extractvalue %dx.types.ResRet.i32 %808, 1
  %811 = extractvalue %dx.types.ResRet.i32 %808, 2
  %812 = extractvalue %dx.types.ResRet.i32 %808, 3
  %813 = fmul fast float %805, %616
  %814 = fmul fast float %805, %619
  %815 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %809, i32* %815, align 4
  %816 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %810, i32* %816, align 4
  %817 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %811, i32* %817, align 4
  %818 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %812, i32* %818, align 4
  %819 = fmul fast float %814, 4.000000e+00
  %820 = call float @dx.op.unary.f32(i32 27, float %819)  ; Round_ni(value)
  %821 = fmul fast float %813, 4.000000e+00
  %822 = call float @dx.op.unary.f32(i32 27, float %821)  ; Round_ni(value)
  %823 = fsub fast float 1.100000e+01, %820
  %824 = fmul fast float %820, 5.000000e-01
  %825 = fmul fast float %824, %823
  %826 = fadd fast float %822, 5.000000e-01
  %827 = fadd fast float %826, %825
  %828 = fptosi float %827 to i32
  %829 = fptosi float %820 to i32
  %830 = sub nsw i32 5, %829
  %831 = fmul fast float %822, 2.500000e-01
  %832 = fmul fast float %820, 2.500000e-01
  %833 = add nsw i32 %828, 1
  %834 = add nsw i32 %828, %830
  %835 = fsub fast float %813, %831
  %836 = fmul fast float %835, 4.000000e+00
  %837 = fsub fast float %814, %832
  %838 = fmul fast float %837, 4.000000e+00
  %839 = fadd fast float %835, %837
  %840 = fmul fast float %839, 4.000000e+00
  %841 = fcmp fast ogt float %840, 1.000000e+00
  br i1 %841, label %842, label %848, !dx.controlflow.hints !63

; <label>:842                                     ; preds = %803
  %843 = add nsw i32 %834, 1
  %844 = fadd fast float %838, -1.000000e+00
  %845 = fsub fast float -0.000000e+00, %844
  %846 = fadd fast float %836, -1.000000e+00
  %847 = fsub fast float -0.000000e+00, %846
  br label %848

; <label>:848                                     ; preds = %842, %803
  %849 = phi i32 [ %843, %842 ], [ %828, %803 ]
  %850 = phi i32 [ %833, %842 ], [ %834, %803 ]
  %851 = phi i32 [ %834, %842 ], [ %833, %803 ]
  %852 = phi float [ %847, %842 ], [ %838, %803 ]
  %853 = phi float [ %845, %842 ], [ %836, %803 ]
  %854 = fsub fast float 1.000000e+00, %852
  %855 = fsub fast float %854, %853
  %856 = lshr i32 %851, 2
  %857 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %856
  %858 = load i32, i32* %857, align 4, !tbaa !64, !noalias !68
  %859 = shl i32 %851, 3
  %860 = and i32 %859, 24
  %861 = lshr i32 %858, %860
  %862 = and i32 %861, 255
  %863 = sitofp i32 %862 to float
  %864 = fmul fast float %853, 0x3F70101020000000
  %865 = fmul fast float %864, %863
  %866 = lshr i32 %850, 2
  %867 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %866
  %868 = load i32, i32* %867, align 4, !tbaa !64, !noalias !68
  %869 = shl i32 %850, 3
  %870 = and i32 %869, 24
  %871 = lshr i32 %868, %870
  %872 = and i32 %871, 255
  %873 = sitofp i32 %872 to float
  %874 = fmul fast float %852, 0x3F70101020000000
  %875 = fmul fast float %874, %873
  %876 = lshr i32 %849, 2
  %877 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %876
  %878 = load i32, i32* %877, align 4, !tbaa !64, !noalias !68
  %879 = shl i32 %849, 3
  %880 = and i32 %879, 24
  %881 = lshr i32 %878, %880
  %882 = and i32 %881, 255
  %883 = sitofp i32 %882 to float
  %884 = fmul fast float %855, 0x3F70101020000000
  %885 = fmul fast float %884, %883
  %886 = fsub fast float 1.000000e+00, %865
  %887 = fsub fast float %886, %875
  %888 = fsub fast float %887, %885
  %889 = fmul fast float %617, 2.000000e+01
  %890 = fadd fast float %889, 1.000000e+00
  %891 = fmul fast float %888, 2.000000e+01
  %892 = fsub fast float %890, %891
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  br label %894

; <label>:894                                     ; preds = %848, %800
  %895 = phi float [ %893, %848 ], [ 1.000000e+00, %800 ]
  store float %895, float* %706, align 4, !tbaa !82, !noalias !68
  %896 = fadd fast float %895, %801
  %897 = icmp slt i32 %699, 0
  br i1 %897, label %898, label %989, !dx.controlflow.hints !62

; <label>:898                                     ; preds = %894
  %899 = fsub fast float 1.000000e+00, %618
  %900 = fdiv fast float 1.000000e+00, %899
  %901 = shl i32 %607, 6
  %902 = or i32 %901, 32
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = extractvalue %dx.types.ResRet.i32 %903, 1
  %906 = extractvalue %dx.types.ResRet.i32 %903, 2
  %907 = extractvalue %dx.types.ResRet.i32 %903, 3
  %908 = fmul fast float %900, %616
  %909 = fmul fast float %900, %617
  %910 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %904, i32* %910, align 4
  %911 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %905, i32* %911, align 4
  %912 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %906, i32* %912, align 4
  %913 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %907, i32* %913, align 4
  %914 = fmul fast float %909, 4.000000e+00
  %915 = call float @dx.op.unary.f32(i32 27, float %914)  ; Round_ni(value)
  %916 = fmul fast float %908, 4.000000e+00
  %917 = call float @dx.op.unary.f32(i32 27, float %916)  ; Round_ni(value)
  %918 = fsub fast float 1.100000e+01, %915
  %919 = fmul fast float %915, 5.000000e-01
  %920 = fmul fast float %919, %918
  %921 = fadd fast float %917, 5.000000e-01
  %922 = fadd fast float %921, %920
  %923 = fptosi float %922 to i32
  %924 = fptosi float %915 to i32
  %925 = sub nsw i32 5, %924
  %926 = fmul fast float %917, 2.500000e-01
  %927 = fmul fast float %915, 2.500000e-01
  %928 = add nsw i32 %923, 1
  %929 = add nsw i32 %923, %925
  %930 = fsub fast float %908, %926
  %931 = fmul fast float %930, 4.000000e+00
  %932 = fsub fast float %909, %927
  %933 = fmul fast float %932, 4.000000e+00
  %934 = fadd fast float %930, %932
  %935 = fmul fast float %934, 4.000000e+00
  %936 = fcmp fast ogt float %935, 1.000000e+00
  br i1 %936, label %937, label %943, !dx.controlflow.hints !63

; <label>:937                                     ; preds = %898
  %938 = add nsw i32 %929, 1
  %939 = fadd fast float %933, -1.000000e+00
  %940 = fsub fast float -0.000000e+00, %939
  %941 = fadd fast float %931, -1.000000e+00
  %942 = fsub fast float -0.000000e+00, %941
  br label %943

; <label>:943                                     ; preds = %937, %898
  %944 = phi i32 [ %938, %937 ], [ %923, %898 ]
  %945 = phi i32 [ %928, %937 ], [ %929, %898 ]
  %946 = phi i32 [ %929, %937 ], [ %928, %898 ]
  %947 = phi float [ %942, %937 ], [ %933, %898 ]
  %948 = phi float [ %940, %937 ], [ %931, %898 ]
  %949 = fsub fast float 1.000000e+00, %947
  %950 = fsub fast float %949, %948
  %951 = lshr i32 %946, 2
  %952 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %951
  %953 = load i32, i32* %952, align 4, !tbaa !64, !noalias !68
  %954 = shl i32 %946, 3
  %955 = and i32 %954, 24
  %956 = lshr i32 %953, %955
  %957 = and i32 %956, 255
  %958 = sitofp i32 %957 to float
  %959 = fmul fast float %948, 0x3F70101020000000
  %960 = fmul fast float %959, %958
  %961 = lshr i32 %945, 2
  %962 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %961
  %963 = load i32, i32* %962, align 4, !tbaa !64, !noalias !68
  %964 = shl i32 %945, 3
  %965 = and i32 %964, 24
  %966 = lshr i32 %963, %965
  %967 = and i32 %966, 255
  %968 = sitofp i32 %967 to float
  %969 = fmul fast float %947, 0x3F70101020000000
  %970 = fmul fast float %969, %968
  %971 = lshr i32 %944, 2
  %972 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %971
  %973 = load i32, i32* %972, align 4, !tbaa !64, !noalias !68
  %974 = shl i32 %944, 3
  %975 = and i32 %974, 24
  %976 = lshr i32 %973, %975
  %977 = and i32 %976, 255
  %978 = sitofp i32 %977 to float
  %979 = fmul fast float %950, 0x3F70101020000000
  %980 = fmul fast float %979, %978
  %981 = fsub fast float 1.000000e+00, %960
  %982 = fsub fast float %981, %970
  %983 = fsub fast float %982, %980
  %984 = fmul fast float %618, 2.000000e+01
  %985 = fadd fast float %984, 1.000000e+00
  %986 = fmul fast float %983, 2.000000e+01
  %987 = fsub fast float %985, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  br label %989

; <label>:989                                     ; preds = %943, %894
  %990 = phi float [ %988, %943 ], [ 1.000000e+00, %894 ]
  store float %990, float* %707, align 4, !tbaa !82, !noalias !68
  %991 = fadd fast float %896, %990
  %992 = icmp slt i32 %700, 0
  br i1 %992, label %993, label %1084, !dx.controlflow.hints !62

; <label>:993                                     ; preds = %989
  %994 = fsub fast float 1.000000e+00, %619
  %995 = fdiv fast float 1.000000e+00, %994
  %996 = shl i32 %607, 6
  %997 = or i32 %996, 48
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.i32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.i32 %998, 2
  %1002 = extractvalue %dx.types.ResRet.i32 %998, 3
  %1003 = fmul fast float %995, %616
  %1004 = fmul fast float %995, %617
  %1005 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %999, i32* %1005, align 4
  %1006 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %1000, i32* %1006, align 4
  %1007 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %1001, i32* %1007, align 4
  %1008 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %1002, i32* %1008, align 4
  %1009 = fmul fast float %1004, 4.000000e+00
  %1010 = call float @dx.op.unary.f32(i32 27, float %1009)  ; Round_ni(value)
  %1011 = fmul fast float %1003, 4.000000e+00
  %1012 = call float @dx.op.unary.f32(i32 27, float %1011)  ; Round_ni(value)
  %1013 = fsub fast float 1.100000e+01, %1010
  %1014 = fmul fast float %1010, 5.000000e-01
  %1015 = fmul fast float %1014, %1013
  %1016 = fadd fast float %1012, 5.000000e-01
  %1017 = fadd fast float %1016, %1015
  %1018 = fptosi float %1017 to i32
  %1019 = fptosi float %1010 to i32
  %1020 = sub nsw i32 5, %1019
  %1021 = fmul fast float %1012, 2.500000e-01
  %1022 = fmul fast float %1010, 2.500000e-01
  %1023 = add nsw i32 %1018, 1
  %1024 = add nsw i32 %1018, %1020
  %1025 = fsub fast float %1003, %1021
  %1026 = fmul fast float %1025, 4.000000e+00
  %1027 = fsub fast float %1004, %1022
  %1028 = fmul fast float %1027, 4.000000e+00
  %1029 = fadd fast float %1025, %1027
  %1030 = fmul fast float %1029, 4.000000e+00
  %1031 = fcmp fast ogt float %1030, 1.000000e+00
  br i1 %1031, label %1032, label %1038, !dx.controlflow.hints !63

; <label>:1032                                    ; preds = %993
  %1033 = add nsw i32 %1024, 1
  %1034 = fadd fast float %1028, -1.000000e+00
  %1035 = fsub fast float -0.000000e+00, %1034
  %1036 = fadd fast float %1026, -1.000000e+00
  %1037 = fsub fast float -0.000000e+00, %1036
  br label %1038

; <label>:1038                                    ; preds = %1032, %993
  %1039 = phi i32 [ %1033, %1032 ], [ %1018, %993 ]
  %1040 = phi i32 [ %1023, %1032 ], [ %1024, %993 ]
  %1041 = phi i32 [ %1024, %1032 ], [ %1023, %993 ]
  %1042 = phi float [ %1037, %1032 ], [ %1028, %993 ]
  %1043 = phi float [ %1035, %1032 ], [ %1026, %993 ]
  %1044 = fsub fast float 1.000000e+00, %1042
  %1045 = fsub fast float %1044, %1043
  %1046 = lshr i32 %1041, 2
  %1047 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1046
  %1048 = load i32, i32* %1047, align 4, !tbaa !64, !noalias !68
  %1049 = shl i32 %1041, 3
  %1050 = and i32 %1049, 24
  %1051 = lshr i32 %1048, %1050
  %1052 = and i32 %1051, 255
  %1053 = sitofp i32 %1052 to float
  %1054 = fmul fast float %1043, 0x3F70101020000000
  %1055 = fmul fast float %1054, %1053
  %1056 = lshr i32 %1040, 2
  %1057 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1056
  %1058 = load i32, i32* %1057, align 4, !tbaa !64, !noalias !68
  %1059 = shl i32 %1040, 3
  %1060 = and i32 %1059, 24
  %1061 = lshr i32 %1058, %1060
  %1062 = and i32 %1061, 255
  %1063 = sitofp i32 %1062 to float
  %1064 = fmul fast float %1042, 0x3F70101020000000
  %1065 = fmul fast float %1064, %1063
  %1066 = lshr i32 %1039, 2
  %1067 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1066
  %1068 = load i32, i32* %1067, align 4, !tbaa !64, !noalias !68
  %1069 = shl i32 %1039, 3
  %1070 = and i32 %1069, 24
  %1071 = lshr i32 %1068, %1070
  %1072 = and i32 %1071, 255
  %1073 = sitofp i32 %1072 to float
  %1074 = fmul fast float %1045, 0x3F70101020000000
  %1075 = fmul fast float %1074, %1073
  %1076 = fsub fast float 1.000000e+00, %1055
  %1077 = fsub fast float %1076, %1065
  %1078 = fsub fast float %1077, %1075
  %1079 = fmul fast float %619, 2.000000e+01
  %1080 = fadd fast float %1079, 1.000000e+00
  %1081 = fmul fast float %1078, 2.000000e+01
  %1082 = fsub fast float %1080, %1081
  %1083 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  br label %1084

; <label>:1084                                    ; preds = %1038, %989
  %1085 = phi float [ %1083, %1038 ], [ 1.000000e+00, %989 ]
  store float %1085, float* %708, align 4, !tbaa !82, !noalias !68
  %1086 = fadd fast float %991, %1085
  %1087 = fcmp fast oeq float %1086, 0.000000e+00
  br i1 %1087, label %1088, label %1089, !dx.controlflow.hints !84

; <label>:1088                                    ; preds = %1084
  store float 2.500000e-01, float* %705, align 4
  store float 2.500000e-01, float* %706, align 4
  store float 2.500000e-01, float* %707, align 4
  store float 2.500000e-01, float* %708, align 4
  br label %1089

; <label>:1089                                    ; preds = %1088, %1084
  %1090 = phi float [ 2.500000e-01, %1088 ], [ %801, %1084 ]
  br label %1091

; <label>:1091                                    ; preds = %1355, %1089
  %1092 = phi float [ %1357, %1355 ], [ %1090, %1089 ]
  %1093 = phi float [ %1325, %1355 ], [ 0.000000e+00, %1089 ]
  %1094 = phi float [ %1326, %1355 ], [ 0.000000e+00, %1089 ]
  %1095 = phi float [ %1327, %1355 ], [ 0.000000e+00, %1089 ]
  %1096 = phi float [ %1328, %1355 ], [ 0.000000e+00, %1089 ]
  %1097 = phi float [ %1329, %1355 ], [ 0.000000e+00, %1089 ]
  %1098 = phi float [ %1330, %1355 ], [ 0.000000e+00, %1089 ]
  %1099 = phi float [ %1331, %1355 ], [ 0.000000e+00, %1089 ]
  %1100 = phi float [ %1332, %1355 ], [ 0.000000e+00, %1089 ]
  %1101 = phi float [ %1333, %1355 ], [ 0.000000e+00, %1089 ]
  %1102 = phi float [ %1334, %1355 ], [ 0.000000e+00, %1089 ]
  %1103 = phi float [ %1335, %1355 ], [ 0.000000e+00, %1089 ]
  %1104 = phi float [ %1336, %1355 ], [ 0.000000e+00, %1089 ]
  %1105 = phi float [ %1337, %1355 ], [ 0.000000e+00, %1089 ]
  %1106 = phi float [ %1338, %1355 ], [ 0.000000e+00, %1089 ]
  %1107 = phi float [ %1339, %1355 ], [ 0.000000e+00, %1089 ]
  %1108 = phi float [ %1340, %1355 ], [ 0.000000e+00, %1089 ]
  %1109 = phi float [ %1341, %1355 ], [ 0.000000e+00, %1089 ]
  %1110 = phi float [ %1342, %1355 ], [ 0.000000e+00, %1089 ]
  %1111 = phi float [ %1343, %1355 ], [ 0.000000e+00, %1089 ]
  %1112 = phi float [ %1344, %1355 ], [ 0.000000e+00, %1089 ]
  %1113 = phi float [ %1345, %1355 ], [ 0.000000e+00, %1089 ]
  %1114 = phi float [ %1346, %1355 ], [ 0.000000e+00, %1089 ]
  %1115 = phi float [ %1347, %1355 ], [ 0.000000e+00, %1089 ]
  %1116 = phi float [ %1348, %1355 ], [ 0.000000e+00, %1089 ]
  %1117 = phi float [ %1349, %1355 ], [ 0.000000e+00, %1089 ]
  %1118 = phi float [ %1350, %1355 ], [ 0.000000e+00, %1089 ]
  %1119 = phi float [ %1351, %1355 ], [ 0.000000e+00, %1089 ]
  %1120 = phi float [ %1352, %1355 ], [ 0.000000e+00, %1089 ]
  %1121 = phi i32 [ %1353, %1355 ], [ 0, %1089 ]
  %1122 = fcmp fast ogt float %1092, 0.000000e+00
  br i1 %1122, label %1123, label %1324, !dx.controlflow.hints !85

; <label>:1123                                    ; preds = %1091
  %1124 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %1121
  %1125 = load float, float* %1124, align 4, !tbaa !82, !noalias !68
  %1126 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1121
  %1127 = load i32, i32* %1126, align 4, !tbaa !64, !noalias !68
  %1128 = fmul fast float %1125, %1092
  %1129 = shl i32 %1127, 5
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.i32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.i32 %1130, 2
  %1134 = extractvalue %dx.types.ResRet.i32 %1130, 3
  %1135 = or i32 %1129, 16
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.i32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.i32 %1136, 2
  %1140 = shl i32 %1131, 4
  %1141 = and i32 %1140, 32752
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = lshr i32 %1131, 7
  %1144 = and i32 %1143, 32752
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = lshr i32 %1131, 22
  %1147 = shl nuw nsw i32 %1146, 5
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = and i32 %1132, 255
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1150, 0x3F80204080000000
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = lshr i32 %1132, 8
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = fmul fast float %1155, 0x3F80204080000000
  %1157 = fadd fast float %1156, -1.000000e+00
  %1158 = lshr i32 %1132, 16
  %1159 = and i32 %1158, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F80204080000000
  %1162 = fadd fast float %1161, -1.000000e+00
  %1163 = lshr i32 %1132, 24
  %1164 = uitofp i32 %1163 to float
  %1165 = fmul fast float %1164, 0x3F80204080000000
  %1166 = fadd fast float %1165, -1.000000e+00
  %1167 = and i32 %1133, 255
  %1168 = uitofp i32 %1167 to float
  %1169 = fmul fast float %1168, 0x3F80204080000000
  %1170 = fadd fast float %1169, -1.000000e+00
  %1171 = lshr i32 %1133, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1173, 0x3F80204080000000
  %1175 = fadd fast float %1174, -1.000000e+00
  %1176 = lshr i32 %1133, 16
  %1177 = and i32 %1176, 255
  %1178 = uitofp i32 %1177 to float
  %1179 = fmul fast float %1178, 0x3F80204080000000
  %1180 = fadd fast float %1179, -1.000000e+00
  %1181 = lshr i32 %1133, 24
  %1182 = uitofp i32 %1181 to float
  %1183 = fmul fast float %1182, 0x3F80204080000000
  %1184 = fadd fast float %1183, -1.000000e+00
  %1185 = and i32 %1134, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F80204080000000
  %1188 = fadd fast float %1187, -1.000000e+00
  %1189 = lshr i32 %1134, 8
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1191, 0x3F80204080000000
  %1193 = fadd fast float %1192, -1.000000e+00
  %1194 = lshr i32 %1134, 16
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F80204080000000
  %1198 = fadd fast float %1197, -1.000000e+00
  %1199 = lshr i32 %1134, 24
  %1200 = uitofp i32 %1199 to float
  %1201 = fmul fast float %1200, 0x3F80204080000000
  %1202 = fadd fast float %1201, -1.000000e+00
  %1203 = and i32 %1137, 255
  %1204 = uitofp i32 %1203 to float
  %1205 = fmul fast float %1204, 0x3F80204080000000
  %1206 = fadd fast float %1205, -1.000000e+00
  %1207 = lshr i32 %1137, 8
  %1208 = and i32 %1207, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = fmul fast float %1209, 0x3F80204080000000
  %1211 = fadd fast float %1210, -1.000000e+00
  %1212 = lshr i32 %1137, 16
  %1213 = and i32 %1212, 255
  %1214 = uitofp i32 %1213 to float
  %1215 = fmul fast float %1214, 0x3F80204080000000
  %1216 = fadd fast float %1215, -1.000000e+00
  %1217 = lshr i32 %1137, 24
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1218, 0x3F80204080000000
  %1220 = fadd fast float %1219, -1.000000e+00
  %1221 = and i32 %1138, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1222, 0x3F80204080000000
  %1224 = fadd fast float %1223, -1.000000e+00
  %1225 = lshr i32 %1138, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1227, 0x3F80204080000000
  %1229 = fadd fast float %1228, -1.000000e+00
  %1230 = lshr i32 %1138, 16
  %1231 = and i32 %1230, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F80204080000000
  %1234 = fadd fast float %1233, -1.000000e+00
  %1235 = lshr i32 %1138, 24
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1236, 0x3F80204080000000
  %1238 = fadd fast float %1237, -1.000000e+00
  %1239 = and i32 %1139, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F80204080000000
  %1242 = fadd fast float %1241, -1.000000e+00
  %1243 = lshr i32 %1139, 8
  %1244 = and i32 %1243, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = fmul fast float %1245, 0x3F80204080000000
  %1247 = fadd fast float %1246, -1.000000e+00
  %1248 = lshr i32 %1139, 16
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F80204080000000
  %1252 = fadd fast float %1251, -1.000000e+00
  %1253 = lshr i32 %1139, 24
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F80204080000000
  %1256 = fadd fast float %1255, -1.000000e+00
  %1257 = fmul fast float %1142, %1128
  %1258 = fadd fast float %1257, %1101
  %1259 = fmul fast float %1128, 0x3FFBB67AE0000000
  %1260 = fmul fast float %1259, %1142
  %1261 = fmul fast float %1260, %1152
  %1262 = fadd fast float %1261, %1100
  %1263 = fmul fast float %1260, %1157
  %1264 = fadd fast float %1263, %1099
  %1265 = fmul fast float %1260, %1162
  %1266 = fadd fast float %1265, %1098
  %1267 = fmul fast float %1128, 0x3FFEFBDEC0000000
  %1268 = fmul fast float %1267, %1142
  %1269 = fmul fast float %1268, %1166
  %1270 = fadd fast float %1269, %1097
  %1271 = fmul fast float %1268, %1170
  %1272 = fadd fast float %1271, %1096
  %1273 = fmul fast float %1128, 0x4001E377A0000000
  %1274 = fmul fast float %1273, %1142
  %1275 = fmul fast float %1274, %1175
  %1276 = fadd fast float %1275, %1095
  %1277 = fmul fast float %1268, %1180
  %1278 = fadd fast float %1277, %1094
  %1279 = fmul fast float %1268, %1184
  %1280 = fadd fast float %1279, %1093
  %1281 = fmul fast float %1145, %1128
  %1282 = fadd fast float %1281, %1110
  %1283 = fmul fast float %1259, %1145
  %1284 = fmul fast float %1283, %1188
  %1285 = fadd fast float %1284, %1109
  %1286 = fmul fast float %1283, %1193
  %1287 = fadd fast float %1286, %1108
  %1288 = fmul fast float %1283, %1198
  %1289 = fadd fast float %1288, %1107
  %1290 = fmul fast float %1267, %1145
  %1291 = fmul fast float %1290, %1202
  %1292 = fadd fast float %1291, %1106
  %1293 = fmul fast float %1290, %1206
  %1294 = fadd fast float %1293, %1105
  %1295 = fmul fast float %1273, %1145
  %1296 = fmul fast float %1295, %1211
  %1297 = fadd fast float %1296, %1104
  %1298 = fmul fast float %1290, %1216
  %1299 = fadd fast float %1298, %1103
  %1300 = fmul fast float %1290, %1220
  %1301 = fadd fast float %1300, %1102
  %1302 = fmul fast float %1148, %1128
  %1303 = fadd fast float %1302, %1119
  %1304 = fmul fast float %1259, %1148
  %1305 = fmul fast float %1304, %1224
  %1306 = fadd fast float %1305, %1118
  %1307 = fmul fast float %1304, %1229
  %1308 = fadd fast float %1307, %1117
  %1309 = fmul fast float %1304, %1234
  %1310 = fadd fast float %1309, %1116
  %1311 = fmul fast float %1267, %1148
  %1312 = fmul fast float %1311, %1238
  %1313 = fadd fast float %1312, %1115
  %1314 = fmul fast float %1311, %1242
  %1315 = fadd fast float %1314, %1114
  %1316 = fmul fast float %1273, %1148
  %1317 = fmul fast float %1316, %1247
  %1318 = fadd fast float %1317, %1113
  %1319 = fmul fast float %1311, %1252
  %1320 = fadd fast float %1319, %1112
  %1321 = fmul fast float %1311, %1256
  %1322 = fadd fast float %1321, %1111
  %1323 = fadd fast float %1128, %1120
  br label %1324

; <label>:1324                                    ; preds = %1123, %1091
  %1325 = phi float [ %1280, %1123 ], [ %1093, %1091 ]
  %1326 = phi float [ %1278, %1123 ], [ %1094, %1091 ]
  %1327 = phi float [ %1276, %1123 ], [ %1095, %1091 ]
  %1328 = phi float [ %1272, %1123 ], [ %1096, %1091 ]
  %1329 = phi float [ %1270, %1123 ], [ %1097, %1091 ]
  %1330 = phi float [ %1266, %1123 ], [ %1098, %1091 ]
  %1331 = phi float [ %1264, %1123 ], [ %1099, %1091 ]
  %1332 = phi float [ %1262, %1123 ], [ %1100, %1091 ]
  %1333 = phi float [ %1258, %1123 ], [ %1101, %1091 ]
  %1334 = phi float [ %1301, %1123 ], [ %1102, %1091 ]
  %1335 = phi float [ %1299, %1123 ], [ %1103, %1091 ]
  %1336 = phi float [ %1297, %1123 ], [ %1104, %1091 ]
  %1337 = phi float [ %1294, %1123 ], [ %1105, %1091 ]
  %1338 = phi float [ %1292, %1123 ], [ %1106, %1091 ]
  %1339 = phi float [ %1289, %1123 ], [ %1107, %1091 ]
  %1340 = phi float [ %1287, %1123 ], [ %1108, %1091 ]
  %1341 = phi float [ %1285, %1123 ], [ %1109, %1091 ]
  %1342 = phi float [ %1282, %1123 ], [ %1110, %1091 ]
  %1343 = phi float [ %1322, %1123 ], [ %1111, %1091 ]
  %1344 = phi float [ %1320, %1123 ], [ %1112, %1091 ]
  %1345 = phi float [ %1318, %1123 ], [ %1113, %1091 ]
  %1346 = phi float [ %1315, %1123 ], [ %1114, %1091 ]
  %1347 = phi float [ %1313, %1123 ], [ %1115, %1091 ]
  %1348 = phi float [ %1310, %1123 ], [ %1116, %1091 ]
  %1349 = phi float [ %1308, %1123 ], [ %1117, %1091 ]
  %1350 = phi float [ %1306, %1123 ], [ %1118, %1091 ]
  %1351 = phi float [ %1303, %1123 ], [ %1119, %1091 ]
  %1352 = phi float [ %1323, %1123 ], [ %1120, %1091 ]
  %1353 = add nuw nsw i32 %1121, 1
  %1354 = icmp eq i32 %1353, 4
  br i1 %1354, label %1358, label %1355

; <label>:1355                                    ; preds = %1324
  %1356 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1353
  %1357 = load float, float* %1356, align 4, !tbaa !82, !noalias !68
  br label %1091

; <label>:1358                                    ; preds = %1324
  %1359 = fcmp fast ogt float %1352, 0.000000e+00
  %1360 = fdiv fast float 1.000000e+00, %1352
  %1361 = select i1 %1359, float %1360, float 1.000000e+00
  %1362 = fmul fast float %1361, %1333
  %1363 = fmul fast float %1361, %1332
  %1364 = fmul fast float %1361, %1331
  %1365 = fmul fast float %1361, %1330
  %1366 = fmul fast float %1361, %1329
  %1367 = fmul fast float %1361, %1328
  %1368 = fmul fast float %1361, %1327
  %1369 = fmul fast float %1361, %1326
  %1370 = fmul fast float %1361, %1325
  %1371 = fmul fast float %1361, %1342
  %1372 = fmul fast float %1361, %1341
  %1373 = fmul fast float %1361, %1340
  %1374 = fmul fast float %1361, %1339
  %1375 = fmul fast float %1361, %1338
  %1376 = fmul fast float %1361, %1337
  %1377 = fmul fast float %1361, %1336
  %1378 = fmul fast float %1361, %1335
  %1379 = fmul fast float %1361, %1334
  %1380 = fmul fast float %1361, %1351
  %1381 = fmul fast float %1361, %1350
  %1382 = fmul fast float %1361, %1349
  %1383 = fmul fast float %1361, %1348
  %1384 = fmul fast float %1361, %1347
  %1385 = fmul fast float %1361, %1346
  %1386 = fmul fast float %1361, %1345
  %1387 = fmul fast float %1361, %1344
  %1388 = fmul fast float %1361, %1343
  br label %1389

; <label>:1389                                    ; preds = %1358, %621, %291
  %1390 = phi float [ 0.000000e+00, %291 ], [ %693, %621 ], [ %1388, %1358 ]
  %1391 = phi float [ 0.000000e+00, %291 ], [ %691, %621 ], [ %1387, %1358 ]
  %1392 = phi float [ 0.000000e+00, %291 ], [ %689, %621 ], [ %1386, %1358 ]
  %1393 = phi float [ 0.000000e+00, %291 ], [ %687, %621 ], [ %1385, %1358 ]
  %1394 = phi float [ 0.000000e+00, %291 ], [ %685, %621 ], [ %1384, %1358 ]
  %1395 = phi float [ 0.000000e+00, %291 ], [ %683, %621 ], [ %1383, %1358 ]
  %1396 = phi float [ 0.000000e+00, %291 ], [ %681, %621 ], [ %1382, %1358 ]
  %1397 = phi float [ 0.000000e+00, %291 ], [ %679, %621 ], [ %1381, %1358 ]
  %1398 = phi float [ 0.000000e+00, %291 ], [ %677, %621 ], [ %1380, %1358 ]
  %1399 = phi float [ 0.000000e+00, %291 ], [ %675, %621 ], [ %1379, %1358 ]
  %1400 = phi float [ 0.000000e+00, %291 ], [ %673, %621 ], [ %1378, %1358 ]
  %1401 = phi float [ 0.000000e+00, %291 ], [ %671, %621 ], [ %1377, %1358 ]
  %1402 = phi float [ 0.000000e+00, %291 ], [ %669, %621 ], [ %1376, %1358 ]
  %1403 = phi float [ 0.000000e+00, %291 ], [ %667, %621 ], [ %1375, %1358 ]
  %1404 = phi float [ 0.000000e+00, %291 ], [ %665, %621 ], [ %1374, %1358 ]
  %1405 = phi float [ 0.000000e+00, %291 ], [ %663, %621 ], [ %1373, %1358 ]
  %1406 = phi float [ 0.000000e+00, %291 ], [ %661, %621 ], [ %1372, %1358 ]
  %1407 = phi float [ 0.000000e+00, %291 ], [ %659, %621 ], [ %1371, %1358 ]
  %1408 = phi float [ 0.000000e+00, %291 ], [ %657, %621 ], [ %1370, %1358 ]
  %1409 = phi float [ 0.000000e+00, %291 ], [ %655, %621 ], [ %1369, %1358 ]
  %1410 = phi float [ 0.000000e+00, %291 ], [ %653, %621 ], [ %1368, %1358 ]
  %1411 = phi float [ 0.000000e+00, %291 ], [ %651, %621 ], [ %1367, %1358 ]
  %1412 = phi float [ 0.000000e+00, %291 ], [ %649, %621 ], [ %1366, %1358 ]
  %1413 = phi float [ 0.000000e+00, %291 ], [ %647, %621 ], [ %1365, %1358 ]
  %1414 = phi float [ 0.000000e+00, %291 ], [ %645, %621 ], [ %1364, %1358 ]
  %1415 = phi float [ 0.000000e+00, %291 ], [ %643, %621 ], [ %1363, %1358 ]
  %1416 = phi float [ 0.000000e+00, %291 ], [ %641, %621 ], [ %1362, %1358 ]
  %1417 = phi i32 [ 0, %291 ], [ -1, %621 ], [ %607, %1358 ]
  %1418 = fcmp fast olt float %292, 1.000000e+00
  br i1 %1418, label %1419, label %2079, !dx.controlflow.hints !86

; <label>:1419                                    ; preds = %1389
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1423 = fsub fast float %143, %1421
  %1424 = fsub fast float %144, %1422
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = fmul fast float %1423, %1426
  %1429 = fmul fast float %1424, %1427
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fmul fast float %1431, %1428
  %1433 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1434 = fadd fast float %1432, %1433
  %1435 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1436 = fmul fast float %1435, %1429
  %1437 = extractvalue %dx.types.CBufRet.f32 %1430, 3
  %1438 = fadd fast float %1436, %1437
  %1439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %24, float %1434, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 1
  %1444 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1445 = fsub fast float %1443, %1444
  %1446 = fmul fast float %1445, %1440
  %1447 = fadd fast float %1446, %1444
  %1448 = extractvalue %dx.types.CBufRet.f32 %1442, 3
  %1449 = extractvalue %dx.types.CBufRet.f32 %1442, 2
  %1450 = fsub fast float %1448, %1449
  %1451 = fmul fast float %1450, %1441
  %1452 = fadd fast float %1451, %1449
  %1453 = fsub fast float %145, %1447
  %1454 = fsub fast float %1452, %1447
  %1455 = fdiv fast float %1453, %1454
  %1456 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = fmul fast float %1458, %1456
  %1460 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1461 = fadd fast float %1459, %1460
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1434, float %1438, float %1461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = fmul fast float %1467, %1463
  %1471 = fmul fast float %1468, %1464
  %1472 = fmul fast float %1469, %1465
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1477 = fadd fast float %1470, %1474
  %1478 = fadd fast float %1471, %1475
  %1479 = fadd fast float %1472, %1476
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1482 = fmul fast float %1481, %1428
  %1483 = extractvalue %dx.types.CBufRet.f32 %1480, 1
  %1484 = fadd fast float %1482, %1483
  %1485 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1486 = fmul fast float %1485, %1429
  %1487 = extractvalue %dx.types.CBufRet.f32 %1480, 3
  %1488 = fadd fast float %1486, %1487
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1489, 2
  %1493 = extractvalue %dx.types.CBufRet.f32 %1489, 3
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %1497 = extractvalue %dx.types.CBufRet.f32 %1494, 2
  %1498 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1484, float %1488, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.ResRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.ResRet.f32 %1499, 2
  %1503 = extractvalue %dx.types.ResRet.f32 %1499, 3
  %1504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1484, float %1488, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.ResRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1508 = extractvalue %dx.types.ResRet.f32 %1504, 3
  %1509 = fmul fast float %1500, %1477
  %1510 = fmul fast float %1505, %1477
  %1511 = fmul fast float %1507, %1477
  %1512 = fmul fast float %1503, %1477
  %1513 = fadd fast float %1509, %1490
  %1514 = fadd fast float %1510, %1491
  %1515 = fadd fast float %1511, %1492
  %1516 = fadd fast float %1512, %1493
  %1517 = fmul fast float %1501, %1477
  %1518 = fmul fast float %1506, %1477
  %1519 = fadd fast float %1517, %1495
  %1520 = fadd fast float %1518, %1496
  %1521 = fmul fast float %1502, %1477
  %1522 = fmul fast float %1508, %1477
  %1523 = fadd fast float %1521, %1497
  %1524 = fadd fast float %1522, %1498
  %1525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1484, float %1488, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1484, float %1488, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.ResRet.f32 %1530, 3
  %1535 = fmul fast float %1526, %1478
  %1536 = fmul fast float %1531, %1478
  %1537 = fmul fast float %1533, %1478
  %1538 = fmul fast float %1529, %1478
  %1539 = fadd fast float %1513, %1535
  %1540 = fadd fast float %1514, %1536
  %1541 = fadd fast float %1515, %1537
  %1542 = fadd fast float %1516, %1538
  %1543 = fmul fast float %1527, %1478
  %1544 = fmul fast float %1532, %1478
  %1545 = fadd fast float %1519, %1543
  %1546 = fadd fast float %1520, %1544
  %1547 = fmul fast float %1528, %1478
  %1548 = fmul fast float %1534, %1478
  %1549 = fadd fast float %1523, %1547
  %1550 = fadd fast float %1524, %1548
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1484, float %1488, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1484, float %1488, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.ResRet.f32 %1556, 2
  %1560 = extractvalue %dx.types.ResRet.f32 %1556, 3
  %1561 = fmul fast float %1552, %1479
  %1562 = fmul fast float %1557, %1479
  %1563 = fmul fast float %1559, %1479
  %1564 = fmul fast float %1555, %1479
  %1565 = fadd fast float %1539, %1561
  %1566 = fadd fast float %1540, %1562
  %1567 = fadd fast float %1541, %1563
  %1568 = fadd fast float %1542, %1564
  %1569 = fmul fast float %1553, %1479
  %1570 = fmul fast float %1558, %1479
  %1571 = fadd fast float %1545, %1569
  %1572 = fadd fast float %1546, %1570
  %1573 = fmul fast float %1554, %1479
  %1574 = fmul fast float %1560, %1479
  %1575 = fadd fast float %1549, %1573
  %1576 = fadd fast float %1550, %1574
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = fsub fast float %143, %1578
  %1580 = fsub fast float %1421, %143
  %1581 = call float @dx.op.binary.f32(i32 35, float %1580, float %1579)  ; FMax(a,b)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1583 = fsub fast float %144, %1582
  %1584 = fsub fast float %1422, %144
  %1585 = call float @dx.op.binary.f32(i32 35, float %1584, float %1583)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1581, float %1585)  ; FMax(a,b)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1588 = fmul fast float %1587, %1586
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1594 = extractvalue %dx.types.CBufRet.f32 %1590, 3
  %1595 = fsub fast float %1591, %1565
  %1596 = fsub fast float %1592, %1566
  %1597 = fsub fast float %1593, %1567
  %1598 = fsub fast float %1594, %1568
  %1599 = fmul fast float %1595, %1589
  %1600 = fmul fast float %1596, %1589
  %1601 = fmul fast float %1597, %1589
  %1602 = fmul fast float %1598, %1589
  %1603 = fadd fast float %1599, %1565
  %1604 = fadd fast float %1600, %1566
  %1605 = fadd fast float %1601, %1567
  %1606 = fadd fast float %1602, %1568
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.CBufRet.f32 %1607, 1
  %1610 = fsub fast float %1608, %1571
  %1611 = fsub fast float %1609, %1572
  %1612 = fmul fast float %1610, %1589
  %1613 = fmul fast float %1611, %1589
  %1614 = fadd fast float %1612, %1571
  %1615 = fadd fast float %1613, %1572
  %1616 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1617 = extractvalue %dx.types.CBufRet.f32 %1607, 3
  %1618 = fsub fast float %1616, %1575
  %1619 = fsub fast float %1617, %1576
  %1620 = fmul fast float %1618, %1589
  %1621 = fmul fast float %1619, %1589
  %1622 = fadd fast float %1620, %1575
  %1623 = fadd fast float %1621, %1576
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = fmul fast float %1625, %1603
  %1627 = fmul fast float %1625, %1604
  %1628 = fmul fast float %1625, %1605
  %1629 = fmul fast float %1625, %1606
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = fmul fast float %1631, %1614
  %1633 = fmul fast float %1631, %1615
  %1634 = fadd fast float %1632, %1626
  %1635 = fadd fast float %1633, %1628
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 0
  %1638 = fmul fast float %1637, %1622
  %1639 = fmul fast float %1637, %1623
  %1640 = fadd fast float %1634, %1638
  %1641 = fadd fast float %1635, %1639
  %1642 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1643 = fmul fast float %1642, %1603
  %1644 = fmul fast float %1642, %1604
  %1645 = fmul fast float %1642, %1605
  %1646 = fmul fast float %1642, %1606
  %1647 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1648 = fmul fast float %1647, %1614
  %1649 = fmul fast float %1647, %1615
  %1650 = fadd fast float %1648, %1643
  %1651 = fadd fast float %1649, %1645
  %1652 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1653 = fmul fast float %1652, %1622
  %1654 = fmul fast float %1652, %1623
  %1655 = fadd fast float %1650, %1653
  %1656 = fadd fast float %1651, %1654
  %1657 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1658 = fmul fast float %1657, %1603
  %1659 = fmul fast float %1657, %1604
  %1660 = fmul fast float %1657, %1605
  %1661 = fmul fast float %1657, %1606
  %1662 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1663 = fmul fast float %1662, %1614
  %1664 = fmul fast float %1662, %1615
  %1665 = fadd fast float %1663, %1658
  %1666 = fadd fast float %1664, %1660
  %1667 = extractvalue %dx.types.CBufRet.f32 %1636, 2
  %1668 = fmul fast float %1667, %1622
  %1669 = fmul fast float %1667, %1623
  %1670 = fadd fast float %1665, %1668
  %1671 = fadd fast float %1666, %1669
  %1672 = fmul fast float %1659, %1659
  %1673 = fmul fast float %1671, %1671
  %1674 = fmul fast float %1661, %1661
  %1675 = fadd fast float %1674, %1672
  %1676 = fadd fast float %1675, %1673
  %1677 = call float @dx.op.unary.f32(i32 24, float %1676)  ; Sqrt(value)
  %1678 = fcmp fast ugt float %1677, 0.000000e+00
  br i1 %1678, label %1679, label %1694, !dx.controlflow.hints !87

; <label>:1679                                    ; preds = %1419
  %1680 = fsub fast float -0.000000e+00, %1661
  %1681 = fdiv fast float %1680, %1677
  %1682 = fsub fast float -0.000000e+00, %1659
  %1683 = fdiv fast float %1682, %1677
  %1684 = fdiv fast float %1671, %1677
  %1685 = fmul fast float %1670, 0x3FE279A760000000
  %1686 = fmul fast float %1683, %1659
  %1687 = fmul fast float %1684, %1671
  %1688 = fmul fast float %1681, %1661
  %1689 = fadd fast float %1686, %1688
  %1690 = fsub fast float %1689, %1687
  %1691 = call float @dx.op.unary.f32(i32 6, float %1690)  ; FAbs(value)
  %1692 = fadd fast float %1691, 0x3DDB7CDFE0000000
  %1693 = fdiv fast float %1685, %1692
  br label %1694

; <label>:1694                                    ; preds = %1679, %1419
  %1695 = phi float [ %1693, %1679 ], [ 1.000000e+00, %1419 ]
  %1696 = fmul fast float %1644, %1644
  %1697 = fmul fast float %1656, %1656
  %1698 = fmul fast float %1646, %1646
  %1699 = fadd fast float %1698, %1696
  %1700 = fadd fast float %1699, %1697
  %1701 = call float @dx.op.unary.f32(i32 24, float %1700)  ; Sqrt(value)
  %1702 = fcmp fast ugt float %1701, 0.000000e+00
  br i1 %1702, label %1703, label %1718, !dx.controlflow.hints !87

; <label>:1703                                    ; preds = %1694
  %1704 = fsub fast float -0.000000e+00, %1646
  %1705 = fdiv fast float %1704, %1701
  %1706 = fsub fast float -0.000000e+00, %1644
  %1707 = fdiv fast float %1706, %1701
  %1708 = fdiv fast float %1656, %1701
  %1709 = fmul fast float %1655, 0x3FE279A760000000
  %1710 = fmul fast float %1707, %1644
  %1711 = fmul fast float %1708, %1656
  %1712 = fmul fast float %1705, %1646
  %1713 = fadd fast float %1710, %1712
  %1714 = fsub fast float %1713, %1711
  %1715 = call float @dx.op.unary.f32(i32 6, float %1714)  ; FAbs(value)
  %1716 = fadd fast float %1715, 0x3DDB7CDFE0000000
  %1717 = fdiv fast float %1709, %1716
  br label %1718

; <label>:1718                                    ; preds = %1703, %1694
  %1719 = phi float [ %1717, %1703 ], [ 1.000000e+00, %1694 ]
  %1720 = call float @dx.op.binary.f32(i32 36, float %1719, float %1695)  ; FMin(a,b)
  %1721 = fmul fast float %1627, %1627
  %1722 = fmul fast float %1641, %1641
  %1723 = fmul fast float %1629, %1629
  %1724 = fadd fast float %1723, %1721
  %1725 = fadd fast float %1724, %1722
  %1726 = call float @dx.op.unary.f32(i32 24, float %1725)  ; Sqrt(value)
  %1727 = fcmp fast ugt float %1726, 0.000000e+00
  br i1 %1727, label %1728, label %1743, !dx.controlflow.hints !87

; <label>:1728                                    ; preds = %1718
  %1729 = fsub fast float -0.000000e+00, %1629
  %1730 = fdiv fast float %1729, %1726
  %1731 = fsub fast float -0.000000e+00, %1627
  %1732 = fdiv fast float %1731, %1726
  %1733 = fdiv fast float %1641, %1726
  %1734 = fmul fast float %1640, 0x3FE279A760000000
  %1735 = fmul fast float %1732, %1627
  %1736 = fmul fast float %1733, %1641
  %1737 = fmul fast float %1730, %1629
  %1738 = fadd fast float %1735, %1737
  %1739 = fsub fast float %1738, %1736
  %1740 = call float @dx.op.unary.f32(i32 6, float %1739)  ; FAbs(value)
  %1741 = fadd fast float %1740, 0x3DDB7CDFE0000000
  %1742 = fdiv fast float %1734, %1741
  br label %1743

; <label>:1743                                    ; preds = %1728, %1718
  %1744 = phi float [ %1742, %1728 ], [ 1.000000e+00, %1718 ]
  %1745 = call float @dx.op.binary.f32(i32 36, float %1744, float %1720)  ; FMin(a,b)
  %1746 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  %1747 = fcmp fast olt float %1746, 1.000000e+00
  br i1 %1747, label %1748, label %1758, !dx.controlflow.hints !88

; <label>:1748                                    ; preds = %1743
  %1749 = fmul fast float %1746, %1627
  %1750 = fmul fast float %1746, %1641
  %1751 = fmul fast float %1746, %1629
  %1752 = fmul fast float %1746, %1644
  %1753 = fmul fast float %1746, %1656
  %1754 = fmul fast float %1746, %1646
  %1755 = fmul fast float %1746, %1659
  %1756 = fmul fast float %1746, %1671
  %1757 = fmul fast float %1746, %1661
  br label %1758

; <label>:1758                                    ; preds = %1748, %1743
  %1759 = phi float [ %1755, %1748 ], [ %1659, %1743 ]
  %1760 = phi float [ %1756, %1748 ], [ %1671, %1743 ]
  %1761 = phi float [ %1757, %1748 ], [ %1661, %1743 ]
  %1762 = phi float [ %1752, %1748 ], [ %1644, %1743 ]
  %1763 = phi float [ %1753, %1748 ], [ %1656, %1743 ]
  %1764 = phi float [ %1754, %1748 ], [ %1646, %1743 ]
  %1765 = phi float [ %1749, %1748 ], [ %1627, %1743 ]
  %1766 = phi float [ %1750, %1748 ], [ %1641, %1743 ]
  %1767 = phi float [ %1751, %1748 ], [ %1629, %1743 ]
  %1768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1640)  ; FMax(a,b)
  %1769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1655)  ; FMax(a,b)
  %1770 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1670)  ; FMax(a,b)
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = fcmp fast ogt float %1772, 0.000000e+00
  %1774 = fcmp fast oge float %1428, 0.000000e+00
  %1775 = and i1 %1774, %1773
  %1776 = fcmp fast ole float %1428, 1.000000e+00
  %1777 = and i1 %1776, %1775
  %1778 = fcmp fast oge float %1429, 0.000000e+00
  %1779 = and i1 %1778, %1777
  %1780 = fcmp fast ole float %1429, 1.000000e+00
  %1781 = and i1 %1780, %1779
  br i1 %1781, label %1782, label %1927, !dx.controlflow.hints !89

; <label>:1782                                    ; preds = %1758
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1786 = fmul fast float %1784, %1428
  %1787 = fmul fast float %1785, %1429
  %1788 = call float @dx.op.unary.f32(i32 27, float %1786)  ; Round_ni(value)
  %1789 = call float @dx.op.unary.f32(i32 27, float %1787)  ; Round_ni(value)
  %1790 = fptosi float %1788 to i32
  %1791 = fptosi float %1789 to i32
  %1792 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1790, i32 %1791, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 65535
  %1795 = lshr i32 %1793, 16
  %1796 = icmp eq i32 %1794, 65535
  br i1 %1796, label %1833, label %1797, !dx.controlflow.hints !90

; <label>:1797                                    ; preds = %1782
  %1798 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1799 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1801 = fmul fast float %1799, %1428
  %1802 = fmul fast float %1800, %1429
  %1803 = fmul fast float %1801, 1.250000e-01
  %1804 = fmul fast float %1802, 1.250000e-01
  %1805 = call float @dx.op.unary.f32(i32 27, float %1803)  ; Round_ni(value)
  %1806 = call float @dx.op.unary.f32(i32 27, float %1804)  ; Round_ni(value)
  %1807 = fmul fast float %1805, 8.000000e+00
  %1808 = fmul fast float %1806, 8.000000e+00
  %1809 = and i32 %1793, 255
  %1810 = lshr i32 %1793, 8
  %1811 = and i32 %1810, 255
  %1812 = mul nuw nsw i32 %1809, 9
  %1813 = uitofp i32 %1812 to float
  %1814 = mul nuw nsw i32 %1811, 9
  %1815 = uitofp i32 %1814 to float
  %1816 = fadd fast float %1813, 5.000000e-01
  %1817 = fadd fast float %1816, %1801
  %1818 = fsub fast float %1817, %1807
  %1819 = fadd fast float %1815, 5.000000e-01
  %1820 = fadd fast float %1819, %1802
  %1821 = fsub fast float %1820, %1808
  %1822 = fdiv fast float %1818, %1772
  %1823 = fdiv fast float %1821, %1798
  %1824 = fmul fast float %1456, 4.375000e-01
  %1825 = fadd fast float %1824, 3.125000e-02
  %1826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1822, float %1823, float %1825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.ResRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.ResRet.f32 %1826, 2
  %1830 = fadd fast float %1827, %1768
  %1831 = fadd fast float %1828, %1769
  %1832 = fadd fast float %1829, %1770
  br label %1833

; <label>:1833                                    ; preds = %1797, %1782
  %1834 = phi float [ %1832, %1797 ], [ %1770, %1782 ]
  %1835 = phi float [ %1831, %1797 ], [ %1769, %1782 ]
  %1836 = phi float [ %1830, %1797 ], [ %1768, %1782 ]
  %1837 = icmp eq i32 %1795, 65535
  br i1 %1837, label %1927, label %1838, !dx.controlflow.hints !91

; <label>:1838                                    ; preds = %1833
  %1839 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1842 = fmul fast float %1840, %1428
  %1843 = fmul fast float %1841, %1429
  %1844 = fmul fast float %1842, 1.250000e-01
  %1845 = fmul fast float %1843, 1.250000e-01
  %1846 = call float @dx.op.unary.f32(i32 27, float %1844)  ; Round_ni(value)
  %1847 = call float @dx.op.unary.f32(i32 27, float %1845)  ; Round_ni(value)
  %1848 = fmul fast float %1846, 8.000000e+00
  %1849 = fmul fast float %1847, 8.000000e+00
  %1850 = fsub fast float %1842, %1848
  %1851 = fsub fast float %1843, %1849
  %1852 = fadd fast float %1850, 5.000000e-01
  %1853 = fadd fast float %1851, 5.000000e-01
  %1854 = and i32 %1795, 255
  %1855 = lshr i32 %1793, 24
  %1856 = mul nuw nsw i32 %1854, 9
  %1857 = uitofp i32 %1856 to float
  %1858 = mul nuw nsw i32 %1855, 9
  %1859 = uitofp i32 %1858 to float
  %1860 = fadd fast float %1852, %1857
  %1861 = fadd fast float %1853, %1859
  %1862 = fdiv fast float %1860, %1772
  %1863 = fdiv fast float %1861, %1839
  %1864 = fmul fast float %1456, 4.375000e-01
  %1865 = fadd fast float %1864, 3.125000e-02
  %1866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1862, float %1863, float %1865, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.ResRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.ResRet.f32 %1866, 2
  %1870 = fadd fast float %1864, 5.312500e-01
  %1871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1862, float %1863, float %1870, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = fmul fast float %1872, 2.000000e+00
  %1876 = fmul fast float %1873, 2.000000e+00
  %1877 = fmul fast float %1874, 2.000000e+00
  %1878 = fadd fast float %1875, -1.000000e+00
  %1879 = fadd fast float %1876, -1.000000e+00
  %1880 = fadd fast float %1877, -1.000000e+00
  %1881 = fmul fast float %1878, %1878
  %1882 = fmul fast float %1879, %1879
  %1883 = fadd fast float %1881, %1882
  %1884 = fmul fast float %1880, %1880
  %1885 = fadd fast float %1883, %1884
  %1886 = call float @dx.op.unary.f32(i32 24, float %1885)  ; Sqrt(value)
  %1887 = fcmp fast ogt float %1886, 0.000000e+00
  br i1 %1887, label %1888, label %1892, !dx.controlflow.hints !92

; <label>:1888                                    ; preds = %1838
  %1889 = fdiv fast float %1878, %1886
  %1890 = fdiv fast float %1879, %1886
  %1891 = fdiv fast float %1880, %1886
  br label %1892

; <label>:1892                                    ; preds = %1888, %1838
  %1893 = phi float [ %1889, %1888 ], [ 0.000000e+00, %1838 ]
  %1894 = phi float [ %1890, %1888 ], [ 0.000000e+00, %1838 ]
  %1895 = phi float [ %1891, %1888 ], [ 0.000000e+00, %1838 ]
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.CBufRet.f32 %1896, 1
  %1899 = fsub fast float %143, %1897
  %1900 = fsub fast float %144, %1898
  %1901 = fmul fast float %1899, %1899
  %1902 = fmul fast float %1900, %1900
  %1903 = fadd fast float %1901, %1902
  %1904 = call float @dx.op.unary.f32(i32 24, float %1903)  ; Sqrt(value)
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = fsub fast float %1904, %1906
  %1909 = fdiv fast float %1908, %1907
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1911 = fmul fast float %1910, 2.000000e+00
  %1912 = fsub fast float 3.000000e+00, %1911
  %1913 = fmul fast float %1910, %1910
  %1914 = fmul fast float %1913, %1912
  %1915 = call float @dx.op.dot3.f32(i32 55, float %1893, float %1894, float %1895, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1916 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1915)  ; FMax(a,b)
  %1917 = fmul fast float %1916, 0x400C5BF8A0000000
  %1918 = fmul fast float %1914, %1867
  %1919 = fmul fast float %1918, %1917
  %1920 = fadd fast float %1919, %1836
  %1921 = fmul fast float %1914, %1868
  %1922 = fmul fast float %1921, %1917
  %1923 = fadd fast float %1922, %1835
  %1924 = fmul fast float %1914, %1869
  %1925 = fmul fast float %1924, %1917
  %1926 = fadd fast float %1925, %1834
  br label %1927

; <label>:1927                                    ; preds = %1892, %1833, %1758
  %1928 = phi float [ %1926, %1892 ], [ %1834, %1833 ], [ %1770, %1758 ]
  %1929 = phi float [ %1923, %1892 ], [ %1835, %1833 ], [ %1769, %1758 ]
  %1930 = phi float [ %1920, %1892 ], [ %1836, %1833 ], [ %1768, %1758 ]
  %1931 = fcmp fast ogt float %145, %1452
  %1932 = and i1 %1774, %1931
  %1933 = and i1 %1776, %1932
  %1934 = and i1 %1778, %1933
  %1935 = and i1 %1780, %1934
  br i1 %1935, label %1936, label %1993, !dx.controlflow.hints !93

; <label>:1936                                    ; preds = %1927
  %1937 = fmul fast float %1454, 0x3FC24924A0000000
  %1938 = fsub fast float %145, %1452
  %1939 = fdiv fast float %1938, %1937
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.f32 %1941, 0
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.CBufRet.f32 %1943, 2
  %1947 = fsub fast float %1942, %1930
  %1948 = fsub fast float %1944, %1765
  %1949 = fsub fast float %1945, %1766
  %1950 = fsub fast float %1946, %1767
  %1951 = fmul fast float %1947, %1940
  %1952 = fmul fast float %1948, %1940
  %1953 = fmul fast float %1949, %1940
  %1954 = fmul fast float %1950, %1940
  %1955 = fadd fast float %1951, %1930
  %1956 = fadd fast float %1952, %1765
  %1957 = fadd fast float %1953, %1766
  %1958 = fadd fast float %1954, %1767
  %1959 = extractvalue %dx.types.CBufRet.f32 %1941, 1
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1963 = extractvalue %dx.types.CBufRet.f32 %1960, 2
  %1964 = fsub fast float %1959, %1929
  %1965 = fsub fast float %1961, %1762
  %1966 = fsub fast float %1962, %1763
  %1967 = fsub fast float %1963, %1764
  %1968 = fmul fast float %1964, %1940
  %1969 = fmul fast float %1965, %1940
  %1970 = fmul fast float %1966, %1940
  %1971 = fmul fast float %1967, %1940
  %1972 = fadd fast float %1968, %1929
  %1973 = fadd fast float %1969, %1762
  %1974 = fadd fast float %1970, %1763
  %1975 = fadd fast float %1971, %1764
  %1976 = extractvalue %dx.types.CBufRet.f32 %1941, 2
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.CBufRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.CBufRet.f32 %1977, 2
  %1981 = fsub fast float %1976, %1928
  %1982 = fsub fast float %1978, %1759
  %1983 = fsub fast float %1979, %1760
  %1984 = fsub fast float %1980, %1761
  %1985 = fmul fast float %1981, %1940
  %1986 = fmul fast float %1982, %1940
  %1987 = fmul fast float %1983, %1940
  %1988 = fmul fast float %1984, %1940
  %1989 = fadd fast float %1985, %1928
  %1990 = fadd fast float %1986, %1759
  %1991 = fadd fast float %1987, %1760
  %1992 = fadd fast float %1988, %1761
  br label %1993

; <label>:1993                                    ; preds = %1936, %1927
  %1994 = phi float [ %1989, %1936 ], [ %1928, %1927 ]
  %1995 = phi float [ %1990, %1936 ], [ %1759, %1927 ]
  %1996 = phi float [ %1991, %1936 ], [ %1760, %1927 ]
  %1997 = phi float [ %1992, %1936 ], [ %1761, %1927 ]
  %1998 = phi float [ %1972, %1936 ], [ %1929, %1927 ]
  %1999 = phi float [ %1973, %1936 ], [ %1762, %1927 ]
  %2000 = phi float [ %1974, %1936 ], [ %1763, %1927 ]
  %2001 = phi float [ %1975, %1936 ], [ %1764, %1927 ]
  %2002 = phi float [ %1955, %1936 ], [ %1930, %1927 ]
  %2003 = phi float [ %1956, %1936 ], [ %1765, %1927 ]
  %2004 = phi float [ %1957, %1936 ], [ %1766, %1927 ]
  %2005 = phi float [ %1958, %1936 ], [ %1767, %1927 ]
  %2006 = extractvalue %dx.types.CBufRet.f32 %1577, 3
  %2007 = fmul fast float %2006, %2002
  %2008 = fmul fast float %2006, %1998
  %2009 = fmul fast float %2006, %1994
  %2010 = fmul fast float %2003, 1.500000e+00
  %2011 = fmul fast float %2010, %2006
  %2012 = fmul fast float %2004, 1.500000e+00
  %2013 = fmul fast float %2012, %2006
  %2014 = fmul fast float %2005, 1.500000e+00
  %2015 = fmul fast float %2014, %2006
  %2016 = fmul fast float %1999, 1.500000e+00
  %2017 = fmul fast float %2016, %2006
  %2018 = fmul fast float %2000, 1.500000e+00
  %2019 = fmul fast float %2018, %2006
  %2020 = fmul fast float %2001, 1.500000e+00
  %2021 = fmul fast float %2020, %2006
  %2022 = fmul fast float %1995, 1.500000e+00
  %2023 = fmul fast float %2022, %2006
  %2024 = fmul fast float %1996, 1.500000e+00
  %2025 = fmul fast float %2024, %2006
  %2026 = fmul fast float %1997, 1.500000e+00
  %2027 = fmul fast float %2026, %2006
  %2028 = fsub fast float %1416, %2007
  %2029 = fmul fast float %2028, %292
  %2030 = fadd fast float %2029, %2007
  %2031 = fsub fast float %1415, %2011
  %2032 = fmul fast float %2031, %292
  %2033 = fadd fast float %2032, %2011
  %2034 = fsub fast float %1414, %2013
  %2035 = fmul fast float %2034, %292
  %2036 = fadd fast float %2035, %2013
  %2037 = fsub fast float %1413, %2015
  %2038 = fmul fast float %2037, %292
  %2039 = fadd fast float %2038, %2015
  %2040 = fmul fast float %1412, %292
  %2041 = fmul fast float %1411, %292
  %2042 = fmul fast float %1410, %292
  %2043 = fmul fast float %1409, %292
  %2044 = fmul fast float %1408, %292
  %2045 = fsub fast float %1407, %2008
  %2046 = fmul fast float %2045, %292
  %2047 = fadd fast float %2046, %2008
  %2048 = fsub fast float %1406, %2017
  %2049 = fmul fast float %2048, %292
  %2050 = fadd fast float %2049, %2017
  %2051 = fsub fast float %1405, %2019
  %2052 = fmul fast float %2051, %292
  %2053 = fadd fast float %2052, %2019
  %2054 = fsub fast float %1404, %2021
  %2055 = fmul fast float %2054, %292
  %2056 = fadd fast float %2055, %2021
  %2057 = fmul fast float %1403, %292
  %2058 = fmul fast float %1402, %292
  %2059 = fmul fast float %1401, %292
  %2060 = fmul fast float %1400, %292
  %2061 = fmul fast float %1399, %292
  %2062 = fsub fast float %1398, %2009
  %2063 = fmul fast float %2062, %292
  %2064 = fadd fast float %2063, %2009
  %2065 = fsub fast float %1397, %2023
  %2066 = fmul fast float %2065, %292
  %2067 = fadd fast float %2066, %2023
  %2068 = fsub fast float %1396, %2025
  %2069 = fmul fast float %2068, %292
  %2070 = fadd fast float %2069, %2025
  %2071 = fsub fast float %1395, %2027
  %2072 = fmul fast float %2071, %292
  %2073 = fadd fast float %2072, %2027
  %2074 = fmul fast float %1394, %292
  %2075 = fmul fast float %1393, %292
  %2076 = fmul fast float %1392, %292
  %2077 = fmul fast float %1391, %292
  %2078 = fmul fast float %1390, %292
  br label %2079

; <label>:2079                                    ; preds = %1993, %1389
  %2080 = phi float [ %2078, %1993 ], [ %1390, %1389 ]
  %2081 = phi float [ %2077, %1993 ], [ %1391, %1389 ]
  %2082 = phi float [ %2076, %1993 ], [ %1392, %1389 ]
  %2083 = phi float [ %2075, %1993 ], [ %1393, %1389 ]
  %2084 = phi float [ %2074, %1993 ], [ %1394, %1389 ]
  %2085 = phi float [ %2073, %1993 ], [ %1395, %1389 ]
  %2086 = phi float [ %2070, %1993 ], [ %1396, %1389 ]
  %2087 = phi float [ %2067, %1993 ], [ %1397, %1389 ]
  %2088 = phi float [ %2064, %1993 ], [ %1398, %1389 ]
  %2089 = phi float [ %2061, %1993 ], [ %1399, %1389 ]
  %2090 = phi float [ %2060, %1993 ], [ %1400, %1389 ]
  %2091 = phi float [ %2059, %1993 ], [ %1401, %1389 ]
  %2092 = phi float [ %2058, %1993 ], [ %1402, %1389 ]
  %2093 = phi float [ %2057, %1993 ], [ %1403, %1389 ]
  %2094 = phi float [ %2056, %1993 ], [ %1404, %1389 ]
  %2095 = phi float [ %2053, %1993 ], [ %1405, %1389 ]
  %2096 = phi float [ %2050, %1993 ], [ %1406, %1389 ]
  %2097 = phi float [ %2047, %1993 ], [ %1407, %1389 ]
  %2098 = phi float [ %2044, %1993 ], [ %1408, %1389 ]
  %2099 = phi float [ %2043, %1993 ], [ %1409, %1389 ]
  %2100 = phi float [ %2042, %1993 ], [ %1410, %1389 ]
  %2101 = phi float [ %2041, %1993 ], [ %1411, %1389 ]
  %2102 = phi float [ %2040, %1993 ], [ %1412, %1389 ]
  %2103 = phi float [ %2039, %1993 ], [ %1413, %1389 ]
  %2104 = phi float [ %2036, %1993 ], [ %1414, %1389 ]
  %2105 = phi float [ %2033, %1993 ], [ %1415, %1389 ]
  %2106 = phi float [ %2030, %1993 ], [ %1416, %1389 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 %30, i32 %1417, i32 %1417, i32 %1417, i32 %1417, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 2
  %2109 = fmul fast float %2108, %2108
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2114 = fmul fast float %2106, 0x3FD20DD760000000
  %2115 = fmul fast float %2113, %2104
  %2116 = fmul fast float %2113, %2113
  %2117 = fmul fast float %2116, 0x3FEE471020000000
  %2118 = fadd fast float %2117, 0xBFD42F6020000000
  %2119 = fmul fast float %2118, %2100
  %2120 = fmul fast float %2111, %2103
  %2121 = fmul fast float %2112, %2105
  %2122 = fmul fast float %2113, 0x3FF17B1420000000
  %2123 = fmul fast float %2109, %2099
  %2124 = fmul fast float %2123, %2111
  %2125 = fmul fast float %2124, %2122
  %2126 = fmul fast float %2109, %2101
  %2127 = fmul fast float %2126, %2112
  %2128 = fmul fast float %2127, %2122
  %2129 = fmul fast float %2111, %2111
  %2130 = fmul fast float %2112, %2112
  %2131 = fsub fast float %2129, %2130
  %2132 = fmul fast float %2098, 0x3FE17B1420000000
  %2133 = fmul fast float %2132, %2131
  %2134 = fmul fast float %2102, 0x3FF17B1420000000
  %2135 = fmul fast float %2134, %2112
  %2136 = fmul fast float %2135, %2111
  %2137 = fadd fast float %2133, %2136
  %2138 = fadd fast float %2137, %2119
  %2139 = fmul fast float %2138, %2109
  %2140 = fsub fast float %2121, %2115
  %2141 = fadd fast float %2140, %2120
  %2142 = fmul fast float %2141, 0x3FDF454380000000
  %2143 = fmul fast float %2142, %2108
  %2144 = fsub fast float %2114, %2125
  %2145 = fsub fast float %2144, %2128
  %2146 = fadd fast float %2145, %2139
  %2147 = fadd fast float %2146, %2143
  %2148 = fmul fast float %2097, 0x3FD20DD760000000
  %2149 = fmul fast float %2113, %2095
  %2150 = fmul fast float %2118, %2091
  %2151 = fmul fast float %2111, %2094
  %2152 = fmul fast float %2112, %2096
  %2153 = fmul fast float %2109, %2090
  %2154 = fmul fast float %2153, %2111
  %2155 = fmul fast float %2154, %2122
  %2156 = fmul fast float %2109, %2092
  %2157 = fmul fast float %2156, %2112
  %2158 = fmul fast float %2157, %2122
  %2159 = fmul fast float %2089, 0x3FE17B1420000000
  %2160 = fmul fast float %2159, %2131
  %2161 = fmul fast float %2093, 0x3FF17B1420000000
  %2162 = fmul fast float %2161, %2112
  %2163 = fmul fast float %2162, %2111
  %2164 = fadd fast float %2160, %2163
  %2165 = fadd fast float %2164, %2150
  %2166 = fmul fast float %2165, %2109
  %2167 = fsub fast float %2152, %2149
  %2168 = fadd fast float %2167, %2151
  %2169 = fmul fast float %2168, 0x3FDF454380000000
  %2170 = fmul fast float %2169, %2108
  %2171 = fsub fast float %2148, %2155
  %2172 = fsub fast float %2171, %2158
  %2173 = fadd fast float %2172, %2166
  %2174 = fadd fast float %2173, %2170
  %2175 = fmul fast float %2088, 0x3FD20DD760000000
  %2176 = fmul fast float %2113, %2086
  %2177 = fmul fast float %2118, %2082
  %2178 = fmul fast float %2111, %2085
  %2179 = fmul fast float %2112, %2087
  %2180 = fmul fast float %2109, %2081
  %2181 = fmul fast float %2180, %2111
  %2182 = fmul fast float %2181, %2122
  %2183 = fmul fast float %2109, %2083
  %2184 = fmul fast float %2183, %2112
  %2185 = fmul fast float %2184, %2122
  %2186 = fmul fast float %2080, 0x3FE17B1420000000
  %2187 = fmul fast float %2186, %2131
  %2188 = fmul fast float %2084, 0x3FF17B1420000000
  %2189 = fmul fast float %2188, %2112
  %2190 = fmul fast float %2189, %2111
  %2191 = fadd fast float %2187, %2190
  %2192 = fadd fast float %2191, %2177
  %2193 = fmul fast float %2192, %2109
  %2194 = fsub fast float %2179, %2176
  %2195 = fadd fast float %2194, %2178
  %2196 = fmul fast float %2195, 0x3FDF454380000000
  %2197 = fmul fast float %2196, %2108
  %2198 = fsub fast float %2175, %2182
  %2199 = fsub fast float %2198, %2185
  %2200 = fadd fast float %2199, %2193
  %2201 = fadd fast float %2200, %2197
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 3
  %2204 = fmul fast float %2147, %2203
  %2205 = fmul fast float %2174, %2203
  %2206 = fmul fast float %2201, %2203
  %2207 = icmp eq i32 %257, 0
  br i1 %2207, label %2244, label %2208, !dx.controlflow.hints !94

; <label>:2208                                    ; preds = %2079
  %2209 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %24, float %254, float %255, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  %2211 = extractvalue %dx.types.ResRet.f32 %2209, 1
  %2212 = extractvalue %dx.types.ResRet.f32 %2209, 2
  %2213 = extractvalue %dx.types.ResRet.f32 %2209, 3
  %2214 = call float @dx.op.binary.f32(i32 36, float %2211, float %2212)  ; FMin(a,b)
  %2215 = call float @dx.op.binary.f32(i32 36, float %2210, float %2214)  ; FMin(a,b)
  %2216 = call float @dx.op.binary.f32(i32 36, float %2215, float %2213)  ; FMin(a,b)
  %2217 = fmul fast float %2216, 2.550000e+02
  %2218 = fadd fast float %2217, 0x3F70101020000000
  %2219 = fptoui float %2218 to i32
  %2220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.i32 %2220, 1
  %2222 = uitofp i32 %2221 to float
  %2223 = fmul fast float %2222, %256
  %2224 = fptosi float %2223 to i32
  %2225 = icmp slt i32 %2224, %2219
  br i1 %2225, label %2226, label %2244, !dx.controlflow.hints !95

; <label>:2226                                    ; preds = %2208
  %2227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %254, float %255, float %256, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = extractvalue %dx.types.ResRet.f32 %2227, 1
  %2230 = extractvalue %dx.types.ResRet.f32 %2227, 2
  %2231 = extractvalue %dx.types.CBufRet.f32 %2202, 2
  %2232 = fmul fast float %2231, %2228
  %2233 = fmul fast float %2231, %2229
  %2234 = fmul fast float %2231, %2230
  %2235 = fsub fast float %2232, %2204
  %2236 = fsub fast float %2233, %2205
  %2237 = fsub fast float %2234, %2206
  %2238 = fmul fast float %2235, %147
  %2239 = fmul fast float %2236, %147
  %2240 = fmul fast float %2237, %147
  %2241 = fadd fast float %2238, %2204
  %2242 = fadd fast float %2239, %2205
  %2243 = fadd fast float %2240, %2206
  br label %2244

; <label>:2244                                    ; preds = %2226, %2208, %2079
  %2245 = phi float [ %2204, %2079 ], [ %2241, %2226 ], [ %2204, %2208 ]
  %2246 = phi float [ %2205, %2079 ], [ %2242, %2226 ], [ %2205, %2208 ]
  %2247 = phi float [ %2206, %2079 ], [ %2243, %2226 ], [ %2206, %2208 ]
  %2248 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2249 = fmul fast float %2248, %2245
  %2250 = fmul fast float %2248, %2246
  %2251 = fmul fast float %2248, %2247
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %28, i32 %29, i32 %30, float %2249, float %2250, float %2251, float %2249, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2252

; <label>:2252                                    ; preds = %2244, %57
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
!38 = !{void ()* @cs_vol_sh_sample_lightgrid_aniso_skylight, !"cs_vol_sh_sample_lightgrid_aniso_skylight", null, !4, !39}
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
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}

