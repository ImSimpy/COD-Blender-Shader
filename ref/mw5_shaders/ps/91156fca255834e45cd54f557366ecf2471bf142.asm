;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; SH_RED                   0   xyzw        4     NONE   float   xyzw
; SH_GREEN                 0   xyzw        5     NONE   float   xyzw
; SH_BLUE                  0   xyzw        6     NONE   float   xyzw
; SV_IsFrontFace           0   x           7    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b89876a99e80652c36b1a7919cfe76d0
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SV_IsFrontFace           0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
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
;   [144 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture    byte         r/o      T5     t16,space1     1
;                                   texture    byte         r/o      T6     t17,space1     1
;                                   texture     f32          2d      T7             t1     1
;                                   texture     f32          2d      T8     t58,space2     1
;                                   texture     f32          2d      T9     t57,space2     1
;                                   texture    byte         r/o     T10     t69,space1     1
;                                   texture     u32          2d     T11     t56,space2     1
;                                   texture     f32          2d     T12     t34,space2     1
;                                   texture     f32          2d     T13      t2,space2     1
;                                   texture     f32          2d     T14      t3,space2     1
;                                   texture     f32          2d     T15      t4,space2     1
;                                   textureunorm_f32     2darray     T16     t80,space2     1
;                                   texture    byte         r/o     T17     t67,space1     1
;                                   texture     f32          2d     T18      t7,space2     1
;                                   texture     f32          2d     T19      t6,space2     1
;                                   texture     f32          2d     T20      t5,space2     1
;                                   texture     f32          2d     T21     t38,space2     1
;                                   texture     f32          1d     T22     t30,space2     1
;                                   texture     f32          3d     T23     t44,space2     1
;                                   texture     f32          3d     T24     t45,space2     1
;                                   texture     f32     2darray     T25     t47,space2     1
;                                   textureunorm_f32     2darray     T26     t85,space2     1
;                                   texture     f32          2d     T27     t83,space2     1
;                                   texture     f32          2d     T28     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 29, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24, 25, 26, 27, 28 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24, 25, 26, 27, 28 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = alloca [4 x i32], align 4
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = icmp ne i32 %37, 0
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = alloca [12 x float], align 4
  %65 = alloca [12 x float], align 4
  %66 = alloca [3 x float], align 4
  %67 = alloca [3 x float], align 4
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %60
  %73 = fmul fast float %71, %61
  %74 = select i1 %38, float 1.000000e+00, float -1.000000e+00
  %75 = fmul fast float %55, %74
  %76 = fmul fast float %56, %74
  %77 = fmul fast float %57, %74
  %78 = fmul fast float %56, %53
  %79 = fmul fast float %57, %52
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %57, %51
  %82 = fmul fast float %55, %53
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %55, %52
  %85 = fmul fast float %56, %51
  %86 = fsub fast float %84, %85
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %90 = fmul fast float %88, 2.000000e+00
  %91 = fmul fast float %90, %72
  %92 = fmul fast float %89, 2.000000e+00
  %93 = fmul fast float %92, %73
  %94 = fsub fast float 1.000000e+00, %91
  %95 = fsub fast float 1.000000e+00, %93
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = fmul fast float %94, %97
  %101 = fmul fast float %94, %98
  %102 = fmul fast float %94, %99
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %95, %104
  %108 = fmul fast float %95, %105
  %109 = fmul fast float %95, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fadd fast float %107, %111
  %115 = fadd fast float %114, %100
  %116 = fadd fast float %108, %112
  %117 = fadd fast float %116, %101
  %118 = fadd fast float %109, %113
  %119 = fadd fast float %118, %102
  %120 = fmul fast float %115, %63
  %121 = fmul fast float %117, %63
  %122 = fmul fast float %119, %63
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = extractvalue %dx.types.ResRet.i32 %123, 1
  %126 = extractvalue %dx.types.ResRet.i32 %123, 2
  %127 = extractvalue %dx.types.ResRet.i32 %123, 3
  %128 = bitcast i32 %124 to float
  %129 = bitcast i32 %125 to float
  %130 = bitcast i32 %126 to float
  %131 = bitcast i32 %127 to float
  %132 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = call float @dx.op.unary.f32(i32 25, float %132)  ; Rsqrt(value)
  %134 = fmul fast float %133, %75
  %135 = fmul fast float %133, %76
  %136 = fmul fast float %133, %77
  %137 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = call float @dx.op.unary.f32(i32 25, float %137)  ; Rsqrt(value)
  %139 = fmul fast float %138, %120
  %140 = fmul fast float %138, %121
  %141 = fmul fast float %138, %122
  %142 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = fmul fast float %142, %142
  %144 = fmul fast float %143, %130
  %145 = fadd fast float %144, %131
  %146 = call float @dx.op.unary.f32(i32 7, float %145)  ; Saturate(value)
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %149 = fmul fast float %148, %137
  %150 = fsub fast float %128, %149
  %151 = fmul fast float %150, %129
  %152 = call float @dx.op.unary.f32(i32 7, float %151)  ; Saturate(value)
  %153 = fmul fast float %152, %146
  %154 = fmul fast float %72, 5.000000e-01
  %155 = fmul fast float %73, 5.000000e-01
  %156 = fptosi float %154 to i32
  %157 = fptosi float %155 to i32
  %158 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %156, i32 %157, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = lshr i32 %159, 18
  %161 = uitofp i32 %160 to float
  %162 = fmul fast float %161, 0x3F4C00EBA0000000
  %163 = call float @dx.op.unary.f32(i32 21, float %162)  ; Exp(value)
  %164 = fadd fast float %163, -1.000000e+00
  %165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %166 = extractvalue %dx.types.Dimensions %165, 0
  %167 = sitofp i32 %166 to float
  %168 = extractvalue %dx.types.Dimensions %165, 1
  %169 = sitofp i32 %168 to float
  %170 = fcmp fast oge float %154, %167
  %171 = fcmp fast oge float %155, %169
  %172 = or i1 %170, %171
  %173 = select i1 %172, float 0x4197782600000000, float %164
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %177 = fmul fast float %175, %72
  %178 = fmul fast float %176, %73
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = and i32 %180, 114688
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %182, float %177, float 0.000000e+00
  %184 = select i1 %182, float %178, float 0.000000e+00
  %185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fmul fast float %186, 2.550000e+02
  %188 = fptoui float %187 to i32
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 3
  %192 = and i32 %191, 3
  %193 = icmp ne i32 %192, 0
  %194 = and i32 %191, 4
  %195 = icmp ne i32 %194, 0
  %196 = and i1 %193, %195
  br i1 %196, label %197, label %208

; <label>:197                                     ; preds = %0
  %198 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %199 = fmul fast float %198, %73
  %200 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %201 = fmul fast float %200, %72
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %201, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = fsub fast float 1.000000e+00, %203
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = fcmp fast olt float %204, %206
  br label %211

; <label>:208                                     ; preds = %0
  %209 = icmp eq i32 %194, 0
  %210 = and i1 %193, %209
  br label %211

; <label>:211                                     ; preds = %208, %197
  %212 = phi i1 [ %207, %197 ], [ %210, %208 ]
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = shl i32 %214, 4
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %214, 7
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %214, 22
  %222 = shl nuw nsw i32 %221, 5
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = lshr i32 %225, 8
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %225, 16
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = fmul fast float %246, 0x3F50624DE0000000
  %250 = fmul fast float %248, 0x3F50624DE0000000
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 2
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %262, label %255

; <label>:255                                     ; preds = %211
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = add i32 %257, 0
  %259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %259, %dx.types.Handle %69, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 3
  br label %262

; <label>:262                                     ; preds = %255, %211
  %263 = phi float [ 1.000000e+00, %211 ], [ %261, %255 ]
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = or i32 %267, %265
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %883, label %270

; <label>:270                                     ; preds = %262
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %274, 0x3F50624DE0000000
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 255
  %280 = lshr i32 %277, 24
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = lshr i32 %288, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = shl i32 %288, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %300 = fmul fast float %299, 1.000000e+03
  %301 = fmul fast float %249, %300
  %302 = call float @dx.op.unary.f32(i32 22, float %301)  ; Frc(value)
  %303 = fadd fast float %302, %240
  %304 = fmul fast float %250, %300
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = fadd fast float %305, %242
  %307 = fmul fast float %275, %300
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = fmul fast float %308, 0x401921FB60000000
  %310 = fadd fast float %309, %291
  %311 = call float @dx.op.unary.f32(i32 13, float %310)  ; Sin(value)
  %312 = call float @dx.op.unary.f32(i32 12, float %310)  ; Cos(value)
  %313 = fsub fast float -0.000000e+00, %311
  %314 = fadd fast float %58, -5.000000e-01
  %315 = fadd fast float %59, -5.000000e-01
  %316 = fmul fast float %284, %314
  %317 = fmul fast float %286, %315
  %318 = fadd fast float %316, 5.000000e-01
  %319 = fadd fast float %317, 5.000000e-01
  %320 = fmul fast float %294, %318
  %321 = fmul fast float %297, %319
  %322 = fmul fast float %312, %320
  %323 = call float @dx.op.tertiary.f32(i32 46, float %313, float %321, float %322)  ; FMad(a,b,c)
  %324 = fmul fast float %311, %320
  %325 = call float @dx.op.tertiary.f32(i32 46, float %312, float %321, float %324)  ; FMad(a,b,c)
  %326 = fadd fast float %303, %323
  %327 = fadd fast float %306, %325
  %328 = icmp ugt i32 %279, 1
  %329 = icmp ugt i32 %277, 33554431
  %330 = or i1 %329, %328
  br i1 %330, label %331, label %355

; <label>:331                                     ; preds = %270
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = lshr i32 %333, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = fmul fast float %299, %335
  %337 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %338 = mul nuw nsw i32 %279, %280
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %337, %339
  %341 = call float @dx.op.unary.f32(i32 27, float %340)  ; Round_ni(value)
  %342 = fptoui float %341 to i32
  %343 = urem i32 %342, %279
  %344 = udiv i32 %342, %280
  %345 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %346 = call float @dx.op.unary.f32(i32 22, float %327)  ; Frc(value)
  %347 = uitofp i32 %343 to float
  %348 = uitofp i32 %344 to float
  %349 = fadd fast float %345, %347
  %350 = fadd fast float %346, %348
  %351 = uitofp i32 %279 to float
  %352 = uitofp i32 %280 to float
  %353 = fdiv fast float %349, %351
  %354 = fdiv fast float %350, %352
  br label %355

; <label>:355                                     ; preds = %331, %270
  %356 = phi float [ %353, %331 ], [ %326, %270 ]
  %357 = phi float [ %354, %331 ], [ %327, %270 ]
  %358 = and i32 %265, 256
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %404, label %360

; <label>:360                                     ; preds = %355
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = add i32 %362, 0
  %364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %364, %dx.types.Handle %69, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = shl i32 %368, 4
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %368, 7
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = fsub fast float 1.000000e+00, %263
  %376 = call float @dx.op.binary.f32(i32 35, float %375, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %377 = bitcast float %263 to i32
  %378 = sitofp i32 %377 to float
  %379 = fadd fast float %378, 0xC1CFBF8940000000
  %380 = fmul fast float %374, %379
  %381 = fadd fast float %380, 0x41CFBF8940000000
  %382 = fptosi float %381 to i32
  %383 = bitcast i32 %382 to float
  %384 = bitcast float %376 to i32
  %385 = sitofp i32 %384 to float
  %386 = fadd fast float %385, 0xC1CFBF8940000000
  %387 = fmul fast float %386, %374
  %388 = fadd fast float %387, 0x41CFBF8940000000
  %389 = fptosi float %388 to i32
  %390 = bitcast i32 %389 to float
  %391 = fmul fast float %383, %371
  %392 = fmul fast float %390, %371
  %393 = fsub fast float %376, %391
  %394 = fadd fast float %392, %376
  %395 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %396 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %397 = fsub fast float %366, %395
  %398 = fsub fast float %396, %395
  %399 = bitcast float %398 to i32
  %400 = sub nsw i32 2129859010, %399
  %401 = bitcast i32 %400 to float
  %402 = fmul fast float %401, %397
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  br label %404

; <label>:404                                     ; preds = %360, %355
  %405 = phi float [ %403, %360 ], [ %263, %355 ]
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 128
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %425, label %410

; <label>:410                                     ; preds = %404
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = add i32 %412, 0
  %414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %414, %dx.types.Handle %69, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 524288
  %420 = icmp ne i32 %419, 0
  %421 = fcmp fast ogt float %416, 0x3FE0101020000000
  %422 = select i1 %421, float 1.000000e+00, float 0.000000e+00
  %423 = select i1 %420, float %422, float %416
  %424 = fmul fast float %423, %405
  br label %425

; <label>:425                                     ; preds = %410, %404
  %426 = phi float [ %424, %410 ], [ %405, %404 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 16
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %624, label %431

; <label>:431                                     ; preds = %425
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %435, 0
  %437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %437, %dx.types.Handle %68, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = and i32 %433, 255
  %444 = uitofp i32 %443 to float
  %445 = lshr i32 %433, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %442, %444
  %449 = fadd fast float %448, %447
  %450 = fmul fast float %449, 0x3F70101000000000
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 512
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %462, label %455

; <label>:455                                     ; preds = %431
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %457, 0
  %459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %459, %dx.types.Handle %69, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  br label %462

; <label>:462                                     ; preds = %455, %431
  %463 = phi float [ %461, %455 ], [ 1.000000e+00, %431 ]
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 33554432
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %571, label %468

; <label>:468                                     ; preds = %462
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 65535
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 24
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %482, 0x3F70101020000000
  %484 = and i32 %480, 255
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = lshr i32 %480, 8
  %488 = and i32 %487, 255
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %489, 0x3F70101020000000
  %491 = lshr i32 %480, 16
  %492 = and i32 %491, 255
  %493 = uitofp i32 %492 to float
  %494 = fmul fast float %493, 0x3F70101020000000
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %496, 24
  %498 = uitofp i32 %497 to float
  %499 = fmul fast float %498, 0x3F70101020000000
  %500 = and i32 %496, 255
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %501, 0x3F70101020000000
  %503 = lshr i32 %496, 8
  %504 = and i32 %503, 255
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = lshr i32 %496, 16
  %508 = and i32 %507, 255
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101020000000
  %511 = bitcast float %439 to i32
  %512 = ashr i32 %511, 1
  %513 = sub nsw i32 1597463174, %512
  %514 = bitcast i32 %513 to float
  %515 = fmul fast float %439, 5.000000e-01
  %516 = fmul fast float %514, %514
  %517 = fmul fast float %516, %515
  %518 = fsub fast float 1.500000e+00, %517
  %519 = fmul fast float %514, %439
  %520 = fmul fast float %519, %518
  %521 = bitcast float %440 to i32
  %522 = ashr i32 %521, 1
  %523 = sub nsw i32 1597463174, %522
  %524 = bitcast i32 %523 to float
  %525 = fmul fast float %440, 5.000000e-01
  %526 = fmul fast float %524, %524
  %527 = fmul fast float %526, %525
  %528 = fsub fast float 1.500000e+00, %527
  %529 = fmul fast float %524, %440
  %530 = fmul fast float %529, %528
  %531 = bitcast float %441 to i32
  %532 = ashr i32 %531, 1
  %533 = sub nsw i32 1597463174, %532
  %534 = bitcast i32 %533 to float
  %535 = fmul fast float %441, 5.000000e-01
  %536 = fmul fast float %534, %534
  %537 = fmul fast float %536, %535
  %538 = fsub fast float 1.500000e+00, %537
  %539 = fmul fast float %534, %441
  %540 = fmul fast float %539, %538
  %541 = fsub fast float %520, %502
  %542 = fsub fast float %530, %506
  %543 = fsub fast float %540, %510
  %544 = fmul fast float %541, %472
  %545 = fmul fast float %542, %474
  %546 = fmul fast float %543, %478
  %547 = fadd fast float %544, %486
  %548 = fadd fast float %545, %490
  %549 = fadd fast float %546, %494
  %550 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %551 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %552 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %553 = fmul fast float %550, %550
  %554 = fmul fast float %551, %551
  %555 = fmul fast float %552, %552
  %556 = fsub fast float %553, %439
  %557 = fsub fast float %554, %440
  %558 = fsub fast float %555, %441
  %559 = fmul fast float %556, %463
  %560 = fmul fast float %557, %463
  %561 = fmul fast float %558, %463
  %562 = fadd fast float %559, %439
  %563 = fadd fast float %560, %440
  %564 = fadd fast float %561, %441
  %565 = fadd fast float %483, %450
  %566 = fsub fast float %565, %499
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fsub fast float %567, %450
  %569 = fmul fast float %568, %463
  %570 = fadd fast float %569, %450
  br label %624

; <label>:571                                     ; preds = %462
  %572 = and i32 %465, 134217728
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %608, label %574

; <label>:574                                     ; preds = %571
  %575 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %576 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %577 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %578 = fadd fast float %575, -5.000000e-01
  %579 = fadd fast float %576, -5.000000e-01
  %580 = fadd fast float %577, -5.000000e-01
  %581 = fmul fast float %578, %463
  %582 = fmul fast float %579, %463
  %583 = fmul fast float %580, %463
  %584 = fadd fast float %581, 5.000000e-01
  %585 = fadd fast float %582, 5.000000e-01
  %586 = fadd fast float %583, 5.000000e-01
  %587 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %588 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %589 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %590 = fmul fast float %584, 2.000000e+00
  %591 = fsub fast float 1.000000e+00, %590
  %592 = fmul fast float %591, %587
  %593 = fadd fast float %592, %590
  %594 = fmul fast float %593, %587
  %595 = fmul fast float %585, 2.000000e+00
  %596 = fsub fast float 1.000000e+00, %595
  %597 = fmul fast float %596, %588
  %598 = fadd fast float %597, %595
  %599 = fmul fast float %598, %588
  %600 = fmul fast float %586, 2.000000e+00
  %601 = fsub fast float 1.000000e+00, %600
  %602 = fmul fast float %601, %589
  %603 = fadd fast float %602, %600
  %604 = fmul fast float %603, %589
  %605 = fmul fast float %594, %594
  %606 = fmul fast float %599, %599
  %607 = fmul fast float %604, %604
  br label %624

; <label>:608                                     ; preds = %571
  %609 = fmul fast float %228, %228
  %610 = fmul fast float %232, %232
  %611 = fmul fast float %236, %236
  %612 = fadd fast float %609, -1.000000e+00
  %613 = fadd fast float %610, -1.000000e+00
  %614 = fadd fast float %611, -1.000000e+00
  %615 = fmul fast float %463, %612
  %616 = fmul fast float %463, %613
  %617 = fmul fast float %463, %614
  %618 = fadd fast float %615, 1.000000e+00
  %619 = fadd fast float %616, 1.000000e+00
  %620 = fadd fast float %617, 1.000000e+00
  %621 = fmul fast float %618, %439
  %622 = fmul fast float %619, %440
  %623 = fmul fast float %620, %441
  br label %624

; <label>:624                                     ; preds = %608, %574, %468, %425
  %625 = phi float [ %570, %468 ], [ %450, %574 ], [ %450, %608 ], [ 0x3FA23C0BE0000000, %425 ]
  %626 = phi float [ %562, %468 ], [ %605, %574 ], [ %621, %608 ], [ 1.000000e+00, %425 ]
  %627 = phi float [ %563, %468 ], [ %606, %574 ], [ %622, %608 ], [ 1.000000e+00, %425 ]
  %628 = phi float [ %564, %468 ], [ %607, %574 ], [ %623, %608 ], [ 1.000000e+00, %425 ]
  %629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.i32 %629, 1
  %631 = and i32 %630, 1
  %632 = icmp ne i32 %631, 0
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 32
  %636 = icmp ne i32 %635, 0
  %637 = and i1 %632, %636
  %638 = select i1 %637, float 1.000000e+00, float %626
  %639 = select i1 %637, float 0x3FD3333340000000, float %627
  %640 = select i1 %637, float 0x3FD3333340000000, float %628
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 32
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %714, label %645

; <label>:645                                     ; preds = %624
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %651, %dx.types.Handle %68, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 2
  %656 = extractvalue %dx.types.ResRet.f32 %652, 3
  %657 = and i32 %647, 255
  %658 = uitofp i32 %657 to float
  %659 = lshr i32 %647, 8
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = lshr i32 %647, 16
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101000000000
  %666 = fmul fast float %653, %658
  %667 = fadd fast float %666, %661
  %668 = fmul fast float %667, 0x3F70101000000000
  %669 = fadd fast float %654, -5.000000e-01
  %670 = fadd fast float %656, -5.000000e-01
  %671 = fmul fast float %669, %665
  %672 = fmul fast float %670, %665
  %673 = fadd fast float %671, 5.000000e-01
  %674 = fadd fast float %672, 5.000000e-01
  %675 = fmul fast float %673, 2.000000e+00
  %676 = fadd fast float %675, -1.000000e+00
  %677 = fmul fast float %674, 2.000000e+00
  %678 = fadd fast float %677, -1.000000e+00
  %679 = fadd fast float %676, %678
  %680 = fmul fast float %679, 5.000000e-01
  %681 = fsub fast float %676, %678
  %682 = fmul fast float %681, 5.000000e-01
  %683 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %684 = fsub fast float 1.000000e+00, %683
  %685 = call float @dx.op.unary.f32(i32 6, float %682)  ; FAbs(value)
  %686 = fsub fast float %684, %685
  %687 = call float @dx.op.dot3.f32(i32 55, float %680, float %682, float %686, float %680, float %682, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 25, float %687)  ; Rsqrt(value)
  %689 = fmul fast float %680, %688
  %690 = fmul fast float %682, %688
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 67108864
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %710, label %695

; <label>:695                                     ; preds = %645
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 65535
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 65535
  %703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %702)  ; LegacyF16ToF32(value)
  %704 = lshr i32 %697, 16
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fsub fast float %668, %705
  %707 = fmul fast float %706, %699
  %708 = fadd fast float %707, %703
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  br label %710

; <label>:710                                     ; preds = %695, %645
  %711 = phi float [ %709, %695 ], [ %668, %645 ]
  %712 = call float @dx.op.dot2.f32(i32 54, float %689, float %690, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %713 = call float @dx.op.dot2.f32(i32 54, float %689, float %690, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %714

; <label>:714                                     ; preds = %710, %624
  %715 = phi float [ %711, %710 ], [ 0x3FD6666660000000, %624 ]
  %716 = phi float [ %712, %710 ], [ 0.000000e+00, %624 ]
  %717 = phi float [ %713, %710 ], [ 0.000000e+00, %624 ]
  %718 = phi float [ %655, %710 ], [ 1.000000e+00, %624 ]
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = lshr i32 %720, 22
  %722 = shl nuw nsw i32 %721, 5
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 64
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %760, label %728

; <label>:728                                     ; preds = %714
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = add i32 %730, 0
  %732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 131072
  %736 = icmp eq i32 %735, 0
  %737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %732, %dx.types.Handle %68, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = fmul fast float %738, %217
  %742 = fmul fast float %739, %220
  %743 = fmul fast float %740, %223
  br i1 %736, label %750, label %744

; <label>:744                                     ; preds = %728
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = fmul fast float %746, %741
  %748 = fmul fast float %746, %742
  %749 = fmul fast float %746, %743
  br label %750

; <label>:750                                     ; preds = %744, %728
  %751 = phi float [ %747, %744 ], [ %741, %728 ]
  %752 = phi float [ %748, %744 ], [ %742, %728 ]
  %753 = phi float [ %749, %744 ], [ %743, %728 ]
  %754 = fmul fast float %751, %723
  %755 = select i1 %212, float %754, float %751
  %756 = call float @dx.op.dot3.f32(i32 55, float %755, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = select i1 %212, float 0.000000e+00, float %751
  %758 = select i1 %212, float %756, float %752
  %759 = select i1 %212, float 0.000000e+00, float %753
  br label %760

; <label>:760                                     ; preds = %750, %714
  %761 = phi float [ %757, %750 ], [ 0.000000e+00, %714 ]
  %762 = phi float [ %758, %750 ], [ 0.000000e+00, %714 ]
  %763 = phi float [ %759, %750 ], [ 0.000000e+00, %714 ]
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 1024
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %796, label %768

; <label>:768                                     ; preds = %760
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %770, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = lshr i32 %770, 16
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = fmul fast float %773, %773
  %783 = fmul fast float %777, %777
  %784 = fmul fast float %781, %781
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = add i32 %786, 0
  %788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %789 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %788, %dx.types.Handle %69, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = fmul fast float %782, %790
  %794 = fmul fast float %783, %791
  %795 = fmul fast float %784, %792
  br label %796

; <label>:796                                     ; preds = %768, %760
  %797 = phi float [ %793, %768 ], [ 0.000000e+00, %760 ]
  %798 = phi float [ %794, %768 ], [ 0.000000e+00, %760 ]
  %799 = phi float [ %795, %768 ], [ 0.000000e+00, %760 ]
  %800 = fcmp fast ogt float %797, 0.000000e+00
  %801 = fcmp fast ogt float %798, 0.000000e+00
  %802 = fcmp fast ogt float %799, 0.000000e+00
  %803 = call float @dx.op.unary.f32(i32 23, float %797)  ; Log(value)
  %804 = call float @dx.op.unary.f32(i32 23, float %798)  ; Log(value)
  %805 = call float @dx.op.unary.f32(i32 23, float %799)  ; Log(value)
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = lshr i32 %807, 7
  %809 = and i32 %808, 32752
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = fmul fast float %803, 0xBFE62E4300000000
  %812 = fmul fast float %811, %810
  %813 = fmul fast float %804, 0xBFE62E4300000000
  %814 = fmul fast float %813, %810
  %815 = fmul fast float %805, 0xBFE62E4300000000
  %816 = fmul fast float %815, %810
  %817 = select i1 %800, float %812, float 1.270000e+02
  %818 = select i1 %801, float %814, float 1.270000e+02
  %819 = select i1 %802, float %816, float 1.270000e+02
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 10240
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %866, label %824

; <label>:824                                     ; preds = %796
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %826, 0
  %828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %69, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 1
  %831 = extractvalue %dx.types.ResRet.f32 %829, 3
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 1048576
  %835 = icmp ne i32 %834, 0
  %836 = and i32 %833, 8192
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %852, label %838

; <label>:838                                     ; preds = %824
  %839 = extractvalue %dx.types.ResRet.f32 %829, 2
  %840 = select i1 %835, float %839, float %830
  %841 = extractvalue %dx.types.ResRet.f32 %829, 0
  %842 = select i1 %835, float %841, float %830
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 16
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F80101020000000
  %849 = fmul fast float %848, %842
  %850 = fmul fast float %848, %830
  %851 = fmul fast float %848, %840
  br label %852

; <label>:852                                     ; preds = %838, %824
  %853 = phi float [ %849, %838 ], [ 0.000000e+00, %824 ]
  %854 = phi float [ %850, %838 ], [ 0.000000e+00, %824 ]
  %855 = phi float [ %851, %838 ], [ 0.000000e+00, %824 ]
  %856 = and i32 %833, 2048
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %866, label %858

; <label>:858                                     ; preds = %852
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = shl i32 %860, 4
  %862 = and i32 %861, 32752
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = fmul fast float %863, %831
  %865 = call float @dx.op.binary.f32(i32 35, float %864, float 0x3F70101020000000)  ; FMax(a,b)
  br label %866

; <label>:866                                     ; preds = %858, %852, %796
  %867 = phi float [ %853, %858 ], [ %853, %852 ], [ 0.000000e+00, %796 ]
  %868 = phi float [ %854, %858 ], [ %854, %852 ], [ 0.000000e+00, %796 ]
  %869 = phi float [ %855, %858 ], [ %855, %852 ], [ 0.000000e+00, %796 ]
  %870 = phi float [ %865, %858 ], [ 0x3F70101020000000, %852 ], [ 0x3F70101020000000, %796 ]
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %872, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = call float @dx.op.dot3.f32(i32 55, float %638, float %639, float %640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = fmul fast float %877, %878
  %880 = fadd fast float %879, %874
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  br label %883

; <label>:883                                     ; preds = %866, %262
  %884 = phi float [ 0.000000e+00, %262 ], [ %716, %866 ]
  %885 = phi float [ 0.000000e+00, %262 ], [ %717, %866 ]
  %886 = phi float [ 0.000000e+00, %262 ], [ %638, %866 ]
  %887 = phi float [ 0.000000e+00, %262 ], [ %639, %866 ]
  %888 = phi float [ 0.000000e+00, %262 ], [ %640, %866 ]
  %889 = phi float [ 0.000000e+00, %262 ], [ %761, %866 ]
  %890 = phi float [ 0.000000e+00, %262 ], [ %762, %866 ]
  %891 = phi float [ 0.000000e+00, %262 ], [ %763, %866 ]
  %892 = phi float [ 0.000000e+00, %262 ], [ %867, %866 ]
  %893 = phi float [ 0.000000e+00, %262 ], [ %868, %866 ]
  %894 = phi float [ 0.000000e+00, %262 ], [ %869, %866 ]
  %895 = phi float [ 0.000000e+00, %262 ], [ %817, %866 ]
  %896 = phi float [ 0.000000e+00, %262 ], [ %818, %866 ]
  %897 = phi float [ 0.000000e+00, %262 ], [ %819, %866 ]
  %898 = phi float [ 0.000000e+00, %262 ], [ %625, %866 ]
  %899 = phi float [ 0.000000e+00, %262 ], [ %426, %866 ]
  %900 = phi float [ 0.000000e+00, %262 ], [ %715, %866 ]
  %901 = phi float [ 0.000000e+00, %262 ], [ %718, %866 ]
  %902 = phi float [ 0.000000e+00, %262 ], [ %870, %866 ]
  %903 = phi float [ 0.000000e+00, %262 ], [ %882, %866 ]
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = call float @dx.op.dot2.f32(i32 54, float %884, float %885, float %884, float %885)  ; Dot2(ax,ay,bx,by)
  %907 = fmul fast float %906, 0x3FE3333340000000
  %908 = fsub fast float 1.000000e+00, %907
  %909 = call float @dx.op.dot3.f32(i32 55, float %884, float %885, float %908, float %884, float %885, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %911 = fmul fast float %910, %884
  %912 = fmul fast float %910, %885
  %913 = fmul fast float %908, %910
  %914 = fmul fast float %913, %75
  %915 = fmul fast float %913, %76
  %916 = fmul fast float %913, %77
  %917 = fmul fast float %911, %51
  %918 = fmul fast float %911, %52
  %919 = fmul fast float %911, %53
  %920 = fmul fast float %80, %54
  %921 = fmul fast float %920, %912
  %922 = fmul fast float %83, %54
  %923 = fmul fast float %922, %912
  %924 = fmul fast float %86, %54
  %925 = fmul fast float %924, %912
  %926 = fadd fast float %921, %917
  %927 = fmul fast float %926, %74
  %928 = fadd fast float %927, %914
  %929 = fadd fast float %923, %918
  %930 = fmul fast float %929, %74
  %931 = fadd fast float %930, %915
  %932 = fadd fast float %925, %919
  %933 = fmul fast float %932, %74
  %934 = fadd fast float %933, %916
  %935 = call float @dx.op.dot3.f32(i32 55, float %928, float %931, float %934, float %928, float %931, float %934)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = call float @dx.op.unary.f32(i32 25, float %935)  ; Rsqrt(value)
  %937 = fmul fast float %928, %936
  %938 = fmul fast float %931, %936
  %939 = fmul fast float %934, %936
  %940 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %941 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %942 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %943 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %944 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %945 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %946 = fadd fast float %940, %120
  %947 = fadd fast float %941, %121
  %948 = fadd fast float %942, %122
  %949 = fadd fast float %943, %120
  %950 = fadd fast float %944, %121
  %951 = fadd fast float %945, %122
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %955 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %959 = fmul fast float %953, %72
  %960 = fmul fast float %959, %957
  %961 = fmul fast float %954, %73
  %962 = fmul fast float %961, %958
  %963 = fptoui float %960 to i32
  %964 = fptoui float %962 to i32
  %965 = fadd fast float %953, -1.000000e+00
  %966 = fadd fast float %954, -1.000000e+00
  %967 = fptoui float %965 to i32
  %968 = fptoui float %966 to i32
  %969 = call i32 @dx.op.binary.i32(i32 40, i32 %963, i32 %967)  ; UMin(a,b)
  %970 = call i32 @dx.op.binary.i32(i32 40, i32 %964, i32 %968)  ; UMin(a,b)
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %974 = fmul fast float %972, %63
  %975 = fsub fast float %974, %973
  %976 = fadd fast float %955, -1.000000e+00
  %977 = call float @dx.op.binary.f32(i32 36, float %975, float %976)  ; FMin(a,b)
  %978 = fptoui float %977 to i32
  %979 = fptoui float %953 to i32
  %980 = fptoui float %954 to i32
  %981 = mul i32 %978, %980
  %982 = add i32 %981, %970
  %983 = mul i32 %982, %979
  %984 = add i32 %983, %969
  %985 = shl i32 %984, 2
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 1023
  %989 = lshr i32 %987, 10
  %990 = icmp eq i32 %988, 0
  br i1 %990, label %1494, label %991

; <label>:991                                     ; preds = %883
  %992 = and i32 %987, 1023
  br label %993

; <label>:993                                     ; preds = %1125, %991
  %994 = phi i32 [ %1075, %1125 ], [ 0, %991 ]
  %995 = phi float [ %1126, %1125 ], [ 0.000000e+00, %991 ]
  %996 = phi float [ %1127, %1125 ], [ %905, %991 ]
  %997 = phi float [ %1128, %1125 ], [ %903, %991 ]
  %998 = phi float [ %1129, %1125 ], [ %895, %991 ]
  %999 = phi float [ %1130, %1125 ], [ %896, %991 ]
  %1000 = phi float [ %1131, %1125 ], [ %897, %991 ]
  %1001 = phi float [ %1132, %1125 ], [ 0.000000e+00, %991 ]
  %1002 = phi float [ %1133, %1125 ], [ 0.000000e+00, %991 ]
  %1003 = phi float [ %1134, %1125 ], [ %892, %991 ]
  %1004 = phi float [ %1135, %1125 ], [ %893, %991 ]
  %1005 = phi float [ %1136, %1125 ], [ %894, %991 ]
  %1006 = phi float [ %1137, %1125 ], [ %889, %991 ]
  %1007 = phi float [ %1138, %1125 ], [ %890, %991 ]
  %1008 = phi float [ %1139, %1125 ], [ %891, %991 ]
  %1009 = phi float [ %1140, %1125 ], [ %937, %991 ]
  %1010 = phi float [ %1141, %1125 ], [ %938, %991 ]
  %1011 = phi float [ %1142, %1125 ], [ %939, %991 ]
  %1012 = phi float [ %1143, %1125 ], [ %901, %991 ]
  %1013 = phi float [ %1144, %1125 ], [ %900, %991 ]
  %1014 = phi float [ %1145, %1125 ], [ 0.000000e+00, %991 ]
  %1015 = phi float [ %1146, %1125 ], [ %898, %991 ]
  %1016 = phi float [ %1147, %1125 ], [ %886, %991 ]
  %1017 = phi float [ %1148, %1125 ], [ %887, %991 ]
  %1018 = phi float [ %1149, %1125 ], [ %888, %991 ]
  %1019 = add nuw nsw i32 %994, %989
  %1020 = shl i32 %1019, 2
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = shl i32 %1022, 8
  %1024 = or i32 %1023, 48
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = extractvalue %dx.types.ResRet.f32 %1025, 3
  %1030 = or i32 %1023, 64
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.i32 %1031, 1
  %1034 = or i32 %1023, 80
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1038 = or i32 %1023, 96
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1044 = or i32 %1023, 112
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1047 = or i32 %1023, 128
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = or i32 %1023, 144
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1059 = or i32 %1023, 160
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.f32 %1060, 3
  %1065 = or i32 %1023, 192
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = or i32 %1023, 208
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = or i32 %1023, 248
  %1072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = add nuw nsw i32 %994, 1
  %1076 = bitcast float %1029 to i32
  %1077 = and i32 %1076, 512
  %1078 = icmp eq i32 %1077, 0
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = call float @dx.op.dot4.f32(i32 56, float %1080, float %1081, float %1082, float %1083, float %120, float %121, float %122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1085 = or i32 %1023, 16
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = extractvalue %dx.types.ResRet.f32 %1086, 3
  %1091 = call float @dx.op.dot4.f32(i32 56, float %1087, float %1088, float %1089, float %1090, float %120, float %121, float %122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1092 = or i32 %1023, 32
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = extractvalue %dx.types.ResRet.f32 %1093, 3
  %1098 = call float @dx.op.dot4.f32(i32 56, float %1094, float %1095, float %1096, float %1097, float %120, float %121, float %122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1100 = call float @dx.op.unary.f32(i32 6, float %1099)  ; FAbs(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 6, float %1101)  ; FAbs(value)
  %1103 = call float @dx.op.unary.f32(i32 6, float %1098)  ; FAbs(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1103)  ; Round_ni(value)
  %1105 = fadd fast float %1102, %1100
  %1106 = fadd fast float %1105, %1104
  %1107 = fcmp fast oeq float %1106, 0.000000e+00
  %1108 = call float @dx.op.dot4.f32(i32 56, float %1080, float %1081, float %1082, float %1083, float %946, float %947, float %948, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1109 = call float @dx.op.dot4.f32(i32 56, float %1087, float %1088, float %1089, float %1090, float %946, float %947, float %948, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1110 = call float @dx.op.dot4.f32(i32 56, float %1080, float %1081, float %1082, float %1083, float %949, float %950, float %951, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1111 = call float @dx.op.dot4.f32(i32 56, float %1087, float %1088, float %1089, float %1090, float %949, float %950, float %951, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1112 = fsub fast float %1108, %1084
  %1113 = fsub fast float %1110, %1084
  %1114 = fsub fast float %1109, %1091
  %1115 = fsub fast float %1111, %1091
  %1116 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1027, float %1028, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1119 = fadd fast float %1118, %1116
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1122 = fcmp fast ogt float %1120, %1121
  %1123 = and i1 %1107, %1122
  %1124 = and i1 %1078, %1123
  br i1 %1124, label %1151, label %1125

; <label>:1125                                    ; preds = %1480, %1232, %1151, %993
  %1126 = phi float [ %995, %1151 ], [ %1235, %1232 ], [ %1235, %1480 ], [ %995, %993 ]
  %1127 = phi float [ %996, %1151 ], [ %996, %1232 ], [ %1456, %1480 ], [ %996, %993 ]
  %1128 = phi float [ %997, %1151 ], [ %997, %1232 ], [ %1454, %1480 ], [ %997, %993 ]
  %1129 = phi float [ %998, %1151 ], [ %998, %1232 ], [ %1432, %1480 ], [ %998, %993 ]
  %1130 = phi float [ %999, %1151 ], [ %999, %1232 ], [ %1433, %1480 ], [ %999, %993 ]
  %1131 = phi float [ %1000, %1151 ], [ %1000, %1232 ], [ %1434, %1480 ], [ %1000, %993 ]
  %1132 = phi float [ %1001, %1151 ], [ %1001, %1232 ], [ %1359, %1480 ], [ %1001, %993 ]
  %1133 = phi float [ %1002, %1151 ], [ %1002, %1232 ], [ %1357, %1480 ], [ %1002, %993 ]
  %1134 = phi float [ %1003, %1151 ], [ %1003, %1232 ], [ %1402, %1480 ], [ %1003, %993 ]
  %1135 = phi float [ %1004, %1151 ], [ %1004, %1232 ], [ %1403, %1480 ], [ %1004, %993 ]
  %1136 = phi float [ %1005, %1151 ], [ %1005, %1232 ], [ %1404, %1480 ], [ %1005, %993 ]
  %1137 = phi float [ %1006, %1151 ], [ %1006, %1232 ], [ %1490, %1480 ], [ %1006, %993 ]
  %1138 = phi float [ %1007, %1151 ], [ %1007, %1232 ], [ %1491, %1480 ], [ %1007, %993 ]
  %1139 = phi float [ %1008, %1151 ], [ %1008, %1232 ], [ %1492, %1480 ], [ %1008, %993 ]
  %1140 = phi float [ %1009, %1151 ], [ %1009, %1232 ], [ %1338, %1480 ], [ %1009, %993 ]
  %1141 = phi float [ %1010, %1151 ], [ %1010, %1232 ], [ %1339, %1480 ], [ %1010, %993 ]
  %1142 = phi float [ %1011, %1151 ], [ %1011, %1232 ], [ %1340, %1480 ], [ %1011, %993 ]
  %1143 = phi float [ %1012, %1151 ], [ %1012, %1232 ], [ %1412, %1480 ], [ %1012, %993 ]
  %1144 = phi float [ %1013, %1151 ], [ %1013, %1232 ], [ %1409, %1480 ], [ %1013, %993 ]
  %1145 = phi float [ %1014, %1151 ], [ %1014, %1232 ], [ %1406, %1480 ], [ %1014, %993 ]
  %1146 = phi float [ %1015, %1151 ], [ %1015, %1232 ], [ %1355, %1480 ], [ %1015, %993 ]
  %1147 = phi float [ %1016, %1151 ], [ %1016, %1232 ], [ %1350, %1480 ], [ %1016, %993 ]
  %1148 = phi float [ %1017, %1151 ], [ %1017, %1232 ], [ %1351, %1480 ], [ %1017, %993 ]
  %1149 = phi float [ %1018, %1151 ], [ %1018, %1232 ], [ %1352, %1480 ], [ %1018, %993 ]
  %1150 = icmp eq i32 %1075, %992
  br i1 %1150, label %1493, label %993

; <label>:1151                                    ; preds = %993
  %1152 = extractvalue %dx.types.ResRet.f32 %1045, 3
  %1153 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1155 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1156 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1157 = extractvalue %dx.types.ResRet.i32 %1031, 3
  %1158 = extractvalue %dx.types.ResRet.i32 %1031, 2
  %1159 = add i32 %1157, 0
  %1160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1159, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1162 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1160, %dx.types.Handle %1161, float %1084, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float %1112, float %1114, float undef, float %1113, float %1115, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = fmul fast float %1163, %1156
  %1165 = fadd fast float %1164, %1155
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = fmul fast float %1084, %1040
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %1091, float %1167)  ; FMad(a,b,c)
  %1169 = fadd fast float %1168, %1154
  %1170 = fmul fast float %1084, %1042
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %1091, float %1170)  ; FMad(a,b,c)
  %1172 = fadd fast float %1171, %1153
  %1173 = fmul fast float %1112, %1040
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %1114, float %1173)  ; FMad(a,b,c)
  %1175 = fmul fast float %1112, %1042
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %1114, float %1175)  ; FMad(a,b,c)
  %1177 = fmul fast float %1113, %1040
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %1115, float %1177)  ; FMad(a,b,c)
  %1179 = fmul fast float %1113, %1042
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %1115, float %1179)  ; FMad(a,b,c)
  %1181 = add i32 %1158, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1181, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1182, %dx.types.Handle %1161, float %1169, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float %1174, float %1176, float undef, float %1178, float %1180, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = and i32 %1076, 1024
  %1186 = icmp ne i32 %1185, 0
  %1187 = fcmp fast ogt float %1184, 0x3FE0101020000000
  %1188 = uitofp i1 %1187 to float
  %1189 = select i1 %1186, float %1188, float %1184
  %1190 = and i32 %1076, 8192
  %1191 = icmp ne i32 %1190, 0
  %1192 = select i1 %1191, float %1152, float 1.000000e+00
  %1193 = fmul fast float %1084, 2.000000e+00
  %1194 = fadd fast float %1193, -1.000000e+00
  %1195 = call float @dx.op.unary.f32(i32 6, float %1194)  ; FAbs(value)
  %1196 = fmul fast float %1195, %1073
  %1197 = fsub fast float %1196, %1073
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fmul fast float %1091, 2.000000e+00
  %1200 = fadd fast float %1199, -1.000000e+00
  %1201 = call float @dx.op.unary.f32(i32 6, float %1200)  ; FAbs(value)
  %1202 = fmul fast float %1201, %1074
  %1203 = fsub fast float %1202, %1074
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = fmul fast float %1103, %1036
  %1206 = fsub fast float %1205, %1036
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = fmul fast float %1166, %1192
  %1209 = fmul fast float %1208, %1163
  %1210 = fmul fast float %1209, %1198
  %1211 = fmul fast float %1210, %1189
  %1212 = fmul fast float %1211, %1204
  %1213 = fmul fast float %1212, %1207
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1216 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1217 = fsub fast float %1120, %1216
  %1218 = fmul fast float %1217, %1215
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fmul fast float %1213, %1037
  %1221 = fadd fast float %1213, %1037
  %1222 = fmul fast float %1221, %1046
  %1223 = fsub fast float %1222, %1046
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = and i32 %1076, 128
  %1226 = icmp ne i32 %1225, 0
  %1227 = select i1 %1226, float %1224, float %1220
  %1228 = fmul fast float %1227, %1219
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = fcmp fast ugt float %1228, %1230
  br i1 %1231, label %1232, label %1125

; <label>:1232                                    ; preds = %1151
  %1233 = select i1 %1191, float %1228, float 0.000000e+00
  %1234 = fadd fast float %1233, %995
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  br i1 %1191, label %1125, label %1236

; <label>:1236                                    ; preds = %1232
  %1237 = and i32 %1076, 4
  %1238 = and i32 %1076, 8
  %1239 = add i32 %1032, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1239, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1240, %dx.types.Handle %1241, float %1169, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float %1174, float %1176, float undef, float %1178, float %1180, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  %1247 = bitcast float %1058 to i32
  %1248 = and i32 %1247, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = lshr i32 %1247, 8
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1246, %1249
  %1254 = fadd fast float %1253, %1252
  %1255 = fmul fast float %1254, 0x3F70101000000000
  %1256 = add i32 %1033, 0
  %1257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1257, %dx.types.Handle %1241, float %1169, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float %1174, float %1176, float undef, float %1178, float %1180, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.ResRet.f32 %1258, 3
  %1263 = bitcast float %1052 to i32
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = lshr i32 %1263, 8
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = lshr i32 %1263, 16
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101000000000
  %1273 = fmul fast float %1259, %1265
  %1274 = fadd fast float %1273, %1268
  %1275 = fmul fast float %1274, 0x3F70101000000000
  %1276 = fadd fast float %1260, -5.000000e-01
  %1277 = fadd fast float %1262, -5.000000e-01
  %1278 = fmul fast float %1276, %1272
  %1279 = fmul fast float %1277, %1272
  %1280 = fadd fast float %1278, 5.000000e-01
  %1281 = fadd fast float %1279, 5.000000e-01
  %1282 = fmul fast float %1243, %1061
  %1283 = fmul fast float %1244, %1062
  %1284 = fmul fast float %1245, %1063
  %1285 = fmul fast float %1280, 2.000000e+00
  %1286 = fadd fast float %1285, -1.000000e+00
  %1287 = fmul fast float %1281, 2.000000e+00
  %1288 = fadd fast float %1287, -1.000000e+00
  %1289 = fadd fast float %1286, %1288
  %1290 = fmul fast float %1289, 5.000000e-01
  %1291 = fsub fast float %1286, %1288
  %1292 = fmul fast float %1291, 5.000000e-01
  %1293 = call float @dx.op.unary.f32(i32 6, float %1290)  ; FAbs(value)
  %1294 = fsub fast float 1.000000e+00, %1293
  %1295 = call float @dx.op.unary.f32(i32 6, float %1292)  ; FAbs(value)
  %1296 = fsub fast float %1294, %1295
  %1297 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1292, float %1296, float %1290, float %1292, float %1296)  ; Dot3(ax,ay,az,bx,by,bz)
  %1298 = call float @dx.op.unary.f32(i32 25, float %1297)  ; Rsqrt(value)
  %1299 = fmul fast float %1290, %1298
  %1300 = fmul fast float %1292, %1298
  %1301 = fmul fast float %1298, %1296
  %1302 = fmul fast float %1301, %1026
  %1303 = fmul fast float %1301, %1027
  %1304 = fmul fast float %1301, %1028
  %1305 = fmul fast float %1299, %1049
  %1306 = fmul fast float %1299, %1050
  %1307 = fmul fast float %1299, %1051
  %1308 = fadd fast float %1305, %1302
  %1309 = fadd fast float %1306, %1303
  %1310 = fadd fast float %1307, %1304
  %1311 = fmul fast float %1300, %1055
  %1312 = fmul fast float %1300, %1056
  %1313 = fmul fast float %1300, %1057
  %1314 = fadd fast float %1308, %1311
  %1315 = fadd fast float %1309, %1312
  %1316 = fadd fast float %1310, %1313
  %1317 = call float @dx.op.dot3.f32(i32 55, float %1314, float %1315, float %1316, float %1314, float %1315, float %1316)  ; Dot3(ax,ay,az,bx,by,bz)
  %1318 = call float @dx.op.unary.f32(i32 25, float %1317)  ; Rsqrt(value)
  %1319 = fmul fast float %1314, %1318
  %1320 = fmul fast float %1315, %1318
  %1321 = fmul fast float %1316, %1318
  %1322 = icmp ne i32 %1238, 0
  %1323 = select i1 %1322, float 1.000000e+00, float 0.000000e+00
  %1324 = fmul fast float %1228, %1323
  %1325 = and i32 %1076, 1
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1327, label %1331

; <label>:1327                                    ; preds = %1236
  %1328 = fsub fast float %1319, %1009
  %1329 = fsub fast float %1320, %1010
  %1330 = fsub fast float %1321, %1011
  br label %1331

; <label>:1331                                    ; preds = %1327, %1236
  %1332 = phi float [ %1328, %1327 ], [ %1319, %1236 ]
  %1333 = phi float [ %1329, %1327 ], [ %1320, %1236 ]
  %1334 = phi float [ %1330, %1327 ], [ %1321, %1236 ]
  %1335 = fmul float %1334, %1324
  %1336 = fmul float %1333, %1324
  %1337 = fmul float %1332, %1324
  %1338 = fadd fast float %1337, %1009
  %1339 = fadd fast float %1336, %1010
  %1340 = fadd fast float %1335, %1011
  %1341 = icmp ne i32 %1237, 0
  %1342 = select i1 %1341, float 1.000000e+00, float 0.000000e+00
  %1343 = fmul fast float %1228, %1342
  %1344 = fsub fast float %1282, %1016
  %1345 = fsub fast float %1283, %1017
  %1346 = fsub fast float %1284, %1018
  %1347 = fmul fast float %1344, %1343
  %1348 = fmul fast float %1345, %1343
  %1349 = fmul fast float %1346, %1343
  %1350 = fadd fast float %1347, %1016
  %1351 = fadd fast float %1348, %1017
  %1352 = fadd fast float %1349, %1018
  %1353 = fsub fast float %1255, %1015
  %1354 = fmul fast float %1353, %1343
  %1355 = fadd fast float %1354, %1015
  %1356 = fmul fast float %1343, %1002
  %1357 = fsub fast float %1002, %1356
  %1358 = fmul fast float %1343, %1001
  %1359 = fsub fast float %1001, %1358
  %1360 = bitcast float %1070 to i32
  %1361 = lshr i32 %1360, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = and i32 %1364, 1
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1367, label %1392

; <label>:1367                                    ; preds = %1331
  %1368 = fadd fast float %1255, 0xBFB99999A0000000
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = fmul fast float %1369, 0x3FF1C71C80000000
  %1371 = fsub fast float 1.000000e+00, %1370
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %1372, %1282
  %1374 = fmul fast float %1372, %1283
  %1375 = fmul fast float %1372, %1284
  %1376 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1377 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1378 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1379 = call float @dx.op.binary.f32(i32 35, float %1377, float %1378)  ; FMax(a,b)
  %1380 = call float @dx.op.binary.f32(i32 35, float %1376, float %1379)  ; FMax(a,b)
  %1381 = fcmp fast ogt float %1380, 0.000000e+00
  %1382 = bitcast float %1380 to i32
  %1383 = sub nsw i32 2129859010, %1382
  %1384 = bitcast i32 %1383 to float
  %1385 = select i1 %1381, float %1384, float 0.000000e+00
  %1386 = fmul fast float %1376, %1362
  %1387 = fmul fast float %1377, %1362
  %1388 = fmul fast float %1378, %1362
  %1389 = fmul fast float %1386, %1385
  %1390 = fmul fast float %1387, %1385
  %1391 = fmul fast float %1388, %1385
  br label %1392

; <label>:1392                                    ; preds = %1367, %1331
  %1393 = phi float [ %1362, %1331 ], [ %1389, %1367 ]
  %1394 = phi float [ %1362, %1331 ], [ %1390, %1367 ]
  %1395 = phi float [ %1362, %1331 ], [ %1391, %1367 ]
  %1396 = fsub fast float %1393, %1003
  %1397 = fsub fast float %1394, %1004
  %1398 = fsub fast float %1395, %1005
  %1399 = fmul fast float %1396, %1343
  %1400 = fmul fast float %1397, %1343
  %1401 = fmul fast float %1398, %1343
  %1402 = fadd fast float %1399, %1003
  %1403 = fadd fast float %1400, %1004
  %1404 = fadd fast float %1401, %1005
  %1405 = fadd fast float %1228, %1014
  %1406 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1407 = fsub fast float %1275, %1013
  %1408 = fmul fast float %1407, %1324
  %1409 = fadd fast float %1408, %1013
  %1410 = fsub fast float %1261, %1012
  %1411 = fmul fast float %1410, %1324
  %1412 = fadd fast float %1411, %1012
  br i1 %1326, label %1421, label %1413

; <label>:1413                                    ; preds = %1392
  %1414 = and i32 %1076, 32768
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1431, label %1416

; <label>:1416                                    ; preds = %1413
  %1417 = fmul fast float %1324, 1.270000e+02
  %1418 = fadd fast float %1417, %998
  %1419 = fadd fast float %1417, %999
  %1420 = fadd fast float %1417, %1000
  br label %1431

; <label>:1421                                    ; preds = %1392
  %1422 = fsub fast float 1.270000e+02, %998
  %1423 = fsub fast float 1.270000e+02, %999
  %1424 = fsub fast float 1.270000e+02, %1000
  %1425 = fmul fast float %1324, %1422
  %1426 = fmul fast float %1324, %1423
  %1427 = fmul fast float %1324, %1424
  %1428 = fadd fast float %1425, %998
  %1429 = fadd fast float %1426, %999
  %1430 = fadd fast float %1427, %1000
  br label %1431

; <label>:1431                                    ; preds = %1421, %1416, %1413
  %1432 = phi float [ %1418, %1416 ], [ %998, %1413 ], [ %1428, %1421 ]
  %1433 = phi float [ %1419, %1416 ], [ %999, %1413 ], [ %1429, %1421 ]
  %1434 = phi float [ %1420, %1416 ], [ %1000, %1413 ], [ %1430, %1421 ]
  %1435 = call float @dx.op.dot3.f32(i32 55, float %1282, float %1283, float %1284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1439 = fmul fast float %1438, %1435
  %1440 = fadd fast float %1439, %1437
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = bitcast float %1064 to i32
  %1443 = and i32 %1442, 65535
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = lshr i32 %1442, 16
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = fcmp fast oge float %1444, 0.000000e+00
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = select i1 %1447, float %1444, float %1449
  %1451 = fadd fast float %1450, %1446
  %1452 = fsub fast float %1441, %997
  %1453 = fmul fast float %1452, %1228
  %1454 = fadd fast float %1453, %997
  %1455 = fmul fast float %1451, %1228
  %1456 = call float @dx.op.binary.f32(i32 35, float %996, float %1455)  ; FMax(a,b)
  %1457 = and i32 %1076, 16
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1480, label %1459

; <label>:1459                                    ; preds = %1431
  %1460 = add i32 %1067, 0
  %1461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1460, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1461, %dx.types.Handle %1241, float %1169, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float %1174, float %1176, float undef, float %1178, float %1180, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = and i32 %1360, 65535
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = fmul fast float %1463, %1061
  %1469 = fmul fast float %1464, %1062
  %1470 = fmul fast float %1465, %1063
  %1471 = and i32 %1076, 16384
  %1472 = icmp ne i32 %1471, 0
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = select i1 %1472, float %1474, float 1.000000e+00
  %1476 = fmul fast float %1475, %1467
  %1477 = fmul fast float %1468, %1476
  %1478 = fmul fast float %1469, %1476
  %1479 = fmul fast float %1470, %1476
  br label %1480

; <label>:1480                                    ; preds = %1459, %1431
  %1481 = phi float [ %1477, %1459 ], [ 0.000000e+00, %1431 ]
  %1482 = phi float [ %1478, %1459 ], [ 0.000000e+00, %1431 ]
  %1483 = phi float [ %1479, %1459 ], [ 0.000000e+00, %1431 ]
  %1484 = fsub fast float %1481, %1006
  %1485 = fsub fast float %1482, %1007
  %1486 = fsub fast float %1483, %1008
  %1487 = fmul fast float %1484, %1228
  %1488 = fmul fast float %1485, %1228
  %1489 = fmul fast float %1486, %1228
  %1490 = fadd fast float %1487, %1006
  %1491 = fadd fast float %1488, %1007
  %1492 = fadd fast float %1489, %1008
  br label %1125

; <label>:1493                                    ; preds = %1125
  br label %1494

; <label>:1494                                    ; preds = %1493, %883
  %1495 = phi float [ 0.000000e+00, %883 ], [ %1126, %1493 ]
  %1496 = phi float [ %905, %883 ], [ %1127, %1493 ]
  %1497 = phi float [ %903, %883 ], [ %1128, %1493 ]
  %1498 = phi float [ %895, %883 ], [ %1129, %1493 ]
  %1499 = phi float [ %896, %883 ], [ %1130, %1493 ]
  %1500 = phi float [ %897, %883 ], [ %1131, %1493 ]
  %1501 = phi float [ 0.000000e+00, %883 ], [ %1132, %1493 ]
  %1502 = phi float [ 0.000000e+00, %883 ], [ %1133, %1493 ]
  %1503 = phi float [ %892, %883 ], [ %1134, %1493 ]
  %1504 = phi float [ %893, %883 ], [ %1135, %1493 ]
  %1505 = phi float [ %894, %883 ], [ %1136, %1493 ]
  %1506 = phi float [ %889, %883 ], [ %1137, %1493 ]
  %1507 = phi float [ %890, %883 ], [ %1138, %1493 ]
  %1508 = phi float [ %891, %883 ], [ %1139, %1493 ]
  %1509 = phi float [ %937, %883 ], [ %1140, %1493 ]
  %1510 = phi float [ %938, %883 ], [ %1141, %1493 ]
  %1511 = phi float [ %939, %883 ], [ %1142, %1493 ]
  %1512 = phi float [ %901, %883 ], [ %1143, %1493 ]
  %1513 = phi float [ %900, %883 ], [ %1144, %1493 ]
  %1514 = phi float [ 0.000000e+00, %883 ], [ %1145, %1493 ]
  %1515 = phi float [ %898, %883 ], [ %1146, %1493 ]
  %1516 = phi float [ %886, %883 ], [ %1147, %1493 ]
  %1517 = phi float [ %887, %883 ], [ %1148, %1493 ]
  %1518 = phi float [ %888, %883 ], [ %1149, %1493 ]
  %1519 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1510, float %1511, float %1509, float %1510, float %1511)  ; Dot3(ax,ay,az,bx,by,bz)
  %1520 = call float @dx.op.unary.f32(i32 25, float %1519)  ; Rsqrt(value)
  %1521 = fmul fast float %1520, %1509
  %1522 = fmul fast float %1520, %1510
  %1523 = fmul fast float %1520, %1511
  %1524 = fadd fast float %1514, %899
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1522, float %1523, float %1521, float %1522, float %1523)  ; Dot3(ax,ay,az,bx,by,bz)
  %1527 = call float @dx.op.unary.f32(i32 25, float %1526)  ; Rsqrt(value)
  %1528 = fmul fast float %1527, %1521
  %1529 = fmul fast float %1527, %1522
  %1530 = fmul fast float %1527, %1523
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = extractvalue %dx.types.ResRet.i32 %1531, 1
  %1534 = extractvalue %dx.types.ResRet.i32 %1531, 2
  %1535 = extractvalue %dx.types.ResRet.i32 %1531, 3
  %1536 = bitcast i32 %1532 to float
  %1537 = bitcast i32 %1533 to float
  %1538 = bitcast i32 %1534 to float
  %1539 = bitcast i32 %1535 to float
  %1540 = fsub fast float %1516, %1536
  %1541 = fsub fast float %1517, %1537
  %1542 = fsub fast float %1518, %1538
  %1543 = fmul fast float %1540, %153
  %1544 = fmul fast float %1541, %153
  %1545 = fmul fast float %1542, %153
  %1546 = fadd fast float %1543, %1536
  %1547 = fadd fast float %1544, %1537
  %1548 = fadd fast float %1545, %1538
  %1549 = fsub fast float %1525, %1539
  %1550 = fmul fast float %1549, %153
  %1551 = fadd fast float %1550, %1539
  %1552 = fadd fast float %1515, 0xBFB99999A0000000
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = fmul fast float %1553, 0x3FF1C71C80000000
  %1555 = call float @dx.op.binary.f32(i32 36, float %1515, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1556 = fsub fast float 1.000000e+00, %1554
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1558 = fmul fast float %1546, %1557
  %1559 = fmul fast float %1547, %1557
  %1560 = fmul fast float %1548, %1557
  %1561 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1562 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1563 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1564 = fmul fast float %1546, %1554
  %1565 = fmul fast float %1547, %1554
  %1566 = fmul fast float %1548, %1554
  %1567 = fadd fast float %1564, %1555
  %1568 = fadd fast float %1565, %1555
  %1569 = fadd fast float %1566, %1555
  %1570 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1571 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 1
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1592, label %1578

; <label>:1578                                    ; preds = %1494
  %1579 = call float @dx.op.binary.f32(i32 35, float %1562, float %1563)  ; FMax(a,b)
  %1580 = call float @dx.op.binary.f32(i32 35, float %1561, float %1579)  ; FMax(a,b)
  %1581 = fcmp fast ogt float %1580, 0.000000e+00
  %1582 = bitcast float %1580 to i32
  %1583 = sub nsw i32 2129859010, %1582
  %1584 = bitcast i32 %1583 to float
  %1585 = select i1 %1581, float %1584, float 0.000000e+00
  %1586 = fmul fast float %1561, %1503
  %1587 = fmul fast float %1562, %1504
  %1588 = fmul fast float %1563, %1505
  %1589 = fmul fast float %1586, %1585
  %1590 = fmul fast float %1587, %1585
  %1591 = fmul fast float %1588, %1585
  br label %1592

; <label>:1592                                    ; preds = %1578, %1494
  %1593 = phi float [ %1589, %1578 ], [ %1503, %1494 ]
  %1594 = phi float [ %1590, %1578 ], [ %1504, %1494 ]
  %1595 = phi float [ %1591, %1578 ], [ %1505, %1494 ]
  %1596 = call float @dx.op.binary.f32(i32 36, float %1498, float 1.270000e+02)  ; FMin(a,b)
  %1597 = call float @dx.op.binary.f32(i32 36, float %1499, float 1.270000e+02)  ; FMin(a,b)
  %1598 = call float @dx.op.binary.f32(i32 36, float %1500, float 1.270000e+02)  ; FMin(a,b)
  %1599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.i32 %1599, 3
  %1601 = and i32 %1600, 8
  %1602 = icmp ne i32 %1601, 0
  %1603 = call float @dx.op.binary.f32(i32 35, float %1561, float %1546)  ; FMax(a,b)
  %1604 = call float @dx.op.binary.f32(i32 35, float %1562, float %1546)  ; FMax(a,b)
  %1605 = call float @dx.op.binary.f32(i32 35, float %1563, float %1546)  ; FMax(a,b)
  %1606 = call float @dx.op.dot3.f32(i32 55, float %1561, float %1562, float %1563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1607 = select i1 %212, float %1546, float %1561
  %1608 = select i1 %212, float %1606, float %1562
  %1609 = select i1 %212, float 1.000000e+00, float %1563
  %1610 = select i1 %1602, float %1603, float %1607
  %1611 = select i1 %1602, float %1604, float %1608
  %1612 = select i1 %1602, float %1605, float %1609
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1593, float %1594, float %1595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = select i1 %212, float %1613, float %1593
  %1615 = select i1 %212, float %1613, float %1594
  %1616 = select i1 %212, float %1613, float %1595
  %1617 = and i32 %188, 3
  %1618 = select i1 %182, i32 %1617, i32 0
  %1619 = icmp eq i32 %1618, 1
  br i1 %1619, label %1620, label %1696

; <label>:1620                                    ; preds = %1592
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  %1623 = extractvalue %dx.types.CBufRet.f32 %1621, 1
  %1624 = fadd fast float %1622, %120
  %1625 = fadd fast float %1623, %121
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1629 = fsub fast float %1624, %1627
  %1630 = fsub fast float %1625, %1628
  %1631 = fmul fast float %1629, %1629
  %1632 = fmul fast float %1630, %1630
  %1633 = fadd fast float %1631, %1632
  %1634 = call float @dx.op.unary.f32(i32 24, float %1633)  ; Sqrt(value)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1636 = fcmp fast olt float %1634, %1635
  br i1 %1636, label %1637, label %1690

; <label>:1637                                    ; preds = %1620
  %1638 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1639 = fadd fast float %1638, %122
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1647 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1649 = extractvalue %dx.types.CBufRet.f32 %1640, 3
  %1650 = extractvalue %dx.types.CBufRet.f32 %1642, 3
  %1651 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1652 = fadd fast float %1649, %1624
  %1653 = fadd fast float %1650, %1625
  %1654 = fadd fast float %1639, %1651
  %1655 = fmul fast float %1652, %1641
  %1656 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1643, float %1655)  ; FMad(a,b,c)
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %1654, float %1645, float %1656)  ; FMad(a,b,c)
  %1658 = fmul fast float %1652, %1646
  %1659 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1647, float %1658)  ; FMad(a,b,c)
  %1660 = call float @dx.op.tertiary.f32(i32 46, float %1654, float %1648, float %1659)  ; FMad(a,b,c)
  %1661 = fsub fast float %1657, %1649
  %1662 = fsub fast float %1660, %1650
  %1663 = fsub fast float %1661, %1627
  %1664 = fadd fast float %1663, %1635
  %1665 = fsub fast float %1662, %1628
  %1666 = fadd fast float %1665, %1635
  %1667 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1668 = fmul fast float %1664, %1667
  %1669 = fmul fast float %1666, %1667
  %1670 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1671 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1672 = fsub fast float 1.000000e+00, %1670
  %1673 = fsub fast float 1.000000e+00, %1671
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %1672, float %1673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = fcmp fast ugt float %1675, 0.000000e+00
  br i1 %1676, label %1677, label %1690

; <label>:1677                                    ; preds = %1637
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 2
  %1680 = fmul fast float %1679, %1675
  %1681 = extractvalue %dx.types.CBufRet.f32 %1678, 3
  %1682 = fadd fast float %1681, %1680
  %1683 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1684 = fadd fast float %1682, %1651
  %1685 = fmul fast float %1657, %1645
  %1686 = call float @dx.op.tertiary.f32(i32 46, float %1660, float %1648, float %1685)  ; FMad(a,b,c)
  %1687 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1683, float %1686)  ; FMad(a,b,c)
  %1688 = fsub fast float %1687, %1651
  %1689 = fsub fast float %1688, %1638
  br label %1690

; <label>:1690                                    ; preds = %1677, %1637, %1620
  %1691 = phi i1 [ true, %1677 ], [ false, %1637 ], [ false, %1620 ]
  %1692 = phi float [ %1689, %1677 ], [ -1.310720e+05, %1637 ], [ -1.310720e+05, %1620 ]
  %1693 = fsub fast float %1692, %122
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = select i1 %1691, float %1694, float 1.000000e+00
  br label %1696

; <label>:1696                                    ; preds = %1690, %1592
  %1697 = phi float [ %1695, %1690 ], [ 0.000000e+00, %1592 ]
  %1698 = icmp eq i32 %1618, 3
  %1699 = select i1 %1698, float 1.000000e+00, float %1697
  %1700 = call float @dx.op.binary.f32(i32 35, float %1495, float %1699)  ; FMax(a,b)
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1702 = fcmp fast une float %1701, 0.000000e+00
  %1703 = fsub fast float -0.000000e+00, %139
  %1704 = fsub fast float -0.000000e+00, %140
  %1705 = fsub fast float -0.000000e+00, %141
  br i1 %1702, label %1706, label %1868

; <label>:1706                                    ; preds = %1696
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1704, float %1705, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = fmul fast float %1701, 2.500000e+00
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = fmul fast float %1701, 0x4013FFFFE0000000
  %1711 = fadd fast float %1710, 0xBFFFFFFFE0000000
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = fmul fast float %1701, 0x4004000020000000
  %1714 = fadd fast float %1713, 0xBFF8000040000000
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1717 = fmul fast float %1552, 1.000000e+01
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = fmul fast float %1718, 2.000000e+00
  %1720 = fsub fast float 3.000000e+00, %1719
  %1721 = fmul fast float %1718, %1718
  %1722 = fmul fast float %1721, %1720
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fsub fast float 0x3FE3333340000000, %1573
  %1725 = fmul fast float %1724, 0x400AAAAAA0000000
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1727 = fmul fast float %1723, %1726
  %1728 = fmul fast float %1610, 0x3FEA2B8620000000
  %1729 = fmul fast float %1611, 0x3FEA2B8620000000
  %1730 = fmul fast float %1612, 0x3FEA2B8620000000
  %1731 = fadd fast float %1728, 0x3FC81DFBA0000000
  %1732 = fmul fast float %1731, %1610
  %1733 = fadd fast float %1732, 0x3F910E6020000000
  %1734 = fadd fast float %1729, 0x3FC81DFBA0000000
  %1735 = fmul fast float %1734, %1611
  %1736 = fadd fast float %1735, 0x3F910E6020000000
  %1737 = fadd fast float %1730, 0x3FC81DFBA0000000
  %1738 = fmul fast float %1737, %1612
  %1739 = fadd fast float %1738, 0x3F910E6020000000
  %1740 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1741 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1742 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1743 = fsub fast float %1740, %1610
  %1744 = fsub fast float %1741, %1611
  %1745 = fsub fast float %1742, %1612
  %1746 = fmul fast float %1743, %1716
  %1747 = fmul fast float %1746, %1727
  %1748 = fmul fast float %1744, %1716
  %1749 = fmul fast float %1748, %1727
  %1750 = fmul fast float %1745, %1716
  %1751 = fmul fast float %1750, %1727
  %1752 = fadd fast float %1747, %1610
  %1753 = fadd fast float %1749, %1611
  %1754 = fadd fast float %1751, %1612
  %1755 = fmul fast float %1512, %1512
  %1756 = fmul fast float %1755, %1755
  %1757 = fadd fast float %1712, 1.000000e+00
  %1758 = fsub fast float %1757, %1727
  %1759 = call float @dx.op.unary.f32(i32 7, float %1758)  ; Saturate(value)
  %1760 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1762 = fsub fast float 1.000000e+00, %1756
  %1763 = call float @dx.op.binary.f32(i32 36, float %1759, float %1762)  ; FMin(a,b)
  %1764 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1765 = call float @dx.op.binary.f32(i32 35, float %1763, float %1764)  ; FMax(a,b)
  %1766 = fadd fast float %1761, 0xBFE4CCCCC0000000
  %1767 = fmul fast float %1766, 0x4006DB6DA0000000
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1769 = fmul fast float %1768, 2.000000e+00
  %1770 = fsub fast float 3.000000e+00, %1769
  %1771 = bitcast float %1570 to i32
  %1772 = ashr i32 %1771, 1
  %1773 = add nsw i32 %1772, 532487669
  %1774 = bitcast i32 %1773 to float
  %1775 = fsub fast float 1.000000e+00, %1774
  %1776 = bitcast float %1775 to i32
  %1777 = sub nsw i32 2129859010, %1776
  %1778 = bitcast i32 %1777 to float
  %1779 = fmul fast float %1778, 2.000000e+00
  %1780 = bitcast float %1571 to i32
  %1781 = ashr i32 %1780, 1
  %1782 = add nsw i32 %1781, 532487669
  %1783 = bitcast i32 %1782 to float
  %1784 = fsub fast float 1.000000e+00, %1783
  %1785 = bitcast float %1784 to i32
  %1786 = sub nsw i32 2129859010, %1785
  %1787 = bitcast i32 %1786 to float
  %1788 = fmul fast float %1787, 2.000000e+00
  %1789 = bitcast float %1572 to i32
  %1790 = ashr i32 %1789, 1
  %1791 = add nsw i32 %1790, 532487669
  %1792 = bitcast i32 %1791 to float
  %1793 = fsub fast float 1.000000e+00, %1792
  %1794 = bitcast float %1793 to i32
  %1795 = sub nsw i32 2129859010, %1794
  %1796 = bitcast i32 %1795 to float
  %1797 = fmul fast float %1796, 2.000000e+00
  %1798 = fsub fast float 0x4002A9FBE0000000, %1779
  %1799 = fadd fast float %1779, 0x3FD54FDF00000000
  %1800 = bitcast float %1799 to i32
  %1801 = sub nsw i32 2129859010, %1800
  %1802 = bitcast i32 %1801 to float
  %1803 = fmul fast float %1802, %1798
  %1804 = fmul fast float %1803, %1803
  %1805 = fsub fast float 0x4002A9FBE0000000, %1788
  %1806 = fadd fast float %1788, 0x3FD54FDF00000000
  %1807 = bitcast float %1806 to i32
  %1808 = sub nsw i32 2129859010, %1807
  %1809 = bitcast i32 %1808 to float
  %1810 = fmul fast float %1809, %1805
  %1811 = fmul fast float %1810, %1810
  %1812 = fsub fast float 0x4002A9FBE0000000, %1797
  %1813 = fadd fast float %1797, 0x3FD54FDF00000000
  %1814 = bitcast float %1813 to i32
  %1815 = sub nsw i32 2129859010, %1814
  %1816 = bitcast i32 %1815 to float
  %1817 = fmul fast float %1816, %1812
  %1818 = fmul fast float %1817, %1817
  %1819 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1804)  ; FMax(a,b)
  %1820 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1811)  ; FMax(a,b)
  %1821 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1818)  ; FMax(a,b)
  %1822 = fsub fast float 1.000000e+00, %1707
  %1823 = fadd fast float %1822, %1723
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = fsub fast float 1.000000e+00, %1699
  %1826 = fmul fast float %1765, %1825
  %1827 = fmul fast float %1768, %1768
  %1828 = fmul fast float %1827, %1826
  %1829 = fmul fast float %1828, %1770
  %1830 = fmul fast float %1825, 0xBFE99999A0000000
  %1831 = fmul fast float %1830, %1716
  %1832 = fmul fast float %1831, %1727
  %1833 = fadd fast float %1832, 1.000000e+00
  %1834 = fadd fast float %1573, -1.000000e+00
  %1835 = fmul fast float %1833, %1834
  %1836 = fadd fast float %1835, 1.000000e+00
  %1837 = fsub fast float %1819, %1570
  %1838 = fsub fast float %1820, %1571
  %1839 = fsub fast float %1821, %1572
  %1840 = fmul fast float %1829, %1837
  %1841 = fmul fast float %1829, %1838
  %1842 = fmul fast float %1829, %1839
  %1843 = fadd fast float %1840, %1570
  %1844 = fadd fast float %1841, %1571
  %1845 = fadd fast float %1842, %1572
  %1846 = fsub fast float %75, %1528
  %1847 = fsub fast float %76, %1529
  %1848 = fsub fast float %77, %1530
  %1849 = fmul fast float %1829, %1846
  %1850 = fmul fast float %1829, %1847
  %1851 = fmul fast float %1829, %1848
  %1852 = fadd fast float %1849, %1528
  %1853 = fadd fast float %1850, %1529
  %1854 = fadd fast float %1851, %1530
  %1855 = fmul fast float %1829, %1824
  %1856 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1857 = fsub fast float 1.000000e+00, %1856
  %1858 = fmul fast float %1855, %1857
  %1859 = fadd fast float %1858, %1856
  %1860 = fsub fast float 1.000000e+00, %1512
  %1861 = fmul fast float %1829, %1860
  %1862 = fadd fast float %1861, %1512
  %1863 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1853, float %1854, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = call float @dx.op.unary.f32(i32 25, float %1863)  ; Rsqrt(value)
  %1865 = fmul fast float %1852, %1864
  %1866 = fmul fast float %1853, %1864
  %1867 = fmul fast float %1854, %1864
  br label %1868

; <label>:1868                                    ; preds = %1706, %1696
  %1869 = phi float [ %1752, %1706 ], [ %1610, %1696 ]
  %1870 = phi float [ %1753, %1706 ], [ %1611, %1696 ]
  %1871 = phi float [ %1754, %1706 ], [ %1612, %1696 ]
  %1872 = phi float [ %1865, %1706 ], [ %1528, %1696 ]
  %1873 = phi float [ %1866, %1706 ], [ %1529, %1696 ]
  %1874 = phi float [ %1867, %1706 ], [ %1530, %1696 ]
  %1875 = phi float [ %1843, %1706 ], [ %1570, %1696 ]
  %1876 = phi float [ %1844, %1706 ], [ %1571, %1696 ]
  %1877 = phi float [ %1845, %1706 ], [ %1572, %1696 ]
  %1878 = phi float [ %1859, %1706 ], [ %1573, %1696 ]
  %1879 = phi float [ %1862, %1706 ], [ %1512, %1696 ]
  %1880 = select i1 %212, float 0.000000e+00, float %1877
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1872, float %1873, float %1874, float %1703, float %1704, float %1705)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %1872, float %1873, float %1874)  ; Dot3(ax,ay,az,bx,by,bz)
  %1884 = fmul fast float %1883, 2.000000e+00
  %1885 = fmul fast float %1884, %1872
  %1886 = fmul fast float %1884, %1873
  %1887 = fmul fast float %1884, %1874
  %1888 = fsub fast float %139, %1885
  %1889 = fsub fast float %140, %1886
  %1890 = fsub fast float %141, %1887
  %1891 = call float @dx.op.binary.f32(i32 36, float %1879, float 1.000000e+00)  ; FMin(a,b)
  %1892 = fsub fast float 1.000000e+00, %1879
  %1893 = bitcast float %1892 to i32
  %1894 = sub nsw i32 2129859010, %1893
  %1895 = bitcast i32 %1894 to float
  %1896 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %47)  ; FMax(a,b)
  %1897 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = fcmp fast oeq float %1897, 0.000000e+00
  %1899 = fcmp fast oeq float %1896, 0.000000e+00
  %1900 = or i1 %1899, %1898
  br i1 %1900, label %1930, label %1901

