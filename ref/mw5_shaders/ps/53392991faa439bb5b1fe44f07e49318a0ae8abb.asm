;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 54f76c762e9f857f0be4eb0276a10c82
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;   [128 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32     2darray      T4     t16,space2     1
;                                   texture     f32          3d      T5     t15,space2     1
;                                   texture     f32          2d      T6     t14,space2     1
;                                   texture     f32          2d      T7     t13,space2     1
;                                   texture     u32          2d      T8     t17,space2     1
;                                   texture     f32          3d      T9     t18,space2     1
;                                   texture     f32     2darray     T10     t23,space2     1
;                                   texture     f32     2darray     T11     t24,space2     1
;                                   texture     f32     2darray     T12     t25,space2     1
;                                   texture    byte         r/o     T13     t66,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t69,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32          2d     T18     t58,space2     1
;                                   texture     f32          2d     T19     t57,space2     1
;                                   texture    byte         r/o     T20     t69,space1     1
;                                   texture     u32          2d     T21     t56,space2     1
;                                   texture     f32          2d     T22     t34,space2     1
;                                   texture     f32          2d     T23      t2,space2     1
;                                   texture     f32          2d     T24      t3,space2     1
;                                   texture     f32          2d     T25      t4,space2     1
;                                   textureunorm_f32     2darray     T26     t80,space2     1
;                                   texture    byte         r/o     T27     t67,space1     1
;                                   texture     f32          2d     T28      t7,space2     1
;                                   texture     f32          2d     T29      t6,space2     1
;                                   texture     f32          2d     T30      t5,space2     1
;                                   texture     f32          2d     T31     t38,space2     1
;                                   texture     f32          1d     T32     t30,space2     1
;                                   texture     f32          3d     T33     t44,space2     1
;                                   texture     f32          3d     T34     t45,space2     1
;                                   texture     f32     2darray     T35     t47,space2     1
;                                   textureunorm_f32     2darray     T36     t85,space2     1
;                                   texture     f32          2d     T37     t83,space2     1
;                                   texture     f32          2d     T38     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 21, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = alloca [4 x i32], align 4
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %60
  %73 = fmul fast float %71, %61
  %74 = fmul fast float %53, %50
  %75 = fmul fast float %54, %49
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %54, %48
  %78 = fmul fast float %52, %50
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %52, %49
  %81 = fmul fast float %53, %48
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %76, %51
  %84 = fmul fast float %79, %51
  %85 = fmul fast float %82, %51
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 3
  %89 = fmul fast float %87, 2.000000e+00
  %90 = fmul fast float %89, %72
  %91 = fmul fast float %88, 2.000000e+00
  %92 = fmul fast float %91, %73
  %93 = fsub fast float 1.000000e+00, %90
  %94 = fsub fast float 1.000000e+00, %92
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fmul fast float %93, %96
  %100 = fmul fast float %93, %97
  %101 = fmul fast float %93, %98
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = fmul fast float %94, %103
  %107 = fmul fast float %94, %104
  %108 = fmul fast float %94, %105
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fadd fast float %106, %110
  %114 = fadd fast float %113, %99
  %115 = fadd fast float %107, %111
  %116 = fadd fast float %115, %100
  %117 = fadd fast float %108, %112
  %118 = fadd fast float %117, %101
  %119 = fmul fast float %114, %63
  %120 = fmul fast float %116, %63
  %121 = fmul fast float %118, %63
  %122 = fadd fast float %57, 5.000000e-01
  %123 = fptoui float %122 to i32
  %124 = shl i32 %123, 3
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = or i32 %124, 4
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  %130 = and i32 %126, 8191
  %131 = lshr i32 %126, 13
  %132 = and i32 %131, 8191
  %133 = lshr i32 %126, 26
  %134 = and i32 %129, 65535
  %135 = lshr i32 %129, 16
  %136 = uitofp i32 %134 to float
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %139 = uitofp i32 %135 to float
  %140 = uitofp i32 %130 to float
  %141 = fmul fast float %138, %140
  %142 = uitofp i32 %132 to float
  %143 = fmul fast float %138, %142
  %144 = fmul fast float %138, %55
  %145 = fmul fast float %144, %136
  %146 = fmul fast float %138, %56
  %147 = fmul fast float %146, %139
  %148 = fadd fast float %145, %141
  %149 = fadd fast float %143, %147
  %150 = uitofp i32 %133 to float
  %151 = fmul fast float %72, 5.000000e-01
  %152 = fmul fast float %73, 5.000000e-01
  %153 = fptosi float %151 to i32
  %154 = fptosi float %152 to i32
  %155 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %153, i32 %154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = lshr i32 %156, 18
  %158 = uitofp i32 %157 to float
  %159 = fmul fast float %158, 0x3F4C00EBA0000000
  %160 = call float @dx.op.unary.f32(i32 21, float %159)  ; Exp(value)
  %161 = fadd fast float %160, -1.000000e+00
  %162 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %163 = extractvalue %dx.types.Dimensions %162, 0
  %164 = sitofp i32 %163 to float
  %165 = extractvalue %dx.types.Dimensions %162, 1
  %166 = sitofp i32 %165 to float
  %167 = fcmp fast oge float %151, %164
  %168 = fcmp fast oge float %152, %166
  %169 = or i1 %167, %168
  %170 = select i1 %169, float 0x4197782600000000, float %161
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %174 = fmul fast float %172, %72
  %175 = fmul fast float %173, %73
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = and i32 %177, 114688
  %179 = icmp ne i32 %178, 0
  %180 = select i1 %179, float %174, float 0.000000e+00
  %181 = select i1 %179, float %175, float 0.000000e+00
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fmul fast float %183, 2.550000e+02
  %185 = fptoui float %184 to i32
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 3
  %189 = and i32 %188, 3
  %190 = icmp ne i32 %189, 0
  %191 = and i32 %188, 4
  %192 = icmp ne i32 %191, 0
  %193 = and i1 %190, %192
  br i1 %193, label %194, label %205

; <label>:194                                     ; preds = %0
  %195 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %196 = fmul fast float %195, %73
  %197 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %198 = fmul fast float %197, %72
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %41, float %198, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fsub fast float 1.000000e+00, %200
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = fcmp fast olt float %201, %203
  br label %208

; <label>:205                                     ; preds = %0
  %206 = icmp eq i32 %191, 0
  %207 = and i1 %190, %206
  br label %208

; <label>:208                                     ; preds = %205, %194
  %209 = phi i1 [ %204, %194 ], [ %207, %205 ]
  %210 = add i32 %47, 60
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = shl i32 %212, 4
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %212, 7
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %212, 22
  %220 = shl nuw nsw i32 %219, 5
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = add i32 %47, 72
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %224, 8
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %224, 16
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = add i32 %47, 36
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %47, 96
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = fmul fast float %247, 0x3F50624DE0000000
  %251 = fmul fast float %249, 0x3F50624DE0000000
  %252 = add i32 %47, 108
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 2
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %265, label %257

; <label>:257                                     ; preds = %208
  %258 = add i32 %47, 152
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %260, 0
  %262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %262, %dx.types.Handle %69, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 3
  br label %265

; <label>:265                                     ; preds = %257, %208
  %266 = phi float [ 1.000000e+00, %208 ], [ %264, %257 ]
  %267 = add i32 %47, 24
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = add i32 %47, 28
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = or i32 %272, %269
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %885, label %275

; <label>:275                                     ; preds = %265
  %276 = add i32 %47, 92
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = lshr i32 %278, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %280, 0x3F50624DE0000000
  %282 = add i32 %47, 40
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = lshr i32 %284, 24
  %288 = add i32 %47, 100
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %47, 32
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = shl i32 %297, 4
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %297, 7
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %309 = fmul fast float %308, 1.000000e+03
  %310 = fmul fast float %250, %309
  %311 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  %312 = fadd fast float %311, %240
  %313 = fmul fast float %251, %309
  %314 = call float @dx.op.unary.f32(i32 22, float %313)  ; Frc(value)
  %315 = fadd fast float %314, %242
  %316 = fmul fast float %281, %309
  %317 = call float @dx.op.unary.f32(i32 22, float %316)  ; Frc(value)
  %318 = fmul fast float %317, 0x401921FB60000000
  %319 = fadd fast float %318, %300
  %320 = call float @dx.op.unary.f32(i32 13, float %319)  ; Sin(value)
  %321 = call float @dx.op.unary.f32(i32 12, float %319)  ; Cos(value)
  %322 = fsub fast float -0.000000e+00, %320
  %323 = fadd fast float %58, -5.000000e-01
  %324 = fadd fast float %59, -5.000000e-01
  %325 = fmul fast float %292, %323
  %326 = fmul fast float %294, %324
  %327 = fadd fast float %325, 5.000000e-01
  %328 = fadd fast float %326, 5.000000e-01
  %329 = fmul fast float %303, %327
  %330 = fmul fast float %306, %328
  %331 = fmul fast float %321, %329
  %332 = call float @dx.op.tertiary.f32(i32 46, float %322, float %330, float %331)  ; FMad(a,b,c)
  %333 = fmul fast float %320, %329
  %334 = call float @dx.op.tertiary.f32(i32 46, float %321, float %330, float %333)  ; FMad(a,b,c)
  %335 = fadd fast float %312, %332
  %336 = fadd fast float %315, %334
  %337 = icmp ugt i32 %286, 1
  %338 = icmp ugt i32 %284, 33554431
  %339 = or i1 %338, %337
  br i1 %339, label %340, label %365

; <label>:340                                     ; preds = %275
  %341 = add i32 %47, 84
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = lshr i32 %343, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %308, %345
  %347 = call float @dx.op.unary.f32(i32 22, float %346)  ; Frc(value)
  %348 = mul nuw nsw i32 %286, %287
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %347, %349
  %351 = call float @dx.op.unary.f32(i32 27, float %350)  ; Round_ni(value)
  %352 = fptoui float %351 to i32
  %353 = urem i32 %352, %286
  %354 = udiv i32 %352, %287
  %355 = call float @dx.op.unary.f32(i32 22, float %335)  ; Frc(value)
  %356 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %357 = uitofp i32 %353 to float
  %358 = uitofp i32 %354 to float
  %359 = fadd fast float %355, %357
  %360 = fadd fast float %356, %358
  %361 = uitofp i32 %286 to float
  %362 = uitofp i32 %287 to float
  %363 = fdiv fast float %359, %361
  %364 = fdiv fast float %360, %362
  br label %365

; <label>:365                                     ; preds = %340, %275
  %366 = phi float [ %363, %340 ], [ %335, %275 ]
  %367 = phi float [ %364, %340 ], [ %336, %275 ]
  %368 = and i32 %269, 256
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %416, label %370

; <label>:370                                     ; preds = %365
  %371 = add i32 %47, 136
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = add i32 %373, 0
  %375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %375, %dx.types.Handle %69, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = add i32 %47, 52
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = shl i32 %380, 4
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %380, 7
  %385 = and i32 %384, 32752
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = fsub fast float 1.000000e+00, %266
  %388 = call float @dx.op.binary.f32(i32 35, float %387, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %389 = bitcast float %266 to i32
  %390 = sitofp i32 %389 to float
  %391 = fadd fast float %390, 0xC1CFBF8940000000
  %392 = fmul fast float %386, %391
  %393 = fadd fast float %392, 0x41CFBF8940000000
  %394 = fptosi float %393 to i32
  %395 = bitcast i32 %394 to float
  %396 = bitcast float %388 to i32
  %397 = sitofp i32 %396 to float
  %398 = fadd fast float %397, 0xC1CFBF8940000000
  %399 = fmul fast float %398, %386
  %400 = fadd fast float %399, 0x41CFBF8940000000
  %401 = fptosi float %400 to i32
  %402 = bitcast i32 %401 to float
  %403 = fmul fast float %395, %383
  %404 = fmul fast float %402, %383
  %405 = fsub fast float %388, %403
  %406 = fadd fast float %404, %388
  %407 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %408 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %409 = fsub fast float %377, %407
  %410 = fsub fast float %408, %407
  %411 = bitcast float %410 to i32
  %412 = sub nsw i32 2129859010, %411
  %413 = bitcast i32 %412 to float
  %414 = fmul fast float %413, %409
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  br label %416

; <label>:416                                     ; preds = %370, %365
  %417 = phi float [ %415, %370 ], [ %266, %365 ]
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 128
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %438, label %422

; <label>:422                                     ; preds = %416
  %423 = add i32 %47, 132
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = add i32 %425, 0
  %427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %427, %dx.types.Handle %69, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 524288
  %433 = icmp ne i32 %432, 0
  %434 = fcmp fast ogt float %429, 0x3FE0101020000000
  %435 = select i1 %434, float 1.000000e+00, float 0.000000e+00
  %436 = select i1 %433, float %435, float %429
  %437 = fmul fast float %436, %417
  br label %438

; <label>:438                                     ; preds = %422, %416
  %439 = phi float [ %437, %422 ], [ %417, %416 ]
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 16
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %642, label %444

; <label>:444                                     ; preds = %438
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %47, 120
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = add i32 %449, 0
  %451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %451, %dx.types.Handle %68, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = extractvalue %dx.types.ResRet.f32 %452, 3
  %457 = and i32 %446, 255
  %458 = uitofp i32 %457 to float
  %459 = lshr i32 %446, 8
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %456, %458
  %463 = fadd fast float %462, %461
  %464 = fmul fast float %463, 0x3F70101000000000
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 512
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %477, label %469

; <label>:469                                     ; preds = %444
  %470 = add i32 %47, 140
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = add i32 %472, 0
  %474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %474, %dx.types.Handle %69, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  br label %477

; <label>:477                                     ; preds = %469, %444
  %478 = phi float [ %476, %469 ], [ 1.000000e+00, %444 ]
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 33554432
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %589, label %483

; <label>:483                                     ; preds = %477
  %484 = add i32 %47, 80
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 65535
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %486, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = add i32 %47, 84
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 65535
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = lshr i32 %497, 24
  %499 = uitofp i32 %498 to float
  %500 = fmul fast float %499, 0x3F70101020000000
  %501 = and i32 %497, 255
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101020000000
  %504 = lshr i32 %497, 8
  %505 = and i32 %504, 255
  %506 = uitofp i32 %505 to float
  %507 = fmul fast float %506, 0x3F70101020000000
  %508 = lshr i32 %497, 16
  %509 = and i32 %508, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = add i32 %47, 76
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 24
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %516, 0x3F70101020000000
  %518 = and i32 %514, 255
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %519, 0x3F70101020000000
  %521 = lshr i32 %514, 8
  %522 = and i32 %521, 255
  %523 = uitofp i32 %522 to float
  %524 = fmul fast float %523, 0x3F70101020000000
  %525 = lshr i32 %514, 16
  %526 = and i32 %525, 255
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %527, 0x3F70101020000000
  %529 = bitcast float %453 to i32
  %530 = ashr i32 %529, 1
  %531 = sub nsw i32 1597463174, %530
  %532 = bitcast i32 %531 to float
  %533 = fmul fast float %453, 5.000000e-01
  %534 = fmul fast float %532, %532
  %535 = fmul fast float %534, %533
  %536 = fsub fast float 1.500000e+00, %535
  %537 = fmul fast float %532, %453
  %538 = fmul fast float %537, %536
  %539 = bitcast float %454 to i32
  %540 = ashr i32 %539, 1
  %541 = sub nsw i32 1597463174, %540
  %542 = bitcast i32 %541 to float
  %543 = fmul fast float %454, 5.000000e-01
  %544 = fmul fast float %542, %542
  %545 = fmul fast float %544, %543
  %546 = fsub fast float 1.500000e+00, %545
  %547 = fmul fast float %542, %454
  %548 = fmul fast float %547, %546
  %549 = bitcast float %455 to i32
  %550 = ashr i32 %549, 1
  %551 = sub nsw i32 1597463174, %550
  %552 = bitcast i32 %551 to float
  %553 = fmul fast float %455, 5.000000e-01
  %554 = fmul fast float %552, %552
  %555 = fmul fast float %554, %553
  %556 = fsub fast float 1.500000e+00, %555
  %557 = fmul fast float %552, %455
  %558 = fmul fast float %557, %556
  %559 = fsub fast float %538, %520
  %560 = fsub fast float %548, %524
  %561 = fsub fast float %558, %528
  %562 = fmul fast float %559, %488
  %563 = fmul fast float %560, %490
  %564 = fmul fast float %561, %495
  %565 = fadd fast float %562, %503
  %566 = fadd fast float %563, %507
  %567 = fadd fast float %564, %511
  %568 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %569 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %570 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %571 = fmul fast float %568, %568
  %572 = fmul fast float %569, %569
  %573 = fmul fast float %570, %570
  %574 = fsub fast float %571, %453
  %575 = fsub fast float %572, %454
  %576 = fsub fast float %573, %455
  %577 = fmul fast float %574, %478
  %578 = fmul fast float %575, %478
  %579 = fmul fast float %576, %478
  %580 = fadd fast float %577, %453
  %581 = fadd fast float %578, %454
  %582 = fadd fast float %579, %455
  %583 = fadd fast float %500, %464
  %584 = fsub fast float %583, %517
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fsub fast float %585, %464
  %587 = fmul fast float %586, %478
  %588 = fadd fast float %587, %464
  br label %642

; <label>:589                                     ; preds = %477
  %590 = and i32 %480, 134217728
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %626, label %592

; <label>:592                                     ; preds = %589
  %593 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %594 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %595 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %596 = fadd fast float %593, -5.000000e-01
  %597 = fadd fast float %594, -5.000000e-01
  %598 = fadd fast float %595, -5.000000e-01
  %599 = fmul fast float %596, %478
  %600 = fmul fast float %597, %478
  %601 = fmul fast float %598, %478
  %602 = fadd fast float %599, 5.000000e-01
  %603 = fadd fast float %600, 5.000000e-01
  %604 = fadd fast float %601, 5.000000e-01
  %605 = call float @dx.op.unary.f32(i32 24, float %453)  ; Sqrt(value)
  %606 = call float @dx.op.unary.f32(i32 24, float %454)  ; Sqrt(value)
  %607 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %608 = fmul fast float %602, 2.000000e+00
  %609 = fsub fast float 1.000000e+00, %608
  %610 = fmul fast float %609, %605
  %611 = fadd fast float %610, %608
  %612 = fmul fast float %611, %605
  %613 = fmul fast float %603, 2.000000e+00
  %614 = fsub fast float 1.000000e+00, %613
  %615 = fmul fast float %614, %606
  %616 = fadd fast float %615, %613
  %617 = fmul fast float %616, %606
  %618 = fmul fast float %604, 2.000000e+00
  %619 = fsub fast float 1.000000e+00, %618
  %620 = fmul fast float %619, %607
  %621 = fadd fast float %620, %618
  %622 = fmul fast float %621, %607
  %623 = fmul fast float %612, %612
  %624 = fmul fast float %617, %617
  %625 = fmul fast float %622, %622
  br label %642

; <label>:626                                     ; preds = %589
  %627 = fmul fast float %227, %227
  %628 = fmul fast float %231, %231
  %629 = fmul fast float %235, %235
  %630 = fadd fast float %627, -1.000000e+00
  %631 = fadd fast float %628, -1.000000e+00
  %632 = fadd fast float %629, -1.000000e+00
  %633 = fmul fast float %478, %630
  %634 = fmul fast float %478, %631
  %635 = fmul fast float %478, %632
  %636 = fadd fast float %633, 1.000000e+00
  %637 = fadd fast float %634, 1.000000e+00
  %638 = fadd fast float %635, 1.000000e+00
  %639 = fmul fast float %636, %453
  %640 = fmul fast float %637, %454
  %641 = fmul fast float %638, %455
  br label %642

; <label>:642                                     ; preds = %626, %592, %483, %438
  %643 = phi float [ %588, %483 ], [ %464, %592 ], [ %464, %626 ], [ 0x3FA23C0BE0000000, %438 ]
  %644 = phi float [ %580, %483 ], [ %623, %592 ], [ %639, %626 ], [ 1.000000e+00, %438 ]
  %645 = phi float [ %581, %483 ], [ %624, %592 ], [ %640, %626 ], [ 1.000000e+00, %438 ]
  %646 = phi float [ %582, %483 ], [ %625, %592 ], [ %641, %626 ], [ 1.000000e+00, %438 ]
  %647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.i32 %647, 1
  %649 = and i32 %648, 1
  %650 = icmp ne i32 %649, 0
  %651 = add i32 %47, 116
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 32
  %655 = icmp ne i32 %654, 0
  %656 = and i1 %650, %655
  %657 = select i1 %656, float 1.000000e+00, float %644
  %658 = select i1 %656, float 0x3FD3333340000000, float %645
  %659 = select i1 %656, float 0x3FD3333340000000, float %646
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 32
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %736, label %664

; <label>:664                                     ; preds = %642
  %665 = add i32 %47, 44
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %47, 124
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %670, 0
  %672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %672, %dx.types.Handle %68, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = extractvalue %dx.types.ResRet.f32 %673, 3
  %678 = and i32 %667, 255
  %679 = uitofp i32 %678 to float
  %680 = lshr i32 %667, 8
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = lshr i32 %667, 16
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101000000000
  %687 = fmul fast float %674, %679
  %688 = fadd fast float %687, %682
  %689 = fmul fast float %688, 0x3F70101000000000
  %690 = fadd fast float %675, -5.000000e-01
  %691 = fadd fast float %677, -5.000000e-01
  %692 = fmul fast float %690, %686
  %693 = fmul fast float %691, %686
  %694 = fadd fast float %692, 5.000000e-01
  %695 = fadd fast float %693, 5.000000e-01
  %696 = fmul fast float %694, 2.000000e+00
  %697 = fadd fast float %696, -1.000000e+00
  %698 = fmul fast float %695, 2.000000e+00
  %699 = fadd fast float %698, -1.000000e+00
  %700 = fadd fast float %697, %699
  %701 = fmul fast float %700, 5.000000e-01
  %702 = fsub fast float %697, %699
  %703 = fmul fast float %702, 5.000000e-01
  %704 = call float @dx.op.unary.f32(i32 6, float %701)  ; FAbs(value)
  %705 = fsub fast float 1.000000e+00, %704
  %706 = call float @dx.op.unary.f32(i32 6, float %703)  ; FAbs(value)
  %707 = fsub fast float %705, %706
  %708 = call float @dx.op.dot3.f32(i32 55, float %701, float %703, float %707, float %701, float %703, float %707)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = call float @dx.op.unary.f32(i32 25, float %708)  ; Rsqrt(value)
  %710 = fmul fast float %701, %709
  %711 = fmul fast float %703, %709
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 67108864
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %732, label %716

; <label>:716                                     ; preds = %664
  %717 = add i32 %47, 88
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 65535
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 65535
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = lshr i32 %719, 16
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = fsub fast float %689, %727
  %729 = fmul fast float %728, %721
  %730 = fadd fast float %729, %725
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  br label %732

; <label>:732                                     ; preds = %716, %664
  %733 = phi float [ %731, %716 ], [ %689, %664 ]
  %734 = call float @dx.op.dot2.f32(i32 54, float %710, float %711, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %735 = call float @dx.op.dot2.f32(i32 54, float %710, float %711, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %736

; <label>:736                                     ; preds = %732, %642
  %737 = phi float [ %733, %732 ], [ 0x3FD6666660000000, %642 ]
  %738 = phi float [ %734, %732 ], [ 0.000000e+00, %642 ]
  %739 = phi float [ %735, %732 ], [ 0.000000e+00, %642 ]
  %740 = phi float [ %676, %732 ], [ 1.000000e+00, %642 ]
  %741 = add i32 %47, 64
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = lshr i32 %743, 22
  %745 = shl nuw nsw i32 %744, 5
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 64
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %784, label %751

; <label>:751                                     ; preds = %736
  %752 = add i32 %47, 128
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = add i32 %754, 0
  %756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 131072
  %760 = icmp eq i32 %759, 0
  %761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %756, %dx.types.Handle %68, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = fmul fast float %762, %215
  %766 = fmul fast float %763, %218
  %767 = fmul fast float %764, %221
  br i1 %760, label %774, label %768

; <label>:768                                     ; preds = %751
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = fmul fast float %770, %765
  %772 = fmul fast float %770, %766
  %773 = fmul fast float %770, %767
  br label %774

; <label>:774                                     ; preds = %768, %751
  %775 = phi float [ %771, %768 ], [ %765, %751 ]
  %776 = phi float [ %772, %768 ], [ %766, %751 ]
  %777 = phi float [ %773, %768 ], [ %767, %751 ]
  %778 = fmul fast float %775, %746
  %779 = select i1 %209, float %778, float %775
  %780 = call float @dx.op.dot3.f32(i32 55, float %779, float %776, float %777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = select i1 %209, float 0.000000e+00, float %775
  %782 = select i1 %209, float %780, float %776
  %783 = select i1 %209, float 0.000000e+00, float %777
  br label %784

; <label>:784                                     ; preds = %774, %736
  %785 = phi float [ %781, %774 ], [ 0.000000e+00, %736 ]
  %786 = phi float [ %782, %774 ], [ 0.000000e+00, %736 ]
  %787 = phi float [ %783, %774 ], [ 0.000000e+00, %736 ]
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 1024
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %822, label %792

; <label>:792                                     ; preds = %784
  %793 = add i32 %47, 56
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %795, 8
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = lshr i32 %795, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101020000000
  %807 = fmul fast float %798, %798
  %808 = fmul fast float %802, %802
  %809 = fmul fast float %806, %806
  %810 = add i32 %47, 144
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %812, 0
  %814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %814, %dx.types.Handle %69, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = fmul fast float %807, %816
  %820 = fmul fast float %808, %817
  %821 = fmul fast float %809, %818
  br label %822

; <label>:822                                     ; preds = %792, %784
  %823 = phi float [ %819, %792 ], [ 0.000000e+00, %784 ]
  %824 = phi float [ %820, %792 ], [ 0.000000e+00, %784 ]
  %825 = phi float [ %821, %792 ], [ 0.000000e+00, %784 ]
  %826 = fcmp fast ogt float %823, 0.000000e+00
  %827 = fcmp fast ogt float %824, 0.000000e+00
  %828 = fcmp fast ogt float %825, 0.000000e+00
  %829 = call float @dx.op.unary.f32(i32 23, float %823)  ; Log(value)
  %830 = call float @dx.op.unary.f32(i32 23, float %824)  ; Log(value)
  %831 = call float @dx.op.unary.f32(i32 23, float %825)  ; Log(value)
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 7
  %835 = and i32 %834, 32752
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = fmul fast float %829, 0xBFE62E4300000000
  %838 = fmul fast float %837, %836
  %839 = fmul fast float %830, 0xBFE62E4300000000
  %840 = fmul fast float %839, %836
  %841 = fmul fast float %831, 0xBFE62E4300000000
  %842 = fmul fast float %841, %836
  %843 = select i1 %826, float %838, float 1.270000e+02
  %844 = select i1 %827, float %840, float 1.270000e+02
  %845 = select i1 %828, float %842, float 1.270000e+02
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 10240
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %870, label %850

; <label>:850                                     ; preds = %822
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 2048
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %870, label %855

; <label>:855                                     ; preds = %850
  %856 = add i32 %47, 148
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = add i32 %858, 0
  %860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %860, %dx.types.Handle %69, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 3
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = shl i32 %864, 4
  %866 = and i32 %865, 32752
  %867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %866)  ; LegacyF16ToF32(value)
  %868 = fmul fast float %867, %862
  %869 = call float @dx.op.binary.f32(i32 35, float %868, float 0x3F70101020000000)  ; FMax(a,b)
  br label %870

; <label>:870                                     ; preds = %855, %850, %822
  %871 = phi float [ %869, %855 ], [ 0x3F70101020000000, %850 ], [ 0x3F70101020000000, %822 ]
  %872 = add i32 %47, 48
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = lshr i32 %874, 8
  %878 = and i32 %877, 255
  %879 = uitofp i32 %878 to float
  %880 = call float @dx.op.dot3.f32(i32 55, float %657, float %658, float %659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = fmul fast float %879, %880
  %882 = fadd fast float %881, %876
  %883 = fmul fast float %882, 0x3F70101020000000
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  br label %885

; <label>:885                                     ; preds = %870, %265
  %886 = phi float [ 0.000000e+00, %265 ], [ %738, %870 ]
  %887 = phi float [ 0.000000e+00, %265 ], [ %739, %870 ]
  %888 = phi float [ 0.000000e+00, %265 ], [ %657, %870 ]
  %889 = phi float [ 0.000000e+00, %265 ], [ %658, %870 ]
  %890 = phi float [ 0.000000e+00, %265 ], [ %659, %870 ]
  %891 = phi float [ 0.000000e+00, %265 ], [ %785, %870 ]
  %892 = phi float [ 0.000000e+00, %265 ], [ %786, %870 ]
  %893 = phi float [ 0.000000e+00, %265 ], [ %787, %870 ]
  %894 = phi float [ 0.000000e+00, %265 ], [ %843, %870 ]
  %895 = phi float [ 0.000000e+00, %265 ], [ %844, %870 ]
  %896 = phi float [ 0.000000e+00, %265 ], [ %845, %870 ]
  %897 = phi float [ 0.000000e+00, %265 ], [ %643, %870 ]
  %898 = phi float [ 0.000000e+00, %265 ], [ %439, %870 ]
  %899 = phi float [ 0.000000e+00, %265 ], [ %737, %870 ]
  %900 = phi float [ 0.000000e+00, %265 ], [ %740, %870 ]
  %901 = phi float [ 0.000000e+00, %265 ], [ %871, %870 ]
  %902 = phi float [ 0.000000e+00, %265 ], [ %884, %870 ]
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = call float @dx.op.dot2.f32(i32 54, float %886, float %887, float %886, float %887)  ; Dot2(ax,ay,bx,by)
  %906 = fmul fast float %905, 0x3FE3333340000000
  %907 = fsub fast float 1.000000e+00, %906
  %908 = call float @dx.op.dot3.f32(i32 55, float %886, float %887, float %907, float %886, float %887, float %907)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 25, float %908)  ; Rsqrt(value)
  %910 = fmul fast float %909, %886
  %911 = fmul fast float %909, %887
  %912 = fmul fast float %907, %909
  %913 = fmul fast float %912, %52
  %914 = fmul fast float %912, %53
  %915 = fmul fast float %912, %54
  %916 = fmul fast float %910, %48
  %917 = fmul fast float %910, %49
  %918 = fmul fast float %910, %50
  %919 = fadd fast float %913, %916
  %920 = fadd fast float %914, %917
  %921 = fadd fast float %915, %918
  %922 = fmul fast float %911, %83
  %923 = fmul fast float %911, %84
  %924 = fmul fast float %911, %85
  %925 = fadd fast float %919, %922
  %926 = fadd fast float %920, %923
  %927 = fadd fast float %921, %924
  %928 = call float @dx.op.dot3.f32(i32 55, float %925, float %926, float %927, float %925, float %926, float %927)  ; Dot3(ax,ay,az,bx,by,bz)
  %929 = call float @dx.op.unary.f32(i32 25, float %928)  ; Rsqrt(value)
  %930 = fmul fast float %925, %929
  %931 = fmul fast float %926, %929
  %932 = fmul fast float %927, %929
  %933 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %934 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %935 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %936 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %937 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %938 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %939 = fadd fast float %933, %119
  %940 = fadd fast float %934, %120
  %941 = fadd fast float %935, %121
  %942 = fadd fast float %936, %119
  %943 = fadd fast float %937, %120
  %944 = fadd fast float %938, %121
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %948 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 3
  %952 = fmul fast float %946, %72
  %953 = fmul fast float %952, %950
  %954 = fmul fast float %947, %73
  %955 = fmul fast float %954, %951
  %956 = fptoui float %953 to i32
  %957 = fptoui float %955 to i32
  %958 = fadd fast float %946, -1.000000e+00
  %959 = fadd fast float %947, -1.000000e+00
  %960 = fptoui float %958 to i32
  %961 = fptoui float %959 to i32
  %962 = call i32 @dx.op.binary.i32(i32 40, i32 %956, i32 %960)  ; UMin(a,b)
  %963 = call i32 @dx.op.binary.i32(i32 40, i32 %957, i32 %961)  ; UMin(a,b)
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %967 = fmul fast float %965, %63
  %968 = fsub fast float %967, %966
  %969 = fadd fast float %948, -1.000000e+00
  %970 = call float @dx.op.binary.f32(i32 36, float %968, float %969)  ; FMin(a,b)
  %971 = fptoui float %970 to i32
  %972 = fptoui float %946 to i32
  %973 = fptoui float %947 to i32
  %974 = mul i32 %971, %973
  %975 = add i32 %974, %963
  %976 = mul i32 %975, %972
  %977 = add i32 %976, %962
  %978 = shl i32 %977, 2
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 1023
  %982 = lshr i32 %980, 10
  %983 = icmp eq i32 %981, 0
  br i1 %983, label %1437, label %984

; <label>:984                                     ; preds = %885
  %985 = and i32 %980, 1023
  br label %986

; <label>:986                                     ; preds = %1115, %984
  %987 = phi float [ %1116, %1115 ], [ 0.000000e+00, %984 ]
  %988 = phi float [ %1117, %1115 ], [ %904, %984 ]
  %989 = phi float [ %1118, %1115 ], [ %902, %984 ]
  %990 = phi float [ %1119, %1115 ], [ %894, %984 ]
  %991 = phi float [ %1120, %1115 ], [ %895, %984 ]
  %992 = phi float [ %1121, %1115 ], [ %896, %984 ]
  %993 = phi float [ %1122, %1115 ], [ 0.000000e+00, %984 ]
  %994 = phi float [ %1123, %1115 ], [ 0.000000e+00, %984 ]
  %995 = phi float [ %1124, %1115 ], [ %891, %984 ]
  %996 = phi float [ %1125, %1115 ], [ %892, %984 ]
  %997 = phi float [ %1126, %1115 ], [ %893, %984 ]
  %998 = phi float [ %1127, %1115 ], [ %930, %984 ]
  %999 = phi float [ %1128, %1115 ], [ %931, %984 ]
  %1000 = phi float [ %1129, %1115 ], [ %932, %984 ]
  %1001 = phi float [ %1130, %1115 ], [ %900, %984 ]
  %1002 = phi float [ %1131, %1115 ], [ %899, %984 ]
  %1003 = phi float [ %1132, %1115 ], [ 0.000000e+00, %984 ]
  %1004 = phi float [ %1133, %1115 ], [ %897, %984 ]
  %1005 = phi float [ %1134, %1115 ], [ %888, %984 ]
  %1006 = phi float [ %1135, %1115 ], [ %889, %984 ]
  %1007 = phi float [ %1136, %1115 ], [ %890, %984 ]
  %1008 = phi i32 [ %1065, %1115 ], [ 0, %984 ]
  %1009 = add nuw nsw i32 %1008, %982
  %1010 = shl i32 %1009, 2
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = shl i32 %1012, 8
  %1014 = or i32 %1013, 48
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = extractvalue %dx.types.ResRet.f32 %1015, 3
  %1020 = or i32 %1013, 64
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.i32 %1021, 1
  %1024 = or i32 %1013, 80
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 3
  %1028 = or i32 %1013, 96
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1034 = or i32 %1013, 112
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1037 = or i32 %1013, 128
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1042 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1043 = or i32 %1013, 144
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1049 = or i32 %1013, 160
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = extractvalue %dx.types.ResRet.f32 %1050, 3
  %1055 = or i32 %1013, 192
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = or i32 %1013, 208
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = or i32 %1013, 248
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = add nuw nsw i32 %1008, 1
  %1066 = bitcast float %1019 to i32
  %1067 = and i32 %1066, 2560
  %1068 = icmp eq i32 %1067, 2048
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = call float @dx.op.dot4.f32(i32 56, float %1070, float %1071, float %1072, float %1073, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1075 = or i32 %1013, 16
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1081 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1082 = or i32 %1013, 32
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1089 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1090 = call float @dx.op.unary.f32(i32 6, float %1089)  ; FAbs(value)
  %1091 = call float @dx.op.unary.f32(i32 27, float %1081)  ; Round_ni(value)
  %1092 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1093 = call float @dx.op.unary.f32(i32 6, float %1088)  ; FAbs(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1095 = fadd fast float %1092, %1090
  %1096 = fadd fast float %1095, %1094
  %1097 = fcmp fast oeq float %1096, 0.000000e+00
  %1098 = call float @dx.op.dot4.f32(i32 56, float %1070, float %1071, float %1072, float %1073, float %939, float %940, float %941, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1099 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %939, float %940, float %941, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1100 = call float @dx.op.dot4.f32(i32 56, float %1070, float %1071, float %1072, float %1073, float %942, float %943, float %944, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1101 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %942, float %943, float %944, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1102 = fsub fast float %1098, %1074
  %1103 = fsub fast float %1100, %1074
  %1104 = fsub fast float %1099, %1081
  %1105 = fsub fast float %1101, %1081
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1017, float %1018, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 2
  %1109 = fadd fast float %1108, %1106
  %1110 = call float @dx.op.unary.f32(i32 7, float %1109)  ; Saturate(value)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1112 = fcmp fast ogt float %1110, %1111
  %1113 = and i1 %1097, %1112
  %1114 = and i1 %1068, %1113
  br i1 %1114, label %1138, label %1115

; <label>:1115                                    ; preds = %1423, %1219, %1138, %986
  %1116 = phi float [ %987, %1138 ], [ %1222, %1219 ], [ %1222, %1423 ], [ %987, %986 ]
  %1117 = phi float [ %988, %1138 ], [ %988, %1219 ], [ %1399, %1423 ], [ %988, %986 ]
  %1118 = phi float [ %989, %1138 ], [ %989, %1219 ], [ %1397, %1423 ], [ %989, %986 ]
  %1119 = phi float [ %990, %1138 ], [ %990, %1219 ], [ %1375, %1423 ], [ %990, %986 ]
  %1120 = phi float [ %991, %1138 ], [ %991, %1219 ], [ %1376, %1423 ], [ %991, %986 ]
  %1121 = phi float [ %992, %1138 ], [ %992, %1219 ], [ %1377, %1423 ], [ %992, %986 ]
  %1122 = phi float [ %993, %1138 ], [ %993, %1219 ], [ %1346, %1423 ], [ %993, %986 ]
  %1123 = phi float [ %994, %1138 ], [ %994, %1219 ], [ %1344, %1423 ], [ %994, %986 ]
  %1124 = phi float [ %995, %1138 ], [ %995, %1219 ], [ %1433, %1423 ], [ %995, %986 ]
  %1125 = phi float [ %996, %1138 ], [ %996, %1219 ], [ %1434, %1423 ], [ %996, %986 ]
  %1126 = phi float [ %997, %1138 ], [ %997, %1219 ], [ %1435, %1423 ], [ %997, %986 ]
  %1127 = phi float [ %998, %1138 ], [ %998, %1219 ], [ %1325, %1423 ], [ %998, %986 ]
  %1128 = phi float [ %999, %1138 ], [ %999, %1219 ], [ %1326, %1423 ], [ %999, %986 ]
  %1129 = phi float [ %1000, %1138 ], [ %1000, %1219 ], [ %1327, %1423 ], [ %1000, %986 ]
  %1130 = phi float [ %1001, %1138 ], [ %1001, %1219 ], [ %1355, %1423 ], [ %1001, %986 ]
  %1131 = phi float [ %1002, %1138 ], [ %1002, %1219 ], [ %1352, %1423 ], [ %1002, %986 ]
  %1132 = phi float [ %1003, %1138 ], [ %1003, %1219 ], [ %1349, %1423 ], [ %1003, %986 ]
  %1133 = phi float [ %1004, %1138 ], [ %1004, %1219 ], [ %1342, %1423 ], [ %1004, %986 ]
  %1134 = phi float [ %1005, %1138 ], [ %1005, %1219 ], [ %1337, %1423 ], [ %1005, %986 ]
  %1135 = phi float [ %1006, %1138 ], [ %1006, %1219 ], [ %1338, %1423 ], [ %1006, %986 ]
  %1136 = phi float [ %1007, %1138 ], [ %1007, %1219 ], [ %1339, %1423 ], [ %1007, %986 ]
  %1137 = icmp eq i32 %1065, %985
  br i1 %1137, label %1436, label %986

; <label>:1138                                    ; preds = %986
  %1139 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1140 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1144 = extractvalue %dx.types.ResRet.i32 %1021, 3
  %1145 = extractvalue %dx.types.ResRet.i32 %1021, 2
  %1146 = add i32 %1144, 0
  %1147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1146, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1147, %dx.types.Handle %1148, float %1074, float %1081, float undef, float undef, i32 0, i32 0, i32 undef, float %1102, float %1104, float undef, float %1103, float %1105, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = fmul fast float %1150, %1143
  %1152 = fadd fast float %1151, %1142
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  %1154 = fmul fast float %1074, %1030
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1081, float %1154)  ; FMad(a,b,c)
  %1156 = fadd fast float %1155, %1141
  %1157 = fmul fast float %1074, %1032
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1081, float %1157)  ; FMad(a,b,c)
  %1159 = fadd fast float %1158, %1140
  %1160 = fmul fast float %1102, %1030
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1104, float %1160)  ; FMad(a,b,c)
  %1162 = fmul fast float %1102, %1032
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1104, float %1162)  ; FMad(a,b,c)
  %1164 = fmul fast float %1103, %1030
  %1165 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1105, float %1164)  ; FMad(a,b,c)
  %1166 = fmul fast float %1103, %1032
  %1167 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1105, float %1166)  ; FMad(a,b,c)
  %1168 = add i32 %1145, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1168, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1169, %dx.types.Handle %1148, float %1156, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float %1161, float %1163, float undef, float %1165, float %1167, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = and i32 %1066, 1024
  %1173 = icmp ne i32 %1172, 0
  %1174 = fcmp fast ogt float %1171, 0x3FE0101020000000
  %1175 = uitofp i1 %1174 to float
  %1176 = select i1 %1173, float %1175, float %1171
  %1177 = and i32 %1066, 8192
  %1178 = icmp ne i32 %1177, 0
  %1179 = select i1 %1178, float %1139, float 1.000000e+00
  %1180 = fmul fast float %1074, 2.000000e+00
  %1181 = fadd fast float %1180, -1.000000e+00
  %1182 = call float @dx.op.unary.f32(i32 6, float %1181)  ; FAbs(value)
  %1183 = fmul fast float %1182, %1063
  %1184 = fsub fast float %1183, %1063
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1186 = fmul fast float %1081, 2.000000e+00
  %1187 = fadd fast float %1186, -1.000000e+00
  %1188 = call float @dx.op.unary.f32(i32 6, float %1187)  ; FAbs(value)
  %1189 = fmul fast float %1188, %1064
  %1190 = fsub fast float %1189, %1064
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = fmul fast float %1093, %1026
  %1193 = fsub fast float %1192, %1026
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = fmul fast float %1153, %1179
  %1196 = fmul fast float %1195, %1150
  %1197 = fmul fast float %1196, %1185
  %1198 = fmul fast float %1197, %1176
  %1199 = fmul fast float %1198, %1191
  %1200 = fmul fast float %1199, %1194
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1204 = fsub fast float %1110, %1203
  %1205 = fmul fast float %1204, %1202
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %1200, %1027
  %1208 = fadd fast float %1200, %1027
  %1209 = fmul fast float %1208, %1036
  %1210 = fsub fast float %1209, %1036
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = and i32 %1066, 128
  %1213 = icmp ne i32 %1212, 0
  %1214 = select i1 %1213, float %1211, float %1207
  %1215 = fmul fast float %1214, %1206
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = fcmp fast ugt float %1215, %1217
  br i1 %1218, label %1219, label %1115

; <label>:1219                                    ; preds = %1138
  %1220 = select i1 %1178, float %1215, float 0.000000e+00
  %1221 = fadd fast float %1220, %987
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  br i1 %1178, label %1115, label %1223

; <label>:1223                                    ; preds = %1219
  %1224 = and i32 %1066, 4
  %1225 = and i32 %1066, 8
  %1226 = add i32 %1022, 0
  %1227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1226, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1229 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1227, %dx.types.Handle %1228, float %1156, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float %1161, float %1163, float undef, float %1165, float %1167, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = bitcast float %1048 to i32
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = lshr i32 %1234, 8
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1233, %1236
  %1241 = fadd fast float %1240, %1239
  %1242 = fmul fast float %1241, 0x3F70101000000000
  %1243 = add i32 %1023, 0
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1243, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1244, %dx.types.Handle %1228, float %1156, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float %1161, float %1163, float undef, float %1165, float %1167, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1245, 3
  %1250 = bitcast float %1042 to i32
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = lshr i32 %1250, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = lshr i32 %1250, 16
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F70101000000000
  %1260 = fmul fast float %1246, %1252
  %1261 = fadd fast float %1260, %1255
  %1262 = fmul fast float %1261, 0x3F70101000000000
  %1263 = fadd fast float %1247, -5.000000e-01
  %1264 = fadd fast float %1249, -5.000000e-01
  %1265 = fmul fast float %1263, %1259
  %1266 = fmul fast float %1264, %1259
  %1267 = fadd fast float %1265, 5.000000e-01
  %1268 = fadd fast float %1266, 5.000000e-01
  %1269 = fmul fast float %1230, %1051
  %1270 = fmul fast float %1231, %1052
  %1271 = fmul fast float %1232, %1053
  %1272 = fmul fast float %1267, 2.000000e+00
  %1273 = fadd fast float %1272, -1.000000e+00
  %1274 = fmul fast float %1268, 2.000000e+00
  %1275 = fadd fast float %1274, -1.000000e+00
  %1276 = fadd fast float %1273, %1275
  %1277 = fmul fast float %1276, 5.000000e-01
  %1278 = fsub fast float %1273, %1275
  %1279 = fmul fast float %1278, 5.000000e-01
  %1280 = call float @dx.op.unary.f32(i32 6, float %1277)  ; FAbs(value)
  %1281 = fsub fast float 1.000000e+00, %1280
  %1282 = call float @dx.op.unary.f32(i32 6, float %1279)  ; FAbs(value)
  %1283 = fsub fast float %1281, %1282
  %1284 = call float @dx.op.dot3.f32(i32 55, float %1277, float %1279, float %1283, float %1277, float %1279, float %1283)  ; Dot3(ax,ay,az,bx,by,bz)
  %1285 = call float @dx.op.unary.f32(i32 25, float %1284)  ; Rsqrt(value)
  %1286 = fmul fast float %1277, %1285
  %1287 = fmul fast float %1279, %1285
  %1288 = fmul fast float %1285, %1283
  %1289 = fmul fast float %1288, %1016
  %1290 = fmul fast float %1288, %1017
  %1291 = fmul fast float %1288, %1018
  %1292 = fmul fast float %1286, %1039
  %1293 = fmul fast float %1286, %1040
  %1294 = fmul fast float %1286, %1041
  %1295 = fadd fast float %1292, %1289
  %1296 = fadd fast float %1293, %1290
  %1297 = fadd fast float %1294, %1291
  %1298 = fmul fast float %1287, %1045
  %1299 = fmul fast float %1287, %1046
  %1300 = fmul fast float %1287, %1047
  %1301 = fadd fast float %1295, %1298
  %1302 = fadd fast float %1296, %1299
  %1303 = fadd fast float %1297, %1300
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1301, float %1302, float %1303, float %1301, float %1302, float %1303)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.unary.f32(i32 25, float %1304)  ; Rsqrt(value)
  %1306 = fmul fast float %1301, %1305
  %1307 = fmul fast float %1302, %1305
  %1308 = fmul fast float %1303, %1305
  %1309 = icmp ne i32 %1225, 0
  %1310 = select i1 %1309, float 1.000000e+00, float 0.000000e+00
  %1311 = fmul fast float %1215, %1310
  %1312 = and i32 %1066, 1
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1314, label %1318

; <label>:1314                                    ; preds = %1223
  %1315 = fsub fast float %1306, %998
  %1316 = fsub fast float %1307, %999
  %1317 = fsub fast float %1308, %1000
  br label %1318

; <label>:1318                                    ; preds = %1314, %1223
  %1319 = phi float [ %1315, %1314 ], [ %1306, %1223 ]
  %1320 = phi float [ %1316, %1314 ], [ %1307, %1223 ]
  %1321 = phi float [ %1317, %1314 ], [ %1308, %1223 ]
  %1322 = fmul float %1321, %1311
  %1323 = fmul float %1320, %1311
  %1324 = fmul float %1319, %1311
  %1325 = fadd fast float %1324, %998
  %1326 = fadd fast float %1323, %999
  %1327 = fadd fast float %1322, %1000
  %1328 = icmp ne i32 %1224, 0
  %1329 = select i1 %1328, float 1.000000e+00, float 0.000000e+00
  %1330 = fmul fast float %1215, %1329
  %1331 = fsub fast float %1269, %1005
  %1332 = fsub fast float %1270, %1006
  %1333 = fsub fast float %1271, %1007
  %1334 = fmul fast float %1331, %1330
  %1335 = fmul fast float %1332, %1330
  %1336 = fmul fast float %1333, %1330
  %1337 = fadd fast float %1334, %1005
  %1338 = fadd fast float %1335, %1006
  %1339 = fadd fast float %1336, %1007
  %1340 = fsub fast float %1242, %1004
  %1341 = fmul fast float %1340, %1330
  %1342 = fadd fast float %1341, %1004
  %1343 = fmul fast float %1330, %994
  %1344 = fsub fast float %994, %1343
  %1345 = fmul fast float %1330, %993
  %1346 = fsub fast float %993, %1345
  %1347 = bitcast float %1060 to i32
  %1348 = fadd fast float %1215, %1003
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1350 = fsub fast float %1262, %1002
  %1351 = fmul fast float %1350, %1311
  %1352 = fadd fast float %1351, %1002
  %1353 = fsub fast float %1248, %1001
  %1354 = fmul fast float %1353, %1311
  %1355 = fadd fast float %1354, %1001
  br i1 %1313, label %1364, label %1356

; <label>:1356                                    ; preds = %1318
  %1357 = and i32 %1066, 32768
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1374, label %1359

; <label>:1359                                    ; preds = %1356
  %1360 = fmul fast float %1311, 1.270000e+02
  %1361 = fadd fast float %1360, %990
  %1362 = fadd fast float %1360, %991
  %1363 = fadd fast float %1360, %992
  br label %1374

; <label>:1364                                    ; preds = %1318
  %1365 = fsub fast float 1.270000e+02, %990
  %1366 = fsub fast float 1.270000e+02, %991
  %1367 = fsub fast float 1.270000e+02, %992
  %1368 = fmul fast float %1311, %1365
  %1369 = fmul fast float %1311, %1366
  %1370 = fmul fast float %1311, %1367
  %1371 = fadd fast float %1368, %990
  %1372 = fadd fast float %1369, %991
  %1373 = fadd fast float %1370, %992
  br label %1374

; <label>:1374                                    ; preds = %1364, %1359, %1356
  %1375 = phi float [ %1361, %1359 ], [ %990, %1356 ], [ %1371, %1364 ]
  %1376 = phi float [ %1362, %1359 ], [ %991, %1356 ], [ %1372, %1364 ]
  %1377 = phi float [ %1363, %1359 ], [ %992, %1356 ], [ %1373, %1364 ]
  %1378 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.CBufRet.f32 %1379, 1
  %1382 = fmul fast float %1381, %1378
  %1383 = fadd fast float %1382, %1380
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = bitcast float %1054 to i32
  %1386 = and i32 %1385, 65535
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = lshr i32 %1385, 16
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = fcmp fast oge float %1387, 0.000000e+00
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = select i1 %1390, float %1387, float %1392
  %1394 = fadd fast float %1393, %1389
  %1395 = fsub fast float %1384, %989
  %1396 = fmul fast float %1395, %1215
  %1397 = fadd fast float %1396, %989
  %1398 = fmul fast float %1394, %1215
  %1399 = call float @dx.op.binary.f32(i32 35, float %988, float %1398)  ; FMax(a,b)
  %1400 = and i32 %1066, 16
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1423, label %1402

; <label>:1402                                    ; preds = %1374
  %1403 = add i32 %1057, 0
  %1404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1404, %dx.types.Handle %1228, float %1156, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float %1161, float %1163, float undef, float %1165, float %1167, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = and i32 %1347, 65535
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = fmul fast float %1406, %1051
  %1412 = fmul fast float %1407, %1052
  %1413 = fmul fast float %1408, %1053
  %1414 = and i32 %1066, 16384
  %1415 = icmp ne i32 %1414, 0
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = select i1 %1415, float %1417, float 1.000000e+00
  %1419 = fmul fast float %1418, %1410
  %1420 = fmul fast float %1411, %1419
  %1421 = fmul fast float %1412, %1419
  %1422 = fmul fast float %1413, %1419
  br label %1423

; <label>:1423                                    ; preds = %1402, %1374
  %1424 = phi float [ %1420, %1402 ], [ 0.000000e+00, %1374 ]
  %1425 = phi float [ %1421, %1402 ], [ 0.000000e+00, %1374 ]
  %1426 = phi float [ %1422, %1402 ], [ 0.000000e+00, %1374 ]
  %1427 = fsub fast float %1424, %995
  %1428 = fsub fast float %1425, %996
  %1429 = fsub fast float %1426, %997
  %1430 = fmul fast float %1427, %1215
  %1431 = fmul fast float %1428, %1215
  %1432 = fmul fast float %1429, %1215
  %1433 = fadd fast float %1430, %995
  %1434 = fadd fast float %1431, %996
  %1435 = fadd fast float %1432, %997
  br label %1115

; <label>:1436                                    ; preds = %1115
  br label %1437

; <label>:1437                                    ; preds = %1436, %885
  %1438 = phi float [ 0.000000e+00, %885 ], [ %1116, %1436 ]
  %1439 = phi float [ %904, %885 ], [ %1117, %1436 ]
  %1440 = phi float [ %902, %885 ], [ %1118, %1436 ]
  %1441 = phi float [ %894, %885 ], [ %1119, %1436 ]
  %1442 = phi float [ %895, %885 ], [ %1120, %1436 ]
  %1443 = phi float [ %896, %885 ], [ %1121, %1436 ]
  %1444 = phi float [ 0.000000e+00, %885 ], [ %1122, %1436 ]
  %1445 = phi float [ 0.000000e+00, %885 ], [ %1123, %1436 ]
  %1446 = phi float [ %891, %885 ], [ %1124, %1436 ]
  %1447 = phi float [ %892, %885 ], [ %1125, %1436 ]
  %1448 = phi float [ %893, %885 ], [ %1126, %1436 ]
  %1449 = phi float [ %930, %885 ], [ %1127, %1436 ]
  %1450 = phi float [ %931, %885 ], [ %1128, %1436 ]
  %1451 = phi float [ %932, %885 ], [ %1129, %1436 ]
  %1452 = phi float [ %900, %885 ], [ %1130, %1436 ]
  %1453 = phi float [ %899, %885 ], [ %1131, %1436 ]
  %1454 = phi float [ 0.000000e+00, %885 ], [ %1132, %1436 ]
  %1455 = phi float [ %897, %885 ], [ %1133, %1436 ]
  %1456 = phi float [ %888, %885 ], [ %1134, %1436 ]
  %1457 = phi float [ %889, %885 ], [ %1135, %1436 ]
  %1458 = phi float [ %890, %885 ], [ %1136, %1436 ]
  %1459 = call float @dx.op.dot3.f32(i32 55, float %1449, float %1450, float %1451, float %1449, float %1450, float %1451)  ; Dot3(ax,ay,az,bx,by,bz)
  %1460 = call float @dx.op.unary.f32(i32 25, float %1459)  ; Rsqrt(value)
  %1461 = fmul fast float %1460, %1449
  %1462 = fmul fast float %1460, %1450
  %1463 = fmul fast float %1460, %1451
  %1464 = fadd fast float %1454, %898
  %1465 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1466 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1463, float %1461, float %1462, float %1463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1467 = call float @dx.op.unary.f32(i32 25, float %1466)  ; Rsqrt(value)
  %1468 = fmul fast float %1467, %1461
  %1469 = fmul fast float %1467, %1462
  %1470 = fmul fast float %1467, %1463
  %1471 = fadd fast float %1455, 0xBFB99999A0000000
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = fmul fast float %1472, 0x3FF1C71C80000000
  %1474 = call float @dx.op.binary.f32(i32 36, float %1455, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1475 = fsub fast float 1.000000e+00, %1473
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fmul fast float %1476, %1456
  %1478 = fmul fast float %1476, %1457
  %1479 = fmul fast float %1476, %1458
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1482 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1483 = fmul fast float %1473, %1456
  %1484 = fmul fast float %1473, %1457
  %1485 = fmul fast float %1473, %1458
  %1486 = fadd fast float %1483, %1474
  %1487 = fadd fast float %1484, %1474
  %1488 = fadd fast float %1485, %1474
  %1489 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1490 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1491 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1492 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1493 = call float @dx.op.binary.f32(i32 36, float %1441, float 1.270000e+02)  ; FMin(a,b)
  %1494 = call float @dx.op.binary.f32(i32 36, float %1442, float 1.270000e+02)  ; FMin(a,b)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1443, float 1.270000e+02)  ; FMin(a,b)
  %1496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.i32 %1496, 3
  %1498 = and i32 %1497, 8
  %1499 = icmp ne i32 %1498, 0
  %1500 = call float @dx.op.binary.f32(i32 35, float %1480, float %1456)  ; FMax(a,b)
  %1501 = call float @dx.op.binary.f32(i32 35, float %1481, float %1456)  ; FMax(a,b)
  %1502 = call float @dx.op.binary.f32(i32 35, float %1482, float %1456)  ; FMax(a,b)
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1480, float %1481, float %1482, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = select i1 %209, float %1456, float %1480
  %1505 = select i1 %209, float %1503, float %1481
  %1506 = select i1 %209, float 1.000000e+00, float %1482
  %1507 = select i1 %1499, float %1500, float %1504
  %1508 = select i1 %1499, float %1501, float %1505
  %1509 = select i1 %1499, float %1502, float %1506
  %1510 = and i32 %185, 3
  %1511 = select i1 %179, i32 %1510, i32 0
  %1512 = icmp eq i32 %1511, 1
  br i1 %1512, label %1513, label %1589

; <label>:1513                                    ; preds = %1437
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1517 = fadd fast float %1515, %119
  %1518 = fadd fast float %1516, %120
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1522 = fsub fast float %1517, %1520
  %1523 = fsub fast float %1518, %1521
  %1524 = fmul fast float %1522, %1522
  %1525 = fmul fast float %1523, %1523
  %1526 = fadd fast float %1524, %1525
  %1527 = call float @dx.op.unary.f32(i32 24, float %1526)  ; Sqrt(value)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1529 = fcmp fast olt float %1527, %1528
  br i1 %1529, label %1530, label %1583

; <label>:1530                                    ; preds = %1513
  %1531 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1532 = fadd fast float %1531, %121
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1533, 1
  %1540 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1541 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1543 = extractvalue %dx.types.CBufRet.f32 %1535, 3
  %1544 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1545 = fadd fast float %1542, %1517
  %1546 = fadd fast float %1543, %1518
  %1547 = fadd fast float %1532, %1544
  %1548 = fmul fast float %1545, %1534
  %1549 = call float @dx.op.tertiary.f32(i32 46, float %1546, float %1536, float %1548)  ; FMad(a,b,c)
  %1550 = call float @dx.op.tertiary.f32(i32 46, float %1547, float %1538, float %1549)  ; FMad(a,b,c)
  %1551 = fmul fast float %1545, %1539
  %1552 = call float @dx.op.tertiary.f32(i32 46, float %1546, float %1540, float %1551)  ; FMad(a,b,c)
  %1553 = call float @dx.op.tertiary.f32(i32 46, float %1547, float %1541, float %1552)  ; FMad(a,b,c)
  %1554 = fsub fast float %1550, %1542
  %1555 = fsub fast float %1553, %1543
  %1556 = fsub fast float %1554, %1520
  %1557 = fadd fast float %1556, %1528
  %1558 = fsub fast float %1555, %1521
  %1559 = fadd fast float %1558, %1528
  %1560 = extractvalue %dx.types.CBufRet.f32 %1519, 3
  %1561 = fmul fast float %1557, %1560
  %1562 = fmul fast float %1559, %1560
  %1563 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1564 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1565 = fsub fast float 1.000000e+00, %1563
  %1566 = fsub fast float 1.000000e+00, %1564
  %1567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %41, float %1565, float %1566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = fcmp fast ugt float %1568, 0.000000e+00
  br i1 %1569, label %1570, label %1583

; <label>:1570                                    ; preds = %1530
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 2
  %1573 = fmul fast float %1572, %1568
  %1574 = extractvalue %dx.types.CBufRet.f32 %1571, 3
  %1575 = fadd fast float %1574, %1573
  %1576 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1577 = fadd fast float %1575, %1544
  %1578 = fmul fast float %1550, %1538
  %1579 = call float @dx.op.tertiary.f32(i32 46, float %1553, float %1541, float %1578)  ; FMad(a,b,c)
  %1580 = call float @dx.op.tertiary.f32(i32 46, float %1577, float %1576, float %1579)  ; FMad(a,b,c)
  %1581 = fsub fast float %1580, %1544
  %1582 = fsub fast float %1581, %1531
  br label %1583

; <label>:1583                                    ; preds = %1570, %1530, %1513
  %1584 = phi i1 [ true, %1570 ], [ false, %1530 ], [ false, %1513 ]
  %1585 = phi float [ %1582, %1570 ], [ -1.310720e+05, %1530 ], [ -1.310720e+05, %1513 ]
  %1586 = fsub fast float %1585, %121
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = select i1 %1584, float %1587, float 1.000000e+00
  br label %1589

; <label>:1589                                    ; preds = %1583, %1437
  %1590 = phi float [ %1588, %1583 ], [ 0.000000e+00, %1437 ]
  %1591 = icmp eq i32 %1511, 3
  %1592 = select i1 %1591, float 1.000000e+00, float %1590
  %1593 = call float @dx.op.binary.f32(i32 35, float %1438, float %1592)  ; FMax(a,b)
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1595 = fcmp fast une float %1594, 0.000000e+00
  %1596 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = call float @dx.op.unary.f32(i32 25, float %1596)  ; Rsqrt(value)
  br i1 %1595, label %1605, label %1598

; <label>:1598                                    ; preds = %1589
  %1599 = fmul fast float %1597, %119
  %1600 = fmul fast float %1597, %120
  %1601 = fmul fast float %1597, %121
  %1602 = fsub fast float -0.000000e+00, %1599
  %1603 = fsub fast float -0.000000e+00, %1600
  %1604 = fsub fast float -0.000000e+00, %1601
  br label %1773

; <label>:1605                                    ; preds = %1589
  %1606 = fmul fast float %119, %1597
  %1607 = fsub fast float -0.000000e+00, %1606
  %1608 = fmul fast float %120, %1597
  %1609 = fsub fast float -0.000000e+00, %1608
  %1610 = fmul fast float %121, %1597
  %1611 = fsub fast float -0.000000e+00, %1610
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1607, float %1609, float %1611, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = fmul fast float %1594, 2.500000e+00
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1615 = fmul fast float %1594, 0x4013FFFFE0000000
  %1616 = fadd fast float %1615, 0xBFFFFFFFE0000000
  %1617 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1618 = fmul fast float %1594, 0x4004000020000000
  %1619 = fadd fast float %1618, 0xBFF8000040000000
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1622 = fmul fast float %1471, 1.000000e+01
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = fmul fast float %1623, 2.000000e+00
  %1625 = fsub fast float 3.000000e+00, %1624
  %1626 = fmul fast float %1623, %1623
  %1627 = fmul fast float %1626, %1625
  %1628 = fsub fast float 1.000000e+00, %1627
  %1629 = fsub fast float 0x3FE3333340000000, %1492
  %1630 = fmul fast float %1629, 0x400AAAAAA0000000
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fmul fast float %1628, %1631
  %1633 = fmul fast float %1507, 0x3FEA2B8620000000
  %1634 = fmul fast float %1508, 0x3FEA2B8620000000
  %1635 = fmul fast float %1509, 0x3FEA2B8620000000
  %1636 = fadd fast float %1633, 0x3FC81DFBA0000000
  %1637 = fmul fast float %1636, %1507
  %1638 = fadd fast float %1637, 0x3F910E6020000000
  %1639 = fadd fast float %1634, 0x3FC81DFBA0000000
  %1640 = fmul fast float %1639, %1508
  %1641 = fadd fast float %1640, 0x3F910E6020000000
  %1642 = fadd fast float %1635, 0x3FC81DFBA0000000
  %1643 = fmul fast float %1642, %1509
  %1644 = fadd fast float %1643, 0x3F910E6020000000
  %1645 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1646 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1647 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1648 = fsub fast float %1645, %1507
  %1649 = fsub fast float %1646, %1508
  %1650 = fsub fast float %1647, %1509
  %1651 = fmul fast float %1648, %1621
  %1652 = fmul fast float %1651, %1632
  %1653 = fmul fast float %1649, %1621
  %1654 = fmul fast float %1653, %1632
  %1655 = fmul fast float %1650, %1621
  %1656 = fmul fast float %1655, %1632
  %1657 = fadd fast float %1652, %1507
  %1658 = fadd fast float %1654, %1508
  %1659 = fadd fast float %1656, %1509
  %1660 = fmul fast float %1452, %1452
  %1661 = fmul fast float %1660, %1660
  %1662 = fadd fast float %1617, 1.000000e+00
  %1663 = fsub fast float %1662, %1632
  %1664 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1665 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = fsub fast float 1.000000e+00, %1661
  %1668 = call float @dx.op.binary.f32(i32 36, float %1664, float %1667)  ; FMin(a,b)
  %1669 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1670 = call float @dx.op.binary.f32(i32 35, float %1668, float %1669)  ; FMax(a,b)
  %1671 = fadd fast float %1666, 0xBFE4CCCCC0000000
  %1672 = fmul fast float %1671, 0x4006DB6DA0000000
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fmul fast float %1673, 2.000000e+00
  %1675 = fsub fast float 3.000000e+00, %1674
  %1676 = bitcast float %1489 to i32
  %1677 = ashr i32 %1676, 1
  %1678 = add nsw i32 %1677, 532487669
  %1679 = bitcast i32 %1678 to float
  %1680 = fsub fast float 1.000000e+00, %1679
  %1681 = bitcast float %1680 to i32
  %1682 = sub nsw i32 2129859010, %1681
  %1683 = bitcast i32 %1682 to float
  %1684 = fmul fast float %1683, 2.000000e+00
  %1685 = bitcast float %1490 to i32
  %1686 = ashr i32 %1685, 1
  %1687 = add nsw i32 %1686, 532487669
  %1688 = bitcast i32 %1687 to float
  %1689 = fsub fast float 1.000000e+00, %1688
  %1690 = bitcast float %1689 to i32
  %1691 = sub nsw i32 2129859010, %1690
  %1692 = bitcast i32 %1691 to float
  %1693 = fmul fast float %1692, 2.000000e+00
  %1694 = bitcast float %1491 to i32
  %1695 = ashr i32 %1694, 1
  %1696 = add nsw i32 %1695, 532487669
  %1697 = bitcast i32 %1696 to float
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = bitcast float %1698 to i32
  %1700 = sub nsw i32 2129859010, %1699
  %1701 = bitcast i32 %1700 to float
  %1702 = fmul fast float %1701, 2.000000e+00
  %1703 = fsub fast float 0x4002A9FBE0000000, %1684
  %1704 = fadd fast float %1684, 0x3FD54FDF00000000
  %1705 = bitcast float %1704 to i32
  %1706 = sub nsw i32 2129859010, %1705
  %1707 = bitcast i32 %1706 to float
  %1708 = fmul fast float %1707, %1703
  %1709 = fmul fast float %1708, %1708
  %1710 = fsub fast float 0x4002A9FBE0000000, %1693
  %1711 = fadd fast float %1693, 0x3FD54FDF00000000
  %1712 = bitcast float %1711 to i32
  %1713 = sub nsw i32 2129859010, %1712
  %1714 = bitcast i32 %1713 to float
  %1715 = fmul fast float %1714, %1710
  %1716 = fmul fast float %1715, %1715
  %1717 = fsub fast float 0x4002A9FBE0000000, %1702
  %1718 = fadd fast float %1702, 0x3FD54FDF00000000
  %1719 = bitcast float %1718 to i32
  %1720 = sub nsw i32 2129859010, %1719
  %1721 = bitcast i32 %1720 to float
  %1722 = fmul fast float %1721, %1717
  %1723 = fmul fast float %1722, %1722
  %1724 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1709)  ; FMax(a,b)
  %1725 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1716)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1723)  ; FMax(a,b)
  %1727 = fsub fast float 1.000000e+00, %1612
  %1728 = fadd fast float %1727, %1628
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fsub fast float 1.000000e+00, %1592
  %1731 = fmul fast float %1670, %1730
  %1732 = fmul fast float %1673, %1673
  %1733 = fmul fast float %1732, %1731
  %1734 = fmul fast float %1733, %1675
  %1735 = fmul fast float %1730, 0xBFE99999A0000000
  %1736 = fmul fast float %1735, %1621
  %1737 = fmul fast float %1736, %1632
  %1738 = fadd fast float %1737, 1.000000e+00
  %1739 = fadd fast float %1492, -1.000000e+00
  %1740 = fmul fast float %1738, %1739
  %1741 = fadd fast float %1740, 1.000000e+00
  %1742 = fsub fast float %1724, %1489
  %1743 = fsub fast float %1725, %1490
  %1744 = fsub fast float %1726, %1491
  %1745 = fmul fast float %1734, %1742
  %1746 = fmul fast float %1734, %1743
  %1747 = fmul fast float %1734, %1744
  %1748 = fadd fast float %1745, %1489
  %1749 = fadd fast float %1746, %1490
  %1750 = fadd fast float %1747, %1491
  %1751 = fsub fast float %52, %1468
  %1752 = fsub fast float %53, %1469
  %1753 = fsub fast float %54, %1470
  %1754 = fmul fast float %1734, %1751
  %1755 = fmul fast float %1734, %1752
  %1756 = fmul fast float %1734, %1753
  %1757 = fadd fast float %1754, %1468
  %1758 = fadd fast float %1755, %1469
  %1759 = fadd fast float %1756, %1470
  %1760 = fmul fast float %1734, %1729
  %1761 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1760, %1762
  %1764 = fadd fast float %1763, %1761
  %1765 = fsub fast float 1.000000e+00, %1452
  %1766 = fmul fast float %1734, %1765
  %1767 = fadd fast float %1766, %1452
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1757, float %1758, float %1759, float %1757, float %1758, float %1759)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = call float @dx.op.unary.f32(i32 25, float %1768)  ; Rsqrt(value)
  %1770 = fmul fast float %1757, %1769
  %1771 = fmul fast float %1758, %1769
  %1772 = fmul fast float %1759, %1769
  br label %1773

