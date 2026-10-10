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
; shader hash: 3a53eea8ce78ea94df5132a476b3ef69
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
;   [80 x i8] (type annotation not present)
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
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   texture     f32     2darray      T0            t32     1
;                                   texture     f32          3d      T1            t31     1
;                                   texture     f32          2d      T2            t30     1
;                                   texture     f32          2d      T3            t29     1
;                                   texture     u32          2d      T4            t22     1
;                                   texture     f32          3d      T5            t23     1
;                                   texture     f32          3d      T6            t14     1
;                                   texture     f32     2darray      T7            t50     1
;                                   texture     f32     2darray      T8            t21     1
;                                   texture     f32          2d      T9            t18     1
;                                   texture    byte         r/o     T10            t15     1
;                                   texture  struct         r/o     T11             t0     1
;                                   texture     u32         buf     T12             t1     1
;                                   texture  struct         r/o     T13             t2     1
;                                   texture     u32         buf     T14             t3     1
;                                   texture     u32         buf     T15             t4     1
;                                   texture     u32         buf     T16             t5     1
;                                   texture     f32         buf     T17             t6     1
;                                   texture     u32         buf     T18             t7     1
;                                   texture     f32         buf     T19             t8     1
;                                   texture    byte         r/o     T20             t9     1
;                                       UAV     f32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %29 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %31 = alloca [8 x float], align 4
  %32 = alloca [8 x i32], align 4
  %33 = alloca [8 x float], align 4
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %37 = extractvalue %dx.types.CBufRet.i32 %34, 2
  %38 = add i32 %35, 3
  %39 = add i32 %36, 3
  %40 = add i32 %37, 3
  %41 = lshr i32 %38, 2
  %42 = lshr i32 %39, 2
  %43 = lshr i32 %40, 2
  %44 = icmp uge i32 %28, %41
  %45 = icmp uge i32 %29, %42
  %46 = icmp uge i32 %30, %43
  %47 = or i1 %44, %45
  %48 = or i1 %46, %47
  br i1 %48, label %56, label %49, !dx.controlflow.hints !42

; <label>:49                                      ; preds = %0
  %50 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %28, i32 %29, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = fmul fast float %51, 2.550000e+02
  %53 = fadd fast float %52, 0x3F70101020000000
  %54 = fptoui float %53 to i32
  %55 = icmp ule i32 %30, %54
  br label %56

; <label>:56                                      ; preds = %49, %0
  %57 = phi i1 [ %55, %49 ], [ false, %0 ]
  br i1 %57, label %58, label %1265, !dx.controlflow.hints !43

; <label>:58                                      ; preds = %56
  %59 = uitofp i32 %28 to float
  %60 = uitofp i32 %29 to float
  %61 = uitofp i32 %30 to float
  %62 = fadd fast float %59, 5.000000e-01
  %63 = fadd fast float %60, 5.000000e-01
  %64 = fadd fast float %61, 5.000000e-01
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 3
  %67 = add i32 %66, %30
  %68 = and i32 %67, 7
  switch i32 %68, label %76 [
    i32 0, label %77
    i32 1, label %69
    i32 2, label %70
    i32 3, label %71
    i32 4, label %72
    i32 5, label %73
    i32 6, label %74
    i32 7, label %75
  ], !dx.controlflow.hints !44

; <label>:69                                      ; preds = %58
  br label %77

; <label>:70                                      ; preds = %58
  br label %77

; <label>:71                                      ; preds = %58
  br label %77

; <label>:72                                      ; preds = %58
  br label %77

; <label>:73                                      ; preds = %58
  br label %77

; <label>:74                                      ; preds = %58
  br label %77

; <label>:75                                      ; preds = %58
  br label %77

; <label>:76                                      ; preds = %58
  br label %77

; <label>:77                                      ; preds = %76, %75, %74, %73, %72, %71, %70, %69, %58
  %78 = phi float [ 0.000000e+00, %76 ], [ 0xBFAAFDA2C0000000, %75 ], [ 0xBFDC840460000000, %74 ], [ 0x3FAD325520000000, %73 ], [ 0xBFC0D2F360000000, %72 ], [ 0x3FD3DBFA80000000, %71 ], [ 0xBFD546BCA0000000, %70 ], [ 0x3FDD88B380000000, %69 ], [ 0xBF98669800000000, %58 ]
  %79 = phi float [ 0.000000e+00, %76 ], [ 0xBFB3D00D00000000, %75 ], [ 0xBFD1E41C40000000, %74 ], [ 0xBFCDD22A60000000, %73 ], [ 0x3FBD22CF20000000, %72 ], [ 0x3FBA443A80000000, %71 ], [ 0x3FDB80DE80000000, %70 ], [ 0xBFB1C6F4E0000000, %69 ], [ 0xBFDDE0E000000000, %58 ]
  %80 = phi float [ 0.000000e+00, %76 ], [ 0xBFD38FB280000000, %75 ], [ 0xBF8D0A4580000000, %74 ], [ 0x3FD36603C0000000, %73 ], [ 0x3FBA950300000000, %72 ], [ 0xBFC14853E0000000, %71 ], [ 0x3FDBE53FA0000000, %70 ], [ 0x3FD8D79020000000, %69 ], [ 0xBFC22590A0000000, %58 ]
  %81 = fadd fast float %62, %78
  %82 = fadd fast float %63, %79
  %83 = fadd fast float %64, %80
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = fmul fast float %83, 4.000000e+00
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = fmul fast float %87, %90
  %92 = call float @dx.op.unary.f32(i32 21, float %91)  ; Exp(value)
  %93 = fmul fast float %92, %89
  %94 = fsub fast float 4.000000e+00, %89
  %95 = fadd fast float %94, %93
  %96 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %28, i32 %29, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = fcmp fast ogt float %97, -1.000000e+00
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %101 = select i1 %98, float %100, float 1.000000e+00
  %102 = fadd fast float %97, 1.000000e+00
  %103 = fmul fast float %101, %102
  %104 = call float @dx.op.binary.f32(i32 36, float %95, float %103)  ; FMin(a,b)
  %105 = fmul fast float %81, 8.000000e+00
  %106 = fmul fast float %105, %85
  %107 = fmul fast float %82, 8.000000e+00
  %108 = fmul fast float %107, %86
  %109 = fsub fast float 1.000000e+00, %106
  %110 = fsub fast float 1.000000e+00, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %112, %109
  %116 = fmul fast float %113, %109
  %117 = fmul fast float %114, %109
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %119, %110
  %123 = fmul fast float %120, %110
  %124 = fmul fast float %121, %110
  %125 = fadd fast float %122, %115
  %126 = fadd fast float %123, %116
  %127 = fadd fast float %124, %117
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fadd fast float %125, %129
  %133 = fadd fast float %126, %130
  %134 = fadd fast float %127, %131
  %135 = fmul fast float %132, %104
  %136 = fmul fast float %133, %104
  %137 = fmul fast float %134, %104
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fadd fast float %135, %139
  %143 = fadd fast float %136, %140
  %144 = fadd fast float %137, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.i32 %147, 3
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %240, label %150, !dx.controlflow.hints !45

