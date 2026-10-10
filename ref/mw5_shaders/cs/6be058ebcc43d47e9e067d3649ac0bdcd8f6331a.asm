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
; shader hash: 4b58c8c4087cd21211e13263dbfe37cf
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

define void @cs_vol_sh_sample_lightgrid_aniso_skylight() {
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
  br i1 %57, label %58, label %1983, !dx.controlflow.hints !43

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
  br i1 %280, label %281, label %1127, !dx.controlflow.hints !50

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
  br i1 %308, label %1024, label %309, !dx.controlflow.hints !51

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
  br i1 %327, label %1024, label %328, !dx.controlflow.hints !52

; <label>:328                                     ; preds = %309
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %320, i32 8)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = sub i32 %318, %322
  %332 = add nsw i32 %331, %330
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %1024, label %336, !dx.controlflow.hints !53

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
  br i1 %762, label %763, label %1024, !dx.controlflow.hints !72

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

; <label>:791                                     ; preds = %1018, %763
  %792 = phi float [ %1022, %1018 ], [ %769, %763 ]
  %793 = phi i32 [ %1020, %1018 ], [ %400, %763 ]
  %794 = phi float [ %973, %1018 ], [ 0.000000e+00, %763 ]
  %795 = phi float [ %971, %1018 ], [ 0.000000e+00, %763 ]
  %796 = phi float [ %969, %1018 ], [ 0.000000e+00, %763 ]
  %797 = phi float [ %965, %1018 ], [ 0.000000e+00, %763 ]
  %798 = phi float [ %963, %1018 ], [ 0.000000e+00, %763 ]
  %799 = phi float [ %959, %1018 ], [ 0.000000e+00, %763 ]
  %800 = phi float [ %957, %1018 ], [ 0.000000e+00, %763 ]
  %801 = phi float [ %955, %1018 ], [ 0.000000e+00, %763 ]
  %802 = phi float [ %951, %1018 ], [ 0.000000e+00, %763 ]
  %803 = phi float [ %994, %1018 ], [ 0.000000e+00, %763 ]
  %804 = phi float [ %992, %1018 ], [ 0.000000e+00, %763 ]
  %805 = phi float [ %990, %1018 ], [ 0.000000e+00, %763 ]
  %806 = phi float [ %987, %1018 ], [ 0.000000e+00, %763 ]
  %807 = phi float [ %985, %1018 ], [ 0.000000e+00, %763 ]
  %808 = phi float [ %982, %1018 ], [ 0.000000e+00, %763 ]
  %809 = phi float [ %980, %1018 ], [ 0.000000e+00, %763 ]
  %810 = phi float [ %978, %1018 ], [ 0.000000e+00, %763 ]
  %811 = phi float [ %975, %1018 ], [ 0.000000e+00, %763 ]
  %812 = phi float [ %1015, %1018 ], [ 0.000000e+00, %763 ]
  %813 = phi float [ %1013, %1018 ], [ 0.000000e+00, %763 ]
  %814 = phi float [ %1011, %1018 ], [ 0.000000e+00, %763 ]
  %815 = phi float [ %1008, %1018 ], [ 0.000000e+00, %763 ]
  %816 = phi float [ %1006, %1018 ], [ 0.000000e+00, %763 ]
  %817 = phi float [ %1003, %1018 ], [ 0.000000e+00, %763 ]
  %818 = phi float [ %1001, %1018 ], [ 0.000000e+00, %763 ]
  %819 = phi float [ %999, %1018 ], [ 0.000000e+00, %763 ]
  %820 = phi float [ %996, %1018 ], [ 0.000000e+00, %763 ]
  %821 = phi i32 [ %1016, %1018 ], [ 0, %763 ]
  %822 = shl i32 %793, 5
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = extractvalue %dx.types.ResRet.i32 %823, 1
  %826 = extractvalue %dx.types.ResRet.i32 %823, 2
  %827 = extractvalue %dx.types.ResRet.i32 %823, 3
  %828 = or i32 %822, 16
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = extractvalue %dx.types.ResRet.i32 %829, 1
  %832 = extractvalue %dx.types.ResRet.i32 %829, 2
  %833 = shl i32 %824, 4
  %834 = and i32 %833, 32752
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = lshr i32 %824, 7
  %837 = and i32 %836, 32752
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %824, 22
  %840 = shl nuw nsw i32 %839, 5
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = and i32 %825, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F80204080000000
  %845 = fadd fast float %844, -1.000000e+00
  %846 = lshr i32 %825, 8
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F80204080000000
  %850 = fadd fast float %849, -1.000000e+00
  %851 = lshr i32 %825, 16
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F80204080000000
  %855 = fadd fast float %854, -1.000000e+00
  %856 = lshr i32 %825, 24
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F80204080000000
  %859 = fadd fast float %858, -1.000000e+00
  %860 = and i32 %826, 255
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F80204080000000
  %863 = fadd fast float %862, -1.000000e+00
  %864 = lshr i32 %826, 8
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = fmul fast float %866, 0x3F80204080000000
  %868 = fadd fast float %867, -1.000000e+00
  %869 = lshr i32 %826, 16
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F80204080000000
  %873 = fadd fast float %872, -1.000000e+00
  %874 = lshr i32 %826, 24
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F80204080000000
  %877 = fadd fast float %876, -1.000000e+00
  %878 = and i32 %827, 255
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F80204080000000
  %881 = fadd fast float %880, -1.000000e+00
  %882 = lshr i32 %827, 8
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = fmul fast float %884, 0x3F80204080000000
  %886 = fadd fast float %885, -1.000000e+00
  %887 = lshr i32 %827, 16
  %888 = and i32 %887, 255
  %889 = uitofp i32 %888 to float
  %890 = fmul fast float %889, 0x3F80204080000000
  %891 = fadd fast float %890, -1.000000e+00
  %892 = lshr i32 %827, 24
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %893, 0x3F80204080000000
  %895 = fadd fast float %894, -1.000000e+00
  %896 = and i32 %830, 255
  %897 = uitofp i32 %896 to float
  %898 = fmul fast float %897, 0x3F80204080000000
  %899 = fadd fast float %898, -1.000000e+00
  %900 = lshr i32 %830, 8
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %902, 0x3F80204080000000
  %904 = fadd fast float %903, -1.000000e+00
  %905 = lshr i32 %830, 16
  %906 = and i32 %905, 255
  %907 = uitofp i32 %906 to float
  %908 = fmul fast float %907, 0x3F80204080000000
  %909 = fadd fast float %908, -1.000000e+00
  %910 = lshr i32 %830, 24
  %911 = uitofp i32 %910 to float
  %912 = fmul fast float %911, 0x3F80204080000000
  %913 = fadd fast float %912, -1.000000e+00
  %914 = and i32 %831, 255
  %915 = uitofp i32 %914 to float
  %916 = fmul fast float %915, 0x3F80204080000000
  %917 = fadd fast float %916, -1.000000e+00
  %918 = lshr i32 %831, 8
  %919 = and i32 %918, 255
  %920 = uitofp i32 %919 to float
  %921 = fmul fast float %920, 0x3F80204080000000
  %922 = fadd fast float %921, -1.000000e+00
  %923 = lshr i32 %831, 16
  %924 = and i32 %923, 255
  %925 = uitofp i32 %924 to float
  %926 = fmul fast float %925, 0x3F80204080000000
  %927 = fadd fast float %926, -1.000000e+00
  %928 = lshr i32 %831, 24
  %929 = uitofp i32 %928 to float
  %930 = fmul fast float %929, 0x3F80204080000000
  %931 = fadd fast float %930, -1.000000e+00
  %932 = and i32 %832, 255
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3F80204080000000
  %935 = fadd fast float %934, -1.000000e+00
  %936 = lshr i32 %832, 8
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F80204080000000
  %940 = fadd fast float %939, -1.000000e+00
  %941 = lshr i32 %832, 16
  %942 = and i32 %941, 255
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, 0x3F80204080000000
  %945 = fadd fast float %944, -1.000000e+00
  %946 = lshr i32 %832, 24
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3F80204080000000
  %949 = fadd fast float %948, -1.000000e+00
  %950 = fmul fast float %835, %792
  %951 = fadd fast float %950, %802
  %952 = fmul fast float %792, 0x3FFBB67AE0000000
  %953 = fmul fast float %952, %835
  %954 = fmul fast float %953, %845
  %955 = fadd fast float %954, %801
  %956 = fmul fast float %953, %850
  %957 = fadd fast float %956, %800
  %958 = fmul fast float %953, %855
  %959 = fadd fast float %958, %799
  %960 = fmul fast float %792, 0x3FFEFBDEC0000000
  %961 = fmul fast float %960, %835
  %962 = fmul fast float %961, %859
  %963 = fadd fast float %962, %798
  %964 = fmul fast float %961, %863
  %965 = fadd fast float %964, %797
  %966 = fmul fast float %792, 0x4001E377A0000000
  %967 = fmul fast float %966, %835
  %968 = fmul fast float %967, %868
  %969 = fadd fast float %968, %796
  %970 = fmul fast float %961, %873
  %971 = fadd fast float %970, %795
  %972 = fmul fast float %961, %877
  %973 = fadd fast float %972, %794
  %974 = fmul fast float %838, %792
  %975 = fadd fast float %974, %811
  %976 = fmul fast float %952, %838
  %977 = fmul fast float %976, %881
  %978 = fadd fast float %977, %810
  %979 = fmul fast float %976, %886
  %980 = fadd fast float %979, %809
  %981 = fmul fast float %976, %891
  %982 = fadd fast float %981, %808
  %983 = fmul fast float %960, %838
  %984 = fmul fast float %983, %895
  %985 = fadd fast float %984, %807
  %986 = fmul fast float %983, %899
  %987 = fadd fast float %986, %806
  %988 = fmul fast float %966, %838
  %989 = fmul fast float %988, %904
  %990 = fadd fast float %989, %805
  %991 = fmul fast float %983, %909
  %992 = fadd fast float %991, %804
  %993 = fmul fast float %983, %913
  %994 = fadd fast float %993, %803
  %995 = fmul fast float %841, %792
  %996 = fadd fast float %995, %820
  %997 = fmul fast float %952, %841
  %998 = fmul fast float %997, %917
  %999 = fadd fast float %998, %819
  %1000 = fmul fast float %997, %922
  %1001 = fadd fast float %1000, %818
  %1002 = fmul fast float %997, %927
  %1003 = fadd fast float %1002, %817
  %1004 = fmul fast float %960, %841
  %1005 = fmul fast float %1004, %931
  %1006 = fadd fast float %1005, %816
  %1007 = fmul fast float %1004, %935
  %1008 = fadd fast float %1007, %815
  %1009 = fmul fast float %966, %841
  %1010 = fmul fast float %1009, %940
  %1011 = fadd fast float %1010, %814
  %1012 = fmul fast float %1004, %945
  %1013 = fadd fast float %1012, %813
  %1014 = fmul fast float %1004, %949
  %1015 = fadd fast float %1014, %812
  %1016 = add nuw nsw i32 %821, 1
  %1017 = icmp eq i32 %1016, 8
  br i1 %1017, label %1023, label %1018