; <label>:1773                                    ; preds = %1605, %1598
  %1774 = phi float [ %1604, %1598 ], [ %1611, %1605 ]
  %1775 = phi float [ %1603, %1598 ], [ %1609, %1605 ]
  %1776 = phi float [ %1602, %1598 ], [ %1607, %1605 ]
  %1777 = phi float [ %1601, %1598 ], [ %1610, %1605 ]
  %1778 = phi float [ %1600, %1598 ], [ %1608, %1605 ]
  %1779 = phi float [ %1599, %1598 ], [ %1606, %1605 ]
  %1780 = phi float [ %1468, %1598 ], [ %1770, %1605 ]
  %1781 = phi float [ %1469, %1598 ], [ %1771, %1605 ]
  %1782 = phi float [ %1470, %1598 ], [ %1772, %1605 ]
  %1783 = phi float [ %1507, %1598 ], [ %1657, %1605 ]
  %1784 = phi float [ %1508, %1598 ], [ %1658, %1605 ]
  %1785 = phi float [ %1509, %1598 ], [ %1659, %1605 ]
  %1786 = phi float [ %1489, %1598 ], [ %1748, %1605 ]
  %1787 = phi float [ %1490, %1598 ], [ %1749, %1605 ]
  %1788 = phi float [ %1491, %1598 ], [ %1750, %1605 ]
  %1789 = phi float [ %1492, %1598 ], [ %1764, %1605 ]
  %1790 = phi float [ %1452, %1598 ], [ %1767, %1605 ]
  %1791 = select i1 %209, float 0.000000e+00, float %1788
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1780, float %1781, float %1782, float %1776, float %1775, float %1774)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1794 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1778, float %1777, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1795 = fmul fast float %1794, 2.000000e+00
  %1796 = fmul fast float %1795, %1780
  %1797 = fmul fast float %1795, %1781
  %1798 = fmul fast float %1795, %1782
  %1799 = fsub fast float %1779, %1796
  %1800 = fsub fast float %1778, %1797
  %1801 = fsub fast float %1777, %1798
  %1802 = call float @dx.op.binary.f32(i32 36, float %1790, float 1.000000e+00)  ; FMin(a,b)
  %1803 = fsub fast float 1.000000e+00, %1790
  %1804 = bitcast float %1803 to i32
  %1805 = sub nsw i32 2129859010, %1804
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1809 = fadd fast float %1807, %119
  %1810 = fadd fast float %1808, %120
  %1811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.i32 %1811, 0
  %1813 = icmp eq i32 %1812, 1
  br i1 %1813, label %1814, label %1849

; <label>:1814                                    ; preds = %1773
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = fsub fast float %1809, %1816
  %1819 = fsub fast float %1810, %1817
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1822 = extractvalue %dx.types.CBufRet.f32 %1820, 1
  %1823 = fmul fast float %1818, %1821
  %1824 = fmul fast float %1819, %1822
  %1825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %41, float %1823, float %1824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1826 = extractvalue %dx.types.ResRet.f32 %1825, 0
  %1827 = fcmp fast ogt float %1826, 0.000000e+00
  %1828 = extractvalue %dx.types.CBufRet.i32 %1811, 3
  %1829 = icmp ne i32 %1828, 0
  %1830 = and i1 %1827, %1829
  br i1 %1830, label %1831, label %1849, !dx.controlflow.hints !80

; <label>:1831                                    ; preds = %1814
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = fsub fast float %1809, %1833
  %1836 = fsub fast float %1810, %1834
  %1837 = fmul fast float %1835, %1835
  %1838 = fmul fast float %1836, %1836
  %1839 = fadd fast float %1837, %1838
  %1840 = uitofp i32 %1828 to float
  %1841 = fmul fast float %1840, %1840
  %1842 = fcmp fast ogt float %1839, %1841
  br i1 %1842, label %1849, label %1843