; <label>:150                                     ; preds = %77
  %151 = fmul fast float %64, 4.000000e+00
  %152 = fmul fast float %151, %90
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fmul fast float %153, %89
  %155 = fadd fast float %94, %154
  %156 = fmul fast float %62, 8.000000e+00
  %157 = fmul fast float %156, %85
  %158 = fmul fast float %63, 8.000000e+00
  %159 = fmul fast float %158, %86
  %160 = fsub fast float 1.000000e+00, %157
  %161 = fsub fast float 1.000000e+00, %159
  %162 = fmul fast float %112, %160
  %163 = fmul fast float %113, %160
  %164 = fmul fast float %114, %160
  %165 = fmul fast float %119, %161
  %166 = fmul fast float %120, %161
  %167 = fmul fast float %121, %161
  %168 = fadd fast float %165, %162
  %169 = fadd fast float %166, %163
  %170 = fadd fast float %167, %164
  %171 = fadd fast float %168, %129
  %172 = fadd fast float %169, %130
  %173 = fadd fast float %170, %131
  %174 = fmul fast float %171, %155
  %175 = fmul fast float %172, %155
  %176 = fmul fast float %173, %155
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %193 = fmul fast float %174, %178
  %194 = call float @dx.op.tertiary.f32(i32 46, float %182, float %175, float %193)  ; FMad(a,b,c)
  %195 = call float @dx.op.tertiary.f32(i32 46, float %186, float %176, float %194)  ; FMad(a,b,c)
  %196 = fadd fast float %195, %190
  %197 = fmul fast float %174, %179
  %198 = call float @dx.op.tertiary.f32(i32 46, float %183, float %175, float %197)  ; FMad(a,b,c)
  %199 = call float @dx.op.tertiary.f32(i32 46, float %187, float %176, float %198)  ; FMad(a,b,c)
  %200 = fadd fast float %199, %191
  %201 = fmul fast float %174, %180
  %202 = call float @dx.op.tertiary.f32(i32 46, float %184, float %175, float %201)  ; FMad(a,b,c)
  %203 = call float @dx.op.tertiary.f32(i32 46, float %188, float %176, float %202)  ; FMad(a,b,c)
  %204 = fadd fast float %203, %192
  %205 = fmul fast float %196, 5.000000e-01
  %206 = fdiv fast float %205, %204
  %207 = fadd fast float %206, 5.000000e-01
  %208 = fmul fast float %200, -5.000000e-01
  %209 = fdiv fast float %208, %204
  %210 = fadd fast float %209, 5.000000e-01
  %211 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %212 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %213 = fadd fast float %204, -4.000000e+00
  %214 = call float @dx.op.binary.f32(i32 35, float %213, float 0.000000e+00)  ; FMax(a,b)
  %215 = fadd fast float %214, %89
  %216 = fmul fast float %215, %211
  %217 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %218 = fmul fast float %217, %212
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = fmul fast float %218, %220
  %222 = call float @dx.op.unary.f32(i32 27, float %207)  ; Round_ni(value)
  %223 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %224 = call float @dx.op.unary.f32(i32 27, float %210)  ; Round_ni(value)
  %225 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %226 = fadd fast float %225, %223
  %227 = call float @dx.op.unary.f32(i32 27, float %221)  ; Round_ni(value)
  %228 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %229 = fadd fast float %226, %228
  %230 = fcmp fast oeq float %229, 0.000000e+00
  %231 = zext i1 %230 to i32
  br i1 %230, label %232, label %240, !dx.controlflow.hints !46

; <label>:232                                     ; preds = %150
  %233 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %28, i32 %29, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fmul fast float %234, 2.550000e+02
  %236 = fadd fast float %235, 0x3F70101020000000
  %237 = fptoui float %236 to i32
  %238 = icmp ule i32 %30, %237
  %239 = zext i1 %238 to i32
  br label %240

; <label>:240                                     ; preds = %232, %150, %77
  %241 = phi float [ %207, %232 ], [ %207, %150 ], [ 0.000000e+00, %77 ]
  %242 = phi float [ %210, %232 ], [ %210, %150 ], [ 0.000000e+00, %77 ]
  %243 = phi float [ %221, %232 ], [ %221, %150 ], [ 0.000000e+00, %77 ]
  %244 = phi i32 [ %239, %232 ], [ %231, %150 ], [ 0, %77 ]
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 0
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %278, !dx.controlflow.hints !47

; <label>:248                                     ; preds = %240
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = fsub fast float %142, %250
  %253 = fsub fast float %143, %251
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = fmul fast float %252, %255
  %258 = fmul fast float %253, %256
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %257, float %258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fcmp fast ogt float %260, 0.000000e+00
  %262 = extractvalue %dx.types.CBufRet.i32 %245, 3
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %261, %263
  br i1 %264, label %265, label %278, !dx.controlflow.hints !48

; <label>:265                                     ; preds = %248
  %266 = fmul fast float %135, %135
  %267 = fmul fast float %136, %136
  %268 = fadd fast float %266, %267
  %269 = uitofp i32 %262 to float
  %270 = fmul fast float %269, %269
  %271 = fcmp fast ogt float %268, %270
  br i1 %271, label %278, label %272, !dx.controlflow.hints !49

; <label>:272                                     ; preds = %265
  %273 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %274 = fsub fast float %269, %273
  %275 = fmul fast float %274, 0x3F75555560000000
  %276 = call float @dx.op.unary.f32(i32 7, float %275)  ; Saturate(value)
  %277 = call float @dx.op.binary.f32(i32 36, float %276, float %260)  ; FMin(a,b)
  br label %278

; <label>:278                                     ; preds = %272, %265, %248, %240
  %279 = phi float [ 1.000000e+00, %240 ], [ %277, %272 ], [ %260, %248 ], [ 0.000000e+00, %265 ]
  %280 = fcmp fast ogt float %279, 0.000000e+00
  br i1 %280, label %281, label %843, !dx.controlflow.hints !50

; <label>:281                                     ; preds = %278
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %284 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %285 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %289 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 1
  %292 = fsub fast float %142, %283
  %293 = fsub fast float %143, %284
  %294 = fsub fast float %144, %285
  %295 = fmul fast float %292, %287
  %296 = fmul fast float %293, %288
  %297 = fmul fast float %294, %289
  %298 = fcmp fast ole float %295, 0.000000e+00
  %299 = fcmp fast ole float %296, 0.000000e+00
  %300 = fcmp fast ole float %297, 0.000000e+00
  %301 = or i1 %298, %299
  %302 = or i1 %300, %301
  %303 = fcmp fast oge float %295, 1.000000e+00
  %304 = fcmp fast oge float %296, 1.000000e+00
  %305 = fcmp fast oge float %297, 1.000000e+00
  %306 = or i1 %303, %304
  %307 = or i1 %305, %306
  %308 = or i1 %302, %307
  br i1 %308, label %824, label %309, !dx.controlflow.hints !51