; <label>:1018                                    ; preds = %791
  %1019 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %1016
  %1020 = load i32, i32* %1019, align 4, !tbaa !54, !noalias !58
  %1021 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %1016
  %1022 = load float, float* %1021, align 4, !tbaa !70, !noalias !58
  br label %791

; <label>:1023                                    ; preds = %791
  br label %1024

; <label>:1024                                    ; preds = %1023, %761, %328, %309, %281
  %1025 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %973, %1023 ]
  %1026 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %971, %1023 ]
  %1027 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %969, %1023 ]
  %1028 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %965, %1023 ]
  %1029 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %963, %1023 ]
  %1030 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %959, %1023 ]
  %1031 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %957, %1023 ]
  %1032 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %955, %1023 ]
  %1033 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %951, %1023 ]
  %1034 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %994, %1023 ]
  %1035 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %992, %1023 ]
  %1036 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %990, %1023 ]
  %1037 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %987, %1023 ]
  %1038 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %985, %1023 ]
  %1039 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %982, %1023 ]
  %1040 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %980, %1023 ]
  %1041 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %978, %1023 ]
  %1042 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %975, %1023 ]
  %1043 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %1015, %1023 ]
  %1044 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %1013, %1023 ]
  %1045 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %1011, %1023 ]
  %1046 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %1008, %1023 ]
  %1047 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %1006, %1023 ]
  %1048 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %1003, %1023 ]
  %1049 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %1001, %1023 ]
  %1050 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %999, %1023 ]
  %1051 = phi float [ 0.000000e+00, %281 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ %996, %1023 ]
  %1052 = phi i1 [ false, %281 ], [ false, %309 ], [ false, %328 ], [ false, %761 ], [ true, %1023 ]
  %1053 = phi float [ 1.000000e+00, %281 ], [ 1.000000e+00, %309 ], [ 1.000000e+00, %328 ], [ 0.000000e+00, %761 ], [ 1.000000e+00, %1023 ]
  br i1 %1052, label %1127, label %1054, !dx.controlflow.hints !73

; <label>:1054                                    ; preds = %1024
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.i32 %1055, 1
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.i32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.i32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.i32 %1058, 3
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.i32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.i32 %1063, 2
  %1067 = extractvalue %dx.types.ResRet.i32 %1063, 3
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.i32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.i32 %1068, 2
  %1072 = extractvalue %dx.types.ResRet.i32 %1068, 3
  %1073 = and i32 %1069, 65535
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = lshr i32 %1069, 16
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = and i32 %1070, 65535
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = lshr i32 %1070, 16
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = and i32 %1071, 65535
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = lshr i32 %1071, 16
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = and i32 %1072, 65535
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = lshr i32 %1072, 16
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = and i32 %1064, 65535
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = lshr i32 %1064, 16
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = and i32 %1065, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1065, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = and i32 %1066, 65535
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = lshr i32 %1066, 16
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = and i32 %1067, 65535
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = lshr i32 %1067, 16
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = and i32 %1059, 65535
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = lshr i32 %1059, 16
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = and i32 %1060, 65535
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = lshr i32 %1060, 16
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = and i32 %1061, 65535
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = lshr i32 %1061, 16
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = and i32 %1062, 65535
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = lshr i32 %1062, 16
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = and i32 %1056, 65535
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = lshr i32 %1056, 16
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = and i32 %1057, 65535
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  br label %1127