; <label>:1843                                    ; preds = %1831
  %1844 = call float @dx.op.unary.f32(i32 24, float %1839)  ; Sqrt(value)
  %1845 = fsub fast float %1840, %1844
  %1846 = fmul fast float %1845, 0x3F75555560000000
  %1847 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1847, float %1826)  ; FMin(a,b)
  br label %1849

; <label>:1849                                    ; preds = %1843, %1831, %1814, %1773
  %1850 = phi float [ 1.000000e+00, %1773 ], [ %1848, %1843 ], [ %1826, %1814 ], [ 0.000000e+00, %1831 ]
  %1851 = fcmp fast ogt float %1850, 0.000000e+00
  br i1 %1851, label %1852, label %1950, !dx.controlflow.hints !81

; <label>:1852                                    ; preds = %1849
  %1853 = fadd fast float %150, 5.000000e-01
  %1854 = call float @dx.op.unary.f32(i32 27, float %1853)  ; Round_ni(value)
  %1855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %148, float %149, float %1854, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1856 = extractvalue %dx.types.ResRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.ResRet.f32 %1855, 1
  %1858 = extractvalue %dx.types.ResRet.f32 %1855, 2
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1861 = fmul fast float %1860, %1856
  %1862 = fmul fast float %1860, %1857
  %1863 = fmul fast float %1860, %1858
  %1864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %148, float %149, float %1854, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %41, float %148, float %149, float %1854, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.ResRet.f32 %1866, 1
  %1869 = fmul fast float %1867, 2.000000e+00
  %1870 = fmul fast float %1868, 2.000000e+00
  %1871 = fadd fast float %1869, -1.000000e+00
  %1872 = fadd fast float %1870, -1.000000e+00
  %1873 = fadd fast float %1871, %1872
  %1874 = fmul fast float %1873, 5.000000e-01
  %1875 = fsub fast float %1871, %1872
  %1876 = fmul fast float %1875, 5.000000e-01
  %1877 = call float @dx.op.unary.f32(i32 6, float %1874)  ; FAbs(value)
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = call float @dx.op.unary.f32(i32 6, float %1876)  ; FAbs(value)
  %1880 = fsub fast float %1878, %1879
  %1881 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1880)  ; FMax(a,b)
  %1882 = call float @dx.op.dot3.f32(i32 55, float %1874, float %1876, float %1881, float %1874, float %1876, float %1881)  ; Dot3(ax,ay,az,bx,by,bz)
  %1883 = bitcast float %1882 to i32
  %1884 = ashr i32 %1883, 1
  %1885 = sub nsw i32 1597250115, %1884
  %1886 = bitcast i32 %1885 to float
  %1887 = fmul fast float %1886, %1874
  %1888 = fmul fast float %1886, %1876
  %1889 = fmul fast float %1886, %1881
  %1890 = fsub fast float 1.000000e+00, %1865
  %1891 = fdiv fast float %1890, %1889
  %1892 = fmul fast float %1889, %52
  %1893 = fmul fast float %1889, %53
  %1894 = fmul fast float %1889, %54
  %1895 = fmul fast float %1887, %48
  %1896 = fmul fast float %1887, %49
  %1897 = fmul fast float %1887, %50
  %1898 = fadd fast float %1892, %1895
  %1899 = fadd fast float %1893, %1896
  %1900 = fadd fast float %1894, %1897
  %1901 = fmul fast float %1888, %83
  %1902 = fmul fast float %1888, %84
  %1903 = fmul fast float %1888, %85
  %1904 = fadd fast float %1898, %1901
  %1905 = fadd fast float %1899, %1902
  %1906 = fadd fast float %1900, %1903
  %1907 = call float @dx.op.dot3.f32(i32 55, float %1904, float %1905, float %1906, float %1904, float %1905, float %1906)  ; Dot3(ax,ay,az,bx,by,bz)
  %1908 = call float @dx.op.unary.f32(i32 25, float %1907)  ; Rsqrt(value)
  %1909 = fmul fast float %1904, %1908
  %1910 = fmul fast float %1905, %1908
  %1911 = fmul fast float %1906, %1908
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1780, float %1781, float %1782, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = fmul fast float %1913, 5.000000e-01
  %1915 = fadd fast float %1914, 5.000000e-01
  %1916 = fmul fast float %1915, %1865
  %1917 = call float @dx.op.dot3.f32(i32 55, float %1780, float %1781, float %1782, float %1909, float %1910, float %1911)  ; Dot3(ax,ay,az,bx,by,bz)
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = fmul fast float %1918, %1891
  %1920 = fadd fast float %1916, %1919
  %1921 = fsub fast float 5.000000e-01, %1914
  %1922 = fmul fast float %1921, %1783
  %1923 = fmul fast float %1921, %1784
  %1924 = fmul fast float %1921, %1785
  %1925 = fadd fast float %1920, %1922
  %1926 = fmul fast float %1925, %1861
  %1927 = fadd fast float %1920, %1923
  %1928 = fmul fast float %1927, %1862
  %1929 = fadd fast float %1920, %1924
  %1930 = fmul fast float %1929, %1863
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1799, float %1800, float %1801, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fmul fast float %1932, 5.000000e-01
  %1934 = fadd fast float %1933, 5.000000e-01
  %1935 = fmul fast float %1934, %1865
  %1936 = call float @dx.op.dot3.f32(i32 55, float %1799, float %1800, float %1801, float %1909, float %1910, float %1911)  ; Dot3(ax,ay,az,bx,by,bz)
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1937, %1891
  %1939 = fadd fast float %1935, %1938
  %1940 = fsub fast float 5.000000e-01, %1933
  %1941 = fmul fast float %1940, %1783
  %1942 = fmul fast float %1940, %1784
  %1943 = fmul fast float %1940, %1785
  %1944 = fadd fast float %1939, %1941
  %1945 = fmul fast float %1944, %1861
  %1946 = fadd fast float %1939, %1942
  %1947 = fmul fast float %1946, %1862
  %1948 = fadd fast float %1939, %1943
  %1949 = fmul fast float %1948, %1863
  br label %1950

; <label>:1950                                    ; preds = %1852, %1849
  %1951 = phi float [ %1945, %1852 ], [ 0.000000e+00, %1849 ]
  %1952 = phi float [ %1947, %1852 ], [ 0.000000e+00, %1849 ]
  %1953 = phi float [ %1949, %1852 ], [ 0.000000e+00, %1849 ]
  %1954 = phi float [ %1926, %1852 ], [ 0.000000e+00, %1849 ]
  %1955 = phi float [ %1928, %1852 ], [ 0.000000e+00, %1849 ]
  %1956 = phi float [ %1930, %1852 ], [ 0.000000e+00, %1849 ]
  %1957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1958 = extractvalue %dx.types.CBufRet.f32 %1957, 0
  %1959 = fcmp fast ogt float %1958, 0.000000e+00
  %1960 = and i1 %1851, %1959
  br i1 %1960, label %1961, label %2165, !dx.controlflow.hints !82

; <label>:1961                                    ; preds = %1950
  %1962 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1963 = fadd fast float %1962, %121
  %1964 = fmul fast float %1780, 3.200000e+01
  %1965 = fmul fast float %1781, 3.200000e+01
  %1966 = fadd fast float %1809, %1964
  %1967 = fadd fast float %1810, %1965
  %1968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.CBufRet.f32 %1968, 1
  %1971 = fsub fast float %1966, %1969
  %1972 = fsub fast float %1967, %1970
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 0
  %1975 = extractvalue %dx.types.CBufRet.f32 %1973, 1
  %1976 = fmul fast float %1971, %1974
  %1977 = fmul fast float %1972, %1975
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1981 = fsub fast float %1809, %1979
  %1982 = fsub fast float %1810, %1980
  %1983 = fmul fast float %1981, %1981
  %1984 = fmul fast float %1982, %1982
  %1985 = fadd fast float %1983, %1984
  %1986 = call float @dx.op.unary.f32(i32 24, float %1985)  ; Sqrt(value)
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = fsub fast float %1986, %1988
  %1991 = fdiv fast float %1990, %1989
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fmul fast float %1992, 2.000000e+00
  %1994 = fsub fast float 3.000000e+00, %1993
  %1995 = fmul fast float %1992, %1992
  %1996 = fmul fast float %1995, %1994
  %1997 = fcmp fast oge float %1976, 0.000000e+00
  %1998 = fcmp fast ole float %1976, 1.000000e+00
  %1999 = and i1 %1998, %1997
  %2000 = fcmp fast oge float %1977, 0.000000e+00
  %2001 = and i1 %2000, %1999
  %2002 = fcmp fast ole float %1977, 1.000000e+00
  %2003 = and i1 %2002, %2001
  %2004 = fcmp fast ogt float %1996, 0.000000e+00
  %2005 = and i1 %2004, %2003
  br i1 %2005, label %2006, label %2129, !dx.controlflow.hints !83

; <label>:2006                                    ; preds = %1961
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 2
  %2009 = extractvalue %dx.types.CBufRet.f32 %2007, 3
  %2010 = fmul fast float %2008, %1976
  %2011 = fmul fast float %2009, %1977
  %2012 = call float @dx.op.unary.f32(i32 27, float %2010)  ; Round_ni(value)
  %2013 = call float @dx.op.unary.f32(i32 27, float %2011)  ; Round_ni(value)
  %2014 = fptosi float %2012 to i32
  %2015 = fptosi float %2013 to i32
  %2016 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %31, i32 0, i32 %2014, i32 %2015, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = lshr i32 %2017, 16
  %2019 = icmp eq i32 %2018, 65535
  br i1 %2019, label %2129, label %2020

; <label>:2020                                    ; preds = %2006
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 0
  %2023 = fmul fast float %2022, %1976
  %2024 = extractvalue %dx.types.CBufRet.f32 %2021, 1
  %2025 = fadd fast float %2023, %2024
  %2026 = extractvalue %dx.types.CBufRet.f32 %2021, 2
  %2027 = fmul fast float %2026, %1977
  %2028 = extractvalue %dx.types.CBufRet.f32 %2021, 3
  %2029 = fadd fast float %2027, %2028
  %2030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %41, float %2025, float %2029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2036 = fsub fast float %2034, %2035
  %2037 = fmul fast float %2036, %2031
  %2038 = fadd fast float %2037, %2035
  %2039 = extractvalue %dx.types.CBufRet.f32 %2033, 3
  %2040 = extractvalue %dx.types.CBufRet.f32 %2033, 2
  %2041 = fsub fast float %2039, %2040
  %2042 = fmul fast float %2041, %2032
  %2043 = fadd fast float %2042, %2040
  %2044 = fsub fast float %1963, %2038
  %2045 = fsub fast float %2043, %2038
  %2046 = fdiv fast float %2044, %2045
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = extractvalue %dx.types.CBufRet.f32 %1957, 1
  %2049 = extractvalue %dx.types.CBufRet.f32 %2007, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2007, 1
  %2051 = fmul fast float %2049, %1976
  %2052 = fmul fast float %2050, %1977
  %2053 = fmul fast float %2051, 1.250000e-01
  %2054 = fmul fast float %2052, 1.250000e-01
  %2055 = call float @dx.op.unary.f32(i32 27, float %2053)  ; Round_ni(value)
  %2056 = call float @dx.op.unary.f32(i32 27, float %2054)  ; Round_ni(value)
  %2057 = fmul fast float %2055, 8.000000e+00
  %2058 = fmul fast float %2056, 8.000000e+00
  %2059 = fsub fast float %2051, %2057
  %2060 = fsub fast float %2052, %2058
  %2061 = fadd fast float %2059, 5.000000e-01
  %2062 = fadd fast float %2060, 5.000000e-01
  %2063 = and i32 %2018, 255
  %2064 = lshr i32 %2017, 24
  %2065 = mul nuw nsw i32 %2063, 9
  %2066 = uitofp i32 %2065 to float
  %2067 = mul nuw nsw i32 %2064, 9
  %2068 = uitofp i32 %2067 to float
  %2069 = fadd fast float %2061, %2066
  %2070 = fadd fast float %2062, %2068
  %2071 = fdiv fast float %2069, %1958
  %2072 = fdiv fast float %2070, %2048
  %2073 = fmul fast float %2047, 4.375000e-01
  %2074 = fadd fast float %2073, 3.125000e-02
  %2075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %2071, float %2072, float %2074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.ResRet.f32 %2075, 2
  %2079 = fadd fast float %2073, 5.312500e-01
  %2080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %2071, float %2072, float %2079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.ResRet.f32 %2080, 2
  %2084 = fmul fast float %2081, 2.000000e+00
  %2085 = fmul fast float %2082, 2.000000e+00
  %2086 = fmul fast float %2083, 2.000000e+00
  %2087 = fadd fast float %2084, -1.000000e+00
  %2088 = fadd fast float %2085, -1.000000e+00
  %2089 = fadd fast float %2086, -1.000000e+00
  %2090 = fmul fast float %2087, %2087
  %2091 = fmul fast float %2088, %2088
  %2092 = fadd fast float %2090, %2091
  %2093 = fmul fast float %2089, %2089
  %2094 = fadd fast float %2092, %2093
  %2095 = call float @dx.op.unary.f32(i32 24, float %2094)  ; Sqrt(value)
  %2096 = fcmp fast ogt float %2095, 0.000000e+00
  br i1 %2096, label %2097, label %2101

; <label>:2097                                    ; preds = %2020
  %2098 = fdiv fast float %2087, %2095
  %2099 = fdiv fast float %2088, %2095
  %2100 = fdiv fast float %2089, %2095
  br label %2101

; <label>:2101                                    ; preds = %2097, %2020
  %2102 = phi float [ %2098, %2097 ], [ 0.000000e+00, %2020 ]
  %2103 = phi float [ %2099, %2097 ], [ 0.000000e+00, %2020 ]
  %2104 = phi float [ %2100, %2097 ], [ 0.000000e+00, %2020 ]
  %2105 = call float @dx.op.dot3.f32(i32 55, float %2102, float %2103, float %2104, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2105)  ; FMax(a,b)
  %2107 = fmul fast float %2106, 0x400C5BF8A0000000
  %2108 = fmul fast float %2076, %1996
  %2109 = fmul fast float %2108, %2107
  %2110 = fmul fast float %2077, %1996
  %2111 = fmul fast float %2110, %2107
  %2112 = fmul fast float %2078, %1996
  %2113 = fmul fast float %2112, %2107
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2116 = fmul fast float %2109, %2115
  %2117 = fmul fast float %2111, %2115
  %2118 = fmul fast float %2113, %2115
  %2119 = fcmp fast ogt float %1963, %2043
  br i1 %2119, label %2120, label %2129

; <label>:2120                                    ; preds = %2101
  %2121 = fmul fast float %2045, 0x3FC24924A0000000
  %2122 = fsub fast float %1963, %2043
  %2123 = fdiv fast float %2122, %2121
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = fsub fast float 1.000000e+00, %2124
  %2126 = fmul fast float %2125, %2116
  %2127 = fmul fast float %2125, %2117
  %2128 = fmul fast float %2125, %2118
  br label %2129

; <label>:2129                                    ; preds = %2120, %2101, %2006, %1961
  %2130 = phi float [ %2128, %2120 ], [ %2118, %2101 ], [ 0.000000e+00, %2006 ], [ 0.000000e+00, %1961 ]
  %2131 = phi float [ %2127, %2120 ], [ %2117, %2101 ], [ 0.000000e+00, %2006 ], [ 0.000000e+00, %1961 ]
  %2132 = phi float [ %2126, %2120 ], [ %2116, %2101 ], [ 0.000000e+00, %2006 ], [ 0.000000e+00, %1961 ]
  %2133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2132)  ; FMax(a,b)
  %2134 = fmul fast float %2133, 0x3FD20DD760000000
  %2135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1799, float %1800, float %1801)  ; Dot3(ax,ay,az,bx,by,bz)
  %2136 = fmul fast float %2135, 0x3FDF454380000000
  %2137 = fmul fast float %2135, %2135
  %2138 = fmul fast float %2137, 0x3FEE471020000000
  %2139 = fadd fast float %2138, 0xBFD42F6020000000
  %2140 = call float @dx.op.dot3.f32(i32 55, float %2133, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2136, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2131)  ; FMax(a,b)
  %2142 = fmul fast float %2141, 0x3FD20DD760000000
  %2143 = call float @dx.op.dot3.f32(i32 55, float %2141, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2136, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2130)  ; FMax(a,b)
  %2145 = fmul fast float %2144, 0x3FD20DD760000000
  %2146 = call float @dx.op.dot3.f32(i32 55, float %2144, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2136, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2147 = call float @dx.op.binary.f32(i32 35, float %2134, float 0.000000e+00)  ; FMax(a,b)
  %2148 = call float @dx.op.binary.f32(i32 35, float %2142, float 0.000000e+00)  ; FMax(a,b)
  %2149 = call float @dx.op.binary.f32(i32 35, float %2145, float 0.000000e+00)  ; FMax(a,b)
  %2150 = call float @dx.op.binary.f32(i32 35, float %2140, float 0.000000e+00)  ; FMax(a,b)
  %2151 = call float @dx.op.binary.f32(i32 35, float %2143, float 0.000000e+00)  ; FMax(a,b)
  %2152 = call float @dx.op.binary.f32(i32 35, float %2146, float 0.000000e+00)  ; FMax(a,b)
  %2153 = fmul fast float %2147, %1850
  %2154 = fmul fast float %2148, %1850
  %2155 = fmul fast float %2149, %1850
  %2156 = fadd fast float %2153, %1954
  %2157 = fadd fast float %2154, %1955
  %2158 = fadd fast float %2155, %1956
  %2159 = fmul fast float %2150, %1850
  %2160 = fmul fast float %2151, %1850
  %2161 = fmul fast float %2152, %1850
  %2162 = fadd fast float %2159, %1951
  %2163 = fadd fast float %2160, %1952
  %2164 = fadd fast float %2161, %1953
  br label %2165

; <label>:2165                                    ; preds = %2129, %1950
  %2166 = phi float [ %2162, %2129 ], [ %1951, %1950 ]
  %2167 = phi float [ %2163, %2129 ], [ %1952, %1950 ]
  %2168 = phi float [ %2164, %2129 ], [ %1953, %1950 ]
  %2169 = phi float [ %2156, %2129 ], [ %1954, %1950 ]
  %2170 = phi float [ %2157, %2129 ], [ %1955, %1950 ]
  %2171 = phi float [ %2158, %2129 ], [ %1956, %1950 ]
  %2172 = fcmp fast olt float %1850, 1.000000e+00
  br i1 %2172, label %2173, label %2991, !dx.controlflow.hints !84

; <label>:2173                                    ; preds = %2165
  %2174 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %2175 = fadd fast float %2174, %121
  %2176 = fmul fast float %1780, 3.200000e+01
  %2177 = fmul fast float %1781, 3.200000e+01
  %2178 = fadd fast float %1809, %2176
  %2179 = fadd fast float %1810, %2177
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.CBufRet.f32 %2180, 1
  %2183 = fsub fast float %2178, %2181
  %2184 = fsub fast float %2179, %2182
  %2185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.CBufRet.f32 %2185, 1
  %2188 = fmul fast float %2183, %2186
  %2189 = fmul fast float %2184, %2187
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = fmul fast float %2188, %2191
  %2193 = extractvalue %dx.types.CBufRet.f32 %2190, 1
  %2194 = fadd fast float %2192, %2193
  %2195 = extractvalue %dx.types.CBufRet.f32 %2190, 2
  %2196 = fmul fast float %2195, %2189
  %2197 = extractvalue %dx.types.CBufRet.f32 %2190, 3
  %2198 = fadd fast float %2196, %2197
  %2199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %41, float %2194, float %2198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2200 = extractvalue %dx.types.ResRet.f32 %2199, 0
  %2201 = extractvalue %dx.types.ResRet.f32 %2199, 1
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 1
  %2204 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2205 = fsub fast float %2203, %2204
  %2206 = fmul fast float %2205, %2200
  %2207 = fadd fast float %2206, %2204
  %2208 = extractvalue %dx.types.CBufRet.f32 %2202, 3
  %2209 = extractvalue %dx.types.CBufRet.f32 %2202, 2
  %2210 = fsub fast float %2208, %2209
  %2211 = fmul fast float %2210, %2201
  %2212 = fadd fast float %2211, %2209
  %2213 = fsub fast float %2175, %2207
  %2214 = fsub fast float %2212, %2207
  %2215 = fdiv fast float %2213, %2214
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = fmul fast float %2218, %2216
  %2220 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2221 = fadd fast float %2219, %2220
  %2222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %41, float %2194, float %2198, float %2221, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.ResRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.ResRet.f32 %2222, 2
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2230 = fmul fast float %2227, %2223
  %2231 = fmul fast float %2228, %2224
  %2232 = fmul fast float %2229, %2225
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2237 = fadd fast float %2230, %2234
  %2238 = fadd fast float %2231, %2235
  %2239 = fadd fast float %2232, %2236
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 0
  %2242 = fmul fast float %2241, %2188
  %2243 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2244 = fadd fast float %2242, %2243
  %2245 = extractvalue %dx.types.CBufRet.f32 %2240, 2
  %2246 = fmul fast float %2245, %2189
  %2247 = extractvalue %dx.types.CBufRet.f32 %2240, 3
  %2248 = fadd fast float %2246, %2247
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.CBufRet.f32 %2249, 1
  %2252 = extractvalue %dx.types.CBufRet.f32 %2249, 2
  %2253 = extractvalue %dx.types.CBufRet.f32 %2249, 3
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.CBufRet.f32 %2254, 1
  %2257 = extractvalue %dx.types.CBufRet.f32 %2254, 2
  %2258 = extractvalue %dx.types.CBufRet.f32 %2254, 3
  %2259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %2244, float %2248, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2260 = extractvalue %dx.types.ResRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.ResRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.ResRet.f32 %2259, 2
  %2263 = extractvalue %dx.types.ResRet.f32 %2259, 3
  %2264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %2244, float %2248, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2265 = extractvalue %dx.types.ResRet.f32 %2264, 0
  %2266 = extractvalue %dx.types.ResRet.f32 %2264, 1
  %2267 = extractvalue %dx.types.ResRet.f32 %2264, 2
  %2268 = extractvalue %dx.types.ResRet.f32 %2264, 3
  %2269 = fmul fast float %2260, %2237
  %2270 = fmul fast float %2265, %2237
  %2271 = fmul fast float %2267, %2237
  %2272 = fmul fast float %2263, %2237
  %2273 = fadd fast float %2269, %2250
  %2274 = fadd fast float %2270, %2251
  %2275 = fadd fast float %2271, %2252
  %2276 = fadd fast float %2272, %2253
  %2277 = fmul fast float %2261, %2237
  %2278 = fmul fast float %2266, %2237
  %2279 = fadd fast float %2277, %2255
  %2280 = fadd fast float %2278, %2256
  %2281 = fmul fast float %2262, %2237
  %2282 = fmul fast float %2268, %2237
  %2283 = fadd fast float %2281, %2257
  %2284 = fadd fast float %2282, %2258
  %2285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %2244, float %2248, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = extractvalue %dx.types.ResRet.f32 %2285, 1
  %2288 = extractvalue %dx.types.ResRet.f32 %2285, 2
  %2289 = extractvalue %dx.types.ResRet.f32 %2285, 3
  %2290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %2244, float %2248, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.ResRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.ResRet.f32 %2290, 3
  %2295 = fmul fast float %2286, %2238
  %2296 = fmul fast float %2291, %2238
  %2297 = fmul fast float %2293, %2238
  %2298 = fmul fast float %2289, %2238
  %2299 = fadd fast float %2273, %2295
  %2300 = fadd fast float %2274, %2296
  %2301 = fadd fast float %2275, %2297
  %2302 = fadd fast float %2276, %2298
  %2303 = fmul fast float %2287, %2238
  %2304 = fmul fast float %2292, %2238
  %2305 = fadd fast float %2279, %2303
  %2306 = fadd fast float %2280, %2304
  %2307 = fmul fast float %2288, %2238
  %2308 = fmul fast float %2294, %2238
  %2309 = fadd fast float %2283, %2307
  %2310 = fadd fast float %2284, %2308
  %2311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %2244, float %2248, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = extractvalue %dx.types.ResRet.f32 %2311, 3
  %2316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %2244, float %2248, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.ResRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.ResRet.f32 %2316, 2
  %2320 = extractvalue %dx.types.ResRet.f32 %2316, 3
  %2321 = fmul fast float %2312, %2239
  %2322 = fmul fast float %2317, %2239
  %2323 = fmul fast float %2319, %2239
  %2324 = fmul fast float %2315, %2239
  %2325 = fadd fast float %2299, %2321
  %2326 = fadd fast float %2300, %2322
  %2327 = fadd fast float %2301, %2323
  %2328 = fadd fast float %2302, %2324
  %2329 = fmul fast float %2313, %2239
  %2330 = fmul fast float %2318, %2239
  %2331 = fadd fast float %2305, %2329
  %2332 = fadd fast float %2306, %2330
  %2333 = fmul fast float %2314, %2239
  %2334 = fmul fast float %2320, %2239
  %2335 = fadd fast float %2309, %2333
  %2336 = fadd fast float %2310, %2334
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2339 = fsub fast float %1809, %2338
  %2340 = fsub fast float %2181, %1809
  %2341 = call float @dx.op.binary.f32(i32 35, float %2340, float %2339)  ; FMax(a,b)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2343 = fsub fast float %1810, %2342
  %2344 = fsub fast float %2182, %1810
  %2345 = call float @dx.op.binary.f32(i32 35, float %2344, float %2343)  ; FMax(a,b)
  %2346 = call float @dx.op.binary.f32(i32 35, float %2341, float %2345)  ; FMax(a,b)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2185, 3
  %2348 = fmul fast float %2347, %2346
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.CBufRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.CBufRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.CBufRet.f32 %2350, 3
  %2355 = fsub fast float %2351, %2325
  %2356 = fsub fast float %2352, %2326
  %2357 = fsub fast float %2353, %2327
  %2358 = fsub fast float %2354, %2328
  %2359 = fmul fast float %2355, %2349
  %2360 = fmul fast float %2356, %2349
  %2361 = fmul fast float %2357, %2349
  %2362 = fmul fast float %2358, %2349
  %2363 = fadd fast float %2359, %2325
  %2364 = fadd fast float %2360, %2326
  %2365 = fadd fast float %2361, %2327
  %2366 = fadd fast float %2362, %2328
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2370 = fsub fast float %2368, %2331
  %2371 = fsub fast float %2369, %2332
  %2372 = fmul fast float %2370, %2349
  %2373 = fmul fast float %2371, %2349
  %2374 = fadd fast float %2372, %2331
  %2375 = fadd fast float %2373, %2332
  %2376 = extractvalue %dx.types.CBufRet.f32 %2367, 2
  %2377 = extractvalue %dx.types.CBufRet.f32 %2367, 3
  %2378 = fsub fast float %2376, %2335
  %2379 = fsub fast float %2377, %2336
  %2380 = fmul fast float %2378, %2349
  %2381 = fmul fast float %2379, %2349
  %2382 = fadd fast float %2380, %2335
  %2383 = fadd fast float %2381, %2336
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = fmul fast float %2385, %2363
  %2387 = fmul fast float %2385, %2364
  %2388 = fmul fast float %2385, %2365
  %2389 = fmul fast float %2385, %2366
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = fmul fast float %2391, %2374
  %2393 = fmul fast float %2391, %2375
  %2394 = fadd fast float %2392, %2386
  %2395 = fadd fast float %2393, %2388
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 0
  %2398 = fmul fast float %2397, %2382
  %2399 = fmul fast float %2397, %2383
  %2400 = fadd fast float %2394, %2398
  %2401 = fadd fast float %2395, %2399
  %2402 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2403 = fmul fast float %2402, %2363
  %2404 = fmul fast float %2402, %2364
  %2405 = fmul fast float %2402, %2365
  %2406 = fmul fast float %2402, %2366
  %2407 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2408 = fmul fast float %2407, %2374
  %2409 = fmul fast float %2407, %2375
  %2410 = fadd fast float %2408, %2403
  %2411 = fadd fast float %2409, %2405
  %2412 = extractvalue %dx.types.CBufRet.f32 %2396, 1
  %2413 = fmul fast float %2412, %2382
  %2414 = fmul fast float %2412, %2383
  %2415 = fadd fast float %2410, %2413
  %2416 = fadd fast float %2411, %2414
  %2417 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2418 = fmul fast float %2417, %2363
  %2419 = fmul fast float %2417, %2364
  %2420 = fmul fast float %2417, %2365
  %2421 = fmul fast float %2417, %2366
  %2422 = extractvalue %dx.types.CBufRet.f32 %2390, 2
  %2423 = fmul fast float %2422, %2374
  %2424 = fmul fast float %2422, %2375
  %2425 = fadd fast float %2423, %2418
  %2426 = fadd fast float %2424, %2420
  %2427 = extractvalue %dx.types.CBufRet.f32 %2396, 2
  %2428 = fmul fast float %2427, %2382
  %2429 = fmul fast float %2427, %2383
  %2430 = fadd fast float %2425, %2428
  %2431 = fadd fast float %2426, %2429
  %2432 = fmul fast float %2419, %2419
  %2433 = fmul fast float %2431, %2431
  %2434 = fmul fast float %2421, %2421
  %2435 = fadd fast float %2434, %2432
  %2436 = fadd fast float %2435, %2433
  %2437 = call float @dx.op.unary.f32(i32 24, float %2436)  ; Sqrt(value)
  %2438 = fcmp fast ugt float %2437, 0.000000e+00
  br i1 %2438, label %2439, label %2454

; <label>:2439                                    ; preds = %2173
  %2440 = fsub fast float -0.000000e+00, %2421
  %2441 = fdiv fast float %2440, %2437
  %2442 = fsub fast float -0.000000e+00, %2419
  %2443 = fdiv fast float %2442, %2437
  %2444 = fdiv fast float %2431, %2437
  %2445 = fmul fast float %2430, 0x3FE279A760000000
  %2446 = fmul fast float %2443, %2419
  %2447 = fmul fast float %2444, %2431
  %2448 = fmul fast float %2441, %2421
  %2449 = fadd fast float %2446, %2448
  %2450 = fsub fast float %2449, %2447
  %2451 = call float @dx.op.unary.f32(i32 6, float %2450)  ; FAbs(value)
  %2452 = fadd fast float %2451, 0x3DDB7CDFE0000000
  %2453 = fdiv fast float %2445, %2452
  br label %2454

; <label>:2454                                    ; preds = %2439, %2173
  %2455 = phi float [ %2453, %2439 ], [ 1.000000e+00, %2173 ]
  %2456 = fmul fast float %2404, %2404
  %2457 = fmul fast float %2416, %2416
  %2458 = fmul fast float %2406, %2406
  %2459 = fadd fast float %2458, %2456
  %2460 = fadd fast float %2459, %2457
  %2461 = call float @dx.op.unary.f32(i32 24, float %2460)  ; Sqrt(value)
  %2462 = fcmp fast ugt float %2461, 0.000000e+00
  br i1 %2462, label %2463, label %2478

; <label>:2463                                    ; preds = %2454
  %2464 = fsub fast float -0.000000e+00, %2406
  %2465 = fdiv fast float %2464, %2461
  %2466 = fsub fast float -0.000000e+00, %2404
  %2467 = fdiv fast float %2466, %2461
  %2468 = fdiv fast float %2416, %2461
  %2469 = fmul fast float %2415, 0x3FE279A760000000
  %2470 = fmul fast float %2467, %2404
  %2471 = fmul fast float %2468, %2416
  %2472 = fmul fast float %2465, %2406
  %2473 = fadd fast float %2470, %2472
  %2474 = fsub fast float %2473, %2471
  %2475 = call float @dx.op.unary.f32(i32 6, float %2474)  ; FAbs(value)
  %2476 = fadd fast float %2475, 0x3DDB7CDFE0000000
  %2477 = fdiv fast float %2469, %2476
  br label %2478

; <label>:2478                                    ; preds = %2463, %2454
  %2479 = phi float [ %2477, %2463 ], [ 1.000000e+00, %2454 ]
  %2480 = call float @dx.op.binary.f32(i32 36, float %2479, float %2455)  ; FMin(a,b)
  %2481 = fmul fast float %2387, %2387
  %2482 = fmul fast float %2401, %2401
  %2483 = fmul fast float %2389, %2389
  %2484 = fadd fast float %2483, %2481
  %2485 = fadd fast float %2484, %2482
  %2486 = call float @dx.op.unary.f32(i32 24, float %2485)  ; Sqrt(value)
  %2487 = fcmp fast ugt float %2486, 0.000000e+00
  br i1 %2487, label %2488, label %2503

; <label>:2488                                    ; preds = %2478
  %2489 = fsub fast float -0.000000e+00, %2389
  %2490 = fdiv fast float %2489, %2486
  %2491 = fsub fast float -0.000000e+00, %2387
  %2492 = fdiv fast float %2491, %2486
  %2493 = fdiv fast float %2401, %2486
  %2494 = fmul fast float %2400, 0x3FE279A760000000
  %2495 = fmul fast float %2492, %2387
  %2496 = fmul fast float %2493, %2401
  %2497 = fmul fast float %2490, %2389
  %2498 = fadd fast float %2495, %2497
  %2499 = fsub fast float %2498, %2496
  %2500 = call float @dx.op.unary.f32(i32 6, float %2499)  ; FAbs(value)
  %2501 = fadd fast float %2500, 0x3DDB7CDFE0000000
  %2502 = fdiv fast float %2494, %2501
  br label %2503

; <label>:2503                                    ; preds = %2488, %2478
  %2504 = phi float [ %2502, %2488 ], [ 1.000000e+00, %2478 ]
  %2505 = call float @dx.op.binary.f32(i32 36, float %2504, float %2480)  ; FMin(a,b)
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2507 = fcmp fast olt float %2506, 1.000000e+00
  br i1 %2507, label %2508, label %2518

; <label>:2508                                    ; preds = %2503
  %2509 = fmul fast float %2506, %2387
  %2510 = fmul fast float %2506, %2401
  %2511 = fmul fast float %2506, %2389
  %2512 = fmul fast float %2506, %2404
  %2513 = fmul fast float %2506, %2416
  %2514 = fmul fast float %2506, %2406
  %2515 = fmul fast float %2506, %2419
  %2516 = fmul fast float %2506, %2431
  %2517 = fmul fast float %2506, %2421
  br label %2518

; <label>:2518                                    ; preds = %2508, %2503
  %2519 = phi float [ %2515, %2508 ], [ %2419, %2503 ]
  %2520 = phi float [ %2516, %2508 ], [ %2431, %2503 ]
  %2521 = phi float [ %2517, %2508 ], [ %2421, %2503 ]
  %2522 = phi float [ %2512, %2508 ], [ %2404, %2503 ]
  %2523 = phi float [ %2513, %2508 ], [ %2416, %2503 ]
  %2524 = phi float [ %2514, %2508 ], [ %2406, %2503 ]
  %2525 = phi float [ %2509, %2508 ], [ %2387, %2503 ]
  %2526 = phi float [ %2510, %2508 ], [ %2401, %2503 ]
  %2527 = phi float [ %2511, %2508 ], [ %2389, %2503 ]
  %2528 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2400)  ; FMax(a,b)
  %2529 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2415)  ; FMax(a,b)
  %2530 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2430)  ; FMax(a,b)
  %2531 = fcmp fast oge float %2188, 0.000000e+00
  %2532 = and i1 %2531, %1959
  %2533 = fcmp fast ole float %2188, 1.000000e+00
  %2534 = and i1 %2533, %2532
  %2535 = fcmp fast oge float %2189, 0.000000e+00
  %2536 = and i1 %2535, %2534
  %2537 = fcmp fast ole float %2189, 1.000000e+00
  %2538 = and i1 %2537, %2536
  br i1 %2538, label %2539, label %2684, !dx.controlflow.hints !85

; <label>:2539                                    ; preds = %2518
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2543 = fmul fast float %2541, %2188
  %2544 = fmul fast float %2542, %2189
  %2545 = call float @dx.op.unary.f32(i32 27, float %2543)  ; Round_ni(value)
  %2546 = call float @dx.op.unary.f32(i32 27, float %2544)  ; Round_ni(value)
  %2547 = fptosi float %2545 to i32
  %2548 = fptosi float %2546 to i32
  %2549 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %31, i32 0, i32 %2547, i32 %2548, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 65535
  %2552 = lshr i32 %2550, 16
  %2553 = icmp eq i32 %2551, 65535
  br i1 %2553, label %2590, label %2554