; <label>:309                                     ; preds = %281
  %310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.i32 %310, 0
  %312 = fptosi float %292 to i32
  %313 = fptosi float %293 to i32
  %314 = fptosi float %294 to i32
  %315 = and i32 %291, 31
  %316 = ashr i32 %312, %315
  %317 = ashr i32 %313, %315
  %318 = ashr i32 %314, %315
  %319 = mul i32 %311, %317
  %320 = add nsw i32 %319, %316
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %320, i32 0)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %320, i32 4)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = icmp slt i32 %318, %322
  %326 = icmp sgt i32 %318, %324
  %327 = or i1 %325, %326
  br i1 %327, label %824, label %328, !dx.controlflow.hints !52

; <label>:328                                     ; preds = %309
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %320, i32 8)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = sub i32 %318, %322
  %332 = add nsw i32 %331, %330
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %824, label %336, !dx.controlflow.hints !53

; <label>:336                                     ; preds = %328
  %337 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 0
  store i32 -1, i32* %337, align 4, !tbaa !54, !noalias !58
  %338 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 1
  store i32 -1, i32* %338, align 4, !tbaa !54, !noalias !58
  %339 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 2
  store i32 -1, i32* %339, align 4, !tbaa !54, !noalias !58
  %340 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 3
  store i32 -1, i32* %340, align 4, !tbaa !54, !noalias !58
  %341 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 4
  store i32 -1, i32* %341, align 4, !tbaa !54, !noalias !58
  %342 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 5
  store i32 -1, i32* %342, align 4, !tbaa !54, !noalias !58
  %343 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 6
  store i32 -1, i32* %343, align 4, !tbaa !54, !noalias !69
  %344 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 7
  store i32 -1, i32* %344, align 4, !tbaa !54, !noalias !69
  br label %345

; <label>:345                                     ; preds = %449, %336
  %346 = phi i32 [ -1, %336 ], [ %446, %449 ]
  %347 = phi i32 [ -1, %336 ], [ %441, %449 ]
  %348 = phi i32 [ -1, %336 ], [ %434, %449 ]
  %349 = phi i32 [ -1, %336 ], [ %429, %449 ]
  %350 = phi i32 [ -1, %336 ], [ %420, %449 ]
  %351 = phi i32 [ -1, %336 ], [ %415, %449 ]
  %352 = phi i32 [ -1, %336 ], [ %407, %449 ]
  %353 = phi i32 [ -1, %336 ], [ %400, %449 ]
  %354 = phi i32 [ %334, %336 ], [ %469, %449 ]
  %355 = phi i32 [ %291, %336 ], [ %356, %449 ]
  %356 = add nsw i32 %355, -2
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %358, 31
  %362 = shl i32 1, %361
  %363 = add i32 %362, 1
  %364 = and i32 %356, 31
  %365 = ashr i32 %312, %364
  %366 = ashr i32 %313, %364
  %367 = ashr i32 %314, %364
  %368 = and i32 %365, 3
  %369 = and i32 %366, 3
  %370 = and i32 %367, 3
  br label %371

; <label>:371                                     ; preds = %371, %345
  %372 = phi i32 [ %346, %345 ], [ %446, %371 ]
  %373 = phi i32 [ %347, %345 ], [ %441, %371 ]
  %374 = phi i32 [ %348, %345 ], [ %434, %371 ]
  %375 = phi i32 [ %349, %345 ], [ %429, %371 ]
  %376 = phi i32 [ %350, %345 ], [ %420, %371 ]
  %377 = phi i32 [ %351, %345 ], [ %415, %371 ]
  %378 = phi i32 [ %352, %345 ], [ %407, %371 ]
  %379 = phi i32 [ %353, %345 ], [ %400, %371 ]
  %380 = phi i32 [ 0, %345 ], [ %447, %371 ]
  %381 = sub i32 2, %380
  %382 = and i32 %381, 31
  %383 = lshr i32 %368, %382
  %384 = lshr i32 %369, %382
  %385 = lshr i32 %370, %382
  %386 = sub i32 %358, %380
  %387 = and i32 %386, 31
  %388 = shl i32 %383, %387
  %389 = shl i32 %384, %387
  %390 = shl i32 %385, %387
  %391 = shl i32 1, %387
  %392 = mul i32 %390, %363
  %393 = add i32 %392, %389
  %394 = mul i32 %393, %363
  %395 = add i32 %388, %360
  %396 = add i32 %395, %394
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = icmp ne i32 %398, -1
  %400 = select i1 %399, i32 %398, i32 %379
  store i32 %400, i32* %337, align 4, !tbaa !54, !noalias !58
  %401 = add i32 %391, %360
  %402 = add i32 %401, %388
  %403 = add i32 %402, %394
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = icmp ne i32 %405, -1
  %407 = select i1 %406, i32 %405, i32 %378
  store i32 %407, i32* %338, align 4, !tbaa !54, !noalias !58
  %408 = add i32 %389, %391
  %409 = add i32 %408, %392
  %410 = mul i32 %409, %363
  %411 = add i32 %395, %410
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = icmp ne i32 %413, -1
  %415 = select i1 %414, i32 %413, i32 %377
  store i32 %415, i32* %339, align 4, !tbaa !54, !noalias !58
  %416 = add i32 %402, %410
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = icmp ne i32 %418, -1
  %420 = select i1 %419, i32 %418, i32 %376
  store i32 %420, i32* %340, align 4, !tbaa !54, !noalias !58
  %421 = add i32 %390, %391
  %422 = mul i32 %421, %363
  %423 = add i32 %422, %389
  %424 = mul i32 %423, %363
  %425 = add i32 %395, %424
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = icmp ne i32 %427, -1
  %429 = select i1 %428, i32 %427, i32 %375
  store i32 %429, i32* %341, align 4, !tbaa !54, !noalias !58
  %430 = add i32 %402, %424
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = icmp ne i32 %432, -1
  %434 = select i1 %433, i32 %432, i32 %374
  store i32 %434, i32* %342, align 4, !tbaa !54, !noalias !58
  %435 = add i32 %408, %422
  %436 = mul i32 %435, %363
  %437 = add i32 %395, %436
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = icmp ne i32 %439, -1
  %441 = select i1 %440, i32 %439, i32 %373
  store i32 %441, i32* %343, align 4, !tbaa !54, !noalias !58
  %442 = add i32 %402, %436
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = icmp ne i32 %444, -1
  %446 = select i1 %445, i32 %444, i32 %372
  store i32 %446, i32* %344, align 4, !tbaa !54, !noalias !58
  %447 = add i32 %380, 1
  %448 = icmp ugt i32 %447, %358
  br i1 %448, label %449, label %371

; <label>:449                                     ; preds = %371
  %450 = shl nuw nsw i32 %370, 4
  %451 = shl nuw nsw i32 %369, 2
  %452 = lshr i32 %370, 1
  %453 = and i32 %450, 16
  %454 = or i32 %451, %368
  %455 = or i32 %454, %453
  %456 = shl i32 1, %455
  %457 = shl nuw nsw i32 %452, 2
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %354, i32 %457)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, %456
  %461 = icmp eq i32 %460, 0
  %462 = add i32 %456, -1
  %463 = and i32 %459, %462
  %464 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %463)  ; Countbits(value)
  %465 = or i32 %457, 8
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %354, i32 %465)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %467, %464
  %469 = select i1 %461, i32 -1, i32 %468
  %470 = icmp eq i32 %469, -1
  br i1 %470, label %471, label %345