; <label>:1901                                    ; preds = %1868
  %1902 = fsub fast float -0.000000e+00, %50
  %1903 = fsub fast float -0.000000e+00, %48
  %1904 = call float @dx.op.unary.f32(i32 24, float %1897)  ; Sqrt(value)
  %1905 = fdiv fast float %1904, %1896
  %1906 = fcmp fast ogt float %1905, 0x3FFB6F8900000000
  %1907 = select i1 %1906, float 0x3FFB6F8900000000, float %1905
  %1908 = fmul fast float %1907, 0x3FE8A23460000000
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = call float @dx.op.binary.f32(i32 35, float %1907, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1911 = fmul fast float %1909, %1896
  %1912 = fmul fast float %1910, 0x3FF279A740000000
  %1913 = fadd fast float %1912, -1.000000e+00
  %1914 = call float @dx.op.dot3.f32(i32 55, float %1902, float %1903, float %49, float %1902, float %1903, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %1915 = call float @dx.op.unary.f32(i32 25, float %1914)  ; Rsqrt(value)
  %1916 = fmul fast float %1915, %1902
  %1917 = fmul fast float %1915, %1903
  %1918 = fmul fast float %1915, %49
  %1919 = fmul fast float %1913, %1913
  %1920 = fsub fast float 1.000000e+00, %1919
  %1921 = fmul fast float %1910, 0x40005F8BE0000000
  %1922 = fsub fast float 0x400C5BF8A0000000, %1921
  %1923 = fdiv fast float %1911, %1922
  %1924 = fmul fast float %1923, 0x3FEE31C3C0000000
  %1925 = fmul fast float %1924, %1920
  %1926 = fmul fast float %1910, 0x3FDACB7480000000
  %1927 = fadd fast float %1926, 0xBFD7347680000000
  %1928 = fmul fast float %1927, %1923
  %1929 = fmul fast float %1928, %1920
  br label %1930

; <label>:1930                                    ; preds = %1901, %1868
  %1931 = phi float [ %1916, %1901 ], [ 0.000000e+00, %1868 ]
  %1932 = phi float [ %1917, %1901 ], [ 0.000000e+00, %1868 ]
  %1933 = phi float [ %1918, %1901 ], [ 0.000000e+00, %1868 ]
  %1934 = phi float [ %1925, %1901 ], [ 0.000000e+00, %1868 ]
  %1935 = phi float [ %1929, %1901 ], [ 0.000000e+00, %1868 ]
  %1936 = call float @dx.op.dot3.f32(i32 55, float %1931, float %1932, float %1933, float %1872, float %1873, float %1874)  ; Dot3(ax,ay,az,bx,by,bz)
  %1937 = fmul fast float %1936, 0x3FDF454380000000
  %1938 = fmul fast float %1936, %1936
  %1939 = fmul fast float %1938, 0x3FEE471020000000
  %1940 = fadd fast float %1939, 0xBFD42F6020000000
  %1941 = fmul fast float %1896, 0x3FD20DD760000000
  %1942 = fmul fast float %1940, %1935
  %1943 = fadd fast float %1942, %1941
  %1944 = fmul fast float %1937, %1934
  %1945 = fadd fast float %1943, %1944
  %1946 = fsub fast float %1943, %1944
  %1947 = call float @dx.op.dot3.f32(i32 55, float %1931, float %1932, float %1933, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %1948 = fmul fast float %1947, 0x3FDF454380000000
  %1949 = fmul fast float %1947, %1947
  %1950 = fmul fast float %1949, 0x3FEE471020000000
  %1951 = fadd fast float %1950, 0xBFD42F6020000000
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1934, float %1935, float 0x3FD20DD760000000, float %1948, float %1951)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %43)  ; FMax(a,b)
  %1954 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %1955 = fcmp fast oeq float %1954, 0.000000e+00
  %1956 = fcmp fast oeq float %1953, 0.000000e+00
  %1957 = or i1 %1956, %1955
  br i1 %1957, label %1987, label %1958

; <label>:1958                                    ; preds = %1930
  %1959 = fsub fast float -0.000000e+00, %46
  %1960 = fsub fast float -0.000000e+00, %44
  %1961 = call float @dx.op.unary.f32(i32 24, float %1954)  ; Sqrt(value)
  %1962 = fdiv fast float %1961, %1953
  %1963 = fcmp fast ogt float %1962, 0x3FFB6F8900000000
  %1964 = select i1 %1963, float 0x3FFB6F8900000000, float %1962
  %1965 = fmul fast float %1964, 0x3FE8A23460000000
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1967 = call float @dx.op.binary.f32(i32 35, float %1964, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1968 = fmul fast float %1966, %1953
  %1969 = fmul fast float %1967, 0x3FF279A740000000
  %1970 = fadd fast float %1969, -1.000000e+00
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1959, float %1960, float %45, float %1959, float %1960, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = call float @dx.op.unary.f32(i32 25, float %1971)  ; Rsqrt(value)
  %1973 = fmul fast float %1972, %1959
  %1974 = fmul fast float %1972, %1960
  %1975 = fmul fast float %1972, %45
  %1976 = fmul fast float %1970, %1970
  %1977 = fsub fast float 1.000000e+00, %1976
  %1978 = fmul fast float %1967, 0x40005F8BE0000000
  %1979 = fsub fast float 0x400C5BF8A0000000, %1978
  %1980 = fdiv fast float %1968, %1979
  %1981 = fmul fast float %1980, 0x3FEE31C3C0000000
  %1982 = fmul fast float %1981, %1977
  %1983 = fmul fast float %1967, 0x3FDACB7480000000
  %1984 = fadd fast float %1983, 0xBFD7347680000000
  %1985 = fmul fast float %1984, %1980
  %1986 = fmul fast float %1985, %1977
  br label %1987

; <label>:1987                                    ; preds = %1958, %1930
  %1988 = phi float [ %1973, %1958 ], [ 0.000000e+00, %1930 ]
  %1989 = phi float [ %1974, %1958 ], [ 0.000000e+00, %1930 ]
  %1990 = phi float [ %1975, %1958 ], [ 0.000000e+00, %1930 ]
  %1991 = phi float [ %1982, %1958 ], [ 0.000000e+00, %1930 ]
  %1992 = phi float [ %1986, %1958 ], [ 0.000000e+00, %1930 ]
  %1993 = call float @dx.op.dot3.f32(i32 55, float %1988, float %1989, float %1990, float %1872, float %1873, float %1874)  ; Dot3(ax,ay,az,bx,by,bz)
  %1994 = fmul fast float %1993, 0x3FDF454380000000
  %1995 = fmul fast float %1993, %1993
  %1996 = fmul fast float %1995, 0x3FEE471020000000
  %1997 = fadd fast float %1996, 0xBFD42F6020000000
  %1998 = fmul fast float %1953, 0x3FD20DD760000000
  %1999 = fmul fast float %1997, %1992
  %2000 = fadd fast float %1999, %1998
  %2001 = fmul fast float %1994, %1991
  %2002 = fadd fast float %2000, %2001
  %2003 = fsub fast float %2000, %2001
  %2004 = call float @dx.op.dot3.f32(i32 55, float %1988, float %1989, float %1990, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = fmul fast float %2004, 0x3FDF454380000000
  %2006 = fmul fast float %2004, %2004
  %2007 = fmul fast float %2006, 0x3FEE471020000000
  %2008 = fadd fast float %2007, 0xBFD42F6020000000
  %2009 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1991, float %1992, float 0x3FD20DD760000000, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %39)  ; FMax(a,b)
  %2011 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %2012 = fcmp fast oeq float %2011, 0.000000e+00
  %2013 = fcmp fast oeq float %2010, 0.000000e+00
  %2014 = or i1 %2013, %2012
  br i1 %2014, label %2044, label %2015

; <label>:2015                                    ; preds = %1987
  %2016 = fsub fast float -0.000000e+00, %42
  %2017 = fsub fast float -0.000000e+00, %40
  %2018 = call float @dx.op.unary.f32(i32 24, float %2011)  ; Sqrt(value)
  %2019 = fdiv fast float %2018, %2010
  %2020 = fcmp fast ogt float %2019, 0x3FFB6F8900000000
  %2021 = select i1 %2020, float 0x3FFB6F8900000000, float %2019
  %2022 = fmul fast float %2021, 0x3FE8A23460000000
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2024 = call float @dx.op.binary.f32(i32 35, float %2021, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2025 = fmul fast float %2023, %2010
  %2026 = fmul fast float %2024, 0x3FF279A740000000
  %2027 = fadd fast float %2026, -1.000000e+00
  %2028 = call float @dx.op.dot3.f32(i32 55, float %2016, float %2017, float %41, float %2016, float %2017, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %2029 = call float @dx.op.unary.f32(i32 25, float %2028)  ; Rsqrt(value)
  %2030 = fmul fast float %2029, %2016
  %2031 = fmul fast float %2029, %2017
  %2032 = fmul fast float %2029, %41
  %2033 = fmul fast float %2027, %2027
  %2034 = fsub fast float 1.000000e+00, %2033
  %2035 = fmul fast float %2024, 0x40005F8BE0000000
  %2036 = fsub fast float 0x400C5BF8A0000000, %2035
  %2037 = fdiv fast float %2025, %2036
  %2038 = fmul fast float %2037, 0x3FEE31C3C0000000
  %2039 = fmul fast float %2038, %2034
  %2040 = fmul fast float %2024, 0x3FDACB7480000000
  %2041 = fadd fast float %2040, 0xBFD7347680000000
  %2042 = fmul fast float %2041, %2037
  %2043 = fmul fast float %2042, %2034
  br label %2044

; <label>:2044                                    ; preds = %2015, %1987
  %2045 = phi float [ %2030, %2015 ], [ 0.000000e+00, %1987 ]
  %2046 = phi float [ %2031, %2015 ], [ 0.000000e+00, %1987 ]
  %2047 = phi float [ %2032, %2015 ], [ 0.000000e+00, %1987 ]
  %2048 = phi float [ %2039, %2015 ], [ 0.000000e+00, %1987 ]
  %2049 = phi float [ %2043, %2015 ], [ 0.000000e+00, %1987 ]
  %2050 = call float @dx.op.dot3.f32(i32 55, float %2045, float %2046, float %2047, float %1872, float %1873, float %1874)  ; Dot3(ax,ay,az,bx,by,bz)
  %2051 = fmul fast float %2050, 0x3FDF454380000000
  %2052 = fmul fast float %2050, %2050
  %2053 = fmul fast float %2052, 0x3FEE471020000000
  %2054 = fadd fast float %2053, 0xBFD42F6020000000
  %2055 = fmul fast float %2010, 0x3FD20DD760000000
  %2056 = fmul fast float %2054, %2049
  %2057 = fadd fast float %2056, %2055
  %2058 = fmul fast float %2051, %2048
  %2059 = fadd fast float %2057, %2058
  %2060 = fsub fast float %2057, %2058
  %2061 = call float @dx.op.dot3.f32(i32 55, float %2045, float %2046, float %2047, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %2062 = fmul fast float %2061, 0x3FDF454380000000
  %2063 = fmul fast float %2061, %2061
  %2064 = fmul fast float %2063, 0x3FEE471020000000
  %2065 = fadd fast float %2064, 0xBFD42F6020000000
  %2066 = call float @dx.op.dot3.f32(i32 55, float %2010, float %2048, float %2049, float 0x3FD20DD760000000, float %2062, float %2065)  ; Dot3(ax,ay,az,bx,by,bz)
  %2067 = call float @dx.op.binary.f32(i32 35, float %1945, float 0.000000e+00)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 35, float %2002, float 0.000000e+00)  ; FMax(a,b)
  %2069 = call float @dx.op.binary.f32(i32 35, float %2059, float 0.000000e+00)  ; FMax(a,b)
  %2070 = call float @dx.op.binary.f32(i32 35, float %1946, float 0.000000e+00)  ; FMax(a,b)
  %2071 = call float @dx.op.binary.f32(i32 35, float %2003, float 0.000000e+00)  ; FMax(a,b)
  %2072 = call float @dx.op.binary.f32(i32 35, float %2060, float 0.000000e+00)  ; FMax(a,b)
  %2073 = call float @dx.op.binary.f32(i32 35, float %1952, float 0.000000e+00)  ; FMax(a,b)
  %2074 = call float @dx.op.binary.f32(i32 35, float %2009, float 0.000000e+00)  ; FMax(a,b)
  %2075 = call float @dx.op.binary.f32(i32 35, float %2066, float 0.000000e+00)  ; FMax(a,b)
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2078 = call float @dx.op.binary.f32(i32 36, float %1869, float %2077)  ; FMin(a,b)
  %2079 = fsub fast float 1.000000e+00, %1891
  %2080 = fmul fast float %2078, %2079
  %2081 = fsub fast float 1.000000e+00, %2080
  %2082 = bitcast float %2081 to i32
  %2083 = sub nsw i32 2129859010, %2082
  %2084 = bitcast i32 %2083 to float
  %2085 = call float @dx.op.binary.f32(i32 36, float %1870, float %2077)  ; FMin(a,b)
  %2086 = fmul fast float %2085, %2079
  %2087 = fsub fast float 1.000000e+00, %2086
  %2088 = bitcast float %2087 to i32
  %2089 = sub nsw i32 2129859010, %2088
  %2090 = bitcast i32 %2089 to float
  %2091 = call float @dx.op.binary.f32(i32 36, float %1871, float %2077)  ; FMin(a,b)
  %2092 = fmul fast float %2091, %2079
  %2093 = fsub fast float 1.000000e+00, %2092
  %2094 = bitcast float %2093 to i32
  %2095 = sub nsw i32 2129859010, %2094
  %2096 = bitcast i32 %2095 to float
  %2097 = fmul fast float %2067, %1891
  %2098 = fmul fast float %2097, %2084
  %2099 = fmul fast float %2068, %1891
  %2100 = fmul fast float %2099, %2090
  %2101 = fmul fast float %2069, %1891
  %2102 = fmul fast float %2101, %2096
  %2103 = call float @dx.op.binary.f32(i32 36, float %1875, float %2077)  ; FMin(a,b)
  %2104 = fmul fast float %2103, %2079
  %2105 = fsub fast float 1.000000e+00, %2104
  %2106 = bitcast float %2105 to i32
  %2107 = sub nsw i32 2129859010, %2106
  %2108 = bitcast i32 %2107 to float
  %2109 = call float @dx.op.binary.f32(i32 36, float %1876, float %2077)  ; FMin(a,b)
  %2110 = fmul fast float %2109, %2079
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = bitcast float %2111 to i32
  %2113 = sub nsw i32 2129859010, %2112
  %2114 = bitcast i32 %2113 to float
  %2115 = call float @dx.op.binary.f32(i32 36, float %1880, float %2077)  ; FMin(a,b)
  %2116 = fmul fast float %2115, %2079
  %2117 = fsub fast float 1.000000e+00, %2116
  %2118 = bitcast float %2117 to i32
  %2119 = sub nsw i32 2129859010, %2118
  %2120 = bitcast i32 %2119 to float
  %2121 = fmul fast float %2073, %1891
  %2122 = fmul fast float %2121, %2108
  %2123 = fmul fast float %2074, %1891
  %2124 = fmul fast float %2123, %2114
  %2125 = fmul fast float %2075, %1891
  %2126 = fmul fast float %2125, %2120
  %2127 = call float @dx.op.dot3.f32(i32 55, float %2098, float %2100, float %2102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2128 = select i1 %212, float 0.000000e+00, float %2098
  %2129 = select i1 %212, float %2127, float %2100
  %2130 = select i1 %212, float 0.000000e+00, float %2102
  %2131 = call float @dx.op.dot3.f32(i32 55, float %2070, float %2071, float %2072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2132 = select i1 %212, float 0.000000e+00, float %2070
  %2133 = select i1 %212, float %2131, float %2071
  %2134 = select i1 %212, float 0.000000e+00, float %2072
  %2135 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2124, float %2126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2136 = select i1 %212, float 0.000000e+00, float %2122
  %2137 = select i1 %212, float %2135, float %2124
  %2138 = select i1 %212, float 0.000000e+00, float %2126
  %2139 = fmul fast float %902, %902
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = fmul fast float %1882, 9.843750e-01
  %2142 = fmul fast float %1878, 9.843750e-01
  %2143 = fadd fast float %2141, 7.812500e-03
  %2144 = fadd fast float %2142, 7.812500e-03
  %2145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %2143, float %2144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.ResRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.ResRet.f32 %2145, 2
  %2149 = extractvalue %dx.types.ResRet.f32 %2145, 3
  %2150 = fsub fast float 1.000000e+00, %2140
  %2151 = fsub fast float %2148, %2146
  %2152 = fsub fast float %2149, %2147
  %2153 = fmul fast float %2151, %2150
  %2154 = fmul fast float %2152, %2150
  %2155 = fadd fast float %2153, %2146
  %2156 = fadd fast float %2154, %2147
  %2157 = fmul fast float %2155, %1875
  %2158 = fmul fast float %2155, %1876
  %2159 = fmul fast float %2155, %1880
  %2160 = fadd fast float %2157, %2156
  %2161 = fadd fast float %2158, %2156
  %2162 = fadd fast float %2159, %2156
  %2163 = fcmp fast ogt float %1502, 0.000000e+00
  br i1 %2163, label %2164, label %2190

; <label>:2164                                    ; preds = %2044
  %2165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1502, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.ResRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.ResRet.f32 %2165, 2
  %2169 = fadd fast float %2166, -5.000000e-01
  %2170 = fadd fast float %2167, -5.000000e-01
  %2171 = fadd fast float %2168, -5.000000e-01
  %2172 = fsub fast float 1.000000e+00, %1875
  %2173 = fsub fast float 1.000000e+00, %1876
  %2174 = fsub fast float 1.000000e+00, %1880
  %2175 = fmul fast float %1875, 4.000000e+00
  %2176 = fmul fast float %2175, %2172
  %2177 = fmul fast float %2176, %2169
  %2178 = fmul fast float %1876, 4.000000e+00
  %2179 = fmul fast float %2178, %2173
  %2180 = fmul fast float %2179, %2170
  %2181 = fmul fast float %1880, 4.000000e+00
  %2182 = fmul fast float %2181, %2174
  %2183 = fmul fast float %2182, %2171
  %2184 = fadd fast float %2177, %2160
  %2185 = fadd fast float %2180, %2161
  %2186 = fadd fast float %2183, %2162
  %2187 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  br label %2190

; <label>:2190                                    ; preds = %2164, %2044
  %2191 = phi float [ %2187, %2164 ], [ %2160, %2044 ]
  %2192 = phi float [ %2188, %2164 ], [ %2161, %2044 ]
  %2193 = phi float [ %2189, %2164 ], [ %2162, %2044 ]
  %2194 = call float @dx.op.binary.f32(i32 35, float %2192, float %2193)  ; FMax(a,b)
  %2195 = call float @dx.op.binary.f32(i32 35, float %2191, float %2194)  ; FMax(a,b)
  %2196 = fsub fast float 1.000000e+00, %2195
  %2197 = call float @dx.op.dot3.f32(i32 55, float %1869, float %1870, float %1871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = fcmp fast ogt float %2197, 0x3E7FF19E20000000
  %2199 = fdiv fast float 1.000000e+00, %2197
  %2200 = select i1 %2198, float %2199, float 0.000000e+00
  %2201 = fmul fast float %2200, %1869
  %2202 = fmul fast float %2200, %1870
  %2203 = fmul fast float %2200, %1871
  %2204 = fadd fast float %2201, -1.000000e+00
  %2205 = fadd fast float %2202, -1.000000e+00
  %2206 = fadd fast float %2203, -1.000000e+00
  %2207 = fmul fast float %2204, 5.000000e-01
  %2208 = fmul fast float %2205, 5.000000e-01
  %2209 = fmul fast float %2206, 5.000000e-01
  %2210 = fadd fast float %2207, 1.000000e+00
  %2211 = fadd fast float %2208, 1.000000e+00
  %2212 = fadd fast float %2209, 1.000000e+00
  %2213 = call float @dx.op.binary.f32(i32 35, float %1882, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2214 = fdiv fast float %902, %2213
  %2215 = fcmp fast olt float %1596, 1.270000e+02
  %2216 = fcmp fast olt float %1597, 1.270000e+02
  %2217 = fcmp fast olt float %1598, 1.270000e+02
  %2218 = fmul fast float %1596, 0xBFF7154760000000
  %2219 = fmul fast float %2218, %2214
  %2220 = fmul fast float %1597, 0xBFF7154760000000
  %2221 = fmul fast float %2220, %2214
  %2222 = fmul fast float %1598, 0xBFF7154760000000
  %2223 = fmul fast float %2222, %2214
  %2224 = call float @dx.op.unary.f32(i32 21, float %2219)  ; Exp(value)
  %2225 = call float @dx.op.unary.f32(i32 21, float %2221)  ; Exp(value)
  %2226 = call float @dx.op.unary.f32(i32 21, float %2223)  ; Exp(value)
  %2227 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2228 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2229 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2230 = select i1 %2215, float %2227, float 0.000000e+00
  %2231 = select i1 %2216, float %2228, float 0.000000e+00
  %2232 = select i1 %2217, float %2229, float 0.000000e+00
  %2233 = fmul fast float %2230, %2196
  %2234 = fmul fast float %2231, %2196
  %2235 = fmul fast float %2232, %2196
  %2236 = fadd fast float %2233, -1.000000e+00
  %2237 = fadd fast float %2234, -1.000000e+00
  %2238 = fadd fast float %2235, -1.000000e+00
  %2239 = fmul fast float %2236, %1551
  %2240 = fmul fast float %2237, %1551
  %2241 = fmul fast float %2238, %1551
  %2242 = fmul fast float %2191, %2136
  %2243 = fmul fast float %2192, %2137
  %2244 = fmul fast float %2193, %2138
  %2245 = fsub fast float 1.000000e+00, %1882
  %2246 = bitcast float %2245 to i32
  %2247 = sitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 5.000000e+00
  %2249 = fadd fast float %2248, 0xC1EFBF8940000000
  %2250 = fptosi float %2249 to i32
  %2251 = bitcast i32 %2250 to float
  %2252 = fmul fast float %2251, %1501
  %2253 = fmul fast float %2128, %2252
  %2254 = fmul fast float %2253, %2196
  %2255 = fmul fast float %2254, %2210
  %2256 = fmul fast float %2129, %2252
  %2257 = fmul fast float %2256, %2196
  %2258 = fmul fast float %2257, %2211
  %2259 = fmul fast float %2130, %2252
  %2260 = fmul fast float %2259, %2196
  %2261 = fmul fast float %2260, %2212
  %2262 = fadd fast float %2242, %1506
  %2263 = fadd fast float %2262, %2255
  %2264 = fmul fast float %2263, %1551
  %2265 = fadd fast float %2243, %1507
  %2266 = fadd fast float %2265, %2258
  %2267 = fmul fast float %2266, %1551
  %2268 = fadd fast float %2244, %1508
  %2269 = fadd fast float %2268, %2261
  %2270 = fmul fast float %2269, %1551
  %2271 = fmul fast float %1876, 0x4012D0A400000000
  %2272 = fadd fast float %2241, 1.000000e+00
  %2273 = fadd fast float %2240, 1.000000e+00
  %2274 = fadd fast float %2239, 1.000000e+00
  %2275 = fmul fast float %2196, %2130
  %2276 = fmul fast float %2196, %2129
  %2277 = fmul fast float %2196, %2128
  %2278 = fsub fast float 1.000000e+00, %1878
  %2279 = fmul fast float %2278, %1551
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = fadd fast float %2271, 0x3FDB6377A0000000
  %2284 = fmul fast float %2282, %2283
  %2285 = call float @dx.op.dot3.f32(i32 55, float %1614, float %1615, float %1616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2286 = fadd fast float %2284, %2285
  %2287 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2288 = call float @dx.op.binary.f32(i32 35, float %2287, float 0x3F847AE140000000)  ; FMax(a,b)
  %2289 = fmul fast float %2288, %2288
  %2290 = fmul fast float %2289, %2289
  %2291 = fmul fast float %2290, 0xC00A935000000000
  %2292 = call float @dx.op.unary.f32(i32 21, float %2291)  ; Exp(value)
  %2293 = fsub fast float 1.000000e+00, %2292
  %2294 = fmul fast float %2274, %2132
  %2295 = fmul fast float %2294, %2293
  %2296 = fmul fast float %2273, %2133
  %2297 = fmul fast float %2296, %2293
  %2298 = fmul fast float %2272, %2134
  %2299 = fmul fast float %2298, %2293
  %2300 = fadd fast float %2295, %2277
  %2301 = fmul fast float %2300, %1551
  %2302 = fadd fast float %2297, %2276
  %2303 = fmul fast float %2302, %1551
  %2304 = fadd fast float %2299, %2275
  %2305 = fmul fast float %2304, %1551
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 3
  %2308 = fcmp fast oeq float %2307, 0.000000e+00
  br i1 %2308, label %3438, label %2309

; <label>:2309                                    ; preds = %2190
  %2310 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2312 = extractvalue %dx.types.CBufRet.f32 %2306, 2
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.CBufRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.CBufRet.f32 %2317, 1
  %2320 = call float @dx.op.dot3.f32(i32 55, float %2314, float %2315, float %2316, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2321 = select i1 %212, float %2318, float %2314
  %2322 = select i1 %212, float %2320, float %2315
  %2323 = select i1 %212, float %2319, float %2316
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 2
  %2326 = fmul fast float %2325, %75
  %2327 = fmul fast float %2325, %76
  %2328 = fmul fast float %2325, %77
  %2329 = fadd fast float %2326, %120
  %2330 = fadd fast float %2327, %121
  %2331 = fadd fast float %2328, %122
  %2332 = fcmp fast olt float %2307, 0.000000e+00
  br i1 %2332, label %2957, label %2333

; <label>:2333                                    ; preds = %2309
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.CBufRet.f32 %2334, 1
  %2337 = extractvalue %dx.types.CBufRet.f32 %2334, 2
  %2338 = extractvalue %dx.types.CBufRet.f32 %2334, 3
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.CBufRet.f32 %2339, 2
  %2343 = extractvalue %dx.types.CBufRet.f32 %2339, 3
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = extractvalue %dx.types.CBufRet.f32 %2344, 3
  %2349 = fmul fast float %2335, %2329
  %2350 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2336, float %2349)  ; FMad(a,b,c)
  %2351 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2337, float %2350)  ; FMad(a,b,c)
  %2352 = fadd fast float %2351, %2338
  %2353 = fmul fast float %2340, %2329
  %2354 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2341, float %2353)  ; FMad(a,b,c)
  %2355 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2342, float %2354)  ; FMad(a,b,c)
  %2356 = fadd fast float %2355, %2343
  %2357 = fmul fast float %2345, %2329
  %2358 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2346, float %2357)  ; FMad(a,b,c)
  %2359 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2347, float %2358)  ; FMad(a,b,c)
  %2360 = fadd fast float %2359, %2348
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.CBufRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2365 = fmul fast float %2364, %2352
  %2366 = fmul fast float %2364, %2356
  %2367 = fadd fast float %2365, %2362
  %2368 = fadd fast float %2366, %2363
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2373 = fmul fast float %2372, %2352
  %2374 = fmul fast float %2372, %2356
  %2375 = fadd fast float %2373, %2370
  %2376 = fadd fast float %2374, %2371
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 1
  %2379 = fsub fast float %2378, %2360
  %2380 = extractvalue %dx.types.CBufRet.f32 %2377, 2
  %2381 = fmul fast float %2379, %2380
  %2382 = fsub fast float 1.000000e+00, %2381
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 2
  %2387 = fadd fast float %2386, %2384
  %2388 = fcmp fast ogt float %2387, 0.000000e+00
  br i1 %2388, label %2389, label %2413

; <label>:2389                                    ; preds = %2333
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2393 = fsub fast float %2375, %2391
  %2394 = fsub fast float %2376, %2392
  %2395 = fcmp fast olt float %2393, 0.000000e+00
  %2396 = fcmp fast olt float %2394, 0.000000e+00
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.CBufRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.CBufRet.f32 %2397, 2
  %2401 = extractvalue %dx.types.CBufRet.f32 %2397, 3
  %2402 = select i1 %2395, float %2398, float %2400
  %2403 = select i1 %2396, float %2399, float %2401
  %2404 = fmul fast float %2402, %2393
  %2405 = fmul fast float %2403, %2394
  %2406 = call float @dx.op.unary.f32(i32 6, float %2404)  ; FAbs(value)
  %2407 = call float @dx.op.unary.f32(i32 6, float %2405)  ; FAbs(value)
  %2408 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %2409 = call float @dx.op.binary.f32(i32 35, float %2406, float %2407)  ; FMax(a,b)
  %2410 = fsub fast float %2408, %2409
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  %2412 = fmul fast float %2411, %2383
  br label %2413

; <label>:2413                                    ; preds = %2389, %2333
  %2414 = phi float [ %2412, %2389 ], [ 0.000000e+00, %2333 ]
  %2415 = extractvalue %dx.types.CBufRet.f32 %2361, 2
  %2416 = extractvalue %dx.types.CBufRet.f32 %2385, 1
  %2417 = fadd fast float %2416, %2415
  %2418 = fcmp fast ogt float %2417, 0.000000e+00
  %2419 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  br i1 %2418, label %2420, label %2443

; <label>:2420                                    ; preds = %2413
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2424 = fsub fast float %2367, %2422
  %2425 = fsub fast float %2368, %2423
  %2426 = fcmp fast olt float %2424, 0.000000e+00
  %2427 = fcmp fast olt float %2425, 0.000000e+00
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2431 = extractvalue %dx.types.CBufRet.f32 %2428, 2
  %2432 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2433 = select i1 %2426, float %2429, float %2431
  %2434 = select i1 %2427, float %2430, float %2432
  %2435 = fmul fast float %2433, %2424
  %2436 = fmul fast float %2434, %2425
  %2437 = call float @dx.op.unary.f32(i32 6, float %2435)  ; FAbs(value)
  %2438 = call float @dx.op.unary.f32(i32 6, float %2436)  ; FAbs(value)
  %2439 = call float @dx.op.binary.f32(i32 35, float %2437, float %2438)  ; FMax(a,b)
  %2440 = fsub fast float %2419, %2439
  %2441 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2442 = fmul fast float %2441, %2383
  br label %2443

; <label>:2443                                    ; preds = %2420, %2413
  %2444 = phi float [ %2442, %2420 ], [ 0.000000e+00, %2413 ]
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 1
  %2447 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = fsub fast float %2352, %2449
  %2452 = fsub fast float %2356, %2450
  %2453 = fcmp fast olt float %2451, 0.000000e+00
  %2454 = fcmp fast olt float %2452, 0.000000e+00
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.CBufRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.CBufRet.f32 %2455, 2
  %2459 = extractvalue %dx.types.CBufRet.f32 %2455, 3
  %2460 = select i1 %2453, float %2456, float %2458
  %2461 = select i1 %2454, float %2457, float %2459
  %2462 = fmul fast float %2460, %2451
  %2463 = fmul fast float %2461, %2452
  %2464 = call float @dx.op.unary.f32(i32 6, float %2462)  ; FAbs(value)
  %2465 = call float @dx.op.unary.f32(i32 6, float %2463)  ; FAbs(value)
  %2466 = call float @dx.op.binary.f32(i32 35, float %2464, float %2465)  ; FMax(a,b)
  %2467 = fsub fast float %2419, %2466
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = call float @dx.op.binary.f32(i32 36, float %2468, float %2447)  ; FMin(a,b)
  %2470 = fmul fast float %2469, %2383
  %2471 = fsub fast float %2444, %2470
  %2472 = fsub fast float %2414, %2444
  %2473 = fsub fast float %2472, %2470
  %2474 = call float @dx.op.binary.f32(i32 35, float %2444, float %2414)  ; FMax(a,b)
  %2475 = call float @dx.op.binary.f32(i32 35, float %2470, float %2474)  ; FMax(a,b)
  %2476 = fcmp fast olt float %2475, 1.000000e+00
  br i1 %2476, label %2477, label %2875, !dx.controlflow.hints !70

; <label>:2477                                    ; preds = %2443
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = fcmp fast une float %2479, 0.000000e+00
  br i1 %2480, label %2481, label %2875, !dx.controlflow.hints !71

; <label>:2481                                    ; preds = %2477
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 0
  %2484 = extractvalue %dx.types.CBufRet.f32 %2482, 1
  %2485 = extractvalue %dx.types.CBufRet.f32 %2482, 2
  %2486 = extractvalue %dx.types.CBufRet.f32 %2482, 3
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2489 = extractvalue %dx.types.CBufRet.f32 %2487, 1
  %2490 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2491 = extractvalue %dx.types.CBufRet.f32 %2487, 3
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.CBufRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.CBufRet.f32 %2492, 2
  %2496 = extractvalue %dx.types.CBufRet.f32 %2492, 3
  %2497 = fmul fast float %2483, %2329
  %2498 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2484, float %2497)  ; FMad(a,b,c)
  %2499 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2485, float %2498)  ; FMad(a,b,c)
  %2500 = fadd fast float %2499, %2486
  %2501 = fmul fast float %2488, %2329
  %2502 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2489, float %2501)  ; FMad(a,b,c)
  %2503 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2490, float %2502)  ; FMad(a,b,c)
  %2504 = fadd fast float %2503, %2491
  %2505 = fmul fast float %2493, %2329
  %2506 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2494, float %2505)  ; FMad(a,b,c)
  %2507 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2495, float %2506)  ; FMad(a,b,c)
  %2508 = fadd fast float %2507, %2496
  %2509 = fcmp fast oge float %2500, 1.000000e+00
  %2510 = fcmp fast oge float %2504, 1.000000e+00
  %2511 = or i1 %2509, %2510
  %2512 = fcmp fast olt float %2500, 0.000000e+00
  %2513 = fcmp fast olt float %2504, 0.000000e+00
  %2514 = or i1 %2512, %2513
  %2515 = or i1 %2511, %2514
  br i1 %2515, label %2875, label %2516, !dx.controlflow.hints !72