; <label>:1127                                    ; preds = %1054, %1024, %278
  %1128 = phi float [ %1043, %1024 ], [ %1126, %1054 ], [ 0.000000e+00, %278 ]
  %1129 = phi float [ %1044, %1024 ], [ %1124, %1054 ], [ 0.000000e+00, %278 ]
  %1130 = phi float [ %1045, %1024 ], [ %1122, %1054 ], [ 0.000000e+00, %278 ]
  %1131 = phi float [ %1046, %1024 ], [ %1120, %1054 ], [ 0.000000e+00, %278 ]
  %1132 = phi float [ %1047, %1024 ], [ %1118, %1054 ], [ 0.000000e+00, %278 ]
  %1133 = phi float [ %1048, %1024 ], [ %1116, %1054 ], [ 0.000000e+00, %278 ]
  %1134 = phi float [ %1049, %1024 ], [ %1114, %1054 ], [ 0.000000e+00, %278 ]
  %1135 = phi float [ %1050, %1024 ], [ %1112, %1054 ], [ 0.000000e+00, %278 ]
  %1136 = phi float [ %1051, %1024 ], [ %1110, %1054 ], [ 0.000000e+00, %278 ]
  %1137 = phi float [ %1034, %1024 ], [ %1108, %1054 ], [ 0.000000e+00, %278 ]
  %1138 = phi float [ %1035, %1024 ], [ %1106, %1054 ], [ 0.000000e+00, %278 ]
  %1139 = phi float [ %1036, %1024 ], [ %1104, %1054 ], [ 0.000000e+00, %278 ]
  %1140 = phi float [ %1037, %1024 ], [ %1102, %1054 ], [ 0.000000e+00, %278 ]
  %1141 = phi float [ %1038, %1024 ], [ %1100, %1054 ], [ 0.000000e+00, %278 ]
  %1142 = phi float [ %1039, %1024 ], [ %1098, %1054 ], [ 0.000000e+00, %278 ]
  %1143 = phi float [ %1040, %1024 ], [ %1096, %1054 ], [ 0.000000e+00, %278 ]
  %1144 = phi float [ %1041, %1024 ], [ %1094, %1054 ], [ 0.000000e+00, %278 ]
  %1145 = phi float [ %1042, %1024 ], [ %1092, %1054 ], [ 0.000000e+00, %278 ]
  %1146 = phi float [ %1025, %1024 ], [ %1090, %1054 ], [ 0.000000e+00, %278 ]
  %1147 = phi float [ %1026, %1024 ], [ %1088, %1054 ], [ 0.000000e+00, %278 ]
  %1148 = phi float [ %1027, %1024 ], [ %1086, %1054 ], [ 0.000000e+00, %278 ]
  %1149 = phi float [ %1028, %1024 ], [ %1084, %1054 ], [ 0.000000e+00, %278 ]
  %1150 = phi float [ %1029, %1024 ], [ %1082, %1054 ], [ 0.000000e+00, %278 ]
  %1151 = phi float [ %1030, %1024 ], [ %1080, %1054 ], [ 0.000000e+00, %278 ]
  %1152 = phi float [ %1031, %1024 ], [ %1078, %1054 ], [ 0.000000e+00, %278 ]
  %1153 = phi float [ %1032, %1024 ], [ %1076, %1054 ], [ 0.000000e+00, %278 ]
  %1154 = phi float [ %1033, %1024 ], [ %1074, %1054 ], [ 0.000000e+00, %278 ]
  %1155 = phi float [ %1053, %1024 ], [ %1053, %1054 ], [ 1.000000e+00, %278 ]
  %1156 = fcmp fast olt float %279, 1.000000e+00
  br i1 %1156, label %1157, label %1812, !dx.controlflow.hints !74