; <label>:471                                     ; preds = %449
  br label %472

; <label>:472                                     ; preds = %758, %471
  %473 = phi i32 [ %760, %758 ], [ %400, %471 ]
  %474 = phi float [ %755, %758 ], [ 0.000000e+00, %471 ]
  %475 = phi i32 [ %756, %758 ], [ 0, %471 ]
  %476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = extractvalue %dx.types.ResRet.f32 %476, 2
  %480 = extractvalue %dx.types.ResRet.f32 %476, 3
  %481 = fsub fast float %142, %477
  %482 = fsub fast float %143, %478
  %483 = fsub fast float %144, %479
  %484 = fmul fast float %481, %480
  %485 = fmul fast float %482, %480
  %486 = fmul fast float %483, %480
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = call float @dx.op.unary.f32(i32 6, float %484)  ; FAbs(value)
  %490 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  %491 = fsub fast float 1.000000e+00, %489
  %492 = fsub fast float 1.000000e+00, %490
  %493 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %494 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %495 = fmul fast float %494, %493
  %496 = mul i32 %488, 29
  %497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = extractvalue %dx.types.ResRet.f32 %497, 3
  %502 = add i32 %496, 1
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = extractvalue %dx.types.ResRet.f32 %503, 1
  %506 = extractvalue %dx.types.ResRet.f32 %503, 2
  %507 = extractvalue %dx.types.ResRet.f32 %503, 3
  %508 = add i32 %496, 2
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = add i32 %496, 3
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = add i32 %496, 4
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = extractvalue %dx.types.ResRet.f32 %521, 3
  %526 = add i32 %496, 5
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = add i32 %496, 6
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  %537 = extractvalue %dx.types.ResRet.f32 %533, 3
  %538 = add i32 %496, 7
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = extractvalue %dx.types.ResRet.f32 %539, 1
  %542 = extractvalue %dx.types.ResRet.f32 %539, 2
  %543 = extractvalue %dx.types.ResRet.f32 %539, 3
  %544 = fmul fast float %498, %484
  %545 = fmul fast float %510, %485
  %546 = fadd fast float %545, %544
  %547 = fmul fast float %522, %486
  %548 = fadd fast float %546, %547
  %549 = fmul fast float %499, %484
  %550 = fmul fast float %511, %485
  %551 = fadd fast float %550, %549
  %552 = fmul fast float %523, %486
  %553 = fadd fast float %551, %552
  %554 = fmul fast float %500, %484
  %555 = fmul fast float %512, %485
  %556 = fadd fast float %555, %554
  %557 = fmul fast float %524, %486
  %558 = fadd fast float %556, %557
  %559 = fmul fast float %501, %484
  %560 = fmul fast float %513, %485
  %561 = fadd fast float %560, %559
  %562 = fmul fast float %525, %486
  %563 = fadd fast float %561, %562
  %564 = fmul fast float %504, %484
  %565 = fmul fast float %516, %485
  %566 = fadd fast float %565, %564
  %567 = fmul fast float %528, %486
  %568 = fadd fast float %566, %567
  %569 = fmul fast float %505, %484
  %570 = fmul fast float %517, %485
  %571 = fadd fast float %570, %569
  %572 = fmul fast float %529, %486
  %573 = fadd fast float %571, %572
  %574 = fmul fast float %506, %484
  %575 = fmul fast float %518, %485
  %576 = fadd fast float %575, %574
  %577 = fmul fast float %530, %486
  %578 = fadd fast float %576, %577
  %579 = fmul fast float %507, %484
  %580 = fmul fast float %519, %485
  %581 = fadd fast float %580, %579
  %582 = fmul fast float %531, %486
  %583 = fadd fast float %581, %582
  %584 = fadd fast float %548, %534
  %585 = fadd fast float %553, %535
  %586 = fadd fast float %558, %536
  %587 = fadd fast float %563, %537
  %588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %584)  ; FMax(a,b)
  %589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %585)  ; FMax(a,b)
  %590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %586)  ; FMax(a,b)
  %591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %587)  ; FMax(a,b)
  %592 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %584)  ; FMin(a,b)
  %593 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %585)  ; FMin(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %586)  ; FMin(a,b)
  %595 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %587)  ; FMin(a,b)
  %596 = fmul fast float %592, 0x3F847AE140000000
  %597 = fmul fast float %593, 0x3F847AE140000000
  %598 = fmul fast float %594, 0x3F847AE140000000
  %599 = fmul fast float %595, 0x3F847AE140000000
  %600 = fadd fast float %596, %588
  %601 = fadd fast float %597, %589
  %602 = fadd fast float %598, %590
  %603 = fadd fast float %599, %591
  %604 = fadd fast float %568, %540
  %605 = fadd fast float %573, %541
  %606 = fadd fast float %578, %542
  %607 = fadd fast float %583, %543
  %608 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %604)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %605)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %606)  ; FMax(a,b)
  %611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %607)  ; FMax(a,b)
  %612 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %604)  ; FMin(a,b)
  %613 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %605)  ; FMin(a,b)
  %614 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %606)  ; FMin(a,b)
  %615 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %607)  ; FMin(a,b)
  %616 = fmul fast float %612, 0x3F847AE140000000
  %617 = fmul fast float %613, 0x3F847AE140000000
  %618 = fmul fast float %614, 0x3F847AE140000000
  %619 = fmul fast float %615, 0x3F847AE140000000
  %620 = fadd fast float %616, %608
  %621 = fadd fast float %617, %609
  %622 = fadd fast float %618, %610
  %623 = fadd fast float %619, %611
  br label %624

; <label>:624                                     ; preds = %624, %472
  %625 = phi i32 [ 0, %472 ], [ %645, %624 ]
  %626 = add i32 %496, 8
  %627 = shl i32 %625, 1
  %628 = add i32 %626, %627
  %629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = extractvalue %dx.types.ResRet.f32 %629, 1
  %632 = extractvalue %dx.types.ResRet.f32 %629, 2
  %633 = extractvalue %dx.types.ResRet.f32 %629, 3
  %634 = add i32 %496, 9
  %635 = add i32 %634, %627
  %636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = extractvalue %dx.types.ResRet.f32 %636, 3
  %641 = call float @dx.op.dot4.f32(i32 56, float %630, float %631, float %632, float %633, float %600, float %601, float %602, float %603)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %642 = call float @dx.op.dot4.f32(i32 56, float %637, float %638, float %639, float %640, float %620, float %621, float %622, float %623)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %643 = fadd fast float %642, %641
  %644 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %625
  store float %643, float* %644, align 4, !tbaa !70, !noalias !58
  %645 = add nuw nsw i32 %625, 1
  %646 = icmp eq i32 %645, 8
  br i1 %646, label %647, label %624