; <label>:2516                                    ; preds = %2481
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.CBufRet.f32 %2517, 2
  %2521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.i32 %2521, 2
  %2523 = uitofp i32 %2522 to float
  %2524 = extractvalue %dx.types.CBufRet.i32 %2521, 3
  %2525 = uitofp i32 %2524 to float
  %2526 = extractvalue %dx.types.CBufRet.f32 %2517, 3
  %2527 = fmul fast float %2526, 2.000000e+00
  %2528 = fsub fast float %2500, %2518
  %2529 = fsub fast float %2504, %2519
  %2530 = fmul fast float %2527, %2528
  %2531 = fmul fast float %2527, %2529
  %2532 = fdiv fast float 1.000000e+00, %2312
  %2533 = fmul fast float %2531, %2532
  %2534 = call float @dx.op.unary.f32(i32 6, float %2533)  ; FAbs(value)
  %2535 = fmul fast float %2520, %2331
  %2536 = fmul fast float %2535, %2527
  %2537 = call float @dx.op.unary.f32(i32 6, float %2536)  ; FAbs(value)
  %2538 = call float @dx.op.unary.f32(i32 6, float %2530)  ; FAbs(value)
  %2539 = call float @dx.op.binary.f32(i32 35, float %2537, float %2534)  ; FMax(a,b)
  %2540 = call float @dx.op.binary.f32(i32 35, float %2538, float %2539)  ; FMax(a,b)
  %2541 = fmul fast float %2540, 2.000000e+00
  %2542 = call float @dx.op.unary.f32(i32 23, float %2541)  ; Log(value)
  %2543 = call float @dx.op.binary.f32(i32 35, float %2542, float %2523)  ; FMax(a,b)
  %2544 = call float @dx.op.unary.f32(i32 22, float %2543)  ; Frc(value)
  %2545 = fadd fast float %2544, 0xBFEA666660000000
  %2546 = fmul fast float %2545, 8.000000e+00
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = call float @dx.op.unary.f32(i32 27, float %2543)  ; Round_ni(value)
  %2549 = fadd fast float %2548, %2547
  %2550 = call float @dx.op.binary.f32(i32 36, float %2549, float %2525)  ; FMin(a,b)
  %2551 = call float @dx.op.unary.f32(i32 27, float %2550)  ; Round_ni(value)
  %2552 = fsub fast float -0.000000e+00, %2551
  %2553 = call float @dx.op.unary.f32(i32 21, float %2552)  ; Exp(value)
  %2554 = fmul fast float %2553, %2527
  %2555 = fmul fast float %2554, %2500
  %2556 = fmul fast float %2554, %2504
  %2557 = fmul fast float %2555, 2.500000e-01
  %2558 = fmul fast float %2556, 2.500000e-01
  %2559 = fadd fast float %2557, 5.000000e-01
  %2560 = fadd fast float %2558, 5.000000e-01
  %2561 = fsub fast float %2525, %2523
  %2562 = fptoui float %2561 to i32
  %2563 = add i32 %2562, 320
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %2563)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = fcmp fast une float %2550, %2525
  %2568 = fsub fast float %2500, %2565
  %2569 = fsub fast float %2504, %2566
  %2570 = call float @dx.op.unary.f32(i32 6, float %2568)  ; FAbs(value)
  %2571 = call float @dx.op.unary.f32(i32 6, float %2569)  ; FAbs(value)
  %2572 = fmul fast float %2570, %2554
  %2573 = fmul fast float %2571, %2554
  %2574 = fcmp fast olt float %2572, 1.000000e+00
  %2575 = fcmp fast olt float %2573, 1.000000e+00
  %2576 = and i1 %2574, %2575
  %2577 = or i1 %2567, %2576
  br i1 %2577, label %2578, label %2875, !dx.controlflow.hints !73