; <label>:2554                                    ; preds = %2539
  %2555 = extractvalue %dx.types.CBufRet.f32 %1957, 1
  %2556 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2557 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2558 = fmul fast float %2556, %2188
  %2559 = fmul fast float %2557, %2189
  %2560 = fmul fast float %2558, 1.250000e-01
  %2561 = fmul fast float %2559, 1.250000e-01
  %2562 = call float @dx.op.unary.f32(i32 27, float %2560)  ; Round_ni(value)
  %2563 = call float @dx.op.unary.f32(i32 27, float %2561)  ; Round_ni(value)
  %2564 = fmul fast float %2562, 8.000000e+00
  %2565 = fmul fast float %2563, 8.000000e+00
  %2566 = and i32 %2550, 255
  %2567 = lshr i32 %2550, 8
  %2568 = and i32 %2567, 255
  %2569 = mul nuw nsw i32 %2566, 9
  %2570 = uitofp i32 %2569 to float
  %2571 = mul nuw nsw i32 %2568, 9
  %2572 = uitofp i32 %2571 to float
  %2573 = fadd fast float %2570, 5.000000e-01
  %2574 = fadd fast float %2573, %2558
  %2575 = fsub fast float %2574, %2564
  %2576 = fadd fast float %2572, 5.000000e-01
  %2577 = fadd fast float %2576, %2559
  %2578 = fsub fast float %2577, %2565
  %2579 = fdiv fast float %2575, %1958
  %2580 = fdiv fast float %2578, %2555
  %2581 = fmul fast float %2216, 4.375000e-01
  %2582 = fadd fast float %2581, 3.125000e-02
  %2583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %2579, float %2580, float %2582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.ResRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.ResRet.f32 %2583, 2
  %2587 = fadd fast float %2584, %2528
  %2588 = fadd fast float %2585, %2529
  %2589 = fadd fast float %2586, %2530
  br label %2590

; <label>:2590                                    ; preds = %2554, %2539
  %2591 = phi float [ %2589, %2554 ], [ %2530, %2539 ]
  %2592 = phi float [ %2588, %2554 ], [ %2529, %2539 ]
  %2593 = phi float [ %2587, %2554 ], [ %2528, %2539 ]
  %2594 = icmp eq i32 %2552, 65535
  br i1 %2594, label %2684, label %2595

; <label>:2595                                    ; preds = %2590
  %2596 = extractvalue %dx.types.CBufRet.f32 %1957, 1
  %2597 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2598 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2599 = fmul fast float %2597, %2188
  %2600 = fmul fast float %2598, %2189
  %2601 = fmul fast float %2599, 1.250000e-01
  %2602 = fmul fast float %2600, 1.250000e-01
  %2603 = call float @dx.op.unary.f32(i32 27, float %2601)  ; Round_ni(value)
  %2604 = call float @dx.op.unary.f32(i32 27, float %2602)  ; Round_ni(value)
  %2605 = fmul fast float %2603, 8.000000e+00
  %2606 = fmul fast float %2604, 8.000000e+00
  %2607 = fsub fast float %2599, %2605
  %2608 = fsub fast float %2600, %2606
  %2609 = fadd fast float %2607, 5.000000e-01
  %2610 = fadd fast float %2608, 5.000000e-01
  %2611 = and i32 %2552, 255
  %2612 = lshr i32 %2550, 24
  %2613 = mul nuw nsw i32 %2611, 9
  %2614 = uitofp i32 %2613 to float
  %2615 = mul nuw nsw i32 %2612, 9
  %2616 = uitofp i32 %2615 to float
  %2617 = fadd fast float %2609, %2614
  %2618 = fadd fast float %2610, %2616
  %2619 = fdiv fast float %2617, %1958
  %2620 = fdiv fast float %2618, %2596
  %2621 = fmul fast float %2216, 4.375000e-01
  %2622 = fadd fast float %2621, 3.125000e-02
  %2623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %2619, float %2620, float %2622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = fadd fast float %2621, 5.312500e-01
  %2628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %2619, float %2620, float %2627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2629 = extractvalue %dx.types.ResRet.f32 %2628, 0
  %2630 = extractvalue %dx.types.ResRet.f32 %2628, 1
  %2631 = extractvalue %dx.types.ResRet.f32 %2628, 2
  %2632 = fmul fast float %2629, 2.000000e+00
  %2633 = fmul fast float %2630, 2.000000e+00
  %2634 = fmul fast float %2631, 2.000000e+00
  %2635 = fadd fast float %2632, -1.000000e+00
  %2636 = fadd fast float %2633, -1.000000e+00
  %2637 = fadd fast float %2634, -1.000000e+00
  %2638 = fmul fast float %2635, %2635
  %2639 = fmul fast float %2636, %2636
  %2640 = fadd fast float %2638, %2639
  %2641 = fmul fast float %2637, %2637
  %2642 = fadd fast float %2640, %2641
  %2643 = call float @dx.op.unary.f32(i32 24, float %2642)  ; Sqrt(value)
  %2644 = fcmp fast ogt float %2643, 0.000000e+00
  br i1 %2644, label %2645, label %2649

; <label>:2645                                    ; preds = %2595
  %2646 = fdiv fast float %2635, %2643
  %2647 = fdiv fast float %2636, %2643
  %2648 = fdiv fast float %2637, %2643
  br label %2649

; <label>:2649                                    ; preds = %2645, %2595
  %2650 = phi float [ %2646, %2645 ], [ 0.000000e+00, %2595 ]
  %2651 = phi float [ %2647, %2645 ], [ 0.000000e+00, %2595 ]
  %2652 = phi float [ %2648, %2645 ], [ 0.000000e+00, %2595 ]
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2656 = fsub fast float %1809, %2654
  %2657 = fsub fast float %1810, %2655
  %2658 = fmul fast float %2656, %2656
  %2659 = fmul fast float %2657, %2657
  %2660 = fadd fast float %2658, %2659
  %2661 = call float @dx.op.unary.f32(i32 24, float %2660)  ; Sqrt(value)
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 0
  %2664 = extractvalue %dx.types.CBufRet.f32 %2662, 1
  %2665 = fsub fast float %2661, %2663
  %2666 = fdiv fast float %2665, %2664
  %2667 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2668 = fmul fast float %2667, 2.000000e+00
  %2669 = fsub fast float 3.000000e+00, %2668
  %2670 = fmul fast float %2667, %2667
  %2671 = fmul fast float %2670, %2669
  %2672 = call float @dx.op.dot3.f32(i32 55, float %2650, float %2651, float %2652, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2672)  ; FMax(a,b)
  %2674 = fmul fast float %2673, 0x400C5BF8A0000000
  %2675 = fmul fast float %2671, %2624
  %2676 = fmul fast float %2675, %2674
  %2677 = fadd fast float %2676, %2593
  %2678 = fmul fast float %2671, %2625
  %2679 = fmul fast float %2678, %2674
  %2680 = fadd fast float %2679, %2592
  %2681 = fmul fast float %2671, %2626
  %2682 = fmul fast float %2681, %2674
  %2683 = fadd fast float %2682, %2591
  br label %2684

; <label>:2684                                    ; preds = %2649, %2590, %2518
  %2685 = phi float [ %2683, %2649 ], [ %2591, %2590 ], [ %2530, %2518 ]
  %2686 = phi float [ %2680, %2649 ], [ %2592, %2590 ], [ %2529, %2518 ]
  %2687 = phi float [ %2677, %2649 ], [ %2593, %2590 ], [ %2528, %2518 ]
  %2688 = fcmp fast ogt float %2175, %2212
  %2689 = and i1 %2531, %2688
  %2690 = and i1 %2533, %2689
  %2691 = and i1 %2535, %2690
  %2692 = and i1 %2537, %2691
  br i1 %2692, label %2693, label %2750, !dx.controlflow.hints !86

; <label>:2693                                    ; preds = %2684
  %2694 = fmul fast float %2214, 0x3FC24924A0000000
  %2695 = fsub fast float %2175, %2212
  %2696 = fdiv fast float %2695, %2694
  %2697 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 0
  %2702 = extractvalue %dx.types.CBufRet.f32 %2700, 1
  %2703 = extractvalue %dx.types.CBufRet.f32 %2700, 2
  %2704 = fsub fast float %2699, %2687
  %2705 = fsub fast float %2701, %2525
  %2706 = fsub fast float %2702, %2526
  %2707 = fsub fast float %2703, %2527
  %2708 = fmul fast float %2704, %2697
  %2709 = fmul fast float %2705, %2697
  %2710 = fmul fast float %2706, %2697
  %2711 = fmul fast float %2707, %2697
  %2712 = fadd fast float %2708, %2687
  %2713 = fadd fast float %2709, %2525
  %2714 = fadd fast float %2710, %2526
  %2715 = fadd fast float %2711, %2527
  %2716 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2721 = fsub fast float %2716, %2686
  %2722 = fsub fast float %2718, %2522
  %2723 = fsub fast float %2719, %2523
  %2724 = fsub fast float %2720, %2524
  %2725 = fmul fast float %2721, %2697
  %2726 = fmul fast float %2722, %2697
  %2727 = fmul fast float %2723, %2697
  %2728 = fmul fast float %2724, %2697
  %2729 = fadd fast float %2725, %2686
  %2730 = fadd fast float %2726, %2522
  %2731 = fadd fast float %2727, %2523
  %2732 = fadd fast float %2728, %2524
  %2733 = extractvalue %dx.types.CBufRet.f32 %2698, 2
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2738 = fsub fast float %2733, %2685
  %2739 = fsub fast float %2735, %2519
  %2740 = fsub fast float %2736, %2520
  %2741 = fsub fast float %2737, %2521
  %2742 = fmul fast float %2738, %2697
  %2743 = fmul fast float %2739, %2697
  %2744 = fmul fast float %2740, %2697
  %2745 = fmul fast float %2741, %2697
  %2746 = fadd fast float %2742, %2685
  %2747 = fadd fast float %2743, %2519
  %2748 = fadd fast float %2744, %2520
  %2749 = fadd fast float %2745, %2521
  br label %2750

; <label>:2750                                    ; preds = %2693, %2684
  %2751 = phi float [ %2746, %2693 ], [ %2685, %2684 ]
  %2752 = phi float [ %2747, %2693 ], [ %2519, %2684 ]
  %2753 = phi float [ %2748, %2693 ], [ %2520, %2684 ]
  %2754 = phi float [ %2749, %2693 ], [ %2521, %2684 ]
  %2755 = phi float [ %2729, %2693 ], [ %2686, %2684 ]
  %2756 = phi float [ %2730, %2693 ], [ %2522, %2684 ]
  %2757 = phi float [ %2731, %2693 ], [ %2523, %2684 ]
  %2758 = phi float [ %2732, %2693 ], [ %2524, %2684 ]
  %2759 = phi float [ %2712, %2693 ], [ %2687, %2684 ]
  %2760 = phi float [ %2713, %2693 ], [ %2525, %2684 ]
  %2761 = phi float [ %2714, %2693 ], [ %2526, %2684 ]
  %2762 = phi float [ %2715, %2693 ], [ %2527, %2684 ]
  %2763 = extractvalue %dx.types.CBufRet.f32 %2337, 3
  %2764 = fmul fast float %2763, %2759
  %2765 = fmul fast float %2763, %2755
  %2766 = fmul fast float %2763, %2751
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 3
  %2769 = fmul fast float %2764, %2768
  %2770 = fmul fast float %2765, %2768
  %2771 = fmul fast float %2766, %2768
  %2772 = fmul fast float %2760, 1.500000e+00
  %2773 = fmul fast float %2772, %2763
  %2774 = fmul fast float %2773, %2768
  %2775 = fmul fast float %2761, 1.500000e+00
  %2776 = fmul fast float %2775, %2763
  %2777 = fmul fast float %2776, %2768
  %2778 = fmul fast float %2762, 1.500000e+00
  %2779 = fmul fast float %2778, %2763
  %2780 = fmul fast float %2779, %2768
  %2781 = fmul fast float %2756, 1.500000e+00
  %2782 = fmul fast float %2781, %2763
  %2783 = fmul fast float %2782, %2768
  %2784 = fmul fast float %2757, 1.500000e+00
  %2785 = fmul fast float %2784, %2763
  %2786 = fmul fast float %2785, %2768
  %2787 = fmul fast float %2758, 1.500000e+00
  %2788 = fmul fast float %2787, %2763
  %2789 = fmul fast float %2788, %2768
  %2790 = fmul fast float %2752, 1.500000e+00
  %2791 = fmul fast float %2790, %2763
  %2792 = fmul fast float %2791, %2768
  %2793 = fmul fast float %2753, 1.500000e+00
  %2794 = fmul fast float %2793, %2763
  %2795 = fmul fast float %2794, %2768
  %2796 = fmul fast float %2754, 1.500000e+00
  %2797 = fmul fast float %2796, %2763
  %2798 = fmul fast float %2797, %2768
  %2799 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2769)  ; FMax(a,b)
  %2800 = call float @dx.op.dot3.f32(i32 55, float %2774, float %2777, float %2780, float %2774, float %2777, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %2801 = fcmp fast oeq float %2800, 0.000000e+00
  %2802 = fcmp fast oeq float %2799, 0.000000e+00
  %2803 = or i1 %2802, %2801
  br i1 %2803, label %2833, label %2804

; <label>:2804                                    ; preds = %2750
  %2805 = fsub fast float -0.000000e+00, %2780
  %2806 = fsub fast float -0.000000e+00, %2774
  %2807 = call float @dx.op.unary.f32(i32 24, float %2800)  ; Sqrt(value)
  %2808 = fdiv fast float %2807, %2799
  %2809 = fcmp fast ogt float %2808, 0x3FFB6F8900000000
  %2810 = select i1 %2809, float 0x3FFB6F8900000000, float %2808
  %2811 = fmul fast float %2810, 0x3FE8A23460000000
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2813 = call float @dx.op.binary.f32(i32 35, float %2810, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2814 = fmul fast float %2812, %2799
  %2815 = fmul fast float %2813, 0x3FF279A740000000
  %2816 = fadd fast float %2815, -1.000000e+00
  %2817 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2777, float %2805, float %2806, float %2777)  ; Dot3(ax,ay,az,bx,by,bz)
  %2818 = call float @dx.op.unary.f32(i32 25, float %2817)  ; Rsqrt(value)
  %2819 = fmul fast float %2818, %2805
  %2820 = fmul fast float %2818, %2806
  %2821 = fmul fast float %2818, %2777
  %2822 = fmul fast float %2816, %2816
  %2823 = fsub fast float 1.000000e+00, %2822
  %2824 = fmul fast float %2813, 0x40005F8BE0000000
  %2825 = fsub fast float 0x400C5BF8A0000000, %2824
  %2826 = fdiv fast float %2814, %2825
  %2827 = fmul fast float %2826, 0x3FEE31C3C0000000
  %2828 = fmul fast float %2827, %2823
  %2829 = fmul fast float %2813, 0x3FDACB7480000000
  %2830 = fadd fast float %2829, 0xBFD7347680000000
  %2831 = fmul fast float %2830, %2826
  %2832 = fmul fast float %2831, %2823
  br label %2833

; <label>:2833                                    ; preds = %2804, %2750
  %2834 = phi float [ %2819, %2804 ], [ 0.000000e+00, %2750 ]
  %2835 = phi float [ %2820, %2804 ], [ 0.000000e+00, %2750 ]
  %2836 = phi float [ %2821, %2804 ], [ 0.000000e+00, %2750 ]
  %2837 = phi float [ %2828, %2804 ], [ 0.000000e+00, %2750 ]
  %2838 = phi float [ %2832, %2804 ], [ 0.000000e+00, %2750 ]
  %2839 = call float @dx.op.dot3.f32(i32 55, float %2834, float %2835, float %2836, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2840 = fmul fast float %2839, %2839
  %2841 = fmul fast float %2840, 0x3FEE471020000000
  %2842 = fadd fast float %2841, 0xBFD42F6020000000
  %2843 = fmul fast float %2799, 0x3FD20DD760000000
  %2844 = fmul fast float %2842, %2838
  %2845 = fmul fast float %2837, 0x3FDF454380000000
  %2846 = fmul fast float %2845, %2839
  %2847 = fadd fast float %2846, %2843
  %2848 = fadd fast float %2847, %2844
  %2849 = call float @dx.op.dot3.f32(i32 55, float %2834, float %2835, float %2836, float %1799, float %1800, float %1801)  ; Dot3(ax,ay,az,bx,by,bz)
  %2850 = fmul fast float %2849, 0x3FDF454380000000
  %2851 = fmul fast float %2849, %2849
  %2852 = fmul fast float %2851, 0x3FEE471020000000
  %2853 = fadd fast float %2852, 0xBFD42F6020000000
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2799, float %2837, float %2838, float 0x3FD20DD760000000, float %2850, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2770)  ; FMax(a,b)
  %2856 = call float @dx.op.dot3.f32(i32 55, float %2783, float %2786, float %2789, float %2783, float %2786, float %2789)  ; Dot3(ax,ay,az,bx,by,bz)
  %2857 = fcmp fast oeq float %2856, 0.000000e+00
  %2858 = fcmp fast oeq float %2855, 0.000000e+00
  %2859 = or i1 %2858, %2857
  br i1 %2859, label %2889, label %2860

; <label>:2860                                    ; preds = %2833
  %2861 = fsub fast float -0.000000e+00, %2789
  %2862 = fsub fast float -0.000000e+00, %2783
  %2863 = call float @dx.op.unary.f32(i32 24, float %2856)  ; Sqrt(value)
  %2864 = fdiv fast float %2863, %2855
  %2865 = fcmp fast ogt float %2864, 0x3FFB6F8900000000
  %2866 = select i1 %2865, float 0x3FFB6F8900000000, float %2864
  %2867 = fmul fast float %2866, 0x3FE8A23460000000
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = call float @dx.op.binary.f32(i32 35, float %2866, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2870 = fmul fast float %2868, %2855
  %2871 = fmul fast float %2869, 0x3FF279A740000000
  %2872 = fadd fast float %2871, -1.000000e+00
  %2873 = call float @dx.op.dot3.f32(i32 55, float %2861, float %2862, float %2786, float %2861, float %2862, float %2786)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = call float @dx.op.unary.f32(i32 25, float %2873)  ; Rsqrt(value)
  %2875 = fmul fast float %2874, %2861
  %2876 = fmul fast float %2874, %2862
  %2877 = fmul fast float %2874, %2786
  %2878 = fmul fast float %2872, %2872
  %2879 = fsub fast float 1.000000e+00, %2878
  %2880 = fmul fast float %2869, 0x40005F8BE0000000
  %2881 = fsub fast float 0x400C5BF8A0000000, %2880
  %2882 = fdiv fast float %2870, %2881
  %2883 = fmul fast float %2882, 0x3FEE31C3C0000000
  %2884 = fmul fast float %2883, %2879
  %2885 = fmul fast float %2869, 0x3FDACB7480000000
  %2886 = fadd fast float %2885, 0xBFD7347680000000
  %2887 = fmul fast float %2886, %2882
  %2888 = fmul fast float %2887, %2879
  br label %2889

; <label>:2889                                    ; preds = %2860, %2833
  %2890 = phi float [ %2875, %2860 ], [ 0.000000e+00, %2833 ]
  %2891 = phi float [ %2876, %2860 ], [ 0.000000e+00, %2833 ]
  %2892 = phi float [ %2877, %2860 ], [ 0.000000e+00, %2833 ]
  %2893 = phi float [ %2884, %2860 ], [ 0.000000e+00, %2833 ]
  %2894 = phi float [ %2888, %2860 ], [ 0.000000e+00, %2833 ]
  %2895 = call float @dx.op.dot3.f32(i32 55, float %2890, float %2891, float %2892, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2896 = fmul fast float %2895, %2895
  %2897 = fmul fast float %2896, 0x3FEE471020000000
  %2898 = fadd fast float %2897, 0xBFD42F6020000000
  %2899 = fmul fast float %2855, 0x3FD20DD760000000
  %2900 = fmul fast float %2898, %2894
  %2901 = fmul fast float %2893, 0x3FDF454380000000
  %2902 = fmul fast float %2901, %2895
  %2903 = fadd fast float %2902, %2899
  %2904 = fadd fast float %2903, %2900
  %2905 = call float @dx.op.dot3.f32(i32 55, float %2890, float %2891, float %2892, float %1799, float %1800, float %1801)  ; Dot3(ax,ay,az,bx,by,bz)
  %2906 = fmul fast float %2905, 0x3FDF454380000000
  %2907 = fmul fast float %2905, %2905
  %2908 = fmul fast float %2907, 0x3FEE471020000000
  %2909 = fadd fast float %2908, 0xBFD42F6020000000
  %2910 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2893, float %2894, float 0x3FD20DD760000000, float %2906, float %2909)  ; Dot3(ax,ay,az,bx,by,bz)
  %2911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2771)  ; FMax(a,b)
  %2912 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2795, float %2798, float %2792, float %2795, float %2798)  ; Dot3(ax,ay,az,bx,by,bz)
  %2913 = fcmp fast oeq float %2912, 0.000000e+00
  %2914 = fcmp fast oeq float %2911, 0.000000e+00
  %2915 = or i1 %2914, %2913
  br i1 %2915, label %2945, label %2916

; <label>:2916                                    ; preds = %2889
  %2917 = fsub fast float -0.000000e+00, %2798
  %2918 = fsub fast float -0.000000e+00, %2792
  %2919 = call float @dx.op.unary.f32(i32 24, float %2912)  ; Sqrt(value)
  %2920 = fdiv fast float %2919, %2911
  %2921 = fcmp fast ogt float %2920, 0x3FFB6F8900000000
  %2922 = select i1 %2921, float 0x3FFB6F8900000000, float %2920
  %2923 = fmul fast float %2922, 0x3FE8A23460000000
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2922, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2926 = fmul fast float %2924, %2911
  %2927 = fmul fast float %2925, 0x3FF279A740000000
  %2928 = fadd fast float %2927, -1.000000e+00
  %2929 = call float @dx.op.dot3.f32(i32 55, float %2917, float %2918, float %2795, float %2917, float %2918, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2930 = call float @dx.op.unary.f32(i32 25, float %2929)  ; Rsqrt(value)
  %2931 = fmul fast float %2930, %2917
  %2932 = fmul fast float %2930, %2918
  %2933 = fmul fast float %2930, %2795
  %2934 = fmul fast float %2928, %2928
  %2935 = fsub fast float 1.000000e+00, %2934
  %2936 = fmul fast float %2925, 0x40005F8BE0000000
  %2937 = fsub fast float 0x400C5BF8A0000000, %2936
  %2938 = fdiv fast float %2926, %2937
  %2939 = fmul fast float %2938, 0x3FEE31C3C0000000
  %2940 = fmul fast float %2939, %2935
  %2941 = fmul fast float %2925, 0x3FDACB7480000000
  %2942 = fadd fast float %2941, 0xBFD7347680000000
  %2943 = fmul fast float %2942, %2938
  %2944 = fmul fast float %2943, %2935
  br label %2945

; <label>:2945                                    ; preds = %2916, %2889
  %2946 = phi float [ %2931, %2916 ], [ 0.000000e+00, %2889 ]
  %2947 = phi float [ %2932, %2916 ], [ 0.000000e+00, %2889 ]
  %2948 = phi float [ %2933, %2916 ], [ 0.000000e+00, %2889 ]
  %2949 = phi float [ %2940, %2916 ], [ 0.000000e+00, %2889 ]
  %2950 = phi float [ %2944, %2916 ], [ 0.000000e+00, %2889 ]
  %2951 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2947, float %2948, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2952 = fmul fast float %2951, %2951
  %2953 = fmul fast float %2952, 0x3FEE471020000000
  %2954 = fadd fast float %2953, 0xBFD42F6020000000
  %2955 = fmul fast float %2911, 0x3FD20DD760000000
  %2956 = fmul fast float %2954, %2950
  %2957 = fmul fast float %2949, 0x3FDF454380000000
  %2958 = fmul fast float %2957, %2951
  %2959 = fadd fast float %2958, %2955
  %2960 = fadd fast float %2959, %2956
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2947, float %2948, float %1799, float %1800, float %1801)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = fmul fast float %2961, 0x3FDF454380000000
  %2963 = fmul fast float %2961, %2961
  %2964 = fmul fast float %2963, 0x3FEE471020000000
  %2965 = fadd fast float %2964, 0xBFD42F6020000000
  %2966 = call float @dx.op.dot3.f32(i32 55, float %2911, float %2949, float %2950, float 0x3FD20DD760000000, float %2962, float %2965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2967 = call float @dx.op.binary.f32(i32 35, float %2848, float 0.000000e+00)  ; FMax(a,b)
  %2968 = call float @dx.op.binary.f32(i32 35, float %2904, float 0.000000e+00)  ; FMax(a,b)
  %2969 = call float @dx.op.binary.f32(i32 35, float %2960, float 0.000000e+00)  ; FMax(a,b)
  %2970 = call float @dx.op.binary.f32(i32 35, float %2854, float 0.000000e+00)  ; FMax(a,b)
  %2971 = call float @dx.op.binary.f32(i32 35, float %2910, float 0.000000e+00)  ; FMax(a,b)
  %2972 = call float @dx.op.binary.f32(i32 35, float %2966, float 0.000000e+00)  ; FMax(a,b)
  %2973 = fsub fast float %2169, %2967
  %2974 = fsub fast float %2170, %2968
  %2975 = fsub fast float %2171, %2969
  %2976 = fmul fast float %2973, %1850
  %2977 = fmul fast float %2974, %1850
  %2978 = fmul fast float %2975, %1850
  %2979 = fadd fast float %2976, %2967
  %2980 = fadd fast float %2977, %2968
  %2981 = fadd fast float %2978, %2969
  %2982 = fsub fast float %2166, %2970
  %2983 = fsub fast float %2167, %2971
  %2984 = fsub fast float %2168, %2972
  %2985 = fmul fast float %2982, %1850
  %2986 = fmul fast float %2983, %1850
  %2987 = fmul fast float %2984, %1850
  %2988 = fadd fast float %2985, %2970
  %2989 = fadd fast float %2986, %2971
  %2990 = fadd fast float %2987, %2972
  br label %2991

; <label>:2991                                    ; preds = %2945, %2165
  %2992 = phi float [ %2988, %2945 ], [ %2166, %2165 ]
  %2993 = phi float [ %2989, %2945 ], [ %2167, %2165 ]
  %2994 = phi float [ %2990, %2945 ], [ %2168, %2165 ]
  %2995 = phi float [ %2979, %2945 ], [ %2169, %2165 ]
  %2996 = phi float [ %2980, %2945 ], [ %2170, %2165 ]
  %2997 = phi float [ %2981, %2945 ], [ %2171, %2165 ]
  %2998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2998, 0
  %3000 = call float @dx.op.binary.f32(i32 36, float %1783, float %2999)  ; FMin(a,b)
  %3001 = fsub fast float 1.000000e+00, %1802
  %3002 = fmul fast float %3000, %3001
  %3003 = fsub fast float 1.000000e+00, %3002
  %3004 = bitcast float %3003 to i32
  %3005 = sub nsw i32 2129859010, %3004
  %3006 = bitcast i32 %3005 to float
  %3007 = call float @dx.op.binary.f32(i32 36, float %1784, float %2999)  ; FMin(a,b)
  %3008 = fmul fast float %3007, %3001
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = bitcast float %3009 to i32
  %3011 = sub nsw i32 2129859010, %3010
  %3012 = bitcast i32 %3011 to float
  %3013 = call float @dx.op.binary.f32(i32 36, float %1785, float %2999)  ; FMin(a,b)
  %3014 = fmul fast float %3013, %3001
  %3015 = fsub fast float 1.000000e+00, %3014
  %3016 = bitcast float %3015 to i32
  %3017 = sub nsw i32 2129859010, %3016
  %3018 = bitcast i32 %3017 to float
  %3019 = fmul fast float %2995, %1802
  %3020 = fmul fast float %3019, %3006
  %3021 = fmul fast float %2996, %1802
  %3022 = fmul fast float %3021, %3012
  %3023 = fmul fast float %2997, %1802
  %3024 = fmul fast float %3023, %3018
  %3025 = call float @dx.op.binary.f32(i32 36, float %1786, float %2999)  ; FMin(a,b)
  %3026 = fmul fast float %3025, %3001
  %3027 = fsub fast float 1.000000e+00, %3026
  %3028 = bitcast float %3027 to i32
  %3029 = sub nsw i32 2129859010, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = call float @dx.op.binary.f32(i32 36, float %1787, float %2999)  ; FMin(a,b)
  %3032 = fmul fast float %3031, %3001
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = bitcast float %3033 to i32
  %3035 = sub nsw i32 2129859010, %3034
  %3036 = bitcast i32 %3035 to float
  %3037 = call float @dx.op.binary.f32(i32 36, float %1791, float %2999)  ; FMin(a,b)
  %3038 = fmul fast float %3037, %3001
  %3039 = fsub fast float 1.000000e+00, %3038
  %3040 = bitcast float %3039 to i32
  %3041 = sub nsw i32 2129859010, %3040
  %3042 = bitcast i32 %3041 to float
  %3043 = fmul fast float %2992, %1802
  %3044 = fmul fast float %3043, %3030
  %3045 = fmul fast float %2993, %1802
  %3046 = fmul fast float %3045, %3036
  %3047 = fmul fast float %2994, %1802
  %3048 = fmul fast float %3047, %3042
  %3049 = call float @dx.op.dot3.f32(i32 55, float %3020, float %3022, float %3024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3050 = select i1 %209, float 0.000000e+00, float %3020
  %3051 = select i1 %209, float %3049, float %3022
  %3052 = select i1 %209, float 0.000000e+00, float %3024
  %3053 = call float @dx.op.dot3.f32(i32 55, float %3044, float %3046, float %3048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3054 = select i1 %209, float 0.000000e+00, float %3044
  %3055 = select i1 %209, float %3053, float %3046
  %3056 = select i1 %209, float 0.000000e+00, float %3048
  %3057 = fmul fast float %901, %901
  %3058 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3059 = fmul fast float %1793, 9.843750e-01
  %3060 = fmul fast float %1789, 9.843750e-01
  %3061 = fadd fast float %3059, 7.812500e-03
  %3062 = fadd fast float %3060, 7.812500e-03
  %3063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %3061, float %3062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3065 = extractvalue %dx.types.ResRet.f32 %3063, 1
  %3066 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3067 = extractvalue %dx.types.ResRet.f32 %3063, 3
  %3068 = fsub fast float 1.000000e+00, %3058
  %3069 = fsub fast float %3066, %3064
  %3070 = fsub fast float %3067, %3065
  %3071 = fmul fast float %3069, %3068
  %3072 = fmul fast float %3070, %3068
  %3073 = fadd fast float %3071, %3064
  %3074 = fadd fast float %3072, %3065
  %3075 = fmul fast float %3073, %1786
  %3076 = fmul fast float %3073, %1787
  %3077 = fmul fast float %3073, %1791
  %3078 = fadd fast float %3075, %3074
  %3079 = fadd fast float %3076, %3074
  %3080 = fadd fast float %3077, %3074
  %3081 = fcmp fast ogt float %1445, 0.000000e+00
  br i1 %3081, label %3082, label %3108

; <label>:3082                                    ; preds = %2991
  %3083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %41, float %1445, float %1793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 0
  %3085 = extractvalue %dx.types.ResRet.f32 %3083, 1
  %3086 = extractvalue %dx.types.ResRet.f32 %3083, 2
  %3087 = fadd fast float %3084, -5.000000e-01
  %3088 = fadd fast float %3085, -5.000000e-01
  %3089 = fadd fast float %3086, -5.000000e-01
  %3090 = fsub fast float 1.000000e+00, %1786
  %3091 = fsub fast float 1.000000e+00, %1787
  %3092 = fsub fast float 1.000000e+00, %1791
  %3093 = fmul fast float %1786, 4.000000e+00
  %3094 = fmul fast float %3093, %3090
  %3095 = fmul fast float %3094, %3087
  %3096 = fmul fast float %1787, 4.000000e+00
  %3097 = fmul fast float %3096, %3091
  %3098 = fmul fast float %3097, %3088
  %3099 = fmul fast float %1791, 4.000000e+00
  %3100 = fmul fast float %3099, %3092
  %3101 = fmul fast float %3100, %3089
  %3102 = fadd fast float %3095, %3078
  %3103 = fadd fast float %3098, %3079
  %3104 = fadd fast float %3101, %3080
  %3105 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3106 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3107 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  br label %3108

; <label>:3108                                    ; preds = %3082, %2991
  %3109 = phi float [ %3105, %3082 ], [ %3078, %2991 ]
  %3110 = phi float [ %3106, %3082 ], [ %3079, %2991 ]
  %3111 = phi float [ %3107, %3082 ], [ %3080, %2991 ]
  %3112 = call float @dx.op.binary.f32(i32 35, float %3110, float %3111)  ; FMax(a,b)
  %3113 = call float @dx.op.binary.f32(i32 35, float %3109, float %3112)  ; FMax(a,b)
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = fmul fast float %3114, %3050
  %3116 = fmul fast float %3114, %3051
  %3117 = fmul fast float %3114, %3052
  %3118 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1784, float %1785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3119 = fcmp fast ogt float %3118, 0x3E7FF19E20000000
  %3120 = fdiv fast float 1.000000e+00, %3118
  %3121 = select i1 %3119, float %3120, float 0.000000e+00
  %3122 = fmul fast float %3121, %1783
  %3123 = fmul fast float %3121, %1784
  %3124 = fmul fast float %3121, %1785
  %3125 = fadd fast float %3122, -1.000000e+00
  %3126 = fadd fast float %3123, -1.000000e+00
  %3127 = fadd fast float %3124, -1.000000e+00
  %3128 = fmul fast float %3125, 5.000000e-01
  %3129 = fmul fast float %3126, 5.000000e-01
  %3130 = fmul fast float %3127, 5.000000e-01
  %3131 = fadd fast float %3128, 1.000000e+00
  %3132 = fadd fast float %3129, 1.000000e+00
  %3133 = fadd fast float %3130, 1.000000e+00
  %3134 = call float @dx.op.binary.f32(i32 35, float %1793, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3135 = fdiv fast float %901, %3134
  %3136 = fcmp fast olt float %1493, 1.270000e+02
  %3137 = fcmp fast olt float %1494, 1.270000e+02
  %3138 = fcmp fast olt float %1495, 1.270000e+02
  %3139 = fmul fast float %1493, 0xBFF7154760000000
  %3140 = fmul fast float %3139, %3135
  %3141 = fmul fast float %1494, 0xBFF7154760000000
  %3142 = fmul fast float %3141, %3135
  %3143 = fmul fast float %1495, 0xBFF7154760000000
  %3144 = fmul fast float %3143, %3135
  %3145 = call float @dx.op.unary.f32(i32 21, float %3140)  ; Exp(value)
  %3146 = call float @dx.op.unary.f32(i32 21, float %3142)  ; Exp(value)
  %3147 = call float @dx.op.unary.f32(i32 21, float %3144)  ; Exp(value)
  %3148 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  %3149 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3150 = call float @dx.op.unary.f32(i32 7, float %3147)  ; Saturate(value)
  %3151 = select i1 %3136, float %3148, float 0.000000e+00
  %3152 = select i1 %3137, float %3149, float 0.000000e+00
  %3153 = select i1 %3138, float %3150, float 0.000000e+00
  %3154 = fmul fast float %3151, %3114
  %3155 = fmul fast float %3152, %3114
  %3156 = fmul fast float %3153, %3114
  %3157 = fadd fast float %3154, -1.000000e+00
  %3158 = fadd fast float %3155, -1.000000e+00
  %3159 = fadd fast float %3156, -1.000000e+00
  %3160 = fmul fast float %3109, %3054
  %3161 = fmul fast float %3110, %3055
  %3162 = fmul fast float %3111, %3056
  %3163 = fsub fast float 1.000000e+00, %1793
  %3164 = bitcast float %3163 to i32
  %3165 = sitofp i32 %3164 to float
  %3166 = fmul fast float %3165, 5.000000e+00
  %3167 = fadd fast float %3166, 0xC1EFBF8940000000
  %3168 = fptosi float %3167 to i32
  %3169 = bitcast i32 %3168 to float
  %3170 = fmul fast float %3169, %1444
  %3171 = fmul fast float %3050, %3170
  %3172 = fmul fast float %3171, %3114
  %3173 = fmul fast float %3172, %3131
  %3174 = fmul fast float %3051, %3170
  %3175 = fmul fast float %3174, %3114
  %3176 = fmul fast float %3175, %3132
  %3177 = fmul fast float %3052, %3170
  %3178 = fmul fast float %3177, %3114
  %3179 = fmul fast float %3178, %3133
  %3180 = fmul fast float %3115, %1465
  %3181 = fmul fast float %3116, %1465
  %3182 = fmul fast float %3117, %1465
  %3183 = fadd fast float %3160, %1446
  %3184 = fadd fast float %3183, %3173
  %3185 = fmul fast float %3184, %1465
  %3186 = fadd fast float %3161, %1447
  %3187 = fadd fast float %3186, %3176
  %3188 = fmul fast float %3187, %1465
  %3189 = fadd fast float %3162, %1448
  %3190 = fadd fast float %3189, %3179
  %3191 = fmul fast float %3190, %1465
  %3192 = bitcast i32 %1805 to float
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 3
  %3195 = fcmp fast oeq float %3194, 0.000000e+00
  br i1 %3195, label %4196, label %3196

; <label>:3196                                    ; preds = %3108
  %3197 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3198 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3199 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3205 = extractvalue %dx.types.CBufRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.CBufRet.f32 %3204, 1
  %3207 = call float @dx.op.dot3.f32(i32 55, float %3201, float %3202, float %3203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3208 = select i1 %209, float %3205, float %3201
  %3209 = select i1 %209, float %3207, float %3202
  %3210 = select i1 %209, float %3206, float %3203
  %3211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.f32 %3211, 2
  %3213 = fmul fast float %3212, %52
  %3214 = fmul fast float %3212, %53
  %3215 = fmul fast float %3212, %54
  %3216 = fadd fast float %3213, %119
  %3217 = fadd fast float %3214, %120
  %3218 = fadd fast float %3215, %121
  %3219 = fcmp fast olt float %3194, 0.000000e+00
  br i1 %3219, label %3841, label %3220

; <label>:3220                                    ; preds = %3196
  %3221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.f32 %3221, 0
  %3223 = extractvalue %dx.types.CBufRet.f32 %3221, 1
  %3224 = extractvalue %dx.types.CBufRet.f32 %3221, 2
  %3225 = extractvalue %dx.types.CBufRet.f32 %3221, 3
  %3226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.CBufRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.CBufRet.f32 %3226, 2
  %3230 = extractvalue %dx.types.CBufRet.f32 %3226, 3
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3235 = extractvalue %dx.types.CBufRet.f32 %3231, 3
  %3236 = fmul fast float %3222, %3216
  %3237 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3223, float %3236)  ; FMad(a,b,c)
  %3238 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3224, float %3237)  ; FMad(a,b,c)
  %3239 = fadd fast float %3238, %3225
  %3240 = fmul fast float %3227, %3216
  %3241 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3228, float %3240)  ; FMad(a,b,c)
  %3242 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3229, float %3241)  ; FMad(a,b,c)
  %3243 = fadd fast float %3242, %3230
  %3244 = fmul fast float %3232, %3216
  %3245 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3233, float %3244)  ; FMad(a,b,c)
  %3246 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3234, float %3245)  ; FMad(a,b,c)
  %3247 = fadd fast float %3246, %3235
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3251 = extractvalue %dx.types.CBufRet.f32 %3248, 3
  %3252 = fmul fast float %3251, %3239
  %3253 = fmul fast float %3251, %3243
  %3254 = fadd fast float %3252, %3249
  %3255 = fadd fast float %3253, %3250
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3260 = fmul fast float %3259, %3239
  %3261 = fmul fast float %3259, %3243
  %3262 = fadd fast float %3260, %3257
  %3263 = fadd fast float %3261, %3258
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3266 = fsub fast float %3265, %3247
  %3267 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3268 = fmul fast float %3266, %3267
  %3269 = fsub fast float 1.000000e+00, %3268
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3274 = fadd fast float %3273, %3271
  %3275 = fcmp fast ogt float %3274, 0.000000e+00
  br i1 %3275, label %3276, label %3300