; <label>:647                                     ; preds = %624
  %648 = call float @dx.op.unary.f32(i32 6, float %486)  ; FAbs(value)
  %649 = fsub fast float 1.000000e+00, %648
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %651 = fmul fast float %495, %650
  %652 = add i32 %496, 24
  %653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = extractvalue %dx.types.ResRet.f32 %653, 3
  %658 = add i32 %496, 25
  %659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %665 = load float, float* %664, align 4, !tbaa !70, !noalias !58
  %666 = fadd fast float %665, %654
  %667 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %666)  ; FMax(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %666)  ; FMin(a,b)
  %669 = fmul fast float %668, 0x3F847AE140000000
  %670 = fadd fast float %669, %667
  store float %670, float* %664, align 4, !tbaa !70, !noalias !58
  %671 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %672 = load float, float* %671, align 4, !tbaa !70, !noalias !58
  %673 = fadd fast float %672, %655
  %674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %673)  ; FMax(a,b)
  %675 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %673)  ; FMin(a,b)
  %676 = fmul fast float %675, 0x3F847AE140000000
  %677 = fadd fast float %676, %674
  store float %677, float* %671, align 4, !tbaa !70, !noalias !58
  %678 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %679 = load float, float* %678, align 4, !tbaa !70, !noalias !58
  %680 = fadd fast float %679, %656
  %681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %680)  ; FMax(a,b)
  %682 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %680)  ; FMin(a,b)
  %683 = fmul fast float %682, 0x3F847AE140000000
  %684 = fadd fast float %683, %681
  store float %684, float* %678, align 4, !tbaa !70, !noalias !58
  %685 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %686 = load float, float* %685, align 4, !tbaa !70, !noalias !58
  %687 = fadd fast float %686, %657
  %688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %687)  ; FMax(a,b)
  %689 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %687)  ; FMin(a,b)
  %690 = fmul fast float %689, 0x3F847AE140000000
  %691 = fadd fast float %690, %688
  store float %691, float* %685, align 4, !tbaa !70, !noalias !58
  %692 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %693 = load float, float* %692, align 4, !tbaa !70, !noalias !58
  %694 = fadd fast float %693, %660
  %695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %694)  ; FMax(a,b)
  %696 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %694)  ; FMin(a,b)
  %697 = fmul fast float %696, 0x3F847AE140000000
  %698 = fadd fast float %697, %695
  store float %698, float* %692, align 4, !tbaa !70, !noalias !58
  %699 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %700 = load float, float* %699, align 4, !tbaa !70, !noalias !58
  %701 = fadd fast float %700, %661
  %702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %701)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %701)  ; FMin(a,b)
  %704 = fmul fast float %703, 0x3F847AE140000000
  %705 = fadd fast float %704, %702
  store float %705, float* %699, align 4, !tbaa !70, !noalias !58
  %706 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %707 = load float, float* %706, align 4, !tbaa !70, !noalias !58
  %708 = fadd fast float %707, %662
  %709 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %708)  ; FMax(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %708)  ; FMin(a,b)
  %711 = fmul fast float %710, 0x3F847AE140000000
  %712 = fadd fast float %711, %709
  store float %712, float* %706, align 4, !tbaa !70, !noalias !58
  %713 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %714 = load float, float* %713, align 4, !tbaa !70, !noalias !58
  %715 = fadd fast float %714, %663
  %716 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %715)  ; FMax(a,b)
  %717 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %715)  ; FMin(a,b)
  %718 = fmul fast float %717, 0x3F847AE140000000
  %719 = fadd fast float %718, %716
  store float %719, float* %713, align 4, !tbaa !70, !noalias !58
  %720 = add i32 %496, 26
  %721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = add i32 %496, 27
  %727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = extractvalue %dx.types.ResRet.f32 %727, 2
  %731 = extractvalue %dx.types.ResRet.f32 %727, 3
  %732 = fmul fast float %670, %722
  %733 = fmul fast float %677, %723
  %734 = fadd fast float %733, %732
  %735 = fmul fast float %684, %724
  %736 = fadd fast float %734, %735
  %737 = fmul fast float %691, %725
  %738 = fadd fast float %736, %737
  %739 = fmul fast float %698, %728
  %740 = fadd fast float %738, %739
  %741 = fmul fast float %705, %729
  %742 = fadd fast float %740, %741
  %743 = fmul fast float %712, %730
  %744 = fadd fast float %742, %743
  %745 = fmul fast float %719, %731
  %746 = fadd fast float %744, %745
  %747 = add i32 %496, 28
  %748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = fadd fast float %746, %749
  %751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %750)  ; FMax(a,b)
  %752 = fmul fast float %651, %751
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %754 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %475
  store float %753, float* %754, align 4, !tbaa !70, !noalias !58
  %755 = fadd fast float %753, %474
  %756 = add nuw nsw i32 %475, 1
  %757 = icmp eq i32 %756, 8
  br i1 %757, label %761, label %758

; <label>:758                                     ; preds = %647
  %759 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %756
  %760 = load i32, i32* %759, align 4, !tbaa !54, !noalias !58
  br label %472

; <label>:761                                     ; preds = %647
  %762 = fcmp fast ugt float %755, 0x3EE4F8B580000000
  br i1 %762, label %763, label %824, !dx.controlflow.hints !72

; <label>:763                                     ; preds = %761
  %764 = fcmp fast ogt float %755, 0x3EE4F8B580000000
  %765 = fdiv fast float 1.000000e+00, %755
  %766 = select i1 %764, float %765, float 1.000000e+00
  %767 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 0
  %768 = load float, float* %767, align 4, !tbaa !70, !noalias !58
  %769 = fmul fast float %768, %766
  store float %769, float* %767, align 4, !tbaa !70, !noalias !58
  %770 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 1
  %771 = load float, float* %770, align 4, !tbaa !70, !noalias !58
  %772 = fmul fast float %771, %766
  store float %772, float* %770, align 4, !tbaa !70, !noalias !58
  %773 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 2
  %774 = load float, float* %773, align 4, !tbaa !70, !noalias !58
  %775 = fmul fast float %774, %766
  store float %775, float* %773, align 4, !tbaa !70, !noalias !58
  %776 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 3
  %777 = load float, float* %776, align 4, !tbaa !70, !noalias !58
  %778 = fmul fast float %777, %766
  store float %778, float* %776, align 4, !tbaa !70, !noalias !58
  %779 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 4
  %780 = load float, float* %779, align 4, !tbaa !70, !noalias !58
  %781 = fmul fast float %780, %766
  store float %781, float* %779, align 4, !tbaa !70, !noalias !58
  %782 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 5
  %783 = load float, float* %782, align 4, !tbaa !70, !noalias !58
  %784 = fmul fast float %783, %766
  store float %784, float* %782, align 4, !tbaa !70, !noalias !58
  %785 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 6
  %786 = load float, float* %785, align 4, !tbaa !70, !noalias !58
  %787 = fmul fast float %786, %766
  store float %787, float* %785, align 4, !tbaa !70, !noalias !58
  %788 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 7
  %789 = load float, float* %788, align 4, !tbaa !70, !noalias !58
  %790 = fmul fast float %789, %766
  store float %790, float* %788, align 4, !tbaa !70, !noalias !58
  br label %791