; <label>:2578                                    ; preds = %2516
  %2579 = fmul fast float %2556, 5.000000e-01
  %2580 = fmul fast float %2555, 5.000000e-01
  %2581 = fadd fast float %2579, 5.000000e-01
  %2582 = fadd fast float %2580, 5.000000e-01
  %2583 = sitofp i32 %2522 to float
  %2584 = fsub fast float %2550, %2583
  %2585 = call float @dx.op.unary.f32(i32 27, float %2584)  ; Round_ni(value)
  %2586 = call float @dx.op.unary.f32(i32 22, float %2550)  ; Frc(value)
  %2587 = call float @dx.op.unary.f32(i32 22, float %2582)  ; Frc(value)
  %2588 = call float @dx.op.unary.f32(i32 22, float %2581)  ; Frc(value)
  %2589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2587, float %2588, float %2585, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2590 = extractvalue %dx.types.ResRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.ResRet.f32 %2589, 1
  %2592 = extractvalue %dx.types.ResRet.f32 %2589, 2
  %2593 = extractvalue %dx.types.ResRet.f32 %2589, 3
  %2594 = fcmp fast ogt float %2586, 0.000000e+00
  br i1 %2594, label %2595, label %2616, !dx.controlflow.hints !74

; <label>:2595                                    ; preds = %2578
  %2596 = fadd fast float %2585, 1.000000e+00
  %2597 = call float @dx.op.unary.f32(i32 22, float %2559)  ; Frc(value)
  %2598 = call float @dx.op.unary.f32(i32 22, float %2560)  ; Frc(value)
  %2599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2597, float %2598, float %2596, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2600 = extractvalue %dx.types.ResRet.f32 %2599, 0
  %2601 = extractvalue %dx.types.ResRet.f32 %2599, 1
  %2602 = extractvalue %dx.types.ResRet.f32 %2599, 2
  %2603 = extractvalue %dx.types.ResRet.f32 %2599, 3
  %2604 = fsub fast float %2600, %2590
  %2605 = fsub fast float %2601, %2591
  %2606 = fsub fast float %2602, %2592
  %2607 = fsub fast float %2603, %2593
  %2608 = fmul fast float %2604, %2586
  %2609 = fmul fast float %2605, %2586
  %2610 = fmul fast float %2606, %2586
  %2611 = fmul fast float %2607, %2586
  %2612 = fadd fast float %2608, %2590
  %2613 = fadd fast float %2609, %2591
  %2614 = fadd fast float %2610, %2592
  %2615 = fadd fast float %2611, %2593
  br label %2616

; <label>:2616                                    ; preds = %2595, %2578
  %2617 = phi float [ %2612, %2595 ], [ %2590, %2578 ]
  %2618 = phi float [ %2613, %2595 ], [ %2591, %2578 ]
  %2619 = phi float [ %2614, %2595 ], [ %2592, %2578 ]
  %2620 = phi float [ %2615, %2595 ], [ %2593, %2578 ]
  %2621 = fadd fast float %2617, -5.000000e-01
  %2622 = fadd fast float %2619, -5.000000e-01
  %2623 = fmul fast float %2621, 0xBFD5555560000000
  %2624 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2622, float %2623)  ; FMad(a,b,c)
  %2625 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2618, float 0.000000e+00)  ; FMad(a,b,c)
  %2626 = fadd fast float %2625, %2620
  %2627 = fmul fast float %2621, -7.500000e-01
  %2628 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2622, float %2627)  ; FMad(a,b,c)
  %2629 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2618, float 0.000000e+00)  ; FMad(a,b,c)
  %2630 = fadd fast float %2629, %2620
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2634 = extractvalue %dx.types.CBufRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.CBufRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.CBufRet.f32 %2633, 2
  %2637 = extractvalue %dx.types.CBufRet.f32 %2633, 3
  %2638 = fsub fast float %2634, %2624
  %2639 = fsub fast float %2635, %2626
  %2640 = fsub fast float %2636, %2628
  %2641 = fsub fast float %2637, %2630
  %2642 = fmul fast float %2638, %2632
  %2643 = fmul fast float %2639, %2632
  %2644 = fmul fast float %2640, %2632
  %2645 = fmul fast float %2641, %2632
  %2646 = fadd fast float %2642, %2624
  %2647 = fadd fast float %2643, %2626
  %2648 = fadd fast float %2644, %2628
  %2649 = fadd fast float %2645, %2630
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 536870911
  %2653 = uitofp i32 %2652 to float
  %2654 = fmul fast float %2653, %2500
  %2655 = fmul fast float %2653, %2504
  %2656 = fptoui float %2654 to i32
  %2657 = fptoui float %2655 to i32
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 31
  %2661 = lshr i32 %2656, %2660
  %2662 = lshr i32 %2657, %2660
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = and i32 %2664, 31
  %2666 = shl i32 1, %2665
  %2667 = call i32 @dx.op.binary.i32(i32 40, i32 %2666, i32 4)  ; UMin(a,b)
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.i32 %2668, 1
  %2671 = icmp eq i32 %2667, 0
  br i1 %2671, label %2713, label %2672

; <label>:2672                                    ; preds = %2616
  br label %2673

; <label>:2673                                    ; preds = %2701, %2672
  %2674 = phi i32 [ %2704, %2701 ], [ 0, %2672 ]
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = lshr i32 %2676, 16
  %2678 = and i32 %2677, 31
  %2679 = shl i32 %2662, %2678
  %2680 = add i32 %2679, %2661
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, 31
  %2684 = shl i32 %2680, %2683
  %2685 = add i32 %2684, %2674
  %2686 = shl i32 %2685, 2
  %2687 = add i32 %2686, 32
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = icmp slt i32 %2689, 0
  %2691 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2674
  %2692 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2674
  %2693 = bitcast float* %2691 to i32*
  %2694 = bitcast float* %2692 to i32*
  br i1 %2690, label %2695, label %2701

; <label>:2695                                    ; preds = %2673
  %2696 = and i32 %2689, 1073741823
  %2697 = add nuw nsw i32 %2696, 20
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.i32 %2698, 1
  br label %2701

; <label>:2701                                    ; preds = %2695, %2673
  %2702 = phi i32 [ %2699, %2695 ], [ %2669, %2673 ]
  %2703 = phi i32 [ %2700, %2695 ], [ %2670, %2673 ]
  store i32 %2702, i32* %2693, align 4
  store i32 %2703, i32* %2694, align 4
  %2704 = add nuw i32 %2674, 1
  %2705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.i32 %2705, 2
  %2707 = icmp eq i32 %2706, 0
  %2708 = icmp ugt i32 %2689, -1073741825
  %2709 = and i1 %2708, %2707
  %2710 = icmp ult i32 %2704, %2667
  %2711 = and i1 %2709, %2710
  br i1 %2711, label %2673, label %2712

; <label>:2712                                    ; preds = %2701
  br label %2713

; <label>:2713                                    ; preds = %2712, %2616
  %2714 = phi i32 [ 0, %2616 ], [ %2704, %2712 ]
  %2715 = extractvalue %dx.types.CBufRet.f32 %2478, 2
  %2716 = fptoui float %2715 to i32
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2769, label %2718

; <label>:2718                                    ; preds = %2713
  br label %2719

; <label>:2719                                    ; preds = %2764, %2718
  %2720 = phi i32 [ %2765, %2764 ], [ %2714, %2718 ]
  %2721 = phi i32 [ %2766, %2764 ], [ 0, %2718 ]
  %2722 = lshr i32 %2721, 2
  %2723 = and i32 %2721, 3
  %2724 = add nuw nsw i32 %2722, 83
  %2725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2724)  ; CBufferLoadLegacy(handle,regIndex)
  %2726 = extractvalue %dx.types.CBufRet.i32 %2725, 0
  %2727 = extractvalue %dx.types.CBufRet.i32 %2725, 1
  %2728 = extractvalue %dx.types.CBufRet.i32 %2725, 2
  %2729 = extractvalue %dx.types.CBufRet.i32 %2725, 3
  %2730 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2726, i32* %2730, align 4
  %2731 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2727, i32* %2731, align 4
  %2732 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2728, i32* %2732, align 4
  %2733 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2729, i32* %2733, align 4
  %2734 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2723
  %2735 = load i32, i32* %2734, align 4, !tbaa !75, !noalias !79
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = lshr i32 %2737, 16
  %2739 = and i32 %2738, 31
  %2740 = shl i32 %2662, %2739
  %2741 = add i32 %2740, %2661
  %2742 = shl i32 %2741, 2
  %2743 = add i32 %2742, %2735
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = icmp eq i32 %2745, 0
  br i1 %2746, label %2764, label %2747

; <label>:2747                                    ; preds = %2719
  %2748 = icmp slt i32 %2745, 0
  %2749 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2720
  %2750 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2720
  %2751 = bitcast float* %2749 to i32*
  %2752 = bitcast float* %2750 to i32*
  br i1 %2748, label %2753, label %2760

; <label>:2753                                    ; preds = %2747
  %2754 = and i32 %2745, 1073741823
  %2755 = add i32 %2735, 20
  %2756 = add i32 %2755, %2754
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = extractvalue %dx.types.ResRet.i32 %2757, 1
  br label %2760

; <label>:2760                                    ; preds = %2753, %2747
  %2761 = phi i32 [ %2758, %2753 ], [ %2669, %2747 ]
  %2762 = phi i32 [ %2759, %2753 ], [ %2670, %2747 ]
  store i32 %2761, i32* %2751, align 4
  store i32 %2762, i32* %2752, align 4
  %2763 = add i32 %2720, 1
  br label %2764

; <label>:2764                                    ; preds = %2760, %2719
  %2765 = phi i32 [ %2720, %2719 ], [ %2763, %2760 ]
  %2766 = add nuw i32 %2721, 1
  %2767 = icmp eq i32 %2766, %2716
  br i1 %2767, label %2768, label %2719

; <label>:2768                                    ; preds = %2764
  br label %2769

; <label>:2769                                    ; preds = %2768, %2713
  %2770 = phi i32 [ %2714, %2713 ], [ %2765, %2768 ]
  %2771 = icmp eq i32 %2770, 1
  %2772 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 0
  %2773 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 0
  br i1 %2771, label %2774, label %2777

; <label>:2774                                    ; preds = %2769
  %2775 = load float, float* %2772, align 4
  %2776 = load float, float* %2773, align 4
  br label %2804

; <label>:2777                                    ; preds = %2769
  %2778 = load float, float* %2772, align 4
  %2779 = load float, float* %2773, align 4
  %2780 = fdiv fast float 1.000000e+00, %2779
  %2781 = fsub fast float %2778, %2780
  %2782 = icmp ugt i32 %2770, 1
  br i1 %2782, label %2783, label %2799

; <label>:2783                                    ; preds = %2777
  br label %2784

; <label>:2784                                    ; preds = %2784, %2783
  %2785 = phi float [ %2794, %2784 ], [ %2781, %2783 ]
  %2786 = phi float [ %2795, %2784 ], [ %2778, %2783 ]
  %2787 = phi i32 [ %2796, %2784 ], [ 1, %2783 ]
  %2788 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2787
  %2789 = load float, float* %2788, align 4
  %2790 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2787
  %2791 = load float, float* %2790, align 4
  %2792 = fdiv fast float 1.000000e+00, %2791
  %2793 = fsub fast float %2789, %2792
  %2794 = call float @dx.op.binary.f32(i32 36, float %2785, float %2793)  ; FMin(a,b)
  %2795 = call float @dx.op.binary.f32(i32 35, float %2786, float %2789)  ; FMax(a,b)
  %2796 = add nuw i32 %2787, 1
  %2797 = icmp eq i32 %2796, %2770
  br i1 %2797, label %2798, label %2784

; <label>:2798                                    ; preds = %2784
  br label %2799

; <label>:2799                                    ; preds = %2798, %2777
  %2800 = phi float [ %2781, %2777 ], [ %2794, %2798 ]
  %2801 = phi float [ %2778, %2777 ], [ %2795, %2798 ]
  %2802 = fsub fast float %2801, %2800
  %2803 = fdiv fast float 1.000000e+00, %2802
  br label %2804

; <label>:2804                                    ; preds = %2799, %2774
  %2805 = phi float [ %2775, %2774 ], [ %2801, %2799 ]
  %2806 = phi float [ %2776, %2774 ], [ %2803, %2799 ]
  %2807 = fadd fast float %2508, %2805
  %2808 = fmul fast float %2807, %2806
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2810 = fmul fast float %2809, 2.000000e+00
  %2811 = fsub fast float 1.000000e+00, %2810
  %2812 = fmul fast float %2646, %2646
  %2813 = fsub fast float %2647, %2812
  %2814 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2813)  ; FMax(a,b)
  %2815 = fdiv fast float 1.000000e+00, %2814
  %2816 = fmul fast float %2647, %2646
  %2817 = fsub fast float %2648, %2816
  %2818 = fsub fast float %2811, %2646
  %2819 = fmul fast float %2811, %2811
  %2820 = fsub fast float %2819, %2647
  %2821 = fmul fast float %2815, %2817
  %2822 = fmul fast float %2821, %2818
  %2823 = fsub fast float %2820, %2822
  %2824 = fmul fast float %2647, %2647
  %2825 = fsub fast float %2649, %2824
  %2826 = fmul fast float %2817, %2817
  %2827 = fmul fast float %2826, %2815
  %2828 = fsub fast float %2825, %2827
  %2829 = fdiv fast float %2823, %2828
  %2830 = fmul fast float %2829, %2817
  %2831 = fsub fast float %2818, %2830
  %2832 = fmul fast float %2831, %2815
  %2833 = fmul fast float %2832, %2646
  %2834 = fsub fast float 1.000000e+00, %2833
  %2835 = fmul fast float %2829, %2647
  %2836 = fsub fast float %2834, %2835
  %2837 = fmul fast float %2832, %2832
  %2838 = fmul fast float %2829, 4.000000e+00
  %2839 = fmul fast float %2838, %2836
  %2840 = fsub fast float %2837, %2839
  %2841 = call float @dx.op.unary.f32(i32 24, float %2840)  ; Sqrt(value)
  %2842 = fcmp fast oge float %2832, 0.000000e+00
  %2843 = fsub fast float -0.000000e+00, %2841
  %2844 = select i1 %2842, float %2843, float %2841
  %2845 = fsub fast float %2844, %2832
  %2846 = fdiv fast float %2845, %2829
  %2847 = fdiv fast float %2836, %2845
  %2848 = fmul fast float %2846, 5.000000e-01
  %2849 = fmul fast float %2847, 2.000000e+00
  %2850 = select i1 %2842, float %2848, float %2849
  %2851 = select i1 %2842, float %2849, float %2848
  %2852 = call float @dx.op.binary.f32(i32 35, float %2850, float %2851)  ; FMax(a,b)
  %2853 = call float @dx.op.binary.f32(i32 36, float %2850, float %2851)  ; FMin(a,b)
  %2854 = fcmp fast ogt float %2811, %2852
  %2855 = fsub fast float %2811, %2853
  %2856 = fsub fast float %2811, %2852
  %2857 = fsub fast float %2852, %2853
  %2858 = select i1 %2854, float %2856, float %2857
  %2859 = fmul float %2855, %2858
  %2860 = select i1 %2854, float %2853, float %2811
  %2861 = fcmp fast ogt float %2811, %2853
  %2862 = fmul fast float %2860, %2852
  %2863 = fadd fast float %2860, %2852
  %2864 = fmul fast float %2863, %2646
  %2865 = fadd fast float %2862, %2647
  %2866 = fsub fast float %2865, %2864
  %2867 = fdiv fast float %2866, %2859
  %2868 = select i1 %2861, float %2867, float 0.000000e+00
  %2869 = fsub fast float 1.000000e+00, %2868
  %2870 = select i1 %2854, float %2869, float %2868
  %2871 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2631, 3
  %2873 = fmul fast float %2872, %2871
  %2874 = fsub fast float 1.000000e+00, %2873
  br label %2875

; <label>:2875                                    ; preds = %2804, %2516, %2481, %2477, %2443
  %2876 = phi float [ 1.000000e+00, %2443 ], [ %2874, %2804 ], [ 1.000000e+00, %2481 ], [ 1.000000e+00, %2516 ], [ 1.000000e+00, %2477 ]
  %2877 = fcmp fast ogt float %2473, 0.000000e+00
  br i1 %2877, label %2878, label %2884, !dx.controlflow.hints !88