; <label>:1157                                    ; preds = %1127
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = fsub fast float %142, %1159
  %1162 = fsub fast float %143, %1160
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1166 = fmul fast float %1161, %1164
  %1167 = fmul fast float %1162, %1165
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = fmul fast float %1169, %1166
  %1171 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1172 = fadd fast float %1170, %1171
  %1173 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1174 = fmul fast float %1173, %1167
  %1175 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1176 = fadd fast float %1174, %1175
  %1177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1172, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1182 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1183 = fsub fast float %1181, %1182
  %1184 = fmul fast float %1183, %1178
  %1185 = fadd fast float %1184, %1182
  %1186 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1187 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1188 = fsub fast float %1186, %1187
  %1189 = fmul fast float %1188, %1179
  %1190 = fadd fast float %1189, %1187
  %1191 = fsub fast float %144, %1185
  %1192 = fsub fast float %1190, %1185
  %1193 = fdiv fast float %1191, %1192
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = fmul fast float %1196, %1194
  %1198 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1199 = fadd fast float %1197, %1198
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %1172, float %1176, float %1199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1208 = fmul fast float %1205, %1201
  %1209 = fmul fast float %1206, %1202
  %1210 = fmul fast float %1207, %1203
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1215 = fadd fast float %1208, %1212
  %1216 = fadd fast float %1209, %1213
  %1217 = fadd fast float %1210, %1214
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = fmul fast float %1219, %1166
  %1221 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1222 = fadd fast float %1220, %1221
  %1223 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1224 = fmul fast float %1223, %1167
  %1225 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1226 = fadd fast float %1224, %1225
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.CBufRet.f32 %1227, 3
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %1222, float %1226, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %1222, float %1226, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  %1247 = fmul fast float %1238, %1215
  %1248 = fmul fast float %1243, %1215
  %1249 = fmul fast float %1245, %1215
  %1250 = fmul fast float %1241, %1215
  %1251 = fadd fast float %1247, %1228
  %1252 = fadd fast float %1248, %1229
  %1253 = fadd fast float %1249, %1230
  %1254 = fadd fast float %1250, %1231
  %1255 = fmul fast float %1239, %1215
  %1256 = fmul fast float %1244, %1215
  %1257 = fadd fast float %1255, %1233
  %1258 = fadd fast float %1256, %1234
  %1259 = fmul fast float %1240, %1215
  %1260 = fmul fast float %1246, %1215
  %1261 = fadd fast float %1259, %1235
  %1262 = fadd fast float %1260, %1236
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %1222, float %1226, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %1222, float %1226, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1268, 2
  %1272 = extractvalue %dx.types.ResRet.f32 %1268, 3
  %1273 = fmul fast float %1264, %1216
  %1274 = fmul fast float %1269, %1216
  %1275 = fmul fast float %1271, %1216
  %1276 = fmul fast float %1267, %1216
  %1277 = fadd fast float %1251, %1273
  %1278 = fadd fast float %1252, %1274
  %1279 = fadd fast float %1253, %1275
  %1280 = fadd fast float %1254, %1276
  %1281 = fmul fast float %1265, %1216
  %1282 = fmul fast float %1270, %1216
  %1283 = fadd fast float %1257, %1281
  %1284 = fadd fast float %1258, %1282
  %1285 = fmul fast float %1266, %1216
  %1286 = fmul fast float %1272, %1216
  %1287 = fadd fast float %1261, %1285
  %1288 = fadd fast float %1262, %1286
  %1289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %1222, float %1226, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %1222, float %1226, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.ResRet.f32 %1294, 3
  %1299 = fmul fast float %1290, %1217
  %1300 = fmul fast float %1295, %1217
  %1301 = fmul fast float %1297, %1217
  %1302 = fmul fast float %1293, %1217
  %1303 = fadd fast float %1277, %1299
  %1304 = fadd fast float %1278, %1300
  %1305 = fadd fast float %1279, %1301
  %1306 = fadd fast float %1280, %1302
  %1307 = fmul fast float %1291, %1217
  %1308 = fmul fast float %1296, %1217
  %1309 = fadd fast float %1283, %1307
  %1310 = fadd fast float %1284, %1308
  %1311 = fmul fast float %1292, %1217
  %1312 = fmul fast float %1298, %1217
  %1313 = fadd fast float %1287, %1311
  %1314 = fadd fast float %1288, %1312
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = fsub fast float %142, %1316
  %1318 = fsub fast float %1159, %142
  %1319 = call float @dx.op.binary.f32(i32 35, float %1318, float %1317)  ; FMax(a,b)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1321 = fsub fast float %143, %1320
  %1322 = fsub fast float %1160, %143
  %1323 = call float @dx.op.binary.f32(i32 35, float %1322, float %1321)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1319, float %1323)  ; FMax(a,b)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1163, 3
  %1326 = fmul fast float %1325, %1324
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 0
  %1330 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1331 = extractvalue %dx.types.CBufRet.f32 %1328, 2
  %1332 = extractvalue %dx.types.CBufRet.f32 %1328, 3
  %1333 = fsub fast float %1329, %1303
  %1334 = fsub fast float %1330, %1304
  %1335 = fsub fast float %1331, %1305
  %1336 = fsub fast float %1332, %1306
  %1337 = fmul fast float %1333, %1327
  %1338 = fmul fast float %1334, %1327
  %1339 = fmul fast float %1335, %1327
  %1340 = fmul fast float %1336, %1327
  %1341 = fadd fast float %1337, %1303
  %1342 = fadd fast float %1338, %1304
  %1343 = fadd fast float %1339, %1305
  %1344 = fadd fast float %1340, %1306
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.CBufRet.f32 %1345, 1
  %1348 = fsub fast float %1346, %1309
  %1349 = fsub fast float %1347, %1310
  %1350 = fmul fast float %1348, %1327
  %1351 = fmul fast float %1349, %1327
  %1352 = fadd fast float %1350, %1309
  %1353 = fadd fast float %1351, %1310
  %1354 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1355 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1356 = fsub fast float %1354, %1313
  %1357 = fsub fast float %1355, %1314
  %1358 = fmul fast float %1356, %1327
  %1359 = fmul fast float %1357, %1327
  %1360 = fadd fast float %1358, %1313
  %1361 = fadd fast float %1359, %1314
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = fmul fast float %1363, %1341
  %1365 = fmul fast float %1363, %1342
  %1366 = fmul fast float %1363, %1343
  %1367 = fmul fast float %1363, %1344
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = fmul fast float %1369, %1352
  %1371 = fmul fast float %1369, %1353
  %1372 = fadd fast float %1370, %1364
  %1373 = fadd fast float %1371, %1366
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = fmul fast float %1375, %1360
  %1377 = fmul fast float %1375, %1361
  %1378 = fadd fast float %1372, %1376
  %1379 = fadd fast float %1373, %1377
  %1380 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1381 = fmul fast float %1380, %1341
  %1382 = fmul fast float %1380, %1342
  %1383 = fmul fast float %1380, %1343
  %1384 = fmul fast float %1380, %1344
  %1385 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1386 = fmul fast float %1385, %1352
  %1387 = fmul fast float %1385, %1353
  %1388 = fadd fast float %1386, %1381
  %1389 = fadd fast float %1387, %1383
  %1390 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1391 = fmul fast float %1390, %1360
  %1392 = fmul fast float %1390, %1361
  %1393 = fadd fast float %1388, %1391
  %1394 = fadd fast float %1389, %1392
  %1395 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1396 = fmul fast float %1395, %1341
  %1397 = fmul fast float %1395, %1342
  %1398 = fmul fast float %1395, %1343
  %1399 = fmul fast float %1395, %1344
  %1400 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1401 = fmul fast float %1400, %1352
  %1402 = fmul fast float %1400, %1353
  %1403 = fadd fast float %1401, %1396
  %1404 = fadd fast float %1402, %1398
  %1405 = extractvalue %dx.types.CBufRet.f32 %1374, 2
  %1406 = fmul fast float %1405, %1360
  %1407 = fmul fast float %1405, %1361
  %1408 = fadd fast float %1403, %1406
  %1409 = fadd fast float %1404, %1407
  %1410 = fmul fast float %1397, %1397
  %1411 = fmul fast float %1409, %1409
  %1412 = fmul fast float %1399, %1399
  %1413 = fadd fast float %1412, %1410
  %1414 = fadd fast float %1413, %1411
  %1415 = call float @dx.op.unary.f32(i32 24, float %1414)  ; Sqrt(value)
  %1416 = fcmp fast ugt float %1415, 0.000000e+00
  br i1 %1416, label %1417, label %1432, !dx.controlflow.hints !75

; <label>:1417                                    ; preds = %1157
  %1418 = fsub fast float -0.000000e+00, %1399
  %1419 = fdiv fast float %1418, %1415
  %1420 = fsub fast float -0.000000e+00, %1397
  %1421 = fdiv fast float %1420, %1415
  %1422 = fdiv fast float %1409, %1415
  %1423 = fmul fast float %1408, 0x3FE279A760000000
  %1424 = fmul fast float %1421, %1397
  %1425 = fmul fast float %1422, %1409
  %1426 = fmul fast float %1419, %1399
  %1427 = fadd fast float %1424, %1426
  %1428 = fsub fast float %1427, %1425
  %1429 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1430 = fadd fast float %1429, 0x3DDB7CDFE0000000
  %1431 = fdiv fast float %1423, %1430
  br label %1432

; <label>:1432                                    ; preds = %1417, %1157
  %1433 = phi float [ %1431, %1417 ], [ 1.000000e+00, %1157 ]
  %1434 = fmul fast float %1382, %1382
  %1435 = fmul fast float %1394, %1394
  %1436 = fmul fast float %1384, %1384
  %1437 = fadd fast float %1436, %1434
  %1438 = fadd fast float %1437, %1435
  %1439 = call float @dx.op.unary.f32(i32 24, float %1438)  ; Sqrt(value)
  %1440 = fcmp fast ugt float %1439, 0.000000e+00
  br i1 %1440, label %1441, label %1456, !dx.controlflow.hints !75

; <label>:1441                                    ; preds = %1432
  %1442 = fsub fast float -0.000000e+00, %1384
  %1443 = fdiv fast float %1442, %1439
  %1444 = fsub fast float -0.000000e+00, %1382
  %1445 = fdiv fast float %1444, %1439
  %1446 = fdiv fast float %1394, %1439
  %1447 = fmul fast float %1393, 0x3FE279A760000000
  %1448 = fmul fast float %1445, %1382
  %1449 = fmul fast float %1446, %1394
  %1450 = fmul fast float %1443, %1384
  %1451 = fadd fast float %1448, %1450
  %1452 = fsub fast float %1451, %1449
  %1453 = call float @dx.op.unary.f32(i32 6, float %1452)  ; FAbs(value)
  %1454 = fadd fast float %1453, 0x3DDB7CDFE0000000
  %1455 = fdiv fast float %1447, %1454
  br label %1456