; <label>:791                                     ; preds = %818, %763
  %792 = phi float [ %822, %818 ], [ %769, %763 ]
  %793 = phi i32 [ %820, %818 ], [ %400, %763 ]
  %794 = phi float [ %811, %818 ], [ 0.000000e+00, %763 ]
  %795 = phi float [ %813, %818 ], [ 0.000000e+00, %763 ]
  %796 = phi float [ %815, %818 ], [ 0.000000e+00, %763 ]
  %797 = phi i32 [ %816, %818 ], [ 0, %763 ]
  %798 = shl i32 %793, 5
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = shl i32 %800, 4
  %802 = and i32 %801, 32752
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = lshr i32 %800, 7
  %805 = and i32 %804, 32752
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = lshr i32 %800, 22
  %808 = shl nuw nsw i32 %807, 5
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = fmul fast float %803, %792
  %811 = fadd fast float %810, %794
  %812 = fmul fast float %806, %792
  %813 = fadd fast float %812, %795
  %814 = fmul fast float %809, %792
  %815 = fadd fast float %814, %796
  %816 = add nuw nsw i32 %797, 1
  %817 = icmp eq i32 %816, 8
  br i1 %817, label %823, label %818

; <label>:818                                     ; preds = %791
  %819 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %816
  %820 = load i32, i32* %819, align 4, !tbaa !54, !noalias !58
  %821 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %816
  %822 = load float, float* %821, align 4, !tbaa !70, !noalias !58
  br label %791

; <label>:823                                     ; preds = %791
  br label %824

; <label>:824                                     ; preds = %823, %761, %328, %309, %281
  %825 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %811, %823 ]
  %826 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %813, %823 ]
  %827 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %815, %823 ]
  %828 = phi i1 [ false, %281 ], [ false, %309 ], [ false, %328 ], [ false, %761 ], [ true, %823 ]
  %829 = phi float [ 1.000000e+00, %281 ], [ 1.000000e+00, %309 ], [ 1.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ 1.000000e+00, %823 ]
  br i1 %828, label %843, label %830, !dx.controlflow.hints !73

; <label>:830                                     ; preds = %824
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 1
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 65535
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %834, 16
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = and i32 %832, 65535
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  br label %843

; <label>:843                                     ; preds = %830, %824, %278
  %844 = phi float [ %827, %824 ], [ %842, %830 ], [ 0.000000e+00, %278 ]
  %845 = phi float [ %826, %824 ], [ %840, %830 ], [ 0.000000e+00, %278 ]
  %846 = phi float [ %825, %824 ], [ %838, %830 ], [ 0.000000e+00, %278 ]
  %847 = phi float [ %829, %824 ], [ %829, %830 ], [ 1.000000e+00, %278 ]
  %848 = fcmp fast olt float %279, 1.000000e+00
  br i1 %848, label %849, label %1206, !dx.controlflow.hints !74

; <label>:849                                     ; preds = %843
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = fsub fast float %142, %851
  %854 = fsub fast float %143, %852
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = fmul fast float %853, %856
  %859 = fmul fast float %854, %857
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = fmul fast float %861, %858
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %864 = fadd fast float %862, %863
  %865 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %866 = fmul fast float %865, %859
  %867 = extractvalue %dx.types.CBufRet.f32 %860, 3
  %868 = fadd fast float %866, %867
  %869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %864, float %868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = extractvalue %dx.types.ResRet.f32 %869, 1
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %875 = fsub fast float %873, %874
  %876 = fmul fast float %875, %870
  %877 = fadd fast float %876, %874
  %878 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %879 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %880 = fsub fast float %878, %879
  %881 = fmul fast float %880, %871
  %882 = fadd fast float %881, %879
  %883 = fsub fast float %144, %877
  %884 = fsub fast float %882, %877
  %885 = fdiv fast float %883, %884
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = fmul fast float %888, %886
  %890 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %891 = fadd fast float %889, %890
  %892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %864, float %868, float %891, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 2
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %900 = fmul fast float %897, %893
  %901 = fmul fast float %898, %894
  %902 = fmul fast float %899, %895
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %907 = fadd fast float %900, %904
  %908 = fadd fast float %901, %905
  %909 = fadd fast float %902, %906
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 0
  %912 = fmul fast float %911, %858
  %913 = extractvalue %dx.types.CBufRet.f32 %910, 1
  %914 = fadd fast float %912, %913
  %915 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %916 = fmul fast float %915, %859
  %917 = extractvalue %dx.types.CBufRet.f32 %910, 3
  %918 = fadd fast float %916, %917
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %914, float %918, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = extractvalue %dx.types.ResRet.f32 %924, 1
  %927 = extractvalue %dx.types.ResRet.f32 %924, 2
  %928 = fmul fast float %925, %907
  %929 = fadd fast float %928, %920
  %930 = fmul fast float %926, %907
  %931 = fadd fast float %930, %922
  %932 = fmul fast float %927, %907
  %933 = fadd fast float %932, %923
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %914, float %918, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = extractvalue %dx.types.ResRet.f32 %934, 2
  %938 = fmul fast float %935, %908
  %939 = fadd fast float %929, %938
  %940 = fmul fast float %936, %908
  %941 = fadd fast float %931, %940
  %942 = fmul fast float %937, %908
  %943 = fadd fast float %933, %942
  %944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %914, float %918, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = extractvalue %dx.types.ResRet.f32 %944, 2
  %948 = fmul fast float %945, %909
  %949 = fadd fast float %939, %948
  %950 = fmul fast float %946, %909
  %951 = fadd fast float %941, %950
  %952 = fmul fast float %947, %909
  %953 = fadd fast float %943, %952
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = fsub fast float %142, %955
  %957 = fsub fast float %851, %142
  %958 = call float @dx.op.binary.f32(i32 35, float %957, float %956)  ; FMax(a,b)
  %959 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %960 = fsub fast float %143, %959
  %961 = fsub fast float %852, %143
  %962 = call float @dx.op.binary.f32(i32 35, float %961, float %960)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 35, float %958, float %962)  ; FMax(a,b)
  %964 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %965 = fmul fast float %964, %963
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = fsub fast float %968, %949
  %970 = fmul fast float %969, %966
  %971 = fadd fast float %970, %949
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = fsub fast float %973, %951
  %975 = fmul fast float %974, %966
  %976 = fadd fast float %975, %951
  %977 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %978 = fsub fast float %977, %953
  %979 = fmul fast float %978, %966
  %980 = fadd fast float %979, %953
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = fmul fast float %982, %971
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = fmul fast float %985, %976
  %987 = fadd fast float %986, %983
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = fmul fast float %989, %980
  %991 = fadd fast float %987, %990
  %992 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %993 = fmul fast float %992, %971
  %994 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %995 = fmul fast float %994, %976
  %996 = fadd fast float %995, %993
  %997 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %998 = fmul fast float %997, %980
  %999 = fadd fast float %996, %998
  %1000 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %1001 = fmul fast float %1000, %971
  %1002 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %1003 = fmul fast float %1002, %976
  %1004 = fadd fast float %1003, %1001
  %1005 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %1006 = fmul fast float %1005, %980
  %1007 = fadd fast float %1004, %1006
  %1008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %991)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %999)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1007)  ; FMax(a,b)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = fcmp fast ogt float %1012, 0.000000e+00
  %1014 = fcmp fast oge float %858, 0.000000e+00
  %1015 = and i1 %1014, %1013
  %1016 = fcmp fast ole float %858, 1.000000e+00
  %1017 = and i1 %1016, %1015
  %1018 = fcmp fast oge float %859, 0.000000e+00
  %1019 = and i1 %1018, %1017
  %1020 = fcmp fast ole float %859, 1.000000e+00
  %1021 = and i1 %1020, %1019
  br i1 %1021, label %1022, label %1162, !dx.controlflow.hints !75