; <label>:2878                                    ; preds = %2875
  %2879 = fadd fast float %2386, %2360
  %2880 = call float @dx.op.binary.f32(i32 35, float %2879, float 0.000000e+00)  ; FMax(a,b)
  %2881 = fadd fast float %2880, 0x3F10000000000000
  %2882 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %33, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float %2881)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  br label %2884

; <label>:2884                                    ; preds = %2878, %2875
  %2885 = phi float [ %2883, %2878 ], [ 1.000000e+00, %2875 ]
  %2886 = fcmp fast ogt float %2471, 0.000000e+00
  br i1 %2886, label %2887, label %2893, !dx.controlflow.hints !89

; <label>:2887                                    ; preds = %2884
  %2888 = fadd fast float %2416, %2360
  %2889 = call float @dx.op.binary.f32(i32 35, float %2888, float 0.000000e+00)  ; FMax(a,b)
  %2890 = fadd fast float %2889, 0x3F10000000000000
  %2891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %33, float %2367, float %2368, float undef, float undef, i32 0, i32 0, i32 undef, float %2890)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  br label %2893

; <label>:2893                                    ; preds = %2887, %2884
  %2894 = phi float [ %2892, %2887 ], [ 1.000000e+00, %2884 ]
  %2895 = fcmp fast ogt float %2470, 0.000000e+00
  br i1 %2895, label %2896, label %2903, !dx.controlflow.hints !90

; <label>:2896                                    ; preds = %2893
  %2897 = extractvalue %dx.types.CBufRet.f32 %2385, 0
  %2898 = fadd fast float %2897, %2360
  %2899 = call float @dx.op.binary.f32(i32 35, float %2898, float 0.000000e+00)  ; FMax(a,b)
  %2900 = fadd fast float %2899, 0x3F10000000000000
  %2901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %33, float %2352, float %2356, float undef, float undef, i32 0, i32 0, i32 undef, float %2900)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2902 = extractvalue %dx.types.ResRet.f32 %2901, 0
  br label %2903

; <label>:2903                                    ; preds = %2896, %2893
  %2904 = phi float [ %2902, %2896 ], [ 1.000000e+00, %2893 ]
  %2905 = fsub fast float %2885, %2876
  %2906 = fmul fast float %2905, %2414
  %2907 = fadd fast float %2906, %2876
  %2908 = fsub fast float %2894, %2907
  %2909 = fmul fast float %2908, %2444
  %2910 = fadd fast float %2909, %2907
  %2911 = fsub fast float %2904, %2910
  %2912 = fmul fast float %2911, %2470
  %2913 = fadd fast float %2912, %2910
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 2
  %2916 = fcmp fast ogt float %2915, 0.000000e+00
  br i1 %2916, label %2917, label %2957, !dx.controlflow.hints !91

; <label>:2917                                    ; preds = %2903
  %2918 = fcmp fast ugt float %2915, 0.000000e+00
  br i1 %2918, label %2919, label %2954

; <label>:2919                                    ; preds = %2917
  %2920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.CBufRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.CBufRet.f32 %2920, 2
  %2924 = extractvalue %dx.types.CBufRet.f32 %2920, 3
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2929 = extractvalue %dx.types.CBufRet.f32 %2925, 3
  %2930 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2931 = extractvalue %dx.types.CBufRet.f32 %2914, 1
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.CBufRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.CBufRet.f32 %2932, 2
  %2936 = fadd fast float %2933, %2329
  %2937 = fadd fast float %2934, %2330
  %2938 = fadd fast float %2935, %2331
  %2939 = fmul fast float %2936, %2921
  %2940 = call float @dx.op.tertiary.f32(i32 46, float %2922, float %2937, float %2939)  ; FMad(a,b,c)
  %2941 = call float @dx.op.tertiary.f32(i32 46, float %2923, float %2938, float %2940)  ; FMad(a,b,c)
  %2942 = fadd fast float %2941, %2924
  %2943 = fmul fast float %2936, %2926
  %2944 = call float @dx.op.tertiary.f32(i32 46, float %2927, float %2937, float %2943)  ; FMad(a,b,c)
  %2945 = call float @dx.op.tertiary.f32(i32 46, float %2928, float %2938, float %2944)  ; FMad(a,b,c)
  %2946 = fadd fast float %2945, %2929
  %2947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %28, float %2942, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = fmul fast float %2948, %2931
  %2950 = fadd fast float %2949, %2930
  %2951 = call float @dx.op.unary.f32(i32 7, float %2950)  ; Saturate(value)
  %2952 = fmul fast float %2951, %2915
  %2953 = fsub fast float 1.000000e+00, %2952
  br label %2954

; <label>:2954                                    ; preds = %2919, %2917
  %2955 = phi float [ %2953, %2919 ], [ 1.000000e+00, %2917 ]
  %2956 = fmul fast float %2955, %2913
  br label %2957

; <label>:2957                                    ; preds = %2954, %2903, %2309
  %2958 = phi float [ 1.000000e+00, %2309 ], [ %2956, %2954 ], [ %2913, %2903 ]
  %2959 = call float @dx.op.binary.f32(i32 36, float %2958, float %2958)  ; FMin(a,b)
  %2960 = call float @dx.op.binary.f32(i32 36, float %2958, float %2959)  ; FMin(a,b)
  %2961 = fcmp fast ogt float %2960, 0.000000e+00
  br i1 %2961, label %2962, label %3123, !dx.controlflow.hints !92

; <label>:2962                                    ; preds = %2957
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.CBufRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.CBufRet.f32 %2963, 2
  %2967 = extractvalue %dx.types.CBufRet.f32 %2963, 3
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %2972 = extractvalue %dx.types.CBufRet.f32 %2968, 3
  %2973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.CBufRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.CBufRet.f32 %2973, 2
  %2977 = extractvalue %dx.types.CBufRet.f32 %2973, 3
  %2978 = fmul fast float %2964, %2329
  %2979 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2965, float %2978)  ; FMad(a,b,c)
  %2980 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2966, float %2979)  ; FMad(a,b,c)
  %2981 = fadd fast float %2980, %2967
  %2982 = fmul fast float %2969, %2329
  %2983 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2970, float %2982)  ; FMad(a,b,c)
  %2984 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2971, float %2983)  ; FMad(a,b,c)
  %2985 = fadd fast float %2984, %2972
  %2986 = fmul fast float %2974, %2329
  %2987 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2975, float %2986)  ; FMad(a,b,c)
  %2988 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2976, float %2987)  ; FMad(a,b,c)
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.CBufRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.CBufRet.f32 %2989, 3
  %2993 = fmul fast float %2992, %2981
  %2994 = fmul fast float %2992, %2985
  %2995 = fadd fast float %2993, %2990
  %2996 = fadd fast float %2994, %2991
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.CBufRet.f32 %2997, 1
  %3000 = fsub fast float %2995, %2998
  %3001 = fsub fast float %2996, %2999
  %3002 = fcmp fast olt float %3000, 0.000000e+00
  %3003 = fcmp fast olt float %3001, 0.000000e+00
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.CBufRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.CBufRet.f32 %3004, 2
  %3008 = extractvalue %dx.types.CBufRet.f32 %3004, 3
  %3009 = select i1 %3002, float %3005, float %3007
  %3010 = select i1 %3003, float %3006, float %3008
  %3011 = fmul fast float %3009, %3000
  %3012 = fmul fast float %3010, %3001
  %3013 = call float @dx.op.unary.f32(i32 6, float %3011)  ; FAbs(value)
  %3014 = call float @dx.op.unary.f32(i32 6, float %3012)  ; FAbs(value)
  %3015 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %3016 = call float @dx.op.binary.f32(i32 35, float %3013, float %3014)  ; FMax(a,b)
  %3017 = fsub fast float %3015, %3016
  %3018 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3019 = fcmp fast ogt float %3018, 0.000000e+00
  br i1 %3019, label %3020, label %3061, !dx.controlflow.hints !93

; <label>:3020                                    ; preds = %2962
  %3021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 1
  %3023 = fcmp fast ogt float %3022, 0.000000e+00
  br i1 %3023, label %3024, label %3056

; <label>:3024                                    ; preds = %3020
  %3025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  %3027 = extractvalue %dx.types.ResRet.f32 %3025, 1
  %3028 = extractvalue %dx.types.ResRet.f32 %3025, 2
  %3029 = extractvalue %dx.types.ResRet.f32 %3025, 3
  %3030 = fsub fast float 1.000000e+00, %2977
  %3031 = fsub fast float %3030, %2988
  %3032 = fmul fast float %3031, 0x400921FB60000000
  %3033 = fadd fast float %3032, 0x3FF921FB60000000
  %3034 = call float @dx.op.unary.f32(i32 13, float %3033)  ; Sin(value)
  %3035 = fadd fast float %3034, -1.000000e+00
  %3036 = fmul fast float %3035, 0x3FD45F3060000000
  %3037 = fmul fast float %3031, 0x401921FB60000000
  %3038 = fadd fast float %3037, 0x400921FB60000000
  %3039 = call float @dx.op.unary.f32(i32 13, float %3038)  ; Sin(value)
  %3040 = fadd fast float %3039, 0x3E7777A5C0000000
  %3041 = fmul fast float %3040, 0x3FC45F3060000000
  %3042 = fmul fast float %3031, 0x4022D97C80000000
  %3043 = fadd fast float %3042, 0x4012D97C80000000
  %3044 = call float @dx.op.unary.f32(i32 13, float %3043)  ; Sin(value)
  %3045 = fadd fast float %3044, 1.000000e+00
  %3046 = fmul fast float %3045, 0x3FBB2995E0000000
  %3047 = fmul fast float %3031, 0x402921FB60000000
  %3048 = fadd fast float %3047, 0x401921FB60000000
  %3049 = call float @dx.op.unary.f32(i32 13, float %3048)  ; Sin(value)
  %3050 = fadd fast float %3049, 0xBE8777A5C0000000
  %3051 = fmul fast float %3050, 0x3FB45F3060000000
  %3052 = call float @dx.op.dot4.f32(i32 56, float %3026, float %3027, float %3028, float %3029, float %3036, float %3041, float %3046, float %3051)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3053 = fmul fast float %3052, 0xBFF7154760000000
  %3054 = call float @dx.op.unary.f32(i32 21, float %3053)  ; Exp(value)
  %3055 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  br label %3056

; <label>:3056                                    ; preds = %3024, %3020
  %3057 = phi float [ %3055, %3024 ], [ 1.000000e+00, %3020 ]
  %3058 = fadd fast float %3057, -1.000000e+00
  %3059 = fmul fast float %3058, %3018
  %3060 = fadd fast float %3059, 1.000000e+00
  br label %3061

; <label>:3061                                    ; preds = %3056, %2962
  %3062 = phi float [ %3060, %3056 ], [ 1.000000e+00, %2962 ]
  %3063 = fmul fast float %3062, %2958
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.CBufRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.CBufRet.f32 %3064, 2
  %3068 = fadd fast float %3065, %120
  %3069 = fadd fast float %3066, %121
  %3070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.f32 %3070, 1
  %3072 = fsub fast float -0.000000e+00, %3068
  %3073 = fsub fast float -0.000000e+00, %3069
  %3074 = fsub fast float -0.000000e+00, %122
  %3075 = fsub fast float %3074, %3067
  %3076 = fadd fast float %3075, %3071
  %3077 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3072, float %3073, float %3076)  ; Dot3(ax,ay,az,bx,by,bz)
  %3078 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2310, float %2311, float %2312)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = fdiv fast float 1.000000e+00, %3078
  %3080 = fmul fast float %3079, %3077
  %3081 = fmul fast float %2310, %3080
  %3082 = fmul fast float %2311, %3080
  %3083 = fadd fast float %3081, %3068
  %3084 = fadd fast float %3082, %3069
  %3085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.CBufRet.f32 %3085, 1
  %3088 = fsub fast float %3083, %3086
  %3089 = fsub fast float %3084, %3087
  %3090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3091 = extractvalue %dx.types.CBufRet.f32 %3090, 2
  %3092 = extractvalue %dx.types.CBufRet.f32 %3090, 3
  %3093 = fmul fast float %3088, %3091
  %3094 = fmul fast float %3089, %3092
  %3095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3096 = extractvalue %dx.types.CBufRet.i32 %3095, 3
  %3097 = icmp eq i32 %3096, 0
  br i1 %3097, label %3103, label %3098

; <label>:3098                                    ; preds = %3061
  %3099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %3093, float %3094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = extractvalue %dx.types.ResRet.f32 %3099, 1
  %3102 = extractvalue %dx.types.ResRet.f32 %3099, 2
  br label %3108

; <label>:3103                                    ; preds = %3061
  %3104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %3093, float %3094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3105 = extractvalue %dx.types.ResRet.f32 %3104, 0
  %3106 = extractvalue %dx.types.ResRet.f32 %3104, 1
  %3107 = extractvalue %dx.types.ResRet.f32 %3104, 2
  br label %3108

; <label>:3108                                    ; preds = %3103, %3098
  %3109 = phi float [ %3100, %3098 ], [ %3105, %3103 ]
  %3110 = phi float [ %3101, %3098 ], [ %3106, %3103 ]
  %3111 = phi float [ %3102, %3098 ], [ %3107, %3103 ]
  %3112 = extractvalue %dx.types.CBufRet.f32 %3070, 2
  %3113 = fmul fast float %3112, %3109
  %3114 = extractvalue %dx.types.CBufRet.f32 %3070, 0
  %3115 = fsub fast float %3080, %3114
  %3116 = fsub fast float %3115, %3113
  %3117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3116)  ; FMax(a,b)
  %3118 = fmul fast float %3117, %3110
  %3119 = call float @dx.op.binary.f32(i32 36, float %3111, float %3118)  ; FMin(a,b)
  %3120 = fmul fast float %3119, 0xBFF7154760000000
  %3121 = call float @dx.op.unary.f32(i32 21, float %3120)  ; Exp(value)
  %3122 = fmul fast float %3063, %3121
  br label %3123

; <label>:3123                                    ; preds = %3108, %2957
  %3124 = phi float [ %3122, %3108 ], [ %2958, %2957 ]
  %3125 = call float @dx.op.binary.f32(i32 36, float %3124, float %3124)  ; FMin(a,b)
  %3126 = call float @dx.op.binary.f32(i32 36, float %3124, float %3125)  ; FMin(a,b)
  %3127 = fcmp fast ogt float %3126, 0.000000e+00
  br i1 %3127, label %3128, label %3438, !dx.controlflow.hints !94