; <label>:3276                                    ; preds = %3220
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.CBufRet.f32 %3277, 1
  %3280 = fsub fast float %3262, %3278
  %3281 = fsub fast float %3263, %3279
  %3282 = fcmp fast olt float %3280, 0.000000e+00
  %3283 = fcmp fast olt float %3281, 0.000000e+00
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.CBufRet.f32 %3284, 2
  %3288 = extractvalue %dx.types.CBufRet.f32 %3284, 3
  %3289 = select i1 %3282, float %3285, float %3287
  %3290 = select i1 %3283, float %3286, float %3288
  %3291 = fmul fast float %3289, %3280
  %3292 = fmul fast float %3290, %3281
  %3293 = call float @dx.op.unary.f32(i32 6, float %3291)  ; FAbs(value)
  %3294 = call float @dx.op.unary.f32(i32 6, float %3292)  ; FAbs(value)
  %3295 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  %3296 = call float @dx.op.binary.f32(i32 35, float %3293, float %3294)  ; FMax(a,b)
  %3297 = fsub fast float %3295, %3296
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fmul fast float %3298, %3270
  br label %3300

; <label>:3300                                    ; preds = %3276, %3220
  %3301 = phi float [ %3299, %3276 ], [ 0.000000e+00, %3220 ]
  %3302 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3303 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3304 = fadd fast float %3303, %3302
  %3305 = fcmp fast ogt float %3304, 0.000000e+00
  %3306 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  br i1 %3305, label %3307, label %3330

; <label>:3307                                    ; preds = %3300
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.CBufRet.f32 %3308, 1
  %3311 = fsub fast float %3254, %3309
  %3312 = fsub fast float %3255, %3310
  %3313 = fcmp fast olt float %3311, 0.000000e+00
  %3314 = fcmp fast olt float %3312, 0.000000e+00
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.CBufRet.f32 %3315, 1
  %3318 = extractvalue %dx.types.CBufRet.f32 %3315, 2
  %3319 = extractvalue %dx.types.CBufRet.f32 %3315, 3
  %3320 = select i1 %3313, float %3316, float %3318
  %3321 = select i1 %3314, float %3317, float %3319
  %3322 = fmul fast float %3320, %3311
  %3323 = fmul fast float %3321, %3312
  %3324 = call float @dx.op.unary.f32(i32 6, float %3322)  ; FAbs(value)
  %3325 = call float @dx.op.unary.f32(i32 6, float %3323)  ; FAbs(value)
  %3326 = call float @dx.op.binary.f32(i32 35, float %3324, float %3325)  ; FMax(a,b)
  %3327 = fsub fast float %3306, %3326
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3329 = fmul fast float %3328, %3270
  br label %3330

; <label>:3330                                    ; preds = %3307, %3300
  %3331 = phi float [ %3329, %3307 ], [ 0.000000e+00, %3300 ]
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 1
  %3334 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3338 = fsub fast float %3239, %3336
  %3339 = fsub fast float %3243, %3337
  %3340 = fcmp fast olt float %3338, 0.000000e+00
  %3341 = fcmp fast olt float %3339, 0.000000e+00
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.CBufRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.CBufRet.f32 %3342, 2
  %3346 = extractvalue %dx.types.CBufRet.f32 %3342, 3
  %3347 = select i1 %3340, float %3343, float %3345
  %3348 = select i1 %3341, float %3344, float %3346
  %3349 = fmul fast float %3347, %3338
  %3350 = fmul fast float %3348, %3339
  %3351 = call float @dx.op.unary.f32(i32 6, float %3349)  ; FAbs(value)
  %3352 = call float @dx.op.unary.f32(i32 6, float %3350)  ; FAbs(value)
  %3353 = call float @dx.op.binary.f32(i32 35, float %3351, float %3352)  ; FMax(a,b)
  %3354 = fsub fast float %3306, %3353
  %3355 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3356 = call float @dx.op.binary.f32(i32 36, float %3355, float %3334)  ; FMin(a,b)
  %3357 = fmul fast float %3356, %3270
  %3358 = fsub fast float %3331, %3357
  %3359 = fsub fast float %3301, %3331
  %3360 = fsub fast float %3359, %3357
  %3361 = call float @dx.op.binary.f32(i32 35, float %3331, float %3301)  ; FMax(a,b)
  %3362 = call float @dx.op.binary.f32(i32 35, float %3357, float %3361)  ; FMax(a,b)
  %3363 = fcmp fast olt float %3362, 1.000000e+00
  br i1 %3363, label %3364, label %3762, !dx.controlflow.hints !87

; <label>:3364                                    ; preds = %3330
  %3365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3365, 0
  %3367 = fcmp fast une float %3366, 0.000000e+00
  br i1 %3367, label %3368, label %3762, !dx.controlflow.hints !88

; <label>:3368                                    ; preds = %3364
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.CBufRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.CBufRet.f32 %3369, 3
  %3374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3375 = extractvalue %dx.types.CBufRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.CBufRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.CBufRet.f32 %3374, 2
  %3378 = extractvalue %dx.types.CBufRet.f32 %3374, 3
  %3379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3380 = extractvalue %dx.types.CBufRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.CBufRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.CBufRet.f32 %3379, 2
  %3383 = extractvalue %dx.types.CBufRet.f32 %3379, 3
  %3384 = fmul fast float %3370, %3216
  %3385 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3371, float %3384)  ; FMad(a,b,c)
  %3386 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3372, float %3385)  ; FMad(a,b,c)
  %3387 = fadd fast float %3386, %3373
  %3388 = fmul fast float %3375, %3216
  %3389 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3376, float %3388)  ; FMad(a,b,c)
  %3390 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3377, float %3389)  ; FMad(a,b,c)
  %3391 = fadd fast float %3390, %3378
  %3392 = fmul fast float %3380, %3216
  %3393 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3381, float %3392)  ; FMad(a,b,c)
  %3394 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3382, float %3393)  ; FMad(a,b,c)
  %3395 = fadd fast float %3394, %3383
  %3396 = fcmp fast oge float %3387, 1.000000e+00
  %3397 = fcmp fast oge float %3391, 1.000000e+00
  %3398 = or i1 %3396, %3397
  %3399 = fcmp fast olt float %3387, 0.000000e+00
  %3400 = fcmp fast olt float %3391, 0.000000e+00
  %3401 = or i1 %3399, %3400
  %3402 = or i1 %3398, %3401
  br i1 %3402, label %3762, label %3403, !dx.controlflow.hints !89

; <label>:3403                                    ; preds = %3368
  %3404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3405 = extractvalue %dx.types.CBufRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.CBufRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.CBufRet.f32 %3404, 2
  %3408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.i32 %3408, 2
  %3410 = uitofp i32 %3409 to float
  %3411 = extractvalue %dx.types.CBufRet.i32 %3408, 3
  %3412 = uitofp i32 %3411 to float
  %3413 = extractvalue %dx.types.CBufRet.f32 %3404, 3
  %3414 = fmul fast float %3413, 2.000000e+00
  %3415 = fsub fast float %3387, %3405
  %3416 = fsub fast float %3391, %3406
  %3417 = fmul fast float %3414, %3415
  %3418 = fmul fast float %3414, %3416
  %3419 = fdiv fast float 1.000000e+00, %3199
  %3420 = fmul fast float %3418, %3419
  %3421 = call float @dx.op.unary.f32(i32 6, float %3420)  ; FAbs(value)
  %3422 = fmul fast float %3407, %3218
  %3423 = fmul fast float %3422, %3414
  %3424 = call float @dx.op.unary.f32(i32 6, float %3423)  ; FAbs(value)
  %3425 = call float @dx.op.unary.f32(i32 6, float %3417)  ; FAbs(value)
  %3426 = call float @dx.op.binary.f32(i32 35, float %3424, float %3421)  ; FMax(a,b)
  %3427 = call float @dx.op.binary.f32(i32 35, float %3425, float %3426)  ; FMax(a,b)
  %3428 = fmul fast float %3427, 2.000000e+00
  %3429 = call float @dx.op.unary.f32(i32 23, float %3428)  ; Log(value)
  %3430 = call float @dx.op.binary.f32(i32 35, float %3429, float %3410)  ; FMax(a,b)
  %3431 = call float @dx.op.unary.f32(i32 22, float %3430)  ; Frc(value)
  %3432 = fadd fast float %3431, 0xBFEA666660000000
  %3433 = fmul fast float %3432, 8.000000e+00
  %3434 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3435 = call float @dx.op.unary.f32(i32 27, float %3430)  ; Round_ni(value)
  %3436 = fadd fast float %3435, %3434
  %3437 = call float @dx.op.binary.f32(i32 36, float %3436, float %3412)  ; FMin(a,b)
  %3438 = call float @dx.op.unary.f32(i32 27, float %3437)  ; Round_ni(value)
  %3439 = fsub fast float -0.000000e+00, %3438
  %3440 = call float @dx.op.unary.f32(i32 21, float %3439)  ; Exp(value)
  %3441 = fmul fast float %3440, %3414
  %3442 = fmul fast float %3441, %3387
  %3443 = fmul fast float %3441, %3391
  %3444 = fmul fast float %3442, 2.500000e-01
  %3445 = fmul fast float %3443, 2.500000e-01
  %3446 = fadd fast float %3444, 5.000000e-01
  %3447 = fadd fast float %3445, 5.000000e-01
  %3448 = fsub fast float %3412, %3410
  %3449 = fptoui float %3448 to i32
  %3450 = add i32 %3449, 320
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %3450)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.CBufRet.f32 %3451, 1
  %3454 = fcmp fast une float %3437, %3412
  %3455 = fsub fast float %3387, %3452
  %3456 = fsub fast float %3391, %3453
  %3457 = call float @dx.op.unary.f32(i32 6, float %3455)  ; FAbs(value)
  %3458 = call float @dx.op.unary.f32(i32 6, float %3456)  ; FAbs(value)
  %3459 = fmul fast float %3457, %3441
  %3460 = fmul fast float %3458, %3441
  %3461 = fcmp fast olt float %3459, 1.000000e+00
  %3462 = fcmp fast olt float %3460, 1.000000e+00
  %3463 = and i1 %3461, %3462
  %3464 = or i1 %3454, %3463
  br i1 %3464, label %3465, label %3762, !dx.controlflow.hints !90

; <label>:3465                                    ; preds = %3403
  %3466 = fmul fast float %3443, 5.000000e-01
  %3467 = fmul fast float %3442, 5.000000e-01
  %3468 = fadd fast float %3466, 5.000000e-01
  %3469 = fadd fast float %3467, 5.000000e-01
  %3470 = sitofp i32 %3409 to float
  %3471 = fsub fast float %3437, %3470
  %3472 = call float @dx.op.unary.f32(i32 27, float %3471)  ; Round_ni(value)
  %3473 = call float @dx.op.unary.f32(i32 22, float %3437)  ; Frc(value)
  %3474 = call float @dx.op.unary.f32(i32 22, float %3469)  ; Frc(value)
  %3475 = call float @dx.op.unary.f32(i32 22, float %3468)  ; Frc(value)
  %3476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %40, float %3474, float %3475, float %3472, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = fcmp fast ogt float %3473, 0.000000e+00
  br i1 %3481, label %3482, label %3503, !dx.controlflow.hints !91

; <label>:3482                                    ; preds = %3465
  %3483 = fadd fast float %3472, 1.000000e+00
  %3484 = call float @dx.op.unary.f32(i32 22, float %3446)  ; Frc(value)
  %3485 = call float @dx.op.unary.f32(i32 22, float %3447)  ; Frc(value)
  %3486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %40, float %3484, float %3485, float %3483, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = fsub fast float %3487, %3477
  %3492 = fsub fast float %3488, %3478
  %3493 = fsub fast float %3489, %3479
  %3494 = fsub fast float %3490, %3480
  %3495 = fmul fast float %3491, %3473
  %3496 = fmul fast float %3492, %3473
  %3497 = fmul fast float %3493, %3473
  %3498 = fmul fast float %3494, %3473
  %3499 = fadd fast float %3495, %3477
  %3500 = fadd fast float %3496, %3478
  %3501 = fadd fast float %3497, %3479
  %3502 = fadd fast float %3498, %3480
  br label %3503

; <label>:3503                                    ; preds = %3482, %3465
  %3504 = phi float [ %3499, %3482 ], [ %3477, %3465 ]
  %3505 = phi float [ %3500, %3482 ], [ %3478, %3465 ]
  %3506 = phi float [ %3501, %3482 ], [ %3479, %3465 ]
  %3507 = phi float [ %3502, %3482 ], [ %3480, %3465 ]
  %3508 = fadd fast float %3504, -5.000000e-01
  %3509 = fadd fast float %3506, -5.000000e-01
  %3510 = fmul fast float %3508, 0xBFD5555560000000
  %3511 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3509, float %3510)  ; FMad(a,b,c)
  %3512 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3505, float 0.000000e+00)  ; FMad(a,b,c)
  %3513 = fadd fast float %3512, %3507
  %3514 = fmul fast float %3508, -7.500000e-01
  %3515 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3509, float %3514)  ; FMad(a,b,c)
  %3516 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3505, float 0.000000e+00)  ; FMad(a,b,c)
  %3517 = fadd fast float %3516, %3507
  %3518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.f32 %3518, 0
  %3520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.CBufRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.CBufRet.f32 %3520, 2
  %3524 = extractvalue %dx.types.CBufRet.f32 %3520, 3
  %3525 = fsub fast float %3521, %3511
  %3526 = fsub fast float %3522, %3513
  %3527 = fsub fast float %3523, %3515
  %3528 = fsub fast float %3524, %3517
  %3529 = fmul fast float %3525, %3519
  %3530 = fmul fast float %3526, %3519
  %3531 = fmul fast float %3527, %3519
  %3532 = fmul fast float %3528, %3519
  %3533 = fadd fast float %3529, %3511
  %3534 = fadd fast float %3530, %3513
  %3535 = fadd fast float %3531, %3515
  %3536 = fadd fast float %3532, %3517
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = and i32 %3538, 536870911
  %3540 = uitofp i32 %3539 to float
  %3541 = fmul fast float %3540, %3387
  %3542 = fmul fast float %3540, %3391
  %3543 = fptoui float %3541 to i32
  %3544 = fptoui float %3542 to i32
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = and i32 %3546, 31
  %3548 = lshr i32 %3543, %3547
  %3549 = lshr i32 %3544, %3547
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 31
  %3553 = shl i32 1, %3552
  %3554 = call i32 @dx.op.binary.i32(i32 40, i32 %3553, i32 4)  ; UMin(a,b)
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = extractvalue %dx.types.ResRet.i32 %3555, 1
  %3558 = icmp eq i32 %3554, 0
  br i1 %3558, label %3600, label %3559

; <label>:3559                                    ; preds = %3503
  br label %3560

; <label>:3560                                    ; preds = %3588, %3559
  %3561 = phi i32 [ %3591, %3588 ], [ 0, %3559 ]
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = lshr i32 %3563, 16
  %3565 = and i32 %3564, 31
  %3566 = shl i32 %3549, %3565
  %3567 = add i32 %3566, %3548
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = and i32 %3569, 31
  %3571 = shl i32 %3567, %3570
  %3572 = add i32 %3571, %3561
  %3573 = shl i32 %3572, 2
  %3574 = add i32 %3573, 32
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = icmp slt i32 %3576, 0
  %3578 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %3561
  %3579 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %3561
  %3580 = bitcast float* %3578 to i32*
  %3581 = bitcast float* %3579 to i32*
  br i1 %3577, label %3582, label %3588

; <label>:3582                                    ; preds = %3560
  %3583 = and i32 %3576, 1073741823
  %3584 = add nuw nsw i32 %3583, 20
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.i32 %3585, 1
  br label %3588

; <label>:3588                                    ; preds = %3582, %3560
  %3589 = phi i32 [ %3586, %3582 ], [ %3556, %3560 ]
  %3590 = phi i32 [ %3587, %3582 ], [ %3557, %3560 ]
  store i32 %3589, i32* %3580, align 4
  store i32 %3590, i32* %3581, align 4
  %3591 = add nuw i32 %3561, 1
  %3592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.i32 %3592, 2
  %3594 = icmp eq i32 %3593, 0
  %3595 = icmp ugt i32 %3576, -1073741825
  %3596 = and i1 %3595, %3594
  %3597 = icmp ult i32 %3591, %3554
  %3598 = and i1 %3596, %3597
  br i1 %3598, label %3560, label %3599

; <label>:3599                                    ; preds = %3588
  br label %3600

; <label>:3600                                    ; preds = %3599, %3503
  %3601 = phi i32 [ 0, %3503 ], [ %3591, %3599 ]
  %3602 = extractvalue %dx.types.CBufRet.f32 %3365, 2
  %3603 = fptoui float %3602 to i32
  %3604 = icmp eq i32 %3603, 0
  br i1 %3604, label %3656, label %3605

; <label>:3605                                    ; preds = %3600
  br label %3606

; <label>:3606                                    ; preds = %3651, %3605
  %3607 = phi i32 [ %3652, %3651 ], [ %3601, %3605 ]
  %3608 = phi i32 [ %3653, %3651 ], [ 0, %3605 ]
  %3609 = lshr i32 %3608, 2
  %3610 = and i32 %3608, 3
  %3611 = add nuw nsw i32 %3609, 83
  %3612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 %3611)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.i32 %3612, 0
  %3614 = extractvalue %dx.types.CBufRet.i32 %3612, 1
  %3615 = extractvalue %dx.types.CBufRet.i32 %3612, 2
  %3616 = extractvalue %dx.types.CBufRet.i32 %3612, 3
  %3617 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 0
  store i32 %3613, i32* %3617, align 4
  %3618 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 1
  store i32 %3614, i32* %3618, align 4
  %3619 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 2
  store i32 %3615, i32* %3619, align 4
  %3620 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 3
  store i32 %3616, i32* %3620, align 4
  %3621 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 %3610
  %3622 = load i32, i32* %3621, align 4, !tbaa !92, !noalias !96
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = lshr i32 %3624, 16
  %3626 = and i32 %3625, 31
  %3627 = shl i32 %3549, %3626
  %3628 = add i32 %3627, %3548
  %3629 = shl i32 %3628, 2
  %3630 = add i32 %3629, %3622
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = icmp eq i32 %3632, 0
  br i1 %3633, label %3651, label %3634

; <label>:3634                                    ; preds = %3606
  %3635 = icmp slt i32 %3632, 0
  %3636 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %3607
  %3637 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %3607
  %3638 = bitcast float* %3636 to i32*
  %3639 = bitcast float* %3637 to i32*
  br i1 %3635, label %3640, label %3647

; <label>:3640                                    ; preds = %3634
  %3641 = and i32 %3632, 1073741823
  %3642 = add i32 %3622, 20
  %3643 = add i32 %3642, %3641
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.i32 %3644, 1
  br label %3647

; <label>:3647                                    ; preds = %3640, %3634
  %3648 = phi i32 [ %3645, %3640 ], [ %3556, %3634 ]
  %3649 = phi i32 [ %3646, %3640 ], [ %3557, %3634 ]
  store i32 %3648, i32* %3638, align 4
  store i32 %3649, i32* %3639, align 4
  %3650 = add i32 %3607, 1
  br label %3651

; <label>:3651                                    ; preds = %3647, %3606
  %3652 = phi i32 [ %3607, %3606 ], [ %3650, %3647 ]
  %3653 = add nuw i32 %3608, 1
  %3654 = icmp eq i32 %3653, %3603
  br i1 %3654, label %3655, label %3606

; <label>:3655                                    ; preds = %3651
  br label %3656

; <label>:3656                                    ; preds = %3655, %3600
  %3657 = phi i32 [ %3601, %3600 ], [ %3652, %3655 ]
  %3658 = icmp eq i32 %3657, 1
  %3659 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 0
  %3660 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 0
  br i1 %3658, label %3661, label %3664

; <label>:3661                                    ; preds = %3656
  %3662 = load float, float* %3659, align 4
  %3663 = load float, float* %3660, align 4
  br label %3691

; <label>:3664                                    ; preds = %3656
  %3665 = load float, float* %3659, align 4
  %3666 = load float, float* %3660, align 4
  %3667 = fdiv fast float 1.000000e+00, %3666
  %3668 = fsub fast float %3665, %3667
  %3669 = icmp ugt i32 %3657, 1
  br i1 %3669, label %3670, label %3686

; <label>:3670                                    ; preds = %3664
  br label %3671

; <label>:3671                                    ; preds = %3671, %3670
  %3672 = phi float [ %3681, %3671 ], [ %3668, %3670 ]
  %3673 = phi float [ %3682, %3671 ], [ %3665, %3670 ]
  %3674 = phi i32 [ %3683, %3671 ], [ 1, %3670 ]
  %3675 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %3674
  %3676 = load float, float* %3675, align 4
  %3677 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %3674
  %3678 = load float, float* %3677, align 4
  %3679 = fdiv fast float 1.000000e+00, %3678
  %3680 = fsub fast float %3676, %3679
  %3681 = call float @dx.op.binary.f32(i32 36, float %3672, float %3680)  ; FMin(a,b)
  %3682 = call float @dx.op.binary.f32(i32 35, float %3673, float %3676)  ; FMax(a,b)
  %3683 = add nuw i32 %3674, 1
  %3684 = icmp eq i32 %3683, %3657
  br i1 %3684, label %3685, label %3671

; <label>:3685                                    ; preds = %3671
  br label %3686

; <label>:3686                                    ; preds = %3685, %3664
  %3687 = phi float [ %3668, %3664 ], [ %3681, %3685 ]
  %3688 = phi float [ %3665, %3664 ], [ %3682, %3685 ]
  %3689 = fsub fast float %3688, %3687
  %3690 = fdiv fast float 1.000000e+00, %3689
  br label %3691

; <label>:3691                                    ; preds = %3686, %3661
  %3692 = phi float [ %3662, %3661 ], [ %3688, %3686 ]
  %3693 = phi float [ %3663, %3661 ], [ %3690, %3686 ]
  %3694 = fadd fast float %3395, %3692
  %3695 = fmul fast float %3694, %3693
  %3696 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3697 = fmul fast float %3696, 2.000000e+00
  %3698 = fsub fast float 1.000000e+00, %3697
  %3699 = fmul fast float %3533, %3533
  %3700 = fsub fast float %3534, %3699
  %3701 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3700)  ; FMax(a,b)
  %3702 = fdiv fast float 1.000000e+00, %3701
  %3703 = fmul fast float %3534, %3533
  %3704 = fsub fast float %3535, %3703
  %3705 = fsub fast float %3698, %3533
  %3706 = fmul fast float %3698, %3698
  %3707 = fsub fast float %3706, %3534
  %3708 = fmul fast float %3702, %3704
  %3709 = fmul fast float %3708, %3705
  %3710 = fsub fast float %3707, %3709
  %3711 = fmul fast float %3534, %3534
  %3712 = fsub fast float %3536, %3711
  %3713 = fmul fast float %3704, %3704
  %3714 = fmul fast float %3713, %3702
  %3715 = fsub fast float %3712, %3714
  %3716 = fdiv fast float %3710, %3715
  %3717 = fmul fast float %3716, %3704
  %3718 = fsub fast float %3705, %3717
  %3719 = fmul fast float %3718, %3702
  %3720 = fmul fast float %3719, %3533
  %3721 = fsub fast float 1.000000e+00, %3720
  %3722 = fmul fast float %3716, %3534
  %3723 = fsub fast float %3721, %3722
  %3724 = fmul fast float %3719, %3719
  %3725 = fmul fast float %3716, 4.000000e+00
  %3726 = fmul fast float %3725, %3723
  %3727 = fsub fast float %3724, %3726
  %3728 = call float @dx.op.unary.f32(i32 24, float %3727)  ; Sqrt(value)
  %3729 = fcmp fast oge float %3719, 0.000000e+00
  %3730 = fsub fast float -0.000000e+00, %3728
  %3731 = select i1 %3729, float %3730, float %3728
  %3732 = fsub fast float %3731, %3719
  %3733 = fdiv fast float %3732, %3716
  %3734 = fdiv fast float %3723, %3732
  %3735 = fmul fast float %3733, 5.000000e-01
  %3736 = fmul fast float %3734, 2.000000e+00
  %3737 = select i1 %3729, float %3735, float %3736
  %3738 = select i1 %3729, float %3736, float %3735
  %3739 = call float @dx.op.binary.f32(i32 35, float %3737, float %3738)  ; FMax(a,b)
  %3740 = call float @dx.op.binary.f32(i32 36, float %3737, float %3738)  ; FMin(a,b)
  %3741 = fcmp fast ogt float %3698, %3739
  %3742 = fsub fast float %3698, %3740
  %3743 = fsub fast float %3698, %3739
  %3744 = fsub fast float %3739, %3740
  %3745 = select i1 %3741, float %3743, float %3744
  %3746 = fmul float %3742, %3745
  %3747 = select i1 %3741, float %3740, float %3698
  %3748 = fcmp fast ogt float %3698, %3740
  %3749 = fmul fast float %3747, %3739
  %3750 = fadd fast float %3747, %3739
  %3751 = fmul fast float %3750, %3533
  %3752 = fadd fast float %3749, %3534
  %3753 = fsub fast float %3752, %3751
  %3754 = fdiv fast float %3753, %3746
  %3755 = select i1 %3748, float %3754, float 0.000000e+00
  %3756 = fsub fast float 1.000000e+00, %3755
  %3757 = select i1 %3741, float %3756, float %3755
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3518, 3
  %3760 = fmul fast float %3759, %3758
  %3761 = fsub fast float 1.000000e+00, %3760
  br label %3762

; <label>:3762                                    ; preds = %3691, %3403, %3368, %3364, %3330
  %3763 = phi float [ 1.000000e+00, %3330 ], [ %3761, %3691 ], [ 1.000000e+00, %3368 ], [ 1.000000e+00, %3403 ], [ 1.000000e+00, %3364 ]
  %3764 = fcmp fast ogt float %3360, 0.000000e+00
  br i1 %3764, label %3765, label %3771, !dx.controlflow.hints !105

; <label>:3765                                    ; preds = %3762
  %3766 = fadd fast float %3273, %3247
  %3767 = call float @dx.op.binary.f32(i32 35, float %3766, float 0.000000e+00)  ; FMax(a,b)
  %3768 = fadd fast float %3767, 0x3F10000000000000
  %3769 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %43, float %3262, float %3263, float undef, float undef, i32 0, i32 0, i32 undef, float %3768)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  br label %3771

; <label>:3771                                    ; preds = %3765, %3762
  %3772 = phi float [ %3770, %3765 ], [ 1.000000e+00, %3762 ]
  %3773 = fcmp fast ogt float %3358, 0.000000e+00
  br i1 %3773, label %3774, label %3780, !dx.controlflow.hints !106

; <label>:3774                                    ; preds = %3771
  %3775 = fadd fast float %3303, %3247
  %3776 = call float @dx.op.binary.f32(i32 35, float %3775, float 0.000000e+00)  ; FMax(a,b)
  %3777 = fadd fast float %3776, 0x3F10000000000000
  %3778 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %43, float %3254, float %3255, float undef, float undef, i32 0, i32 0, i32 undef, float %3777)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  br label %3780

; <label>:3780                                    ; preds = %3774, %3771
  %3781 = phi float [ %3779, %3774 ], [ 1.000000e+00, %3771 ]
  %3782 = fcmp fast ogt float %3357, 0.000000e+00
  br i1 %3782, label %3783, label %3790, !dx.controlflow.hints !107

; <label>:3783                                    ; preds = %3780
  %3784 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3785 = fadd fast float %3784, %3247
  %3786 = call float @dx.op.binary.f32(i32 35, float %3785, float 0.000000e+00)  ; FMax(a,b)
  %3787 = fadd fast float %3786, 0x3F10000000000000
  %3788 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %3239, float %3243, float undef, float undef, i32 0, i32 0, i32 undef, float %3787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3789 = extractvalue %dx.types.ResRet.f32 %3788, 0
  br label %3790

; <label>:3790                                    ; preds = %3783, %3780
  %3791 = phi float [ %3789, %3783 ], [ 1.000000e+00, %3780 ]
  %3792 = fsub fast float %3772, %3763
  %3793 = fmul fast float %3792, %3301
  %3794 = fadd fast float %3793, %3763
  %3795 = fsub fast float %3781, %3794
  %3796 = fmul fast float %3795, %3331
  %3797 = fadd fast float %3796, %3794
  %3798 = fsub fast float %3791, %3797
  %3799 = fmul fast float %3798, %3357
  %3800 = fadd fast float %3799, %3797
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = fcmp fast ogt float %3802, 0.000000e+00
  br i1 %3803, label %3804, label %3841, !dx.controlflow.hints !108

; <label>:3804                                    ; preds = %3790
  %3805 = fcmp fast ugt float %3802, 0.000000e+00
  br i1 %3805, label %3806, label %3838

; <label>:3806                                    ; preds = %3804
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3811 = extractvalue %dx.types.CBufRet.f32 %3807, 3
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.CBufRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.CBufRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.CBufRet.f32 %3812, 3
  %3817 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3818 = extractvalue %dx.types.CBufRet.f32 %3801, 1
  %3819 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %3820 = fadd fast float %1807, %3216
  %3821 = fadd fast float %1808, %3217
  %3822 = fadd fast float %3819, %3218
  %3823 = fmul fast float %3820, %3808
  %3824 = call float @dx.op.tertiary.f32(i32 46, float %3809, float %3821, float %3823)  ; FMad(a,b,c)
  %3825 = call float @dx.op.tertiary.f32(i32 46, float %3810, float %3822, float %3824)  ; FMad(a,b,c)
  %3826 = fadd fast float %3825, %3811
  %3827 = fmul fast float %3820, %3813
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3821, float %3827)  ; FMad(a,b,c)
  %3829 = call float @dx.op.tertiary.f32(i32 46, float %3815, float %3822, float %3828)  ; FMad(a,b,c)
  %3830 = fadd fast float %3829, %3816
  %3831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %38, float %3826, float %3830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = fmul fast float %3832, %3818
  %3834 = fadd fast float %3833, %3817
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fmul fast float %3835, %3802
  %3837 = fsub fast float 1.000000e+00, %3836
  br label %3838

; <label>:3838                                    ; preds = %3806, %3804
  %3839 = phi float [ %3837, %3806 ], [ 1.000000e+00, %3804 ]
  %3840 = fmul fast float %3839, %3800
  br label %3841

; <label>:3841                                    ; preds = %3838, %3790, %3196
  %3842 = phi float [ 1.000000e+00, %3196 ], [ %3840, %3838 ], [ %3800, %3790 ]
  %3843 = call float @dx.op.binary.f32(i32 36, float %3842, float %3842)  ; FMin(a,b)
  %3844 = call float @dx.op.binary.f32(i32 36, float %3842, float %3843)  ; FMin(a,b)
  %3845 = fcmp fast ogt float %3844, 0.000000e+00
  br i1 %3845, label %3846, label %4004, !dx.controlflow.hints !109

; <label>:3846                                    ; preds = %3841
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3857, 2
  %3861 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %3862 = fmul fast float %3848, %3216
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3849, float %3862)  ; FMad(a,b,c)
  %3864 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3850, float %3863)  ; FMad(a,b,c)
  %3865 = fadd fast float %3864, %3851
  %3866 = fmul fast float %3853, %3216
  %3867 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3854, float %3866)  ; FMad(a,b,c)
  %3868 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3855, float %3867)  ; FMad(a,b,c)
  %3869 = fadd fast float %3868, %3856
  %3870 = fmul fast float %3858, %3216
  %3871 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3859, float %3870)  ; FMad(a,b,c)
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3218, float %3860, float %3871)  ; FMad(a,b,c)
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.CBufRet.f32 %3873, 3
  %3877 = fmul fast float %3876, %3865
  %3878 = fmul fast float %3876, %3869
  %3879 = fadd fast float %3877, %3874
  %3880 = fadd fast float %3878, %3875
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = fsub fast float %3879, %3882
  %3885 = fsub fast float %3880, %3883
  %3886 = fcmp fast olt float %3884, 0.000000e+00
  %3887 = fcmp fast olt float %3885, 0.000000e+00
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.CBufRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3893 = select i1 %3886, float %3889, float %3891
  %3894 = select i1 %3887, float %3890, float %3892
  %3895 = fmul fast float %3893, %3884
  %3896 = fmul fast float %3894, %3885
  %3897 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3898 = call float @dx.op.unary.f32(i32 6, float %3896)  ; FAbs(value)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  %3900 = call float @dx.op.binary.f32(i32 35, float %3897, float %3898)  ; FMax(a,b)
  %3901 = fsub fast float %3899, %3900
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = fcmp fast ogt float %3902, 0.000000e+00
  br i1 %3903, label %3904, label %3945, !dx.controlflow.hints !110

; <label>:3904                                    ; preds = %3846
  %3905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %41, float %3879, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %3907 = fcmp fast ogt float %3906, 0.000000e+00
  br i1 %3907, label %3908, label %3940