; <label>:1022                                    ; preds = %849
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 3
  %1026 = fmul fast float %1024, %858
  %1027 = fmul fast float %1025, %859
  %1028 = call float @dx.op.unary.f32(i32 27, float %1026)  ; Round_ni(value)
  %1029 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1030 = fptosi float %1028 to i32
  %1031 = fptosi float %1029 to i32
  %1032 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %1030, i32 %1031, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 65535
  %1035 = lshr i32 %1033, 16
  %1036 = icmp eq i32 %1034, 65535
  br i1 %1036, label %1073, label %1037, !dx.controlflow.hints !76

; <label>:1037                                    ; preds = %1022
  %1038 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1041 = fmul fast float %1039, %858
  %1042 = fmul fast float %1040, %859
  %1043 = fmul fast float %1041, 1.250000e-01
  %1044 = fmul fast float %1042, 1.250000e-01
  %1045 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1047 = fmul fast float %1045, 8.000000e+00
  %1048 = fmul fast float %1046, 8.000000e+00
  %1049 = and i32 %1033, 255
  %1050 = lshr i32 %1033, 8
  %1051 = and i32 %1050, 255
  %1052 = mul nuw nsw i32 %1049, 9
  %1053 = uitofp i32 %1052 to float
  %1054 = mul nuw nsw i32 %1051, 9
  %1055 = uitofp i32 %1054 to float
  %1056 = fadd fast float %1053, 5.000000e-01
  %1057 = fadd fast float %1056, %1041
  %1058 = fsub fast float %1057, %1047
  %1059 = fadd fast float %1055, 5.000000e-01
  %1060 = fadd fast float %1059, %1042
  %1061 = fsub fast float %1060, %1048
  %1062 = fdiv fast float %1058, %1012
  %1063 = fdiv fast float %1061, %1038
  %1064 = fmul fast float %886, 4.375000e-01
  %1065 = fadd fast float %1064, 3.125000e-02
  %1066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1062, float %1063, float %1065, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1070 = fadd fast float %1067, %1008
  %1071 = fadd fast float %1068, %1009
  %1072 = fadd fast float %1069, %1010
  br label %1073

; <label>:1073                                    ; preds = %1037, %1022
  %1074 = phi float [ %1072, %1037 ], [ %1010, %1022 ]
  %1075 = phi float [ %1071, %1037 ], [ %1009, %1022 ]
  %1076 = phi float [ %1070, %1037 ], [ %1008, %1022 ]
  %1077 = icmp eq i32 %1035, 65535
  br i1 %1077, label %1162, label %1078, !dx.controlflow.hints !77

; <label>:1078                                    ; preds = %1073
  %1079 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1080 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1082 = fmul fast float %1080, %858
  %1083 = fmul fast float %1081, %859
  %1084 = fmul fast float %1082, 1.250000e-01
  %1085 = fmul fast float %1083, 1.250000e-01
  %1086 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1087 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1088 = fmul fast float %1086, 8.000000e+00
  %1089 = fmul fast float %1087, 8.000000e+00
  %1090 = fsub fast float %1082, %1088
  %1091 = fsub fast float %1083, %1089
  %1092 = fadd fast float %1090, 5.000000e-01
  %1093 = fadd fast float %1091, 5.000000e-01
  %1094 = and i32 %1035, 255
  %1095 = lshr i32 %1033, 24
  %1096 = mul nuw nsw i32 %1094, 9
  %1097 = uitofp i32 %1096 to float
  %1098 = mul nuw nsw i32 %1095, 9
  %1099 = uitofp i32 %1098 to float
  %1100 = fadd fast float %1092, %1097
  %1101 = fadd fast float %1093, %1099
  %1102 = fdiv fast float %1100, %1012
  %1103 = fdiv fast float %1101, %1079
  %1104 = fmul fast float %886, 4.375000e-01
  %1105 = fadd fast float %1104, 3.125000e-02
  %1106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1102, float %1103, float %1105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = fadd fast float %1104, 5.312500e-01
  %1111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1102, float %1103, float %1110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = fmul fast float %1112, 2.000000e+00
  %1116 = fmul fast float %1113, 2.000000e+00
  %1117 = fmul fast float %1114, 2.000000e+00
  %1118 = fadd fast float %1115, -1.000000e+00
  %1119 = fadd fast float %1116, -1.000000e+00
  %1120 = fadd fast float %1117, -1.000000e+00
  %1121 = fmul fast float %1118, %1118
  %1122 = fmul fast float %1119, %1119
  %1123 = fadd fast float %1121, %1122
  %1124 = fmul fast float %1120, %1120
  %1125 = fadd fast float %1123, %1124
  %1126 = call float @dx.op.unary.f32(i32 24, float %1125)  ; Sqrt(value)
  %1127 = fcmp fast ogt float %1126, 0.000000e+00
  br i1 %1127, label %1128, label %1132, !dx.controlflow.hints !78

; <label>:1128                                    ; preds = %1078
  %1129 = fdiv fast float %1118, %1126
  %1130 = fdiv fast float %1119, %1126
  %1131 = fdiv fast float %1120, %1126
  br label %1132

; <label>:1132                                    ; preds = %1128, %1078
  %1133 = phi float [ %1129, %1128 ], [ 0.000000e+00, %1078 ]
  %1134 = phi float [ %1130, %1128 ], [ 0.000000e+00, %1078 ]
  %1135 = phi float [ %1131, %1128 ], [ 0.000000e+00, %1078 ]
  %1136 = fmul fast float %135, %135
  %1137 = fmul fast float %136, %136
  %1138 = fadd fast float %1136, %1137
  %1139 = call float @dx.op.unary.f32(i32 24, float %1138)  ; Sqrt(value)
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1143 = fsub fast float %1139, %1141
  %1144 = fdiv fast float %1143, %1142
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1146 = fmul fast float %1145, 2.000000e+00
  %1147 = fsub fast float 3.000000e+00, %1146
  %1148 = fmul fast float %1145, %1145
  %1149 = fmul fast float %1148, %1147
  %1150 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1134, float %1135, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1150)  ; FMax(a,b)
  %1152 = fmul fast float %1151, 0x400C5BF8A0000000
  %1153 = fmul fast float %1149, %1107
  %1154 = fmul fast float %1153, %1152
  %1155 = fadd fast float %1154, %1076
  %1156 = fmul fast float %1149, %1108
  %1157 = fmul fast float %1156, %1152
  %1158 = fadd fast float %1157, %1075
  %1159 = fmul fast float %1149, %1109
  %1160 = fmul fast float %1159, %1152
  %1161 = fadd fast float %1160, %1074
  br label %1162