; <label>:3128                                    ; preds = %3123
  %3129 = fmul fast float %3124, %2321
  %3130 = fmul fast float %3124, %2322
  %3131 = fmul fast float %3124, %2323
  %3132 = fsub fast float %2310, %139
  %3133 = fsub fast float %2311, %140
  %3134 = fsub fast float %2312, %141
  %3135 = call float @dx.op.dot3.f32(i32 55, float %3132, float %3133, float %3134, float %3132, float %3133, float %3134)  ; Dot3(ax,ay,az,bx,by,bz)
  %3136 = call float @dx.op.unary.f32(i32 25, float %3135)  ; Rsqrt(value)
  %3137 = fmul fast float %3136, %3132
  %3138 = fmul fast float %3136, %3133
  %3139 = fmul fast float %3136, %3134
  %3140 = call float @dx.op.dot3.f32(i32 55, float %2310, float %2311, float %2312, float %1872, float %1873, float %1874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3141 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1704, float %1705, float %3137, float %3138, float %3139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3142 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3143 = fmul fast float %3142, %3142
  %3144 = fmul fast float %3143, %1895
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = fmul fast float %3145, %3142
  %3147 = call float @dx.op.dot3.f32(i32 55, float %1872, float %1873, float %1874, float %3137, float %3138, float %3139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3148 = fmul fast float %3147, %3147
  %3149 = call float @dx.op.unary.f32(i32 6, float %3140)  ; FAbs(value)
  %3150 = call float @dx.op.binary.f32(i32 35, float %2278, float 0x3F847AE140000000)  ; FMax(a,b)
  %3151 = fmul fast float %3150, %3150
  %3152 = fmul fast float %3151, %3151
  %3153 = fsub fast float 1.000000e+00, %3152
  %3154 = fmul fast float %1882, %1882
  %3155 = fmul fast float %3154, %3153
  %3156 = fadd fast float %3155, %3152
  %3157 = bitcast float %3156 to i32
  %3158 = ashr i32 %3157, 1
  %3159 = add nsw i32 %3158, 532487669
  %3160 = bitcast i32 %3159 to float
  %3161 = fadd fast float %3160, %1882
  %3162 = fmul fast float %3152, %3148
  %3163 = fsub fast float 1.000000e+00, %3148
  %3164 = fadd fast float %3163, %3162
  %3165 = fmul fast float %3149, %3149
  %3166 = fmul fast float %3165, %3153
  %3167 = fadd fast float %3166, %3152
  %3168 = bitcast float %3167 to i32
  %3169 = ashr i32 %3168, 1
  %3170 = add nsw i32 %3169, 532487669
  %3171 = bitcast i32 %3170 to float
  %3172 = fadd fast float %3171, %3149
  %3173 = fmul fast float %3164, %3164
  %3174 = fmul fast float %3173, %3161
  %3175 = fmul fast float %3174, %3172
  %3176 = fdiv fast float 0x3FF0A00000000000, %3175
  %3177 = fmul fast float %3176, %3152
  %3178 = fmul fast float %2140, 0x3FF9999980000000
  %3179 = fsub fast float 5.000000e+00, %3178
  %3180 = call float @dx.op.unary.f32(i32 6, float %3141)  ; FAbs(value)
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %2140, 0x41D9660740000000
  %3183 = fadd fast float %3182, 0xC1EFBF8940000000
  %3184 = bitcast float %3181 to i32
  %3185 = sitofp i32 %3184 to float
  %3186 = fmul fast float %3185, %3179
  %3187 = fadd fast float %3183, %3186
  %3188 = fptosi float %3187 to i32
  %3189 = bitcast i32 %3188 to float
  %3190 = fsub fast float 1.000000e+00, %1875
  %3191 = fsub fast float 1.000000e+00, %1876
  %3192 = fsub fast float 1.000000e+00, %1880
  %3193 = fmul fast float %3189, %3190
  %3194 = fmul fast float %3189, %3191
  %3195 = fmul fast float %3189, %3192
  %3196 = fadd fast float %3193, %1875
  %3197 = fadd fast float %3194, %1876
  %3198 = fadd fast float %3195, %1880
  br i1 %2163, label %3199, label %3222

; <label>:3199                                    ; preds = %3128
  %3200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1502, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = fadd fast float %3201, -5.000000e-01
  %3205 = fadd fast float %3202, -5.000000e-01
  %3206 = fadd fast float %3203, -5.000000e-01
  %3207 = fmul fast float %1875, 4.000000e+00
  %3208 = fmul fast float %3207, %3190
  %3209 = fmul fast float %3208, %3204
  %3210 = fmul fast float %1876, 4.000000e+00
  %3211 = fmul fast float %3210, %3191
  %3212 = fmul fast float %3211, %3205
  %3213 = fmul fast float %1880, 4.000000e+00
  %3214 = fmul fast float %3213, %3192
  %3215 = fmul fast float %3214, %3206
  %3216 = fadd fast float %3209, %3196
  %3217 = fadd fast float %3212, %3197
  %3218 = fadd fast float %3215, %3198
  %3219 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3220 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3221 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  br label %3222

; <label>:3222                                    ; preds = %3199, %3128
  %3223 = phi float [ %3219, %3199 ], [ %3196, %3128 ]
  %3224 = phi float [ %3220, %3199 ], [ %3197, %3128 ]
  %3225 = phi float [ %3221, %3199 ], [ %3198, %3128 ]
  %3226 = fmul fast float %3140, 9.843750e-01
  %3227 = fadd fast float %3226, 7.812500e-03
  %3228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %3227, float %2144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3229 = extractvalue %dx.types.ResRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.ResRet.f32 %3228, 1
  %3231 = extractvalue %dx.types.ResRet.f32 %3228, 2
  %3232 = extractvalue %dx.types.ResRet.f32 %3228, 3
  %3233 = fsub fast float %3231, %3229
  %3234 = fsub fast float %3232, %3230
  %3235 = fmul fast float %3233, %2150
  %3236 = fmul fast float %3234, %2150
  %3237 = fadd fast float %3235, %3229
  %3238 = fadd fast float %3236, %3230
  %3239 = fmul fast float %3237, %1875
  %3240 = fmul fast float %3237, %1876
  %3241 = fmul fast float %3237, %1880
  %3242 = fadd fast float %3239, %3238
  %3243 = fadd fast float %3240, %3238
  %3244 = fadd fast float %3241, %3238
  br i1 %2163, label %3245, label %3268

; <label>:3245                                    ; preds = %3222
  %3246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1502, float %3140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3247 = extractvalue %dx.types.ResRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.ResRet.f32 %3246, 1
  %3249 = extractvalue %dx.types.ResRet.f32 %3246, 2
  %3250 = fadd fast float %3247, -5.000000e-01
  %3251 = fadd fast float %3248, -5.000000e-01
  %3252 = fadd fast float %3249, -5.000000e-01
  %3253 = fmul fast float %1875, 4.000000e+00
  %3254 = fmul fast float %3253, %3190
  %3255 = fmul fast float %3254, %3250
  %3256 = fmul fast float %1876, 4.000000e+00
  %3257 = fmul fast float %3256, %3191
  %3258 = fmul fast float %3257, %3251
  %3259 = fmul fast float %1880, 4.000000e+00
  %3260 = fmul fast float %3259, %3192
  %3261 = fmul fast float %3260, %3252
  %3262 = fadd fast float %3255, %3242
  %3263 = fadd fast float %3258, %3243
  %3264 = fadd fast float %3261, %3244
  %3265 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  br label %3268

; <label>:3268                                    ; preds = %3245, %3222
  %3269 = phi float [ %3265, %3245 ], [ %3242, %3222 ]
  %3270 = phi float [ %3266, %3245 ], [ %3243, %3222 ]
  %3271 = phi float [ %3267, %3245 ], [ %3244, %3222 ]
  %3272 = call float @dx.op.binary.f32(i32 35, float %3270, float %3271)  ; FMax(a,b)
  %3273 = call float @dx.op.binary.f32(i32 35, float %3269, float %3272)  ; FMax(a,b)
  %3274 = fsub fast float 1.000000e+00, %3273
  %3275 = call float @dx.op.binary.f32(i32 35, float %3149, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3276 = fdiv fast float %902, %3275
  %3277 = fmul fast float %2218, %3276
  %3278 = fmul fast float %2220, %3276
  %3279 = fmul fast float %2222, %3276
  %3280 = call float @dx.op.unary.f32(i32 21, float %3277)  ; Exp(value)
  %3281 = call float @dx.op.unary.f32(i32 21, float %3278)  ; Exp(value)
  %3282 = call float @dx.op.unary.f32(i32 21, float %3279)  ; Exp(value)
  %3283 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3284 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3285 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3286 = select i1 %2215, float %3283, float 0.000000e+00
  %3287 = select i1 %2216, float %3284, float 0.000000e+00
  %3288 = select i1 %2217, float %3285, float 0.000000e+00
  %3289 = fsub fast float -0.000000e+00, %1872
  %3290 = fsub fast float -0.000000e+00, %1873
  %3291 = fsub fast float -0.000000e+00, %1874
  %3292 = call float @dx.op.dot3.f32(i32 55, float %2310, float %2311, float %2312, float %3289, float %3290, float %3291)  ; Dot3(ax,ay,az,bx,by,bz)
  %3293 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  %3294 = fmul fast float %3293, 9.843750e-01
  %3295 = fadd fast float %3294, 7.812500e-03
  %3296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %3295, float %2144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.ResRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.ResRet.f32 %3296, 2
  %3300 = extractvalue %dx.types.ResRet.f32 %3296, 3
  %3301 = fsub fast float %3299, %3297
  %3302 = fsub fast float %3300, %3298
  %3303 = fmul fast float %3301, %2150
  %3304 = fmul fast float %3302, %2150
  %3305 = fadd fast float %3303, %3297
  %3306 = fadd fast float %3304, %3298
  %3307 = fmul fast float %3305, %1875
  %3308 = fmul fast float %3305, %1876
  %3309 = fmul fast float %3305, %1880
  %3310 = fadd fast float %3307, %3306
  %3311 = fadd fast float %3308, %3306
  %3312 = fadd fast float %3309, %3306
  br i1 %2163, label %3313, label %3336

; <label>:3313                                    ; preds = %3268
  %3314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1502, float %3293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3315 = extractvalue %dx.types.ResRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.ResRet.f32 %3314, 1
  %3317 = extractvalue %dx.types.ResRet.f32 %3314, 2
  %3318 = fadd fast float %3315, -5.000000e-01
  %3319 = fadd fast float %3316, -5.000000e-01
  %3320 = fadd fast float %3317, -5.000000e-01
  %3321 = fmul fast float %1875, 4.000000e+00
  %3322 = fmul fast float %3321, %3190
  %3323 = fmul fast float %3322, %3318
  %3324 = fmul fast float %1876, 4.000000e+00
  %3325 = fmul fast float %3324, %3191
  %3326 = fmul fast float %3325, %3319
  %3327 = fmul fast float %1880, 4.000000e+00
  %3328 = fmul fast float %3327, %3192
  %3329 = fmul fast float %3328, %3320
  %3330 = fadd fast float %3323, %3310
  %3331 = fadd fast float %3326, %3311
  %3332 = fadd fast float %3329, %3312
  %3333 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3334 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3335 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  br label %3336

; <label>:3336                                    ; preds = %3313, %3268
  %3337 = phi float [ %3333, %3313 ], [ %3310, %3268 ]
  %3338 = phi float [ %3334, %3313 ], [ %3311, %3268 ]
  %3339 = phi float [ %3335, %3313 ], [ %3312, %3268 ]
  %3340 = call float @dx.op.binary.f32(i32 35, float %3338, float %3339)  ; FMax(a,b)
  %3341 = call float @dx.op.binary.f32(i32 35, float %3337, float %3340)  ; FMax(a,b)
  %3342 = fsub fast float 1.000000e+00, %3341
  %3343 = fmul fast float %2278, %2283
  %3344 = fadd fast float %2285, %3343
  %3345 = call float @dx.op.unary.f32(i32 7, float %3344)  ; Saturate(value)
  %3346 = fsub fast float %2310, %1888
  %3347 = fsub fast float %2311, %1889
  %3348 = fsub fast float %2312, %1890
  %3349 = call float @dx.op.dot3.f32(i32 55, float %3346, float %3347, float %3348, float %3346, float %3347, float %3348)  ; Dot3(ax,ay,az,bx,by,bz)
  %3350 = call float @dx.op.unary.f32(i32 25, float %3349)  ; Rsqrt(value)
  %3351 = fmul fast float %3350, %3346
  %3352 = fmul fast float %3350, %3347
  %3353 = fmul fast float %3350, %3348
  %3354 = call float @dx.op.dot3.f32(i32 55, float %3289, float %3290, float %3291, float %3351, float %3352, float %3353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3355 = fmul fast float %3354, %3354
  %3356 = call float @dx.op.unary.f32(i32 6, float %3293)  ; FAbs(value)
  %3357 = call float @dx.op.binary.f32(i32 35, float %3345, float 0x3F847AE140000000)  ; FMax(a,b)
  %3358 = fmul fast float %3357, %3357
  %3359 = fmul fast float %3358, %3358
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = fmul fast float %3154, %3360
  %3362 = fadd fast float %3361, %3359
  %3363 = bitcast float %3362 to i32
  %3364 = ashr i32 %3363, 1
  %3365 = add nsw i32 %3364, 532487669
  %3366 = bitcast i32 %3365 to float
  %3367 = fadd fast float %3366, %1882
  %3368 = fmul fast float %3359, %3355
  %3369 = fsub fast float 1.000000e+00, %3355
  %3370 = fadd fast float %3369, %3368
  %3371 = fmul fast float %3356, %3356
  %3372 = fmul fast float %3371, %3360
  %3373 = fadd fast float %3372, %3359
  %3374 = bitcast float %3373 to i32
  %3375 = ashr i32 %3374, 1
  %3376 = add nsw i32 %3375, 532487669
  %3377 = bitcast i32 %3376 to float
  %3378 = fadd fast float %3377, %3356
  %3379 = fmul fast float %3370, %3370
  %3380 = fmul fast float %3379, %3367
  %3381 = fmul fast float %3380, %3378
  %3382 = fdiv fast float 0x3FF0A00000000000, %3381
  %3383 = fmul fast float %3382, %3359
  %3384 = fmul fast float %3293, %3286
  %3385 = fmul fast float %3293, %3287
  %3386 = fmul fast float %3293, %3288
  %3387 = fmul fast float %3384, %3342
  %3388 = fmul fast float %3387, %3383
  %3389 = fmul fast float %3385, %3342
  %3390 = fmul fast float %3389, %3383
  %3391 = fmul fast float %3386, %3342
  %3392 = fmul fast float %3391, %3383
  %3393 = fmul fast float %3223, %3177
  %3394 = fmul fast float %3224, %3177
  %3395 = fmul fast float %3225, %3177
  %3396 = fsub fast float 1.000000e+00, %3141
  %3397 = bitcast float %3396 to i32
  %3398 = sitofp i32 %3397 to float
  %3399 = fmul fast float %3398, 5.000000e+00
  %3400 = fadd fast float %3399, 0xC1EFBF8940000000
  %3401 = fptosi float %3400 to i32
  %3402 = bitcast i32 %3401 to float
  %3403 = fmul fast float %3402, %1501
  %3404 = fmul fast float %3274, %3403
  %3405 = fmul fast float %3404, %2210
  %3406 = fmul fast float %3404, %2211
  %3407 = fmul fast float %3404, %2212
  %3408 = fadd fast float %3405, %3393
  %3409 = fadd fast float %3406, %3394
  %3410 = fadd fast float %3407, %3395
  %3411 = fmul fast float %3408, %3146
  %3412 = fmul fast float %3409, %3146
  %3413 = fmul fast float %3410, %3146
  %3414 = fmul fast float %3146, %3129
  %3415 = fmul fast float %3414, %3274
  %3416 = fmul fast float %3146, %3130
  %3417 = fmul fast float %3416, %3274
  %3418 = fmul fast float %3146, %3131
  %3419 = fmul fast float %3418, %3274
  %3420 = fadd fast float %3411, %3388
  %3421 = fadd fast float %3412, %3390
  %3422 = fadd fast float %3413, %3392
  %3423 = fmul fast float %3420, %3129
  %3424 = fmul fast float %3421, %3130
  %3425 = fmul fast float %3422, %3131
  %3426 = fadd fast float %3415, %2300
  %3427 = fmul fast float %3426, %1551
  %3428 = fadd fast float %3417, %2302
  %3429 = fmul fast float %3428, %1551
  %3430 = fadd fast float %3419, %2304
  %3431 = fmul fast float %3430, %1551
  %3432 = fadd fast float %3423, %2263
  %3433 = fmul fast float %3432, %1551
  %3434 = fadd fast float %3424, %2266
  %3435 = fmul fast float %3434, %1551
  %3436 = fadd fast float %3425, %2269
  %3437 = fmul fast float %3436, %1551
  br label %3438

; <label>:3438                                    ; preds = %3336, %3123, %2190
  %3439 = phi float [ %2264, %2190 ], [ %2264, %3123 ], [ %3433, %3336 ]
  %3440 = phi float [ %2267, %2190 ], [ %2267, %3123 ], [ %3435, %3336 ]
  %3441 = phi float [ %2270, %2190 ], [ %2270, %3123 ], [ %3437, %3336 ]
  %3442 = phi float [ %2301, %2190 ], [ %2301, %3123 ], [ %3427, %3336 ]
  %3443 = phi float [ %2303, %2190 ], [ %2303, %3123 ], [ %3429, %3336 ]
  %3444 = phi float [ %2305, %2190 ], [ %2305, %3123 ], [ %3431, %3336 ]
  %3445 = fmul fast float %2239, %1551
  %3446 = fmul fast float %2240, %1551
  %3447 = fmul fast float %2241, %1551
  %3448 = fadd fast float %3445, 1.000000e+00
  %3449 = fadd fast float %3446, 1.000000e+00
  %3450 = fadd fast float %3447, 1.000000e+00
  %3451 = call float @dx.op.dot3.f32(i32 55, float %3448, float %3449, float %3450, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3452 = fsub fast float 1.000000e+00, %3451
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = fmul fast float %3454, %2245
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 3
  %3458 = fsub fast float 1.000000e+00, %1497
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = fadd fast float %3444, %1496
  %3461 = fmul fast float %3460, %1497
  %3462 = fmul fast float %3459, %3457
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 3
  %3465 = bitcast i32 %3464 to float
  %3466 = fsub fast float %3452, %3465
  %3467 = fmul fast float %3466, %153
  %3468 = fadd fast float %3467, %3465
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 3
  %3471 = fmul fast float %3442, %1869
  %3472 = fmul fast float %3443, %1870
  %3473 = fmul fast float %3444, %1871
  %3474 = fcmp fast ogt float %63, %173
  %3475 = and i1 %3474, %1619
  %3476 = or i1 %1698, %3475
  %3477 = icmp eq i32 %1618, 2
  %3478 = fcmp fast ole float %63, %173
  %3479 = and i1 %3478, %3477
  %3480 = or i1 %3479, %3476
  br i1 %3475, label %3481, label %3740

; <label>:3481                                    ; preds = %3438
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3484 = extractvalue %dx.types.CBufRet.f32 %3482, 3
  %3485 = fmul fast float %3483, %72
  %3486 = fmul fast float %3484, %73
  %3487 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3488 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3489 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3487, float %3488, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3494 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3487, float %3488, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.ResRet.f32 %3494, 2
  %3498 = extractvalue %dx.types.ResRet.f32 %3494, 3
  %3499 = call float @dx.op.binary.f32(i32 35, float %3491, float %3492)  ; FMax(a,b)
  %3500 = call float @dx.op.binary.f32(i32 35, float %3490, float %3499)  ; FMax(a,b)
  %3501 = call float @dx.op.binary.f32(i32 35, float %3500, float %3493)  ; FMax(a,b)
  %3502 = call float @dx.op.binary.f32(i32 36, float %3496, float %3497)  ; FMin(a,b)
  %3503 = call float @dx.op.binary.f32(i32 36, float %3495, float %3502)  ; FMin(a,b)
  %3504 = call float @dx.op.binary.f32(i32 36, float %3503, float %3498)  ; FMin(a,b)
  %3505 = fmul fast float %3501, 2.550000e+02
  %3506 = fadd fast float %3505, 0x3F70101020000000
  %3507 = fptoui float %3506 to i32
  %3508 = fmul fast float %3504, 2.550000e+02
  %3509 = fadd fast float %3508, 0x3F70101020000000
  %3510 = fptoui float %3509 to i32
  %3511 = icmp ult i32 %3507, %3510
  br i1 %3511, label %3512, label %3680

; <label>:3512                                    ; preds = %3481
  %3513 = fcmp fast ogt float %62, 9.843750e-01
  %3514 = fadd fast float %63, -4.000000e+00
  %3515 = select i1 %3513, float -4.000000e+00, float %3514
  %3516 = call float @dx.op.binary.f32(i32 35, float %3515, float 0.000000e+00)  ; FMax(a,b)
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = fadd fast float %3518, %3516
  %3520 = extractvalue %dx.types.CBufRet.f32 %3517, 2
  %3521 = fmul fast float %3519, %3520
  %3522 = call float @dx.op.unary.f32(i32 23, float %3521)  ; Log(value)
  %3523 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3524 = fmul fast float %3523, %3522
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3527 = fmul fast float %3524, %3526
  %3528 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  %3529 = uitofp i32 %3507 to float
  %3530 = uitofp i32 %3510 to float
  %3531 = fadd fast float %3529, 5.000000e-01
  %3532 = fadd fast float %3530, 5.000000e-01
  %3533 = fmul fast float %3526, %3531
  %3534 = fmul fast float %3526, %3532
  %3535 = fadd fast float %3533, 0x3F0FFB4800000000
  %3536 = fadd fast float %3534, 0xBF0FFB4800000000
  %3537 = call float @dx.op.binary.f32(i32 35, float %3528, float %3535)  ; FMax(a,b)
  %3538 = call float @dx.op.binary.f32(i32 36, float %3537, float %3536)  ; FMin(a,b)
  %3539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.f32 %3539, 1
  %3541 = extractvalue %dx.types.CBufRet.f32 %3539, 2
  %3542 = extractvalue %dx.types.CBufRet.f32 %3539, 0
  %3543 = fmul fast float %3540, %3538
  %3544 = fadd fast float %3542, %3543
  %3545 = fadd fast float %3542, %3541
  %3546 = fsub fast float %3540, %3541
  %3547 = fadd fast float %3546, %3542
  %3548 = call float @dx.op.binary.f32(i32 35, float %3544, float %3545)  ; FMax(a,b)
  %3549 = call float @dx.op.binary.f32(i32 36, float %3548, float %3547)  ; FMin(a,b)
  %3550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %3487, float %3488, float %3549, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.ResRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.ResRet.f32 %3550, 2
  %3554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.i32 %3554, 0
  %3556 = extractvalue %dx.types.CBufRet.i32 %3554, 1
  %3557 = uitofp i32 %3555 to float
  %3558 = uitofp i32 %3556 to float
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  %3561 = extractvalue %dx.types.CBufRet.f32 %3559, 1
  %3562 = fmul fast float %3557, %3487
  %3563 = fmul fast float %3558, %3488
  %3564 = fadd fast float %3562, -5.000000e-01
  %3565 = fadd fast float %3563, -5.000000e-01
  %3566 = call float @dx.op.unary.f32(i32 22, float %3564)  ; Frc(value)
  %3567 = call float @dx.op.unary.f32(i32 22, float %3565)  ; Frc(value)
  %3568 = fmul fast float %3566, %3566
  %3569 = fmul fast float %3568, %3566
  %3570 = fsub fast float 3.000000e+00, %3566
  %3571 = fmul fast float %3568, %3570
  %3572 = fmul fast float %3566, 3.000000e+00
  %3573 = fmul fast float %3569, 3.000000e+00
  %3574 = fmul fast float %3568, 6.000000e+00
  %3575 = fsub fast float %3573, %3574
  %3576 = fadd fast float %3575, 4.000000e+00
  %3577 = fmul fast float %3576, 0x3FC5555560000000
  %3578 = fmul fast float %3569, -3.000000e+00
  %3579 = fadd fast float %3568, %3566
  %3580 = fmul fast float %3579, 3.000000e+00
  %3581 = fadd fast float %3578, 1.000000e+00
  %3582 = fadd fast float %3581, %3580
  %3583 = fmul fast float %3569, 0x3FC5555560000000
  %3584 = fmul fast float %3567, %3567
  %3585 = fmul fast float %3584, %3567
  %3586 = fsub fast float 3.000000e+00, %3567
  %3587 = fmul fast float %3584, %3586
  %3588 = fmul fast float %3567, 3.000000e+00
  %3589 = fmul fast float %3585, 3.000000e+00
  %3590 = fmul fast float %3584, 6.000000e+00
  %3591 = fsub fast float %3589, %3590
  %3592 = fadd fast float %3591, 4.000000e+00
  %3593 = fmul fast float %3592, 0x3FC5555560000000
  %3594 = fmul fast float %3585, -3.000000e+00
  %3595 = fadd fast float %3584, %3567
  %3596 = fmul fast float %3595, 3.000000e+00
  %3597 = fadd fast float %3594, 1.000000e+00
  %3598 = fadd fast float %3597, %3596
  %3599 = fmul fast float %3585, 0x3FC5555560000000
  %3600 = fadd fast float %3566, 1.000000e+00
  %3601 = fsub fast float 1.000000e+00, %3572
  %3602 = fadd fast float %3601, %3571
  %3603 = fadd fast float %3602, %3576
  %3604 = fmul fast float %3603, 0x3FC5555560000000
  %3605 = fdiv fast float %3577, %3604
  %3606 = fsub fast float %3600, %3605
  %3607 = fsub fast float 1.000000e+00, %3566
  %3608 = fadd fast float %3582, %3569
  %3609 = fmul fast float %3608, 0x3FC5555560000000
  %3610 = fdiv fast float %3583, %3609
  %3611 = fadd fast float %3607, %3610
  %3612 = fadd fast float %3567, 1.000000e+00
  %3613 = fsub fast float 1.000000e+00, %3588
  %3614 = fadd fast float %3613, %3587
  %3615 = fadd fast float %3614, %3592
  %3616 = fmul fast float %3615, 0x3FC5555560000000
  %3617 = fdiv fast float %3593, %3616
  %3618 = fsub fast float %3612, %3617
  %3619 = fsub fast float 1.000000e+00, %3567
  %3620 = fadd fast float %3598, %3585
  %3621 = fmul fast float %3620, 0x3FC5555560000000
  %3622 = fdiv fast float %3599, %3621
  %3623 = fadd fast float %3622, %3619
  %3624 = fmul fast float %3606, %3560
  %3625 = fsub fast float %3487, %3624
  %3626 = fmul fast float %3611, %3560
  %3627 = fadd fast float %3626, %3487
  %3628 = fmul fast float %3623, %3561
  %3629 = fadd fast float %3628, %3488
  %3630 = fmul fast float %3618, %3561
  %3631 = fsub fast float %3488, %3630
  %3632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3625, float %3631, float %3549, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3627, float %3631, float %3549, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3625, float %3629, float %3549, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.ResRet.f32 %3640, 2
  %3644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3627, float %3629, float %3549, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = fsub fast float %3641, %3633
  %3649 = fsub fast float %3642, %3634
  %3650 = fsub fast float %3643, %3635
  %3651 = fmul fast float %3648, %3621
  %3652 = fmul fast float %3649, %3621
  %3653 = fmul fast float %3650, %3621
  %3654 = fadd fast float %3651, %3633
  %3655 = fadd fast float %3652, %3634
  %3656 = fadd fast float %3653, %3635
  %3657 = fsub fast float %3645, %3637
  %3658 = fsub fast float %3646, %3638
  %3659 = fsub fast float %3647, %3639
  %3660 = fmul fast float %3657, %3621
  %3661 = fmul fast float %3658, %3621
  %3662 = fmul fast float %3659, %3621
  %3663 = fsub fast float %3637, %3654
  %3664 = fadd fast float %3663, %3660
  %3665 = fsub fast float %3638, %3655
  %3666 = fadd fast float %3665, %3661
  %3667 = fsub fast float %3639, %3656
  %3668 = fadd fast float %3667, %3662
  %3669 = fmul fast float %3664, %3609
  %3670 = fmul fast float %3666, %3609
  %3671 = fmul fast float %3668, %3609
  %3672 = fadd fast float %3669, %3654
  %3673 = fadd fast float %3670, %3655
  %3674 = fadd fast float %3671, %3656
  %3675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3675, 1
  %3677 = fmul fast float %3672, %3676
  %3678 = fmul fast float %3673, %3676
  %3679 = fmul fast float %3674, %3676
  br label %3680

; <label>:3680                                    ; preds = %3512, %3481
  %3681 = phi float [ %3551, %3512 ], [ 1.000000e+00, %3481 ]
  %3682 = phi float [ %3552, %3512 ], [ 1.000000e+00, %3481 ]
  %3683 = phi float [ %3553, %3512 ], [ 1.000000e+00, %3481 ]
  %3684 = phi float [ %3677, %3512 ], [ 0.000000e+00, %3481 ]
  %3685 = phi float [ %3678, %3512 ], [ 0.000000e+00, %3481 ]
  %3686 = phi float [ %3679, %3512 ], [ 0.000000e+00, %3481 ]
  %3687 = fmul fast float %3684, %3468
  %3688 = fmul fast float %3685, %3468
  %3689 = fmul fast float %3686, %3468
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3681, float %3682, float %3683, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call float @dx.op.dot3.f32(i32 55, float %3687, float %3688, float %3689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = select i1 %212, float %3690, float %3681
  %3693 = select i1 %212, float %3690, float %3682
  %3694 = select i1 %212, float 1.000000e+00, float %3683
  %3695 = select i1 %212, float %3691, float %3687
  %3696 = select i1 %212, float 0.000000e+00, float %3688
  %3697 = select i1 %212, float 0.000000e+00, float %3689
  %3698 = fmul fast float %3692, %3471
  %3699 = fmul fast float %3693, %3472
  %3700 = fmul fast float %3694, %3473
  %3701 = fadd fast float %3698, %3695
  %3702 = fadd fast float %3699, %3696
  %3703 = fadd fast float %3697, %3700
  %3704 = fmul fast float %3692, %3439
  %3705 = fmul fast float %3693, %3440
  %3706 = fmul fast float %3694, %3441
  %3707 = fmul fast float %72, 2.000000e+00
  %3708 = fmul fast float %3707, %3483
  %3709 = fmul fast float %73, 2.000000e+00
  %3710 = fmul fast float %3709, %3484
  %3711 = fsub fast float 1.000000e+00, %3708
  %3712 = fsub fast float 1.000000e+00, %3710
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.CBufRet.f32 %3713, 2
  %3717 = fmul fast float %3711, %3714
  %3718 = fmul fast float %3711, %3715
  %3719 = fmul fast float %3711, %3716
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.CBufRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.CBufRet.f32 %3720, 2
  %3724 = fmul fast float %3712, %3721
  %3725 = fmul fast float %3712, %3722
  %3726 = fmul fast float %3712, %3723
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = fadd fast float %3724, %3728
  %3732 = fadd fast float %3731, %3717
  %3733 = fadd fast float %3725, %3729
  %3734 = fadd fast float %3733, %3718
  %3735 = fadd fast float %3726, %3730
  %3736 = fadd fast float %3735, %3719
  %3737 = fmul fast float %3732, %173
  %3738 = fmul fast float %3734, %173
  %3739 = fmul fast float %3736, %173
  br label %3740

; <label>:3740                                    ; preds = %3680, %3438
  %3741 = phi float [ %3737, %3680 ], [ %120, %3438 ]
  %3742 = phi float [ %3738, %3680 ], [ %121, %3438 ]
  %3743 = phi float [ %3739, %3680 ], [ %122, %3438 ]
  %3744 = phi float [ %173, %3680 ], [ %63, %3438 ]
  %3745 = phi float [ %3701, %3680 ], [ %3471, %3438 ]
  %3746 = phi float [ %3702, %3680 ], [ %3472, %3438 ]
  %3747 = phi float [ %3703, %3680 ], [ %3473, %3438 ]
  %3748 = phi float [ %3704, %3680 ], [ %3439, %3438 ]
  %3749 = phi float [ %3705, %3680 ], [ %3440, %3438 ]
  %3750 = phi float [ %3706, %3680 ], [ %3441, %3438 ]
  %3751 = phi float [ %3681, %3680 ], [ 1.000000e+00, %3438 ]
  br i1 %3480, label %4906, label %3752

; <label>:3752                                    ; preds = %3740
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3757 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3772 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 3
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 3
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3778 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3779 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3780 = fcmp fast olt float %3779, -5.000000e-01
  %3781 = call float @dx.op.dot3.f32(i32 55, float %3741, float %3742, float %3743, float %3741, float %3742, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = call float @dx.op.unary.f32(i32 25, float %3781)  ; Rsqrt(value)
  %3783 = fmul fast float %3782, %3781
  %3784 = fmul fast float %3782, %3741
  %3785 = fmul fast float %3782, %3742
  %3786 = fmul fast float %3782, %3743
  %3787 = fadd fast float %3783, %3757
  %3788 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3786, float %3754, float %3755, float %3756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.i32 %3789, 1
  %3791 = and i32 %3790, 1
  %3792 = icmp ne i32 %3791, 0
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 2
  %3795 = fcmp fast ogt float %3794, 0.000000e+00
  %3796 = and i1 %3792, %3795
  br i1 %3796, label %3797, label %4203, !dx.controlflow.hints !95

; <label>:3797                                    ; preds = %3752
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 3
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 2
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3804 = fsub fast float %3801, %3803
  %3805 = and i32 %3790, 2
  %3806 = extractvalue %dx.types.CBufRet.i32 %3789, 0
  %3807 = call i32 @dx.op.binary.i32(i32 40, i32 %3806, i32 3)  ; UMin(a,b)
  %3808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.CBufRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3812 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3813 = fsub fast float %3809, %3811
  %3814 = fsub fast float %3810, %3812
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3817 = fcmp fast ogt float %3816, 0.000000e+00
  %3818 = fsub fast float -0.000000e+00, %3813
  %3819 = fsub fast float -0.000000e+00, %3814
  %3820 = call float @dx.op.dot2.f32(i32 54, float %3784, float %3785, float %3784, float %3785)  ; Dot2(ax,ay,bx,by)
  %3821 = call float @dx.op.dot2.f32(i32 54, float %3784, float %3785, float %3818, float %3819)  ; Dot2(ax,ay,bx,by)
  %3822 = fmul fast float %3821, 2.000000e+00
  %3823 = call float @dx.op.dot2.f32(i32 54, float %3818, float %3819, float %3818, float %3819)  ; Dot2(ax,ay,bx,by)
  %3824 = fmul fast float %3816, %3816
  %3825 = fsub fast float %3823, %3824
  %3826 = fmul fast float %3822, %3822
  %3827 = fmul fast float %3820, 4.000000e+00
  %3828 = fmul fast float %3827, %3825
  %3829 = fsub fast float %3826, %3828
  %3830 = fcmp fast ogt float %3829, 0.000000e+00
  br i1 %3830, label %3831, label %3846

; <label>:3831                                    ; preds = %3797
  %3832 = fcmp fast ogt float %3822, 0.000000e+00
  %3833 = call float @dx.op.unary.f32(i32 24, float %3829)  ; Sqrt(value)
  %3834 = fsub fast float -0.000000e+00, %3833
  %3835 = select i1 %3832, float %3833, float %3834
  %3836 = fadd fast float %3835, %3822
  %3837 = fmul float %3836, -5.000000e-01
  %3838 = fdiv fast float %3837, %3820
  %3839 = call float @dx.op.binary.f32(i32 35, float %3838, float 0.000000e+00)  ; FMax(a,b)
  %3840 = call float @dx.op.binary.f32(i32 36, float %3783, float %3839)  ; FMin(a,b)
  %3841 = fdiv fast float %3825, %3837
  %3842 = call float @dx.op.binary.f32(i32 35, float %3841, float 0.000000e+00)  ; FMax(a,b)
  %3843 = call float @dx.op.binary.f32(i32 36, float %3783, float %3842)  ; FMin(a,b)
  %3844 = call float @dx.op.binary.f32(i32 36, float %3840, float %3843)  ; FMin(a,b)
  %3845 = call float @dx.op.binary.f32(i32 35, float %3840, float %3843)  ; FMax(a,b)
  br label %3846

; <label>:3846                                    ; preds = %3831, %3797
  %3847 = phi float [ %3845, %3831 ], [ -1.000000e+00, %3797 ]
  %3848 = phi float [ %3844, %3831 ], [ -1.000000e+00, %3797 ]
  %3849 = phi i1 [ true, %3831 ], [ false, %3797 ]
  %3850 = and i1 %3817, %3849
  br i1 %3850, label %3851, label %3853

; <label>:3851                                    ; preds = %3846
  %3852 = fcmp fast oeq float %3848, %3847
  br i1 %3852, label %4156, label %3854

; <label>:3853                                    ; preds = %3846
  br i1 %3817, label %4156, label %3854

; <label>:3854                                    ; preds = %3853, %3851
  %3855 = phi float [ %3783, %3853 ], [ %3847, %3851 ]
  %3856 = phi float [ 0.000000e+00, %3853 ], [ %3848, %3851 ]
  %3857 = icmp ne i32 %3805, 0
  %3858 = fmul fast float %3855, %3786
  %3859 = fadd fast float %3858, %3799
  %3860 = fmul fast float %3859, %3855
  %3861 = select i1 %3857, float 0.000000e+00, float %3860
  %3862 = fcmp fast oeq float %3786, 0.000000e+00
  %3863 = fdiv fast float %3804, %3786
  %3864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3863)  ; FMax(a,b)
  %3865 = select i1 %3862, float %3855, float %3864
  %3866 = call float @dx.op.binary.f32(i32 36, float %3855, float %3865)  ; FMin(a,b)
  %3867 = fcmp fast ogt float %3786, 0.000000e+00
  %3868 = fcmp fast olt float %3804, 0.000000e+00
  br i1 %3867, label %3869, label %3926

; <label>:3869                                    ; preds = %3854
  %3870 = icmp eq i32 %3805, 0
  br i1 %3868, label %3871, label %3915

; <label>:3871                                    ; preds = %3869
  %3872 = select i1 %3870, float %3855, float 0.000000e+00
  %3873 = fsub fast float -0.000000e+00, %3872
  %3874 = call float @dx.op.unary.f32(i32 6, float %3873)  ; FAbs(value)
  %3875 = fmul fast float %3872, %3786
  %3876 = fadd fast float %3875, %3799
  %3877 = fmul fast float %3874, %3876
  %3878 = fsub fast float %3861, %3877
  %3879 = fsub fast float %3855, %3874
  %3880 = select i1 %3870, float %3879, float 0.000000e+00
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.CBufRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 3
  %3892 = call float @dx.op.binary.f32(i32 36, float %3878, float %3891)  ; FMin(a,b)
  %3893 = fmul fast float %3889, %3880
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fsub fast float %3886, %3882
  %3896 = fsub fast float %3887, %3883
  %3897 = fsub fast float %3888, %3884
  %3898 = fmul fast float %3894, %3895
  %3899 = fmul fast float %3894, %3896
  %3900 = fmul fast float %3894, %3897
  %3901 = fadd fast float %3898, %3882
  %3902 = fadd fast float %3899, %3883
  %3903 = fadd fast float %3900, %3884
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.CBufRet.f32 %3904, 1
  %3907 = fadd fast float %3906, %3905
  %3908 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3910 = extractvalue %dx.types.CBufRet.f32 %3904, 3
  %3911 = fadd fast float %3910, %3909
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = fmul fast float %3908, %3892
  %3914 = fmul fast float %3913, %3912
  br label %4156

; <label>:3915                                    ; preds = %3869
  br i1 %3870, label %3916, label %3937

; <label>:3916                                    ; preds = %3915
  %3917 = call float @dx.op.binary.f32(i32 36, float %3866, float %3856)  ; FMin(a,b)
  %3918 = fsub fast float %3866, %3917
  %3919 = fsub fast float %3918, %3855
  %3920 = call float @dx.op.unary.f32(i32 6, float %3919)  ; FAbs(value)
  %3921 = fadd fast float %3918, %3855
  %3922 = fmul fast float %3921, %3786
  %3923 = fadd fast float %3922, %3799
  %3924 = fmul fast float %3923, %3920
  %3925 = fsub fast float %3861, %3924
  br label %3937

; <label>:3926                                    ; preds = %3854
  br i1 %3868, label %3927, label %3937

; <label>:3927                                    ; preds = %3926
  %3928 = call float @dx.op.binary.f32(i32 35, float %3856, float %3866)  ; FMax(a,b)
  %3929 = icmp eq i32 %3805, 0
  %3930 = select i1 %3929, float %3866, float 0.000000e+00
  %3931 = fsub fast float -0.000000e+00, %3930
  %3932 = call float @dx.op.unary.f32(i32 6, float %3931)  ; FAbs(value)
  %3933 = fmul fast float %3930, %3786
  %3934 = fadd fast float %3933, %3799
  %3935 = fmul fast float %3932, %3934
  %3936 = fsub fast float %3861, %3935
  br label %3937

; <label>:3937                                    ; preds = %3927, %3926, %3916, %3915
  %3938 = phi float [ %3856, %3915 ], [ %3856, %3916 ], [ %3928, %3927 ], [ %3856, %3926 ]
  %3939 = phi float [ 0.000000e+00, %3915 ], [ %3920, %3916 ], [ %3932, %3927 ], [ 0.000000e+00, %3926 ]
  %3940 = phi float [ %3861, %3915 ], [ %3925, %3916 ], [ %3936, %3927 ], [ %3861, %3926 ]
  %3941 = phi float [ %3866, %3915 ], [ %3866, %3916 ], [ %3855, %3927 ], [ %3855, %3926 ]
  %3942 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 0
  store float -1.000000e+00, float* %3942, align 4, !tbaa !96, !noalias !98
  %3943 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 1
  store float -1.000000e+00, float* %3943, align 4, !tbaa !96, !noalias !98
  %3944 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 2
  store float -1.000000e+00, float* %3944, align 4, !tbaa !96, !noalias !98
  %3945 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 0
  store float -1.000000e+00, float* %3945, align 4, !tbaa !96, !noalias !98
  %3946 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 1
  store float -1.000000e+00, float* %3946, align 4, !tbaa !96, !noalias !98
  %3947 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 2
  store float -1.000000e+00, float* %3947, align 4, !tbaa !96, !noalias !98
  %3948 = icmp sgt i32 %3807, 0
  br i1 %3948, label %3949, label %4010

; <label>:3949                                    ; preds = %3937
  br label %3950

; <label>:3950                                    ; preds = %3999, %3949
  %3951 = phi i32 [ %4000, %3999 ], [ 0, %3949 ]
  %3952 = phi i32 [ %4001, %3999 ], [ 0, %3949 ]
  %3953 = add nuw i32 %3952, 171
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %3953)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3960 = fsub fast float %3955, %3958
  %3961 = fsub fast float %3956, %3959
  %3962 = extractvalue %dx.types.CBufRet.f32 %3954, 2
  %3963 = fsub fast float -0.000000e+00, %3960
  %3964 = fsub fast float -0.000000e+00, %3961
  %3965 = call float @dx.op.dot2.f32(i32 54, float %3784, float %3785, float %3963, float %3964)  ; Dot2(ax,ay,bx,by)
  %3966 = fmul fast float %3965, 2.000000e+00
  %3967 = call float @dx.op.dot2.f32(i32 54, float %3963, float %3964, float %3963, float %3964)  ; Dot2(ax,ay,bx,by)
  %3968 = fmul fast float %3962, %3962
  %3969 = fsub fast float %3967, %3968
  %3970 = fmul fast float %3966, %3966
  %3971 = fmul fast float %3827, %3969
  %3972 = fsub fast float %3970, %3971
  %3973 = fcmp fast ogt float %3972, 0.000000e+00
  br i1 %3973, label %3974, label %3989

; <label>:3974                                    ; preds = %3950
  %3975 = fcmp fast ogt float %3966, 0.000000e+00
  %3976 = call float @dx.op.unary.f32(i32 24, float %3972)  ; Sqrt(value)
  %3977 = fsub fast float -0.000000e+00, %3976
  %3978 = select i1 %3975, float %3976, float %3977
  %3979 = fadd fast float %3978, %3966
  %3980 = fmul float %3979, -5.000000e-01
  %3981 = fdiv fast float %3980, %3820
  %3982 = call float @dx.op.binary.f32(i32 35, float %3981, float 0.000000e+00)  ; FMax(a,b)
  %3983 = call float @dx.op.binary.f32(i32 36, float %3855, float %3982)  ; FMin(a,b)
  %3984 = fdiv fast float %3969, %3980
  %3985 = call float @dx.op.binary.f32(i32 35, float %3984, float 0.000000e+00)  ; FMax(a,b)
  %3986 = call float @dx.op.binary.f32(i32 36, float %3855, float %3985)  ; FMin(a,b)
  %3987 = call float @dx.op.binary.f32(i32 36, float %3983, float %3986)  ; FMin(a,b)
  %3988 = call float @dx.op.binary.f32(i32 35, float %3983, float %3986)  ; FMax(a,b)
  br label %3989

; <label>:3989                                    ; preds = %3974, %3950
  %3990 = phi float [ %3988, %3974 ], [ -1.000000e+00, %3950 ]
  %3991 = phi float [ %3987, %3974 ], [ -1.000000e+00, %3950 ]
  %3992 = phi i1 [ true, %3974 ], [ false, %3950 ]
  br i1 %3992, label %3993, label %3999

; <label>:3993                                    ; preds = %3989
  %3994 = call float @dx.op.binary.f32(i32 35, float %3938, float %3991)  ; FMax(a,b)
  %3995 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %3952
  store float %3994, float* %3995, align 4, !tbaa !96, !noalias !98
  %3996 = call float @dx.op.binary.f32(i32 35, float %3938, float %3990)  ; FMax(a,b)
  %3997 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %3952
  store float %3996, float* %3997, align 4, !tbaa !96, !noalias !98
  %3998 = add nsw i32 %3951, 1
  br label %3999

; <label>:3999                                    ; preds = %3993, %3989
  %4000 = phi i32 [ %3998, %3993 ], [ %3951, %3989 ]
  %4001 = add nuw nsw i32 %3952, 1
  %4002 = icmp eq i32 %4001, %3807
  br i1 %4002, label %4003, label %3950

; <label>:4003                                    ; preds = %3999
  %4004 = load float, float* %3944, align 4, !tbaa !96, !alias.scope !114, !noalias !117
  %4005 = load float, float* %3943, align 4, !tbaa !96, !alias.scope !120, !noalias !121
  %4006 = load float, float* %3942, align 4, !tbaa !96, !alias.scope !122, !noalias !123
  %4007 = load float, float* %3947, align 4, !tbaa !96, !alias.scope !124, !noalias !127
  %4008 = load float, float* %3946, align 4, !tbaa !96, !alias.scope !130, !noalias !131
  %4009 = load float, float* %3945, align 4, !tbaa !96, !alias.scope !132, !noalias !133
  br label %4010

; <label>:4010                                    ; preds = %4003, %3937
  %4011 = phi float [ -1.000000e+00, %3937 ], [ %4009, %4003 ]
  %4012 = phi float [ -1.000000e+00, %3937 ], [ %4008, %4003 ]
  %4013 = phi float [ -1.000000e+00, %3937 ], [ %4007, %4003 ]
  %4014 = phi float [ -1.000000e+00, %3937 ], [ %4006, %4003 ]
  %4015 = phi float [ -1.000000e+00, %3937 ], [ %4005, %4003 ]
  %4016 = phi float [ -1.000000e+00, %3937 ], [ %4004, %4003 ]
  %4017 = phi i32 [ 0, %3937 ], [ %4000, %4003 ]
  %4018 = call float @dx.op.binary.f32(i32 36, float %4015, float %4016)  ; FMin(a,b)
  %4019 = call float @dx.op.binary.f32(i32 36, float %4014, float %4018)  ; FMin(a,b)
  %4020 = call float @dx.op.binary.f32(i32 35, float %4014, float %4015)  ; FMax(a,b)
  %4021 = call float @dx.op.binary.f32(i32 36, float %4020, float %4016)  ; FMin(a,b)
  %4022 = call float @dx.op.binary.f32(i32 36, float %4014, float %4015)  ; FMin(a,b)
  %4023 = call float @dx.op.binary.f32(i32 35, float %4022, float %4021)  ; FMax(a,b)
  %4024 = call float @dx.op.binary.f32(i32 35, float %4015, float %4016)  ; FMax(a,b)
  %4025 = call float @dx.op.binary.f32(i32 35, float %4014, float %4024)  ; FMax(a,b)
  store float %4019, float* %3942, align 4, !tbaa !96, !alias.scope !122, !noalias !123
  store float %4023, float* %3943, align 4, !tbaa !96, !alias.scope !120, !noalias !121
  store float %4025, float* %3944, align 4, !tbaa !96, !alias.scope !114, !noalias !117
  %4026 = call float @dx.op.binary.f32(i32 36, float %4012, float %4013)  ; FMin(a,b)
  %4027 = call float @dx.op.binary.f32(i32 36, float %4011, float %4026)  ; FMin(a,b)
  %4028 = call float @dx.op.binary.f32(i32 35, float %4011, float %4012)  ; FMax(a,b)
  %4029 = call float @dx.op.binary.f32(i32 36, float %4028, float %4013)  ; FMin(a,b)
  %4030 = call float @dx.op.binary.f32(i32 36, float %4011, float %4012)  ; FMin(a,b)
  %4031 = call float @dx.op.binary.f32(i32 35, float %4030, float %4029)  ; FMax(a,b)
  %4032 = call float @dx.op.binary.f32(i32 35, float %4012, float %4013)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 35, float %4011, float %4032)  ; FMax(a,b)
  store float %4027, float* %3945, align 4, !tbaa !96, !alias.scope !132, !noalias !133
  store float %4031, float* %3946, align 4, !tbaa !96, !alias.scope !130, !noalias !131
  store float %4033, float* %3947, align 4, !tbaa !96, !alias.scope !124, !noalias !127
  %4034 = sub nsw i32 3, %4017
  %4035 = icmp sgt i32 %4034, 2
  br i1 %4035, label %4036, label %4074

; <label>:4036                                    ; preds = %4010
  %4037 = icmp eq i32 %3805, 0
  %4038 = fsub fast float %3855, %3939
  %4039 = select i1 %4037, float %4038, float %3939
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.CBufRet.f32 %4040, 2
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.CBufRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.CBufRet.f32 %4044, 3
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4051 = call float @dx.op.binary.f32(i32 36, float %3940, float %4050)  ; FMin(a,b)
  %4052 = fmul fast float %4048, %4039
  %4053 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4054 = fsub fast float %4045, %4041
  %4055 = fsub fast float %4046, %4042
  %4056 = fsub fast float %4047, %4043
  %4057 = fmul fast float %4053, %4054
  %4058 = fmul fast float %4053, %4055
  %4059 = fmul fast float %4053, %4056
  %4060 = fadd fast float %4057, %4041
  %4061 = fadd fast float %4058, %4042
  %4062 = fadd fast float %4059, %4043
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = fadd fast float %4065, %4064
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4069 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4070 = fadd fast float %4069, %4068
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = fmul fast float %4067, %4051
  %4073 = fmul fast float %4072, %4071
  br label %4156

; <label>:4074                                    ; preds = %4010
  %4075 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4034
  %4076 = load float, float* %4075, align 4, !tbaa !96, !noalias !98
  %4077 = fcmp fast olt float %4076, %3941
  %4078 = icmp sgt i32 %4017, 0
  %4079 = and i1 %4078, %4077
  br i1 %4079, label %4080, label %4117

; <label>:4080                                    ; preds = %4074
  br label %4081

; <label>:4081                                    ; preds = %4110, %4080
  %4082 = phi float [ %4111, %4110 ], [ %3939, %4080 ]
  %4083 = phi float [ %4112, %4110 ], [ %3940, %4080 ]
  %4084 = phi float [ %4092, %4110 ], [ %4076, %4080 ]
  %4085 = phi i32 [ %4089, %4110 ], [ %4034, %4080 ]
  %4086 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %4085
  %4087 = load float, float* %4086, align 4, !tbaa !96, !noalias !98
  %4088 = icmp slt i32 %4085, 2
  %4089 = add nsw i32 %4085, 1
  %4090 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4089
  %4091 = load float, float* %4090, align 4, !tbaa !96, !noalias !98
  %4092 = select i1 %4088, float %4091, float %3855
  %4093 = call float @dx.op.binary.f32(i32 36, float %4092, float %4087)  ; FMin(a,b)
  %4094 = call float @dx.op.binary.f32(i32 36, float %3941, float %4093)  ; FMin(a,b)
  %4095 = icmp eq i32 %3805, 0
  %4096 = fadd fast float %4094, %4084
  %4097 = fmul fast float %4096, %3786
  %4098 = fadd fast float %4097, %3799
  br i1 %4095, label %4104, label %4099

; <label>:4099                                    ; preds = %4081
  %4100 = fsub fast float %4094, %4084
  %4101 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4100)  ; FMax(a,b)
  %4102 = fmul fast float %4101, %4098
  %4103 = fadd fast float %4102, %4083
  br label %4110

; <label>:4104                                    ; preds = %4081
  %4105 = fsub fast float %4084, %4094
  %4106 = call float @dx.op.unary.f32(i32 6, float %4105)  ; FAbs(value)
  %4107 = fadd fast float %4106, %4082
  %4108 = fmul fast float %4106, %4098
  %4109 = fsub fast float %4083, %4108
  br label %4110

; <label>:4110                                    ; preds = %4104, %4099
  %4111 = phi float [ %4101, %4099 ], [ %4107, %4104 ]
  %4112 = phi float [ %4103, %4099 ], [ %4109, %4104 ]
  %4113 = fcmp fast olt float %4092, %3941
  %4114 = icmp slt i32 %4089, 3
  %4115 = and i1 %4114, %4113
  br i1 %4115, label %4081, label %4116

; <label>:4116                                    ; preds = %4110
  br label %4117

; <label>:4117                                    ; preds = %4116, %4074
  %4118 = phi float [ %3939, %4074 ], [ %4111, %4116 ]
  %4119 = phi float [ %3940, %4074 ], [ %4112, %4116 ]
  %4120 = fsub fast float %3855, %4118
  %4121 = select i1 %3857, float %4118, float %4120
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.CBufRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.CBufRet.f32 %4126, 2
  %4130 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4133 = call float @dx.op.binary.f32(i32 36, float %4119, float %4132)  ; FMin(a,b)
  %4134 = fmul fast float %4130, %4121
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = fsub fast float %4127, %4123
  %4137 = fsub fast float %4128, %4124
  %4138 = fsub fast float %4129, %4125
  %4139 = fmul fast float %4135, %4136
  %4140 = fmul fast float %4135, %4137
  %4141 = fmul fast float %4135, %4138
  %4142 = fadd fast float %4139, %4123
  %4143 = fadd fast float %4140, %4124
  %4144 = fadd fast float %4141, %4125
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4148 = fadd fast float %4147, %4146
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4151 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4152 = fadd fast float %4151, %4150
  %4153 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4154 = fmul fast float %4149, %4133
  %4155 = fmul fast float %4154, %4153
  br label %4156

; <label>:4156                                    ; preds = %4117, %4036, %3871, %3853, %3851
  %4157 = phi float [ %3880, %3871 ], [ %4039, %4036 ], [ %4121, %4117 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3853 ]
  %4158 = phi float [ %3914, %3871 ], [ %4073, %4036 ], [ %4155, %4117 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3853 ]
  %4159 = phi float [ %3901, %3871 ], [ %4060, %4036 ], [ %4142, %4117 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3853 ]
  %4160 = phi float [ %3902, %3871 ], [ %4061, %4036 ], [ %4143, %4117 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3853 ]
  %4161 = phi float [ %3903, %3871 ], [ %4062, %4036 ], [ %4144, %4117 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3853 ]
  %4162 = fmul fast float %3794, %4158
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4165 = fsub fast float %3801, %4164
  %4166 = fcmp fast olt float %4162, -2.000000e+01
  %4167 = call float @dx.op.unary.f32(i32 21, float %4162)  ; Exp(value)
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 2
  %4170 = extractvalue %dx.types.CBufRet.f32 %4168, 3
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4173 = fmul fast float %4170, %4165
  %4174 = call float @dx.op.unary.f32(i32 7, float %4173)  ; Saturate(value)
  %4175 = fsub fast float 1.000000e+00, %4174
  %4176 = fmul fast float %3786, 5.000000e-01
  %4177 = fadd fast float %4176, 5.000000e-01
  %4178 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4179 = fsub fast float 1.000000e+00, %4178
  %4180 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4175)  ; FMax(a,b)
  %4181 = fdiv fast float %4179, %4180
  %4182 = fsub fast float %4165, %3743
  %4183 = call float @dx.op.unary.f32(i32 6, float %4182)  ; FAbs(value)
  %4184 = fmul fast float %4183, %4169
  %4185 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4186 = fsub fast float 1.000000e+00, %4184
  %4187 = fmul fast float %4186, %4185
  %4188 = fadd fast float %4187, %4184
  %4189 = fmul fast float %4172, %4165
  %4190 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4191 = fsub fast float 1.000000e+00, %4188
  %4192 = fmul fast float %4191, %4190
  %4193 = fadd fast float %4192, %4188
  %4194 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4195 = fadd fast float %4167, -1.000000e+00
  %4196 = select i1 %4166, float -1.000000e+00, float %4195
  %4197 = fmul fast float %4194, %4196
  %4198 = fadd fast float %4197, 1.000000e+00
  %4199 = fsub fast float -0.000000e+00, %4197
  %4200 = fmul fast float %4159, %4199
  %4201 = fmul fast float %4160, %4199
  %4202 = fmul fast float %4161, %4199
  br label %4203

; <label>:4203                                    ; preds = %4156, %3752
  %4204 = phi float [ %4157, %4156 ], [ 0.000000e+00, %3752 ]
  %4205 = phi float [ %4198, %4156 ], [ 1.000000e+00, %3752 ]
  %4206 = phi float [ %4200, %4156 ], [ 0.000000e+00, %3752 ]
  %4207 = phi float [ %4201, %4156 ], [ 0.000000e+00, %3752 ]
  %4208 = phi float [ %4202, %4156 ], [ 0.000000e+00, %3752 ]
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 1
  %4211 = fsub fast float 1.000000e+00, %4205
  %4212 = fmul fast float %4211, %3787
  %4213 = fmul fast float %4212, %4210
  %4214 = fsub fast float %3787, %4213
  br i1 %3780, label %4215, label %4244, !dx.controlflow.hints !134

; <label>:4215                                    ; preds = %4203
  %4216 = fmul fast float %3788, %3777
  %4217 = fadd fast float %4216, %3778
  %4218 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4219 = fmul fast float %3759, %4214
  %4220 = fsub fast float -0.000000e+00, %4219
  %4221 = fmul fast float %3760, %4214
  %4222 = fsub fast float -0.000000e+00, %4221
  %4223 = call float @dx.op.unary.f32(i32 21, float %4220)  ; Exp(value)
  %4224 = call float @dx.op.unary.f32(i32 21, float %4222)  ; Exp(value)
  %4225 = call float @dx.op.binary.f32(i32 35, float %3767, float %4223)  ; FMax(a,b)
  %4226 = call float @dx.op.binary.f32(i32 35, float %3767, float %4224)  ; FMax(a,b)
  %4227 = fsub fast float %4226, %4225
  %4228 = fmul fast float %4227, %4218
  %4229 = fadd fast float %4228, %4225
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = fsub fast float %3764, %3769
  %4232 = fsub fast float %3765, %3770
  %4233 = fsub fast float %3766, %3771
  %4234 = fmul fast float %4218, %4231
  %4235 = fmul fast float %4218, %4232
  %4236 = fmul fast float %4218, %4233
  %4237 = fadd fast float %4234, %3769
  %4238 = fadd fast float %4235, %3770
  %4239 = fadd fast float %4236, %3771
  %4240 = fsub fast float 1.000000e+00, %4230
  %4241 = fmul fast float %4240, %4237
  %4242 = fmul fast float %4240, %4238
  %4243 = fmul fast float %4240, %4239
  br label %4303

; <label>:4244                                    ; preds = %4203
  %4245 = fmul fast float %4214, %3776
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = fsub fast float 2.000000e+00, %4246
  %4248 = fmul fast float %4246, 9.921875e-01
  %4249 = fmul fast float %4248, %4247
  %4250 = fadd fast float %4249, 3.906250e-03
  %4251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %4250, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = fsub fast float %4246, %4252
  %4254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4253)  ; FMax(a,b)
  %4255 = fmul fast float %3762, %3743
  %4256 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4257 = fcmp fast ogt float %4256, 0x3EB0C6F7A0000000
  br i1 %4257, label %4258, label %4264, !dx.controlflow.hints !135

; <label>:4258                                    ; preds = %4244
  %4259 = fmul fast float %4255, 0xBFF7154760000000
  %4260 = call float @dx.op.unary.f32(i32 21, float %4259)  ; Exp(value)
  %4261 = fsub fast float 1.000000e+00, %4260
  %4262 = fdiv fast float %4261, %4255
  %4263 = fmul fast float %4262, %3772
  br label %4264

; <label>:4264                                    ; preds = %4258, %4244
  %4265 = phi float [ %4263, %4258 ], [ %3772, %4244 ]
  %4266 = fadd fast float %4265, %3774
  %4267 = fmul fast float %4266, %4254
  %4268 = fmul fast float %3759, %4267
  %4269 = fsub fast float -0.000000e+00, %4268
  %4270 = fmul fast float %3760, %4267
  %4271 = fsub fast float -0.000000e+00, %4270
  %4272 = fmul fast float %3761, %4267
  %4273 = fsub fast float -0.000000e+00, %4272
  %4274 = call float @dx.op.unary.f32(i32 21, float %4269)  ; Exp(value)
  %4275 = call float @dx.op.unary.f32(i32 21, float %4271)  ; Exp(value)
  %4276 = call float @dx.op.unary.f32(i32 21, float %4273)  ; Exp(value)
  %4277 = fmul fast float %3788, %3788
  %4278 = fadd fast float %4277, 1.000000e+00
  %4279 = fmul fast float %4278, 0x3FAE8EC8A0000000
  %4280 = fmul fast float %4279, %3769
  %4281 = fmul fast float %4279, %3770
  %4282 = fmul fast float %4279, %3771
  %4283 = fmul fast float %3788, %3767
  %4284 = fsub fast float 1.000000e+00, %4283
  %4285 = fmul fast float %3767, %3767
  %4286 = fsub fast float 1.000000e+00, %4285
  %4287 = fmul fast float %4286, 0x3FB45F3060000000
  %4288 = fmul fast float %4284, %4284
  %4289 = fdiv fast float 1.000000e+00, %4288
  %4290 = fmul fast float %4287, %4289
  %4291 = fmul fast float %4290, %3764
  %4292 = fmul fast float %4290, %3765
  %4293 = fmul fast float %4290, %3766
  %4294 = fadd fast float %4291, %4280
  %4295 = fadd fast float %4292, %4281
  %4296 = fadd fast float %4293, %4282
  %4297 = fsub fast float 1.000000e+00, %4274
  %4298 = fsub fast float 1.000000e+00, %4275
  %4299 = fsub fast float 1.000000e+00, %4276
  %4300 = fmul fast float %4294, %4297
  %4301 = fmul fast float %4295, %4298
  %4302 = fmul fast float %4296, %4299
  br label %4303

; <label>:4303                                    ; preds = %4264, %4215
  %4304 = phi float [ %4241, %4215 ], [ %4300, %4264 ]
  %4305 = phi float [ %4242, %4215 ], [ %4301, %4264 ]
  %4306 = phi float [ %4243, %4215 ], [ %4302, %4264 ]
  %4307 = phi float [ %4230, %4215 ], [ %4274, %4264 ]
  %4308 = phi float [ %4230, %4215 ], [ %4275, %4264 ]
  %4309 = phi float [ %4230, %4215 ], [ %4276, %4264 ]
  br i1 %3796, label %4310, label %4508, !dx.controlflow.hints !136

; <label>:4310                                    ; preds = %4303
  %4311 = extractvalue %dx.types.CBufRet.f32 %4209, 0
  %4312 = fmul fast float %4311, %4211
  %4313 = fsub fast float %4206, %4304
  %4314 = fsub fast float %4207, %4305
  %4315 = fsub fast float %4208, %4306
  %4316 = fmul fast float %4312, %4313
  %4317 = fmul fast float %4312, %4314
  %4318 = fmul fast float %4312, %4315
  %4319 = fadd fast float %4316, %4304
  %4320 = fadd fast float %4317, %4305
  %4321 = fadd fast float %4318, %4306
  %4322 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4307)  ; FMax(a,b)
  %4323 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4308)  ; FMax(a,b)
  %4324 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4309)  ; FMax(a,b)
  %4325 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4205)  ; FMax(a,b)
  %4326 = call float @dx.op.binary.f32(i32 35, float %4204, float %4214)  ; FMax(a,b)
  %4327 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4326)  ; FMax(a,b)
  %4328 = fdiv fast float %4204, %4327
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fdiv fast float %4214, %4327
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fcmp fast une float %4325, 1.000000e+00
  br i1 %4332, label %4333, label %4346, !dx.controlflow.hints !137