; <label>:1456                                    ; preds = %1441, %1432
  %1457 = phi float [ %1455, %1441 ], [ 1.000000e+00, %1432 ]
  %1458 = call float @dx.op.binary.f32(i32 36, float %1457, float %1433)  ; FMin(a,b)
  %1459 = fmul fast float %1365, %1365
  %1460 = fmul fast float %1379, %1379
  %1461 = fmul fast float %1367, %1367
  %1462 = fadd fast float %1461, %1459
  %1463 = fadd fast float %1462, %1460
  %1464 = call float @dx.op.unary.f32(i32 24, float %1463)  ; Sqrt(value)
  %1465 = fcmp fast ugt float %1464, 0.000000e+00
  br i1 %1465, label %1466, label %1481, !dx.controlflow.hints !75

; <label>:1466                                    ; preds = %1456
  %1467 = fsub fast float -0.000000e+00, %1367
  %1468 = fdiv fast float %1467, %1464
  %1469 = fsub fast float -0.000000e+00, %1365
  %1470 = fdiv fast float %1469, %1464
  %1471 = fdiv fast float %1379, %1464
  %1472 = fmul fast float %1378, 0x3FE279A760000000
  %1473 = fmul fast float %1470, %1365
  %1474 = fmul fast float %1471, %1379
  %1475 = fmul fast float %1468, %1367
  %1476 = fadd fast float %1473, %1475
  %1477 = fsub fast float %1476, %1474
  %1478 = call float @dx.op.unary.f32(i32 6, float %1477)  ; FAbs(value)
  %1479 = fadd fast float %1478, 0x3DDB7CDFE0000000
  %1480 = fdiv fast float %1472, %1479
  br label %1481

; <label>:1481                                    ; preds = %1466, %1456
  %1482 = phi float [ %1480, %1466 ], [ 1.000000e+00, %1456 ]
  %1483 = call float @dx.op.binary.f32(i32 36, float %1482, float %1458)  ; FMin(a,b)
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1485 = fcmp fast olt float %1484, 1.000000e+00
  br i1 %1485, label %1486, label %1496, !dx.controlflow.hints !76

; <label>:1486                                    ; preds = %1481
  %1487 = fmul fast float %1484, %1365
  %1488 = fmul fast float %1484, %1379
  %1489 = fmul fast float %1484, %1367
  %1490 = fmul fast float %1484, %1382
  %1491 = fmul fast float %1484, %1394
  %1492 = fmul fast float %1484, %1384
  %1493 = fmul fast float %1484, %1397
  %1494 = fmul fast float %1484, %1409
  %1495 = fmul fast float %1484, %1399
  br label %1496

; <label>:1496                                    ; preds = %1486, %1481
  %1497 = phi float [ %1493, %1486 ], [ %1397, %1481 ]
  %1498 = phi float [ %1494, %1486 ], [ %1409, %1481 ]
  %1499 = phi float [ %1495, %1486 ], [ %1399, %1481 ]
  %1500 = phi float [ %1490, %1486 ], [ %1382, %1481 ]
  %1501 = phi float [ %1491, %1486 ], [ %1394, %1481 ]
  %1502 = phi float [ %1492, %1486 ], [ %1384, %1481 ]
  %1503 = phi float [ %1487, %1486 ], [ %1365, %1481 ]
  %1504 = phi float [ %1488, %1486 ], [ %1379, %1481 ]
  %1505 = phi float [ %1489, %1486 ], [ %1367, %1481 ]
  %1506 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1378)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1393)  ; FMax(a,b)
  %1508 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1408)  ; FMax(a,b)
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 0
  %1511 = fcmp fast ogt float %1510, 0.000000e+00
  %1512 = fcmp fast oge float %1166, 0.000000e+00
  %1513 = and i1 %1512, %1511
  %1514 = fcmp fast ole float %1166, 1.000000e+00
  %1515 = and i1 %1514, %1513
  %1516 = fcmp fast oge float %1167, 0.000000e+00
  %1517 = and i1 %1516, %1515
  %1518 = fcmp fast ole float %1167, 1.000000e+00
  %1519 = and i1 %1518, %1517
  br i1 %1519, label %1520, label %1660, !dx.controlflow.hints !77

; <label>:1520                                    ; preds = %1496
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1523 = extractvalue %dx.types.CBufRet.f32 %1521, 3
  %1524 = fmul fast float %1522, %1166
  %1525 = fmul fast float %1523, %1167
  %1526 = call float @dx.op.unary.f32(i32 27, float %1524)  ; Round_ni(value)
  %1527 = call float @dx.op.unary.f32(i32 27, float %1525)  ; Round_ni(value)
  %1528 = fptosi float %1526 to i32
  %1529 = fptosi float %1527 to i32
  %1530 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %1528, i32 %1529, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 65535
  %1533 = lshr i32 %1531, 16
  %1534 = icmp eq i32 %1532, 65535
  br i1 %1534, label %1571, label %1535, !dx.controlflow.hints !78

; <label>:1535                                    ; preds = %1520
  %1536 = extractvalue %dx.types.CBufRet.f32 %1509, 1
  %1537 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1538 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1539 = fmul fast float %1537, %1166
  %1540 = fmul fast float %1538, %1167
  %1541 = fmul fast float %1539, 1.250000e-01
  %1542 = fmul fast float %1540, 1.250000e-01
  %1543 = call float @dx.op.unary.f32(i32 27, float %1541)  ; Round_ni(value)
  %1544 = call float @dx.op.unary.f32(i32 27, float %1542)  ; Round_ni(value)
  %1545 = fmul fast float %1543, 8.000000e+00
  %1546 = fmul fast float %1544, 8.000000e+00
  %1547 = and i32 %1531, 255
  %1548 = lshr i32 %1531, 8
  %1549 = and i32 %1548, 255
  %1550 = mul nuw nsw i32 %1547, 9
  %1551 = uitofp i32 %1550 to float
  %1552 = mul nuw nsw i32 %1549, 9
  %1553 = uitofp i32 %1552 to float
  %1554 = fadd fast float %1551, 5.000000e-01
  %1555 = fadd fast float %1554, %1539
  %1556 = fsub fast float %1555, %1545
  %1557 = fadd fast float %1553, 5.000000e-01
  %1558 = fadd fast float %1557, %1540
  %1559 = fsub fast float %1558, %1546
  %1560 = fdiv fast float %1556, %1510
  %1561 = fdiv fast float %1559, %1536
  %1562 = fmul fast float %1194, 4.375000e-01
  %1563 = fadd fast float %1562, 3.125000e-02
  %1564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1560, float %1561, float %1563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = fadd fast float %1565, %1506
  %1569 = fadd fast float %1566, %1507
  %1570 = fadd fast float %1567, %1508
  br label %1571

; <label>:1571                                    ; preds = %1535, %1520
  %1572 = phi float [ %1570, %1535 ], [ %1508, %1520 ]
  %1573 = phi float [ %1569, %1535 ], [ %1507, %1520 ]
  %1574 = phi float [ %1568, %1535 ], [ %1506, %1520 ]
  %1575 = icmp eq i32 %1533, 65535
  br i1 %1575, label %1660, label %1576, !dx.controlflow.hints !79