; <label>:1162                                    ; preds = %1132, %1073, %849
  %1163 = phi float [ %1161, %1132 ], [ %1074, %1073 ], [ %1010, %849 ]
  %1164 = phi float [ %1158, %1132 ], [ %1075, %1073 ], [ %1009, %849 ]
  %1165 = phi float [ %1155, %1132 ], [ %1076, %1073 ], [ %1008, %849 ]
  %1166 = fcmp fast ogt float %144, %882
  %1167 = and i1 %1014, %1166
  %1168 = and i1 %1016, %1167
  %1169 = and i1 %1018, %1168
  %1170 = and i1 %1020, %1169
  br i1 %1170, label %1171, label %1189, !dx.controlflow.hints !79

; <label>:1171                                    ; preds = %1162
  %1172 = fmul fast float %884, 0x3FC24924A0000000
  %1173 = fsub fast float %144, %882
  %1174 = fdiv fast float %1173, %1172
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = fsub fast float %1177, %1165
  %1179 = fmul fast float %1178, %1175
  %1180 = fadd fast float %1179, %1165
  %1181 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1182 = fsub fast float %1181, %1164
  %1183 = fmul fast float %1182, %1175
  %1184 = fadd fast float %1183, %1164
  %1185 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1186 = fsub fast float %1185, %1163
  %1187 = fmul fast float %1186, %1175
  %1188 = fadd fast float %1187, %1163
  br label %1189

; <label>:1189                                    ; preds = %1171, %1162
  %1190 = phi float [ %1188, %1171 ], [ %1163, %1162 ]
  %1191 = phi float [ %1184, %1171 ], [ %1164, %1162 ]
  %1192 = phi float [ %1180, %1171 ], [ %1165, %1162 ]
  %1193 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %1194 = fmul fast float %1193, %1192
  %1195 = fmul fast float %1193, %1191
  %1196 = fmul fast float %1193, %1190
  %1197 = fsub fast float %846, %1194
  %1198 = fmul fast float %1197, %279
  %1199 = fadd fast float %1198, %1194
  %1200 = fsub fast float %845, %1195
  %1201 = fmul fast float %1200, %279
  %1202 = fadd fast float %1201, %1195
  %1203 = fsub fast float %844, %1196
  %1204 = fmul fast float %1203, %279
  %1205 = fadd fast float %1204, %1196
  br label %1206

; <label>:1206                                    ; preds = %1189, %843
  %1207 = phi float [ %1205, %1189 ], [ %844, %843 ]
  %1208 = phi float [ %1202, %1189 ], [ %845, %843 ]
  %1209 = phi float [ %1199, %1189 ], [ %846, %843 ]
  %1210 = fcmp fast oeq float %847, 0.000000e+00
  %1211 = select i1 %1210, float 1.000000e+00, float %146
  %1212 = fmul fast float %1209, 0x3FD20DD760000000
  %1213 = fmul fast float %1208, 0x3FD20DD760000000
  %1214 = fmul fast float %1207, 0x3FD20DD760000000
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1217 = fmul fast float %1212, %1216
  %1218 = fmul fast float %1213, %1216
  %1219 = fmul fast float %1214, %1216
  %1220 = icmp eq i32 %244, 0
  br i1 %1220, label %1257, label %1221, !dx.controlflow.hints !80

; <label>:1221                                    ; preds = %1206
  %1222 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %24, float %241, float %242, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1227 = call float @dx.op.binary.f32(i32 36, float %1224, float %1225)  ; FMin(a,b)
  %1228 = call float @dx.op.binary.f32(i32 36, float %1223, float %1227)  ; FMin(a,b)
  %1229 = call float @dx.op.binary.f32(i32 36, float %1228, float %1226)  ; FMin(a,b)
  %1230 = fmul fast float %1229, 2.550000e+02
  %1231 = fadd fast float %1230, 0x3F70101020000000
  %1232 = fptoui float %1231 to i32
  %1233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.i32 %1233, 1
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, %243
  %1237 = fptosi float %1236 to i32
  %1238 = icmp slt i32 %1237, %1232
  br i1 %1238, label %1239, label %1257, !dx.controlflow.hints !81

; <label>:1239                                    ; preds = %1221
  %1240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %241, float %242, float %243, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1245 = fmul fast float %1244, %1241
  %1246 = fmul fast float %1244, %1242
  %1247 = fmul fast float %1244, %1243
  %1248 = fsub fast float %1245, %1217
  %1249 = fsub fast float %1246, %1218
  %1250 = fsub fast float %1247, %1219
  %1251 = fmul fast float %1248, %1211
  %1252 = fmul fast float %1249, %1211
  %1253 = fmul fast float %1250, %1211
  %1254 = fadd fast float %1251, %1217
  %1255 = fadd fast float %1252, %1218
  %1256 = fadd fast float %1253, %1219
  br label %1257

; <label>:1257                                    ; preds = %1239, %1221, %1206
  %1258 = phi float [ %1217, %1206 ], [ %1254, %1239 ], [ %1217, %1221 ]
  %1259 = phi float [ %1218, %1206 ], [ %1255, %1239 ], [ %1218, %1221 ]
  %1260 = phi float [ %1219, %1206 ], [ %1256, %1239 ], [ %1219, %1221 ]
  %1261 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1262 = fmul fast float %1261, %1258
  %1263 = fmul fast float %1261, %1259
  %1264 = fmul fast float %1261, %1260
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 %30, float %1262, float %1263, float %1264, float %1262, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1265

; <label>:1265                                    ; preds = %1257, %56
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !30, !32, !36}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 30, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 5, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 23, i32 1, i32 4, i32 0, !7}
!14 = !{i32 6, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 14, i32 1, i32 4, i32 0, !7}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 21, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !20}
!20 = !{i32 1, i32 16}
!21 = !{i32 12, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !12}
!22 = !{i32 13, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !20}
!23 = !{i32 14, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !12}
!24 = !{i32 15, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !12}
!25 = !{i32 16, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !12}
!26 = !{i32 17, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!27 = !{i32 18, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !12}
!28 = !{i32 19, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!30 = !{!31}
!31 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!32 = !{!33, !34, !35}
!33 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!34 = !{i32 1, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!35 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{!37, !38}
!37 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!39 = !{void ()* @cs_vol_sh_sample_lightgrid_isotropic_skylight, !"cs_vol_sh_sample_lightgrid_isotropic_skylight", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 4, i32 4, i32 4}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !61, !62, !63, !64, !66, !67, !68}
!59 = distinct !{!59, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!60 = distinct !{!60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!61 = distinct !{!61, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!62 = distinct !{!62, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!63 = distinct !{!63, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!64 = distinct !{!64, !65, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %redSH"}
!65 = distinct !{!65, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z"}
!66 = distinct !{!66, !65, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %greenSH"}
!67 = distinct !{!67, !65, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %blueSH"}
!68 = distinct !{!68, !65, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %probeA"}
!69 = !{!59, !61, !62, !63, !68}
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !56, i64 0}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}