; <label>:4333                                    ; preds = %4310
  %4334 = call float @dx.op.unary.f32(i32 23, float %4325)  ; Log(value)
  %4335 = fmul fast float %4334, 0x3FE62E4300000000
  %4336 = fmul fast float %4206, %4335
  %4337 = fsub fast float -0.000000e+00, %4336
  %4338 = fmul fast float %4207, %4335
  %4339 = fsub fast float -0.000000e+00, %4338
  %4340 = fmul fast float %4208, %4335
  %4341 = fsub fast float -0.000000e+00, %4340
  %4342 = fsub fast float 1.000000e+00, %4325
  %4343 = fdiv fast float %4337, %4342
  %4344 = fdiv fast float %4339, %4342
  %4345 = fdiv fast float %4341, %4342
  br label %4346

; <label>:4346                                    ; preds = %4333, %4310
  %4347 = phi float [ %4343, %4333 ], [ %4206, %4310 ]
  %4348 = phi float [ %4344, %4333 ], [ %4207, %4310 ]
  %4349 = phi float [ %4345, %4333 ], [ %4208, %4310 ]
  %4350 = phi float [ %4335, %4333 ], [ 0.000000e+00, %4310 ]
  %4351 = fcmp fast une float %4322, 1.000000e+00
  br i1 %4351, label %4352, label %4359, !dx.controlflow.hints !138

; <label>:4352                                    ; preds = %4346
  %4353 = call float @dx.op.unary.f32(i32 23, float %4322)  ; Log(value)
  %4354 = fmul fast float %4353, 0x3FE62E4300000000
  %4355 = fmul fast float %4319, %4354
  %4356 = fsub fast float -0.000000e+00, %4355
  %4357 = fsub fast float 1.000000e+00, %4322
  %4358 = fdiv fast float %4356, %4357
  br label %4359

; <label>:4359                                    ; preds = %4352, %4346
  %4360 = phi float [ %4358, %4352 ], [ %4319, %4346 ]
  %4361 = phi float [ %4354, %4352 ], [ 0.000000e+00, %4346 ]
  %4362 = fcmp fast une float %4323, 1.000000e+00
  br i1 %4362, label %4363, label %4370, !dx.controlflow.hints !138

; <label>:4363                                    ; preds = %4359
  %4364 = call float @dx.op.unary.f32(i32 23, float %4323)  ; Log(value)
  %4365 = fmul fast float %4364, 0x3FE62E4300000000
  %4366 = fmul fast float %4320, %4365
  %4367 = fsub fast float -0.000000e+00, %4366
  %4368 = fsub fast float 1.000000e+00, %4323
  %4369 = fdiv fast float %4367, %4368
  br label %4370

; <label>:4370                                    ; preds = %4363, %4359
  %4371 = phi float [ %4369, %4363 ], [ %4320, %4359 ]
  %4372 = phi float [ %4365, %4363 ], [ 0.000000e+00, %4359 ]
  %4373 = fcmp fast une float %4324, 1.000000e+00
  br i1 %4373, label %4374, label %4381, !dx.controlflow.hints !138

; <label>:4374                                    ; preds = %4370
  %4375 = call float @dx.op.unary.f32(i32 23, float %4324)  ; Log(value)
  %4376 = fmul fast float %4375, 0x3FE62E4300000000
  %4377 = fmul fast float %4321, %4376
  %4378 = fsub fast float -0.000000e+00, %4377
  %4379 = fsub fast float 1.000000e+00, %4324
  %4380 = fdiv fast float %4378, %4379
  br label %4381

; <label>:4381                                    ; preds = %4374, %4370
  %4382 = phi float [ %4380, %4374 ], [ %4321, %4370 ]
  %4383 = phi float [ %4376, %4374 ], [ 0.000000e+00, %4370 ]
  %4384 = fmul fast float %4347, %4331
  %4385 = fmul fast float %4348, %4331
  %4386 = fmul fast float %4349, %4331
  %4387 = fmul fast float %4350, %4331
  %4388 = fmul fast float %4360, %4329
  %4389 = fmul fast float %4371, %4329
  %4390 = fmul fast float %4382, %4329
  %4391 = fmul fast float %4361, %4329
  %4392 = fmul fast float %4372, %4329
  %4393 = fmul fast float %4383, %4329
  %4394 = fadd fast float %4388, %4384
  %4395 = fadd fast float %4389, %4385
  %4396 = fadd fast float %4390, %4386
  %4397 = fadd fast float %4391, %4387
  %4398 = fadd fast float %4392, %4387
  %4399 = fadd fast float %4393, %4387
  %4400 = fcmp fast une float %4397, 0.000000e+00
  br i1 %4400, label %4401, label %4408, !dx.controlflow.hints !139

; <label>:4401                                    ; preds = %4381
  %4402 = fmul fast float %4397, 0x3FF7154760000000
  %4403 = call float @dx.op.unary.f32(i32 21, float %4402)  ; Exp(value)
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = fmul fast float %4394, %4404
  %4406 = fsub fast float -0.000000e+00, %4405
  %4407 = fdiv fast float %4406, %4397
  br label %4408

; <label>:4408                                    ; preds = %4401, %4381
  %4409 = phi float [ %4403, %4401 ], [ 1.000000e+00, %4381 ]
  %4410 = phi float [ %4407, %4401 ], [ %4394, %4381 ]
  %4411 = fcmp fast une float %4398, 0.000000e+00
  br i1 %4411, label %4412, label %4419, !dx.controlflow.hints !139

; <label>:4412                                    ; preds = %4408
  %4413 = fmul fast float %4398, 0x3FF7154760000000
  %4414 = call float @dx.op.unary.f32(i32 21, float %4413)  ; Exp(value)
  %4415 = fsub fast float 1.000000e+00, %4414
  %4416 = fmul fast float %4395, %4415
  %4417 = fsub fast float -0.000000e+00, %4416
  %4418 = fdiv fast float %4417, %4398
  br label %4419

; <label>:4419                                    ; preds = %4412, %4408
  %4420 = phi float [ %4414, %4412 ], [ 1.000000e+00, %4408 ]
  %4421 = phi float [ %4418, %4412 ], [ %4395, %4408 ]
  %4422 = fcmp fast une float %4399, 0.000000e+00
  br i1 %4422, label %4423, label %4430, !dx.controlflow.hints !139

; <label>:4423                                    ; preds = %4419
  %4424 = fmul fast float %4399, 0x3FF7154760000000
  %4425 = call float @dx.op.unary.f32(i32 21, float %4424)  ; Exp(value)
  %4426 = fsub fast float 1.000000e+00, %4425
  %4427 = fmul fast float %4396, %4426
  %4428 = fsub fast float -0.000000e+00, %4427
  %4429 = fdiv fast float %4428, %4399
  br label %4430

; <label>:4430                                    ; preds = %4423, %4419
  %4431 = phi float [ %4425, %4423 ], [ 1.000000e+00, %4419 ]
  %4432 = phi float [ %4429, %4423 ], [ %4396, %4419 ]
  %4433 = fcmp fast ogt float %4329, %4331
  br i1 %4433, label %4434, label %4454

; <label>:4434                                    ; preds = %4430
  %4435 = fsub fast float 1.000000e+00, %4331
  %4436 = fmul fast float %4347, %4435
  %4437 = fmul fast float %4348, %4435
  %4438 = fmul fast float %4349, %4435
  %4439 = fmul fast float %4350, %4435
  %4440 = fcmp fast une float %4439, 0.000000e+00
  br i1 %4440, label %4441, label %4492, !dx.controlflow.hints !140

; <label>:4441                                    ; preds = %4434
  %4442 = fmul fast float %4439, 0x3FF7154760000000
  %4443 = call float @dx.op.unary.f32(i32 21, float %4442)  ; Exp(value)
  %4444 = fsub fast float 1.000000e+00, %4443
  %4445 = fmul fast float %4436, %4444
  %4446 = fsub fast float -0.000000e+00, %4445
  %4447 = fmul fast float %4437, %4444
  %4448 = fsub fast float -0.000000e+00, %4447
  %4449 = fmul fast float %4438, %4444
  %4450 = fsub fast float -0.000000e+00, %4449
  %4451 = fdiv fast float %4446, %4439
  %4452 = fdiv fast float %4448, %4439
  %4453 = fdiv fast float %4450, %4439
  br label %4492

; <label>:4454                                    ; preds = %4430
  %4455 = fsub fast float 1.000000e+00, %4329
  %4456 = fmul fast float %4360, %4455
  %4457 = fmul fast float %4371, %4455
  %4458 = fmul fast float %4382, %4455
  %4459 = fmul fast float %4361, %4455
  %4460 = fmul fast float %4372, %4455
  %4461 = fmul fast float %4383, %4455
  %4462 = fcmp fast une float %4459, 0.000000e+00
  br i1 %4462, label %4463, label %4470, !dx.controlflow.hints !139

; <label>:4463                                    ; preds = %4454
  %4464 = fmul fast float %4459, 0x3FF7154760000000
  %4465 = call float @dx.op.unary.f32(i32 21, float %4464)  ; Exp(value)
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = fmul fast float %4456, %4466
  %4468 = fsub fast float -0.000000e+00, %4467
  %4469 = fdiv fast float %4468, %4459
  br label %4470

; <label>:4470                                    ; preds = %4463, %4454
  %4471 = phi float [ %4469, %4463 ], [ %4456, %4454 ]
  %4472 = phi float [ %4465, %4463 ], [ 1.000000e+00, %4454 ]
  %4473 = fcmp fast une float %4460, 0.000000e+00
  br i1 %4473, label %4474, label %4481, !dx.controlflow.hints !139

; <label>:4474                                    ; preds = %4470
  %4475 = fmul fast float %4460, 0x3FF7154760000000
  %4476 = call float @dx.op.unary.f32(i32 21, float %4475)  ; Exp(value)
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = fmul fast float %4457, %4477
  %4479 = fsub fast float -0.000000e+00, %4478
  %4480 = fdiv fast float %4479, %4460
  br label %4481

; <label>:4481                                    ; preds = %4474, %4470
  %4482 = phi float [ %4480, %4474 ], [ %4457, %4470 ]
  %4483 = phi float [ %4476, %4474 ], [ 1.000000e+00, %4470 ]
  %4484 = fcmp fast une float %4461, 0.000000e+00
  br i1 %4484, label %4485, label %4492, !dx.controlflow.hints !139

; <label>:4485                                    ; preds = %4481
  %4486 = fmul fast float %4461, 0x3FF7154760000000
  %4487 = call float @dx.op.unary.f32(i32 21, float %4486)  ; Exp(value)
  %4488 = fsub fast float 1.000000e+00, %4487
  %4489 = fmul fast float %4458, %4488
  %4490 = fsub fast float -0.000000e+00, %4489
  %4491 = fdiv fast float %4490, %4461
  br label %4492

; <label>:4492                                    ; preds = %4485, %4481, %4441, %4434
  %4493 = phi float [ %4491, %4485 ], [ %4453, %4441 ], [ %4438, %4434 ], [ %4458, %4481 ]
  %4494 = phi float [ %4482, %4485 ], [ %4452, %4441 ], [ %4437, %4434 ], [ %4482, %4481 ]
  %4495 = phi float [ %4471, %4485 ], [ %4451, %4441 ], [ %4436, %4434 ], [ %4471, %4481 ]
  %4496 = phi float [ %4487, %4485 ], [ %4443, %4441 ], [ 1.000000e+00, %4434 ], [ 1.000000e+00, %4481 ]
  %4497 = phi float [ %4483, %4485 ], [ %4443, %4441 ], [ 1.000000e+00, %4434 ], [ %4483, %4481 ]
  %4498 = phi float [ %4472, %4485 ], [ %4443, %4441 ], [ 1.000000e+00, %4434 ], [ %4472, %4481 ]
  %4499 = fmul fast float %4498, %4410
  %4500 = fmul fast float %4497, %4421
  %4501 = fmul fast float %4496, %4432
  %4502 = fadd fast float %4499, %4495
  %4503 = fadd fast float %4500, %4494
  %4504 = fadd fast float %4501, %4493
  %4505 = fmul fast float %4498, %4409
  %4506 = fmul fast float %4497, %4420
  %4507 = fmul fast float %4496, %4431
  br label %4508

; <label>:4508                                    ; preds = %4492, %4303
  %4509 = phi float [ %4507, %4492 ], [ %4309, %4303 ]
  %4510 = phi float [ %4506, %4492 ], [ %4308, %4303 ]
  %4511 = phi float [ %4505, %4492 ], [ %4307, %4303 ]
  %4512 = phi float [ %4504, %4492 ], [ %4306, %4303 ]
  %4513 = phi float [ %4503, %4492 ], [ %4305, %4303 ]
  %4514 = phi float [ %4502, %4492 ], [ %4304, %4303 ]
  %4515 = fmul fast float %4514, %3468
  %4516 = fmul fast float %4513, %3468
  %4517 = fmul fast float %4512, %3468
  %4518 = fmul fast float %4511, %3751
  %4519 = call float @dx.op.dot3.f32(i32 55, float %4511, float %4510, float %4509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4520 = call float @dx.op.dot3.f32(i32 55, float %4515, float %4516, float %4517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4521 = select i1 %212, float %4519, float %4511
  %4522 = select i1 %212, float %4519, float %4510
  %4523 = select i1 %212, float 1.000000e+00, float %4509
  %4524 = select i1 %212, float %4520, float %4515
  %4525 = select i1 %212, float 0.000000e+00, float %4516
  %4526 = select i1 %212, float 0.000000e+00, float %4517
  %4527 = fmul fast float %4521, %3745
  %4528 = fmul fast float %4522, %3746
  %4529 = fmul fast float %4523, %3747
  %4530 = fadd fast float %4527, %4524
  %4531 = fadd fast float %4528, %4525
  %4532 = fadd fast float %4526, %4529
  %4533 = fmul fast float %4521, %3748
  %4534 = fmul fast float %4522, %3749
  %4535 = fmul fast float %4523, %3750
  %4536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.i32 %4536, 0
  %4538 = icmp eq i32 %4537, 0
  br i1 %4538, label %4906, label %4539, !dx.controlflow.hints !141

; <label>:4539                                    ; preds = %4508
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 2
  %4542 = extractvalue %dx.types.CBufRet.f32 %4540, 3
  %4543 = fmul fast float %4541, %72
  %4544 = fmul fast float %4542, %73
  %4545 = fmul fast float %4543, 2.000000e+00
  %4546 = fmul fast float %4544, 2.000000e+00
  %4547 = fsub fast float 1.000000e+00, %4545
  %4548 = fsub fast float 1.000000e+00, %4546
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.CBufRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.CBufRet.f32 %4549, 2
  %4553 = fmul fast float %4547, %4550
  %4554 = fmul fast float %4547, %4551
  %4555 = fmul fast float %4547, %4552
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4559 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4560 = fmul fast float %4548, %4557
  %4561 = fmul fast float %4548, %4558
  %4562 = fmul fast float %4548, %4559
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.CBufRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.CBufRet.f32 %4563, 2
  %4567 = fadd fast float %4560, %4564
  %4568 = fadd fast float %4567, %4553
  %4569 = fadd fast float %4561, %4565
  %4570 = fadd fast float %4569, %4554
  %4571 = fadd fast float %4562, %4566
  %4572 = fadd fast float %4571, %4555
  %4573 = fmul fast float %4568, %3744
  %4574 = fmul fast float %4570, %3744
  %4575 = fmul fast float %4572, %3744
  %4576 = fmul fast float %4573, %4573
  %4577 = fmul fast float %4574, %4574
  %4578 = fadd fast float %4576, %4577
  %4579 = fmul fast float %4575, %4575
  %4580 = fadd fast float %4578, %4579
  %4581 = call float @dx.op.unary.f32(i32 24, float %4580)  ; Sqrt(value)
  %4582 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %4583 = fsub fast float %4581, %4582
  %4584 = extractvalue %dx.types.CBufRet.f32 %3469, 2
  %4585 = fmul fast float %4583, %4584
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fadd fast float %4586, -5.000000e-01
  %4588 = fmul fast float %4587, 2.000000e+00
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 2
  %4591 = call float @dx.op.binary.f32(i32 36, float %4590, float %4588)  ; FMin(a,b)
  %4592 = fsub fast float -0.000000e+00, %4590
  %4593 = fcmp fast ogt float %4591, %4592
  br i1 %4593, label %4594, label %4906, !dx.controlflow.hints !142

; <label>:4594                                    ; preds = %4539
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 3
  %4597 = fcmp fast ogt float %4596, 0.000000e+00
  br i1 %4597, label %4598, label %4673, !dx.controlflow.hints !143

; <label>:4598                                    ; preds = %4594
  %4599 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %4600 = extractvalue %dx.types.Dimensions %4599, 0
  %4601 = sitofp i32 %4600 to float
  %4602 = extractvalue %dx.types.Dimensions %4599, 1
  %4603 = sitofp i32 %4602 to float
  %4604 = fmul fast float %4543, %4601
  %4605 = fmul fast float %4544, %4603
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4608 = fsub fast float -0.000000e+00, %4607
  %4609 = fptoui float %4608 to i32
  %4610 = fptoui float %4604 to i32
  %4611 = fptoui float %4605 to i32
  %4612 = and i32 %4609, 31
  %4613 = lshr i32 %4610, %4612
  %4614 = lshr i32 %4611, %4612
  %4615 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %4609, i32 %4613, i32 %4614, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = fcmp fast olt float %4616, -1.000000e+00
  %4618 = fcmp fast ogt float %4616, -1.000000e+00
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4621 = select i1 %4618, float %4620, float 1.000000e+00
  %4622 = fadd fast float %4616, 1.000000e+00
  %4623 = fmul fast float %4621, %4622
  %4624 = call float @dx.op.unary.f32(i32 6, float %4623)  ; FAbs(value)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4626 = fcmp fast oge float %4624, %4625
  %4627 = select i1 %4626, float 0x4197782600000000, float %4624
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.CBufRet.f32 %4628, 1
  %4631 = extractvalue %dx.types.CBufRet.f32 %4628, 2
  %4632 = select i1 %4617, float %4629, float %4550
  %4633 = select i1 %4617, float %4630, float %4551
  %4634 = select i1 %4617, float %4631, float %4552
  %4635 = fmul fast float %4632, %4547
  %4636 = fmul fast float %4633, %4547
  %4637 = fmul fast float %4634, %4547
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4642 = select i1 %4617, float %4639, float %4557
  %4643 = select i1 %4617, float %4640, float %4558
  %4644 = select i1 %4617, float %4641, float %4559
  %4645 = fmul fast float %4642, %4548
  %4646 = fmul fast float %4643, %4548
  %4647 = fmul fast float %4644, %4548
  %4648 = fadd fast float %4645, %4635
  %4649 = fadd fast float %4646, %4636
  %4650 = fadd fast float %4647, %4637
  %4651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.CBufRet.f32 %4651, 1
  %4654 = extractvalue %dx.types.CBufRet.f32 %4651, 2
  %4655 = select i1 %4617, float %4652, float %4564
  %4656 = select i1 %4617, float %4653, float %4565
  %4657 = select i1 %4617, float %4654, float %4566
  %4658 = fadd fast float %4648, %4655
  %4659 = fadd fast float %4649, %4656
  %4660 = fadd fast float %4650, %4657
  %4661 = fmul fast float %4658, %4627
  %4662 = fmul fast float %4659, %4627
  %4663 = fmul fast float %4660, %4627
  %4664 = fmul fast float %4661, %4661
  %4665 = fmul fast float %4662, %4662
  %4666 = fadd fast float %4664, %4665
  %4667 = fmul fast float %4663, %4663
  %4668 = fadd fast float %4666, %4667
  %4669 = call float @dx.op.unary.f32(i32 24, float %4668)  ; Sqrt(value)
  %4670 = fsub fast float %4669, %4582
  %4671 = fmul fast float %4670, %4584
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  br label %4673

; <label>:4673                                    ; preds = %4598, %4594
  %4674 = phi float [ %4672, %4598 ], [ 1.000000e+00, %4594 ]
  %4675 = fmul fast float %4591, 5.000000e-01
  %4676 = fadd fast float %4675, 5.000000e-01
  %4677 = call float @dx.op.unary.f32(i32 22, float %4676)  ; Frc(value)
  %4678 = call float @dx.op.unary.f32(i32 27, float %4677)  ; Round_ni(value)
  %4679 = call float @dx.op.unary.f32(i32 22, float %4677)  ; Frc(value)
  %4680 = fmul fast float %4679, 2.000000e+00
  %4681 = fadd fast float %4680, -1.000000e+00
  %4682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %4543, float %4544, float %4678, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.ResRet.f32 %4682, 1
  %4685 = extractvalue %dx.types.ResRet.f32 %4682, 2
  %4686 = extractvalue %dx.types.ResRet.f32 %4682, 3
  %4687 = fadd fast float %4683, -5.000000e-01
  %4688 = fadd fast float %4685, -5.000000e-01
  %4689 = fmul fast float %4687, 0xBFD5555560000000
  %4690 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4688, float %4689)  ; FMad(a,b,c)
  %4691 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4684, float 0.000000e+00)  ; FMad(a,b,c)
  %4692 = fadd fast float %4691, %4686
  %4693 = fmul fast float %4687, -7.500000e-01
  %4694 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4688, float %4693)  ; FMad(a,b,c)
  %4695 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4684, float 0.000000e+00)  ; FMad(a,b,c)
  %4696 = fadd fast float %4695, %4686
  %4697 = call float @dx.op.binary.f32(i32 35, float %4690, float -1.000000e+00)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4692, float -1.000000e+00)  ; FMax(a,b)
  %4699 = call float @dx.op.binary.f32(i32 35, float %4694, float -1.000000e+00)  ; FMax(a,b)
  %4700 = call float @dx.op.binary.f32(i32 35, float %4696, float -1.000000e+00)  ; FMax(a,b)
  %4701 = call float @dx.op.binary.f32(i32 36, float %4697, float 1.000000e+00)  ; FMin(a,b)
  %4702 = call float @dx.op.binary.f32(i32 36, float %4698, float 1.000000e+00)  ; FMin(a,b)
  %4703 = call float @dx.op.binary.f32(i32 36, float %4699, float 1.000000e+00)  ; FMin(a,b)
  %4704 = call float @dx.op.binary.f32(i32 36, float %4700, float 1.000000e+00)  ; FMin(a,b)
  %4705 = fcmp fast olt float %4701, 0x3FEFFF8020000000
  br i1 %4705, label %4706, label %4821, !dx.controlflow.hints !144