; <label>:1576                                    ; preds = %1571
  %1577 = extractvalue %dx.types.CBufRet.f32 %1509, 1
  %1578 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1580 = fmul fast float %1578, %1166
  %1581 = fmul fast float %1579, %1167
  %1582 = fmul fast float %1580, 1.250000e-01
  %1583 = fmul fast float %1581, 1.250000e-01
  %1584 = call float @dx.op.unary.f32(i32 27, float %1582)  ; Round_ni(value)
  %1585 = call float @dx.op.unary.f32(i32 27, float %1583)  ; Round_ni(value)
  %1586 = fmul fast float %1584, 8.000000e+00
  %1587 = fmul fast float %1585, 8.000000e+00
  %1588 = fsub fast float %1580, %1586
  %1589 = fsub fast float %1581, %1587
  %1590 = fadd fast float %1588, 5.000000e-01
  %1591 = fadd fast float %1589, 5.000000e-01
  %1592 = and i32 %1533, 255
  %1593 = lshr i32 %1531, 24
  %1594 = mul nuw nsw i32 %1592, 9
  %1595 = uitofp i32 %1594 to float
  %1596 = mul nuw nsw i32 %1593, 9
  %1597 = uitofp i32 %1596 to float
  %1598 = fadd fast float %1590, %1595
  %1599 = fadd fast float %1591, %1597
  %1600 = fdiv fast float %1598, %1510
  %1601 = fdiv fast float %1599, %1577
  %1602 = fmul fast float %1194, 4.375000e-01
  %1603 = fadd fast float %1602, 3.125000e-02
  %1604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1600, float %1601, float %1603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.ResRet.f32 %1604, 2
  %1608 = fadd fast float %1602, 5.312500e-01
  %1609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1600, float %1601, float %1608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1610 = extractvalue %dx.types.ResRet.f32 %1609, 0
  %1611 = extractvalue %dx.types.ResRet.f32 %1609, 1
  %1612 = extractvalue %dx.types.ResRet.f32 %1609, 2
  %1613 = fmul fast float %1610, 2.000000e+00
  %1614 = fmul fast float %1611, 2.000000e+00
  %1615 = fmul fast float %1612, 2.000000e+00
  %1616 = fadd fast float %1613, -1.000000e+00
  %1617 = fadd fast float %1614, -1.000000e+00
  %1618 = fadd fast float %1615, -1.000000e+00
  %1619 = fmul fast float %1616, %1616
  %1620 = fmul fast float %1617, %1617
  %1621 = fadd fast float %1619, %1620
  %1622 = fmul fast float %1618, %1618
  %1623 = fadd fast float %1621, %1622
  %1624 = call float @dx.op.unary.f32(i32 24, float %1623)  ; Sqrt(value)
  %1625 = fcmp fast ogt float %1624, 0.000000e+00
  br i1 %1625, label %1626, label %1630, !dx.controlflow.hints !80

; <label>:1626                                    ; preds = %1576
  %1627 = fdiv fast float %1616, %1624
  %1628 = fdiv fast float %1617, %1624
  %1629 = fdiv fast float %1618, %1624
  br label %1630

; <label>:1630                                    ; preds = %1626, %1576
  %1631 = phi float [ %1627, %1626 ], [ 0.000000e+00, %1576 ]
  %1632 = phi float [ %1628, %1626 ], [ 0.000000e+00, %1576 ]
  %1633 = phi float [ %1629, %1626 ], [ 0.000000e+00, %1576 ]
  %1634 = fmul fast float %135, %135
  %1635 = fmul fast float %136, %136
  %1636 = fadd fast float %1634, %1635
  %1637 = call float @dx.op.unary.f32(i32 24, float %1636)  ; Sqrt(value)
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1641 = fsub fast float %1637, %1639
  %1642 = fdiv fast float %1641, %1640
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fmul fast float %1643, 2.000000e+00
  %1645 = fsub fast float 3.000000e+00, %1644
  %1646 = fmul fast float %1643, %1643
  %1647 = fmul fast float %1646, %1645
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1631, float %1632, float %1633, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1648)  ; FMax(a,b)
  %1650 = fmul fast float %1649, 0x400C5BF8A0000000
  %1651 = fmul fast float %1647, %1605
  %1652 = fmul fast float %1651, %1650
  %1653 = fadd fast float %1652, %1574
  %1654 = fmul fast float %1647, %1606
  %1655 = fmul fast float %1654, %1650
  %1656 = fadd fast float %1655, %1573
  %1657 = fmul fast float %1647, %1607
  %1658 = fmul fast float %1657, %1650
  %1659 = fadd fast float %1658, %1572
  br label %1660

; <label>:1660                                    ; preds = %1630, %1571, %1496
  %1661 = phi float [ %1659, %1630 ], [ %1572, %1571 ], [ %1508, %1496 ]
  %1662 = phi float [ %1656, %1630 ], [ %1573, %1571 ], [ %1507, %1496 ]
  %1663 = phi float [ %1653, %1630 ], [ %1574, %1571 ], [ %1506, %1496 ]
  %1664 = fcmp fast ogt float %144, %1190
  %1665 = and i1 %1512, %1664
  %1666 = and i1 %1514, %1665
  %1667 = and i1 %1516, %1666
  %1668 = and i1 %1518, %1667
  br i1 %1668, label %1669, label %1726, !dx.controlflow.hints !81

; <label>:1669                                    ; preds = %1660
  %1670 = fmul fast float %1192, 0x3FC24924A0000000
  %1671 = fsub fast float %144, %1190
  %1672 = fdiv fast float %1671, %1670
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 0
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1680 = fsub fast float %1675, %1663
  %1681 = fsub fast float %1677, %1503
  %1682 = fsub fast float %1678, %1504
  %1683 = fsub fast float %1679, %1505
  %1684 = fmul fast float %1680, %1673
  %1685 = fmul fast float %1681, %1673
  %1686 = fmul fast float %1682, %1673
  %1687 = fmul fast float %1683, %1673
  %1688 = fadd fast float %1684, %1663
  %1689 = fadd fast float %1685, %1503
  %1690 = fadd fast float %1686, %1504
  %1691 = fadd fast float %1687, %1505
  %1692 = extractvalue %dx.types.CBufRet.f32 %1674, 1
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.CBufRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.CBufRet.f32 %1693, 2
  %1697 = fsub fast float %1692, %1662
  %1698 = fsub fast float %1694, %1500
  %1699 = fsub fast float %1695, %1501
  %1700 = fsub fast float %1696, %1502
  %1701 = fmul fast float %1697, %1673
  %1702 = fmul fast float %1698, %1673
  %1703 = fmul fast float %1699, %1673
  %1704 = fmul fast float %1700, %1673
  %1705 = fadd fast float %1701, %1662
  %1706 = fadd fast float %1702, %1500
  %1707 = fadd fast float %1703, %1501
  %1708 = fadd fast float %1704, %1502
  %1709 = extractvalue %dx.types.CBufRet.f32 %1674, 2
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1713 = extractvalue %dx.types.CBufRet.f32 %1710, 2
  %1714 = fsub fast float %1709, %1661
  %1715 = fsub fast float %1711, %1497
  %1716 = fsub fast float %1712, %1498
  %1717 = fsub fast float %1713, %1499
  %1718 = fmul fast float %1714, %1673
  %1719 = fmul fast float %1715, %1673
  %1720 = fmul fast float %1716, %1673
  %1721 = fmul fast float %1717, %1673
  %1722 = fadd fast float %1718, %1661
  %1723 = fadd fast float %1719, %1497
  %1724 = fadd fast float %1720, %1498
  %1725 = fadd fast float %1721, %1499
  br label %1726