; <label>:3908                                    ; preds = %3904
  %3909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %41, float %3879, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3909, 3
  %3914 = fsub fast float 1.000000e+00, %3861
  %3915 = fsub fast float %3914, %3872
  %3916 = fmul fast float %3915, 0x400921FB60000000
  %3917 = fadd fast float %3916, 0x3FF921FB60000000
  %3918 = call float @dx.op.unary.f32(i32 13, float %3917)  ; Sin(value)
  %3919 = fadd fast float %3918, -1.000000e+00
  %3920 = fmul fast float %3919, 0x3FD45F3060000000
  %3921 = fmul fast float %3915, 0x401921FB60000000
  %3922 = fadd fast float %3921, 0x400921FB60000000
  %3923 = call float @dx.op.unary.f32(i32 13, float %3922)  ; Sin(value)
  %3924 = fadd fast float %3923, 0x3E7777A5C0000000
  %3925 = fmul fast float %3924, 0x3FC45F3060000000
  %3926 = fmul fast float %3915, 0x4022D97C80000000
  %3927 = fadd fast float %3926, 0x4012D97C80000000
  %3928 = call float @dx.op.unary.f32(i32 13, float %3927)  ; Sin(value)
  %3929 = fadd fast float %3928, 1.000000e+00
  %3930 = fmul fast float %3929, 0x3FBB2995E0000000
  %3931 = fmul fast float %3915, 0x402921FB60000000
  %3932 = fadd fast float %3931, 0x401921FB60000000
  %3933 = call float @dx.op.unary.f32(i32 13, float %3932)  ; Sin(value)
  %3934 = fadd fast float %3933, 0xBE8777A5C0000000
  %3935 = fmul fast float %3934, 0x3FB45F3060000000
  %3936 = call float @dx.op.dot4.f32(i32 56, float %3910, float %3911, float %3912, float %3913, float %3920, float %3925, float %3930, float %3935)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3937 = fmul fast float %3936, 0xBFF7154760000000
  %3938 = call float @dx.op.unary.f32(i32 21, float %3937)  ; Exp(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  br label %3940

; <label>:3940                                    ; preds = %3908, %3904
  %3941 = phi float [ %3939, %3908 ], [ 1.000000e+00, %3904 ]
  %3942 = fadd fast float %3941, -1.000000e+00
  %3943 = fmul fast float %3942, %3902
  %3944 = fadd fast float %3943, 1.000000e+00
  br label %3945

; <label>:3945                                    ; preds = %3940, %3846
  %3946 = phi float [ %3944, %3940 ], [ 1.000000e+00, %3846 ]
  %3947 = fmul fast float %3946, %3842
  %3948 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %3949 = fadd fast float %1807, %119
  %3950 = fadd fast float %1808, %120
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3953 = fsub fast float -0.000000e+00, %3949
  %3954 = fsub fast float -0.000000e+00, %3950
  %3955 = fsub fast float -0.000000e+00, %121
  %3956 = fsub fast float %3955, %3948
  %3957 = fadd fast float %3956, %3952
  %3958 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3953, float %3954, float %3957)  ; Dot3(ax,ay,az,bx,by,bz)
  %3959 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3197, float %3198, float %3199)  ; Dot3(ax,ay,az,bx,by,bz)
  %3960 = fdiv fast float 1.000000e+00, %3959
  %3961 = fmul fast float %3960, %3958
  %3962 = fmul fast float %3197, %3961
  %3963 = fmul fast float %3198, %3961
  %3964 = fadd fast float %3962, %3949
  %3965 = fadd fast float %3963, %3950
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.CBufRet.f32 %3966, 1
  %3969 = fsub fast float %3964, %3967
  %3970 = fsub fast float %3965, %3968
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3973 = extractvalue %dx.types.CBufRet.f32 %3971, 3
  %3974 = fmul fast float %3969, %3972
  %3975 = fmul fast float %3970, %3973
  %3976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.i32 %3976, 3
  %3978 = icmp eq i32 %3977, 0
  br i1 %3978, label %3984, label %3979

; <label>:3979                                    ; preds = %3945
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %3974, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  br label %3989

; <label>:3984                                    ; preds = %3945
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %3974, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  br label %3989

; <label>:3989                                    ; preds = %3984, %3979
  %3990 = phi float [ %3981, %3979 ], [ %3986, %3984 ]
  %3991 = phi float [ %3982, %3979 ], [ %3987, %3984 ]
  %3992 = phi float [ %3983, %3979 ], [ %3988, %3984 ]
  %3993 = extractvalue %dx.types.CBufRet.f32 %3951, 2
  %3994 = fmul fast float %3993, %3990
  %3995 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3996 = fsub fast float %3961, %3995
  %3997 = fsub fast float %3996, %3994
  %3998 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3997)  ; FMax(a,b)
  %3999 = fmul fast float %3998, %3991
  %4000 = call float @dx.op.binary.f32(i32 36, float %3992, float %3999)  ; FMin(a,b)
  %4001 = fmul fast float %4000, 0xBFF7154760000000
  %4002 = call float @dx.op.unary.f32(i32 21, float %4001)  ; Exp(value)
  %4003 = fmul fast float %3947, %4002
  br label %4004

; <label>:4004                                    ; preds = %3989, %3841
  %4005 = phi float [ %4003, %3989 ], [ %3842, %3841 ]
  %4006 = call float @dx.op.binary.f32(i32 36, float %4005, float %4005)  ; FMin(a,b)
  %4007 = call float @dx.op.binary.f32(i32 36, float %4005, float %4006)  ; FMin(a,b)
  %4008 = fcmp fast ogt float %4007, 0.000000e+00
  br i1 %4008, label %4009, label %4196, !dx.controlflow.hints !111

; <label>:4009                                    ; preds = %4004
  %4010 = fmul fast float %4005, %3208
  %4011 = fmul fast float %4005, %3209
  %4012 = fmul fast float %4005, %3210
  %4013 = fsub fast float %3197, %1779
  %4014 = fsub fast float %3198, %1778
  %4015 = fsub fast float %3199, %1777
  %4016 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4014, float %4015, float %4013, float %4014, float %4015)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 25, float %4016)  ; Rsqrt(value)
  %4018 = fmul fast float %4017, %4013
  %4019 = fmul fast float %4017, %4014
  %4020 = fmul fast float %4017, %4015
  %4021 = call float @dx.op.dot3.f32(i32 55, float %3197, float %3198, float %3199, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = call float @dx.op.dot3.f32(i32 55, float %1776, float %1775, float %1774, float %4018, float %4019, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4024 = fmul fast float %4023, %4023
  %4025 = fmul fast float %4024, %3192
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = fmul fast float %4026, %4023
  %4028 = call float @dx.op.dot3.f32(i32 55, float %1780, float %1781, float %1782, float %4018, float %4019, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = fmul fast float %4028, %4028
  %4030 = call float @dx.op.unary.f32(i32 6, float %4021)  ; FAbs(value)
  %4031 = fsub fast float 1.000000e+00, %1789
  %4032 = call float @dx.op.binary.f32(i32 35, float %4031, float 0x3F847AE140000000)  ; FMax(a,b)
  %4033 = fmul fast float %4032, %4032
  %4034 = fmul fast float %4033, %4033
  %4035 = fsub fast float 1.000000e+00, %4034
  %4036 = fmul fast float %1793, %1793
  %4037 = fmul fast float %4036, %4035
  %4038 = fadd fast float %4037, %4034
  %4039 = bitcast float %4038 to i32
  %4040 = ashr i32 %4039, 1
  %4041 = add nsw i32 %4040, 532487669
  %4042 = bitcast i32 %4041 to float
  %4043 = fadd fast float %4042, %1793
  %4044 = fmul fast float %4034, %4029
  %4045 = fsub fast float 1.000000e+00, %4029
  %4046 = fadd fast float %4045, %4044
  %4047 = fmul fast float %4030, %4030
  %4048 = fmul fast float %4047, %4035
  %4049 = fadd fast float %4048, %4034
  %4050 = bitcast float %4049 to i32
  %4051 = ashr i32 %4050, 1
  %4052 = add nsw i32 %4051, 532487669
  %4053 = bitcast i32 %4052 to float
  %4054 = fadd fast float %4053, %4030
  %4055 = fmul fast float %4046, %4046
  %4056 = fmul fast float %4055, %4043
  %4057 = fmul fast float %4056, %4054
  %4058 = fdiv fast float 0x3FF0A00000000000, %4057
  %4059 = fmul fast float %4058, %4034
  %4060 = fmul fast float %3058, 0x3FF9999980000000
  %4061 = fsub fast float 5.000000e+00, %4060
  %4062 = call float @dx.op.unary.f32(i32 6, float %4022)  ; FAbs(value)
  %4063 = fsub fast float 1.000000e+00, %4062
  %4064 = fmul fast float %3058, 0x41D9660740000000
  %4065 = fadd fast float %4064, 0xC1EFBF8940000000
  %4066 = bitcast float %4063 to i32
  %4067 = sitofp i32 %4066 to float
  %4068 = fmul fast float %4067, %4061
  %4069 = fadd fast float %4065, %4068
  %4070 = fptosi float %4069 to i32
  %4071 = bitcast i32 %4070 to float
  %4072 = fsub fast float 1.000000e+00, %1786
  %4073 = fsub fast float 1.000000e+00, %1787
  %4074 = fsub fast float 1.000000e+00, %1791
  %4075 = fmul fast float %4071, %4072
  %4076 = fmul fast float %4071, %4073
  %4077 = fmul fast float %4071, %4074
  %4078 = fadd fast float %4075, %1786
  %4079 = fadd fast float %4076, %1787
  %4080 = fadd fast float %4077, %1791
  br i1 %3081, label %4081, label %4104

; <label>:4081                                    ; preds = %4009
  %4082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %41, float %1445, float %4062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.ResRet.f32 %4082, 1
  %4085 = extractvalue %dx.types.ResRet.f32 %4082, 2
  %4086 = fadd fast float %4083, -5.000000e-01
  %4087 = fadd fast float %4084, -5.000000e-01
  %4088 = fadd fast float %4085, -5.000000e-01
  %4089 = fmul fast float %1786, 4.000000e+00
  %4090 = fmul fast float %4089, %4072
  %4091 = fmul fast float %4090, %4086
  %4092 = fmul fast float %1787, 4.000000e+00
  %4093 = fmul fast float %4092, %4073
  %4094 = fmul fast float %4093, %4087
  %4095 = fmul fast float %1791, 4.000000e+00
  %4096 = fmul fast float %4095, %4074
  %4097 = fmul fast float %4096, %4088
  %4098 = fadd fast float %4091, %4078
  %4099 = fadd fast float %4094, %4079
  %4100 = fadd fast float %4097, %4080
  %4101 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4102 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4103 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  br label %4104

; <label>:4104                                    ; preds = %4081, %4009
  %4105 = phi float [ %4101, %4081 ], [ %4078, %4009 ]
  %4106 = phi float [ %4102, %4081 ], [ %4079, %4009 ]
  %4107 = phi float [ %4103, %4081 ], [ %4080, %4009 ]
  %4108 = fmul fast float %4021, 9.843750e-01
  %4109 = fadd fast float %4108, 7.812500e-03
  %4110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %4109, float %3062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = extractvalue %dx.types.ResRet.f32 %4110, 3
  %4115 = fsub fast float %4113, %4111
  %4116 = fsub fast float %4114, %4112
  %4117 = fmul fast float %4115, %3068
  %4118 = fmul fast float %4116, %3068
  %4119 = fadd fast float %4117, %4111
  %4120 = fadd fast float %4118, %4112
  %4121 = fmul fast float %4119, %1786
  %4122 = fmul fast float %4119, %1787
  %4123 = fmul fast float %4119, %1791
  %4124 = fadd fast float %4121, %4120
  %4125 = fadd fast float %4122, %4120
  %4126 = fadd fast float %4123, %4120
  br i1 %3081, label %4127, label %4150

; <label>:4127                                    ; preds = %4104
  %4128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %41, float %1445, float %4021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = fadd fast float %4129, -5.000000e-01
  %4133 = fadd fast float %4130, -5.000000e-01
  %4134 = fadd fast float %4131, -5.000000e-01
  %4135 = fmul fast float %1786, 4.000000e+00
  %4136 = fmul fast float %4135, %4072
  %4137 = fmul fast float %4136, %4132
  %4138 = fmul fast float %1787, 4.000000e+00
  %4139 = fmul fast float %4138, %4073
  %4140 = fmul fast float %4139, %4133
  %4141 = fmul fast float %1791, 4.000000e+00
  %4142 = fmul fast float %4141, %4074
  %4143 = fmul fast float %4142, %4134
  %4144 = fadd fast float %4137, %4124
  %4145 = fadd fast float %4140, %4125
  %4146 = fadd fast float %4143, %4126
  %4147 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  br label %4150

; <label>:4150                                    ; preds = %4127, %4104
  %4151 = phi float [ %4147, %4127 ], [ %4124, %4104 ]
  %4152 = phi float [ %4148, %4127 ], [ %4125, %4104 ]
  %4153 = phi float [ %4149, %4127 ], [ %4126, %4104 ]
  %4154 = call float @dx.op.binary.f32(i32 35, float %4152, float %4153)  ; FMax(a,b)
  %4155 = call float @dx.op.binary.f32(i32 35, float %4151, float %4154)  ; FMax(a,b)
  %4156 = fsub fast float 1.000000e+00, %4155
  %4157 = fmul fast float %4105, %4059
  %4158 = fmul fast float %4106, %4059
  %4159 = fmul fast float %4107, %4059
  %4160 = fsub fast float 1.000000e+00, %4022
  %4161 = bitcast float %4160 to i32
  %4162 = sitofp i32 %4161 to float
  %4163 = fmul fast float %4162, 5.000000e+00
  %4164 = fadd fast float %4163, 0xC1EFBF8940000000
  %4165 = fptosi float %4164 to i32
  %4166 = bitcast i32 %4165 to float
  %4167 = fmul fast float %4166, %1444
  %4168 = fmul fast float %4156, %4167
  %4169 = fmul fast float %4168, %3131
  %4170 = fmul fast float %4168, %3132
  %4171 = fmul fast float %4168, %3133
  %4172 = fadd fast float %4169, %4157
  %4173 = fadd fast float %4170, %4158
  %4174 = fadd fast float %4171, %4159
  %4175 = fmul fast float %4027, %4010
  %4176 = fmul fast float %4175, %4156
  %4177 = fmul fast float %4027, %4011
  %4178 = fmul fast float %4177, %4156
  %4179 = fmul fast float %4027, %4012
  %4180 = fmul fast float %4179, %4156
  %4181 = fmul fast float %4175, %4172
  %4182 = fmul fast float %4177, %4173
  %4183 = fmul fast float %4179, %4174
  %4184 = fadd fast float %4176, %3115
  %4185 = fmul fast float %4184, %1465
  %4186 = fadd fast float %4178, %3116
  %4187 = fmul fast float %4186, %1465
  %4188 = fadd fast float %4180, %3117
  %4189 = fmul fast float %4188, %1465
  %4190 = fadd fast float %4181, %3184
  %4191 = fmul fast float %4190, %1465
  %4192 = fadd fast float %4182, %3187
  %4193 = fmul fast float %4192, %1465
  %4194 = fadd fast float %4183, %3190
  %4195 = fmul fast float %4194, %1465
  br label %4196

; <label>:4196                                    ; preds = %4150, %4004, %3108
  %4197 = phi float [ %3185, %3108 ], [ %3185, %4004 ], [ %4191, %4150 ]
  %4198 = phi float [ %3188, %3108 ], [ %3188, %4004 ], [ %4193, %4150 ]
  %4199 = phi float [ %3191, %3108 ], [ %3191, %4004 ], [ %4195, %4150 ]
  %4200 = phi float [ %3180, %3108 ], [ %3180, %4004 ], [ %4185, %4150 ]
  %4201 = phi float [ %3181, %3108 ], [ %3181, %4004 ], [ %4187, %4150 ]
  %4202 = phi float [ %3182, %3108 ], [ %3182, %4004 ], [ %4189, %4150 ]
  %4203 = fmul fast float %1465, %1465
  %4204 = fmul fast float %4203, %3157
  %4205 = fsub fast float -0.000000e+00, %4204
  %4206 = fmul fast float %4203, %3158
  %4207 = fsub fast float -0.000000e+00, %4206
  %4208 = fmul fast float %4203, %3159
  %4209 = fsub fast float -0.000000e+00, %4208
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = fmul fast float %4211, %3163
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4215 = fsub fast float 1.000000e+00, %1440
  %4216 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4217 = fadd fast float %4202, %1439
  %4218 = fmul fast float %4217, %1440
  %4219 = fmul fast float %4216, %4214
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4222 = fmul fast float %4200, %1783
  %4223 = fmul fast float %4201, %1784
  %4224 = fmul fast float %4202, %1785
  %4225 = fcmp fast ogt float %63, %170
  %4226 = and i1 %4225, %1512
  %4227 = or i1 %1591, %4226
  %4228 = icmp eq i32 %1511, 2
  %4229 = fcmp fast ole float %63, %170
  %4230 = and i1 %4229, %4228
  %4231 = or i1 %4230, %4227
  br i1 %4226, label %4232, label %4491

; <label>:4232                                    ; preds = %4196
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4235 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4236 = fmul fast float %4234, %72
  %4237 = fmul fast float %4235, %73
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4240 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %41, float %4238, float %4239, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.ResRet.f32 %4240, 3
  %4245 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %41, float %4238, float %4239, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = extractvalue %dx.types.ResRet.f32 %4245, 3
  %4250 = call float @dx.op.binary.f32(i32 35, float %4242, float %4243)  ; FMax(a,b)
  %4251 = call float @dx.op.binary.f32(i32 35, float %4241, float %4250)  ; FMax(a,b)
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float %4244)  ; FMax(a,b)
  %4253 = call float @dx.op.binary.f32(i32 36, float %4247, float %4248)  ; FMin(a,b)
  %4254 = call float @dx.op.binary.f32(i32 36, float %4246, float %4253)  ; FMin(a,b)
  %4255 = call float @dx.op.binary.f32(i32 36, float %4254, float %4249)  ; FMin(a,b)
  %4256 = fmul fast float %4252, 2.550000e+02
  %4257 = fadd fast float %4256, 0x3F70101020000000
  %4258 = fptoui float %4257 to i32
  %4259 = fmul fast float %4255, 2.550000e+02
  %4260 = fadd fast float %4259, 0x3F70101020000000
  %4261 = fptoui float %4260 to i32
  %4262 = icmp ult i32 %4258, %4261
  br i1 %4262, label %4263, label %4431

; <label>:4263                                    ; preds = %4232
  %4264 = fcmp fast ogt float %62, 9.843750e-01
  %4265 = fadd fast float %63, -4.000000e+00
  %4266 = select i1 %4264, float -4.000000e+00, float %4265
  %4267 = call float @dx.op.binary.f32(i32 35, float %4266, float 0.000000e+00)  ; FMax(a,b)
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 0
  %4270 = fadd fast float %4269, %4267
  %4271 = extractvalue %dx.types.CBufRet.f32 %4268, 2
  %4272 = fmul fast float %4270, %4271
  %4273 = call float @dx.op.unary.f32(i32 23, float %4272)  ; Log(value)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4268, 3
  %4275 = fmul fast float %4274, %4273
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4278 = fmul fast float %4275, %4277
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = uitofp i32 %4258 to float
  %4281 = uitofp i32 %4261 to float
  %4282 = fadd fast float %4280, 5.000000e-01
  %4283 = fadd fast float %4281, 5.000000e-01
  %4284 = fmul fast float %4277, %4282
  %4285 = fmul fast float %4277, %4283
  %4286 = fadd fast float %4284, 0x3F0FFB4800000000
  %4287 = fadd fast float %4285, 0xBF0FFB4800000000
  %4288 = call float @dx.op.binary.f32(i32 35, float %4279, float %4286)  ; FMax(a,b)
  %4289 = call float @dx.op.binary.f32(i32 36, float %4288, float %4287)  ; FMin(a,b)
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4293 = extractvalue %dx.types.CBufRet.f32 %4290, 0
  %4294 = fmul fast float %4291, %4289
  %4295 = fadd fast float %4293, %4294
  %4296 = fadd fast float %4293, %4292
  %4297 = fsub fast float %4291, %4292
  %4298 = fadd fast float %4297, %4293
  %4299 = call float @dx.op.binary.f32(i32 35, float %4295, float %4296)  ; FMax(a,b)
  %4300 = call float @dx.op.binary.f32(i32 36, float %4299, float %4298)  ; FMin(a,b)
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %39, float %4238, float %4239, float %4300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.ResRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.ResRet.f32 %4301, 2
  %4305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.i32 %4305, 0
  %4307 = extractvalue %dx.types.CBufRet.i32 %4305, 1
  %4308 = uitofp i32 %4306 to float
  %4309 = uitofp i32 %4307 to float
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4313 = fmul fast float %4308, %4238
  %4314 = fmul fast float %4309, %4239
  %4315 = fadd fast float %4313, -5.000000e-01
  %4316 = fadd fast float %4314, -5.000000e-01
  %4317 = call float @dx.op.unary.f32(i32 22, float %4315)  ; Frc(value)
  %4318 = call float @dx.op.unary.f32(i32 22, float %4316)  ; Frc(value)
  %4319 = fmul fast float %4317, %4317
  %4320 = fmul fast float %4319, %4317
  %4321 = fsub fast float 3.000000e+00, %4317
  %4322 = fmul fast float %4319, %4321
  %4323 = fmul fast float %4317, 3.000000e+00
  %4324 = fmul fast float %4320, 3.000000e+00
  %4325 = fmul fast float %4319, 6.000000e+00
  %4326 = fsub fast float %4324, %4325
  %4327 = fadd fast float %4326, 4.000000e+00
  %4328 = fmul fast float %4327, 0x3FC5555560000000
  %4329 = fmul fast float %4320, -3.000000e+00
  %4330 = fadd fast float %4319, %4317
  %4331 = fmul fast float %4330, 3.000000e+00
  %4332 = fadd fast float %4329, 1.000000e+00
  %4333 = fadd fast float %4332, %4331
  %4334 = fmul fast float %4320, 0x3FC5555560000000
  %4335 = fmul fast float %4318, %4318
  %4336 = fmul fast float %4335, %4318
  %4337 = fsub fast float 3.000000e+00, %4318
  %4338 = fmul fast float %4335, %4337
  %4339 = fmul fast float %4318, 3.000000e+00
  %4340 = fmul fast float %4336, 3.000000e+00
  %4341 = fmul fast float %4335, 6.000000e+00
  %4342 = fsub fast float %4340, %4341
  %4343 = fadd fast float %4342, 4.000000e+00
  %4344 = fmul fast float %4343, 0x3FC5555560000000
  %4345 = fmul fast float %4336, -3.000000e+00
  %4346 = fadd fast float %4335, %4318
  %4347 = fmul fast float %4346, 3.000000e+00
  %4348 = fadd fast float %4345, 1.000000e+00
  %4349 = fadd fast float %4348, %4347
  %4350 = fmul fast float %4336, 0x3FC5555560000000
  %4351 = fadd fast float %4317, 1.000000e+00
  %4352 = fsub fast float 1.000000e+00, %4323
  %4353 = fadd fast float %4352, %4322
  %4354 = fadd fast float %4353, %4327
  %4355 = fmul fast float %4354, 0x3FC5555560000000
  %4356 = fdiv fast float %4328, %4355
  %4357 = fsub fast float %4351, %4356
  %4358 = fsub fast float 1.000000e+00, %4317
  %4359 = fadd fast float %4333, %4320
  %4360 = fmul fast float %4359, 0x3FC5555560000000
  %4361 = fdiv fast float %4334, %4360
  %4362 = fadd fast float %4358, %4361
  %4363 = fadd fast float %4318, 1.000000e+00
  %4364 = fsub fast float 1.000000e+00, %4339
  %4365 = fadd fast float %4364, %4338
  %4366 = fadd fast float %4365, %4343
  %4367 = fmul fast float %4366, 0x3FC5555560000000
  %4368 = fdiv fast float %4344, %4367
  %4369 = fsub fast float %4363, %4368
  %4370 = fsub fast float 1.000000e+00, %4318
  %4371 = fadd fast float %4349, %4336
  %4372 = fmul fast float %4371, 0x3FC5555560000000
  %4373 = fdiv fast float %4350, %4372
  %4374 = fadd fast float %4373, %4370
  %4375 = fmul fast float %4357, %4311
  %4376 = fsub fast float %4238, %4375
  %4377 = fmul fast float %4362, %4311
  %4378 = fadd fast float %4377, %4238
  %4379 = fmul fast float %4374, %4312
  %4380 = fadd fast float %4379, %4239
  %4381 = fmul fast float %4369, %4312
  %4382 = fsub fast float %4239, %4381
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4376, float %4382, float %4300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4378, float %4382, float %4300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4376, float %4380, float %4300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = extractvalue %dx.types.ResRet.f32 %4391, 1
  %4394 = extractvalue %dx.types.ResRet.f32 %4391, 2
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4378, float %4380, float %4300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = fsub fast float %4392, %4384
  %4400 = fsub fast float %4393, %4385
  %4401 = fsub fast float %4394, %4386
  %4402 = fmul fast float %4399, %4372
  %4403 = fmul fast float %4400, %4372
  %4404 = fmul fast float %4401, %4372
  %4405 = fadd fast float %4402, %4384
  %4406 = fadd fast float %4403, %4385
  %4407 = fadd fast float %4404, %4386
  %4408 = fsub fast float %4396, %4388
  %4409 = fsub fast float %4397, %4389
  %4410 = fsub fast float %4398, %4390
  %4411 = fmul fast float %4408, %4372
  %4412 = fmul fast float %4409, %4372
  %4413 = fmul fast float %4410, %4372
  %4414 = fsub fast float %4388, %4405
  %4415 = fadd fast float %4414, %4411
  %4416 = fsub fast float %4389, %4406
  %4417 = fadd fast float %4416, %4412
  %4418 = fsub fast float %4390, %4407
  %4419 = fadd fast float %4418, %4413
  %4420 = fmul fast float %4415, %4360
  %4421 = fmul fast float %4417, %4360
  %4422 = fmul fast float %4419, %4360
  %4423 = fadd fast float %4420, %4405
  %4424 = fadd fast float %4421, %4406
  %4425 = fadd fast float %4422, %4407
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 1
  %4428 = fmul fast float %4423, %4427
  %4429 = fmul fast float %4424, %4427
  %4430 = fmul fast float %4425, %4427
  br label %4431

; <label>:4431                                    ; preds = %4263, %4232
  %4432 = phi float [ %4302, %4263 ], [ 1.000000e+00, %4232 ]
  %4433 = phi float [ %4303, %4263 ], [ 1.000000e+00, %4232 ]
  %4434 = phi float [ %4304, %4263 ], [ 1.000000e+00, %4232 ]
  %4435 = phi float [ %4428, %4263 ], [ 0.000000e+00, %4232 ]
  %4436 = phi float [ %4429, %4263 ], [ 0.000000e+00, %4232 ]
  %4437 = phi float [ %4430, %4263 ], [ 0.000000e+00, %4232 ]
  %4438 = fmul fast float %4435, %4205
  %4439 = fmul fast float %4436, %4207
  %4440 = fmul fast float %4437, %4209
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = select i1 %209, float %4441, float %4432
  %4444 = select i1 %209, float %4441, float %4433
  %4445 = select i1 %209, float 1.000000e+00, float %4434
  %4446 = select i1 %209, float %4442, float %4438
  %4447 = select i1 %209, float 0.000000e+00, float %4439
  %4448 = select i1 %209, float 0.000000e+00, float %4440
  %4449 = fmul fast float %4443, %4222
  %4450 = fmul fast float %4444, %4223
  %4451 = fmul fast float %4445, %4224
  %4452 = fadd fast float %4449, %4446
  %4453 = fadd fast float %4450, %4447
  %4454 = fadd fast float %4448, %4451
  %4455 = fmul fast float %4443, %4197
  %4456 = fmul fast float %4444, %4198
  %4457 = fmul fast float %4445, %4199
  %4458 = fmul fast float %72, 2.000000e+00
  %4459 = fmul fast float %4458, %4234
  %4460 = fmul fast float %73, 2.000000e+00
  %4461 = fmul fast float %4460, %4235
  %4462 = fsub fast float 1.000000e+00, %4459
  %4463 = fsub fast float 1.000000e+00, %4461
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.CBufRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.CBufRet.f32 %4464, 2
  %4468 = fmul fast float %4462, %4465
  %4469 = fmul fast float %4462, %4466
  %4470 = fmul fast float %4462, %4467
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4475 = fmul fast float %4463, %4472
  %4476 = fmul fast float %4463, %4473
  %4477 = fmul fast float %4463, %4474
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = extractvalue %dx.types.CBufRet.f32 %4478, 1
  %4481 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4482 = fadd fast float %4475, %4479
  %4483 = fadd fast float %4482, %4468
  %4484 = fadd fast float %4476, %4480
  %4485 = fadd fast float %4484, %4469
  %4486 = fadd fast float %4477, %4481
  %4487 = fadd fast float %4486, %4470
  %4488 = fmul fast float %4483, %170
  %4489 = fmul fast float %4485, %170
  %4490 = fmul fast float %4487, %170
  br label %4491

; <label>:4491                                    ; preds = %4431, %4196
  %4492 = phi float [ %4488, %4431 ], [ %119, %4196 ]
  %4493 = phi float [ %4489, %4431 ], [ %120, %4196 ]
  %4494 = phi float [ %4490, %4431 ], [ %121, %4196 ]
  %4495 = phi float [ %170, %4431 ], [ %63, %4196 ]
  %4496 = phi float [ %4452, %4431 ], [ %4222, %4196 ]
  %4497 = phi float [ %4453, %4431 ], [ %4223, %4196 ]
  %4498 = phi float [ %4454, %4431 ], [ %4224, %4196 ]
  %4499 = phi float [ %4455, %4431 ], [ %4197, %4196 ]
  %4500 = phi float [ %4456, %4431 ], [ %4198, %4196 ]
  %4501 = phi float [ %4457, %4431 ], [ %4199, %4196 ]
  %4502 = phi float [ %4432, %4431 ], [ 1.000000e+00, %4196 ]
  br i1 %4231, label %5657, label %4503

; <label>:4503                                    ; preds = %4491
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.CBufRet.f32 %4504, 1
  %4507 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4508 = extractvalue %dx.types.CBufRet.f32 %4504, 3
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.CBufRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4523 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 3
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4529 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4531 = fcmp fast olt float %4530, -5.000000e-01
  %4532 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = call float @dx.op.unary.f32(i32 25, float %4532)  ; Rsqrt(value)
  %4534 = fmul fast float %4533, %4532
  %4535 = fmul fast float %4533, %4492
  %4536 = fmul fast float %4533, %4493
  %4537 = fmul fast float %4533, %4494
  %4538 = fadd fast float %4534, %4508
  %4539 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4536, float %4537, float %4505, float %4506, float %4507)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.i32 %4540, 1
  %4542 = and i32 %4541, 1
  %4543 = icmp ne i32 %4542, 0
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4546 = fcmp fast ogt float %4545, 0.000000e+00
  %4547 = and i1 %4543, %4546
  br i1 %4547, label %4548, label %4954, !dx.controlflow.hints !112

; <label>:4548                                    ; preds = %4503
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 3
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 2
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 2
  %4555 = fsub fast float %4552, %4554
  %4556 = and i32 %4541, 2
  %4557 = extractvalue %dx.types.CBufRet.i32 %4540, 0
  %4558 = call i32 @dx.op.binary.i32(i32 40, i32 %4557, i32 3)  ; UMin(a,b)
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.CBufRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.CBufRet.f32 %4553, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4553, 1
  %4564 = fsub fast float %4560, %4562
  %4565 = fsub fast float %4561, %4563
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 0
  %4568 = fcmp fast ogt float %4567, 0.000000e+00
  %4569 = fsub fast float -0.000000e+00, %4564
  %4570 = fsub fast float -0.000000e+00, %4565
  %4571 = call float @dx.op.dot2.f32(i32 54, float %4535, float %4536, float %4535, float %4536)  ; Dot2(ax,ay,bx,by)
  %4572 = call float @dx.op.dot2.f32(i32 54, float %4535, float %4536, float %4569, float %4570)  ; Dot2(ax,ay,bx,by)
  %4573 = fmul fast float %4572, 2.000000e+00
  %4574 = call float @dx.op.dot2.f32(i32 54, float %4569, float %4570, float %4569, float %4570)  ; Dot2(ax,ay,bx,by)
  %4575 = fmul fast float %4567, %4567
  %4576 = fsub fast float %4574, %4575
  %4577 = fmul fast float %4573, %4573
  %4578 = fmul fast float %4571, 4.000000e+00
  %4579 = fmul fast float %4578, %4576
  %4580 = fsub fast float %4577, %4579
  %4581 = fcmp fast ogt float %4580, 0.000000e+00
  br i1 %4581, label %4582, label %4597

; <label>:4582                                    ; preds = %4548
  %4583 = fcmp fast ogt float %4573, 0.000000e+00
  %4584 = call float @dx.op.unary.f32(i32 24, float %4580)  ; Sqrt(value)
  %4585 = fsub fast float -0.000000e+00, %4584
  %4586 = select i1 %4583, float %4584, float %4585
  %4587 = fadd fast float %4586, %4573
  %4588 = fmul float %4587, -5.000000e-01
  %4589 = fdiv fast float %4588, %4571
  %4590 = call float @dx.op.binary.f32(i32 35, float %4589, float 0.000000e+00)  ; FMax(a,b)
  %4591 = call float @dx.op.binary.f32(i32 36, float %4534, float %4590)  ; FMin(a,b)
  %4592 = fdiv fast float %4576, %4588
  %4593 = call float @dx.op.binary.f32(i32 35, float %4592, float 0.000000e+00)  ; FMax(a,b)
  %4594 = call float @dx.op.binary.f32(i32 36, float %4534, float %4593)  ; FMin(a,b)
  %4595 = call float @dx.op.binary.f32(i32 36, float %4591, float %4594)  ; FMin(a,b)
  %4596 = call float @dx.op.binary.f32(i32 35, float %4591, float %4594)  ; FMax(a,b)
  br label %4597

; <label>:4597                                    ; preds = %4582, %4548
  %4598 = phi float [ %4596, %4582 ], [ -1.000000e+00, %4548 ]
  %4599 = phi float [ %4595, %4582 ], [ -1.000000e+00, %4548 ]
  %4600 = phi i1 [ true, %4582 ], [ false, %4548 ]
  %4601 = and i1 %4568, %4600
  br i1 %4601, label %4602, label %4604

; <label>:4602                                    ; preds = %4597
  %4603 = fcmp fast oeq float %4599, %4598
  br i1 %4603, label %4907, label %4605

; <label>:4604                                    ; preds = %4597
  br i1 %4568, label %4907, label %4605

; <label>:4605                                    ; preds = %4604, %4602
  %4606 = phi float [ %4534, %4604 ], [ %4598, %4602 ]
  %4607 = phi float [ 0.000000e+00, %4604 ], [ %4599, %4602 ]
  %4608 = icmp ne i32 %4556, 0
  %4609 = fmul fast float %4606, %4537
  %4610 = fadd fast float %4609, %4550
  %4611 = fmul fast float %4610, %4606
  %4612 = select i1 %4608, float 0.000000e+00, float %4611
  %4613 = fcmp fast oeq float %4537, 0.000000e+00
  %4614 = fdiv fast float %4555, %4537
  %4615 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4614)  ; FMax(a,b)
  %4616 = select i1 %4613, float %4606, float %4615
  %4617 = call float @dx.op.binary.f32(i32 36, float %4606, float %4616)  ; FMin(a,b)
  %4618 = fcmp fast ogt float %4537, 0.000000e+00
  %4619 = fcmp fast olt float %4555, 0.000000e+00
  br i1 %4618, label %4620, label %4677

; <label>:4620                                    ; preds = %4605
  %4621 = icmp eq i32 %4556, 0
  br i1 %4619, label %4622, label %4666

; <label>:4622                                    ; preds = %4620
  %4623 = select i1 %4621, float %4606, float 0.000000e+00
  %4624 = fsub fast float -0.000000e+00, %4623
  %4625 = call float @dx.op.unary.f32(i32 6, float %4624)  ; FAbs(value)
  %4626 = fmul fast float %4623, %4537
  %4627 = fadd fast float %4626, %4550
  %4628 = fmul fast float %4625, %4627
  %4629 = fsub fast float %4612, %4628
  %4630 = fsub fast float %4606, %4625
  %4631 = select i1 %4621, float %4630, float 0.000000e+00
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4639 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4640 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4643 = call float @dx.op.binary.f32(i32 36, float %4629, float %4642)  ; FMin(a,b)
  %4644 = fmul fast float %4640, %4631
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4646 = fsub fast float %4637, %4633
  %4647 = fsub fast float %4638, %4634
  %4648 = fsub fast float %4639, %4635
  %4649 = fmul fast float %4645, %4646
  %4650 = fmul fast float %4645, %4647
  %4651 = fmul fast float %4645, %4648
  %4652 = fadd fast float %4649, %4633
  %4653 = fadd fast float %4650, %4634
  %4654 = fadd fast float %4651, %4635
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4658 = fadd fast float %4657, %4656
  %4659 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4661 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %4662 = fadd fast float %4661, %4660
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = fmul fast float %4659, %4643
  %4665 = fmul fast float %4664, %4663
  br label %4907

; <label>:4666                                    ; preds = %4620
  br i1 %4621, label %4667, label %4688

; <label>:4667                                    ; preds = %4666
  %4668 = call float @dx.op.binary.f32(i32 36, float %4617, float %4607)  ; FMin(a,b)
  %4669 = fsub fast float %4617, %4668
  %4670 = fsub fast float %4669, %4606
  %4671 = call float @dx.op.unary.f32(i32 6, float %4670)  ; FAbs(value)
  %4672 = fadd fast float %4669, %4606
  %4673 = fmul fast float %4672, %4537
  %4674 = fadd fast float %4673, %4550
  %4675 = fmul fast float %4674, %4671
  %4676 = fsub fast float %4612, %4675
  br label %4688

; <label>:4677                                    ; preds = %4605
  br i1 %4619, label %4678, label %4688

; <label>:4678                                    ; preds = %4677
  %4679 = call float @dx.op.binary.f32(i32 35, float %4607, float %4617)  ; FMax(a,b)
  %4680 = icmp eq i32 %4556, 0
  %4681 = select i1 %4680, float %4617, float 0.000000e+00
  %4682 = fsub fast float -0.000000e+00, %4681
  %4683 = call float @dx.op.unary.f32(i32 6, float %4682)  ; FAbs(value)
  %4684 = fmul fast float %4681, %4537
  %4685 = fadd fast float %4684, %4550
  %4686 = fmul fast float %4683, %4685
  %4687 = fsub fast float %4612, %4686
  br label %4688