; <label>:4706                                    ; preds = %4673
  %4707 = extractvalue %dx.types.CBufRet.f32 %4589, 3
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4711 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4712 = extractvalue %dx.types.CBufRet.f32 %4708, 3
  %4713 = fsub fast float %4709, %4701
  %4714 = fsub fast float %4710, %4702
  %4715 = fsub fast float %4711, %4703
  %4716 = fsub fast float %4712, %4704
  %4717 = fmul fast float %4713, %4707
  %4718 = fmul fast float %4714, %4707
  %4719 = fmul fast float %4715, %4707
  %4720 = fmul fast float %4716, %4707
  %4721 = fadd fast float %4717, %4701
  %4722 = fadd fast float %4718, %4702
  %4723 = fsub fast float -0.000000e+00, %4722
  %4724 = fadd fast float %4719, %4703
  %4725 = fadd fast float %4720, %4704
  %4726 = fmul fast float %4721, %4721
  %4727 = fsub fast float %4722, %4726
  %4728 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4727)  ; FMax(a,b)
  %4729 = fdiv fast float 1.000000e+00, %4728
  %4730 = fmul fast float %4722, %4721
  %4731 = fsub fast float %4724, %4730
  %4732 = fsub fast float %4681, %4721
  %4733 = fmul fast float %4681, %4681
  %4734 = fsub fast float %4733, %4722
  %4735 = fmul fast float %4732, %4729
  %4736 = fmul fast float %4735, %4731
  %4737 = fsub fast float %4734, %4736
  %4738 = fmul fast float %4722, %4722
  %4739 = fsub fast float %4725, %4738
  %4740 = fmul fast float %4731, %4731
  %4741 = fmul fast float %4740, %4729
  %4742 = fsub fast float %4739, %4741
  %4743 = fdiv fast float %4737, %4742
  %4744 = fmul fast float %4731, %4743
  %4745 = fsub fast float %4732, %4744
  %4746 = fmul fast float %4745, %4729
  %4747 = fmul fast float %4746, %4721
  %4748 = fsub fast float 1.000000e+00, %4747
  %4749 = fmul fast float %4722, %4743
  %4750 = fsub fast float %4748, %4749
  %4751 = fmul fast float %4746, %4746
  %4752 = fmul fast float %4743, 4.000000e+00
  %4753 = fmul fast float %4752, %4750
  %4754 = fsub fast float %4751, %4753
  %4755 = call float @dx.op.unary.f32(i32 24, float %4754)  ; Sqrt(value)
  %4756 = fcmp fast oge float %4746, 0.000000e+00
  %4757 = fsub fast float -0.000000e+00, %4755
  %4758 = select i1 %4756, float %4757, float %4755
  %4759 = fsub fast float %4758, %4746
  %4760 = fdiv fast float %4759, %4743
  %4761 = fdiv fast float %4750, %4759
  %4762 = fmul fast float %4760, 5.000000e-01
  %4763 = fmul fast float %4761, 2.000000e+00
  %4764 = select i1 %4756, float %4762, float %4763
  %4765 = select i1 %4756, float %4763, float %4762
  %4766 = call float @dx.op.binary.f32(i32 35, float %4764, float %4765)  ; FMax(a,b)
  %4767 = call float @dx.op.binary.f32(i32 36, float %4764, float %4765)  ; FMin(a,b)
  %4768 = fcmp fast ogt float %4681, %4767
  br i1 %4768, label %4769, label %4779

; <label>:4769                                    ; preds = %4706
  %4770 = fsub fast float %4681, %4767
  %4771 = fsub fast float %4766, %4767
  %4772 = fmul fast float %4770, %4771
  %4773 = fmul fast float %4766, %4681
  %4774 = fadd fast float %4766, %4681
  %4775 = fmul fast float %4774, %4721
  %4776 = fadd fast float %4773, %4722
  %4777 = fsub fast float %4776, %4775
  %4778 = fdiv fast float %4777, %4772
  br label %4779

; <label>:4779                                    ; preds = %4769, %4706
  %4780 = phi float [ %4778, %4769 ], [ 0.000000e+00, %4706 ]
  %4781 = fcmp fast ogt float %4681, %4766
  %4782 = fsub fast float %4681, %4766
  br i1 %4781, label %4783, label %4793

; <label>:4783                                    ; preds = %4779
  %4784 = fsub fast float %4766, %4767
  %4785 = fmul fast float %4784, %4782
  %4786 = fmul fast float %4767, %4681
  %4787 = fadd fast float %4767, %4681
  %4788 = fmul fast float %4787, %4721
  %4789 = fsub fast float %4723, %4786
  %4790 = fadd fast float %4789, %4788
  %4791 = fdiv fast float %4790, %4785
  %4792 = fadd fast float %4791, %4780
  br label %4793

; <label>:4793                                    ; preds = %4783, %4779
  %4794 = phi float [ %4792, %4783 ], [ %4780, %4779 ]
  %4795 = fsub fast float %4681, %4767
  %4796 = fmul fast float %4795, %4782
  %4797 = fmul fast float %4767, %4766
  %4798 = fadd fast float %4767, %4766
  %4799 = fmul fast float %4798, %4721
  %4800 = fadd fast float %4797, %4722
  %4801 = fsub fast float %4800, %4799
  %4802 = fdiv fast float %4801, %4796
  %4803 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4804 = fcmp fast oeq float %3470, 0.000000e+00
  %4805 = extractvalue %dx.types.CBufRet.f32 %4589, 0
  %4806 = fcmp fast oeq float %4805, 0.000000e+00
  %4807 = or i1 %4804, %4806
  %4808 = fmul fast float %4805, 2.000000e+00
  %4809 = fadd fast float %4590, %4591
  %4810 = fdiv fast float %4809, %4808
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fmul fast float %4811, 2.000000e+00
  %4813 = fsub fast float 3.000000e+00, %4812
  %4814 = fmul fast float %4811, %4811
  %4815 = fmul fast float %4814, %4813
  %4816 = select i1 %4807, float 1.000000e+00, float %4815
  %4817 = fmul fast float %4802, %3470
  %4818 = fadd fast float %4803, %4817
  %4819 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4820 = fmul fast float %4816, %4819
  br label %4821

; <label>:4821                                    ; preds = %4793, %4673
  %4822 = phi float [ %4820, %4793 ], [ 0.000000e+00, %4673 ]
  %4823 = fsub fast float 1.000000e+00, %4822
  %4824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %4543, float %4544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.i32 %4826, 2
  %4828 = icmp eq i32 %4827, 0
  br i1 %4828, label %4834, label %4829

; <label>:4829                                    ; preds = %4821
  %4830 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4831 = fadd fast float %4825, -1.000000e+00
  %4832 = fmul fast float %4830, %4831
  %4833 = fadd fast float %4832, 1.000000e+00
  br label %4834

; <label>:4834                                    ; preds = %4829, %4821
  %4835 = phi float [ %4833, %4829 ], [ %4823, %4821 ]
  br i1 %4597, label %4836, label %4854

; <label>:4836                                    ; preds = %4834
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4839 = fsub fast float %4674, %4838
  %4840 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4841 = fsub fast float %4674, %4596
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fsub fast float %4840, %4842
  %4844 = fsub fast float %4676, %4842
  %4845 = fdiv fast float %4844, %4843
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = fmul fast float %4846, 2.000000e+00
  %4848 = fsub fast float 3.000000e+00, %4847
  %4849 = fsub fast float %4825, %4835
  %4850 = fmul fast float %4846, %4846
  %4851 = fmul fast float %4850, %4849
  %4852 = fmul fast float %4851, %4848
  %4853 = fadd fast float %4852, %4835
  br label %4854

; <label>:4854                                    ; preds = %4836, %4834
  %4855 = phi float [ %4853, %4836 ], [ %4835, %4834 ]
  %4856 = call float @dx.op.binary.f32(i32 35, float %4825, float %4855)  ; FMax(a,b)
  %4857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.i32 %4857, 2
  %4859 = and i32 %4858, 1
  %4860 = icmp eq i32 %4859, 0
  %4861 = fcmp fast une float %4856, 1.000000e+00
  %4862 = and i1 %4861, %4860
  br i1 %4862, label %4863, label %4882

; <label>:4863                                    ; preds = %4854
  %4864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %4543, float %4544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4865 = extractvalue %dx.types.ResRet.f32 %4864, 0
  %4866 = extractvalue %dx.types.ResRet.f32 %4864, 1
  %4867 = extractvalue %dx.types.ResRet.f32 %4864, 2
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4870 = fmul fast float %4869, %4865
  %4871 = fmul fast float %4869, %4866
  %4872 = fmul fast float %4869, %4867
  %4873 = fcmp fast ogt float %4825, 0x3FEFFF2E40000000
  %4874 = fsub fast float 1.000000e+00, %4856
  %4875 = fsub fast float 1.000000e+00, %4825
  %4876 = fdiv fast float %4874, %4875
  %4877 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4878 = select i1 %4873, float 0.000000e+00, float %4877
  %4879 = fmul fast float %4870, %4878
  %4880 = fmul fast float %4871, %4878
  %4881 = fmul fast float %4872, %4878
  br label %4882

; <label>:4882                                    ; preds = %4863, %4854
  %4883 = phi float [ 0.000000e+00, %4854 ], [ %4879, %4863 ]
  %4884 = phi float [ 0.000000e+00, %4854 ], [ %4880, %4863 ]
  %4885 = phi float [ 0.000000e+00, %4854 ], [ %4881, %4863 ]
  %4886 = fmul fast float %4883, %3468
  %4887 = fmul fast float %4884, %3468
  %4888 = fmul fast float %4885, %3468
  %4889 = fmul fast float %4856, %4518
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4856, float %4856, float %4856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %4888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = select i1 %212, float %4890, float %4856
  %4893 = select i1 %212, float 1.000000e+00, float %4856
  %4894 = select i1 %212, float %4891, float %4886
  %4895 = select i1 %212, float 0.000000e+00, float %4887
  %4896 = select i1 %212, float 0.000000e+00, float %4888
  %4897 = fmul fast float %4892, %4530
  %4898 = fmul fast float %4892, %4531
  %4899 = fmul fast float %4893, %4532
  %4900 = fadd fast float %4897, %4894
  %4901 = fadd fast float %4898, %4895
  %4902 = fadd fast float %4896, %4899
  %4903 = fmul fast float %4892, %4533
  %4904 = fmul fast float %4892, %4534
  %4905 = fmul fast float %4893, %4535
  br label %4906

; <label>:4906                                    ; preds = %4882, %4539, %4508, %3740
  %4907 = phi float [ %3745, %3740 ], [ %4530, %4508 ], [ %4900, %4882 ], [ %4530, %4539 ]
  %4908 = phi float [ %3746, %3740 ], [ %4531, %4508 ], [ %4901, %4882 ], [ %4531, %4539 ]
  %4909 = phi float [ %3747, %3740 ], [ %4532, %4508 ], [ %4902, %4882 ], [ %4532, %4539 ]
  %4910 = phi float [ %3748, %3740 ], [ %4533, %4508 ], [ %4903, %4882 ], [ %4533, %4539 ]
  %4911 = phi float [ %3749, %3740 ], [ %4534, %4508 ], [ %4904, %4882 ], [ %4534, %4539 ]
  %4912 = phi float [ %3750, %3740 ], [ %4535, %4508 ], [ %4905, %4882 ], [ %4535, %4539 ]
  %4913 = phi float [ %3751, %3740 ], [ %4518, %4508 ], [ %4889, %4882 ], [ %4518, %4539 ]
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4917 = fmul fast float %4915, %72
  %4918 = fmul fast float %4916, %73
  %4919 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4921 = select i1 %3480, i32 2, i32 0
  %4922 = or i32 %4921, 1
  %4923 = uitofp i32 %4922 to float
  %4924 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4919, float %4920, float %4923, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.ResRet.f32 %4924, 1
  %4927 = extractvalue %dx.types.ResRet.f32 %4924, 2
  %4928 = extractvalue %dx.types.ResRet.f32 %4924, 3
  %4929 = add nuw nsw i32 %4921, 2
  %4930 = uitofp i32 %4929 to float
  %4931 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4919, float %4920, float %4930, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 0
  %4933 = extractvalue %dx.types.ResRet.f32 %4931, 1
  %4934 = extractvalue %dx.types.ResRet.f32 %4931, 2
  %4935 = extractvalue %dx.types.ResRet.f32 %4931, 3
  %4936 = call float @dx.op.binary.f32(i32 35, float %4926, float %4927)  ; FMax(a,b)
  %4937 = call float @dx.op.binary.f32(i32 35, float %4925, float %4936)  ; FMax(a,b)
  %4938 = call float @dx.op.binary.f32(i32 35, float %4937, float %4928)  ; FMax(a,b)
  %4939 = call float @dx.op.binary.f32(i32 36, float %4933, float %4934)  ; FMin(a,b)
  %4940 = call float @dx.op.binary.f32(i32 36, float %4932, float %4939)  ; FMin(a,b)
  %4941 = call float @dx.op.binary.f32(i32 36, float %4940, float %4935)  ; FMin(a,b)
  %4942 = fmul fast float %4938, 2.550000e+02
  %4943 = fadd fast float %4942, 0x3F70101020000000
  %4944 = fptoui float %4943 to i32
  %4945 = fmul fast float %4941, 2.550000e+02
  %4946 = fadd fast float %4945, 0x3F70101020000000
  %4947 = fptoui float %4946 to i32
  %4948 = icmp ult i32 %4944, %4947
  br i1 %4948, label %4949, label %5118

; <label>:4949                                    ; preds = %4906
  %4950 = fcmp fast ogt float %62, 9.843750e-01
  %4951 = fadd fast float %3744, -4.000000e+00
  %4952 = select i1 %4950, float -4.000000e+00, float %4951
  %4953 = call float @dx.op.binary.f32(i32 35, float %4952, float 0.000000e+00)  ; FMax(a,b)
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = fadd fast float %4955, %4953
  %4957 = extractvalue %dx.types.CBufRet.f32 %4954, 2
  %4958 = fmul fast float %4956, %4957
  %4959 = call float @dx.op.unary.f32(i32 23, float %4958)  ; Log(value)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4954, 3
  %4961 = fmul fast float %4960, %4959
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4964 = fmul fast float %4961, %4963
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = uitofp i32 %4944 to float
  %4967 = uitofp i32 %4947 to float
  %4968 = fadd fast float %4966, 5.000000e-01
  %4969 = fadd fast float %4967, 5.000000e-01
  %4970 = fmul fast float %4963, %4968
  %4971 = fmul fast float %4963, %4969
  %4972 = fadd fast float %4970, 0x3F0FFB4800000000
  %4973 = fadd fast float %4971, 0xBF0FFB4800000000
  %4974 = call float @dx.op.binary.f32(i32 35, float %4965, float %4972)  ; FMax(a,b)
  %4975 = call float @dx.op.binary.f32(i32 36, float %4974, float %4973)  ; FMin(a,b)
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 1
  %4978 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4979 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4980 = select i1 %3480, float %4979, float 0.000000e+00
  %4981 = fmul fast float %4977, %4975
  %4982 = fadd fast float %4980, %4981
  %4983 = fadd fast float %4980, %4978
  %4984 = fsub fast float %4977, %4978
  %4985 = fadd fast float %4984, %4980
  %4986 = call float @dx.op.binary.f32(i32 35, float %4982, float %4983)  ; FMax(a,b)
  %4987 = call float @dx.op.binary.f32(i32 36, float %4986, float %4985)  ; FMin(a,b)
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %4919, float %4920, float %4987, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.i32 %4992, 0
  %4994 = extractvalue %dx.types.CBufRet.i32 %4992, 1
  %4995 = uitofp i32 %4993 to float
  %4996 = uitofp i32 %4994 to float
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.CBufRet.f32 %4997, 1
  %5000 = fmul fast float %4995, %4919
  %5001 = fmul fast float %4996, %4920
  %5002 = fadd fast float %5000, -5.000000e-01
  %5003 = fadd fast float %5001, -5.000000e-01
  %5004 = call float @dx.op.unary.f32(i32 22, float %5002)  ; Frc(value)
  %5005 = call float @dx.op.unary.f32(i32 22, float %5003)  ; Frc(value)
  %5006 = fmul fast float %5004, %5004
  %5007 = fmul fast float %5006, %5004
  %5008 = fsub fast float 3.000000e+00, %5004
  %5009 = fmul fast float %5006, %5008
  %5010 = fmul fast float %5004, 3.000000e+00
  %5011 = fmul fast float %5007, 3.000000e+00
  %5012 = fmul fast float %5006, 6.000000e+00
  %5013 = fsub fast float %5011, %5012
  %5014 = fadd fast float %5013, 4.000000e+00
  %5015 = fmul fast float %5014, 0x3FC5555560000000
  %5016 = fmul fast float %5007, -3.000000e+00
  %5017 = fadd fast float %5006, %5004
  %5018 = fmul fast float %5017, 3.000000e+00
  %5019 = fadd fast float %5016, 1.000000e+00
  %5020 = fadd fast float %5019, %5018
  %5021 = fmul fast float %5007, 0x3FC5555560000000
  %5022 = fmul fast float %5005, %5005
  %5023 = fmul fast float %5022, %5005
  %5024 = fsub fast float 3.000000e+00, %5005
  %5025 = fmul fast float %5022, %5024
  %5026 = fmul fast float %5005, 3.000000e+00
  %5027 = fmul fast float %5023, 3.000000e+00
  %5028 = fmul fast float %5022, 6.000000e+00
  %5029 = fsub fast float %5027, %5028
  %5030 = fadd fast float %5029, 4.000000e+00
  %5031 = fmul fast float %5030, 0x3FC5555560000000
  %5032 = fmul fast float %5023, -3.000000e+00
  %5033 = fadd fast float %5022, %5005
  %5034 = fmul fast float %5033, 3.000000e+00
  %5035 = fadd fast float %5032, 1.000000e+00
  %5036 = fadd fast float %5035, %5034
  %5037 = fmul fast float %5023, 0x3FC5555560000000
  %5038 = fadd fast float %5004, 1.000000e+00
  %5039 = fsub fast float 1.000000e+00, %5010
  %5040 = fadd fast float %5039, %5009
  %5041 = fadd fast float %5040, %5014
  %5042 = fmul fast float %5041, 0x3FC5555560000000
  %5043 = fdiv fast float %5015, %5042
  %5044 = fsub fast float %5038, %5043
  %5045 = fsub fast float 1.000000e+00, %5004
  %5046 = fadd fast float %5020, %5007
  %5047 = fmul fast float %5046, 0x3FC5555560000000
  %5048 = fdiv fast float %5021, %5047
  %5049 = fadd fast float %5045, %5048
  %5050 = fadd fast float %5005, 1.000000e+00
  %5051 = fsub fast float 1.000000e+00, %5026
  %5052 = fadd fast float %5051, %5025
  %5053 = fadd fast float %5052, %5030
  %5054 = fmul fast float %5053, 0x3FC5555560000000
  %5055 = fdiv fast float %5031, %5054
  %5056 = fsub fast float %5050, %5055
  %5057 = fsub fast float 1.000000e+00, %5005
  %5058 = fadd fast float %5036, %5023
  %5059 = fmul fast float %5058, 0x3FC5555560000000
  %5060 = fdiv fast float %5037, %5059
  %5061 = fadd fast float %5060, %5057
  %5062 = fmul fast float %5044, %4998
  %5063 = fsub fast float %4919, %5062
  %5064 = fmul fast float %5049, %4998
  %5065 = fadd fast float %5064, %4919
  %5066 = fmul fast float %5061, %4999
  %5067 = fadd fast float %5066, %4920
  %5068 = fmul fast float %5056, %4999
  %5069 = fsub fast float %4920, %5068
  %5070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5063, float %5069, float %4987, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5071 = extractvalue %dx.types.ResRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.ResRet.f32 %5070, 1
  %5073 = extractvalue %dx.types.ResRet.f32 %5070, 2
  %5074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5065, float %5069, float %4987, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.ResRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.ResRet.f32 %5074, 2
  %5078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5063, float %5067, float %4987, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5079 = extractvalue %dx.types.ResRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.ResRet.f32 %5078, 1
  %5081 = extractvalue %dx.types.ResRet.f32 %5078, 2
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5065, float %5067, float %4987, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.ResRet.f32 %5082, 1
  %5085 = extractvalue %dx.types.ResRet.f32 %5082, 2
  %5086 = fsub fast float %5079, %5071
  %5087 = fsub fast float %5080, %5072
  %5088 = fsub fast float %5081, %5073
  %5089 = fmul fast float %5086, %5059
  %5090 = fmul fast float %5087, %5059
  %5091 = fmul fast float %5088, %5059
  %5092 = fadd fast float %5089, %5071
  %5093 = fadd fast float %5090, %5072
  %5094 = fadd fast float %5091, %5073
  %5095 = fsub fast float %5083, %5075
  %5096 = fsub fast float %5084, %5076
  %5097 = fsub fast float %5085, %5077
  %5098 = fmul fast float %5095, %5059
  %5099 = fmul fast float %5096, %5059
  %5100 = fmul fast float %5097, %5059
  %5101 = fsub fast float %5075, %5092
  %5102 = fadd fast float %5101, %5098
  %5103 = fsub fast float %5076, %5093
  %5104 = fadd fast float %5103, %5099
  %5105 = fsub fast float %5077, %5094
  %5106 = fadd fast float %5105, %5100
  %5107 = fmul fast float %5102, %5047
  %5108 = fmul fast float %5104, %5047
  %5109 = fmul fast float %5106, %5047
  %5110 = fadd fast float %5107, %5092
  %5111 = fadd fast float %5108, %5093
  %5112 = fadd fast float %5109, %5094
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5115 = fmul fast float %5110, %5114
  %5116 = fmul fast float %5111, %5114
  %5117 = fmul fast float %5112, %5114
  br label %5118

; <label>:5118                                    ; preds = %4949, %4906
  %5119 = phi float [ %4989, %4949 ], [ 1.000000e+00, %4906 ]
  %5120 = phi float [ %4990, %4949 ], [ 1.000000e+00, %4906 ]
  %5121 = phi float [ %4991, %4949 ], [ 1.000000e+00, %4906 ]
  %5122 = phi float [ %5115, %4949 ], [ 0.000000e+00, %4906 ]
  %5123 = phi float [ %5116, %4949 ], [ 0.000000e+00, %4906 ]
  %5124 = phi float [ %5117, %4949 ], [ 0.000000e+00, %4906 ]
  %5125 = fmul fast float %5122, %3468
  %5126 = fmul fast float %5123, %3468
  %5127 = fmul fast float %5124, %3468
  %5128 = fmul fast float %5119, %4913
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %5121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5131 = select i1 %212, float %5129, float %5119
  %5132 = select i1 %212, float %5129, float %5120
  %5133 = select i1 %212, float 1.000000e+00, float %5121
  %5134 = select i1 %212, float %5130, float %5125
  %5135 = select i1 %212, float 0.000000e+00, float %5126
  %5136 = select i1 %212, float 0.000000e+00, float %5127
  %5137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.i32 %5137, 3
  %5139 = and i32 %5138, 3
  %5140 = icmp ne i32 %5139, 0
  %5141 = and i32 %5138, 4
  %5142 = icmp ne i32 %5141, 0
  %5143 = and i1 %5140, %5142
  %5144 = and i1 %212, %5143
  br i1 %5144, label %5145, label %5151

; <label>:5145                                    ; preds = %5118
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5148 = fadd fast float %5128, -1.000000e+00
  %5149 = fmul fast float %5147, %5148
  %5150 = fadd fast float %5149, 1.000000e+00
  br label %5151

; <label>:5151                                    ; preds = %5145, %5118
  %5152 = phi float [ %5150, %5145 ], [ %5128, %5118 ]
  %5153 = fadd fast float %4910, %4907
  %5154 = fmul fast float %5131, %5153
  %5155 = fadd fast float %5154, %5134
  %5156 = fadd fast float %4911, %4908
  %5157 = fmul fast float %5132, %5156
  %5158 = fadd fast float %5157, %5135
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  br i1 %212, label %5161, label %5185

; <label>:5161                                    ; preds = %5151
  %5162 = fadd fast float %5155, %5158
  %5163 = fmul fast float %5160, %5162
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5166 = extractvalue %dx.types.CBufRet.f32 %3456, 1
  %5167 = fsub fast float %3461, %3455
  %5168 = fadd fast float %5167, %3462
  %5169 = fsub fast float %5168, %5166
  %5170 = extractvalue %dx.types.CBufRet.f32 %3456, 2
  %5171 = fmul fast float %5169, %5170
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fsub fast float %5172, %5165
  %5174 = fmul fast float %5173, %5152
  %5175 = fadd fast float %5174, %5165
  %5176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.f32 %5176, 0
  %5178 = fsub fast float %5175, %5177
  %5179 = fmul fast float %5178, 1.000000e+01
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fsub fast float 1.000000e+00, %3468
  %5182 = fmul fast float %5180, %5181
  %5183 = fadd fast float %5182, %3468
  %5184 = fmul fast float %5183, %5175
  br label %5208

; <label>:5185                                    ; preds = %5151
  %5186 = fadd fast float %4912, %4909
  %5187 = fmul fast float %5133, %5186
  %5188 = fadd fast float %5187, %5136
  %5189 = fmul fast float %5160, %5155
  %5190 = fmul fast float %5160, %5158
  %5191 = fmul fast float %5160, %5188
  %5192 = call float @dx.op.binary.f32(i32 35, float %5190, float %5191)  ; FMax(a,b)
  %5193 = call float @dx.op.binary.f32(i32 35, float %5189, float %5192)  ; FMax(a,b)
  %5194 = call float @dx.op.binary.f32(i32 35, float %5193, float %3468)  ; FMax(a,b)
  %5195 = fcmp fast ugt float %5194, 0x3F10000000000000
  br i1 %5195, label %5197, label %5196

; <label>:5196                                    ; preds = %5185
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5197

; <label>:5197                                    ; preds = %5196, %5185
  %5198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5199 = extractvalue %dx.types.ResRet.i32 %5198, 0
  %5200 = and i32 %5199, 32
  %5201 = icmp eq i32 %5200, 0
  br i1 %5201, label %5208, label %5202

; <label>:5202                                    ; preds = %5197
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = fmul fast float %5204, 0x3FE99999A0000000
  %5206 = fadd fast float %5204, %5189
  %5207 = fadd fast float %5205, %5191
  br label %5208

; <label>:5208                                    ; preds = %5202, %5197, %5161
  %5209 = phi float [ %5163, %5161 ], [ %5206, %5202 ], [ %5189, %5197 ]
  %5210 = phi float [ %5184, %5161 ], [ %5190, %5202 ], [ %5190, %5197 ]
  %5211 = phi float [ %5183, %5161 ], [ %5207, %5202 ], [ %5191, %5197 ]
  %5212 = phi float [ %5183, %5161 ], [ %3468, %5202 ], [ %3468, %5197 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5213 = call float @dx.op.binary.f32(i32 36, float %5209, float 3.225500e+04)  ; FMin(a,b)
  %5214 = call float @dx.op.binary.f32(i32 36, float %5210, float 3.225500e+04)  ; FMin(a,b)
  %5215 = call float @dx.op.binary.f32(i32 36, float %5211, float 3.225500e+04)  ; FMin(a,b)
  %5216 = call float @dx.op.binary.f32(i32 36, float %5212, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5213)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5214)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5215)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %5216)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!49}
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !19}
!19 = !{i32 0, i32 5}
!20 = !{i32 12, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !25}
!25 = !{i32 0, i32 14}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!27 = !{i32 18, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!28 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!32 = !{i32 23, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!33 = !{i32 24, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!34 = !{i32 25, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!35 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !25}
!36 = !{i32 27, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!41 = !{!42, !43, !44, !45, !46, !47, !48}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!49 = !{[31 x i32] [i32 29, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !69}
!51 = !{!52, !67, null}
!52 = !{!53, !56, !58, !60, !61, !62, !63, !64, !66}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 15}
!56 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 1, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 2, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 2, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 3, !"TANGENT", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 3, i8 0, !55}
!61 = !{i32 4, !"SH_RED", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 4, i8 0, !55}
!62 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 5, i8 0, !55}
!63 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 6, i8 0, !55}
!64 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !54, i8 1, i32 1, i8 1, i32 7, i8 0, !65}
!65 = !{i32 3, i32 1}
!66 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!69 = !{i32 0, i64 16}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = !{!76, !76, i64 0}
!76 = !{!"int", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!80, !82, !84, !86}
!80 = distinct !{!80, !81, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!81 = distinct !{!81, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!82 = distinct !{!82, !83, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!83 = distinct !{!83, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!84 = distinct !{!84, !85, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!85 = distinct !{!85, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!86 = distinct !{!86, !87, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!87 = distinct !{!87, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"float", !77, i64 0}
!98 = !{!99, !101, !103, !104, !106, !107, !108, !110, !111, !112}
!99 = distinct !{!99, !100, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!100 = distinct !{!100, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!101 = distinct !{!101, !102, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!102 = distinct !{!102, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!103 = distinct !{!103, !102, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!104 = distinct !{!104, !105, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!105 = distinct !{!105, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!106 = distinct !{!106, !105, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!107 = distinct !{!107, !105, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!108 = distinct !{!108, !109, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!109 = distinct !{!109, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!110 = distinct !{!110, !109, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!111 = distinct !{!111, !109, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!112 = distinct !{!112, !113, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!113 = distinct !{!113, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !99, !101, !103, !104, !106, !107, !108, !110, !111, !112}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !99, !101, !103, !104, !106, !107, !108, !110, !111, !112}
!122 = !{!118}
!123 = !{!119, !115, !99, !101, !103, !104, !106, !107, !108, !110, !111, !112}
!124 = !{!125}
!125 = distinct !{!125, !126, !"\01?sort@@YAXAIAM00@Z: %c"}
!126 = distinct !{!126, !"\01?sort@@YAXAIAM00@Z"}
!127 = !{!128, !129, !99, !101, !103, !104, !106, !107, !108, !110, !111, !112}
!128 = distinct !{!128, !126, !"\01?sort@@YAXAIAM00@Z: %a"}
!129 = distinct !{!129, !126, !"\01?sort@@YAXAIAM00@Z: %b"}
!130 = !{!129}
!131 = !{!128, !125, !99, !101, !103, !104, !106, !107, !108, !110, !111, !112}
!132 = !{!128}
!133 = !{!129, !125, !99, !101, !103, !104, !106, !107, !108, !110, !111, !112}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}