; <label>:1726                                    ; preds = %1669, %1660
  %1727 = phi float [ %1722, %1669 ], [ %1661, %1660 ]
  %1728 = phi float [ %1723, %1669 ], [ %1497, %1660 ]
  %1729 = phi float [ %1724, %1669 ], [ %1498, %1660 ]
  %1730 = phi float [ %1725, %1669 ], [ %1499, %1660 ]
  %1731 = phi float [ %1705, %1669 ], [ %1662, %1660 ]
  %1732 = phi float [ %1706, %1669 ], [ %1500, %1660 ]
  %1733 = phi float [ %1707, %1669 ], [ %1501, %1660 ]
  %1734 = phi float [ %1708, %1669 ], [ %1502, %1660 ]
  %1735 = phi float [ %1688, %1669 ], [ %1663, %1660 ]
  %1736 = phi float [ %1689, %1669 ], [ %1503, %1660 ]
  %1737 = phi float [ %1690, %1669 ], [ %1504, %1660 ]
  %1738 = phi float [ %1691, %1669 ], [ %1505, %1660 ]
  %1739 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1740 = fmul fast float %1739, %1735
  %1741 = fmul fast float %1739, %1731
  %1742 = fmul fast float %1739, %1727
  %1743 = fmul fast float %1736, 1.500000e+00
  %1744 = fmul fast float %1743, %1739
  %1745 = fmul fast float %1737, 1.500000e+00
  %1746 = fmul fast float %1745, %1739
  %1747 = fmul fast float %1738, 1.500000e+00
  %1748 = fmul fast float %1747, %1739
  %1749 = fmul fast float %1732, 1.500000e+00
  %1750 = fmul fast float %1749, %1739
  %1751 = fmul fast float %1733, 1.500000e+00
  %1752 = fmul fast float %1751, %1739
  %1753 = fmul fast float %1734, 1.500000e+00
  %1754 = fmul fast float %1753, %1739
  %1755 = fmul fast float %1728, 1.500000e+00
  %1756 = fmul fast float %1755, %1739
  %1757 = fmul fast float %1729, 1.500000e+00
  %1758 = fmul fast float %1757, %1739
  %1759 = fmul fast float %1730, 1.500000e+00
  %1760 = fmul fast float %1759, %1739
  %1761 = fsub fast float %1154, %1740
  %1762 = fmul fast float %1761, %279
  %1763 = fadd fast float %1762, %1740
  %1764 = fsub fast float %1153, %1744
  %1765 = fmul fast float %1764, %279
  %1766 = fadd fast float %1765, %1744
  %1767 = fsub fast float %1152, %1746
  %1768 = fmul fast float %1767, %279
  %1769 = fadd fast float %1768, %1746
  %1770 = fsub fast float %1151, %1748
  %1771 = fmul fast float %1770, %279
  %1772 = fadd fast float %1771, %1748
  %1773 = fmul fast float %1150, %279
  %1774 = fmul fast float %1149, %279
  %1775 = fmul fast float %1148, %279
  %1776 = fmul fast float %1147, %279
  %1777 = fmul fast float %1146, %279
  %1778 = fsub fast float %1145, %1741
  %1779 = fmul fast float %1778, %279
  %1780 = fadd fast float %1779, %1741
  %1781 = fsub fast float %1144, %1750
  %1782 = fmul fast float %1781, %279
  %1783 = fadd fast float %1782, %1750
  %1784 = fsub fast float %1143, %1752
  %1785 = fmul fast float %1784, %279
  %1786 = fadd fast float %1785, %1752
  %1787 = fsub fast float %1142, %1754
  %1788 = fmul fast float %1787, %279
  %1789 = fadd fast float %1788, %1754
  %1790 = fmul fast float %1141, %279
  %1791 = fmul fast float %1140, %279
  %1792 = fmul fast float %1139, %279
  %1793 = fmul fast float %1138, %279
  %1794 = fmul fast float %1137, %279
  %1795 = fsub fast float %1136, %1742
  %1796 = fmul fast float %1795, %279
  %1797 = fadd fast float %1796, %1742
  %1798 = fsub fast float %1135, %1756
  %1799 = fmul fast float %1798, %279
  %1800 = fadd fast float %1799, %1756
  %1801 = fsub fast float %1134, %1758
  %1802 = fmul fast float %1801, %279
  %1803 = fadd fast float %1802, %1758
  %1804 = fsub fast float %1133, %1760
  %1805 = fmul fast float %1804, %279
  %1806 = fadd fast float %1805, %1760
  %1807 = fmul fast float %1132, %279
  %1808 = fmul fast float %1131, %279
  %1809 = fmul fast float %1130, %279
  %1810 = fmul fast float %1129, %279
  %1811 = fmul fast float %1128, %279
  br label %1812