; <label>:4688                                    ; preds = %4678, %4677, %4667, %4666
  %4689 = phi float [ %4607, %4666 ], [ %4607, %4667 ], [ %4679, %4678 ], [ %4607, %4677 ]
  %4690 = phi float [ 0.000000e+00, %4666 ], [ %4671, %4667 ], [ %4683, %4678 ], [ 0.000000e+00, %4677 ]
  %4691 = phi float [ %4612, %4666 ], [ %4676, %4667 ], [ %4687, %4678 ], [ %4612, %4677 ]
  %4692 = phi float [ %4617, %4666 ], [ %4617, %4667 ], [ %4606, %4678 ], [ %4606, %4677 ]
  %4693 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 0
  store float -1.000000e+00, float* %4693, align 4, !tbaa !113, !noalias !115
  %4694 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 1
  store float -1.000000e+00, float* %4694, align 4, !tbaa !113, !noalias !115
  %4695 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 2
  store float -1.000000e+00, float* %4695, align 4, !tbaa !113, !noalias !115
  %4696 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 0
  store float -1.000000e+00, float* %4696, align 4, !tbaa !113, !noalias !115
  %4697 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 1
  store float -1.000000e+00, float* %4697, align 4, !tbaa !113, !noalias !115
  %4698 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 2
  store float -1.000000e+00, float* %4698, align 4, !tbaa !113, !noalias !115
  %4699 = icmp sgt i32 %4558, 0
  br i1 %4699, label %4700, label %4761

; <label>:4700                                    ; preds = %4688
  br label %4701

; <label>:4701                                    ; preds = %4750, %4700
  %4702 = phi i32 [ %4751, %4750 ], [ 0, %4700 ]
  %4703 = phi i32 [ %4752, %4750 ], [ 0, %4700 ]
  %4704 = add nuw i32 %4703, 171
  %4705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %4704)  ; CBufferLoadLegacy(handle,regIndex)
  %4706 = extractvalue %dx.types.CBufRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.CBufRet.f32 %4705, 1
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4711 = fsub fast float %4706, %4709
  %4712 = fsub fast float %4707, %4710
  %4713 = extractvalue %dx.types.CBufRet.f32 %4705, 2
  %4714 = fsub fast float -0.000000e+00, %4711
  %4715 = fsub fast float -0.000000e+00, %4712
  %4716 = call float @dx.op.dot2.f32(i32 54, float %4535, float %4536, float %4714, float %4715)  ; Dot2(ax,ay,bx,by)
  %4717 = fmul fast float %4716, 2.000000e+00
  %4718 = call float @dx.op.dot2.f32(i32 54, float %4714, float %4715, float %4714, float %4715)  ; Dot2(ax,ay,bx,by)
  %4719 = fmul fast float %4713, %4713
  %4720 = fsub fast float %4718, %4719
  %4721 = fmul fast float %4717, %4717
  %4722 = fmul fast float %4578, %4720
  %4723 = fsub fast float %4721, %4722
  %4724 = fcmp fast ogt float %4723, 0.000000e+00
  br i1 %4724, label %4725, label %4740

; <label>:4725                                    ; preds = %4701
  %4726 = fcmp fast ogt float %4717, 0.000000e+00
  %4727 = call float @dx.op.unary.f32(i32 24, float %4723)  ; Sqrt(value)
  %4728 = fsub fast float -0.000000e+00, %4727
  %4729 = select i1 %4726, float %4727, float %4728
  %4730 = fadd fast float %4729, %4717
  %4731 = fmul float %4730, -5.000000e-01
  %4732 = fdiv fast float %4731, %4571
  %4733 = call float @dx.op.binary.f32(i32 35, float %4732, float 0.000000e+00)  ; FMax(a,b)
  %4734 = call float @dx.op.binary.f32(i32 36, float %4606, float %4733)  ; FMin(a,b)
  %4735 = fdiv fast float %4720, %4731
  %4736 = call float @dx.op.binary.f32(i32 35, float %4735, float 0.000000e+00)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 36, float %4606, float %4736)  ; FMin(a,b)
  %4738 = call float @dx.op.binary.f32(i32 36, float %4734, float %4737)  ; FMin(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4734, float %4737)  ; FMax(a,b)
  br label %4740

; <label>:4740                                    ; preds = %4725, %4701
  %4741 = phi float [ %4739, %4725 ], [ -1.000000e+00, %4701 ]
  %4742 = phi float [ %4738, %4725 ], [ -1.000000e+00, %4701 ]
  %4743 = phi i1 [ true, %4725 ], [ false, %4701 ]
  br i1 %4743, label %4744, label %4750

; <label>:4744                                    ; preds = %4740
  %4745 = call float @dx.op.binary.f32(i32 35, float %4689, float %4742)  ; FMax(a,b)
  %4746 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4703
  store float %4745, float* %4746, align 4, !tbaa !113, !noalias !115
  %4747 = call float @dx.op.binary.f32(i32 35, float %4689, float %4741)  ; FMax(a,b)
  %4748 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %4703
  store float %4747, float* %4748, align 4, !tbaa !113, !noalias !115
  %4749 = add nsw i32 %4702, 1
  br label %4750

; <label>:4750                                    ; preds = %4744, %4740
  %4751 = phi i32 [ %4749, %4744 ], [ %4702, %4740 ]
  %4752 = add nuw nsw i32 %4703, 1
  %4753 = icmp eq i32 %4752, %4558
  br i1 %4753, label %4754, label %4701

; <label>:4754                                    ; preds = %4750
  %4755 = load float, float* %4695, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %4756 = load float, float* %4694, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  %4757 = load float, float* %4693, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  %4758 = load float, float* %4698, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %4759 = load float, float* %4697, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %4760 = load float, float* %4696, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  br label %4761

; <label>:4761                                    ; preds = %4754, %4688
  %4762 = phi float [ -1.000000e+00, %4688 ], [ %4760, %4754 ]
  %4763 = phi float [ -1.000000e+00, %4688 ], [ %4759, %4754 ]
  %4764 = phi float [ -1.000000e+00, %4688 ], [ %4758, %4754 ]
  %4765 = phi float [ -1.000000e+00, %4688 ], [ %4757, %4754 ]
  %4766 = phi float [ -1.000000e+00, %4688 ], [ %4756, %4754 ]
  %4767 = phi float [ -1.000000e+00, %4688 ], [ %4755, %4754 ]
  %4768 = phi i32 [ 0, %4688 ], [ %4751, %4754 ]
  %4769 = call float @dx.op.binary.f32(i32 36, float %4766, float %4767)  ; FMin(a,b)
  %4770 = call float @dx.op.binary.f32(i32 36, float %4765, float %4769)  ; FMin(a,b)
  %4771 = call float @dx.op.binary.f32(i32 35, float %4765, float %4766)  ; FMax(a,b)
  %4772 = call float @dx.op.binary.f32(i32 36, float %4771, float %4767)  ; FMin(a,b)
  %4773 = call float @dx.op.binary.f32(i32 36, float %4765, float %4766)  ; FMin(a,b)
  %4774 = call float @dx.op.binary.f32(i32 35, float %4773, float %4772)  ; FMax(a,b)
  %4775 = call float @dx.op.binary.f32(i32 35, float %4766, float %4767)  ; FMax(a,b)
  %4776 = call float @dx.op.binary.f32(i32 35, float %4765, float %4775)  ; FMax(a,b)
  store float %4770, float* %4693, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  store float %4774, float* %4694, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  store float %4776, float* %4695, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %4777 = call float @dx.op.binary.f32(i32 36, float %4763, float %4764)  ; FMin(a,b)
  %4778 = call float @dx.op.binary.f32(i32 36, float %4762, float %4777)  ; FMin(a,b)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4762, float %4763)  ; FMax(a,b)
  %4780 = call float @dx.op.binary.f32(i32 36, float %4779, float %4764)  ; FMin(a,b)
  %4781 = call float @dx.op.binary.f32(i32 36, float %4762, float %4763)  ; FMin(a,b)
  %4782 = call float @dx.op.binary.f32(i32 35, float %4781, float %4780)  ; FMax(a,b)
  %4783 = call float @dx.op.binary.f32(i32 35, float %4763, float %4764)  ; FMax(a,b)
  %4784 = call float @dx.op.binary.f32(i32 35, float %4762, float %4783)  ; FMax(a,b)
  store float %4778, float* %4696, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %4782, float* %4697, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %4784, float* %4698, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %4785 = sub nsw i32 3, %4768
  %4786 = icmp sgt i32 %4785, 2
  br i1 %4786, label %4787, label %4825

; <label>:4787                                    ; preds = %4761
  %4788 = icmp eq i32 %4556, 0
  %4789 = fsub fast float %4606, %4690
  %4790 = select i1 %4788, float %4789, float %4690
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4791, 2
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.CBufRet.f32 %4795, 1
  %4798 = extractvalue %dx.types.CBufRet.f32 %4795, 2
  %4799 = extractvalue %dx.types.CBufRet.f32 %4795, 3
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4802 = call float @dx.op.binary.f32(i32 36, float %4691, float %4801)  ; FMin(a,b)
  %4803 = fmul fast float %4799, %4790
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fsub fast float %4796, %4792
  %4806 = fsub fast float %4797, %4793
  %4807 = fsub fast float %4798, %4794
  %4808 = fmul fast float %4804, %4805
  %4809 = fmul fast float %4804, %4806
  %4810 = fmul fast float %4804, %4807
  %4811 = fadd fast float %4808, %4792
  %4812 = fadd fast float %4809, %4793
  %4813 = fadd fast float %4810, %4794
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.CBufRet.f32 %4814, 1
  %4817 = fadd fast float %4816, %4815
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4820 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4821 = fadd fast float %4820, %4819
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = fmul fast float %4818, %4802
  %4824 = fmul fast float %4823, %4822
  br label %4907

; <label>:4825                                    ; preds = %4761
  %4826 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4785
  %4827 = load float, float* %4826, align 4, !tbaa !113, !noalias !115
  %4828 = fcmp fast olt float %4827, %4692
  %4829 = icmp sgt i32 %4768, 0
  %4830 = and i1 %4829, %4828
  br i1 %4830, label %4831, label %4868

; <label>:4831                                    ; preds = %4825
  br label %4832

; <label>:4832                                    ; preds = %4861, %4831
  %4833 = phi float [ %4862, %4861 ], [ %4690, %4831 ]
  %4834 = phi float [ %4863, %4861 ], [ %4691, %4831 ]
  %4835 = phi float [ %4843, %4861 ], [ %4827, %4831 ]
  %4836 = phi i32 [ %4840, %4861 ], [ %4785, %4831 ]
  %4837 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %4836
  %4838 = load float, float* %4837, align 4, !tbaa !113, !noalias !115
  %4839 = icmp slt i32 %4836, 2
  %4840 = add nsw i32 %4836, 1
  %4841 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4840
  %4842 = load float, float* %4841, align 4, !tbaa !113, !noalias !115
  %4843 = select i1 %4839, float %4842, float %4606
  %4844 = call float @dx.op.binary.f32(i32 36, float %4843, float %4838)  ; FMin(a,b)
  %4845 = call float @dx.op.binary.f32(i32 36, float %4692, float %4844)  ; FMin(a,b)
  %4846 = icmp eq i32 %4556, 0
  %4847 = fadd fast float %4845, %4835
  %4848 = fmul fast float %4847, %4537
  %4849 = fadd fast float %4848, %4550
  br i1 %4846, label %4855, label %4850

; <label>:4850                                    ; preds = %4832
  %4851 = fsub fast float %4845, %4835
  %4852 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4851)  ; FMax(a,b)
  %4853 = fmul fast float %4852, %4849
  %4854 = fadd fast float %4853, %4834
  br label %4861

; <label>:4855                                    ; preds = %4832
  %4856 = fsub fast float %4835, %4845
  %4857 = call float @dx.op.unary.f32(i32 6, float %4856)  ; FAbs(value)
  %4858 = fadd fast float %4857, %4833
  %4859 = fmul fast float %4857, %4849
  %4860 = fsub fast float %4834, %4859
  br label %4861

; <label>:4861                                    ; preds = %4855, %4850
  %4862 = phi float [ %4852, %4850 ], [ %4858, %4855 ]
  %4863 = phi float [ %4854, %4850 ], [ %4860, %4855 ]
  %4864 = fcmp fast olt float %4843, %4692
  %4865 = icmp slt i32 %4840, 3
  %4866 = and i1 %4865, %4864
  br i1 %4866, label %4832, label %4867

; <label>:4867                                    ; preds = %4861
  br label %4868

; <label>:4868                                    ; preds = %4867, %4825
  %4869 = phi float [ %4690, %4825 ], [ %4862, %4867 ]
  %4870 = phi float [ %4691, %4825 ], [ %4863, %4867 ]
  %4871 = fsub fast float %4606, %4869
  %4872 = select i1 %4608, float %4869, float %4871
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4875 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4876 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4881 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4884 = call float @dx.op.binary.f32(i32 36, float %4870, float %4883)  ; FMin(a,b)
  %4885 = fmul fast float %4881, %4872
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fsub fast float %4878, %4874
  %4888 = fsub fast float %4879, %4875
  %4889 = fsub fast float %4880, %4876
  %4890 = fmul fast float %4886, %4887
  %4891 = fmul fast float %4886, %4888
  %4892 = fmul fast float %4886, %4889
  %4893 = fadd fast float %4890, %4874
  %4894 = fadd fast float %4891, %4875
  %4895 = fadd fast float %4892, %4876
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4899 = fadd fast float %4898, %4897
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4902 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4903 = fadd fast float %4902, %4901
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4900, %4884
  %4906 = fmul fast float %4905, %4904
  br label %4907

; <label>:4907                                    ; preds = %4868, %4787, %4622, %4604, %4602
  %4908 = phi float [ %4631, %4622 ], [ %4790, %4787 ], [ %4872, %4868 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4604 ]
  %4909 = phi float [ %4665, %4622 ], [ %4824, %4787 ], [ %4906, %4868 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4604 ]
  %4910 = phi float [ %4652, %4622 ], [ %4811, %4787 ], [ %4893, %4868 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4604 ]
  %4911 = phi float [ %4653, %4622 ], [ %4812, %4787 ], [ %4894, %4868 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4604 ]
  %4912 = phi float [ %4654, %4622 ], [ %4813, %4787 ], [ %4895, %4868 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4604 ]
  %4913 = fmul fast float %4545, %4909
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4916 = fsub fast float %4552, %4915
  %4917 = fcmp fast olt float %4913, -2.000000e+01
  %4918 = call float @dx.op.unary.f32(i32 21, float %4913)  ; Exp(value)
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 3
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 2
  %4924 = fmul fast float %4921, %4916
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = fmul fast float %4537, 5.000000e-01
  %4928 = fadd fast float %4927, 5.000000e-01
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = fsub fast float 1.000000e+00, %4929
  %4931 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4926)  ; FMax(a,b)
  %4932 = fdiv fast float %4930, %4931
  %4933 = fsub fast float %4916, %4494
  %4934 = call float @dx.op.unary.f32(i32 6, float %4933)  ; FAbs(value)
  %4935 = fmul fast float %4934, %4920
  %4936 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4937 = fsub fast float 1.000000e+00, %4935
  %4938 = fmul fast float %4937, %4936
  %4939 = fadd fast float %4938, %4935
  %4940 = fmul fast float %4923, %4916
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fsub fast float 1.000000e+00, %4939
  %4943 = fmul fast float %4942, %4941
  %4944 = fadd fast float %4943, %4939
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fadd fast float %4918, -1.000000e+00
  %4947 = select i1 %4917, float -1.000000e+00, float %4946
  %4948 = fmul fast float %4945, %4947
  %4949 = fadd fast float %4948, 1.000000e+00
  %4950 = fsub fast float -0.000000e+00, %4948
  %4951 = fmul fast float %4910, %4950
  %4952 = fmul fast float %4911, %4950
  %4953 = fmul fast float %4912, %4950
  br label %4954

; <label>:4954                                    ; preds = %4907, %4503
  %4955 = phi float [ %4908, %4907 ], [ 0.000000e+00, %4503 ]
  %4956 = phi float [ %4949, %4907 ], [ 1.000000e+00, %4503 ]
  %4957 = phi float [ %4951, %4907 ], [ 0.000000e+00, %4503 ]
  %4958 = phi float [ %4952, %4907 ], [ 0.000000e+00, %4503 ]
  %4959 = phi float [ %4953, %4907 ], [ 0.000000e+00, %4503 ]
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4962 = fsub fast float 1.000000e+00, %4956
  %4963 = fmul fast float %4962, %4538
  %4964 = fmul fast float %4963, %4961
  %4965 = fsub fast float %4538, %4964
  br i1 %4531, label %4966, label %4995, !dx.controlflow.hints !151

; <label>:4966                                    ; preds = %4954
  %4967 = fmul fast float %4539, %4528
  %4968 = fadd fast float %4967, %4529
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4510, %4965
  %4971 = fsub fast float -0.000000e+00, %4970
  %4972 = fmul fast float %4511, %4965
  %4973 = fsub fast float -0.000000e+00, %4972
  %4974 = call float @dx.op.unary.f32(i32 21, float %4971)  ; Exp(value)
  %4975 = call float @dx.op.unary.f32(i32 21, float %4973)  ; Exp(value)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4518, float %4974)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4518, float %4975)  ; FMax(a,b)
  %4978 = fsub fast float %4977, %4976
  %4979 = fmul fast float %4978, %4969
  %4980 = fadd fast float %4979, %4976
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fsub fast float %4515, %4520
  %4983 = fsub fast float %4516, %4521
  %4984 = fsub fast float %4517, %4522
  %4985 = fmul fast float %4969, %4982
  %4986 = fmul fast float %4969, %4983
  %4987 = fmul fast float %4969, %4984
  %4988 = fadd fast float %4985, %4520
  %4989 = fadd fast float %4986, %4521
  %4990 = fadd fast float %4987, %4522
  %4991 = fsub fast float 1.000000e+00, %4981
  %4992 = fmul fast float %4991, %4988
  %4993 = fmul fast float %4991, %4989
  %4994 = fmul fast float %4991, %4990
  br label %5054

; <label>:4995                                    ; preds = %4954
  %4996 = fmul fast float %4965, %4527
  %4997 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4998 = fsub fast float 2.000000e+00, %4997
  %4999 = fmul fast float %4997, 9.921875e-01
  %5000 = fmul fast float %4999, %4998
  %5001 = fadd fast float %5000, 3.906250e-03
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %41, float %5001, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = fsub fast float %4997, %5003
  %5005 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5004)  ; FMax(a,b)
  %5006 = fmul fast float %4513, %4494
  %5007 = call float @dx.op.unary.f32(i32 6, float %5006)  ; FAbs(value)
  %5008 = fcmp fast ogt float %5007, 0x3EB0C6F7A0000000
  br i1 %5008, label %5009, label %5015, !dx.controlflow.hints !152

; <label>:5009                                    ; preds = %4995
  %5010 = fmul fast float %5006, 0xBFF7154760000000
  %5011 = call float @dx.op.unary.f32(i32 21, float %5010)  ; Exp(value)
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = fdiv fast float %5012, %5006
  %5014 = fmul fast float %5013, %4523
  br label %5015

; <label>:5015                                    ; preds = %5009, %4995
  %5016 = phi float [ %5014, %5009 ], [ %4523, %4995 ]
  %5017 = fadd fast float %5016, %4525
  %5018 = fmul fast float %5017, %5005
  %5019 = fmul fast float %4510, %5018
  %5020 = fsub fast float -0.000000e+00, %5019
  %5021 = fmul fast float %4511, %5018
  %5022 = fsub fast float -0.000000e+00, %5021
  %5023 = fmul fast float %4512, %5018
  %5024 = fsub fast float -0.000000e+00, %5023
  %5025 = call float @dx.op.unary.f32(i32 21, float %5020)  ; Exp(value)
  %5026 = call float @dx.op.unary.f32(i32 21, float %5022)  ; Exp(value)
  %5027 = call float @dx.op.unary.f32(i32 21, float %5024)  ; Exp(value)
  %5028 = fmul fast float %4539, %4539
  %5029 = fadd fast float %5028, 1.000000e+00
  %5030 = fmul fast float %5029, 0x3FAE8EC8A0000000
  %5031 = fmul fast float %5030, %4520
  %5032 = fmul fast float %5030, %4521
  %5033 = fmul fast float %5030, %4522
  %5034 = fmul fast float %4539, %4518
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = fmul fast float %4518, %4518
  %5037 = fsub fast float 1.000000e+00, %5036
  %5038 = fmul fast float %5037, 0x3FB45F3060000000
  %5039 = fmul fast float %5035, %5035
  %5040 = fdiv fast float 1.000000e+00, %5039
  %5041 = fmul fast float %5038, %5040
  %5042 = fmul fast float %5041, %4515
  %5043 = fmul fast float %5041, %4516
  %5044 = fmul fast float %5041, %4517
  %5045 = fadd fast float %5042, %5031
  %5046 = fadd fast float %5043, %5032
  %5047 = fadd fast float %5044, %5033
  %5048 = fsub fast float 1.000000e+00, %5025
  %5049 = fsub fast float 1.000000e+00, %5026
  %5050 = fsub fast float 1.000000e+00, %5027
  %5051 = fmul fast float %5045, %5048
  %5052 = fmul fast float %5046, %5049
  %5053 = fmul fast float %5047, %5050
  br label %5054

; <label>:5054                                    ; preds = %5015, %4966
  %5055 = phi float [ %4992, %4966 ], [ %5051, %5015 ]
  %5056 = phi float [ %4993, %4966 ], [ %5052, %5015 ]
  %5057 = phi float [ %4994, %4966 ], [ %5053, %5015 ]
  %5058 = phi float [ %4981, %4966 ], [ %5025, %5015 ]
  %5059 = phi float [ %4981, %4966 ], [ %5026, %5015 ]
  %5060 = phi float [ %4981, %4966 ], [ %5027, %5015 ]
  br i1 %4547, label %5061, label %5259, !dx.controlflow.hints !153

; <label>:5061                                    ; preds = %5054
  %5062 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %5063 = fmul fast float %5062, %4962
  %5064 = fsub fast float %4957, %5055
  %5065 = fsub fast float %4958, %5056
  %5066 = fsub fast float %4959, %5057
  %5067 = fmul fast float %5063, %5064
  %5068 = fmul fast float %5063, %5065
  %5069 = fmul fast float %5063, %5066
  %5070 = fadd fast float %5067, %5055
  %5071 = fadd fast float %5068, %5056
  %5072 = fadd fast float %5069, %5057
  %5073 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5058)  ; FMax(a,b)
  %5074 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5059)  ; FMax(a,b)
  %5075 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5060)  ; FMax(a,b)
  %5076 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4956)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 35, float %4955, float %4965)  ; FMax(a,b)
  %5078 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5077)  ; FMax(a,b)
  %5079 = fdiv fast float %4955, %5078
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fdiv fast float %4965, %5078
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fcmp fast une float %5076, 1.000000e+00
  br i1 %5083, label %5084, label %5097, !dx.controlflow.hints !154

; <label>:5084                                    ; preds = %5061
  %5085 = call float @dx.op.unary.f32(i32 23, float %5076)  ; Log(value)
  %5086 = fmul fast float %5085, 0x3FE62E4300000000
  %5087 = fmul fast float %4957, %5086
  %5088 = fsub fast float -0.000000e+00, %5087
  %5089 = fmul fast float %4958, %5086
  %5090 = fsub fast float -0.000000e+00, %5089
  %5091 = fmul fast float %4959, %5086
  %5092 = fsub fast float -0.000000e+00, %5091
  %5093 = fsub fast float 1.000000e+00, %5076
  %5094 = fdiv fast float %5088, %5093
  %5095 = fdiv fast float %5090, %5093
  %5096 = fdiv fast float %5092, %5093
  br label %5097

; <label>:5097                                    ; preds = %5084, %5061
  %5098 = phi float [ %5094, %5084 ], [ %4957, %5061 ]
  %5099 = phi float [ %5095, %5084 ], [ %4958, %5061 ]
  %5100 = phi float [ %5096, %5084 ], [ %4959, %5061 ]
  %5101 = phi float [ %5086, %5084 ], [ 0.000000e+00, %5061 ]
  %5102 = fcmp fast une float %5073, 1.000000e+00
  br i1 %5102, label %5103, label %5110, !dx.controlflow.hints !155

; <label>:5103                                    ; preds = %5097
  %5104 = call float @dx.op.unary.f32(i32 23, float %5073)  ; Log(value)
  %5105 = fmul fast float %5104, 0x3FE62E4300000000
  %5106 = fmul fast float %5070, %5105
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = fsub fast float 1.000000e+00, %5073
  %5109 = fdiv fast float %5107, %5108
  br label %5110

; <label>:5110                                    ; preds = %5103, %5097
  %5111 = phi float [ %5109, %5103 ], [ %5070, %5097 ]
  %5112 = phi float [ %5105, %5103 ], [ 0.000000e+00, %5097 ]
  %5113 = fcmp fast une float %5074, 1.000000e+00
  br i1 %5113, label %5114, label %5121, !dx.controlflow.hints !155

; <label>:5114                                    ; preds = %5110
  %5115 = call float @dx.op.unary.f32(i32 23, float %5074)  ; Log(value)
  %5116 = fmul fast float %5115, 0x3FE62E4300000000
  %5117 = fmul fast float %5071, %5116
  %5118 = fsub fast float -0.000000e+00, %5117
  %5119 = fsub fast float 1.000000e+00, %5074
  %5120 = fdiv fast float %5118, %5119
  br label %5121

; <label>:5121                                    ; preds = %5114, %5110
  %5122 = phi float [ %5120, %5114 ], [ %5071, %5110 ]
  %5123 = phi float [ %5116, %5114 ], [ 0.000000e+00, %5110 ]
  %5124 = fcmp fast une float %5075, 1.000000e+00
  br i1 %5124, label %5125, label %5132, !dx.controlflow.hints !155

; <label>:5125                                    ; preds = %5121
  %5126 = call float @dx.op.unary.f32(i32 23, float %5075)  ; Log(value)
  %5127 = fmul fast float %5126, 0x3FE62E4300000000
  %5128 = fmul fast float %5072, %5127
  %5129 = fsub fast float -0.000000e+00, %5128
  %5130 = fsub fast float 1.000000e+00, %5075
  %5131 = fdiv fast float %5129, %5130
  br label %5132

; <label>:5132                                    ; preds = %5125, %5121
  %5133 = phi float [ %5131, %5125 ], [ %5072, %5121 ]
  %5134 = phi float [ %5127, %5125 ], [ 0.000000e+00, %5121 ]
  %5135 = fmul fast float %5098, %5082
  %5136 = fmul fast float %5099, %5082
  %5137 = fmul fast float %5100, %5082
  %5138 = fmul fast float %5101, %5082
  %5139 = fmul fast float %5111, %5080
  %5140 = fmul fast float %5122, %5080
  %5141 = fmul fast float %5133, %5080
  %5142 = fmul fast float %5112, %5080
  %5143 = fmul fast float %5123, %5080
  %5144 = fmul fast float %5134, %5080
  %5145 = fadd fast float %5139, %5135
  %5146 = fadd fast float %5140, %5136
  %5147 = fadd fast float %5141, %5137
  %5148 = fadd fast float %5142, %5138
  %5149 = fadd fast float %5143, %5138
  %5150 = fadd fast float %5144, %5138
  %5151 = fcmp fast une float %5148, 0.000000e+00
  br i1 %5151, label %5152, label %5159, !dx.controlflow.hints !156

; <label>:5152                                    ; preds = %5132
  %5153 = fmul fast float %5148, 0x3FF7154760000000
  %5154 = call float @dx.op.unary.f32(i32 21, float %5153)  ; Exp(value)
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = fmul fast float %5145, %5155
  %5157 = fsub fast float -0.000000e+00, %5156
  %5158 = fdiv fast float %5157, %5148
  br label %5159

; <label>:5159                                    ; preds = %5152, %5132
  %5160 = phi float [ %5154, %5152 ], [ 1.000000e+00, %5132 ]
  %5161 = phi float [ %5158, %5152 ], [ %5145, %5132 ]
  %5162 = fcmp fast une float %5149, 0.000000e+00
  br i1 %5162, label %5163, label %5170, !dx.controlflow.hints !156

; <label>:5163                                    ; preds = %5159
  %5164 = fmul fast float %5149, 0x3FF7154760000000
  %5165 = call float @dx.op.unary.f32(i32 21, float %5164)  ; Exp(value)
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = fmul fast float %5146, %5166
  %5168 = fsub fast float -0.000000e+00, %5167
  %5169 = fdiv fast float %5168, %5149
  br label %5170

; <label>:5170                                    ; preds = %5163, %5159
  %5171 = phi float [ %5165, %5163 ], [ 1.000000e+00, %5159 ]
  %5172 = phi float [ %5169, %5163 ], [ %5146, %5159 ]
  %5173 = fcmp fast une float %5150, 0.000000e+00
  br i1 %5173, label %5174, label %5181, !dx.controlflow.hints !156

; <label>:5174                                    ; preds = %5170
  %5175 = fmul fast float %5150, 0x3FF7154760000000
  %5176 = call float @dx.op.unary.f32(i32 21, float %5175)  ; Exp(value)
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = fmul fast float %5147, %5177
  %5179 = fsub fast float -0.000000e+00, %5178
  %5180 = fdiv fast float %5179, %5150
  br label %5181

; <label>:5181                                    ; preds = %5174, %5170
  %5182 = phi float [ %5176, %5174 ], [ 1.000000e+00, %5170 ]
  %5183 = phi float [ %5180, %5174 ], [ %5147, %5170 ]
  %5184 = fcmp fast ogt float %5080, %5082
  br i1 %5184, label %5185, label %5205

; <label>:5185                                    ; preds = %5181
  %5186 = fsub fast float 1.000000e+00, %5082
  %5187 = fmul fast float %5098, %5186
  %5188 = fmul fast float %5099, %5186
  %5189 = fmul fast float %5100, %5186
  %5190 = fmul fast float %5101, %5186
  %5191 = fcmp fast une float %5190, 0.000000e+00
  br i1 %5191, label %5192, label %5243, !dx.controlflow.hints !157

; <label>:5192                                    ; preds = %5185
  %5193 = fmul fast float %5190, 0x3FF7154760000000
  %5194 = call float @dx.op.unary.f32(i32 21, float %5193)  ; Exp(value)
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = fmul fast float %5187, %5195
  %5197 = fsub fast float -0.000000e+00, %5196
  %5198 = fmul fast float %5188, %5195
  %5199 = fsub fast float -0.000000e+00, %5198
  %5200 = fmul fast float %5189, %5195
  %5201 = fsub fast float -0.000000e+00, %5200
  %5202 = fdiv fast float %5197, %5190
  %5203 = fdiv fast float %5199, %5190
  %5204 = fdiv fast float %5201, %5190
  br label %5243

; <label>:5205                                    ; preds = %5181
  %5206 = fsub fast float 1.000000e+00, %5080
  %5207 = fmul fast float %5111, %5206
  %5208 = fmul fast float %5122, %5206
  %5209 = fmul fast float %5133, %5206
  %5210 = fmul fast float %5112, %5206
  %5211 = fmul fast float %5123, %5206
  %5212 = fmul fast float %5134, %5206
  %5213 = fcmp fast une float %5210, 0.000000e+00
  br i1 %5213, label %5214, label %5221, !dx.controlflow.hints !156

; <label>:5214                                    ; preds = %5205
  %5215 = fmul fast float %5210, 0x3FF7154760000000
  %5216 = call float @dx.op.unary.f32(i32 21, float %5215)  ; Exp(value)
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = fmul fast float %5207, %5217
  %5219 = fsub fast float -0.000000e+00, %5218
  %5220 = fdiv fast float %5219, %5210
  br label %5221

; <label>:5221                                    ; preds = %5214, %5205
  %5222 = phi float [ %5220, %5214 ], [ %5207, %5205 ]
  %5223 = phi float [ %5216, %5214 ], [ 1.000000e+00, %5205 ]
  %5224 = fcmp fast une float %5211, 0.000000e+00
  br i1 %5224, label %5225, label %5232, !dx.controlflow.hints !156

; <label>:5225                                    ; preds = %5221
  %5226 = fmul fast float %5211, 0x3FF7154760000000
  %5227 = call float @dx.op.unary.f32(i32 21, float %5226)  ; Exp(value)
  %5228 = fsub fast float 1.000000e+00, %5227
  %5229 = fmul fast float %5208, %5228
  %5230 = fsub fast float -0.000000e+00, %5229
  %5231 = fdiv fast float %5230, %5211
  br label %5232

; <label>:5232                                    ; preds = %5225, %5221
  %5233 = phi float [ %5231, %5225 ], [ %5208, %5221 ]
  %5234 = phi float [ %5227, %5225 ], [ 1.000000e+00, %5221 ]
  %5235 = fcmp fast une float %5212, 0.000000e+00
  br i1 %5235, label %5236, label %5243, !dx.controlflow.hints !156

; <label>:5236                                    ; preds = %5232
  %5237 = fmul fast float %5212, 0x3FF7154760000000
  %5238 = call float @dx.op.unary.f32(i32 21, float %5237)  ; Exp(value)
  %5239 = fsub fast float 1.000000e+00, %5238
  %5240 = fmul fast float %5209, %5239
  %5241 = fsub fast float -0.000000e+00, %5240
  %5242 = fdiv fast float %5241, %5212
  br label %5243

; <label>:5243                                    ; preds = %5236, %5232, %5192, %5185
  %5244 = phi float [ %5242, %5236 ], [ %5204, %5192 ], [ %5189, %5185 ], [ %5209, %5232 ]
  %5245 = phi float [ %5233, %5236 ], [ %5203, %5192 ], [ %5188, %5185 ], [ %5233, %5232 ]
  %5246 = phi float [ %5222, %5236 ], [ %5202, %5192 ], [ %5187, %5185 ], [ %5222, %5232 ]
  %5247 = phi float [ %5238, %5236 ], [ %5194, %5192 ], [ 1.000000e+00, %5185 ], [ 1.000000e+00, %5232 ]
  %5248 = phi float [ %5234, %5236 ], [ %5194, %5192 ], [ 1.000000e+00, %5185 ], [ %5234, %5232 ]
  %5249 = phi float [ %5223, %5236 ], [ %5194, %5192 ], [ 1.000000e+00, %5185 ], [ %5223, %5232 ]
  %5250 = fmul fast float %5249, %5161
  %5251 = fmul fast float %5248, %5172
  %5252 = fmul fast float %5247, %5183
  %5253 = fadd fast float %5250, %5246
  %5254 = fadd fast float %5251, %5245
  %5255 = fadd fast float %5252, %5244
  %5256 = fmul fast float %5249, %5160
  %5257 = fmul fast float %5248, %5171
  %5258 = fmul fast float %5247, %5182
  br label %5259

; <label>:5259                                    ; preds = %5243, %5054
  %5260 = phi float [ %5258, %5243 ], [ %5060, %5054 ]
  %5261 = phi float [ %5257, %5243 ], [ %5059, %5054 ]
  %5262 = phi float [ %5256, %5243 ], [ %5058, %5054 ]
  %5263 = phi float [ %5255, %5243 ], [ %5057, %5054 ]
  %5264 = phi float [ %5254, %5243 ], [ %5056, %5054 ]
  %5265 = phi float [ %5253, %5243 ], [ %5055, %5054 ]
  %5266 = fmul fast float %5265, %4205
  %5267 = fmul fast float %5264, %4207
  %5268 = fmul fast float %5263, %4209
  %5269 = fmul fast float %5262, %4502
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5261, float %5260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = select i1 %209, float %5270, float %5262
  %5273 = select i1 %209, float %5270, float %5261
  %5274 = select i1 %209, float 1.000000e+00, float %5260
  %5275 = select i1 %209, float %5271, float %5266
  %5276 = select i1 %209, float 0.000000e+00, float %5267
  %5277 = select i1 %209, float 0.000000e+00, float %5268
  %5278 = fmul fast float %5272, %4496
  %5279 = fmul fast float %5273, %4497
  %5280 = fmul fast float %5274, %4498
  %5281 = fadd fast float %5278, %5275
  %5282 = fadd fast float %5279, %5276
  %5283 = fadd fast float %5277, %5280
  %5284 = fmul fast float %5272, %4499
  %5285 = fmul fast float %5273, %4500
  %5286 = fmul fast float %5274, %4501
  %5287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.i32 %5287, 0
  %5289 = icmp eq i32 %5288, 0
  br i1 %5289, label %5657, label %5290, !dx.controlflow.hints !158

; <label>:5290                                    ; preds = %5259
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5293 = extractvalue %dx.types.CBufRet.f32 %5291, 3
  %5294 = fmul fast float %5292, %72
  %5295 = fmul fast float %5293, %73
  %5296 = fmul fast float %5294, 2.000000e+00
  %5297 = fmul fast float %5295, 2.000000e+00
  %5298 = fsub fast float 1.000000e+00, %5296
  %5299 = fsub fast float 1.000000e+00, %5297
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5304 = fmul fast float %5298, %5301
  %5305 = fmul fast float %5298, %5302
  %5306 = fmul fast float %5298, %5303
  %5307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.CBufRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.CBufRet.f32 %5307, 2
  %5311 = fmul fast float %5299, %5308
  %5312 = fmul fast float %5299, %5309
  %5313 = fmul fast float %5299, %5310
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.CBufRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5318 = fadd fast float %5311, %5315
  %5319 = fadd fast float %5318, %5304
  %5320 = fadd fast float %5312, %5316
  %5321 = fadd fast float %5320, %5305
  %5322 = fadd fast float %5313, %5317
  %5323 = fadd fast float %5322, %5306
  %5324 = fmul fast float %5319, %4495
  %5325 = fmul fast float %5321, %4495
  %5326 = fmul fast float %5323, %4495
  %5327 = fmul fast float %5324, %5324
  %5328 = fmul fast float %5325, %5325
  %5329 = fadd fast float %5327, %5328
  %5330 = fmul fast float %5326, %5326
  %5331 = fadd fast float %5329, %5330
  %5332 = call float @dx.op.unary.f32(i32 24, float %5331)  ; Sqrt(value)
  %5333 = extractvalue %dx.types.CBufRet.f32 %4220, 0
  %5334 = fsub fast float %5332, %5333
  %5335 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %5336 = fmul fast float %5334, %5335
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fadd fast float %5337, -5.000000e-01
  %5339 = fmul fast float %5338, 2.000000e+00
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 2
  %5342 = call float @dx.op.binary.f32(i32 36, float %5341, float %5339)  ; FMin(a,b)
  %5343 = fsub fast float -0.000000e+00, %5341
  %5344 = fcmp fast ogt float %5342, %5343
  br i1 %5344, label %5345, label %5657, !dx.controlflow.hints !159

; <label>:5345                                    ; preds = %5290
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 3
  %5348 = fcmp fast ogt float %5347, 0.000000e+00
  br i1 %5348, label %5349, label %5424, !dx.controlflow.hints !160

; <label>:5349                                    ; preds = %5345
  %5350 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %5351 = extractvalue %dx.types.Dimensions %5350, 0
  %5352 = sitofp i32 %5351 to float
  %5353 = extractvalue %dx.types.Dimensions %5350, 1
  %5354 = sitofp i32 %5353 to float
  %5355 = fmul fast float %5294, %5352
  %5356 = fmul fast float %5295, %5354
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5359 = fsub fast float -0.000000e+00, %5358
  %5360 = fptoui float %5359 to i32
  %5361 = fptoui float %5355 to i32
  %5362 = fptoui float %5356 to i32
  %5363 = and i32 %5360, 31
  %5364 = lshr i32 %5361, %5363
  %5365 = lshr i32 %5362, %5363
  %5366 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %5360, i32 %5364, i32 %5365, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = fcmp fast olt float %5367, -1.000000e+00
  %5369 = fcmp fast ogt float %5367, -1.000000e+00
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 1
  %5372 = select i1 %5369, float %5371, float 1.000000e+00
  %5373 = fadd fast float %5367, 1.000000e+00
  %5374 = fmul fast float %5372, %5373
  %5375 = call float @dx.op.unary.f32(i32 6, float %5374)  ; FAbs(value)
  %5376 = extractvalue %dx.types.CBufRet.f32 %5370, 3
  %5377 = fcmp fast oge float %5375, %5376
  %5378 = select i1 %5377, float 0x4197782600000000, float %5375
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5383 = select i1 %5368, float %5380, float %5301
  %5384 = select i1 %5368, float %5381, float %5302
  %5385 = select i1 %5368, float %5382, float %5303
  %5386 = fmul fast float %5383, %5298
  %5387 = fmul fast float %5384, %5298
  %5388 = fmul fast float %5385, %5298
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5389, 2
  %5393 = select i1 %5368, float %5390, float %5308
  %5394 = select i1 %5368, float %5391, float %5309
  %5395 = select i1 %5368, float %5392, float %5310
  %5396 = fmul fast float %5393, %5299
  %5397 = fmul fast float %5394, %5299
  %5398 = fmul fast float %5395, %5299
  %5399 = fadd fast float %5396, %5386
  %5400 = fadd fast float %5397, %5387
  %5401 = fadd fast float %5398, %5388
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.CBufRet.f32 %5402, 2
  %5406 = select i1 %5368, float %5403, float %5315
  %5407 = select i1 %5368, float %5404, float %5316
  %5408 = select i1 %5368, float %5405, float %5317
  %5409 = fadd fast float %5399, %5406
  %5410 = fadd fast float %5400, %5407
  %5411 = fadd fast float %5401, %5408
  %5412 = fmul fast float %5409, %5378
  %5413 = fmul fast float %5410, %5378
  %5414 = fmul fast float %5411, %5378
  %5415 = fmul fast float %5412, %5412
  %5416 = fmul fast float %5413, %5413
  %5417 = fadd fast float %5415, %5416
  %5418 = fmul fast float %5414, %5414
  %5419 = fadd fast float %5417, %5418
  %5420 = call float @dx.op.unary.f32(i32 24, float %5419)  ; Sqrt(value)
  %5421 = fsub fast float %5420, %5333
  %5422 = fmul fast float %5421, %5335
  %5423 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  br label %5424

; <label>:5424                                    ; preds = %5349, %5345
  %5425 = phi float [ %5423, %5349 ], [ 1.000000e+00, %5345 ]
  %5426 = fmul fast float %5342, 5.000000e-01
  %5427 = fadd fast float %5426, 5.000000e-01
  %5428 = call float @dx.op.unary.f32(i32 22, float %5427)  ; Frc(value)
  %5429 = call float @dx.op.unary.f32(i32 27, float %5428)  ; Round_ni(value)
  %5430 = call float @dx.op.unary.f32(i32 22, float %5428)  ; Frc(value)
  %5431 = fmul fast float %5430, 2.000000e+00
  %5432 = fadd fast float %5431, -1.000000e+00
  %5433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %41, float %5294, float %5295, float %5429, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.ResRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.ResRet.f32 %5433, 2
  %5437 = extractvalue %dx.types.ResRet.f32 %5433, 3
  %5438 = fadd fast float %5434, -5.000000e-01
  %5439 = fadd fast float %5436, -5.000000e-01
  %5440 = fmul fast float %5438, 0xBFD5555560000000
  %5441 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5439, float %5440)  ; FMad(a,b,c)
  %5442 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5435, float 0.000000e+00)  ; FMad(a,b,c)
  %5443 = fadd fast float %5442, %5437
  %5444 = fmul fast float %5438, -7.500000e-01
  %5445 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5439, float %5444)  ; FMad(a,b,c)
  %5446 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5435, float 0.000000e+00)  ; FMad(a,b,c)
  %5447 = fadd fast float %5446, %5437
  %5448 = call float @dx.op.binary.f32(i32 35, float %5441, float -1.000000e+00)  ; FMax(a,b)
  %5449 = call float @dx.op.binary.f32(i32 35, float %5443, float -1.000000e+00)  ; FMax(a,b)
  %5450 = call float @dx.op.binary.f32(i32 35, float %5445, float -1.000000e+00)  ; FMax(a,b)
  %5451 = call float @dx.op.binary.f32(i32 35, float %5447, float -1.000000e+00)  ; FMax(a,b)
  %5452 = call float @dx.op.binary.f32(i32 36, float %5448, float 1.000000e+00)  ; FMin(a,b)
  %5453 = call float @dx.op.binary.f32(i32 36, float %5449, float 1.000000e+00)  ; FMin(a,b)
  %5454 = call float @dx.op.binary.f32(i32 36, float %5450, float 1.000000e+00)  ; FMin(a,b)
  %5455 = call float @dx.op.binary.f32(i32 36, float %5451, float 1.000000e+00)  ; FMin(a,b)
  %5456 = fcmp fast olt float %5452, 0x3FEFFF8020000000
  br i1 %5456, label %5457, label %5572, !dx.controlflow.hints !161

; <label>:5457                                    ; preds = %5424
  %5458 = extractvalue %dx.types.CBufRet.f32 %5340, 3
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = extractvalue %dx.types.CBufRet.f32 %5459, 3
  %5464 = fsub fast float %5460, %5452
  %5465 = fsub fast float %5461, %5453
  %5466 = fsub fast float %5462, %5454
  %5467 = fsub fast float %5463, %5455
  %5468 = fmul fast float %5464, %5458
  %5469 = fmul fast float %5465, %5458
  %5470 = fmul fast float %5466, %5458
  %5471 = fmul fast float %5467, %5458
  %5472 = fadd fast float %5468, %5452
  %5473 = fadd fast float %5469, %5453
  %5474 = fsub fast float -0.000000e+00, %5473
  %5475 = fadd fast float %5470, %5454
  %5476 = fadd fast float %5471, %5455
  %5477 = fmul fast float %5472, %5472
  %5478 = fsub fast float %5473, %5477
  %5479 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5478)  ; FMax(a,b)
  %5480 = fdiv fast float 1.000000e+00, %5479
  %5481 = fmul fast float %5473, %5472
  %5482 = fsub fast float %5475, %5481
  %5483 = fsub fast float %5432, %5472
  %5484 = fmul fast float %5432, %5432
  %5485 = fsub fast float %5484, %5473
  %5486 = fmul fast float %5483, %5480
  %5487 = fmul fast float %5486, %5482
  %5488 = fsub fast float %5485, %5487
  %5489 = fmul fast float %5473, %5473
  %5490 = fsub fast float %5476, %5489
  %5491 = fmul fast float %5482, %5482
  %5492 = fmul fast float %5491, %5480
  %5493 = fsub fast float %5490, %5492
  %5494 = fdiv fast float %5488, %5493
  %5495 = fmul fast float %5482, %5494
  %5496 = fsub fast float %5483, %5495
  %5497 = fmul fast float %5496, %5480
  %5498 = fmul fast float %5497, %5472
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5473, %5494
  %5501 = fsub fast float %5499, %5500
  %5502 = fmul fast float %5497, %5497
  %5503 = fmul fast float %5494, 4.000000e+00
  %5504 = fmul fast float %5503, %5501
  %5505 = fsub fast float %5502, %5504
  %5506 = call float @dx.op.unary.f32(i32 24, float %5505)  ; Sqrt(value)
  %5507 = fcmp fast oge float %5497, 0.000000e+00
  %5508 = fsub fast float -0.000000e+00, %5506
  %5509 = select i1 %5507, float %5508, float %5506
  %5510 = fsub fast float %5509, %5497
  %5511 = fdiv fast float %5510, %5494
  %5512 = fdiv fast float %5501, %5510
  %5513 = fmul fast float %5511, 5.000000e-01
  %5514 = fmul fast float %5512, 2.000000e+00
  %5515 = select i1 %5507, float %5513, float %5514
  %5516 = select i1 %5507, float %5514, float %5513
  %5517 = call float @dx.op.binary.f32(i32 35, float %5515, float %5516)  ; FMax(a,b)
  %5518 = call float @dx.op.binary.f32(i32 36, float %5515, float %5516)  ; FMin(a,b)
  %5519 = fcmp fast ogt float %5432, %5518
  br i1 %5519, label %5520, label %5530

; <label>:5520                                    ; preds = %5457
  %5521 = fsub fast float %5432, %5518
  %5522 = fsub fast float %5517, %5518
  %5523 = fmul fast float %5521, %5522
  %5524 = fmul fast float %5517, %5432
  %5525 = fadd fast float %5517, %5432
  %5526 = fmul fast float %5525, %5472
  %5527 = fadd fast float %5524, %5473
  %5528 = fsub fast float %5527, %5526
  %5529 = fdiv fast float %5528, %5523
  br label %5530

; <label>:5530                                    ; preds = %5520, %5457
  %5531 = phi float [ %5529, %5520 ], [ 0.000000e+00, %5457 ]
  %5532 = fcmp fast ogt float %5432, %5517
  %5533 = fsub fast float %5432, %5517
  br i1 %5532, label %5534, label %5544

; <label>:5534                                    ; preds = %5530
  %5535 = fsub fast float %5517, %5518
  %5536 = fmul fast float %5535, %5533
  %5537 = fmul fast float %5518, %5432
  %5538 = fadd fast float %5518, %5432
  %5539 = fmul fast float %5538, %5472
  %5540 = fsub fast float %5474, %5537
  %5541 = fadd fast float %5540, %5539
  %5542 = fdiv fast float %5541, %5536
  %5543 = fadd fast float %5542, %5531
  br label %5544

; <label>:5544                                    ; preds = %5534, %5530
  %5545 = phi float [ %5543, %5534 ], [ %5531, %5530 ]
  %5546 = fsub fast float %5432, %5518
  %5547 = fmul fast float %5546, %5533
  %5548 = fmul fast float %5518, %5517
  %5549 = fadd fast float %5518, %5517
  %5550 = fmul fast float %5549, %5472
  %5551 = fadd fast float %5548, %5473
  %5552 = fsub fast float %5551, %5550
  %5553 = fdiv fast float %5552, %5547
  %5554 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5555 = fcmp fast oeq float %4221, 0.000000e+00
  %5556 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5557 = fcmp fast oeq float %5556, 0.000000e+00
  %5558 = or i1 %5555, %5557
  %5559 = fmul fast float %5556, 2.000000e+00
  %5560 = fadd fast float %5341, %5342
  %5561 = fdiv fast float %5560, %5559
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = fmul fast float %5562, 2.000000e+00
  %5564 = fsub fast float 3.000000e+00, %5563
  %5565 = fmul fast float %5562, %5562
  %5566 = fmul fast float %5565, %5564
  %5567 = select i1 %5558, float 1.000000e+00, float %5566
  %5568 = fmul fast float %5553, %4221
  %5569 = fadd fast float %5554, %5568
  %5570 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5571 = fmul fast float %5567, %5570
  br label %5572

; <label>:5572                                    ; preds = %5544, %5424
  %5573 = phi float [ %5571, %5544 ], [ 0.000000e+00, %5424 ]
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %41, float %5294, float %5295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5576 = extractvalue %dx.types.ResRet.f32 %5575, 0
  %5577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.i32 %5577, 2
  %5579 = icmp eq i32 %5578, 0
  br i1 %5579, label %5585, label %5580

; <label>:5580                                    ; preds = %5572
  %5581 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5582 = fadd fast float %5576, -1.000000e+00
  %5583 = fmul fast float %5581, %5582
  %5584 = fadd fast float %5583, 1.000000e+00
  br label %5585

; <label>:5585                                    ; preds = %5580, %5572
  %5586 = phi float [ %5584, %5580 ], [ %5574, %5572 ]
  br i1 %5348, label %5587, label %5605

; <label>:5587                                    ; preds = %5585
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5590 = fsub fast float %5425, %5589
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = fsub fast float %5425, %5347
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fsub fast float %5591, %5593
  %5595 = fsub fast float %5427, %5593
  %5596 = fdiv fast float %5595, %5594
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = fmul fast float %5597, 2.000000e+00
  %5599 = fsub fast float 3.000000e+00, %5598
  %5600 = fsub fast float %5576, %5586
  %5601 = fmul fast float %5597, %5597
  %5602 = fmul fast float %5601, %5600
  %5603 = fmul fast float %5602, %5599
  %5604 = fadd fast float %5603, %5586
  br label %5605

; <label>:5605                                    ; preds = %5587, %5585
  %5606 = phi float [ %5604, %5587 ], [ %5586, %5585 ]
  %5607 = call float @dx.op.binary.f32(i32 35, float %5576, float %5606)  ; FMax(a,b)
  %5608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.i32 %5608, 2
  %5610 = and i32 %5609, 1
  %5611 = icmp eq i32 %5610, 0
  %5612 = fcmp fast une float %5607, 1.000000e+00
  %5613 = and i1 %5612, %5611
  br i1 %5613, label %5614, label %5633

; <label>:5614                                    ; preds = %5605
  %5615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %41, float %5294, float %5295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.ResRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.ResRet.f32 %5615, 2
  %5619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.f32 %5619, 1
  %5621 = fmul fast float %5620, %5616
  %5622 = fmul fast float %5620, %5617
  %5623 = fmul fast float %5620, %5618
  %5624 = fcmp fast ogt float %5576, 0x3FEFFF2E40000000
  %5625 = fsub fast float 1.000000e+00, %5607
  %5626 = fsub fast float 1.000000e+00, %5576
  %5627 = fdiv fast float %5625, %5626
  %5628 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5629 = select i1 %5624, float 0.000000e+00, float %5628
  %5630 = fmul fast float %5621, %5629
  %5631 = fmul fast float %5622, %5629
  %5632 = fmul fast float %5623, %5629
  br label %5633

; <label>:5633                                    ; preds = %5614, %5605
  %5634 = phi float [ 0.000000e+00, %5605 ], [ %5630, %5614 ]
  %5635 = phi float [ 0.000000e+00, %5605 ], [ %5631, %5614 ]
  %5636 = phi float [ 0.000000e+00, %5605 ], [ %5632, %5614 ]
  %5637 = fmul fast float %5634, %4205
  %5638 = fmul fast float %5635, %4207
  %5639 = fmul fast float %5636, %4209
  %5640 = fmul fast float %5607, %5269
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5607, float %5607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5637, float %5638, float %5639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = select i1 %209, float %5641, float %5607
  %5644 = select i1 %209, float 1.000000e+00, float %5607
  %5645 = select i1 %209, float %5642, float %5637
  %5646 = select i1 %209, float 0.000000e+00, float %5638
  %5647 = select i1 %209, float 0.000000e+00, float %5639
  %5648 = fmul fast float %5643, %5281
  %5649 = fmul fast float %5643, %5282
  %5650 = fmul fast float %5644, %5283
  %5651 = fadd fast float %5648, %5645
  %5652 = fadd fast float %5649, %5646
  %5653 = fadd fast float %5647, %5650
  %5654 = fmul fast float %5643, %5284
  %5655 = fmul fast float %5643, %5285
  %5656 = fmul fast float %5644, %5286
  br label %5657

; <label>:5657                                    ; preds = %5633, %5290, %5259, %4491
  %5658 = phi float [ %4496, %4491 ], [ %5281, %5259 ], [ %5651, %5633 ], [ %5281, %5290 ]
  %5659 = phi float [ %4497, %4491 ], [ %5282, %5259 ], [ %5652, %5633 ], [ %5282, %5290 ]
  %5660 = phi float [ %4498, %4491 ], [ %5283, %5259 ], [ %5653, %5633 ], [ %5283, %5290 ]
  %5661 = phi float [ %4499, %4491 ], [ %5284, %5259 ], [ %5654, %5633 ], [ %5284, %5290 ]
  %5662 = phi float [ %4500, %4491 ], [ %5285, %5259 ], [ %5655, %5633 ], [ %5285, %5290 ]
  %5663 = phi float [ %4501, %4491 ], [ %5286, %5259 ], [ %5656, %5633 ], [ %5286, %5290 ]
  %5664 = phi float [ %4502, %4491 ], [ %5269, %5259 ], [ %5640, %5633 ], [ %5269, %5290 ]
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5668 = fmul fast float %5666, %72
  %5669 = fmul fast float %5667, %73
  %5670 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5672 = select i1 %4231, i32 2, i32 0
  %5673 = or i32 %5672, 1
  %5674 = uitofp i32 %5673 to float
  %5675 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %41, float %5670, float %5671, float %5674, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = extractvalue %dx.types.ResRet.f32 %5675, 3
  %5680 = add nuw nsw i32 %5672, 2
  %5681 = uitofp i32 %5680 to float
  %5682 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %41, float %5670, float %5671, float %5681, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5683 = extractvalue %dx.types.ResRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.ResRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.ResRet.f32 %5682, 2
  %5686 = extractvalue %dx.types.ResRet.f32 %5682, 3
  %5687 = call float @dx.op.binary.f32(i32 35, float %5677, float %5678)  ; FMax(a,b)
  %5688 = call float @dx.op.binary.f32(i32 35, float %5676, float %5687)  ; FMax(a,b)
  %5689 = call float @dx.op.binary.f32(i32 35, float %5688, float %5679)  ; FMax(a,b)
  %5690 = call float @dx.op.binary.f32(i32 36, float %5684, float %5685)  ; FMin(a,b)
  %5691 = call float @dx.op.binary.f32(i32 36, float %5683, float %5690)  ; FMin(a,b)
  %5692 = call float @dx.op.binary.f32(i32 36, float %5691, float %5686)  ; FMin(a,b)
  %5693 = fmul fast float %5689, 2.550000e+02
  %5694 = fadd fast float %5693, 0x3F70101020000000
  %5695 = fptoui float %5694 to i32
  %5696 = fmul fast float %5692, 2.550000e+02
  %5697 = fadd fast float %5696, 0x3F70101020000000
  %5698 = fptoui float %5697 to i32
  %5699 = icmp ult i32 %5695, %5698
  br i1 %5699, label %5700, label %5869

; <label>:5700                                    ; preds = %5657
  %5701 = fcmp fast ogt float %62, 9.843750e-01
  %5702 = fadd fast float %4495, -4.000000e+00
  %5703 = select i1 %5701, float -4.000000e+00, float %5702
  %5704 = call float @dx.op.binary.f32(i32 35, float %5703, float 0.000000e+00)  ; FMax(a,b)
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 0
  %5707 = fadd fast float %5706, %5704
  %5708 = extractvalue %dx.types.CBufRet.f32 %5705, 2
  %5709 = fmul fast float %5707, %5708
  %5710 = call float @dx.op.unary.f32(i32 23, float %5709)  ; Log(value)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5705, 3
  %5712 = fmul fast float %5711, %5710
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 2
  %5715 = fmul fast float %5712, %5714
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5717 = uitofp i32 %5695 to float
  %5718 = uitofp i32 %5698 to float
  %5719 = fadd fast float %5717, 5.000000e-01
  %5720 = fadd fast float %5718, 5.000000e-01
  %5721 = fmul fast float %5714, %5719
  %5722 = fmul fast float %5714, %5720
  %5723 = fadd fast float %5721, 0x3F0FFB4800000000
  %5724 = fadd fast float %5722, 0xBF0FFB4800000000
  %5725 = call float @dx.op.binary.f32(i32 35, float %5716, float %5723)  ; FMax(a,b)
  %5726 = call float @dx.op.binary.f32(i32 36, float %5725, float %5724)  ; FMin(a,b)
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 1
  %5729 = extractvalue %dx.types.CBufRet.f32 %5727, 2
  %5730 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5731 = select i1 %4231, float %5730, float 0.000000e+00
  %5732 = fmul fast float %5728, %5726
  %5733 = fadd fast float %5731, %5732
  %5734 = fadd fast float %5731, %5729
  %5735 = fsub fast float %5728, %5729
  %5736 = fadd fast float %5735, %5731
  %5737 = call float @dx.op.binary.f32(i32 35, float %5733, float %5734)  ; FMax(a,b)
  %5738 = call float @dx.op.binary.f32(i32 36, float %5737, float %5736)  ; FMin(a,b)
  %5739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %39, float %5670, float %5671, float %5738, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5740 = extractvalue %dx.types.ResRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.ResRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.ResRet.f32 %5739, 2
  %5743 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.i32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.i32 %5743, 1
  %5746 = uitofp i32 %5744 to float
  %5747 = uitofp i32 %5745 to float
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5751 = fmul fast float %5746, %5670
  %5752 = fmul fast float %5747, %5671
  %5753 = fadd fast float %5751, -5.000000e-01
  %5754 = fadd fast float %5752, -5.000000e-01
  %5755 = call float @dx.op.unary.f32(i32 22, float %5753)  ; Frc(value)
  %5756 = call float @dx.op.unary.f32(i32 22, float %5754)  ; Frc(value)
  %5757 = fmul fast float %5755, %5755
  %5758 = fmul fast float %5757, %5755
  %5759 = fsub fast float 3.000000e+00, %5755
  %5760 = fmul fast float %5757, %5759
  %5761 = fmul fast float %5755, 3.000000e+00
  %5762 = fmul fast float %5758, 3.000000e+00
  %5763 = fmul fast float %5757, 6.000000e+00
  %5764 = fsub fast float %5762, %5763
  %5765 = fadd fast float %5764, 4.000000e+00
  %5766 = fmul fast float %5765, 0x3FC5555560000000
  %5767 = fmul fast float %5758, -3.000000e+00
  %5768 = fadd fast float %5757, %5755
  %5769 = fmul fast float %5768, 3.000000e+00
  %5770 = fadd fast float %5767, 1.000000e+00
  %5771 = fadd fast float %5770, %5769
  %5772 = fmul fast float %5758, 0x3FC5555560000000
  %5773 = fmul fast float %5756, %5756
  %5774 = fmul fast float %5773, %5756
  %5775 = fsub fast float 3.000000e+00, %5756
  %5776 = fmul fast float %5773, %5775
  %5777 = fmul fast float %5756, 3.000000e+00
  %5778 = fmul fast float %5774, 3.000000e+00
  %5779 = fmul fast float %5773, 6.000000e+00
  %5780 = fsub fast float %5778, %5779
  %5781 = fadd fast float %5780, 4.000000e+00
  %5782 = fmul fast float %5781, 0x3FC5555560000000
  %5783 = fmul fast float %5774, -3.000000e+00
  %5784 = fadd fast float %5773, %5756
  %5785 = fmul fast float %5784, 3.000000e+00
  %5786 = fadd fast float %5783, 1.000000e+00
  %5787 = fadd fast float %5786, %5785
  %5788 = fmul fast float %5774, 0x3FC5555560000000
  %5789 = fadd fast float %5755, 1.000000e+00
  %5790 = fsub fast float 1.000000e+00, %5761
  %5791 = fadd fast float %5790, %5760
  %5792 = fadd fast float %5791, %5765
  %5793 = fmul fast float %5792, 0x3FC5555560000000
  %5794 = fdiv fast float %5766, %5793
  %5795 = fsub fast float %5789, %5794
  %5796 = fsub fast float 1.000000e+00, %5755
  %5797 = fadd fast float %5771, %5758
  %5798 = fmul fast float %5797, 0x3FC5555560000000
  %5799 = fdiv fast float %5772, %5798
  %5800 = fadd fast float %5796, %5799
  %5801 = fadd fast float %5756, 1.000000e+00
  %5802 = fsub fast float 1.000000e+00, %5777
  %5803 = fadd fast float %5802, %5776
  %5804 = fadd fast float %5803, %5781
  %5805 = fmul fast float %5804, 0x3FC5555560000000
  %5806 = fdiv fast float %5782, %5805
  %5807 = fsub fast float %5801, %5806
  %5808 = fsub fast float 1.000000e+00, %5756
  %5809 = fadd fast float %5787, %5774
  %5810 = fmul fast float %5809, 0x3FC5555560000000
  %5811 = fdiv fast float %5788, %5810
  %5812 = fadd fast float %5811, %5808
  %5813 = fmul fast float %5795, %5749
  %5814 = fsub fast float %5670, %5813
  %5815 = fmul fast float %5800, %5749
  %5816 = fadd fast float %5815, %5670
  %5817 = fmul fast float %5812, %5750
  %5818 = fadd fast float %5817, %5671
  %5819 = fmul fast float %5807, %5750
  %5820 = fsub fast float %5671, %5819
  %5821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %5814, float %5820, float %5738, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %5816, float %5820, float %5738, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %5814, float %5818, float %5738, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %5816, float %5818, float %5738, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5834 = extractvalue %dx.types.ResRet.f32 %5833, 0
  %5835 = extractvalue %dx.types.ResRet.f32 %5833, 1
  %5836 = extractvalue %dx.types.ResRet.f32 %5833, 2
  %5837 = fsub fast float %5830, %5822
  %5838 = fsub fast float %5831, %5823
  %5839 = fsub fast float %5832, %5824
  %5840 = fmul fast float %5837, %5810
  %5841 = fmul fast float %5838, %5810
  %5842 = fmul fast float %5839, %5810
  %5843 = fadd fast float %5840, %5822
  %5844 = fadd fast float %5841, %5823
  %5845 = fadd fast float %5842, %5824
  %5846 = fsub fast float %5834, %5826
  %5847 = fsub fast float %5835, %5827
  %5848 = fsub fast float %5836, %5828
  %5849 = fmul fast float %5846, %5810
  %5850 = fmul fast float %5847, %5810
  %5851 = fmul fast float %5848, %5810
  %5852 = fsub fast float %5826, %5843
  %5853 = fadd fast float %5852, %5849
  %5854 = fsub fast float %5827, %5844
  %5855 = fadd fast float %5854, %5850
  %5856 = fsub fast float %5828, %5845
  %5857 = fadd fast float %5856, %5851
  %5858 = fmul fast float %5853, %5798
  %5859 = fmul fast float %5855, %5798
  %5860 = fmul fast float %5857, %5798
  %5861 = fadd fast float %5858, %5843
  %5862 = fadd fast float %5859, %5844
  %5863 = fadd fast float %5860, %5845
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 1
  %5866 = fmul fast float %5861, %5865
  %5867 = fmul fast float %5862, %5865
  %5868 = fmul fast float %5863, %5865
  br label %5869

; <label>:5869                                    ; preds = %5700, %5657
  %5870 = phi float [ %5740, %5700 ], [ 1.000000e+00, %5657 ]
  %5871 = phi float [ %5741, %5700 ], [ 1.000000e+00, %5657 ]
  %5872 = phi float [ %5742, %5700 ], [ 1.000000e+00, %5657 ]
  %5873 = phi float [ %5866, %5700 ], [ 0.000000e+00, %5657 ]
  %5874 = phi float [ %5867, %5700 ], [ 0.000000e+00, %5657 ]
  %5875 = phi float [ %5868, %5700 ], [ 0.000000e+00, %5657 ]
  %5876 = fmul fast float %5873, %4205
  %5877 = fmul fast float %5874, %4207
  %5878 = fmul fast float %5875, %4209
  %5879 = fmul fast float %5870, %5664
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5870, float %5871, float %5872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.dot3.f32(i32 55, float %5876, float %5877, float %5878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = select i1 %209, float %5880, float %5870
  %5883 = select i1 %209, float %5880, float %5871
  %5884 = select i1 %209, float 1.000000e+00, float %5872
  %5885 = select i1 %209, float %5881, float %5876
  %5886 = select i1 %209, float 0.000000e+00, float %5877
  %5887 = select i1 %209, float 0.000000e+00, float %5878
  %5888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.i32 %5888, 3
  %5890 = and i32 %5889, 3
  %5891 = icmp ne i32 %5890, 0
  %5892 = and i32 %5889, 4
  %5893 = icmp ne i32 %5892, 0
  %5894 = and i1 %5891, %5893
  %5895 = and i1 %209, %5894
  br i1 %5895, label %5896, label %5902

; <label>:5896                                    ; preds = %5869
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 1
  %5899 = fadd fast float %5879, -1.000000e+00
  %5900 = fmul fast float %5898, %5899
  %5901 = fadd fast float %5900, 1.000000e+00
  br label %5902

; <label>:5902                                    ; preds = %5896, %5869
  %5903 = phi float [ %5901, %5896 ], [ %5879, %5869 ]
  %5904 = fadd fast float %5661, %5658
  %5905 = fmul fast float %5882, %5904
  %5906 = fadd fast float %5905, %5885
  %5907 = fadd fast float %5662, %5659
  %5908 = fmul fast float %5883, %5907
  %5909 = fadd fast float %5908, %5886
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  br i1 %209, label %5912, label %5927

; <label>:5912                                    ; preds = %5902
  %5913 = fadd fast float %5906, %5909
  %5914 = fmul fast float %5911, %5913
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 3
  %5917 = extractvalue %dx.types.CBufRet.f32 %4213, 1
  %5918 = fsub fast float %4218, %4212
  %5919 = fadd fast float %5918, %4219
  %5920 = fsub fast float %5919, %5917
  %5921 = extractvalue %dx.types.CBufRet.f32 %4213, 2
  %5922 = fmul fast float %5920, %5921
  %5923 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5924 = fsub fast float %5923, %5916
  %5925 = fmul fast float %5924, %5903
  %5926 = fadd fast float %5925, %5916
  br label %5953

; <label>:5927                                    ; preds = %5902
  %5928 = fadd fast float %5663, %5660
  %5929 = fmul fast float %5884, %5928
  %5930 = fadd fast float %5929, %5887
  %5931 = fmul fast float %5911, %5906
  %5932 = fmul fast float %5911, %5909
  %5933 = fmul fast float %5911, %5930
  %5934 = call float @dx.op.binary.f32(i32 35, float %5932, float %5933)  ; FMax(a,b)
  %5935 = call float @dx.op.binary.f32(i32 35, float %5931, float %5934)  ; FMax(a,b)
  %5936 = call float @dx.op.binary.f32(i32 35, float %4207, float %4209)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %4205, float %5936)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 35, float %5935, float %5937)  ; FMax(a,b)
  %5939 = fcmp fast ugt float %5938, 0x3F10000000000000
  br i1 %5939, label %5941, label %5940

; <label>:5940                                    ; preds = %5927
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5941

; <label>:5941                                    ; preds = %5940, %5927
  %5942 = add i32 %47, 116
  %5943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5942, i32 undef)  ; BufferLoad(srv,index,wot)
  %5944 = extractvalue %dx.types.ResRet.i32 %5943, 0
  %5945 = and i32 %5944, 32
  %5946 = icmp eq i32 %5945, 0
  br i1 %5946, label %5953, label %5947

; <label>:5947                                    ; preds = %5941
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = fmul fast float %5949, 0x3FE99999A0000000
  %5951 = fadd fast float %5949, %5931
  %5952 = fadd fast float %5950, %5933
  br label %5953

; <label>:5953                                    ; preds = %5947, %5941, %5912
  %5954 = phi float [ 1.000000e+00, %5912 ], [ %4207, %5947 ], [ %4207, %5941 ]
  %5955 = phi float [ 1.000000e+00, %5912 ], [ %4209, %5947 ], [ %4209, %5941 ]
  %5956 = phi float [ %5914, %5912 ], [ %5951, %5947 ], [ %5931, %5941 ]
  %5957 = phi float [ %5926, %5912 ], [ %5932, %5947 ], [ %5932, %5941 ]
  %5958 = phi float [ 1.000000e+00, %5912 ], [ %5952, %5947 ], [ %5933, %5941 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5959 = call float @dx.op.binary.f32(i32 36, float %5956, float 3.225500e+04)  ; FMin(a,b)
  %5960 = call float @dx.op.binary.f32(i32 36, float %5957, float 3.225500e+04)  ; FMin(a,b)
  %5961 = call float @dx.op.binary.f32(i32 36, float %5958, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5960)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5961)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5962 = call float @dx.op.binary.f32(i32 36, float %4205, float 3.225500e+04)  ; FMin(a,b)
  %5963 = call float @dx.op.binary.f32(i32 36, float %5954, float 3.225500e+04)  ; FMin(a,b)
  %5964 = call float @dx.op.binary.f32(i32 36, float %5955, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5962)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!59}
!dx.entryPoints = !{!60}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !35}
!35 = !{i32 0, i32 14}
!36 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!37 = !{i32 28, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!42 = !{i32 33, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!43 = !{i32 34, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!44 = !{i32 35, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!45 = !{i32 36, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !35}
!46 = !{i32 37, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!51 = !{!52, !53, !54, !55, !56, !57, !58}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!57 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!58 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!59 = !{[23 x i32] [i32 21, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119]}
!60 = !{void ()* @ps_main, !"ps_main", !61, !4, !79}
!61 = !{!62, !75, null}
!62 = !{!63, !66, !68, !70, !71, !72, !74}
!63 = !{i32 0, !"SV_Position", i8 9, i8 3, !64, i8 4, i32 1, i8 4, i32 0, i8 0, !65}
!64 = !{i32 0}
!65 = !{i32 3, i32 15}
!66 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !64, i8 2, i32 1, i8 2, i32 1, i8 0, !67}
!67 = !{i32 3, i32 3}
!68 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !64, i8 2, i32 1, i8 3, i32 2, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 3, !"NORMAL", i8 9, i8 0, !64, i8 2, i32 1, i8 3, i32 3, i8 0, !69}
!71 = !{i32 4, !"TANGENT", i8 9, i8 0, !64, i8 2, i32 1, i8 4, i32 4, i8 0, !65}
!72 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !64, i8 1, i32 1, i8 1, i32 5, i8 0, !73}
!73 = !{i32 3, i32 1}
!74 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !64, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76, !77}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !64, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!77 = !{i32 1, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 1, i8 0, !65}
!78 = !{i32 1}
!79 = !{i32 0, i64 16}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = !{!93, !93, i64 0}
!93 = !{!"int", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!97, !99, !101, !103}
!97 = distinct !{!97, !98, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!98 = distinct !{!98, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!99 = distinct !{!99, !100, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!100 = distinct !{!100, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!101 = distinct !{!101, !102, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!102 = distinct !{!102, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!103 = distinct !{!103, !104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!104 = distinct !{!104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !94, i64 0}
!115 = !{!116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!116 = distinct !{!116, !117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!117 = distinct !{!117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!118 = distinct !{!118, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!119 = distinct !{!119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!120 = distinct !{!120, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!121 = distinct !{!121, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!122 = distinct !{!122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!123 = distinct !{!123, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!124 = distinct !{!124, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!125 = distinct !{!125, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!129 = distinct !{!129, !130, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!130 = distinct !{!130, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"\01?sort@@YAXAIAM00@Z: %c"}
!133 = distinct !{!133, !"\01?sort@@YAXAIAM00@Z"}
!134 = !{!135, !136, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!135 = distinct !{!135, !133, !"\01?sort@@YAXAIAM00@Z: %a"}
!136 = distinct !{!136, !133, !"\01?sort@@YAXAIAM00@Z: %b"}
!137 = !{!136}
!138 = !{!135, !132, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!139 = !{!135}
!140 = !{!136, !132, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!149 = !{!145}
!150 = !{!146, !142, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}