; <label>:1812                                    ; preds = %1726, %1127
  %1813 = phi float [ %1811, %1726 ], [ %1128, %1127 ]
  %1814 = phi float [ %1810, %1726 ], [ %1129, %1127 ]
  %1815 = phi float [ %1809, %1726 ], [ %1130, %1127 ]
  %1816 = phi float [ %1808, %1726 ], [ %1131, %1127 ]
  %1817 = phi float [ %1807, %1726 ], [ %1132, %1127 ]
  %1818 = phi float [ %1806, %1726 ], [ %1133, %1127 ]
  %1819 = phi float [ %1803, %1726 ], [ %1134, %1127 ]
  %1820 = phi float [ %1800, %1726 ], [ %1135, %1127 ]
  %1821 = phi float [ %1797, %1726 ], [ %1136, %1127 ]
  %1822 = phi float [ %1794, %1726 ], [ %1137, %1127 ]
  %1823 = phi float [ %1793, %1726 ], [ %1138, %1127 ]
  %1824 = phi float [ %1792, %1726 ], [ %1139, %1127 ]
  %1825 = phi float [ %1791, %1726 ], [ %1140, %1127 ]
  %1826 = phi float [ %1790, %1726 ], [ %1141, %1127 ]
  %1827 = phi float [ %1789, %1726 ], [ %1142, %1127 ]
  %1828 = phi float [ %1786, %1726 ], [ %1143, %1127 ]
  %1829 = phi float [ %1783, %1726 ], [ %1144, %1127 ]
  %1830 = phi float [ %1780, %1726 ], [ %1145, %1127 ]
  %1831 = phi float [ %1777, %1726 ], [ %1146, %1127 ]
  %1832 = phi float [ %1776, %1726 ], [ %1147, %1127 ]
  %1833 = phi float [ %1775, %1726 ], [ %1148, %1127 ]
  %1834 = phi float [ %1774, %1726 ], [ %1149, %1127 ]
  %1835 = phi float [ %1773, %1726 ], [ %1150, %1127 ]
  %1836 = phi float [ %1772, %1726 ], [ %1151, %1127 ]
  %1837 = phi float [ %1769, %1726 ], [ %1152, %1127 ]
  %1838 = phi float [ %1766, %1726 ], [ %1153, %1127 ]
  %1839 = phi float [ %1763, %1726 ], [ %1154, %1127 ]
  %1840 = fcmp fast oeq float %1155, 0.000000e+00
  %1841 = select i1 %1840, float 1.000000e+00, float %146
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 2
  %1844 = fmul fast float %1843, %1843
  %1845 = fmul fast float %1839, 0x3FD20DD760000000
  %1846 = fmul fast float %131, %1837
  %1847 = fmul fast float %131, %131
  %1848 = fmul fast float %1847, 0x3FEE471020000000
  %1849 = fadd fast float %1848, 0xBFD42F6020000000
  %1850 = fmul fast float %1849, %1833
  %1851 = fmul fast float %129, %1836
  %1852 = fmul fast float %130, %1838
  %1853 = fmul fast float %131, 0x3FF17B1420000000
  %1854 = fmul fast float %1844, %1832
  %1855 = fmul fast float %1854, %129
  %1856 = fmul fast float %1855, %1853
  %1857 = fmul fast float %1844, %1834
  %1858 = fmul fast float %1857, %130
  %1859 = fmul fast float %1858, %1853
  %1860 = fmul fast float %129, %129
  %1861 = fmul fast float %130, %130
  %1862 = fsub fast float %1860, %1861
  %1863 = fmul fast float %1831, 0x3FE17B1420000000
  %1864 = fmul fast float %1863, %1862
  %1865 = fmul fast float %1835, 0x3FF17B1420000000
  %1866 = fmul fast float %1865, %130
  %1867 = fmul fast float %1866, %129
  %1868 = fadd fast float %1864, %1867
  %1869 = fadd fast float %1868, %1850
  %1870 = fmul fast float %1869, %1844
  %1871 = fsub fast float %1852, %1846
  %1872 = fadd fast float %1871, %1851
  %1873 = fmul fast float %1872, 0x3FDF454380000000
  %1874 = fmul fast float %1873, %1843
  %1875 = fsub fast float %1845, %1856
  %1876 = fsub fast float %1875, %1859
  %1877 = fadd fast float %1876, %1870
  %1878 = fadd fast float %1877, %1874
  %1879 = fmul fast float %1830, 0x3FD20DD760000000
  %1880 = fmul fast float %131, %1828
  %1881 = fmul fast float %1849, %1824
  %1882 = fmul fast float %129, %1827
  %1883 = fmul fast float %130, %1829
  %1884 = fmul fast float %1844, %1823
  %1885 = fmul fast float %1884, %129
  %1886 = fmul fast float %1885, %1853
  %1887 = fmul fast float %1844, %1825
  %1888 = fmul fast float %1887, %130
  %1889 = fmul fast float %1888, %1853
  %1890 = fmul fast float %1822, 0x3FE17B1420000000
  %1891 = fmul fast float %1890, %1862
  %1892 = fmul fast float %1826, 0x3FF17B1420000000
  %1893 = fmul fast float %1892, %130
  %1894 = fmul fast float %1893, %129
  %1895 = fadd fast float %1891, %1894
  %1896 = fadd fast float %1895, %1881
  %1897 = fmul fast float %1896, %1844
  %1898 = fsub fast float %1883, %1880
  %1899 = fadd fast float %1898, %1882
  %1900 = fmul fast float %1899, 0x3FDF454380000000
  %1901 = fmul fast float %1900, %1843
  %1902 = fsub fast float %1879, %1886
  %1903 = fsub fast float %1902, %1889
  %1904 = fadd fast float %1903, %1897
  %1905 = fadd fast float %1904, %1901
  %1906 = fmul fast float %1821, 0x3FD20DD760000000
  %1907 = fmul fast float %131, %1819
  %1908 = fmul fast float %1849, %1815
  %1909 = fmul fast float %129, %1818
  %1910 = fmul fast float %130, %1820
  %1911 = fmul fast float %1844, %1814
  %1912 = fmul fast float %1911, %129
  %1913 = fmul fast float %1912, %1853
  %1914 = fmul fast float %1844, %1816
  %1915 = fmul fast float %1914, %130
  %1916 = fmul fast float %1915, %1853
  %1917 = fmul fast float %1813, 0x3FE17B1420000000
  %1918 = fmul fast float %1917, %1862
  %1919 = fmul fast float %1817, 0x3FF17B1420000000
  %1920 = fmul fast float %1919, %130
  %1921 = fmul fast float %1920, %129
  %1922 = fadd fast float %1918, %1921
  %1923 = fadd fast float %1922, %1908
  %1924 = fmul fast float %1923, %1844
  %1925 = fsub fast float %1910, %1907
  %1926 = fadd fast float %1925, %1909
  %1927 = fmul fast float %1926, 0x3FDF454380000000
  %1928 = fmul fast float %1927, %1843
  %1929 = fsub fast float %1906, %1913
  %1930 = fsub fast float %1929, %1916
  %1931 = fadd fast float %1930, %1924
  %1932 = fadd fast float %1931, %1928
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 3
  %1935 = fmul fast float %1878, %1934
  %1936 = fmul fast float %1905, %1934
  %1937 = fmul fast float %1932, %1934
  %1938 = icmp eq i32 %244, 0
  br i1 %1938, label %1975, label %1939, !dx.controlflow.hints !82

; <label>:1939                                    ; preds = %1812
  %1940 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %24, float %241, float %242, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1943 = extractvalue %dx.types.ResRet.f32 %1940, 2
  %1944 = extractvalue %dx.types.ResRet.f32 %1940, 3
  %1945 = call float @dx.op.binary.f32(i32 36, float %1942, float %1943)  ; FMin(a,b)
  %1946 = call float @dx.op.binary.f32(i32 36, float %1941, float %1945)  ; FMin(a,b)
  %1947 = call float @dx.op.binary.f32(i32 36, float %1946, float %1944)  ; FMin(a,b)
  %1948 = fmul fast float %1947, 2.550000e+02
  %1949 = fadd fast float %1948, 0x3F70101020000000
  %1950 = fptoui float %1949 to i32
  %1951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.i32 %1951, 1
  %1953 = uitofp i32 %1952 to float
  %1954 = fmul fast float %1953, %243
  %1955 = fptosi float %1954 to i32
  %1956 = icmp slt i32 %1955, %1950
  br i1 %1956, label %1957, label %1975, !dx.controlflow.hints !83

; <label>:1957                                    ; preds = %1939
  %1958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %241, float %242, float %243, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = extractvalue %dx.types.ResRet.f32 %1958, 1
  %1961 = extractvalue %dx.types.ResRet.f32 %1958, 2
  %1962 = extractvalue %dx.types.CBufRet.f32 %1933, 2
  %1963 = fmul fast float %1962, %1959
  %1964 = fmul fast float %1962, %1960
  %1965 = fmul fast float %1962, %1961
  %1966 = fsub fast float %1963, %1935
  %1967 = fsub fast float %1964, %1936
  %1968 = fsub fast float %1965, %1937
  %1969 = fmul fast float %1966, %1841
  %1970 = fmul fast float %1967, %1841
  %1971 = fmul fast float %1968, %1841
  %1972 = fadd fast float %1969, %1935
  %1973 = fadd fast float %1970, %1936
  %1974 = fadd fast float %1971, %1937
  br label %1975

; <label>:1975                                    ; preds = %1957, %1939, %1812
  %1976 = phi float [ %1935, %1812 ], [ %1972, %1957 ], [ %1935, %1939 ]
  %1977 = phi float [ %1936, %1812 ], [ %1973, %1957 ], [ %1936, %1939 ]
  %1978 = phi float [ %1937, %1812 ], [ %1974, %1957 ], [ %1937, %1939 ]
  %1979 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1980 = fmul fast float %1979, %1976
  %1981 = fmul fast float %1979, %1977
  %1982 = fmul fast float %1979, %1978
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 %30, float %1980, float %1981, float %1982, float %1980, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1983

; <label>:1983                                    ; preds = %1975, %56
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
!39 = !{void ()* @cs_vol_sh_sample_lightgrid_aniso_skylight, !"cs_vol_sh_sample_lightgrid_aniso_skylight", null, !4, !40}
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
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}

