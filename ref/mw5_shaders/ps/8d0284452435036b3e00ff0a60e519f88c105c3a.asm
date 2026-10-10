;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float       
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
;
; shader hash: fc14fd0f5c8fabac35163aa19c6adf6e
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
;                                   texture    byte         r/o      T4     t16,space1     1
;                                   texture    byte         r/o      T5     t17,space1     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture     f32          2d      T7             t0     1
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
; Number of inputs: 21, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = alloca [4 x i32], align 4
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = alloca [12 x float], align 4
  %52 = alloca [12 x float], align 4
  %53 = alloca [3 x float], align 4
  %54 = alloca [3 x float], align 4
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = fmul fast float %58, %47
  %60 = fmul fast float %58, %48
  %61 = fmul fast float %43, %40
  %62 = fmul fast float %44, %39
  %63 = fsub fast float %61, %62
  %64 = fmul fast float %44, %38
  %65 = fmul fast float %42, %40
  %66 = fsub fast float %64, %65
  %67 = fmul fast float %42, %39
  %68 = fmul fast float %43, %38
  %69 = fsub fast float %67, %68
  %70 = fmul fast float %63, %41
  %71 = fmul fast float %66, %41
  %72 = fmul fast float %69, %41
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %76 = fmul fast float %74, 2.000000e+00
  %77 = fmul fast float %76, %59
  %78 = fmul fast float %75, 2.000000e+00
  %79 = fmul fast float %78, %60
  %80 = fsub fast float 1.000000e+00, %77
  %81 = fsub fast float 1.000000e+00, %79
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %80, %83
  %87 = fmul fast float %80, %84
  %88 = fmul fast float %80, %85
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fmul fast float %81, %90
  %94 = fmul fast float %81, %91
  %95 = fmul fast float %81, %92
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = fadd fast float %93, %97
  %101 = fadd fast float %100, %86
  %102 = fadd fast float %94, %98
  %103 = fadd fast float %102, %87
  %104 = fadd fast float %95, %99
  %105 = fadd fast float %104, %88
  %106 = fmul fast float %101, %50
  %107 = fmul fast float %103, %50
  %108 = fmul fast float %105, %50
  %109 = fmul fast float %59, 5.000000e-01
  %110 = fmul fast float %60, 5.000000e-01
  %111 = fptosi float %109 to i32
  %112 = fptosi float %110 to i32
  %113 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %111, i32 %112, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = lshr i32 %114, 18
  %116 = uitofp i32 %115 to float
  %117 = fmul fast float %116, 0x3F4C00EBA0000000
  %118 = call float @dx.op.unary.f32(i32 21, float %117)  ; Exp(value)
  %119 = fadd fast float %118, -1.000000e+00
  %120 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %121 = extractvalue %dx.types.Dimensions %120, 0
  %122 = sitofp i32 %121 to float
  %123 = extractvalue %dx.types.Dimensions %120, 1
  %124 = sitofp i32 %123 to float
  %125 = fcmp fast oge float %109, %122
  %126 = fcmp fast oge float %110, %124
  %127 = or i1 %125, %126
  %128 = select i1 %127, float 0x4197782600000000, float %119
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %132 = fmul fast float %130, %59
  %133 = fmul fast float %131, %60
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %135, 114688
  %137 = icmp ne i32 %136, 0
  %138 = select i1 %137, float %132, float 0.000000e+00
  %139 = select i1 %137, float %133, float 0.000000e+00
  %140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %138, float %139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = fmul fast float %141, 2.550000e+02
  %143 = fptoui float %142 to i32
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.i32 %145, 3
  %147 = and i32 %146, 3
  %148 = icmp ne i32 %147, 0
  %149 = and i32 %146, 4
  %150 = icmp ne i32 %149, 0
  %151 = and i1 %148, %150
  br i1 %151, label %152, label %163

; <label>:152                                     ; preds = %0
  %153 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %154 = fmul fast float %153, %60
  %155 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %156 = fmul fast float %155, %59
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %156, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fsub fast float 1.000000e+00, %158
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = fcmp fast olt float %159, %161
  br label %166

; <label>:163                                     ; preds = %0
  %164 = icmp eq i32 %149, 0
  %165 = and i1 %148, %164
  br label %166

; <label>:166                                     ; preds = %163, %152
  %167 = phi i1 [ %162, %152 ], [ %165, %163 ]
  %168 = add i32 %37, 60
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = shl i32 %170, 4
  %172 = and i32 %171, 32752
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = lshr i32 %170, 7
  %175 = and i32 %174, 32752
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = lshr i32 %170, 22
  %178 = shl nuw nsw i32 %177, 5
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = add i32 %37, 72
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F70101020000000
  %186 = lshr i32 %182, 8
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = lshr i32 %182, 16
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = add i32 %37, 36
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 65535
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %196, 16
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %37, 96
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 65535
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %203, 16
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = fmul fast float %205, 0x3F50624DE0000000
  %209 = fmul fast float %207, 0x3F50624DE0000000
  %210 = add i32 %37, 108
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %223, label %215

; <label>:215                                     ; preds = %166
  %216 = add i32 %37, 148
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %218, 0
  %220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %220, %dx.types.Handle %56, float %45, float %46, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 3
  br label %223

; <label>:223                                     ; preds = %215, %166
  %224 = phi float [ 1.000000e+00, %166 ], [ %222, %215 ]
  %225 = add i32 %37, 24
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = add i32 %37, 28
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = or i32 %230, %227
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %759, label %233

; <label>:233                                     ; preds = %223
  %234 = add i32 %37, 92
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = fmul fast float %238, 0x3F50624DE0000000
  %240 = add i32 %37, 40
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  %245 = lshr i32 %242, 24
  %246 = add i32 %37, 100
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %37, 32
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = lshr i32 %255, 22
  %257 = shl nuw nsw i32 %256, 5
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = shl i32 %255, 4
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %255, 7
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 3
  %267 = fmul fast float %266, 1.000000e+03
  %268 = fmul fast float %208, %267
  %269 = call float @dx.op.unary.f32(i32 22, float %268)  ; Frc(value)
  %270 = fadd fast float %269, %198
  %271 = fmul fast float %209, %267
  %272 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %273 = fadd fast float %272, %200
  %274 = fmul fast float %239, %267
  %275 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %276 = fmul fast float %275, 0x401921FB60000000
  %277 = fadd fast float %276, %258
  %278 = call float @dx.op.unary.f32(i32 13, float %277)  ; Sin(value)
  %279 = call float @dx.op.unary.f32(i32 12, float %277)  ; Cos(value)
  %280 = fsub fast float -0.000000e+00, %278
  %281 = fadd fast float %45, -5.000000e-01
  %282 = fadd fast float %46, -5.000000e-01
  %283 = fmul fast float %250, %281
  %284 = fmul fast float %252, %282
  %285 = fadd fast float %283, 5.000000e-01
  %286 = fadd fast float %284, 5.000000e-01
  %287 = fmul fast float %261, %285
  %288 = fmul fast float %264, %286
  %289 = fmul fast float %279, %287
  %290 = call float @dx.op.tertiary.f32(i32 46, float %280, float %288, float %289)  ; FMad(a,b,c)
  %291 = fmul fast float %278, %287
  %292 = call float @dx.op.tertiary.f32(i32 46, float %279, float %288, float %291)  ; FMad(a,b,c)
  %293 = fadd fast float %270, %290
  %294 = fadd fast float %273, %292
  %295 = icmp ugt i32 %244, 1
  %296 = icmp ugt i32 %242, 33554431
  %297 = or i1 %296, %295
  br i1 %297, label %298, label %323

; <label>:298                                     ; preds = %233
  %299 = add i32 %37, 84
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = lshr i32 %301, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %266, %303
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = mul nuw nsw i32 %244, %245
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %305, %307
  %309 = call float @dx.op.unary.f32(i32 27, float %308)  ; Round_ni(value)
  %310 = fptoui float %309 to i32
  %311 = urem i32 %310, %244
  %312 = udiv i32 %310, %245
  %313 = call float @dx.op.unary.f32(i32 22, float %293)  ; Frc(value)
  %314 = call float @dx.op.unary.f32(i32 22, float %294)  ; Frc(value)
  %315 = uitofp i32 %311 to float
  %316 = uitofp i32 %312 to float
  %317 = fadd fast float %313, %315
  %318 = fadd fast float %314, %316
  %319 = uitofp i32 %244 to float
  %320 = uitofp i32 %245 to float
  %321 = fdiv fast float %317, %319
  %322 = fdiv fast float %318, %320
  br label %323

; <label>:323                                     ; preds = %298, %233
  %324 = phi float [ %321, %298 ], [ %293, %233 ]
  %325 = phi float [ %322, %298 ], [ %294, %233 ]
  %326 = and i32 %227, 256
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %374, label %328

; <label>:328                                     ; preds = %323
  %329 = add i32 %37, 136
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = add i32 %331, 0
  %333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %333, %dx.types.Handle %56, float %324, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = add i32 %37, 52
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = shl i32 %338, 4
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %338, 7
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = fsub fast float 1.000000e+00, %224
  %346 = call float @dx.op.binary.f32(i32 35, float %345, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %347 = bitcast float %224 to i32
  %348 = sitofp i32 %347 to float
  %349 = fadd fast float %348, 0xC1CFBF8940000000
  %350 = fmul fast float %344, %349
  %351 = fadd fast float %350, 0x41CFBF8940000000
  %352 = fptosi float %351 to i32
  %353 = bitcast i32 %352 to float
  %354 = bitcast float %346 to i32
  %355 = sitofp i32 %354 to float
  %356 = fadd fast float %355, 0xC1CFBF8940000000
  %357 = fmul fast float %356, %344
  %358 = fadd fast float %357, 0x41CFBF8940000000
  %359 = fptosi float %358 to i32
  %360 = bitcast i32 %359 to float
  %361 = fmul fast float %353, %341
  %362 = fmul fast float %360, %341
  %363 = fsub fast float %346, %361
  %364 = fadd fast float %362, %346
  %365 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %366 = call float @dx.op.unary.f32(i32 7, float %364)  ; Saturate(value)
  %367 = fsub fast float %335, %365
  %368 = fsub fast float %366, %365
  %369 = bitcast float %368 to i32
  %370 = sub nsw i32 2129859010, %369
  %371 = bitcast i32 %370 to float
  %372 = fmul fast float %371, %367
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  br label %374

; <label>:374                                     ; preds = %328, %323
  %375 = phi float [ %373, %328 ], [ %224, %323 ]
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 128
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %396, label %380

; <label>:380                                     ; preds = %374
  %381 = add i32 %37, 132
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = add i32 %383, 0
  %385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %385, %dx.types.Handle %56, float %324, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 524288
  %391 = icmp ne i32 %390, 0
  %392 = fcmp fast ogt float %387, 0x3FE0101020000000
  %393 = select i1 %392, float 1.000000e+00, float 0.000000e+00
  %394 = select i1 %391, float %393, float %387
  %395 = fmul fast float %394, %375
  br label %396

; <label>:396                                     ; preds = %380, %374
  %397 = phi float [ %395, %380 ], [ %375, %374 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 16
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %600, label %402

; <label>:402                                     ; preds = %396
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %37, 120
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = add i32 %407, 0
  %409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %409, %dx.types.Handle %55, float %324, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = extractvalue %dx.types.ResRet.f32 %410, 3
  %415 = and i32 %404, 255
  %416 = uitofp i32 %415 to float
  %417 = lshr i32 %404, 8
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %414, %416
  %421 = fadd fast float %420, %419
  %422 = fmul fast float %421, 0x3F70101000000000
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 512
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %435, label %427

; <label>:427                                     ; preds = %402
  %428 = add i32 %37, 140
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %430, 0
  %432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %432, %dx.types.Handle %56, float %324, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  br label %435

; <label>:435                                     ; preds = %427, %402
  %436 = phi float [ %434, %427 ], [ 1.000000e+00, %402 ]
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 33554432
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %547, label %441

; <label>:441                                     ; preds = %435
  %442 = add i32 %37, 80
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 65535
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %444, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %37, 84
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 65535
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 24
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = and i32 %455, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %455, 8
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = lshr i32 %455, 16
  %467 = and i32 %466, 255
  %468 = uitofp i32 %467 to float
  %469 = fmul fast float %468, 0x3F70101020000000
  %470 = add i32 %37, 76
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = lshr i32 %472, 24
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %474, 0x3F70101020000000
  %476 = and i32 %472, 255
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %477, 0x3F70101020000000
  %479 = lshr i32 %472, 8
  %480 = and i32 %479, 255
  %481 = uitofp i32 %480 to float
  %482 = fmul fast float %481, 0x3F70101020000000
  %483 = lshr i32 %472, 16
  %484 = and i32 %483, 255
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = bitcast float %411 to i32
  %488 = ashr i32 %487, 1
  %489 = sub nsw i32 1597463174, %488
  %490 = bitcast i32 %489 to float
  %491 = fmul fast float %411, 5.000000e-01
  %492 = fmul fast float %490, %490
  %493 = fmul fast float %492, %491
  %494 = fsub fast float 1.500000e+00, %493
  %495 = fmul fast float %490, %411
  %496 = fmul fast float %495, %494
  %497 = bitcast float %412 to i32
  %498 = ashr i32 %497, 1
  %499 = sub nsw i32 1597463174, %498
  %500 = bitcast i32 %499 to float
  %501 = fmul fast float %412, 5.000000e-01
  %502 = fmul fast float %500, %500
  %503 = fmul fast float %502, %501
  %504 = fsub fast float 1.500000e+00, %503
  %505 = fmul fast float %500, %412
  %506 = fmul fast float %505, %504
  %507 = bitcast float %413 to i32
  %508 = ashr i32 %507, 1
  %509 = sub nsw i32 1597463174, %508
  %510 = bitcast i32 %509 to float
  %511 = fmul fast float %413, 5.000000e-01
  %512 = fmul fast float %510, %510
  %513 = fmul fast float %512, %511
  %514 = fsub fast float 1.500000e+00, %513
  %515 = fmul fast float %510, %413
  %516 = fmul fast float %515, %514
  %517 = fsub fast float %496, %478
  %518 = fsub fast float %506, %482
  %519 = fsub fast float %516, %486
  %520 = fmul fast float %517, %446
  %521 = fmul fast float %518, %448
  %522 = fmul fast float %519, %453
  %523 = fadd fast float %520, %461
  %524 = fadd fast float %521, %465
  %525 = fadd fast float %522, %469
  %526 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %527 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %528 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %529 = fmul fast float %526, %526
  %530 = fmul fast float %527, %527
  %531 = fmul fast float %528, %528
  %532 = fsub fast float %529, %411
  %533 = fsub fast float %530, %412
  %534 = fsub fast float %531, %413
  %535 = fmul fast float %532, %436
  %536 = fmul fast float %533, %436
  %537 = fmul fast float %534, %436
  %538 = fadd fast float %535, %411
  %539 = fadd fast float %536, %412
  %540 = fadd fast float %537, %413
  %541 = fadd fast float %458, %422
  %542 = fsub fast float %541, %475
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %544 = fsub fast float %543, %422
  %545 = fmul fast float %544, %436
  %546 = fadd fast float %545, %422
  br label %600

; <label>:547                                     ; preds = %435
  %548 = and i32 %438, 134217728
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %584, label %550

; <label>:550                                     ; preds = %547
  %551 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %552 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %553 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %554 = fadd fast float %551, -5.000000e-01
  %555 = fadd fast float %552, -5.000000e-01
  %556 = fadd fast float %553, -5.000000e-01
  %557 = fmul fast float %554, %436
  %558 = fmul fast float %555, %436
  %559 = fmul fast float %556, %436
  %560 = fadd fast float %557, 5.000000e-01
  %561 = fadd fast float %558, 5.000000e-01
  %562 = fadd fast float %559, 5.000000e-01
  %563 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %564 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %565 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %566 = fmul fast float %560, 2.000000e+00
  %567 = fsub fast float 1.000000e+00, %566
  %568 = fmul fast float %567, %563
  %569 = fadd fast float %568, %566
  %570 = fmul fast float %569, %563
  %571 = fmul fast float %561, 2.000000e+00
  %572 = fsub fast float 1.000000e+00, %571
  %573 = fmul fast float %572, %564
  %574 = fadd fast float %573, %571
  %575 = fmul fast float %574, %564
  %576 = fmul fast float %562, 2.000000e+00
  %577 = fsub fast float 1.000000e+00, %576
  %578 = fmul fast float %577, %565
  %579 = fadd fast float %578, %576
  %580 = fmul fast float %579, %565
  %581 = fmul fast float %570, %570
  %582 = fmul fast float %575, %575
  %583 = fmul fast float %580, %580
  br label %600

; <label>:584                                     ; preds = %547
  %585 = fmul fast float %185, %185
  %586 = fmul fast float %189, %189
  %587 = fmul fast float %193, %193
  %588 = fadd fast float %585, -1.000000e+00
  %589 = fadd fast float %586, -1.000000e+00
  %590 = fadd fast float %587, -1.000000e+00
  %591 = fmul fast float %436, %588
  %592 = fmul fast float %436, %589
  %593 = fmul fast float %436, %590
  %594 = fadd fast float %591, 1.000000e+00
  %595 = fadd fast float %592, 1.000000e+00
  %596 = fadd fast float %593, 1.000000e+00
  %597 = fmul fast float %594, %411
  %598 = fmul fast float %595, %412
  %599 = fmul fast float %596, %413
  br label %600

; <label>:600                                     ; preds = %584, %550, %441, %396
  %601 = phi float [ %546, %441 ], [ %422, %550 ], [ %422, %584 ], [ 0x3FA23C0BE0000000, %396 ]
  %602 = phi float [ %538, %441 ], [ %581, %550 ], [ %597, %584 ], [ 1.000000e+00, %396 ]
  %603 = phi float [ %539, %441 ], [ %582, %550 ], [ %598, %584 ], [ 1.000000e+00, %396 ]
  %604 = phi float [ %540, %441 ], [ %583, %550 ], [ %599, %584 ], [ 1.000000e+00, %396 ]
  %605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.i32 %605, 1
  %607 = and i32 %606, 1
  %608 = icmp ne i32 %607, 0
  %609 = add i32 %37, 116
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 32
  %613 = icmp ne i32 %612, 0
  %614 = and i1 %608, %613
  %615 = select i1 %614, float 1.000000e+00, float %602
  %616 = select i1 %614, float 0x3FD3333340000000, float %603
  %617 = select i1 %614, float 0x3FD3333340000000, float %604
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 32
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %694, label %622

; <label>:622                                     ; preds = %600
  %623 = add i32 %37, 44
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %37, 124
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = add i32 %628, 0
  %630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %55, float %324, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = extractvalue %dx.types.ResRet.f32 %631, 3
  %636 = and i32 %625, 255
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %625, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = lshr i32 %625, 16
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101000000000
  %645 = fmul fast float %632, %637
  %646 = fadd fast float %645, %640
  %647 = fmul fast float %646, 0x3F70101000000000
  %648 = fadd fast float %633, -5.000000e-01
  %649 = fadd fast float %635, -5.000000e-01
  %650 = fmul fast float %648, %644
  %651 = fmul fast float %649, %644
  %652 = fadd fast float %650, 5.000000e-01
  %653 = fadd fast float %651, 5.000000e-01
  %654 = fmul fast float %652, 2.000000e+00
  %655 = fadd fast float %654, -1.000000e+00
  %656 = fmul fast float %653, 2.000000e+00
  %657 = fadd fast float %656, -1.000000e+00
  %658 = fadd fast float %655, %657
  %659 = fmul fast float %658, 5.000000e-01
  %660 = fsub fast float %655, %657
  %661 = fmul fast float %660, 5.000000e-01
  %662 = call float @dx.op.unary.f32(i32 6, float %659)  ; FAbs(value)
  %663 = fsub fast float 1.000000e+00, %662
  %664 = call float @dx.op.unary.f32(i32 6, float %661)  ; FAbs(value)
  %665 = fsub fast float %663, %664
  %666 = call float @dx.op.dot3.f32(i32 55, float %659, float %661, float %665, float %659, float %661, float %665)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = call float @dx.op.unary.f32(i32 25, float %666)  ; Rsqrt(value)
  %668 = fmul fast float %659, %667
  %669 = fmul fast float %661, %667
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 67108864
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %690, label %674

; <label>:674                                     ; preds = %622
  %675 = add i32 %37, 88
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 65535
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 65535
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = lshr i32 %677, 16
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = fsub fast float %647, %685
  %687 = fmul fast float %686, %679
  %688 = fadd fast float %687, %683
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  br label %690

; <label>:690                                     ; preds = %674, %622
  %691 = phi float [ %689, %674 ], [ %647, %622 ]
  %692 = call float @dx.op.dot2.f32(i32 54, float %668, float %669, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %693 = call float @dx.op.dot2.f32(i32 54, float %668, float %669, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %694

; <label>:694                                     ; preds = %690, %600
  %695 = phi float [ %691, %690 ], [ 0x3FD6666660000000, %600 ]
  %696 = phi float [ %692, %690 ], [ 0.000000e+00, %600 ]
  %697 = phi float [ %693, %690 ], [ 0.000000e+00, %600 ]
  %698 = phi float [ %634, %690 ], [ 1.000000e+00, %600 ]
  %699 = add i32 %37, 64
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = lshr i32 %701, 22
  %703 = shl nuw nsw i32 %702, 5
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = and i32 %706, 64
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %742, label %709

; <label>:709                                     ; preds = %694
  %710 = add i32 %37, 128
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %712, 0
  %714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 131072
  %718 = icmp eq i32 %717, 0
  %719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %714, %dx.types.Handle %55, float %324, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = extractvalue %dx.types.ResRet.f32 %719, 1
  %722 = extractvalue %dx.types.ResRet.f32 %719, 2
  %723 = fmul fast float %720, %173
  %724 = fmul fast float %721, %176
  %725 = fmul fast float %722, %179
  br i1 %718, label %732, label %726

; <label>:726                                     ; preds = %709
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = fmul fast float %728, %723
  %730 = fmul fast float %728, %724
  %731 = fmul fast float %728, %725
  br label %732

; <label>:732                                     ; preds = %726, %709
  %733 = phi float [ %729, %726 ], [ %723, %709 ]
  %734 = phi float [ %730, %726 ], [ %724, %709 ]
  %735 = phi float [ %731, %726 ], [ %725, %709 ]
  %736 = fmul fast float %733, %704
  %737 = select i1 %167, float %736, float %733
  %738 = call float @dx.op.dot3.f32(i32 55, float %737, float %734, float %735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = select i1 %167, float 0.000000e+00, float %733
  %740 = select i1 %167, float %738, float %734
  %741 = select i1 %167, float 0.000000e+00, float %735
  br label %742

; <label>:742                                     ; preds = %732, %694
  %743 = phi float [ %739, %732 ], [ 0.000000e+00, %694 ]
  %744 = phi float [ %740, %732 ], [ 0.000000e+00, %694 ]
  %745 = phi float [ %741, %732 ], [ 0.000000e+00, %694 ]
  %746 = add i32 %37, 48
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = lshr i32 %748, 8
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = call float @dx.op.dot3.f32(i32 55, float %615, float %616, float %617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = fmul fast float %753, %754
  %756 = fadd fast float %755, %750
  %757 = fmul fast float %756, 0x3F70101020000000
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  br label %759

; <label>:759                                     ; preds = %742, %223
  %760 = phi float [ 0.000000e+00, %223 ], [ %696, %742 ]
  %761 = phi float [ 0.000000e+00, %223 ], [ %697, %742 ]
  %762 = phi float [ 0.000000e+00, %223 ], [ %615, %742 ]
  %763 = phi float [ 0.000000e+00, %223 ], [ %616, %742 ]
  %764 = phi float [ 0.000000e+00, %223 ], [ %617, %742 ]
  %765 = phi float [ 0.000000e+00, %223 ], [ %743, %742 ]
  %766 = phi float [ 0.000000e+00, %223 ], [ %744, %742 ]
  %767 = phi float [ 0.000000e+00, %223 ], [ %745, %742 ]
  %768 = phi float [ 0.000000e+00, %223 ], [ %601, %742 ]
  %769 = phi float [ 0.000000e+00, %223 ], [ %397, %742 ]
  %770 = phi float [ 0.000000e+00, %223 ], [ %695, %742 ]
  %771 = phi float [ 0.000000e+00, %223 ], [ %698, %742 ]
  %772 = phi float [ 0.000000e+00, %223 ], [ %758, %742 ]
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = fmul fast float %776, %765
  %778 = fmul fast float %776, %766
  %779 = fmul fast float %776, %767
  %780 = call float @dx.op.dot2.f32(i32 54, float %760, float %761, float %760, float %761)  ; Dot2(ax,ay,bx,by)
  %781 = fmul fast float %780, 0x3FE3333340000000
  %782 = fsub fast float 1.000000e+00, %781
  %783 = call float @dx.op.dot3.f32(i32 55, float %760, float %761, float %782, float %760, float %761, float %782)  ; Dot3(ax,ay,az,bx,by,bz)
  %784 = call float @dx.op.unary.f32(i32 25, float %783)  ; Rsqrt(value)
  %785 = fmul fast float %784, %760
  %786 = fmul fast float %784, %761
  %787 = fmul fast float %782, %784
  %788 = fmul fast float %787, %42
  %789 = fmul fast float %787, %43
  %790 = fmul fast float %787, %44
  %791 = fmul fast float %785, %38
  %792 = fmul fast float %785, %39
  %793 = fmul fast float %785, %40
  %794 = fadd fast float %788, %791
  %795 = fadd fast float %789, %792
  %796 = fadd fast float %790, %793
  %797 = fmul fast float %70, %786
  %798 = fmul fast float %71, %786
  %799 = fmul fast float %72, %786
  %800 = fadd fast float %794, %797
  %801 = fadd fast float %795, %798
  %802 = fadd fast float %796, %799
  %803 = call float @dx.op.dot3.f32(i32 55, float %800, float %801, float %802, float %800, float %801, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %805 = fmul fast float %800, %804
  %806 = fmul fast float %801, %804
  %807 = fmul fast float %802, %804
  %808 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %809 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %810 = call float @dx.op.unary.f32(i32 83, float %108)  ; DerivCoarseX(value)
  %811 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %812 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %813 = call float @dx.op.unary.f32(i32 84, float %108)  ; DerivCoarseY(value)
  %814 = fadd fast float %808, %106
  %815 = fadd fast float %809, %107
  %816 = fadd fast float %810, %108
  %817 = fadd fast float %811, %106
  %818 = fadd fast float %812, %107
  %819 = fadd fast float %813, %108
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %822 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %823 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %826 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %827 = fmul fast float %821, %59
  %828 = fmul fast float %827, %825
  %829 = fmul fast float %822, %60
  %830 = fmul fast float %829, %826
  %831 = fptoui float %828 to i32
  %832 = fptoui float %830 to i32
  %833 = fadd fast float %821, -1.000000e+00
  %834 = fadd fast float %822, -1.000000e+00
  %835 = fptoui float %833 to i32
  %836 = fptoui float %834 to i32
  %837 = call i32 @dx.op.binary.i32(i32 40, i32 %831, i32 %835)  ; UMin(a,b)
  %838 = call i32 @dx.op.binary.i32(i32 40, i32 %832, i32 %836)  ; UMin(a,b)
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 3
  %842 = fmul fast float %840, %50
  %843 = fsub fast float %842, %841
  %844 = fadd fast float %823, -1.000000e+00
  %845 = call float @dx.op.binary.f32(i32 36, float %843, float %844)  ; FMin(a,b)
  %846 = fptoui float %845 to i32
  %847 = fptoui float %821 to i32
  %848 = fptoui float %822 to i32
  %849 = mul i32 %846, %848
  %850 = add i32 %849, %838
  %851 = mul i32 %850, %847
  %852 = add i32 %851, %837
  %853 = shl i32 %852, 2
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 1023
  %857 = lshr i32 %855, 10
  %858 = icmp eq i32 %856, 0
  br i1 %858, label %1287, label %859

; <label>:859                                     ; preds = %759
  %860 = and i32 %855, 1023
  br label %861

; <label>:861                                     ; preds = %988, %859
  %862 = phi float [ %989, %988 ], [ 0.000000e+00, %859 ]
  %863 = phi float [ %990, %988 ], [ %769, %859 ]
  %864 = phi float [ %991, %988 ], [ %774, %859 ]
  %865 = phi float [ %992, %988 ], [ %772, %859 ]
  %866 = phi float [ %993, %988 ], [ 0.000000e+00, %859 ]
  %867 = phi float [ %994, %988 ], [ 0.000000e+00, %859 ]
  %868 = phi float [ %995, %988 ], [ %777, %859 ]
  %869 = phi float [ %996, %988 ], [ %778, %859 ]
  %870 = phi float [ %997, %988 ], [ %779, %859 ]
  %871 = phi float [ %998, %988 ], [ %805, %859 ]
  %872 = phi float [ %999, %988 ], [ %806, %859 ]
  %873 = phi float [ %1000, %988 ], [ %807, %859 ]
  %874 = phi float [ %1001, %988 ], [ %771, %859 ]
  %875 = phi float [ %1002, %988 ], [ %770, %859 ]
  %876 = phi float [ %1003, %988 ], [ 0.000000e+00, %859 ]
  %877 = phi float [ %1004, %988 ], [ %768, %859 ]
  %878 = phi float [ %1005, %988 ], [ %762, %859 ]
  %879 = phi float [ %1006, %988 ], [ %763, %859 ]
  %880 = phi float [ %1007, %988 ], [ %764, %859 ]
  %881 = phi i32 [ %938, %988 ], [ 0, %859 ]
  %882 = add nuw nsw i32 %881, %857
  %883 = shl i32 %882, 2
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = shl i32 %885, 8
  %887 = or i32 %886, 48
  %888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = extractvalue %dx.types.ResRet.f32 %888, 3
  %893 = or i32 %886, 64
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = extractvalue %dx.types.ResRet.i32 %894, 1
  %897 = or i32 %886, 80
  %898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 2
  %900 = extractvalue %dx.types.ResRet.f32 %898, 3
  %901 = or i32 %886, 96
  %902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  %906 = extractvalue %dx.types.ResRet.f32 %902, 3
  %907 = or i32 %886, 112
  %908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 2
  %910 = or i32 %886, 128
  %911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = extractvalue %dx.types.ResRet.f32 %911, 3
  %916 = or i32 %886, 144
  %917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = or i32 %886, 160
  %923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = extractvalue %dx.types.ResRet.f32 %923, 1
  %926 = extractvalue %dx.types.ResRet.f32 %923, 2
  %927 = extractvalue %dx.types.ResRet.f32 %923, 3
  %928 = or i32 %886, 192
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = or i32 %886, 208
  %932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = or i32 %886, 248
  %935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = add nuw nsw i32 %881, 1
  %939 = bitcast float %892 to i32
  %940 = and i32 %939, 2560
  %941 = icmp eq i32 %940, 2048
  %942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 1
  %945 = extractvalue %dx.types.ResRet.f32 %942, 2
  %946 = extractvalue %dx.types.ResRet.f32 %942, 3
  %947 = call float @dx.op.dot4.f32(i32 56, float %943, float %944, float %945, float %946, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %948 = or i32 %886, 16
  %949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = extractvalue %dx.types.ResRet.f32 %949, 3
  %954 = call float @dx.op.dot4.f32(i32 56, float %950, float %951, float %952, float %953, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %955 = or i32 %886, 32
  %956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = extractvalue %dx.types.ResRet.f32 %956, 3
  %961 = call float @dx.op.dot4.f32(i32 56, float %957, float %958, float %959, float %960, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %962 = call float @dx.op.unary.f32(i32 27, float %947)  ; Round_ni(value)
  %963 = call float @dx.op.unary.f32(i32 6, float %962)  ; FAbs(value)
  %964 = call float @dx.op.unary.f32(i32 27, float %954)  ; Round_ni(value)
  %965 = call float @dx.op.unary.f32(i32 6, float %964)  ; FAbs(value)
  %966 = call float @dx.op.unary.f32(i32 6, float %961)  ; FAbs(value)
  %967 = call float @dx.op.unary.f32(i32 27, float %966)  ; Round_ni(value)
  %968 = fadd fast float %965, %963
  %969 = fadd fast float %968, %967
  %970 = fcmp fast oeq float %969, 0.000000e+00
  %971 = call float @dx.op.dot4.f32(i32 56, float %943, float %944, float %945, float %946, float %814, float %815, float %816, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %972 = call float @dx.op.dot4.f32(i32 56, float %950, float %951, float %952, float %953, float %814, float %815, float %816, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %973 = call float @dx.op.dot4.f32(i32 56, float %943, float %944, float %945, float %946, float %817, float %818, float %819, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %974 = call float @dx.op.dot4.f32(i32 56, float %950, float %951, float %952, float %953, float %817, float %818, float %819, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %975 = fsub fast float %971, %947
  %976 = fsub fast float %973, %947
  %977 = fsub fast float %972, %954
  %978 = fsub fast float %974, %954
  %979 = call float @dx.op.dot3.f32(i32 55, float %889, float %890, float %891, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 2
  %982 = fadd fast float %981, %979
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %985 = fcmp fast ogt float %983, %984
  %986 = and i1 %970, %985
  %987 = and i1 %941, %986
  br i1 %987, label %1009, label %988

; <label>:988                                     ; preds = %1273, %1090, %1009, %861
  %989 = phi float [ %862, %1009 ], [ %1093, %1090 ], [ %1093, %1273 ], [ %862, %861 ]
  %990 = phi float [ %863, %1009 ], [ %863, %1090 ], [ %1248, %1273 ], [ %863, %861 ]
  %991 = phi float [ %864, %1009 ], [ %864, %1090 ], [ %1247, %1273 ], [ %864, %861 ]
  %992 = phi float [ %865, %1009 ], [ %865, %1090 ], [ %1245, %1273 ], [ %865, %861 ]
  %993 = phi float [ %866, %1009 ], [ %866, %1090 ], [ %1217, %1273 ], [ %866, %861 ]
  %994 = phi float [ %867, %1009 ], [ %867, %1090 ], [ %1215, %1273 ], [ %867, %861 ]
  %995 = phi float [ %868, %1009 ], [ %868, %1090 ], [ %1283, %1273 ], [ %868, %861 ]
  %996 = phi float [ %869, %1009 ], [ %869, %1090 ], [ %1284, %1273 ], [ %869, %861 ]
  %997 = phi float [ %870, %1009 ], [ %870, %1090 ], [ %1285, %1273 ], [ %870, %861 ]
  %998 = phi float [ %871, %1009 ], [ %871, %1090 ], [ %1196, %1273 ], [ %871, %861 ]
  %999 = phi float [ %872, %1009 ], [ %872, %1090 ], [ %1197, %1273 ], [ %872, %861 ]
  %1000 = phi float [ %873, %1009 ], [ %873, %1090 ], [ %1198, %1273 ], [ %873, %861 ]
  %1001 = phi float [ %874, %1009 ], [ %874, %1090 ], [ %1225, %1273 ], [ %874, %861 ]
  %1002 = phi float [ %875, %1009 ], [ %875, %1090 ], [ %1222, %1273 ], [ %875, %861 ]
  %1003 = phi float [ %876, %1009 ], [ %876, %1090 ], [ %1219, %1273 ], [ %876, %861 ]
  %1004 = phi float [ %877, %1009 ], [ %877, %1090 ], [ %1213, %1273 ], [ %877, %861 ]
  %1005 = phi float [ %878, %1009 ], [ %878, %1090 ], [ %1208, %1273 ], [ %878, %861 ]
  %1006 = phi float [ %879, %1009 ], [ %879, %1090 ], [ %1209, %1273 ], [ %879, %861 ]
  %1007 = phi float [ %880, %1009 ], [ %880, %1090 ], [ %1210, %1273 ], [ %880, %861 ]
  %1008 = icmp eq i32 %938, %860
  br i1 %1008, label %1286, label %861

; <label>:1009                                    ; preds = %861
  %1010 = extractvalue %dx.types.ResRet.f32 %908, 3
  %1011 = extractvalue %dx.types.ResRet.f32 %908, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %908, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %898, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %898, 0
  %1015 = extractvalue %dx.types.ResRet.i32 %894, 3
  %1016 = extractvalue %dx.types.ResRet.i32 %894, 2
  %1017 = add i32 %1015, 0
  %1018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1017, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1018, %dx.types.Handle %1019, float %947, float %954, float undef, float undef, i32 0, i32 0, i32 undef, float %975, float %977, float undef, float %976, float %978, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = fmul fast float %1021, %1014
  %1023 = fadd fast float %1022, %1013
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1025 = fmul fast float %947, %903
  %1026 = call float @dx.op.tertiary.f32(i32 46, float %904, float %954, float %1025)  ; FMad(a,b,c)
  %1027 = fadd fast float %1026, %1012
  %1028 = fmul fast float %947, %905
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %906, float %954, float %1028)  ; FMad(a,b,c)
  %1030 = fadd fast float %1029, %1011
  %1031 = fmul fast float %975, %903
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %904, float %977, float %1031)  ; FMad(a,b,c)
  %1033 = fmul fast float %975, %905
  %1034 = call float @dx.op.tertiary.f32(i32 46, float %906, float %977, float %1033)  ; FMad(a,b,c)
  %1035 = fmul fast float %976, %903
  %1036 = call float @dx.op.tertiary.f32(i32 46, float %904, float %978, float %1035)  ; FMad(a,b,c)
  %1037 = fmul fast float %976, %905
  %1038 = call float @dx.op.tertiary.f32(i32 46, float %906, float %978, float %1037)  ; FMad(a,b,c)
  %1039 = add i32 %1016, 0
  %1040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1039, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1041 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1040, %dx.types.Handle %1019, float %1027, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float %1032, float %1034, float undef, float %1036, float %1038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = and i32 %939, 1024
  %1044 = icmp ne i32 %1043, 0
  %1045 = fcmp fast ogt float %1042, 0x3FE0101020000000
  %1046 = uitofp i1 %1045 to float
  %1047 = select i1 %1044, float %1046, float %1042
  %1048 = and i32 %939, 8192
  %1049 = icmp ne i32 %1048, 0
  %1050 = select i1 %1049, float %1010, float 1.000000e+00
  %1051 = fmul fast float %947, 2.000000e+00
  %1052 = fadd fast float %1051, -1.000000e+00
  %1053 = call float @dx.op.unary.f32(i32 6, float %1052)  ; FAbs(value)
  %1054 = fmul fast float %1053, %936
  %1055 = fsub fast float %1054, %936
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1057 = fmul fast float %954, 2.000000e+00
  %1058 = fadd fast float %1057, -1.000000e+00
  %1059 = call float @dx.op.unary.f32(i32 6, float %1058)  ; FAbs(value)
  %1060 = fmul fast float %1059, %937
  %1061 = fsub fast float %1060, %937
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1063 = fmul fast float %966, %899
  %1064 = fsub fast float %1063, %899
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = fmul fast float %1024, %1050
  %1067 = fmul fast float %1066, %1021
  %1068 = fmul fast float %1067, %1056
  %1069 = fmul fast float %1068, %1047
  %1070 = fmul fast float %1069, %1062
  %1071 = fmul fast float %1070, %1065
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1075 = fsub fast float %983, %1074
  %1076 = fmul fast float %1075, %1073
  %1077 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1078 = fmul fast float %1071, %900
  %1079 = fadd fast float %1071, %900
  %1080 = fmul fast float %1079, %909
  %1081 = fsub fast float %1080, %909
  %1082 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1083 = and i32 %939, 128
  %1084 = icmp ne i32 %1083, 0
  %1085 = select i1 %1084, float %1082, float %1078
  %1086 = fmul fast float %1085, %1077
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1089 = fcmp fast ugt float %1086, %1088
  br i1 %1089, label %1090, label %988

; <label>:1090                                    ; preds = %1009
  %1091 = select i1 %1049, float %1086, float 0.000000e+00
  %1092 = fadd fast float %1091, %862
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  br i1 %1049, label %988, label %1094

; <label>:1094                                    ; preds = %1090
  %1095 = and i32 %939, 4
  %1096 = and i32 %939, 8
  %1097 = add i32 %895, 0
  %1098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1100 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1098, %dx.types.Handle %1099, float %1027, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float %1032, float %1034, float undef, float %1036, float %1038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = extractvalue %dx.types.ResRet.f32 %1100, 3
  %1105 = bitcast float %921 to i32
  %1106 = and i32 %1105, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = lshr i32 %1105, 8
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1104, %1107
  %1112 = fadd fast float %1111, %1110
  %1113 = fmul fast float %1112, 0x3F70101000000000
  %1114 = add i32 %896, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1114, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1115, %dx.types.Handle %1099, float %1027, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float %1032, float %1034, float undef, float %1036, float %1038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = extractvalue %dx.types.ResRet.f32 %1116, 3
  %1121 = bitcast float %915 to i32
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = lshr i32 %1121, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = lshr i32 %1121, 16
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F70101000000000
  %1131 = fmul fast float %1117, %1123
  %1132 = fadd fast float %1131, %1126
  %1133 = fmul fast float %1132, 0x3F70101000000000
  %1134 = fadd fast float %1118, -5.000000e-01
  %1135 = fadd fast float %1120, -5.000000e-01
  %1136 = fmul fast float %1134, %1130
  %1137 = fmul fast float %1135, %1130
  %1138 = fadd fast float %1136, 5.000000e-01
  %1139 = fadd fast float %1137, 5.000000e-01
  %1140 = fmul fast float %1101, %924
  %1141 = fmul fast float %1102, %925
  %1142 = fmul fast float %1103, %926
  %1143 = fmul fast float %1138, 2.000000e+00
  %1144 = fadd fast float %1143, -1.000000e+00
  %1145 = fmul fast float %1139, 2.000000e+00
  %1146 = fadd fast float %1145, -1.000000e+00
  %1147 = fadd fast float %1144, %1146
  %1148 = fmul fast float %1147, 5.000000e-01
  %1149 = fsub fast float %1144, %1146
  %1150 = fmul fast float %1149, 5.000000e-01
  %1151 = call float @dx.op.unary.f32(i32 6, float %1148)  ; FAbs(value)
  %1152 = fsub fast float 1.000000e+00, %1151
  %1153 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1154 = fsub fast float %1152, %1153
  %1155 = call float @dx.op.dot3.f32(i32 55, float %1148, float %1150, float %1154, float %1148, float %1150, float %1154)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = call float @dx.op.unary.f32(i32 25, float %1155)  ; Rsqrt(value)
  %1157 = fmul fast float %1148, %1156
  %1158 = fmul fast float %1150, %1156
  %1159 = fmul fast float %1156, %1154
  %1160 = fmul fast float %1159, %889
  %1161 = fmul fast float %1159, %890
  %1162 = fmul fast float %1159, %891
  %1163 = fmul fast float %1157, %912
  %1164 = fmul fast float %1157, %913
  %1165 = fmul fast float %1157, %914
  %1166 = fadd fast float %1163, %1160
  %1167 = fadd fast float %1164, %1161
  %1168 = fadd fast float %1165, %1162
  %1169 = fmul fast float %1158, %918
  %1170 = fmul fast float %1158, %919
  %1171 = fmul fast float %1158, %920
  %1172 = fadd fast float %1166, %1169
  %1173 = fadd fast float %1167, %1170
  %1174 = fadd fast float %1168, %1171
  %1175 = call float @dx.op.dot3.f32(i32 55, float %1172, float %1173, float %1174, float %1172, float %1173, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1176 = call float @dx.op.unary.f32(i32 25, float %1175)  ; Rsqrt(value)
  %1177 = fmul fast float %1172, %1176
  %1178 = fmul fast float %1173, %1176
  %1179 = fmul fast float %1174, %1176
  %1180 = icmp ne i32 %1096, 0
  %1181 = select i1 %1180, float 1.000000e+00, float 0.000000e+00
  %1182 = fmul fast float %1086, %1181
  %1183 = and i32 %939, 1
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1185, label %1189

; <label>:1185                                    ; preds = %1094
  %1186 = fsub fast float %1177, %871
  %1187 = fsub fast float %1178, %872
  %1188 = fsub fast float %1179, %873
  br label %1189

; <label>:1189                                    ; preds = %1185, %1094
  %1190 = phi float [ %1186, %1185 ], [ %1177, %1094 ]
  %1191 = phi float [ %1187, %1185 ], [ %1178, %1094 ]
  %1192 = phi float [ %1188, %1185 ], [ %1179, %1094 ]
  %1193 = fmul float %1192, %1182
  %1194 = fmul float %1191, %1182
  %1195 = fmul float %1190, %1182
  %1196 = fadd fast float %1195, %871
  %1197 = fadd fast float %1194, %872
  %1198 = fadd fast float %1193, %873
  %1199 = icmp ne i32 %1095, 0
  %1200 = select i1 %1199, float 1.000000e+00, float 0.000000e+00
  %1201 = fmul fast float %1086, %1200
  %1202 = fsub fast float %1140, %878
  %1203 = fsub fast float %1141, %879
  %1204 = fsub fast float %1142, %880
  %1205 = fmul fast float %1202, %1201
  %1206 = fmul fast float %1203, %1201
  %1207 = fmul fast float %1204, %1201
  %1208 = fadd fast float %1205, %878
  %1209 = fadd fast float %1206, %879
  %1210 = fadd fast float %1207, %880
  %1211 = fsub fast float %1113, %877
  %1212 = fmul fast float %1211, %1201
  %1213 = fadd fast float %1212, %877
  %1214 = fmul fast float %1201, %867
  %1215 = fsub fast float %867, %1214
  %1216 = fmul fast float %1201, %866
  %1217 = fsub fast float %866, %1216
  %1218 = fadd fast float %1086, %876
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fsub fast float %1133, %875
  %1221 = fmul fast float %1220, %1182
  %1222 = fadd fast float %1221, %875
  %1223 = fsub fast float %1119, %874
  %1224 = fmul fast float %1223, %1182
  %1225 = fadd fast float %1224, %874
  %1226 = call float @dx.op.dot3.f32(i32 55, float %1140, float %1141, float %1142, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = fmul fast float %1229, %1226
  %1231 = fadd fast float %1230, %1228
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = bitcast float %927 to i32
  %1234 = and i32 %1233, 65535
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = lshr i32 %1233, 16
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = fcmp fast oge float %1235, 0.000000e+00
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = select i1 %1238, float %1235, float %1240
  %1242 = fadd fast float %1241, %1237
  %1243 = fsub fast float %1232, %865
  %1244 = fmul fast float %1243, %1086
  %1245 = fadd fast float %1244, %865
  %1246 = fmul fast float %1242, %1086
  %1247 = call float @dx.op.binary.f32(i32 35, float %864, float %1246)  ; FMax(a,b)
  %1248 = call float @dx.op.binary.f32(i32 35, float %863, float %1086)  ; FMax(a,b)
  %1249 = and i32 %939, 16
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1273, label %1251

; <label>:1251                                    ; preds = %1189
  %1252 = bitcast float %933 to i32
  %1253 = add i32 %930, 0
  %1254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1253, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1255 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1254, %dx.types.Handle %1099, float %1027, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float %1032, float %1034, float undef, float %1036, float %1038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = and i32 %1252, 65535
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = fmul fast float %1256, %924
  %1262 = fmul fast float %1257, %925
  %1263 = fmul fast float %1258, %926
  %1264 = and i32 %939, 16384
  %1265 = icmp ne i32 %1264, 0
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = select i1 %1265, float %1267, float 1.000000e+00
  %1269 = fmul fast float %1268, %1260
  %1270 = fmul fast float %1261, %1269
  %1271 = fmul fast float %1262, %1269
  %1272 = fmul fast float %1263, %1269
  br label %1273

; <label>:1273                                    ; preds = %1251, %1189
  %1274 = phi float [ %1270, %1251 ], [ 0.000000e+00, %1189 ]
  %1275 = phi float [ %1271, %1251 ], [ 0.000000e+00, %1189 ]
  %1276 = phi float [ %1272, %1251 ], [ 0.000000e+00, %1189 ]
  %1277 = fsub fast float %1274, %868
  %1278 = fsub fast float %1275, %869
  %1279 = fsub fast float %1276, %870
  %1280 = fmul fast float %1277, %1086
  %1281 = fmul fast float %1278, %1086
  %1282 = fmul fast float %1279, %1086
  %1283 = fadd fast float %1280, %868
  %1284 = fadd fast float %1281, %869
  %1285 = fadd fast float %1282, %870
  br label %988

; <label>:1286                                    ; preds = %988
  br label %1287

; <label>:1287                                    ; preds = %1286, %759
  %1288 = phi float [ 0.000000e+00, %759 ], [ %989, %1286 ]
  %1289 = phi float [ %769, %759 ], [ %990, %1286 ]
  %1290 = phi float [ %774, %759 ], [ %991, %1286 ]
  %1291 = phi float [ %772, %759 ], [ %992, %1286 ]
  %1292 = phi float [ 0.000000e+00, %759 ], [ %993, %1286 ]
  %1293 = phi float [ 0.000000e+00, %759 ], [ %994, %1286 ]
  %1294 = phi float [ %777, %759 ], [ %995, %1286 ]
  %1295 = phi float [ %778, %759 ], [ %996, %1286 ]
  %1296 = phi float [ %779, %759 ], [ %997, %1286 ]
  %1297 = phi float [ %805, %759 ], [ %998, %1286 ]
  %1298 = phi float [ %806, %759 ], [ %999, %1286 ]
  %1299 = phi float [ %807, %759 ], [ %1000, %1286 ]
  %1300 = phi float [ %771, %759 ], [ %1001, %1286 ]
  %1301 = phi float [ %770, %759 ], [ %1002, %1286 ]
  %1302 = phi float [ 0.000000e+00, %759 ], [ %1003, %1286 ]
  %1303 = phi float [ %768, %759 ], [ %1004, %1286 ]
  %1304 = phi float [ %762, %759 ], [ %1005, %1286 ]
  %1305 = phi float [ %763, %759 ], [ %1006, %1286 ]
  %1306 = phi float [ %764, %759 ], [ %1007, %1286 ]
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1297, float %1298, float %1299, float %1297, float %1298, float %1299)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call float @dx.op.unary.f32(i32 25, float %1307)  ; Rsqrt(value)
  %1309 = fmul fast float %1308, %1297
  %1310 = fmul fast float %1308, %1298
  %1311 = fmul fast float %1308, %1299
  %1312 = fadd fast float %1302, %769
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = call float @dx.op.dot3.f32(i32 55, float %1309, float %1310, float %1311, float %1309, float %1310, float %1311)  ; Dot3(ax,ay,az,bx,by,bz)
  %1315 = call float @dx.op.unary.f32(i32 25, float %1314)  ; Rsqrt(value)
  %1316 = fmul fast float %1315, %1309
  %1317 = fmul fast float %1315, %1310
  %1318 = fmul fast float %1315, %1311
  %1319 = fadd fast float %1303, 0xBFB99999A0000000
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1321 = fmul fast float %1320, 0x3FF1C71C80000000
  %1322 = call float @dx.op.binary.f32(i32 36, float %1303, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1323 = fsub fast float 1.000000e+00, %1321
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = fmul fast float %1324, %1304
  %1326 = fmul fast float %1324, %1305
  %1327 = fmul fast float %1324, %1306
  %1328 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1329 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1330 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1331 = fmul fast float %1321, %1304
  %1332 = fmul fast float %1321, %1305
  %1333 = fmul fast float %1321, %1306
  %1334 = fadd fast float %1331, %1322
  %1335 = fadd fast float %1332, %1322
  %1336 = fadd fast float %1333, %1322
  %1337 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1339 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1340 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.i32 %1341, 3
  %1343 = and i32 %1342, 8
  %1344 = icmp ne i32 %1343, 0
  %1345 = call float @dx.op.binary.f32(i32 35, float %1328, float %1304)  ; FMax(a,b)
  %1346 = call float @dx.op.binary.f32(i32 35, float %1329, float %1304)  ; FMax(a,b)
  %1347 = call float @dx.op.binary.f32(i32 35, float %1330, float %1304)  ; FMax(a,b)
  %1348 = call float @dx.op.dot3.f32(i32 55, float %1328, float %1329, float %1330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1349 = select i1 %167, float %1304, float %1328
  %1350 = select i1 %167, float %1348, float %1329
  %1351 = select i1 %167, float 1.000000e+00, float %1330
  %1352 = select i1 %1344, float %1345, float %1349
  %1353 = select i1 %1344, float %1346, float %1350
  %1354 = select i1 %1344, float %1347, float %1351
  %1355 = and i32 %143, 3
  %1356 = select i1 %137, i32 %1355, i32 0
  %1357 = icmp eq i32 %1356, 1
  br i1 %1357, label %1358, label %1434

; <label>:1358                                    ; preds = %1287
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.CBufRet.f32 %1359, 1
  %1362 = fadd fast float %1360, %106
  %1363 = fadd fast float %1361, %107
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = fsub fast float %1362, %1365
  %1368 = fsub fast float %1363, %1366
  %1369 = fmul fast float %1367, %1367
  %1370 = fmul fast float %1368, %1368
  %1371 = fadd fast float %1369, %1370
  %1372 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1374 = fcmp fast olt float %1372, %1373
  br i1 %1374, label %1375, label %1428

; <label>:1375                                    ; preds = %1358
  %1376 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1377 = fadd fast float %1376, %108
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1386 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1387 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1388 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1389 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1390 = fadd fast float %1387, %1362
  %1391 = fadd fast float %1388, %1363
  %1392 = fadd fast float %1377, %1389
  %1393 = fmul fast float %1390, %1379
  %1394 = call float @dx.op.tertiary.f32(i32 46, float %1391, float %1381, float %1393)  ; FMad(a,b,c)
  %1395 = call float @dx.op.tertiary.f32(i32 46, float %1392, float %1383, float %1394)  ; FMad(a,b,c)
  %1396 = fmul fast float %1390, %1384
  %1397 = call float @dx.op.tertiary.f32(i32 46, float %1391, float %1385, float %1396)  ; FMad(a,b,c)
  %1398 = call float @dx.op.tertiary.f32(i32 46, float %1392, float %1386, float %1397)  ; FMad(a,b,c)
  %1399 = fsub fast float %1395, %1387
  %1400 = fsub fast float %1398, %1388
  %1401 = fsub fast float %1399, %1365
  %1402 = fadd fast float %1401, %1373
  %1403 = fsub fast float %1400, %1366
  %1404 = fadd fast float %1403, %1373
  %1405 = extractvalue %dx.types.CBufRet.f32 %1364, 3
  %1406 = fmul fast float %1402, %1405
  %1407 = fmul fast float %1404, %1405
  %1408 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1409 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1410 = fsub fast float 1.000000e+00, %1408
  %1411 = fsub fast float 1.000000e+00, %1409
  %1412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = fcmp fast ugt float %1413, 0.000000e+00
  br i1 %1414, label %1415, label %1428

; <label>:1415                                    ; preds = %1375
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1418 = fmul fast float %1417, %1413
  %1419 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1420 = fadd fast float %1419, %1418
  %1421 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1422 = fadd fast float %1420, %1389
  %1423 = fmul fast float %1395, %1383
  %1424 = call float @dx.op.tertiary.f32(i32 46, float %1398, float %1386, float %1423)  ; FMad(a,b,c)
  %1425 = call float @dx.op.tertiary.f32(i32 46, float %1422, float %1421, float %1424)  ; FMad(a,b,c)
  %1426 = fsub fast float %1425, %1389
  %1427 = fsub fast float %1426, %1376
  br label %1428

; <label>:1428                                    ; preds = %1415, %1375, %1358
  %1429 = phi i1 [ true, %1415 ], [ false, %1375 ], [ false, %1358 ]
  %1430 = phi float [ %1427, %1415 ], [ -1.310720e+05, %1375 ], [ -1.310720e+05, %1358 ]
  %1431 = fsub fast float %1430, %108
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = select i1 %1429, float %1432, float 1.000000e+00
  br label %1434

; <label>:1434                                    ; preds = %1428, %1287
  %1435 = phi float [ %1433, %1428 ], [ 0.000000e+00, %1287 ]
  %1436 = icmp eq i32 %1356, 3
  %1437 = select i1 %1436, float 1.000000e+00, float %1435
  %1438 = call float @dx.op.binary.f32(i32 35, float %1288, float %1437)  ; FMax(a,b)
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1440 = fcmp fast une float %1439, 0.000000e+00
  %1441 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.unary.f32(i32 25, float %1441)  ; Rsqrt(value)
  br i1 %1440, label %1450, label %1443

; <label>:1443                                    ; preds = %1434
  %1444 = fmul fast float %1442, %106
  %1445 = fmul fast float %1442, %107
  %1446 = fmul fast float %1442, %108
  %1447 = fsub fast float -0.000000e+00, %1444
  %1448 = fsub fast float -0.000000e+00, %1445
  %1449 = fsub fast float -0.000000e+00, %1446
  br label %1618

; <label>:1450                                    ; preds = %1434
  %1451 = fmul fast float %106, %1442
  %1452 = fsub fast float -0.000000e+00, %1451
  %1453 = fmul fast float %107, %1442
  %1454 = fsub fast float -0.000000e+00, %1453
  %1455 = fmul fast float %108, %1442
  %1456 = fsub fast float -0.000000e+00, %1455
  %1457 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1454, float %1456, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %1458 = fmul fast float %1439, 2.500000e+00
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1460 = fmul fast float %1439, 0x4013FFFFE0000000
  %1461 = fadd fast float %1460, 0xBFFFFFFFE0000000
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1463 = fmul fast float %1439, 0x4004000020000000
  %1464 = fadd fast float %1463, 0xBFF8000040000000
  %1465 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1466 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1467 = fmul fast float %1319, 1.000000e+01
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1469 = fmul fast float %1468, 2.000000e+00
  %1470 = fsub fast float 3.000000e+00, %1469
  %1471 = fmul fast float %1468, %1468
  %1472 = fmul fast float %1471, %1470
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = fsub fast float 0x3FE3333340000000, %1340
  %1475 = fmul fast float %1474, 0x400AAAAAA0000000
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fmul fast float %1473, %1476
  %1478 = fmul fast float %1352, 0x3FEA2B8620000000
  %1479 = fmul fast float %1353, 0x3FEA2B8620000000
  %1480 = fmul fast float %1354, 0x3FEA2B8620000000
  %1481 = fadd fast float %1478, 0x3FC81DFBA0000000
  %1482 = fmul fast float %1481, %1352
  %1483 = fadd fast float %1482, 0x3F910E6020000000
  %1484 = fadd fast float %1479, 0x3FC81DFBA0000000
  %1485 = fmul fast float %1484, %1353
  %1486 = fadd fast float %1485, 0x3F910E6020000000
  %1487 = fadd fast float %1480, 0x3FC81DFBA0000000
  %1488 = fmul fast float %1487, %1354
  %1489 = fadd fast float %1488, 0x3F910E6020000000
  %1490 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1491 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1492 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1493 = fsub fast float %1490, %1352
  %1494 = fsub fast float %1491, %1353
  %1495 = fsub fast float %1492, %1354
  %1496 = fmul fast float %1493, %1466
  %1497 = fmul fast float %1496, %1477
  %1498 = fmul fast float %1494, %1466
  %1499 = fmul fast float %1498, %1477
  %1500 = fmul fast float %1495, %1466
  %1501 = fmul fast float %1500, %1477
  %1502 = fadd fast float %1497, %1352
  %1503 = fadd fast float %1499, %1353
  %1504 = fadd fast float %1501, %1354
  %1505 = fmul fast float %1300, %1300
  %1506 = fmul fast float %1505, %1505
  %1507 = fadd fast float %1462, 1.000000e+00
  %1508 = fsub fast float %1507, %1477
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fsub fast float 1.000000e+00, %1506
  %1513 = call float @dx.op.binary.f32(i32 36, float %1509, float %1512)  ; FMin(a,b)
  %1514 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1515 = call float @dx.op.binary.f32(i32 35, float %1513, float %1514)  ; FMax(a,b)
  %1516 = fadd fast float %1511, 0xBFE4CCCCC0000000
  %1517 = fmul fast float %1516, 0x4006DB6DA0000000
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = fmul fast float %1518, 2.000000e+00
  %1520 = fsub fast float 3.000000e+00, %1519
  %1521 = bitcast float %1337 to i32
  %1522 = ashr i32 %1521, 1
  %1523 = add nsw i32 %1522, 532487669
  %1524 = bitcast i32 %1523 to float
  %1525 = fsub fast float 1.000000e+00, %1524
  %1526 = bitcast float %1525 to i32
  %1527 = sub nsw i32 2129859010, %1526
  %1528 = bitcast i32 %1527 to float
  %1529 = fmul fast float %1528, 2.000000e+00
  %1530 = bitcast float %1338 to i32
  %1531 = ashr i32 %1530, 1
  %1532 = add nsw i32 %1531, 532487669
  %1533 = bitcast i32 %1532 to float
  %1534 = fsub fast float 1.000000e+00, %1533
  %1535 = bitcast float %1534 to i32
  %1536 = sub nsw i32 2129859010, %1535
  %1537 = bitcast i32 %1536 to float
  %1538 = fmul fast float %1537, 2.000000e+00
  %1539 = bitcast float %1339 to i32
  %1540 = ashr i32 %1539, 1
  %1541 = add nsw i32 %1540, 532487669
  %1542 = bitcast i32 %1541 to float
  %1543 = fsub fast float 1.000000e+00, %1542
  %1544 = bitcast float %1543 to i32
  %1545 = sub nsw i32 2129859010, %1544
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1546, 2.000000e+00
  %1548 = fsub fast float 0x4002A9FBE0000000, %1529
  %1549 = fadd fast float %1529, 0x3FD54FDF00000000
  %1550 = bitcast float %1549 to i32
  %1551 = sub nsw i32 2129859010, %1550
  %1552 = bitcast i32 %1551 to float
  %1553 = fmul fast float %1552, %1548
  %1554 = fmul fast float %1553, %1553
  %1555 = fsub fast float 0x4002A9FBE0000000, %1538
  %1556 = fadd fast float %1538, 0x3FD54FDF00000000
  %1557 = bitcast float %1556 to i32
  %1558 = sub nsw i32 2129859010, %1557
  %1559 = bitcast i32 %1558 to float
  %1560 = fmul fast float %1559, %1555
  %1561 = fmul fast float %1560, %1560
  %1562 = fsub fast float 0x4002A9FBE0000000, %1547
  %1563 = fadd fast float %1547, 0x3FD54FDF00000000
  %1564 = bitcast float %1563 to i32
  %1565 = sub nsw i32 2129859010, %1564
  %1566 = bitcast i32 %1565 to float
  %1567 = fmul fast float %1566, %1562
  %1568 = fmul fast float %1567, %1567
  %1569 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1554)  ; FMax(a,b)
  %1570 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1561)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1568)  ; FMax(a,b)
  %1572 = fsub fast float 1.000000e+00, %1457
  %1573 = fadd fast float %1572, %1473
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1575 = fsub fast float 1.000000e+00, %1437
  %1576 = fmul fast float %1515, %1575
  %1577 = fmul fast float %1518, %1518
  %1578 = fmul fast float %1577, %1576
  %1579 = fmul fast float %1578, %1520
  %1580 = fmul fast float %1575, 0xBFE99999A0000000
  %1581 = fmul fast float %1580, %1466
  %1582 = fmul fast float %1581, %1477
  %1583 = fadd fast float %1582, 1.000000e+00
  %1584 = fadd fast float %1340, -1.000000e+00
  %1585 = fmul fast float %1583, %1584
  %1586 = fadd fast float %1585, 1.000000e+00
  %1587 = fsub fast float %1569, %1337
  %1588 = fsub fast float %1570, %1338
  %1589 = fsub fast float %1571, %1339
  %1590 = fmul fast float %1579, %1587
  %1591 = fmul fast float %1579, %1588
  %1592 = fmul fast float %1579, %1589
  %1593 = fadd fast float %1590, %1337
  %1594 = fadd fast float %1591, %1338
  %1595 = fadd fast float %1592, %1339
  %1596 = fsub fast float %42, %1316
  %1597 = fsub fast float %43, %1317
  %1598 = fsub fast float %44, %1318
  %1599 = fmul fast float %1579, %1596
  %1600 = fmul fast float %1579, %1597
  %1601 = fmul fast float %1579, %1598
  %1602 = fadd fast float %1599, %1316
  %1603 = fadd fast float %1600, %1317
  %1604 = fadd fast float %1601, %1318
  %1605 = fmul fast float %1579, %1574
  %1606 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1607 = fsub fast float 1.000000e+00, %1606
  %1608 = fmul fast float %1605, %1607
  %1609 = fadd fast float %1608, %1606
  %1610 = fsub fast float 1.000000e+00, %1300
  %1611 = fmul fast float %1579, %1610
  %1612 = fadd fast float %1611, %1300
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1602, float %1603, float %1604, float %1602, float %1603, float %1604)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = call float @dx.op.unary.f32(i32 25, float %1613)  ; Rsqrt(value)
  %1615 = fmul fast float %1602, %1614
  %1616 = fmul fast float %1603, %1614
  %1617 = fmul fast float %1604, %1614
  br label %1618

; <label>:1618                                    ; preds = %1450, %1443
  %1619 = phi float [ %1449, %1443 ], [ %1456, %1450 ]
  %1620 = phi float [ %1448, %1443 ], [ %1454, %1450 ]
  %1621 = phi float [ %1447, %1443 ], [ %1452, %1450 ]
  %1622 = phi float [ %1446, %1443 ], [ %1455, %1450 ]
  %1623 = phi float [ %1445, %1443 ], [ %1453, %1450 ]
  %1624 = phi float [ %1444, %1443 ], [ %1451, %1450 ]
  %1625 = phi float [ %1352, %1443 ], [ %1502, %1450 ]
  %1626 = phi float [ %1353, %1443 ], [ %1503, %1450 ]
  %1627 = phi float [ %1354, %1443 ], [ %1504, %1450 ]
  %1628 = phi float [ %1316, %1443 ], [ %1615, %1450 ]
  %1629 = phi float [ %1317, %1443 ], [ %1616, %1450 ]
  %1630 = phi float [ %1318, %1443 ], [ %1617, %1450 ]
  %1631 = phi float [ %1337, %1443 ], [ %1593, %1450 ]
  %1632 = phi float [ %1338, %1443 ], [ %1594, %1450 ]
  %1633 = phi float [ %1339, %1443 ], [ %1595, %1450 ]
  %1634 = phi float [ %1340, %1443 ], [ %1609, %1450 ]
  %1635 = phi float [ %1300, %1443 ], [ %1612, %1450 ]
  %1636 = select i1 %167, float 0.000000e+00, float %1633
  %1637 = call float @dx.op.dot3.f32(i32 55, float %1628, float %1629, float %1630, float %1621, float %1620, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = fsub fast float 1.000000e+00, %1635
  %1640 = bitcast float %1639 to i32
  %1641 = sub nsw i32 2129859010, %1640
  %1642 = bitcast i32 %1641 to float
  %1643 = fmul fast float %1313, %1294
  %1644 = fmul fast float %1313, %1295
  %1645 = fmul fast float %1313, %1296
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 0
  %1648 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1651 = fcmp fast oeq float %1650, 0.000000e+00
  br i1 %1651, label %2659, label %1652

; <label>:1652                                    ; preds = %1618
  %1653 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1649, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1649, 2
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.CBufRet.f32 %1656, 2
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1658, float %1659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = select i1 %167, float %1661, float %1657
  %1665 = select i1 %167, float %1663, float %1658
  %1666 = select i1 %167, float %1662, float %1659
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1669 = fmul fast float %1668, %42
  %1670 = fmul fast float %1668, %43
  %1671 = fmul fast float %1668, %44
  %1672 = fadd fast float %1669, %106
  %1673 = fadd fast float %1670, %107
  %1674 = fadd fast float %1671, %108
  %1675 = fcmp fast olt float %1650, 0.000000e+00
  br i1 %1675, label %2297, label %1676

; <label>:1676                                    ; preds = %1652
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.CBufRet.f32 %1677, 2
  %1681 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1685 = extractvalue %dx.types.CBufRet.f32 %1682, 2
  %1686 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.CBufRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.CBufRet.f32 %1687, 2
  %1691 = extractvalue %dx.types.CBufRet.f32 %1687, 3
  %1692 = fmul fast float %1678, %1672
  %1693 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1679, float %1692)  ; FMad(a,b,c)
  %1694 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1680, float %1693)  ; FMad(a,b,c)
  %1695 = fadd fast float %1694, %1681
  %1696 = fmul fast float %1683, %1672
  %1697 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1684, float %1696)  ; FMad(a,b,c)
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1685, float %1697)  ; FMad(a,b,c)
  %1699 = fadd fast float %1698, %1686
  %1700 = fmul fast float %1688, %1672
  %1701 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1689, float %1700)  ; FMad(a,b,c)
  %1702 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1690, float %1701)  ; FMad(a,b,c)
  %1703 = fadd fast float %1702, %1691
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.CBufRet.f32 %1704, 1
  %1707 = extractvalue %dx.types.CBufRet.f32 %1704, 3
  %1708 = fmul fast float %1707, %1695
  %1709 = fmul fast float %1707, %1699
  %1710 = fadd fast float %1708, %1705
  %1711 = fadd fast float %1709, %1706
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1716 = fmul fast float %1715, %1695
  %1717 = fmul fast float %1715, %1699
  %1718 = fadd fast float %1716, %1713
  %1719 = fadd fast float %1717, %1714
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 1
  %1722 = fsub fast float %1721, %1703
  %1723 = extractvalue %dx.types.CBufRet.f32 %1720, 2
  %1724 = fmul fast float %1722, %1723
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1712, 2
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1730 = fadd fast float %1729, %1727
  %1731 = fcmp fast ogt float %1730, 0.000000e+00
  br i1 %1731, label %1732, label %1756

; <label>:1732                                    ; preds = %1676
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.CBufRet.f32 %1733, 1
  %1736 = fsub fast float %1718, %1734
  %1737 = fsub fast float %1719, %1735
  %1738 = fcmp fast olt float %1736, 0.000000e+00
  %1739 = fcmp fast olt float %1737, 0.000000e+00
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1740, 2
  %1744 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1745 = select i1 %1738, float %1741, float %1743
  %1746 = select i1 %1739, float %1742, float %1744
  %1747 = fmul fast float %1745, %1736
  %1748 = fmul fast float %1746, %1737
  %1749 = call float @dx.op.unary.f32(i32 6, float %1747)  ; FAbs(value)
  %1750 = call float @dx.op.unary.f32(i32 6, float %1748)  ; FAbs(value)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1752 = call float @dx.op.binary.f32(i32 35, float %1749, float %1750)  ; FMax(a,b)
  %1753 = fsub fast float %1751, %1752
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = fmul fast float %1754, %1726
  br label %1756

; <label>:1756                                    ; preds = %1732, %1676
  %1757 = phi float [ %1755, %1732 ], [ 0.000000e+00, %1676 ]
  %1758 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %1759 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1760 = fadd fast float %1759, %1758
  %1761 = fcmp fast ogt float %1760, 0.000000e+00
  %1762 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  br i1 %1761, label %1763, label %1786

; <label>:1763                                    ; preds = %1756
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1767 = fsub fast float %1710, %1765
  %1768 = fsub fast float %1711, %1766
  %1769 = fcmp fast olt float %1767, 0.000000e+00
  %1770 = fcmp fast olt float %1768, 0.000000e+00
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1775 = extractvalue %dx.types.CBufRet.f32 %1771, 3
  %1776 = select i1 %1769, float %1772, float %1774
  %1777 = select i1 %1770, float %1773, float %1775
  %1778 = fmul fast float %1776, %1767
  %1779 = fmul fast float %1777, %1768
  %1780 = call float @dx.op.unary.f32(i32 6, float %1778)  ; FAbs(value)
  %1781 = call float @dx.op.unary.f32(i32 6, float %1779)  ; FAbs(value)
  %1782 = call float @dx.op.binary.f32(i32 35, float %1780, float %1781)  ; FMax(a,b)
  %1783 = fsub fast float %1762, %1782
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = fmul fast float %1784, %1726
  br label %1786

; <label>:1786                                    ; preds = %1763, %1756
  %1787 = phi float [ %1785, %1763 ], [ 0.000000e+00, %1756 ]
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = fsub fast float %1695, %1792
  %1795 = fsub fast float %1699, %1793
  %1796 = fcmp fast olt float %1794, 0.000000e+00
  %1797 = fcmp fast olt float %1795, 0.000000e+00
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1803 = select i1 %1796, float %1799, float %1801
  %1804 = select i1 %1797, float %1800, float %1802
  %1805 = fmul fast float %1803, %1794
  %1806 = fmul fast float %1804, %1795
  %1807 = call float @dx.op.unary.f32(i32 6, float %1805)  ; FAbs(value)
  %1808 = call float @dx.op.unary.f32(i32 6, float %1806)  ; FAbs(value)
  %1809 = call float @dx.op.binary.f32(i32 35, float %1807, float %1808)  ; FMax(a,b)
  %1810 = fsub fast float %1762, %1809
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1812 = call float @dx.op.binary.f32(i32 36, float %1811, float %1790)  ; FMin(a,b)
  %1813 = fmul fast float %1812, %1726
  %1814 = fsub fast float %1787, %1813
  %1815 = fsub fast float %1757, %1787
  %1816 = fsub fast float %1815, %1813
  %1817 = call float @dx.op.binary.f32(i32 35, float %1787, float %1757)  ; FMax(a,b)
  %1818 = call float @dx.op.binary.f32(i32 35, float %1813, float %1817)  ; FMax(a,b)
  %1819 = fcmp fast olt float %1818, 1.000000e+00
  br i1 %1819, label %1820, label %2218, !dx.controlflow.hints !68

; <label>:1820                                    ; preds = %1786
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = fcmp fast une float %1822, 0.000000e+00
  br i1 %1823, label %1824, label %2218, !dx.controlflow.hints !69

; <label>:1824                                    ; preds = %1820
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1825, 1
  %1828 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1829 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1834 = extractvalue %dx.types.CBufRet.f32 %1830, 3
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.CBufRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.CBufRet.f32 %1835, 2
  %1839 = extractvalue %dx.types.CBufRet.f32 %1835, 3
  %1840 = fmul fast float %1826, %1672
  %1841 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1827, float %1840)  ; FMad(a,b,c)
  %1842 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1828, float %1841)  ; FMad(a,b,c)
  %1843 = fadd fast float %1842, %1829
  %1844 = fmul fast float %1831, %1672
  %1845 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1832, float %1844)  ; FMad(a,b,c)
  %1846 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1833, float %1845)  ; FMad(a,b,c)
  %1847 = fadd fast float %1846, %1834
  %1848 = fmul fast float %1836, %1672
  %1849 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1837, float %1848)  ; FMad(a,b,c)
  %1850 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1838, float %1849)  ; FMad(a,b,c)
  %1851 = fadd fast float %1850, %1839
  %1852 = fcmp fast oge float %1843, 1.000000e+00
  %1853 = fcmp fast oge float %1847, 1.000000e+00
  %1854 = or i1 %1852, %1853
  %1855 = fcmp fast olt float %1843, 0.000000e+00
  %1856 = fcmp fast olt float %1847, 0.000000e+00
  %1857 = or i1 %1855, %1856
  %1858 = or i1 %1854, %1857
  br i1 %1858, label %2218, label %1859, !dx.controlflow.hints !70

; <label>:1859                                    ; preds = %1824
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1863 = extractvalue %dx.types.CBufRet.f32 %1860, 2
  %1864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.i32 %1864, 2
  %1866 = uitofp i32 %1865 to float
  %1867 = extractvalue %dx.types.CBufRet.i32 %1864, 3
  %1868 = uitofp i32 %1867 to float
  %1869 = extractvalue %dx.types.CBufRet.f32 %1860, 3
  %1870 = fmul fast float %1869, 2.000000e+00
  %1871 = fsub fast float %1843, %1861
  %1872 = fsub fast float %1847, %1862
  %1873 = fmul fast float %1870, %1871
  %1874 = fmul fast float %1870, %1872
  %1875 = fdiv fast float 1.000000e+00, %1655
  %1876 = fmul fast float %1874, %1875
  %1877 = call float @dx.op.unary.f32(i32 6, float %1876)  ; FAbs(value)
  %1878 = fmul fast float %1863, %1674
  %1879 = fmul fast float %1878, %1870
  %1880 = call float @dx.op.unary.f32(i32 6, float %1879)  ; FAbs(value)
  %1881 = call float @dx.op.unary.f32(i32 6, float %1873)  ; FAbs(value)
  %1882 = call float @dx.op.binary.f32(i32 35, float %1880, float %1877)  ; FMax(a,b)
  %1883 = call float @dx.op.binary.f32(i32 35, float %1881, float %1882)  ; FMax(a,b)
  %1884 = fmul fast float %1883, 2.000000e+00
  %1885 = call float @dx.op.unary.f32(i32 23, float %1884)  ; Log(value)
  %1886 = call float @dx.op.binary.f32(i32 35, float %1885, float %1866)  ; FMax(a,b)
  %1887 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1888 = fadd fast float %1887, 0xBFEA666660000000
  %1889 = fmul fast float %1888, 8.000000e+00
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = call float @dx.op.unary.f32(i32 27, float %1886)  ; Round_ni(value)
  %1892 = fadd fast float %1891, %1890
  %1893 = call float @dx.op.binary.f32(i32 36, float %1892, float %1868)  ; FMin(a,b)
  %1894 = call float @dx.op.unary.f32(i32 27, float %1893)  ; Round_ni(value)
  %1895 = fsub fast float -0.000000e+00, %1894
  %1896 = call float @dx.op.unary.f32(i32 21, float %1895)  ; Exp(value)
  %1897 = fmul fast float %1896, %1870
  %1898 = fmul fast float %1897, %1843
  %1899 = fmul fast float %1897, %1847
  %1900 = fmul fast float %1898, 2.500000e-01
  %1901 = fmul fast float %1899, 2.500000e-01
  %1902 = fadd fast float %1900, 5.000000e-01
  %1903 = fadd fast float %1901, 5.000000e-01
  %1904 = fsub fast float %1868, %1866
  %1905 = fptoui float %1904 to i32
  %1906 = add i32 %1905, 320
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %1906)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = fcmp fast une float %1893, %1868
  %1911 = fsub fast float %1843, %1908
  %1912 = fsub fast float %1847, %1909
  %1913 = call float @dx.op.unary.f32(i32 6, float %1911)  ; FAbs(value)
  %1914 = call float @dx.op.unary.f32(i32 6, float %1912)  ; FAbs(value)
  %1915 = fmul fast float %1913, %1897
  %1916 = fmul fast float %1914, %1897
  %1917 = fcmp fast olt float %1915, 1.000000e+00
  %1918 = fcmp fast olt float %1916, 1.000000e+00
  %1919 = and i1 %1917, %1918
  %1920 = or i1 %1910, %1919
  br i1 %1920, label %1921, label %2218, !dx.controlflow.hints !71

; <label>:1921                                    ; preds = %1859
  %1922 = fmul fast float %1899, 5.000000e-01
  %1923 = fmul fast float %1898, 5.000000e-01
  %1924 = fadd fast float %1922, 5.000000e-01
  %1925 = fadd fast float %1923, 5.000000e-01
  %1926 = sitofp i32 %1865 to float
  %1927 = fsub fast float %1893, %1926
  %1928 = call float @dx.op.unary.f32(i32 27, float %1927)  ; Round_ni(value)
  %1929 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1930 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1931 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %1930, float %1931, float %1928, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = extractvalue %dx.types.ResRet.f32 %1932, 3
  %1937 = fcmp fast ogt float %1929, 0.000000e+00
  br i1 %1937, label %1938, label %1959, !dx.controlflow.hints !72

; <label>:1938                                    ; preds = %1921
  %1939 = fadd fast float %1928, 1.000000e+00
  %1940 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1941 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %1940, float %1941, float %1939, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.ResRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.ResRet.f32 %1942, 2
  %1946 = extractvalue %dx.types.ResRet.f32 %1942, 3
  %1947 = fsub fast float %1943, %1933
  %1948 = fsub fast float %1944, %1934
  %1949 = fsub fast float %1945, %1935
  %1950 = fsub fast float %1946, %1936
  %1951 = fmul fast float %1947, %1929
  %1952 = fmul fast float %1948, %1929
  %1953 = fmul fast float %1949, %1929
  %1954 = fmul fast float %1950, %1929
  %1955 = fadd fast float %1951, %1933
  %1956 = fadd fast float %1952, %1934
  %1957 = fadd fast float %1953, %1935
  %1958 = fadd fast float %1954, %1936
  br label %1959

; <label>:1959                                    ; preds = %1938, %1921
  %1960 = phi float [ %1955, %1938 ], [ %1933, %1921 ]
  %1961 = phi float [ %1956, %1938 ], [ %1934, %1921 ]
  %1962 = phi float [ %1957, %1938 ], [ %1935, %1921 ]
  %1963 = phi float [ %1958, %1938 ], [ %1936, %1921 ]
  %1964 = fadd fast float %1960, -5.000000e-01
  %1965 = fadd fast float %1962, -5.000000e-01
  %1966 = fmul fast float %1964, 0xBFD5555560000000
  %1967 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1965, float %1966)  ; FMad(a,b,c)
  %1968 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1961, float 0.000000e+00)  ; FMad(a,b,c)
  %1969 = fadd fast float %1968, %1963
  %1970 = fmul fast float %1964, -7.500000e-01
  %1971 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1965, float %1970)  ; FMad(a,b,c)
  %1972 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1961, float 0.000000e+00)  ; FMad(a,b,c)
  %1973 = fadd fast float %1972, %1963
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 0
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.CBufRet.f32 %1976, 2
  %1980 = extractvalue %dx.types.CBufRet.f32 %1976, 3
  %1981 = fsub fast float %1977, %1967
  %1982 = fsub fast float %1978, %1969
  %1983 = fsub fast float %1979, %1971
  %1984 = fsub fast float %1980, %1973
  %1985 = fmul fast float %1981, %1975
  %1986 = fmul fast float %1982, %1975
  %1987 = fmul fast float %1983, %1975
  %1988 = fmul fast float %1984, %1975
  %1989 = fadd fast float %1985, %1967
  %1990 = fadd fast float %1986, %1969
  %1991 = fadd fast float %1987, %1971
  %1992 = fadd fast float %1988, %1973
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = and i32 %1994, 536870911
  %1996 = uitofp i32 %1995 to float
  %1997 = fmul fast float %1996, %1843
  %1998 = fmul fast float %1996, %1847
  %1999 = fptoui float %1997 to i32
  %2000 = fptoui float %1998 to i32
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 31
  %2004 = lshr i32 %1999, %2003
  %2005 = lshr i32 %2000, %2003
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 31
  %2009 = shl i32 1, %2008
  %2010 = call i32 @dx.op.binary.i32(i32 40, i32 %2009, i32 4)  ; UMin(a,b)
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.i32 %2011, 1
  %2014 = icmp eq i32 %2010, 0
  br i1 %2014, label %2056, label %2015

; <label>:2015                                    ; preds = %1959
  br label %2016

; <label>:2016                                    ; preds = %2044, %2015
  %2017 = phi i32 [ %2047, %2044 ], [ 0, %2015 ]
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = lshr i32 %2019, 16
  %2021 = and i32 %2020, 31
  %2022 = shl i32 %2005, %2021
  %2023 = add i32 %2022, %2004
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 31
  %2027 = shl i32 %2023, %2026
  %2028 = add i32 %2027, %2017
  %2029 = shl i32 %2028, 2
  %2030 = add i32 %2029, 32
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = icmp slt i32 %2032, 0
  %2034 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2017
  %2035 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2017
  %2036 = bitcast float* %2034 to i32*
  %2037 = bitcast float* %2035 to i32*
  br i1 %2033, label %2038, label %2044

; <label>:2038                                    ; preds = %2016
  %2039 = and i32 %2032, 1073741823
  %2040 = add nuw nsw i32 %2039, 20
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = extractvalue %dx.types.ResRet.i32 %2041, 1
  br label %2044

; <label>:2044                                    ; preds = %2038, %2016
  %2045 = phi i32 [ %2042, %2038 ], [ %2012, %2016 ]
  %2046 = phi i32 [ %2043, %2038 ], [ %2013, %2016 ]
  store i32 %2045, i32* %2036, align 4
  store i32 %2046, i32* %2037, align 4
  %2047 = add nuw i32 %2017, 1
  %2048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.i32 %2048, 2
  %2050 = icmp eq i32 %2049, 0
  %2051 = icmp ugt i32 %2032, -1073741825
  %2052 = and i1 %2051, %2050
  %2053 = icmp ult i32 %2047, %2010
  %2054 = and i1 %2052, %2053
  br i1 %2054, label %2016, label %2055

; <label>:2055                                    ; preds = %2044
  br label %2056

; <label>:2056                                    ; preds = %2055, %1959
  %2057 = phi i32 [ 0, %1959 ], [ %2047, %2055 ]
  %2058 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %2059 = fptoui float %2058 to i32
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2112, label %2061

; <label>:2061                                    ; preds = %2056
  br label %2062

; <label>:2062                                    ; preds = %2107, %2061
  %2063 = phi i32 [ %2108, %2107 ], [ %2057, %2061 ]
  %2064 = phi i32 [ %2109, %2107 ], [ 0, %2061 ]
  %2065 = lshr i32 %2064, 2
  %2066 = and i32 %2064, 3
  %2067 = add nuw nsw i32 %2065, 83
  %2068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2067)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.i32 %2068, 0
  %2070 = extractvalue %dx.types.CBufRet.i32 %2068, 1
  %2071 = extractvalue %dx.types.CBufRet.i32 %2068, 2
  %2072 = extractvalue %dx.types.CBufRet.i32 %2068, 3
  %2073 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2069, i32* %2073, align 4
  %2074 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2070, i32* %2074, align 4
  %2075 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2071, i32* %2075, align 4
  %2076 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2072, i32* %2076, align 4
  %2077 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2066
  %2078 = load i32, i32* %2077, align 4, !tbaa !73, !noalias !77
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = lshr i32 %2080, 16
  %2082 = and i32 %2081, 31
  %2083 = shl i32 %2005, %2082
  %2084 = add i32 %2083, %2004
  %2085 = shl i32 %2084, 2
  %2086 = add i32 %2085, %2078
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = icmp eq i32 %2088, 0
  br i1 %2089, label %2107, label %2090

; <label>:2090                                    ; preds = %2062
  %2091 = icmp slt i32 %2088, 0
  %2092 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2063
  %2093 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2063
  %2094 = bitcast float* %2092 to i32*
  %2095 = bitcast float* %2093 to i32*
  br i1 %2091, label %2096, label %2103

; <label>:2096                                    ; preds = %2090
  %2097 = and i32 %2088, 1073741823
  %2098 = add i32 %2078, 20
  %2099 = add i32 %2098, %2097
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = extractvalue %dx.types.ResRet.i32 %2100, 1
  br label %2103

; <label>:2103                                    ; preds = %2096, %2090
  %2104 = phi i32 [ %2101, %2096 ], [ %2012, %2090 ]
  %2105 = phi i32 [ %2102, %2096 ], [ %2013, %2090 ]
  store i32 %2104, i32* %2094, align 4
  store i32 %2105, i32* %2095, align 4
  %2106 = add i32 %2063, 1
  br label %2107

; <label>:2107                                    ; preds = %2103, %2062
  %2108 = phi i32 [ %2063, %2062 ], [ %2106, %2103 ]
  %2109 = add nuw i32 %2064, 1
  %2110 = icmp eq i32 %2109, %2059
  br i1 %2110, label %2111, label %2062

; <label>:2111                                    ; preds = %2107
  br label %2112

; <label>:2112                                    ; preds = %2111, %2056
  %2113 = phi i32 [ %2057, %2056 ], [ %2108, %2111 ]
  %2114 = icmp eq i32 %2113, 1
  %2115 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 0
  %2116 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 0
  br i1 %2114, label %2117, label %2120

; <label>:2117                                    ; preds = %2112
  %2118 = load float, float* %2115, align 4
  %2119 = load float, float* %2116, align 4
  br label %2147

; <label>:2120                                    ; preds = %2112
  %2121 = load float, float* %2115, align 4
  %2122 = load float, float* %2116, align 4
  %2123 = fdiv fast float 1.000000e+00, %2122
  %2124 = fsub fast float %2121, %2123
  %2125 = icmp ugt i32 %2113, 1
  br i1 %2125, label %2126, label %2142

; <label>:2126                                    ; preds = %2120
  br label %2127

; <label>:2127                                    ; preds = %2127, %2126
  %2128 = phi float [ %2137, %2127 ], [ %2124, %2126 ]
  %2129 = phi float [ %2138, %2127 ], [ %2121, %2126 ]
  %2130 = phi i32 [ %2139, %2127 ], [ 1, %2126 ]
  %2131 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2130
  %2132 = load float, float* %2131, align 4
  %2133 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2130
  %2134 = load float, float* %2133, align 4
  %2135 = fdiv fast float 1.000000e+00, %2134
  %2136 = fsub fast float %2132, %2135
  %2137 = call float @dx.op.binary.f32(i32 36, float %2128, float %2136)  ; FMin(a,b)
  %2138 = call float @dx.op.binary.f32(i32 35, float %2129, float %2132)  ; FMax(a,b)
  %2139 = add nuw i32 %2130, 1
  %2140 = icmp eq i32 %2139, %2113
  br i1 %2140, label %2141, label %2127

; <label>:2141                                    ; preds = %2127
  br label %2142

; <label>:2142                                    ; preds = %2141, %2120
  %2143 = phi float [ %2124, %2120 ], [ %2137, %2141 ]
  %2144 = phi float [ %2121, %2120 ], [ %2138, %2141 ]
  %2145 = fsub fast float %2144, %2143
  %2146 = fdiv fast float 1.000000e+00, %2145
  br label %2147

; <label>:2147                                    ; preds = %2142, %2117
  %2148 = phi float [ %2118, %2117 ], [ %2144, %2142 ]
  %2149 = phi float [ %2119, %2117 ], [ %2146, %2142 ]
  %2150 = fadd fast float %1851, %2148
  %2151 = fmul fast float %2150, %2149
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = fmul fast float %2152, 2.000000e+00
  %2154 = fsub fast float 1.000000e+00, %2153
  %2155 = fmul fast float %1989, %1989
  %2156 = fsub fast float %1990, %2155
  %2157 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2156)  ; FMax(a,b)
  %2158 = fdiv fast float 1.000000e+00, %2157
  %2159 = fmul fast float %1990, %1989
  %2160 = fsub fast float %1991, %2159
  %2161 = fsub fast float %2154, %1989
  %2162 = fmul fast float %2154, %2154
  %2163 = fsub fast float %2162, %1990
  %2164 = fmul fast float %2158, %2160
  %2165 = fmul fast float %2164, %2161
  %2166 = fsub fast float %2163, %2165
  %2167 = fmul fast float %1990, %1990
  %2168 = fsub fast float %1992, %2167
  %2169 = fmul fast float %2160, %2160
  %2170 = fmul fast float %2169, %2158
  %2171 = fsub fast float %2168, %2170
  %2172 = fdiv fast float %2166, %2171
  %2173 = fmul fast float %2172, %2160
  %2174 = fsub fast float %2161, %2173
  %2175 = fmul fast float %2174, %2158
  %2176 = fmul fast float %2175, %1989
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2172, %1990
  %2179 = fsub fast float %2177, %2178
  %2180 = fmul fast float %2175, %2175
  %2181 = fmul fast float %2172, 4.000000e+00
  %2182 = fmul fast float %2181, %2179
  %2183 = fsub fast float %2180, %2182
  %2184 = call float @dx.op.unary.f32(i32 24, float %2183)  ; Sqrt(value)
  %2185 = fcmp fast oge float %2175, 0.000000e+00
  %2186 = fsub fast float -0.000000e+00, %2184
  %2187 = select i1 %2185, float %2186, float %2184
  %2188 = fsub fast float %2187, %2175
  %2189 = fdiv fast float %2188, %2172
  %2190 = fdiv fast float %2179, %2188
  %2191 = fmul fast float %2189, 5.000000e-01
  %2192 = fmul fast float %2190, 2.000000e+00
  %2193 = select i1 %2185, float %2191, float %2192
  %2194 = select i1 %2185, float %2192, float %2191
  %2195 = call float @dx.op.binary.f32(i32 35, float %2193, float %2194)  ; FMax(a,b)
  %2196 = call float @dx.op.binary.f32(i32 36, float %2193, float %2194)  ; FMin(a,b)
  %2197 = fcmp fast ogt float %2154, %2195
  %2198 = fsub fast float %2154, %2196
  %2199 = fsub fast float %2154, %2195
  %2200 = fsub fast float %2195, %2196
  %2201 = select i1 %2197, float %2199, float %2200
  %2202 = fmul float %2198, %2201
  %2203 = select i1 %2197, float %2196, float %2154
  %2204 = fcmp fast ogt float %2154, %2196
  %2205 = fmul fast float %2203, %2195
  %2206 = fadd fast float %2203, %2195
  %2207 = fmul fast float %2206, %1989
  %2208 = fadd fast float %2205, %1990
  %2209 = fsub fast float %2208, %2207
  %2210 = fdiv fast float %2209, %2202
  %2211 = select i1 %2204, float %2210, float 0.000000e+00
  %2212 = fsub fast float 1.000000e+00, %2211
  %2213 = select i1 %2197, float %2212, float %2211
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = extractvalue %dx.types.CBufRet.f32 %1974, 3
  %2216 = fmul fast float %2215, %2214
  %2217 = fsub fast float 1.000000e+00, %2216
  br label %2218

; <label>:2218                                    ; preds = %2147, %1859, %1824, %1820, %1786
  %2219 = phi float [ 1.000000e+00, %1786 ], [ %2217, %2147 ], [ 1.000000e+00, %1824 ], [ 1.000000e+00, %1859 ], [ 1.000000e+00, %1820 ]
  %2220 = fcmp fast ogt float %1816, 0.000000e+00
  br i1 %2220, label %2221, label %2227, !dx.controlflow.hints !86

; <label>:2221                                    ; preds = %2218
  %2222 = fadd fast float %1729, %1703
  %2223 = call float @dx.op.binary.f32(i32 35, float %2222, float 0.000000e+00)  ; FMax(a,b)
  %2224 = fadd fast float %2223, 0x3F10000000000000
  %2225 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %33, float %1718, float %1719, float undef, float undef, i32 0, i32 0, i32 undef, float %2224)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  br label %2227

; <label>:2227                                    ; preds = %2221, %2218
  %2228 = phi float [ %2226, %2221 ], [ 1.000000e+00, %2218 ]
  %2229 = fcmp fast ogt float %1814, 0.000000e+00
  br i1 %2229, label %2230, label %2236, !dx.controlflow.hints !87

; <label>:2230                                    ; preds = %2227
  %2231 = fadd fast float %1759, %1703
  %2232 = call float @dx.op.binary.f32(i32 35, float %2231, float 0.000000e+00)  ; FMax(a,b)
  %2233 = fadd fast float %2232, 0x3F10000000000000
  %2234 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %33, float %1710, float %1711, float undef, float undef, i32 0, i32 0, i32 undef, float %2233)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  br label %2236

; <label>:2236                                    ; preds = %2230, %2227
  %2237 = phi float [ %2235, %2230 ], [ 1.000000e+00, %2227 ]
  %2238 = fcmp fast ogt float %1813, 0.000000e+00
  br i1 %2238, label %2239, label %2246, !dx.controlflow.hints !88

; <label>:2239                                    ; preds = %2236
  %2240 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %2241 = fadd fast float %2240, %1703
  %2242 = call float @dx.op.binary.f32(i32 35, float %2241, float 0.000000e+00)  ; FMax(a,b)
  %2243 = fadd fast float %2242, 0x3F10000000000000
  %2244 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %33, float %1695, float %1699, float undef, float undef, i32 0, i32 0, i32 undef, float %2243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 0
  br label %2246

; <label>:2246                                    ; preds = %2239, %2236
  %2247 = phi float [ %2245, %2239 ], [ 1.000000e+00, %2236 ]
  %2248 = fsub fast float %2228, %2219
  %2249 = fmul fast float %2248, %1757
  %2250 = fadd fast float %2249, %2219
  %2251 = fsub fast float %2237, %2250
  %2252 = fmul fast float %2251, %1787
  %2253 = fadd fast float %2252, %2250
  %2254 = fsub fast float %2247, %2253
  %2255 = fmul fast float %2254, %1813
  %2256 = fadd fast float %2255, %2253
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 2
  %2259 = fcmp fast ogt float %2258, 0.000000e+00
  br i1 %2259, label %2260, label %2297, !dx.controlflow.hints !89

; <label>:2260                                    ; preds = %2246
  %2261 = fcmp fast ugt float %2258, 0.000000e+00
  br i1 %2261, label %2262, label %2294

; <label>:2262                                    ; preds = %2260
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.CBufRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.CBufRet.f32 %2268, 2
  %2272 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2273 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2274 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2275 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %2276 = fadd fast float %1647, %1672
  %2277 = fadd fast float %1648, %1673
  %2278 = fadd fast float %2275, %1674
  %2279 = fmul fast float %2276, %2264
  %2280 = call float @dx.op.tertiary.f32(i32 46, float %2265, float %2277, float %2279)  ; FMad(a,b,c)
  %2281 = call float @dx.op.tertiary.f32(i32 46, float %2266, float %2278, float %2280)  ; FMad(a,b,c)
  %2282 = fadd fast float %2281, %2267
  %2283 = fmul fast float %2276, %2269
  %2284 = call float @dx.op.tertiary.f32(i32 46, float %2270, float %2277, float %2283)  ; FMad(a,b,c)
  %2285 = call float @dx.op.tertiary.f32(i32 46, float %2271, float %2278, float %2284)  ; FMad(a,b,c)
  %2286 = fadd fast float %2285, %2272
  %2287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %28, float %2282, float %2286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2288 = extractvalue %dx.types.ResRet.f32 %2287, 0
  %2289 = fmul fast float %2288, %2274
  %2290 = fadd fast float %2289, %2273
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2292 = fmul fast float %2291, %2258
  %2293 = fsub fast float 1.000000e+00, %2292
  br label %2294

; <label>:2294                                    ; preds = %2262, %2260
  %2295 = phi float [ %2293, %2262 ], [ 1.000000e+00, %2260 ]
  %2296 = fmul fast float %2295, %2256
  br label %2297

; <label>:2297                                    ; preds = %2294, %2246, %1652
  %2298 = phi float [ 1.000000e+00, %1652 ], [ %2296, %2294 ], [ %2256, %2246 ]
  %2299 = call float @dx.op.binary.f32(i32 36, float %2298, float %2298)  ; FMin(a,b)
  %2300 = call float @dx.op.binary.f32(i32 36, float %2298, float %2299)  ; FMin(a,b)
  %2301 = fcmp fast ogt float %2300, 0.000000e+00
  br i1 %2301, label %2302, label %2460, !dx.controlflow.hints !90

; <label>:2302                                    ; preds = %2297
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.CBufRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.CBufRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.CBufRet.f32 %2303, 3
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.CBufRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %2317 = extractvalue %dx.types.CBufRet.f32 %2313, 3
  %2318 = fmul fast float %2304, %1672
  %2319 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %2305, float %2318)  ; FMad(a,b,c)
  %2320 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %2306, float %2319)  ; FMad(a,b,c)
  %2321 = fadd fast float %2320, %2307
  %2322 = fmul fast float %2309, %1672
  %2323 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %2310, float %2322)  ; FMad(a,b,c)
  %2324 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %2311, float %2323)  ; FMad(a,b,c)
  %2325 = fadd fast float %2324, %2312
  %2326 = fmul fast float %2314, %1672
  %2327 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %2315, float %2326)  ; FMad(a,b,c)
  %2328 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %2316, float %2327)  ; FMad(a,b,c)
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.CBufRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.CBufRet.f32 %2329, 3
  %2333 = fmul fast float %2332, %2321
  %2334 = fmul fast float %2332, %2325
  %2335 = fadd fast float %2333, %2330
  %2336 = fadd fast float %2334, %2331
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2340 = fsub fast float %2335, %2338
  %2341 = fsub fast float %2336, %2339
  %2342 = fcmp fast olt float %2340, 0.000000e+00
  %2343 = fcmp fast olt float %2341, 0.000000e+00
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = extractvalue %dx.types.CBufRet.f32 %2344, 3
  %2349 = select i1 %2342, float %2345, float %2347
  %2350 = select i1 %2343, float %2346, float %2348
  %2351 = fmul fast float %2349, %2340
  %2352 = fmul fast float %2350, %2341
  %2353 = call float @dx.op.unary.f32(i32 6, float %2351)  ; FAbs(value)
  %2354 = call float @dx.op.unary.f32(i32 6, float %2352)  ; FAbs(value)
  %2355 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %2356 = call float @dx.op.binary.f32(i32 35, float %2353, float %2354)  ; FMax(a,b)
  %2357 = fsub fast float %2355, %2356
  %2358 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2359 = fcmp fast ogt float %2358, 0.000000e+00
  br i1 %2359, label %2360, label %2401, !dx.controlflow.hints !91

; <label>:2360                                    ; preds = %2302
  %2361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2363 = fcmp fast ogt float %2362, 0.000000e+00
  br i1 %2363, label %2364, label %2396

; <label>:2364                                    ; preds = %2360
  %2365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.ResRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.ResRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.ResRet.f32 %2365, 3
  %2370 = fsub fast float 1.000000e+00, %2317
  %2371 = fsub fast float %2370, %2328
  %2372 = fmul fast float %2371, 0x400921FB60000000
  %2373 = fadd fast float %2372, 0x3FF921FB60000000
  %2374 = call float @dx.op.unary.f32(i32 13, float %2373)  ; Sin(value)
  %2375 = fadd fast float %2374, -1.000000e+00
  %2376 = fmul fast float %2375, 0x3FD45F3060000000
  %2377 = fmul fast float %2371, 0x401921FB60000000
  %2378 = fadd fast float %2377, 0x400921FB60000000
  %2379 = call float @dx.op.unary.f32(i32 13, float %2378)  ; Sin(value)
  %2380 = fadd fast float %2379, 0x3E7777A5C0000000
  %2381 = fmul fast float %2380, 0x3FC45F3060000000
  %2382 = fmul fast float %2371, 0x4022D97C80000000
  %2383 = fadd fast float %2382, 0x4012D97C80000000
  %2384 = call float @dx.op.unary.f32(i32 13, float %2383)  ; Sin(value)
  %2385 = fadd fast float %2384, 1.000000e+00
  %2386 = fmul fast float %2385, 0x3FBB2995E0000000
  %2387 = fmul fast float %2371, 0x402921FB60000000
  %2388 = fadd fast float %2387, 0x401921FB60000000
  %2389 = call float @dx.op.unary.f32(i32 13, float %2388)  ; Sin(value)
  %2390 = fadd fast float %2389, 0xBE8777A5C0000000
  %2391 = fmul fast float %2390, 0x3FB45F3060000000
  %2392 = call float @dx.op.dot4.f32(i32 56, float %2366, float %2367, float %2368, float %2369, float %2376, float %2381, float %2386, float %2391)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2393 = fmul fast float %2392, 0xBFF7154760000000
  %2394 = call float @dx.op.unary.f32(i32 21, float %2393)  ; Exp(value)
  %2395 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  br label %2396

; <label>:2396                                    ; preds = %2364, %2360
  %2397 = phi float [ %2395, %2364 ], [ 1.000000e+00, %2360 ]
  %2398 = fadd fast float %2397, -1.000000e+00
  %2399 = fmul fast float %2398, %2358
  %2400 = fadd fast float %2399, 1.000000e+00
  br label %2401

; <label>:2401                                    ; preds = %2396, %2302
  %2402 = phi float [ %2400, %2396 ], [ 1.000000e+00, %2302 ]
  %2403 = fmul fast float %2402, %2298
  %2404 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %2405 = fadd fast float %1647, %106
  %2406 = fadd fast float %1648, %107
  %2407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2408 = extractvalue %dx.types.CBufRet.f32 %2407, 1
  %2409 = fsub fast float -0.000000e+00, %2405
  %2410 = fsub fast float -0.000000e+00, %2406
  %2411 = fsub fast float -0.000000e+00, %108
  %2412 = fsub fast float %2411, %2404
  %2413 = fadd fast float %2412, %2408
  %2414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2409, float %2410, float %2413)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1653, float %1654, float %1655)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = fdiv fast float 1.000000e+00, %2415
  %2417 = fmul fast float %2416, %2414
  %2418 = fmul fast float %1653, %2417
  %2419 = fmul fast float %1654, %2417
  %2420 = fadd fast float %2418, %2405
  %2421 = fadd fast float %2419, %2406
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2425 = fsub fast float %2420, %2423
  %2426 = fsub fast float %2421, %2424
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 3
  %2430 = fmul fast float %2425, %2428
  %2431 = fmul fast float %2426, %2429
  %2432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.i32 %2432, 3
  %2434 = icmp eq i32 %2433, 0
  br i1 %2434, label %2440, label %2435

; <label>:2435                                    ; preds = %2401
  %2436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2437 = extractvalue %dx.types.ResRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.ResRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.ResRet.f32 %2436, 2
  br label %2445

; <label>:2440                                    ; preds = %2401
  %2441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  br label %2445

; <label>:2445                                    ; preds = %2440, %2435
  %2446 = phi float [ %2437, %2435 ], [ %2442, %2440 ]
  %2447 = phi float [ %2438, %2435 ], [ %2443, %2440 ]
  %2448 = phi float [ %2439, %2435 ], [ %2444, %2440 ]
  %2449 = extractvalue %dx.types.CBufRet.f32 %2407, 2
  %2450 = fmul fast float %2449, %2446
  %2451 = extractvalue %dx.types.CBufRet.f32 %2407, 0
  %2452 = fsub fast float %2417, %2451
  %2453 = fsub fast float %2452, %2450
  %2454 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2453)  ; FMax(a,b)
  %2455 = fmul fast float %2454, %2447
  %2456 = call float @dx.op.binary.f32(i32 36, float %2448, float %2455)  ; FMin(a,b)
  %2457 = fmul fast float %2456, 0xBFF7154760000000
  %2458 = call float @dx.op.unary.f32(i32 21, float %2457)  ; Exp(value)
  %2459 = fmul fast float %2403, %2458
  br label %2460

; <label>:2460                                    ; preds = %2445, %2297
  %2461 = phi float [ %2459, %2445 ], [ %2298, %2297 ]
  %2462 = call float @dx.op.binary.f32(i32 36, float %2461, float %2461)  ; FMin(a,b)
  %2463 = call float @dx.op.binary.f32(i32 36, float %2461, float %2462)  ; FMin(a,b)
  %2464 = fcmp fast ogt float %2463, 0.000000e+00
  br i1 %2464, label %2465, label %2659, !dx.controlflow.hints !92

; <label>:2465                                    ; preds = %2460
  %2466 = fmul fast float %2461, %1664
  %2467 = fmul fast float %2461, %1665
  %2468 = fmul fast float %2461, %1666
  %2469 = fsub fast float %1653, %1624
  %2470 = fsub fast float %1654, %1623
  %2471 = fsub fast float %1655, %1622
  %2472 = call float @dx.op.dot3.f32(i32 55, float %2469, float %2470, float %2471, float %2469, float %2470, float %2471)  ; Dot3(ax,ay,az,bx,by,bz)
  %2473 = call float @dx.op.unary.f32(i32 25, float %2472)  ; Rsqrt(value)
  %2474 = fmul fast float %2473, %2469
  %2475 = fmul fast float %2473, %2470
  %2476 = fmul fast float %2473, %2471
  %2477 = call float @dx.op.dot3.f32(i32 55, float %1653, float %1654, float %1655, float %1628, float %1629, float %1630)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = call float @dx.op.dot3.f32(i32 55, float %1621, float %1620, float %1619, float %2474, float %2475, float %2476)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2480 = fmul fast float %2479, %2479
  %2481 = fmul fast float %2480, %1642
  %2482 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2483 = fmul fast float %2482, %2479
  %2484 = call float @dx.op.dot3.f32(i32 55, float %1628, float %1629, float %1630, float %2474, float %2475, float %2476)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = fmul fast float %2484, %2484
  %2486 = call float @dx.op.unary.f32(i32 6, float %2477)  ; FAbs(value)
  %2487 = fsub fast float 1.000000e+00, %1634
  %2488 = call float @dx.op.binary.f32(i32 35, float %2487, float 0x3F847AE140000000)  ; FMax(a,b)
  %2489 = fmul fast float %2488, %2488
  %2490 = fmul fast float %2489, %2489
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = fmul fast float %1638, %1638
  %2493 = fmul fast float %2492, %2491
  %2494 = fadd fast float %2493, %2490
  %2495 = bitcast float %2494 to i32
  %2496 = ashr i32 %2495, 1
  %2497 = add nsw i32 %2496, 532487669
  %2498 = bitcast i32 %2497 to float
  %2499 = fadd fast float %2498, %1638
  %2500 = fmul fast float %2490, %2485
  %2501 = fsub fast float 1.000000e+00, %2485
  %2502 = fadd fast float %2501, %2500
  %2503 = fmul fast float %2486, %2486
  %2504 = fmul fast float %2503, %2491
  %2505 = fadd fast float %2504, %2490
  %2506 = bitcast float %2505 to i32
  %2507 = ashr i32 %2506, 1
  %2508 = add nsw i32 %2507, 532487669
  %2509 = bitcast i32 %2508 to float
  %2510 = fadd fast float %2509, %2486
  %2511 = fmul fast float %2502, %2502
  %2512 = fmul fast float %2511, %2499
  %2513 = fmul fast float %2512, %2510
  %2514 = fdiv fast float 0x3FF0A00000000000, %2513
  %2515 = fmul fast float %2514, %2490
  %2516 = call float @dx.op.unary.f32(i32 6, float %2478)  ; FAbs(value)
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = bitcast float %2517 to i32
  %2519 = sitofp i32 %2518 to float
  %2520 = fmul fast float %2519, 5.000000e+00
  %2521 = fadd fast float %2520, 0xC1EFBF8940000000
  %2522 = fptosi float %2521 to i32
  %2523 = bitcast i32 %2522 to float
  %2524 = fsub fast float 1.000000e+00, %1631
  %2525 = fsub fast float 1.000000e+00, %1632
  %2526 = fsub fast float 1.000000e+00, %1636
  %2527 = fmul fast float %2523, %2524
  %2528 = fmul fast float %2523, %2525
  %2529 = fmul fast float %2523, %2526
  %2530 = fadd fast float %2527, %1631
  %2531 = fadd fast float %2528, %1632
  %2532 = fadd fast float %2529, %1636
  %2533 = fcmp fast ogt float %1293, 0.000000e+00
  br i1 %2533, label %2534, label %2557

; <label>:2534                                    ; preds = %2465
  %2535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1293, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.ResRet.f32 %2535, 1
  %2538 = extractvalue %dx.types.ResRet.f32 %2535, 2
  %2539 = fadd fast float %2536, -5.000000e-01
  %2540 = fadd fast float %2537, -5.000000e-01
  %2541 = fadd fast float %2538, -5.000000e-01
  %2542 = fmul fast float %1631, 4.000000e+00
  %2543 = fmul fast float %2542, %2524
  %2544 = fmul fast float %2543, %2539
  %2545 = fmul fast float %1632, 4.000000e+00
  %2546 = fmul fast float %2545, %2525
  %2547 = fmul fast float %2546, %2540
  %2548 = fmul fast float %1636, 4.000000e+00
  %2549 = fmul fast float %2548, %2526
  %2550 = fmul fast float %2549, %2541
  %2551 = fadd fast float %2544, %2530
  %2552 = fadd fast float %2547, %2531
  %2553 = fadd fast float %2550, %2532
  %2554 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2556 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  br label %2557

; <label>:2557                                    ; preds = %2534, %2465
  %2558 = phi float [ %2554, %2534 ], [ %2530, %2465 ]
  %2559 = phi float [ %2555, %2534 ], [ %2531, %2465 ]
  %2560 = phi float [ %2556, %2534 ], [ %2532, %2465 ]
  %2561 = fmul fast float %2477, 9.843750e-01
  %2562 = fmul fast float %1634, 9.843750e-01
  %2563 = fadd fast float %2561, 7.812500e-03
  %2564 = fadd fast float %2562, 7.812500e-03
  %2565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %2563, float %2564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 2
  %2567 = extractvalue %dx.types.ResRet.f32 %2565, 3
  %2568 = fmul fast float %2566, %1631
  %2569 = fmul fast float %2566, %1632
  %2570 = fmul fast float %2566, %1636
  %2571 = fadd fast float %2568, %2567
  %2572 = fadd fast float %2569, %2567
  %2573 = fadd fast float %2570, %2567
  br i1 %2533, label %2574, label %2597

; <label>:2574                                    ; preds = %2557
  %2575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1293, float %2477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.ResRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.ResRet.f32 %2575, 2
  %2579 = fadd fast float %2576, -5.000000e-01
  %2580 = fadd fast float %2577, -5.000000e-01
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fmul fast float %1631, 4.000000e+00
  %2583 = fmul fast float %2582, %2524
  %2584 = fmul fast float %2583, %2579
  %2585 = fmul fast float %1632, 4.000000e+00
  %2586 = fmul fast float %2585, %2525
  %2587 = fmul fast float %2586, %2580
  %2588 = fmul fast float %1636, 4.000000e+00
  %2589 = fmul fast float %2588, %2526
  %2590 = fmul fast float %2589, %2581
  %2591 = fadd fast float %2584, %2571
  %2592 = fadd fast float %2587, %2572
  %2593 = fadd fast float %2590, %2573
  %2594 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2595 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2596 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  br label %2597

; <label>:2597                                    ; preds = %2574, %2557
  %2598 = phi float [ %2594, %2574 ], [ %2571, %2557 ]
  %2599 = phi float [ %2595, %2574 ], [ %2572, %2557 ]
  %2600 = phi float [ %2596, %2574 ], [ %2573, %2557 ]
  %2601 = call float @dx.op.binary.f32(i32 35, float %2599, float %2600)  ; FMax(a,b)
  %2602 = call float @dx.op.binary.f32(i32 35, float %2598, float %2601)  ; FMax(a,b)
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2558, %2515
  %2605 = fmul fast float %2559, %2515
  %2606 = fmul fast float %2560, %2515
  %2607 = call float @dx.op.dot3.f32(i32 55, float %1625, float %1626, float %1627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2608 = fcmp fast ogt float %2607, 0x3E7FF19E20000000
  %2609 = fdiv fast float 1.000000e+00, %2607
  %2610 = select i1 %2608, float %2609, float 0.000000e+00
  %2611 = fmul fast float %2610, %1625
  %2612 = fmul fast float %2610, %1626
  %2613 = fmul fast float %2610, %1627
  %2614 = fadd fast float %2611, -1.000000e+00
  %2615 = fadd fast float %2612, -1.000000e+00
  %2616 = fadd fast float %2613, -1.000000e+00
  %2617 = fmul fast float %2614, 5.000000e-01
  %2618 = fmul fast float %2615, 5.000000e-01
  %2619 = fmul fast float %2616, 5.000000e-01
  %2620 = fadd fast float %2617, 1.000000e+00
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fsub fast float 1.000000e+00, %2478
  %2624 = bitcast float %2623 to i32
  %2625 = sitofp i32 %2624 to float
  %2626 = fmul fast float %2625, 5.000000e+00
  %2627 = fadd fast float %2626, 0xC1EFBF8940000000
  %2628 = fptosi float %2627 to i32
  %2629 = bitcast i32 %2628 to float
  %2630 = fmul fast float %2629, %1292
  %2631 = fmul fast float %2603, %2630
  %2632 = fmul fast float %2631, %2620
  %2633 = fmul fast float %2631, %2621
  %2634 = fmul fast float %2631, %2622
  %2635 = fadd fast float %2632, %2604
  %2636 = fadd fast float %2633, %2605
  %2637 = fadd fast float %2634, %2606
  %2638 = fmul fast float %2483, %2466
  %2639 = fmul fast float %2638, %2635
  %2640 = fmul fast float %2483, %2467
  %2641 = fmul fast float %2640, %2636
  %2642 = fmul fast float %2483, %2468
  %2643 = fmul fast float %2642, %2637
  %2644 = fmul fast float %2466, %1313
  %2645 = fmul fast float %2644, %2483
  %2646 = fmul fast float %2645, %2603
  %2647 = fmul fast float %2467, %1313
  %2648 = fmul fast float %2647, %2483
  %2649 = fmul fast float %2648, %2603
  %2650 = fmul fast float %2468, %1313
  %2651 = fmul fast float %2650, %2483
  %2652 = fmul fast float %2651, %2603
  %2653 = fadd fast float %2639, %1294
  %2654 = fmul fast float %2653, %1313
  %2655 = fadd fast float %2641, %1295
  %2656 = fmul fast float %2655, %1313
  %2657 = fadd fast float %2643, %1296
  %2658 = fmul fast float %2657, %1313
  br label %2659

; <label>:2659                                    ; preds = %2597, %2460, %1618
  %2660 = phi float [ %1643, %1618 ], [ %1643, %2460 ], [ %2654, %2597 ]
  %2661 = phi float [ %1644, %1618 ], [ %1644, %2460 ], [ %2656, %2597 ]
  %2662 = phi float [ %1645, %1618 ], [ %1645, %2460 ], [ %2658, %2597 ]
  %2663 = phi float [ 0.000000e+00, %1618 ], [ 0.000000e+00, %2460 ], [ %2646, %2597 ]
  %2664 = phi float [ 0.000000e+00, %1618 ], [ 0.000000e+00, %2460 ], [ %2649, %2597 ]
  %2665 = phi float [ 0.000000e+00, %1618 ], [ 0.000000e+00, %2460 ], [ %2652, %2597 ]
  %2666 = fmul fast float %1313, %1313
  %2667 = fsub fast float 1.000000e+00, %2666
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2667, float %2667, float %2667, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fsub fast float 1.000000e+00, %1638
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = fmul fast float %2672, %2670
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 3
  %2676 = fsub fast float 1.000000e+00, %1291
  %2677 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2678 = fadd fast float %2665, %1290
  %2679 = fmul fast float %2678, %1291
  %2680 = fmul fast float %2677, %2675
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2683 = fmul fast float %2663, %1625
  %2684 = fmul fast float %2664, %1626
  %2685 = fmul fast float %2665, %1627
  %2686 = fcmp fast ogt float %50, %128
  %2687 = and i1 %2686, %1357
  %2688 = or i1 %1436, %2687
  %2689 = icmp eq i32 %1356, 2
  %2690 = fcmp fast ole float %50, %128
  %2691 = and i1 %2690, %2689
  %2692 = or i1 %2691, %2688
  br i1 %2687, label %2693, label %2952

; <label>:2693                                    ; preds = %2659
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 3
  %2697 = fmul fast float %2695, %59
  %2698 = fmul fast float %2696, %60
  %2699 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2700 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2701 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %2699, float %2700, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.ResRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.ResRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.ResRet.f32 %2701, 3
  %2706 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %2699, float %2700, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.ResRet.f32 %2706, 2
  %2710 = extractvalue %dx.types.ResRet.f32 %2706, 3
  %2711 = call float @dx.op.binary.f32(i32 35, float %2703, float %2704)  ; FMax(a,b)
  %2712 = call float @dx.op.binary.f32(i32 35, float %2702, float %2711)  ; FMax(a,b)
  %2713 = call float @dx.op.binary.f32(i32 35, float %2712, float %2705)  ; FMax(a,b)
  %2714 = call float @dx.op.binary.f32(i32 36, float %2708, float %2709)  ; FMin(a,b)
  %2715 = call float @dx.op.binary.f32(i32 36, float %2707, float %2714)  ; FMin(a,b)
  %2716 = call float @dx.op.binary.f32(i32 36, float %2715, float %2710)  ; FMin(a,b)
  %2717 = fmul fast float %2713, 2.550000e+02
  %2718 = fadd fast float %2717, 0x3F70101020000000
  %2719 = fptoui float %2718 to i32
  %2720 = fmul fast float %2716, 2.550000e+02
  %2721 = fadd fast float %2720, 0x3F70101020000000
  %2722 = fptoui float %2721 to i32
  %2723 = icmp ult i32 %2719, %2722
  br i1 %2723, label %2724, label %2892

; <label>:2724                                    ; preds = %2693
  %2725 = fcmp fast ogt float %49, 9.843750e-01
  %2726 = fadd fast float %50, -4.000000e+00
  %2727 = select i1 %2725, float -4.000000e+00, float %2726
  %2728 = call float @dx.op.binary.f32(i32 35, float %2727, float 0.000000e+00)  ; FMax(a,b)
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = fadd fast float %2730, %2728
  %2732 = extractvalue %dx.types.CBufRet.f32 %2729, 2
  %2733 = fmul fast float %2731, %2732
  %2734 = call float @dx.op.unary.f32(i32 23, float %2733)  ; Log(value)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2729, 3
  %2736 = fmul fast float %2735, %2734
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2739 = fmul fast float %2736, %2738
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = uitofp i32 %2719 to float
  %2742 = uitofp i32 %2722 to float
  %2743 = fadd fast float %2741, 5.000000e-01
  %2744 = fadd fast float %2742, 5.000000e-01
  %2745 = fmul fast float %2738, %2743
  %2746 = fmul fast float %2738, %2744
  %2747 = fadd fast float %2745, 0x3F0FFB4800000000
  %2748 = fadd fast float %2746, 0xBF0FFB4800000000
  %2749 = call float @dx.op.binary.f32(i32 35, float %2740, float %2747)  ; FMax(a,b)
  %2750 = call float @dx.op.binary.f32(i32 36, float %2749, float %2748)  ; FMin(a,b)
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2753 = extractvalue %dx.types.CBufRet.f32 %2751, 2
  %2754 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2755 = fmul fast float %2752, %2750
  %2756 = fadd fast float %2754, %2755
  %2757 = fadd fast float %2754, %2753
  %2758 = fsub fast float %2752, %2753
  %2759 = fadd fast float %2758, %2754
  %2760 = call float @dx.op.binary.f32(i32 35, float %2756, float %2757)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 36, float %2760, float %2759)  ; FMin(a,b)
  %2762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %2699, float %2700, float %2761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.ResRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.ResRet.f32 %2762, 2
  %2766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.i32 %2766, 0
  %2768 = extractvalue %dx.types.CBufRet.i32 %2766, 1
  %2769 = uitofp i32 %2767 to float
  %2770 = uitofp i32 %2768 to float
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.CBufRet.f32 %2771, 1
  %2774 = fmul fast float %2769, %2699
  %2775 = fmul fast float %2770, %2700
  %2776 = fadd fast float %2774, -5.000000e-01
  %2777 = fadd fast float %2775, -5.000000e-01
  %2778 = call float @dx.op.unary.f32(i32 22, float %2776)  ; Frc(value)
  %2779 = call float @dx.op.unary.f32(i32 22, float %2777)  ; Frc(value)
  %2780 = fmul fast float %2778, %2778
  %2781 = fmul fast float %2780, %2778
  %2782 = fsub fast float 3.000000e+00, %2778
  %2783 = fmul fast float %2780, %2782
  %2784 = fmul fast float %2778, 3.000000e+00
  %2785 = fmul fast float %2781, 3.000000e+00
  %2786 = fmul fast float %2780, 6.000000e+00
  %2787 = fsub fast float %2785, %2786
  %2788 = fadd fast float %2787, 4.000000e+00
  %2789 = fmul fast float %2788, 0x3FC5555560000000
  %2790 = fmul fast float %2781, -3.000000e+00
  %2791 = fadd fast float %2780, %2778
  %2792 = fmul fast float %2791, 3.000000e+00
  %2793 = fadd fast float %2790, 1.000000e+00
  %2794 = fadd fast float %2793, %2792
  %2795 = fmul fast float %2781, 0x3FC5555560000000
  %2796 = fmul fast float %2779, %2779
  %2797 = fmul fast float %2796, %2779
  %2798 = fsub fast float 3.000000e+00, %2779
  %2799 = fmul fast float %2796, %2798
  %2800 = fmul fast float %2779, 3.000000e+00
  %2801 = fmul fast float %2797, 3.000000e+00
  %2802 = fmul fast float %2796, 6.000000e+00
  %2803 = fsub fast float %2801, %2802
  %2804 = fadd fast float %2803, 4.000000e+00
  %2805 = fmul fast float %2804, 0x3FC5555560000000
  %2806 = fmul fast float %2797, -3.000000e+00
  %2807 = fadd fast float %2796, %2779
  %2808 = fmul fast float %2807, 3.000000e+00
  %2809 = fadd fast float %2806, 1.000000e+00
  %2810 = fadd fast float %2809, %2808
  %2811 = fmul fast float %2797, 0x3FC5555560000000
  %2812 = fadd fast float %2778, 1.000000e+00
  %2813 = fsub fast float 1.000000e+00, %2784
  %2814 = fadd fast float %2813, %2783
  %2815 = fadd fast float %2814, %2788
  %2816 = fmul fast float %2815, 0x3FC5555560000000
  %2817 = fdiv fast float %2789, %2816
  %2818 = fsub fast float %2812, %2817
  %2819 = fsub fast float 1.000000e+00, %2778
  %2820 = fadd fast float %2794, %2781
  %2821 = fmul fast float %2820, 0x3FC5555560000000
  %2822 = fdiv fast float %2795, %2821
  %2823 = fadd fast float %2819, %2822
  %2824 = fadd fast float %2779, 1.000000e+00
  %2825 = fsub fast float 1.000000e+00, %2800
  %2826 = fadd fast float %2825, %2799
  %2827 = fadd fast float %2826, %2804
  %2828 = fmul fast float %2827, 0x3FC5555560000000
  %2829 = fdiv fast float %2805, %2828
  %2830 = fsub fast float %2824, %2829
  %2831 = fsub fast float 1.000000e+00, %2779
  %2832 = fadd fast float %2810, %2797
  %2833 = fmul fast float %2832, 0x3FC5555560000000
  %2834 = fdiv fast float %2811, %2833
  %2835 = fadd fast float %2834, %2831
  %2836 = fmul fast float %2818, %2772
  %2837 = fsub fast float %2699, %2836
  %2838 = fmul fast float %2823, %2772
  %2839 = fadd fast float %2838, %2699
  %2840 = fmul fast float %2835, %2773
  %2841 = fadd fast float %2840, %2700
  %2842 = fmul fast float %2830, %2773
  %2843 = fsub fast float %2700, %2842
  %2844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2837, float %2843, float %2761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = extractvalue %dx.types.ResRet.f32 %2844, 1
  %2847 = extractvalue %dx.types.ResRet.f32 %2844, 2
  %2848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2839, float %2843, float %2761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.ResRet.f32 %2848, 1
  %2851 = extractvalue %dx.types.ResRet.f32 %2848, 2
  %2852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2837, float %2841, float %2761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2853 = extractvalue %dx.types.ResRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.ResRet.f32 %2852, 1
  %2855 = extractvalue %dx.types.ResRet.f32 %2852, 2
  %2856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2839, float %2841, float %2761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.ResRet.f32 %2856, 2
  %2860 = fsub fast float %2853, %2845
  %2861 = fsub fast float %2854, %2846
  %2862 = fsub fast float %2855, %2847
  %2863 = fmul fast float %2860, %2833
  %2864 = fmul fast float %2861, %2833
  %2865 = fmul fast float %2862, %2833
  %2866 = fadd fast float %2863, %2845
  %2867 = fadd fast float %2864, %2846
  %2868 = fadd fast float %2865, %2847
  %2869 = fsub fast float %2857, %2849
  %2870 = fsub fast float %2858, %2850
  %2871 = fsub fast float %2859, %2851
  %2872 = fmul fast float %2869, %2833
  %2873 = fmul fast float %2870, %2833
  %2874 = fmul fast float %2871, %2833
  %2875 = fsub fast float %2849, %2866
  %2876 = fadd fast float %2875, %2872
  %2877 = fsub fast float %2850, %2867
  %2878 = fadd fast float %2877, %2873
  %2879 = fsub fast float %2851, %2868
  %2880 = fadd fast float %2879, %2874
  %2881 = fmul fast float %2876, %2821
  %2882 = fmul fast float %2878, %2821
  %2883 = fmul fast float %2880, %2821
  %2884 = fadd fast float %2881, %2866
  %2885 = fadd fast float %2882, %2867
  %2886 = fadd fast float %2883, %2868
  %2887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.f32 %2887, 1
  %2889 = fmul fast float %2884, %2888
  %2890 = fmul fast float %2885, %2888
  %2891 = fmul fast float %2886, %2888
  br label %2892

; <label>:2892                                    ; preds = %2724, %2693
  %2893 = phi float [ %2763, %2724 ], [ 1.000000e+00, %2693 ]
  %2894 = phi float [ %2764, %2724 ], [ 1.000000e+00, %2693 ]
  %2895 = phi float [ %2765, %2724 ], [ 1.000000e+00, %2693 ]
  %2896 = phi float [ %2889, %2724 ], [ 0.000000e+00, %2693 ]
  %2897 = phi float [ %2890, %2724 ], [ 0.000000e+00, %2693 ]
  %2898 = phi float [ %2891, %2724 ], [ 0.000000e+00, %2693 ]
  %2899 = fmul fast float %2896, %2669
  %2900 = fmul fast float %2897, %2669
  %2901 = fmul fast float %2898, %2669
  %2902 = call float @dx.op.dot3.f32(i32 55, float %2893, float %2894, float %2895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2903 = call float @dx.op.dot3.f32(i32 55, float %2899, float %2900, float %2901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2904 = select i1 %167, float %2902, float %2893
  %2905 = select i1 %167, float %2902, float %2894
  %2906 = select i1 %167, float 1.000000e+00, float %2895
  %2907 = select i1 %167, float %2903, float %2899
  %2908 = select i1 %167, float 0.000000e+00, float %2900
  %2909 = select i1 %167, float 0.000000e+00, float %2901
  %2910 = fmul fast float %2904, %2683
  %2911 = fmul fast float %2905, %2684
  %2912 = fmul fast float %2906, %2685
  %2913 = fadd fast float %2910, %2907
  %2914 = fadd fast float %2911, %2908
  %2915 = fadd fast float %2909, %2912
  %2916 = fmul fast float %2904, %2660
  %2917 = fmul fast float %2905, %2661
  %2918 = fmul fast float %2906, %2662
  %2919 = fmul fast float %59, 2.000000e+00
  %2920 = fmul fast float %2919, %2695
  %2921 = fmul fast float %60, 2.000000e+00
  %2922 = fmul fast float %2921, %2696
  %2923 = fsub fast float 1.000000e+00, %2920
  %2924 = fsub fast float 1.000000e+00, %2922
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2929 = fmul fast float %2923, %2926
  %2930 = fmul fast float %2923, %2927
  %2931 = fmul fast float %2923, %2928
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.CBufRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.CBufRet.f32 %2932, 2
  %2936 = fmul fast float %2924, %2933
  %2937 = fmul fast float %2924, %2934
  %2938 = fmul fast float %2924, %2935
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 0
  %2941 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2942 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2943 = fadd fast float %2936, %2940
  %2944 = fadd fast float %2943, %2929
  %2945 = fadd fast float %2937, %2941
  %2946 = fadd fast float %2945, %2930
  %2947 = fadd fast float %2938, %2942
  %2948 = fadd fast float %2947, %2931
  %2949 = fmul fast float %2944, %128
  %2950 = fmul fast float %2946, %128
  %2951 = fmul fast float %2948, %128
  br label %2952

; <label>:2952                                    ; preds = %2892, %2659
  %2953 = phi float [ %2949, %2892 ], [ %106, %2659 ]
  %2954 = phi float [ %2950, %2892 ], [ %107, %2659 ]
  %2955 = phi float [ %2951, %2892 ], [ %108, %2659 ]
  %2956 = phi float [ %128, %2892 ], [ %50, %2659 ]
  %2957 = phi float [ %2913, %2892 ], [ %2683, %2659 ]
  %2958 = phi float [ %2914, %2892 ], [ %2684, %2659 ]
  %2959 = phi float [ %2915, %2892 ], [ %2685, %2659 ]
  %2960 = phi float [ %2916, %2892 ], [ %2660, %2659 ]
  %2961 = phi float [ %2917, %2892 ], [ %2661, %2659 ]
  %2962 = phi float [ %2918, %2892 ], [ %2662, %2659 ]
  %2963 = phi float [ %2893, %2892 ], [ 1.000000e+00, %2659 ]
  br i1 %2692, label %4118, label %2964

; <label>:2964                                    ; preds = %2952
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.CBufRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.CBufRet.f32 %2965, 2
  %2969 = extractvalue %dx.types.CBufRet.f32 %2965, 3
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.CBufRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.CBufRet.f32 %2970, 2
  %2974 = extractvalue %dx.types.CBufRet.f32 %2970, 3
  %2975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.CBufRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.CBufRet.f32 %2975, 2
  %2979 = extractvalue %dx.types.CBufRet.f32 %2975, 3
  %2980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.CBufRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.CBufRet.f32 %2980, 2
  %2984 = extractvalue %dx.types.CBufRet.f32 %2980, 3
  %2985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2986 = extractvalue %dx.types.CBufRet.f32 %2985, 3
  %2987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2988 = extractvalue %dx.types.CBufRet.f32 %2987, 3
  %2989 = extractvalue %dx.types.CBufRet.f32 %2987, 0
  %2990 = extractvalue %dx.types.CBufRet.f32 %2987, 1
  %2991 = extractvalue %dx.types.CBufRet.f32 %2987, 2
  %2992 = fcmp fast olt float %2991, -5.000000e-01
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2954, float %2955, float %2953, float %2954, float %2955)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = call float @dx.op.unary.f32(i32 25, float %2993)  ; Rsqrt(value)
  %2995 = fmul fast float %2994, %2993
  %2996 = fmul fast float %2994, %2953
  %2997 = fmul fast float %2994, %2954
  %2998 = fmul fast float %2994, %2955
  %2999 = fadd fast float %2995, %2969
  %3000 = call float @dx.op.dot3.f32(i32 55, float %2996, float %2997, float %2998, float %2966, float %2967, float %2968)  ; Dot3(ax,ay,az,bx,by,bz)
  %3001 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3002 = extractvalue %dx.types.CBufRet.i32 %3001, 1
  %3003 = and i32 %3002, 1
  %3004 = icmp ne i32 %3003, 0
  %3005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.f32 %3005, 2
  %3007 = fcmp fast ogt float %3006, 0.000000e+00
  %3008 = and i1 %3004, %3007
  br i1 %3008, label %3009, label %3415, !dx.controlflow.hints !93

; <label>:3009                                    ; preds = %2964
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 3
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 2
  %3014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.f32 %3014, 2
  %3016 = fsub fast float %3013, %3015
  %3017 = and i32 %3002, 2
  %3018 = extractvalue %dx.types.CBufRet.i32 %3001, 0
  %3019 = call i32 @dx.op.binary.i32(i32 40, i32 %3018, i32 3)  ; UMin(a,b)
  %3020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3021 = extractvalue %dx.types.CBufRet.f32 %3020, 0
  %3022 = extractvalue %dx.types.CBufRet.f32 %3020, 1
  %3023 = extractvalue %dx.types.CBufRet.f32 %3014, 0
  %3024 = extractvalue %dx.types.CBufRet.f32 %3014, 1
  %3025 = fsub fast float %3021, %3023
  %3026 = fsub fast float %3022, %3024
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 0
  %3029 = fcmp fast ogt float %3028, 0.000000e+00
  %3030 = fsub fast float -0.000000e+00, %3025
  %3031 = fsub fast float -0.000000e+00, %3026
  %3032 = call float @dx.op.dot2.f32(i32 54, float %2996, float %2997, float %2996, float %2997)  ; Dot2(ax,ay,bx,by)
  %3033 = call float @dx.op.dot2.f32(i32 54, float %2996, float %2997, float %3030, float %3031)  ; Dot2(ax,ay,bx,by)
  %3034 = fmul fast float %3033, 2.000000e+00
  %3035 = call float @dx.op.dot2.f32(i32 54, float %3030, float %3031, float %3030, float %3031)  ; Dot2(ax,ay,bx,by)
  %3036 = fmul fast float %3028, %3028
  %3037 = fsub fast float %3035, %3036
  %3038 = fmul fast float %3034, %3034
  %3039 = fmul fast float %3032, 4.000000e+00
  %3040 = fmul fast float %3039, %3037
  %3041 = fsub fast float %3038, %3040
  %3042 = fcmp fast ogt float %3041, 0.000000e+00
  br i1 %3042, label %3043, label %3058

; <label>:3043                                    ; preds = %3009
  %3044 = fcmp fast ogt float %3034, 0.000000e+00
  %3045 = call float @dx.op.unary.f32(i32 24, float %3041)  ; Sqrt(value)
  %3046 = fsub fast float -0.000000e+00, %3045
  %3047 = select i1 %3044, float %3045, float %3046
  %3048 = fadd fast float %3047, %3034
  %3049 = fmul float %3048, -5.000000e-01
  %3050 = fdiv fast float %3049, %3032
  %3051 = call float @dx.op.binary.f32(i32 35, float %3050, float 0.000000e+00)  ; FMax(a,b)
  %3052 = call float @dx.op.binary.f32(i32 36, float %2995, float %3051)  ; FMin(a,b)
  %3053 = fdiv fast float %3037, %3049
  %3054 = call float @dx.op.binary.f32(i32 35, float %3053, float 0.000000e+00)  ; FMax(a,b)
  %3055 = call float @dx.op.binary.f32(i32 36, float %2995, float %3054)  ; FMin(a,b)
  %3056 = call float @dx.op.binary.f32(i32 36, float %3052, float %3055)  ; FMin(a,b)
  %3057 = call float @dx.op.binary.f32(i32 35, float %3052, float %3055)  ; FMax(a,b)
  br label %3058

; <label>:3058                                    ; preds = %3043, %3009
  %3059 = phi float [ %3057, %3043 ], [ -1.000000e+00, %3009 ]
  %3060 = phi float [ %3056, %3043 ], [ -1.000000e+00, %3009 ]
  %3061 = phi i1 [ true, %3043 ], [ false, %3009 ]
  %3062 = and i1 %3029, %3061
  br i1 %3062, label %3063, label %3065

; <label>:3063                                    ; preds = %3058
  %3064 = fcmp fast oeq float %3060, %3059
  br i1 %3064, label %3368, label %3066

; <label>:3065                                    ; preds = %3058
  br i1 %3029, label %3368, label %3066

; <label>:3066                                    ; preds = %3065, %3063
  %3067 = phi float [ %2995, %3065 ], [ %3059, %3063 ]
  %3068 = phi float [ 0.000000e+00, %3065 ], [ %3060, %3063 ]
  %3069 = icmp ne i32 %3017, 0
  %3070 = fmul fast float %3067, %2998
  %3071 = fadd fast float %3070, %3011
  %3072 = fmul fast float %3071, %3067
  %3073 = select i1 %3069, float 0.000000e+00, float %3072
  %3074 = fcmp fast oeq float %2998, 0.000000e+00
  %3075 = fdiv fast float %3016, %2998
  %3076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3075)  ; FMax(a,b)
  %3077 = select i1 %3074, float %3067, float %3076
  %3078 = call float @dx.op.binary.f32(i32 36, float %3067, float %3077)  ; FMin(a,b)
  %3079 = fcmp fast ogt float %2998, 0.000000e+00
  %3080 = fcmp fast olt float %3016, 0.000000e+00
  br i1 %3079, label %3081, label %3138

; <label>:3081                                    ; preds = %3066
  %3082 = icmp eq i32 %3017, 0
  br i1 %3080, label %3083, label %3127

; <label>:3083                                    ; preds = %3081
  %3084 = select i1 %3082, float %3067, float 0.000000e+00
  %3085 = fsub fast float -0.000000e+00, %3084
  %3086 = call float @dx.op.unary.f32(i32 6, float %3085)  ; FAbs(value)
  %3087 = fmul fast float %3084, %2998
  %3088 = fadd fast float %3087, %3011
  %3089 = fmul fast float %3086, %3088
  %3090 = fsub fast float %3073, %3089
  %3091 = fsub fast float %3067, %3086
  %3092 = select i1 %3082, float %3091, float 0.000000e+00
  %3093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.f32 %3093, 0
  %3095 = extractvalue %dx.types.CBufRet.f32 %3093, 1
  %3096 = extractvalue %dx.types.CBufRet.f32 %3093, 2
  %3097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.CBufRet.f32 %3097, 1
  %3100 = extractvalue %dx.types.CBufRet.f32 %3097, 2
  %3101 = extractvalue %dx.types.CBufRet.f32 %3097, 3
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 3
  %3104 = call float @dx.op.binary.f32(i32 36, float %3090, float %3103)  ; FMin(a,b)
  %3105 = fmul fast float %3101, %3092
  %3106 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3107 = fsub fast float %3098, %3094
  %3108 = fsub fast float %3099, %3095
  %3109 = fsub fast float %3100, %3096
  %3110 = fmul fast float %3106, %3107
  %3111 = fmul fast float %3106, %3108
  %3112 = fmul fast float %3106, %3109
  %3113 = fadd fast float %3110, %3094
  %3114 = fadd fast float %3111, %3095
  %3115 = fadd fast float %3112, %3096
  %3116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3117 = extractvalue %dx.types.CBufRet.f32 %3116, 0
  %3118 = extractvalue %dx.types.CBufRet.f32 %3116, 1
  %3119 = fadd fast float %3118, %3117
  %3120 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3121 = extractvalue %dx.types.CBufRet.f32 %3116, 2
  %3122 = extractvalue %dx.types.CBufRet.f32 %3116, 3
  %3123 = fadd fast float %3122, %3121
  %3124 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  %3125 = fmul fast float %3120, %3104
  %3126 = fmul fast float %3125, %3124
  br label %3368

; <label>:3127                                    ; preds = %3081
  br i1 %3082, label %3128, label %3149

; <label>:3128                                    ; preds = %3127
  %3129 = call float @dx.op.binary.f32(i32 36, float %3078, float %3068)  ; FMin(a,b)
  %3130 = fsub fast float %3078, %3129
  %3131 = fsub fast float %3130, %3067
  %3132 = call float @dx.op.unary.f32(i32 6, float %3131)  ; FAbs(value)
  %3133 = fadd fast float %3130, %3067
  %3134 = fmul fast float %3133, %2998
  %3135 = fadd fast float %3134, %3011
  %3136 = fmul fast float %3135, %3132
  %3137 = fsub fast float %3073, %3136
  br label %3149

; <label>:3138                                    ; preds = %3066
  br i1 %3080, label %3139, label %3149

; <label>:3139                                    ; preds = %3138
  %3140 = call float @dx.op.binary.f32(i32 35, float %3068, float %3078)  ; FMax(a,b)
  %3141 = icmp eq i32 %3017, 0
  %3142 = select i1 %3141, float %3078, float 0.000000e+00
  %3143 = fsub fast float -0.000000e+00, %3142
  %3144 = call float @dx.op.unary.f32(i32 6, float %3143)  ; FAbs(value)
  %3145 = fmul fast float %3142, %2998
  %3146 = fadd fast float %3145, %3011
  %3147 = fmul fast float %3144, %3146
  %3148 = fsub fast float %3073, %3147
  br label %3149

; <label>:3149                                    ; preds = %3139, %3138, %3128, %3127
  %3150 = phi float [ %3068, %3127 ], [ %3068, %3128 ], [ %3140, %3139 ], [ %3068, %3138 ]
  %3151 = phi float [ 0.000000e+00, %3127 ], [ %3132, %3128 ], [ %3144, %3139 ], [ 0.000000e+00, %3138 ]
  %3152 = phi float [ %3073, %3127 ], [ %3137, %3128 ], [ %3148, %3139 ], [ %3073, %3138 ]
  %3153 = phi float [ %3078, %3127 ], [ %3078, %3128 ], [ %3067, %3139 ], [ %3067, %3138 ]
  %3154 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 0
  store float -1.000000e+00, float* %3154, align 4, !tbaa !94, !noalias !96
  %3155 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 1
  store float -1.000000e+00, float* %3155, align 4, !tbaa !94, !noalias !96
  %3156 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 2
  store float -1.000000e+00, float* %3156, align 4, !tbaa !94, !noalias !96
  %3157 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 0
  store float -1.000000e+00, float* %3157, align 4, !tbaa !94, !noalias !96
  %3158 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 1
  store float -1.000000e+00, float* %3158, align 4, !tbaa !94, !noalias !96
  %3159 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 2
  store float -1.000000e+00, float* %3159, align 4, !tbaa !94, !noalias !96
  %3160 = icmp sgt i32 %3019, 0
  br i1 %3160, label %3161, label %3222

; <label>:3161                                    ; preds = %3149
  br label %3162

; <label>:3162                                    ; preds = %3211, %3161
  %3163 = phi i32 [ %3212, %3211 ], [ 0, %3161 ]
  %3164 = phi i32 [ %3213, %3211 ], [ 0, %3161 ]
  %3165 = add nuw i32 %3164, 171
  %3166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %3165)  ; CBufferLoadLegacy(handle,regIndex)
  %3167 = extractvalue %dx.types.CBufRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.CBufRet.f32 %3166, 1
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3172 = fsub fast float %3167, %3170
  %3173 = fsub fast float %3168, %3171
  %3174 = extractvalue %dx.types.CBufRet.f32 %3166, 2
  %3175 = fsub fast float -0.000000e+00, %3172
  %3176 = fsub fast float -0.000000e+00, %3173
  %3177 = call float @dx.op.dot2.f32(i32 54, float %2996, float %2997, float %3175, float %3176)  ; Dot2(ax,ay,bx,by)
  %3178 = fmul fast float %3177, 2.000000e+00
  %3179 = call float @dx.op.dot2.f32(i32 54, float %3175, float %3176, float %3175, float %3176)  ; Dot2(ax,ay,bx,by)
  %3180 = fmul fast float %3174, %3174
  %3181 = fsub fast float %3179, %3180
  %3182 = fmul fast float %3178, %3178
  %3183 = fmul fast float %3039, %3181
  %3184 = fsub fast float %3182, %3183
  %3185 = fcmp fast ogt float %3184, 0.000000e+00
  br i1 %3185, label %3186, label %3201

; <label>:3186                                    ; preds = %3162
  %3187 = fcmp fast ogt float %3178, 0.000000e+00
  %3188 = call float @dx.op.unary.f32(i32 24, float %3184)  ; Sqrt(value)
  %3189 = fsub fast float -0.000000e+00, %3188
  %3190 = select i1 %3187, float %3188, float %3189
  %3191 = fadd fast float %3190, %3178
  %3192 = fmul float %3191, -5.000000e-01
  %3193 = fdiv fast float %3192, %3032
  %3194 = call float @dx.op.binary.f32(i32 35, float %3193, float 0.000000e+00)  ; FMax(a,b)
  %3195 = call float @dx.op.binary.f32(i32 36, float %3067, float %3194)  ; FMin(a,b)
  %3196 = fdiv fast float %3181, %3192
  %3197 = call float @dx.op.binary.f32(i32 35, float %3196, float 0.000000e+00)  ; FMax(a,b)
  %3198 = call float @dx.op.binary.f32(i32 36, float %3067, float %3197)  ; FMin(a,b)
  %3199 = call float @dx.op.binary.f32(i32 36, float %3195, float %3198)  ; FMin(a,b)
  %3200 = call float @dx.op.binary.f32(i32 35, float %3195, float %3198)  ; FMax(a,b)
  br label %3201

; <label>:3201                                    ; preds = %3186, %3162
  %3202 = phi float [ %3200, %3186 ], [ -1.000000e+00, %3162 ]
  %3203 = phi float [ %3199, %3186 ], [ -1.000000e+00, %3162 ]
  %3204 = phi i1 [ true, %3186 ], [ false, %3162 ]
  br i1 %3204, label %3205, label %3211

; <label>:3205                                    ; preds = %3201
  %3206 = call float @dx.op.binary.f32(i32 35, float %3150, float %3203)  ; FMax(a,b)
  %3207 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 %3164
  store float %3206, float* %3207, align 4, !tbaa !94, !noalias !96
  %3208 = call float @dx.op.binary.f32(i32 35, float %3150, float %3202)  ; FMax(a,b)
  %3209 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 %3164
  store float %3208, float* %3209, align 4, !tbaa !94, !noalias !96
  %3210 = add nsw i32 %3163, 1
  br label %3211

; <label>:3211                                    ; preds = %3205, %3201
  %3212 = phi i32 [ %3210, %3205 ], [ %3163, %3201 ]
  %3213 = add nuw nsw i32 %3164, 1
  %3214 = icmp eq i32 %3213, %3019
  br i1 %3214, label %3215, label %3162

; <label>:3215                                    ; preds = %3211
  %3216 = load float, float* %3156, align 4, !tbaa !94, !alias.scope !112, !noalias !115
  %3217 = load float, float* %3155, align 4, !tbaa !94, !alias.scope !118, !noalias !119
  %3218 = load float, float* %3154, align 4, !tbaa !94, !alias.scope !120, !noalias !121
  %3219 = load float, float* %3159, align 4, !tbaa !94, !alias.scope !122, !noalias !125
  %3220 = load float, float* %3158, align 4, !tbaa !94, !alias.scope !128, !noalias !129
  %3221 = load float, float* %3157, align 4, !tbaa !94, !alias.scope !130, !noalias !131
  br label %3222

; <label>:3222                                    ; preds = %3215, %3149
  %3223 = phi float [ -1.000000e+00, %3149 ], [ %3221, %3215 ]
  %3224 = phi float [ -1.000000e+00, %3149 ], [ %3220, %3215 ]
  %3225 = phi float [ -1.000000e+00, %3149 ], [ %3219, %3215 ]
  %3226 = phi float [ -1.000000e+00, %3149 ], [ %3218, %3215 ]
  %3227 = phi float [ -1.000000e+00, %3149 ], [ %3217, %3215 ]
  %3228 = phi float [ -1.000000e+00, %3149 ], [ %3216, %3215 ]
  %3229 = phi i32 [ 0, %3149 ], [ %3212, %3215 ]
  %3230 = call float @dx.op.binary.f32(i32 36, float %3227, float %3228)  ; FMin(a,b)
  %3231 = call float @dx.op.binary.f32(i32 36, float %3226, float %3230)  ; FMin(a,b)
  %3232 = call float @dx.op.binary.f32(i32 35, float %3226, float %3227)  ; FMax(a,b)
  %3233 = call float @dx.op.binary.f32(i32 36, float %3232, float %3228)  ; FMin(a,b)
  %3234 = call float @dx.op.binary.f32(i32 36, float %3226, float %3227)  ; FMin(a,b)
  %3235 = call float @dx.op.binary.f32(i32 35, float %3234, float %3233)  ; FMax(a,b)
  %3236 = call float @dx.op.binary.f32(i32 35, float %3227, float %3228)  ; FMax(a,b)
  %3237 = call float @dx.op.binary.f32(i32 35, float %3226, float %3236)  ; FMax(a,b)
  store float %3231, float* %3154, align 4, !tbaa !94, !alias.scope !120, !noalias !121
  store float %3235, float* %3155, align 4, !tbaa !94, !alias.scope !118, !noalias !119
  store float %3237, float* %3156, align 4, !tbaa !94, !alias.scope !112, !noalias !115
  %3238 = call float @dx.op.binary.f32(i32 36, float %3224, float %3225)  ; FMin(a,b)
  %3239 = call float @dx.op.binary.f32(i32 36, float %3223, float %3238)  ; FMin(a,b)
  %3240 = call float @dx.op.binary.f32(i32 35, float %3223, float %3224)  ; FMax(a,b)
  %3241 = call float @dx.op.binary.f32(i32 36, float %3240, float %3225)  ; FMin(a,b)
  %3242 = call float @dx.op.binary.f32(i32 36, float %3223, float %3224)  ; FMin(a,b)
  %3243 = call float @dx.op.binary.f32(i32 35, float %3242, float %3241)  ; FMax(a,b)
  %3244 = call float @dx.op.binary.f32(i32 35, float %3224, float %3225)  ; FMax(a,b)
  %3245 = call float @dx.op.binary.f32(i32 35, float %3223, float %3244)  ; FMax(a,b)
  store float %3239, float* %3157, align 4, !tbaa !94, !alias.scope !130, !noalias !131
  store float %3243, float* %3158, align 4, !tbaa !94, !alias.scope !128, !noalias !129
  store float %3245, float* %3159, align 4, !tbaa !94, !alias.scope !122, !noalias !125
  %3246 = sub nsw i32 3, %3229
  %3247 = icmp sgt i32 %3246, 2
  br i1 %3247, label %3248, label %3286

; <label>:3248                                    ; preds = %3222
  %3249 = icmp eq i32 %3017, 0
  %3250 = fsub fast float %3067, %3151
  %3251 = select i1 %3249, float %3250, float %3151
  %3252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.CBufRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.CBufRet.f32 %3252, 2
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3260 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 3
  %3263 = call float @dx.op.binary.f32(i32 36, float %3152, float %3262)  ; FMin(a,b)
  %3264 = fmul fast float %3260, %3251
  %3265 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3266 = fsub fast float %3257, %3253
  %3267 = fsub fast float %3258, %3254
  %3268 = fsub fast float %3259, %3255
  %3269 = fmul fast float %3265, %3266
  %3270 = fmul fast float %3265, %3267
  %3271 = fmul fast float %3265, %3268
  %3272 = fadd fast float %3269, %3253
  %3273 = fadd fast float %3270, %3254
  %3274 = fadd fast float %3271, %3255
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3278 = fadd fast float %3277, %3276
  %3279 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3275, 2
  %3281 = extractvalue %dx.types.CBufRet.f32 %3275, 3
  %3282 = fadd fast float %3281, %3280
  %3283 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3284 = fmul fast float %3279, %3263
  %3285 = fmul fast float %3284, %3283
  br label %3368

; <label>:3286                                    ; preds = %3222
  %3287 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 %3246
  %3288 = load float, float* %3287, align 4, !tbaa !94, !noalias !96
  %3289 = fcmp fast olt float %3288, %3153
  %3290 = icmp sgt i32 %3229, 0
  %3291 = and i1 %3290, %3289
  br i1 %3291, label %3292, label %3329

; <label>:3292                                    ; preds = %3286
  br label %3293

; <label>:3293                                    ; preds = %3322, %3292
  %3294 = phi float [ %3323, %3322 ], [ %3151, %3292 ]
  %3295 = phi float [ %3324, %3322 ], [ %3152, %3292 ]
  %3296 = phi float [ %3304, %3322 ], [ %3288, %3292 ]
  %3297 = phi i32 [ %3301, %3322 ], [ %3246, %3292 ]
  %3298 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 %3297
  %3299 = load float, float* %3298, align 4, !tbaa !94, !noalias !96
  %3300 = icmp slt i32 %3297, 2
  %3301 = add nsw i32 %3297, 1
  %3302 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 %3301
  %3303 = load float, float* %3302, align 4, !tbaa !94, !noalias !96
  %3304 = select i1 %3300, float %3303, float %3067
  %3305 = call float @dx.op.binary.f32(i32 36, float %3304, float %3299)  ; FMin(a,b)
  %3306 = call float @dx.op.binary.f32(i32 36, float %3153, float %3305)  ; FMin(a,b)
  %3307 = icmp eq i32 %3017, 0
  %3308 = fadd fast float %3306, %3296
  %3309 = fmul fast float %3308, %2998
  %3310 = fadd fast float %3309, %3011
  br i1 %3307, label %3316, label %3311

; <label>:3311                                    ; preds = %3293
  %3312 = fsub fast float %3306, %3296
  %3313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3312)  ; FMax(a,b)
  %3314 = fmul fast float %3313, %3310
  %3315 = fadd fast float %3314, %3295
  br label %3322

; <label>:3316                                    ; preds = %3293
  %3317 = fsub fast float %3296, %3306
  %3318 = call float @dx.op.unary.f32(i32 6, float %3317)  ; FAbs(value)
  %3319 = fadd fast float %3318, %3294
  %3320 = fmul fast float %3318, %3310
  %3321 = fsub fast float %3295, %3320
  br label %3322

; <label>:3322                                    ; preds = %3316, %3311
  %3323 = phi float [ %3313, %3311 ], [ %3319, %3316 ]
  %3324 = phi float [ %3315, %3311 ], [ %3321, %3316 ]
  %3325 = fcmp fast olt float %3304, %3153
  %3326 = icmp slt i32 %3301, 3
  %3327 = and i1 %3326, %3325
  br i1 %3327, label %3293, label %3328

; <label>:3328                                    ; preds = %3322
  br label %3329

; <label>:3329                                    ; preds = %3328, %3286
  %3330 = phi float [ %3151, %3286 ], [ %3323, %3328 ]
  %3331 = phi float [ %3152, %3286 ], [ %3324, %3328 ]
  %3332 = fsub fast float %3067, %3330
  %3333 = select i1 %3069, float %3330, float %3332
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.CBufRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.CBufRet.f32 %3334, 2
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.CBufRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.CBufRet.f32 %3338, 3
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 3
  %3345 = call float @dx.op.binary.f32(i32 36, float %3331, float %3344)  ; FMin(a,b)
  %3346 = fmul fast float %3342, %3333
  %3347 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  %3348 = fsub fast float %3339, %3335
  %3349 = fsub fast float %3340, %3336
  %3350 = fsub fast float %3341, %3337
  %3351 = fmul fast float %3347, %3348
  %3352 = fmul fast float %3347, %3349
  %3353 = fmul fast float %3347, %3350
  %3354 = fadd fast float %3351, %3335
  %3355 = fadd fast float %3352, %3336
  %3356 = fadd fast float %3353, %3337
  %3357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.f32 %3357, 0
  %3359 = extractvalue %dx.types.CBufRet.f32 %3357, 1
  %3360 = fadd fast float %3359, %3358
  %3361 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  %3362 = extractvalue %dx.types.CBufRet.f32 %3357, 2
  %3363 = extractvalue %dx.types.CBufRet.f32 %3357, 3
  %3364 = fadd fast float %3363, %3362
  %3365 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3366 = fmul fast float %3361, %3345
  %3367 = fmul fast float %3366, %3365
  br label %3368

; <label>:3368                                    ; preds = %3329, %3248, %3083, %3065, %3063
  %3369 = phi float [ %3092, %3083 ], [ %3251, %3248 ], [ %3333, %3329 ], [ 0.000000e+00, %3063 ], [ 0.000000e+00, %3065 ]
  %3370 = phi float [ %3126, %3083 ], [ %3285, %3248 ], [ %3367, %3329 ], [ 0.000000e+00, %3063 ], [ 0.000000e+00, %3065 ]
  %3371 = phi float [ %3113, %3083 ], [ %3272, %3248 ], [ %3354, %3329 ], [ 0.000000e+00, %3063 ], [ 0.000000e+00, %3065 ]
  %3372 = phi float [ %3114, %3083 ], [ %3273, %3248 ], [ %3355, %3329 ], [ 0.000000e+00, %3063 ], [ 0.000000e+00, %3065 ]
  %3373 = phi float [ %3115, %3083 ], [ %3274, %3248 ], [ %3356, %3329 ], [ 0.000000e+00, %3063 ], [ 0.000000e+00, %3065 ]
  %3374 = fmul fast float %3006, %3370
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 2
  %3377 = fsub fast float %3013, %3376
  %3378 = fcmp fast olt float %3374, -2.000000e+01
  %3379 = call float @dx.op.unary.f32(i32 21, float %3374)  ; Exp(value)
  %3380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3381 = extractvalue %dx.types.CBufRet.f32 %3380, 2
  %3382 = extractvalue %dx.types.CBufRet.f32 %3380, 3
  %3383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3384 = extractvalue %dx.types.CBufRet.f32 %3383, 2
  %3385 = fmul fast float %3382, %3377
  %3386 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3387 = fsub fast float 1.000000e+00, %3386
  %3388 = fmul fast float %2998, 5.000000e-01
  %3389 = fadd fast float %3388, 5.000000e-01
  %3390 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3391 = fsub fast float 1.000000e+00, %3390
  %3392 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3387)  ; FMax(a,b)
  %3393 = fdiv fast float %3391, %3392
  %3394 = fsub fast float %3377, %2955
  %3395 = call float @dx.op.unary.f32(i32 6, float %3394)  ; FAbs(value)
  %3396 = fmul fast float %3395, %3381
  %3397 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3398 = fsub fast float 1.000000e+00, %3396
  %3399 = fmul fast float %3398, %3397
  %3400 = fadd fast float %3399, %3396
  %3401 = fmul fast float %3384, %3377
  %3402 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3403 = fsub fast float 1.000000e+00, %3400
  %3404 = fmul fast float %3403, %3402
  %3405 = fadd fast float %3404, %3400
  %3406 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3407 = fadd fast float %3379, -1.000000e+00
  %3408 = select i1 %3378, float -1.000000e+00, float %3407
  %3409 = fmul fast float %3406, %3408
  %3410 = fadd fast float %3409, 1.000000e+00
  %3411 = fsub fast float -0.000000e+00, %3409
  %3412 = fmul fast float %3371, %3411
  %3413 = fmul fast float %3372, %3411
  %3414 = fmul fast float %3373, %3411
  br label %3415

; <label>:3415                                    ; preds = %3368, %2964
  %3416 = phi float [ %3369, %3368 ], [ 0.000000e+00, %2964 ]
  %3417 = phi float [ %3410, %3368 ], [ 1.000000e+00, %2964 ]
  %3418 = phi float [ %3412, %3368 ], [ 0.000000e+00, %2964 ]
  %3419 = phi float [ %3413, %3368 ], [ 0.000000e+00, %2964 ]
  %3420 = phi float [ %3414, %3368 ], [ 0.000000e+00, %2964 ]
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 1
  %3423 = fsub fast float 1.000000e+00, %3417
  %3424 = fmul fast float %3423, %2999
  %3425 = fmul fast float %3424, %3422
  %3426 = fsub fast float %2999, %3425
  br i1 %2992, label %3427, label %3456, !dx.controlflow.hints !132

; <label>:3427                                    ; preds = %3415
  %3428 = fmul fast float %3000, %2989
  %3429 = fadd fast float %3428, %2990
  %3430 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3431 = fmul fast float %2971, %3426
  %3432 = fsub fast float -0.000000e+00, %3431
  %3433 = fmul fast float %2972, %3426
  %3434 = fsub fast float -0.000000e+00, %3433
  %3435 = call float @dx.op.unary.f32(i32 21, float %3432)  ; Exp(value)
  %3436 = call float @dx.op.unary.f32(i32 21, float %3434)  ; Exp(value)
  %3437 = call float @dx.op.binary.f32(i32 35, float %2979, float %3435)  ; FMax(a,b)
  %3438 = call float @dx.op.binary.f32(i32 35, float %2979, float %3436)  ; FMax(a,b)
  %3439 = fsub fast float %3438, %3437
  %3440 = fmul fast float %3439, %3430
  %3441 = fadd fast float %3440, %3437
  %3442 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3443 = fsub fast float %2976, %2981
  %3444 = fsub fast float %2977, %2982
  %3445 = fsub fast float %2978, %2983
  %3446 = fmul fast float %3430, %3443
  %3447 = fmul fast float %3430, %3444
  %3448 = fmul fast float %3430, %3445
  %3449 = fadd fast float %3446, %2981
  %3450 = fadd fast float %3447, %2982
  %3451 = fadd fast float %3448, %2983
  %3452 = fsub fast float 1.000000e+00, %3442
  %3453 = fmul fast float %3452, %3449
  %3454 = fmul fast float %3452, %3450
  %3455 = fmul fast float %3452, %3451
  br label %3515

; <label>:3456                                    ; preds = %3415
  %3457 = fmul fast float %3426, %2988
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fsub fast float 2.000000e+00, %3458
  %3460 = fmul fast float %3458, 9.921875e-01
  %3461 = fmul fast float %3460, %3459
  %3462 = fadd fast float %3461, 3.906250e-03
  %3463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %3462, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = fsub fast float %3458, %3464
  %3466 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3465)  ; FMax(a,b)
  %3467 = fmul fast float %2974, %2955
  %3468 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3469 = fcmp fast ogt float %3468, 0x3EB0C6F7A0000000
  br i1 %3469, label %3470, label %3476, !dx.controlflow.hints !133

; <label>:3470                                    ; preds = %3456
  %3471 = fmul fast float %3467, 0xBFF7154760000000
  %3472 = call float @dx.op.unary.f32(i32 21, float %3471)  ; Exp(value)
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fdiv fast float %3473, %3467
  %3475 = fmul fast float %3474, %2984
  br label %3476

; <label>:3476                                    ; preds = %3470, %3456
  %3477 = phi float [ %3475, %3470 ], [ %2984, %3456 ]
  %3478 = fadd fast float %3477, %2986
  %3479 = fmul fast float %3478, %3466
  %3480 = fmul fast float %2971, %3479
  %3481 = fsub fast float -0.000000e+00, %3480
  %3482 = fmul fast float %2972, %3479
  %3483 = fsub fast float -0.000000e+00, %3482
  %3484 = fmul fast float %2973, %3479
  %3485 = fsub fast float -0.000000e+00, %3484
  %3486 = call float @dx.op.unary.f32(i32 21, float %3481)  ; Exp(value)
  %3487 = call float @dx.op.unary.f32(i32 21, float %3483)  ; Exp(value)
  %3488 = call float @dx.op.unary.f32(i32 21, float %3485)  ; Exp(value)
  %3489 = fmul fast float %3000, %3000
  %3490 = fadd fast float %3489, 1.000000e+00
  %3491 = fmul fast float %3490, 0x3FAE8EC8A0000000
  %3492 = fmul fast float %3491, %2981
  %3493 = fmul fast float %3491, %2982
  %3494 = fmul fast float %3491, %2983
  %3495 = fmul fast float %3000, %2979
  %3496 = fsub fast float 1.000000e+00, %3495
  %3497 = fmul fast float %2979, %2979
  %3498 = fsub fast float 1.000000e+00, %3497
  %3499 = fmul fast float %3498, 0x3FB45F3060000000
  %3500 = fmul fast float %3496, %3496
  %3501 = fdiv fast float 1.000000e+00, %3500
  %3502 = fmul fast float %3499, %3501
  %3503 = fmul fast float %3502, %2976
  %3504 = fmul fast float %3502, %2977
  %3505 = fmul fast float %3502, %2978
  %3506 = fadd fast float %3503, %3492
  %3507 = fadd fast float %3504, %3493
  %3508 = fadd fast float %3505, %3494
  %3509 = fsub fast float 1.000000e+00, %3486
  %3510 = fsub fast float 1.000000e+00, %3487
  %3511 = fsub fast float 1.000000e+00, %3488
  %3512 = fmul fast float %3506, %3509
  %3513 = fmul fast float %3507, %3510
  %3514 = fmul fast float %3508, %3511
  br label %3515

; <label>:3515                                    ; preds = %3476, %3427
  %3516 = phi float [ %3453, %3427 ], [ %3512, %3476 ]
  %3517 = phi float [ %3454, %3427 ], [ %3513, %3476 ]
  %3518 = phi float [ %3455, %3427 ], [ %3514, %3476 ]
  %3519 = phi float [ %3442, %3427 ], [ %3486, %3476 ]
  %3520 = phi float [ %3442, %3427 ], [ %3487, %3476 ]
  %3521 = phi float [ %3442, %3427 ], [ %3488, %3476 ]
  br i1 %3008, label %3522, label %3720, !dx.controlflow.hints !134

; <label>:3522                                    ; preds = %3515
  %3523 = extractvalue %dx.types.CBufRet.f32 %3421, 0
  %3524 = fmul fast float %3523, %3423
  %3525 = fsub fast float %3418, %3516
  %3526 = fsub fast float %3419, %3517
  %3527 = fsub fast float %3420, %3518
  %3528 = fmul fast float %3524, %3525
  %3529 = fmul fast float %3524, %3526
  %3530 = fmul fast float %3524, %3527
  %3531 = fadd fast float %3528, %3516
  %3532 = fadd fast float %3529, %3517
  %3533 = fadd fast float %3530, %3518
  %3534 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3519)  ; FMax(a,b)
  %3535 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3520)  ; FMax(a,b)
  %3536 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3521)  ; FMax(a,b)
  %3537 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3417)  ; FMax(a,b)
  %3538 = call float @dx.op.binary.f32(i32 35, float %3416, float %3426)  ; FMax(a,b)
  %3539 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3538)  ; FMax(a,b)
  %3540 = fdiv fast float %3416, %3539
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3542 = fdiv fast float %3426, %3539
  %3543 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  %3544 = fcmp fast une float %3537, 1.000000e+00
  br i1 %3544, label %3545, label %3558, !dx.controlflow.hints !135

; <label>:3545                                    ; preds = %3522
  %3546 = call float @dx.op.unary.f32(i32 23, float %3537)  ; Log(value)
  %3547 = fmul fast float %3546, 0x3FE62E4300000000
  %3548 = fmul fast float %3418, %3547
  %3549 = fsub fast float -0.000000e+00, %3548
  %3550 = fmul fast float %3419, %3547
  %3551 = fsub fast float -0.000000e+00, %3550
  %3552 = fmul fast float %3420, %3547
  %3553 = fsub fast float -0.000000e+00, %3552
  %3554 = fsub fast float 1.000000e+00, %3537
  %3555 = fdiv fast float %3549, %3554
  %3556 = fdiv fast float %3551, %3554
  %3557 = fdiv fast float %3553, %3554
  br label %3558

; <label>:3558                                    ; preds = %3545, %3522
  %3559 = phi float [ %3555, %3545 ], [ %3418, %3522 ]
  %3560 = phi float [ %3556, %3545 ], [ %3419, %3522 ]
  %3561 = phi float [ %3557, %3545 ], [ %3420, %3522 ]
  %3562 = phi float [ %3547, %3545 ], [ 0.000000e+00, %3522 ]
  %3563 = fcmp fast une float %3534, 1.000000e+00
  br i1 %3563, label %3564, label %3571, !dx.controlflow.hints !136

; <label>:3564                                    ; preds = %3558
  %3565 = call float @dx.op.unary.f32(i32 23, float %3534)  ; Log(value)
  %3566 = fmul fast float %3565, 0x3FE62E4300000000
  %3567 = fmul fast float %3531, %3566
  %3568 = fsub fast float -0.000000e+00, %3567
  %3569 = fsub fast float 1.000000e+00, %3534
  %3570 = fdiv fast float %3568, %3569
  br label %3571

; <label>:3571                                    ; preds = %3564, %3558
  %3572 = phi float [ %3570, %3564 ], [ %3531, %3558 ]
  %3573 = phi float [ %3566, %3564 ], [ 0.000000e+00, %3558 ]
  %3574 = fcmp fast une float %3535, 1.000000e+00
  br i1 %3574, label %3575, label %3582, !dx.controlflow.hints !136

; <label>:3575                                    ; preds = %3571
  %3576 = call float @dx.op.unary.f32(i32 23, float %3535)  ; Log(value)
  %3577 = fmul fast float %3576, 0x3FE62E4300000000
  %3578 = fmul fast float %3532, %3577
  %3579 = fsub fast float -0.000000e+00, %3578
  %3580 = fsub fast float 1.000000e+00, %3535
  %3581 = fdiv fast float %3579, %3580
  br label %3582

; <label>:3582                                    ; preds = %3575, %3571
  %3583 = phi float [ %3581, %3575 ], [ %3532, %3571 ]
  %3584 = phi float [ %3577, %3575 ], [ 0.000000e+00, %3571 ]
  %3585 = fcmp fast une float %3536, 1.000000e+00
  br i1 %3585, label %3586, label %3593, !dx.controlflow.hints !136

; <label>:3586                                    ; preds = %3582
  %3587 = call float @dx.op.unary.f32(i32 23, float %3536)  ; Log(value)
  %3588 = fmul fast float %3587, 0x3FE62E4300000000
  %3589 = fmul fast float %3533, %3588
  %3590 = fsub fast float -0.000000e+00, %3589
  %3591 = fsub fast float 1.000000e+00, %3536
  %3592 = fdiv fast float %3590, %3591
  br label %3593

; <label>:3593                                    ; preds = %3586, %3582
  %3594 = phi float [ %3592, %3586 ], [ %3533, %3582 ]
  %3595 = phi float [ %3588, %3586 ], [ 0.000000e+00, %3582 ]
  %3596 = fmul fast float %3559, %3543
  %3597 = fmul fast float %3560, %3543
  %3598 = fmul fast float %3561, %3543
  %3599 = fmul fast float %3562, %3543
  %3600 = fmul fast float %3572, %3541
  %3601 = fmul fast float %3583, %3541
  %3602 = fmul fast float %3594, %3541
  %3603 = fmul fast float %3573, %3541
  %3604 = fmul fast float %3584, %3541
  %3605 = fmul fast float %3595, %3541
  %3606 = fadd fast float %3600, %3596
  %3607 = fadd fast float %3601, %3597
  %3608 = fadd fast float %3602, %3598
  %3609 = fadd fast float %3603, %3599
  %3610 = fadd fast float %3604, %3599
  %3611 = fadd fast float %3605, %3599
  %3612 = fcmp fast une float %3609, 0.000000e+00
  br i1 %3612, label %3613, label %3620, !dx.controlflow.hints !137

; <label>:3613                                    ; preds = %3593
  %3614 = fmul fast float %3609, 0x3FF7154760000000
  %3615 = call float @dx.op.unary.f32(i32 21, float %3614)  ; Exp(value)
  %3616 = fsub fast float 1.000000e+00, %3615
  %3617 = fmul fast float %3606, %3616
  %3618 = fsub fast float -0.000000e+00, %3617
  %3619 = fdiv fast float %3618, %3609
  br label %3620

; <label>:3620                                    ; preds = %3613, %3593
  %3621 = phi float [ %3615, %3613 ], [ 1.000000e+00, %3593 ]
  %3622 = phi float [ %3619, %3613 ], [ %3606, %3593 ]
  %3623 = fcmp fast une float %3610, 0.000000e+00
  br i1 %3623, label %3624, label %3631, !dx.controlflow.hints !137

; <label>:3624                                    ; preds = %3620
  %3625 = fmul fast float %3610, 0x3FF7154760000000
  %3626 = call float @dx.op.unary.f32(i32 21, float %3625)  ; Exp(value)
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = fmul fast float %3607, %3627
  %3629 = fsub fast float -0.000000e+00, %3628
  %3630 = fdiv fast float %3629, %3610
  br label %3631

; <label>:3631                                    ; preds = %3624, %3620
  %3632 = phi float [ %3626, %3624 ], [ 1.000000e+00, %3620 ]
  %3633 = phi float [ %3630, %3624 ], [ %3607, %3620 ]
  %3634 = fcmp fast une float %3611, 0.000000e+00
  br i1 %3634, label %3635, label %3642, !dx.controlflow.hints !137

; <label>:3635                                    ; preds = %3631
  %3636 = fmul fast float %3611, 0x3FF7154760000000
  %3637 = call float @dx.op.unary.f32(i32 21, float %3636)  ; Exp(value)
  %3638 = fsub fast float 1.000000e+00, %3637
  %3639 = fmul fast float %3608, %3638
  %3640 = fsub fast float -0.000000e+00, %3639
  %3641 = fdiv fast float %3640, %3611
  br label %3642

; <label>:3642                                    ; preds = %3635, %3631
  %3643 = phi float [ %3637, %3635 ], [ 1.000000e+00, %3631 ]
  %3644 = phi float [ %3641, %3635 ], [ %3608, %3631 ]
  %3645 = fcmp fast ogt float %3541, %3543
  br i1 %3645, label %3646, label %3666

; <label>:3646                                    ; preds = %3642
  %3647 = fsub fast float 1.000000e+00, %3543
  %3648 = fmul fast float %3559, %3647
  %3649 = fmul fast float %3560, %3647
  %3650 = fmul fast float %3561, %3647
  %3651 = fmul fast float %3562, %3647
  %3652 = fcmp fast une float %3651, 0.000000e+00
  br i1 %3652, label %3653, label %3704, !dx.controlflow.hints !138

; <label>:3653                                    ; preds = %3646
  %3654 = fmul fast float %3651, 0x3FF7154760000000
  %3655 = call float @dx.op.unary.f32(i32 21, float %3654)  ; Exp(value)
  %3656 = fsub fast float 1.000000e+00, %3655
  %3657 = fmul fast float %3648, %3656
  %3658 = fsub fast float -0.000000e+00, %3657
  %3659 = fmul fast float %3649, %3656
  %3660 = fsub fast float -0.000000e+00, %3659
  %3661 = fmul fast float %3650, %3656
  %3662 = fsub fast float -0.000000e+00, %3661
  %3663 = fdiv fast float %3658, %3651
  %3664 = fdiv fast float %3660, %3651
  %3665 = fdiv fast float %3662, %3651
  br label %3704

; <label>:3666                                    ; preds = %3642
  %3667 = fsub fast float 1.000000e+00, %3541
  %3668 = fmul fast float %3572, %3667
  %3669 = fmul fast float %3583, %3667
  %3670 = fmul fast float %3594, %3667
  %3671 = fmul fast float %3573, %3667
  %3672 = fmul fast float %3584, %3667
  %3673 = fmul fast float %3595, %3667
  %3674 = fcmp fast une float %3671, 0.000000e+00
  br i1 %3674, label %3675, label %3682, !dx.controlflow.hints !137

; <label>:3675                                    ; preds = %3666
  %3676 = fmul fast float %3671, 0x3FF7154760000000
  %3677 = call float @dx.op.unary.f32(i32 21, float %3676)  ; Exp(value)
  %3678 = fsub fast float 1.000000e+00, %3677
  %3679 = fmul fast float %3668, %3678
  %3680 = fsub fast float -0.000000e+00, %3679
  %3681 = fdiv fast float %3680, %3671
  br label %3682

; <label>:3682                                    ; preds = %3675, %3666
  %3683 = phi float [ %3681, %3675 ], [ %3668, %3666 ]
  %3684 = phi float [ %3677, %3675 ], [ 1.000000e+00, %3666 ]
  %3685 = fcmp fast une float %3672, 0.000000e+00
  br i1 %3685, label %3686, label %3693, !dx.controlflow.hints !137

; <label>:3686                                    ; preds = %3682
  %3687 = fmul fast float %3672, 0x3FF7154760000000
  %3688 = call float @dx.op.unary.f32(i32 21, float %3687)  ; Exp(value)
  %3689 = fsub fast float 1.000000e+00, %3688
  %3690 = fmul fast float %3669, %3689
  %3691 = fsub fast float -0.000000e+00, %3690
  %3692 = fdiv fast float %3691, %3672
  br label %3693

; <label>:3693                                    ; preds = %3686, %3682
  %3694 = phi float [ %3692, %3686 ], [ %3669, %3682 ]
  %3695 = phi float [ %3688, %3686 ], [ 1.000000e+00, %3682 ]
  %3696 = fcmp fast une float %3673, 0.000000e+00
  br i1 %3696, label %3697, label %3704, !dx.controlflow.hints !137

; <label>:3697                                    ; preds = %3693
  %3698 = fmul fast float %3673, 0x3FF7154760000000
  %3699 = call float @dx.op.unary.f32(i32 21, float %3698)  ; Exp(value)
  %3700 = fsub fast float 1.000000e+00, %3699
  %3701 = fmul fast float %3670, %3700
  %3702 = fsub fast float -0.000000e+00, %3701
  %3703 = fdiv fast float %3702, %3673
  br label %3704

; <label>:3704                                    ; preds = %3697, %3693, %3653, %3646
  %3705 = phi float [ %3703, %3697 ], [ %3665, %3653 ], [ %3650, %3646 ], [ %3670, %3693 ]
  %3706 = phi float [ %3694, %3697 ], [ %3664, %3653 ], [ %3649, %3646 ], [ %3694, %3693 ]
  %3707 = phi float [ %3683, %3697 ], [ %3663, %3653 ], [ %3648, %3646 ], [ %3683, %3693 ]
  %3708 = phi float [ %3699, %3697 ], [ %3655, %3653 ], [ 1.000000e+00, %3646 ], [ 1.000000e+00, %3693 ]
  %3709 = phi float [ %3695, %3697 ], [ %3655, %3653 ], [ 1.000000e+00, %3646 ], [ %3695, %3693 ]
  %3710 = phi float [ %3684, %3697 ], [ %3655, %3653 ], [ 1.000000e+00, %3646 ], [ %3684, %3693 ]
  %3711 = fmul fast float %3710, %3622
  %3712 = fmul fast float %3709, %3633
  %3713 = fmul fast float %3708, %3644
  %3714 = fadd fast float %3711, %3707
  %3715 = fadd fast float %3712, %3706
  %3716 = fadd fast float %3713, %3705
  %3717 = fmul fast float %3710, %3621
  %3718 = fmul fast float %3709, %3632
  %3719 = fmul fast float %3708, %3643
  br label %3720

; <label>:3720                                    ; preds = %3704, %3515
  %3721 = phi float [ %3719, %3704 ], [ %3521, %3515 ]
  %3722 = phi float [ %3718, %3704 ], [ %3520, %3515 ]
  %3723 = phi float [ %3717, %3704 ], [ %3519, %3515 ]
  %3724 = phi float [ %3716, %3704 ], [ %3518, %3515 ]
  %3725 = phi float [ %3715, %3704 ], [ %3517, %3515 ]
  %3726 = phi float [ %3714, %3704 ], [ %3516, %3515 ]
  %3727 = fmul fast float %3726, %2669
  %3728 = fmul fast float %3725, %2669
  %3729 = fmul fast float %3724, %2669
  %3730 = fmul fast float %3723, %2963
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3723, float %3722, float %3721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3727, float %3728, float %3729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = select i1 %167, float %3731, float %3723
  %3734 = select i1 %167, float %3731, float %3722
  %3735 = select i1 %167, float 1.000000e+00, float %3721
  %3736 = select i1 %167, float %3732, float %3727
  %3737 = select i1 %167, float 0.000000e+00, float %3728
  %3738 = select i1 %167, float 0.000000e+00, float %3729
  %3739 = fmul fast float %3733, %2957
  %3740 = fmul fast float %3734, %2958
  %3741 = fmul fast float %3735, %2959
  %3742 = fadd fast float %3739, %3736
  %3743 = fadd fast float %3740, %3737
  %3744 = fadd fast float %3738, %3741
  %3745 = fmul fast float %3733, %2960
  %3746 = fmul fast float %3734, %2961
  %3747 = fmul fast float %3735, %2962
  %3748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.i32 %3748, 0
  %3750 = icmp eq i32 %3749, 0
  br i1 %3750, label %4118, label %3751, !dx.controlflow.hints !139

; <label>:3751                                    ; preds = %3720
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 3
  %3755 = fmul fast float %3753, %59
  %3756 = fmul fast float %3754, %60
  %3757 = fmul fast float %3755, 2.000000e+00
  %3758 = fmul fast float %3756, 2.000000e+00
  %3759 = fsub fast float 1.000000e+00, %3757
  %3760 = fsub fast float 1.000000e+00, %3758
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3765 = fmul fast float %3759, %3762
  %3766 = fmul fast float %3759, %3763
  %3767 = fmul fast float %3759, %3764
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3772 = fmul fast float %3760, %3769
  %3773 = fmul fast float %3760, %3770
  %3774 = fmul fast float %3760, %3771
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3779 = fadd fast float %3772, %3776
  %3780 = fadd fast float %3779, %3765
  %3781 = fadd fast float %3773, %3777
  %3782 = fadd fast float %3781, %3766
  %3783 = fadd fast float %3774, %3778
  %3784 = fadd fast float %3783, %3767
  %3785 = fmul fast float %3780, %2956
  %3786 = fmul fast float %3782, %2956
  %3787 = fmul fast float %3784, %2956
  %3788 = fmul fast float %3785, %3785
  %3789 = fmul fast float %3786, %3786
  %3790 = fadd fast float %3788, %3789
  %3791 = fmul fast float %3787, %3787
  %3792 = fadd fast float %3790, %3791
  %3793 = call float @dx.op.unary.f32(i32 24, float %3792)  ; Sqrt(value)
  %3794 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %3795 = fsub fast float %3793, %3794
  %3796 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %3797 = fmul fast float %3795, %3796
  %3798 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3799 = fadd fast float %3798, -5.000000e-01
  %3800 = fmul fast float %3799, 2.000000e+00
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = call float @dx.op.binary.f32(i32 36, float %3802, float %3800)  ; FMin(a,b)
  %3804 = fsub fast float -0.000000e+00, %3802
  %3805 = fcmp fast ogt float %3803, %3804
  br i1 %3805, label %3806, label %4118, !dx.controlflow.hints !140

; <label>:3806                                    ; preds = %3751
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 3
  %3809 = fcmp fast ogt float %3808, 0.000000e+00
  br i1 %3809, label %3810, label %3885, !dx.controlflow.hints !141

; <label>:3810                                    ; preds = %3806
  %3811 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %3812 = extractvalue %dx.types.Dimensions %3811, 0
  %3813 = sitofp i32 %3812 to float
  %3814 = extractvalue %dx.types.Dimensions %3811, 1
  %3815 = sitofp i32 %3814 to float
  %3816 = fmul fast float %3755, %3813
  %3817 = fmul fast float %3756, %3815
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 1
  %3820 = fsub fast float -0.000000e+00, %3819
  %3821 = fptoui float %3820 to i32
  %3822 = fptoui float %3816 to i32
  %3823 = fptoui float %3817 to i32
  %3824 = and i32 %3821, 31
  %3825 = lshr i32 %3822, %3824
  %3826 = lshr i32 %3823, %3824
  %3827 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %3821, i32 %3825, i32 %3826, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = fcmp fast olt float %3828, -1.000000e+00
  %3830 = fcmp fast ogt float %3828, -1.000000e+00
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 1
  %3833 = select i1 %3830, float %3832, float 1.000000e+00
  %3834 = fadd fast float %3828, 1.000000e+00
  %3835 = fmul fast float %3833, %3834
  %3836 = call float @dx.op.unary.f32(i32 6, float %3835)  ; FAbs(value)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3831, 3
  %3838 = fcmp fast oge float %3836, %3837
  %3839 = select i1 %3838, float 0x4197782600000000, float %3836
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.CBufRet.f32 %3840, 2
  %3844 = select i1 %3829, float %3841, float %3762
  %3845 = select i1 %3829, float %3842, float %3763
  %3846 = select i1 %3829, float %3843, float %3764
  %3847 = fmul fast float %3844, %3759
  %3848 = fmul fast float %3845, %3759
  %3849 = fmul fast float %3846, %3759
  %3850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %3851 = extractvalue %dx.types.CBufRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.CBufRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.CBufRet.f32 %3850, 2
  %3854 = select i1 %3829, float %3851, float %3769
  %3855 = select i1 %3829, float %3852, float %3770
  %3856 = select i1 %3829, float %3853, float %3771
  %3857 = fmul fast float %3854, %3760
  %3858 = fmul fast float %3855, %3760
  %3859 = fmul fast float %3856, %3760
  %3860 = fadd fast float %3857, %3847
  %3861 = fadd fast float %3858, %3848
  %3862 = fadd fast float %3859, %3849
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.CBufRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.CBufRet.f32 %3863, 2
  %3867 = select i1 %3829, float %3864, float %3776
  %3868 = select i1 %3829, float %3865, float %3777
  %3869 = select i1 %3829, float %3866, float %3778
  %3870 = fadd fast float %3860, %3867
  %3871 = fadd fast float %3861, %3868
  %3872 = fadd fast float %3862, %3869
  %3873 = fmul fast float %3870, %3839
  %3874 = fmul fast float %3871, %3839
  %3875 = fmul fast float %3872, %3839
  %3876 = fmul fast float %3873, %3873
  %3877 = fmul fast float %3874, %3874
  %3878 = fadd fast float %3876, %3877
  %3879 = fmul fast float %3875, %3875
  %3880 = fadd fast float %3878, %3879
  %3881 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %3882 = fsub fast float %3881, %3794
  %3883 = fmul fast float %3882, %3796
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  br label %3885

; <label>:3885                                    ; preds = %3810, %3806
  %3886 = phi float [ %3884, %3810 ], [ 1.000000e+00, %3806 ]
  %3887 = fmul fast float %3803, 5.000000e-01
  %3888 = fadd fast float %3887, 5.000000e-01
  %3889 = call float @dx.op.unary.f32(i32 22, float %3888)  ; Frc(value)
  %3890 = call float @dx.op.unary.f32(i32 27, float %3889)  ; Round_ni(value)
  %3891 = call float @dx.op.unary.f32(i32 22, float %3889)  ; Frc(value)
  %3892 = fmul fast float %3891, 2.000000e+00
  %3893 = fadd fast float %3892, -1.000000e+00
  %3894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %3755, float %3756, float %3890, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3897 = extractvalue %dx.types.ResRet.f32 %3894, 2
  %3898 = extractvalue %dx.types.ResRet.f32 %3894, 3
  %3899 = fadd fast float %3895, -5.000000e-01
  %3900 = fadd fast float %3897, -5.000000e-01
  %3901 = fmul fast float %3899, 0xBFD5555560000000
  %3902 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3900, float %3901)  ; FMad(a,b,c)
  %3903 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3896, float 0.000000e+00)  ; FMad(a,b,c)
  %3904 = fadd fast float %3903, %3898
  %3905 = fmul fast float %3899, -7.500000e-01
  %3906 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3900, float %3905)  ; FMad(a,b,c)
  %3907 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3896, float 0.000000e+00)  ; FMad(a,b,c)
  %3908 = fadd fast float %3907, %3898
  %3909 = call float @dx.op.binary.f32(i32 35, float %3902, float -1.000000e+00)  ; FMax(a,b)
  %3910 = call float @dx.op.binary.f32(i32 35, float %3904, float -1.000000e+00)  ; FMax(a,b)
  %3911 = call float @dx.op.binary.f32(i32 35, float %3906, float -1.000000e+00)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 35, float %3908, float -1.000000e+00)  ; FMax(a,b)
  %3913 = call float @dx.op.binary.f32(i32 36, float %3909, float 1.000000e+00)  ; FMin(a,b)
  %3914 = call float @dx.op.binary.f32(i32 36, float %3910, float 1.000000e+00)  ; FMin(a,b)
  %3915 = call float @dx.op.binary.f32(i32 36, float %3911, float 1.000000e+00)  ; FMin(a,b)
  %3916 = call float @dx.op.binary.f32(i32 36, float %3912, float 1.000000e+00)  ; FMin(a,b)
  %3917 = fcmp fast olt float %3913, 0x3FEFFF8020000000
  br i1 %3917, label %3918, label %4033, !dx.controlflow.hints !142

; <label>:3918                                    ; preds = %3885
  %3919 = extractvalue %dx.types.CBufRet.f32 %3801, 3
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.CBufRet.f32 %3920, 3
  %3925 = fsub fast float %3921, %3913
  %3926 = fsub fast float %3922, %3914
  %3927 = fsub fast float %3923, %3915
  %3928 = fsub fast float %3924, %3916
  %3929 = fmul fast float %3925, %3919
  %3930 = fmul fast float %3926, %3919
  %3931 = fmul fast float %3927, %3919
  %3932 = fmul fast float %3928, %3919
  %3933 = fadd fast float %3929, %3913
  %3934 = fadd fast float %3930, %3914
  %3935 = fsub fast float -0.000000e+00, %3934
  %3936 = fadd fast float %3931, %3915
  %3937 = fadd fast float %3932, %3916
  %3938 = fmul fast float %3933, %3933
  %3939 = fsub fast float %3934, %3938
  %3940 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3939)  ; FMax(a,b)
  %3941 = fdiv fast float 1.000000e+00, %3940
  %3942 = fmul fast float %3934, %3933
  %3943 = fsub fast float %3936, %3942
  %3944 = fsub fast float %3893, %3933
  %3945 = fmul fast float %3893, %3893
  %3946 = fsub fast float %3945, %3934
  %3947 = fmul fast float %3944, %3941
  %3948 = fmul fast float %3947, %3943
  %3949 = fsub fast float %3946, %3948
  %3950 = fmul fast float %3934, %3934
  %3951 = fsub fast float %3937, %3950
  %3952 = fmul fast float %3943, %3943
  %3953 = fmul fast float %3952, %3941
  %3954 = fsub fast float %3951, %3953
  %3955 = fdiv fast float %3949, %3954
  %3956 = fmul fast float %3943, %3955
  %3957 = fsub fast float %3944, %3956
  %3958 = fmul fast float %3957, %3941
  %3959 = fmul fast float %3958, %3933
  %3960 = fsub fast float 1.000000e+00, %3959
  %3961 = fmul fast float %3934, %3955
  %3962 = fsub fast float %3960, %3961
  %3963 = fmul fast float %3958, %3958
  %3964 = fmul fast float %3955, 4.000000e+00
  %3965 = fmul fast float %3964, %3962
  %3966 = fsub fast float %3963, %3965
  %3967 = call float @dx.op.unary.f32(i32 24, float %3966)  ; Sqrt(value)
  %3968 = fcmp fast oge float %3958, 0.000000e+00
  %3969 = fsub fast float -0.000000e+00, %3967
  %3970 = select i1 %3968, float %3969, float %3967
  %3971 = fsub fast float %3970, %3958
  %3972 = fdiv fast float %3971, %3955
  %3973 = fdiv fast float %3962, %3971
  %3974 = fmul fast float %3972, 5.000000e-01
  %3975 = fmul fast float %3973, 2.000000e+00
  %3976 = select i1 %3968, float %3974, float %3975
  %3977 = select i1 %3968, float %3975, float %3974
  %3978 = call float @dx.op.binary.f32(i32 35, float %3976, float %3977)  ; FMax(a,b)
  %3979 = call float @dx.op.binary.f32(i32 36, float %3976, float %3977)  ; FMin(a,b)
  %3980 = fcmp fast ogt float %3893, %3979
  br i1 %3980, label %3981, label %3991

; <label>:3981                                    ; preds = %3918
  %3982 = fsub fast float %3893, %3979
  %3983 = fsub fast float %3978, %3979
  %3984 = fmul fast float %3982, %3983
  %3985 = fmul fast float %3978, %3893
  %3986 = fadd fast float %3978, %3893
  %3987 = fmul fast float %3986, %3933
  %3988 = fadd fast float %3985, %3934
  %3989 = fsub fast float %3988, %3987
  %3990 = fdiv fast float %3989, %3984
  br label %3991

; <label>:3991                                    ; preds = %3981, %3918
  %3992 = phi float [ %3990, %3981 ], [ 0.000000e+00, %3918 ]
  %3993 = fcmp fast ogt float %3893, %3978
  %3994 = fsub fast float %3893, %3978
  br i1 %3993, label %3995, label %4005

; <label>:3995                                    ; preds = %3991
  %3996 = fsub fast float %3978, %3979
  %3997 = fmul fast float %3996, %3994
  %3998 = fmul fast float %3979, %3893
  %3999 = fadd fast float %3979, %3893
  %4000 = fmul fast float %3999, %3933
  %4001 = fsub fast float %3935, %3998
  %4002 = fadd fast float %4001, %4000
  %4003 = fdiv fast float %4002, %3997
  %4004 = fadd fast float %4003, %3992
  br label %4005

; <label>:4005                                    ; preds = %3995, %3991
  %4006 = phi float [ %4004, %3995 ], [ %3992, %3991 ]
  %4007 = fsub fast float %3893, %3979
  %4008 = fmul fast float %4007, %3994
  %4009 = fmul fast float %3979, %3978
  %4010 = fadd fast float %3979, %3978
  %4011 = fmul fast float %4010, %3933
  %4012 = fadd fast float %4009, %3934
  %4013 = fsub fast float %4012, %4011
  %4014 = fdiv fast float %4013, %4008
  %4015 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4016 = fcmp fast oeq float %2682, 0.000000e+00
  %4017 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %4018 = fcmp fast oeq float %4017, 0.000000e+00
  %4019 = or i1 %4016, %4018
  %4020 = fmul fast float %4017, 2.000000e+00
  %4021 = fadd fast float %3802, %3803
  %4022 = fdiv fast float %4021, %4020
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %4023, 2.000000e+00
  %4025 = fsub fast float 3.000000e+00, %4024
  %4026 = fmul fast float %4023, %4023
  %4027 = fmul fast float %4026, %4025
  %4028 = select i1 %4019, float 1.000000e+00, float %4027
  %4029 = fmul fast float %4014, %2682
  %4030 = fadd fast float %4015, %4029
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = fmul fast float %4028, %4031
  br label %4033

; <label>:4033                                    ; preds = %4005, %3885
  %4034 = phi float [ %4032, %4005 ], [ 0.000000e+00, %3885 ]
  %4035 = fsub fast float 1.000000e+00, %4034
  %4036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %3755, float %3756, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.i32 %4038, 2
  %4040 = icmp eq i32 %4039, 0
  br i1 %4040, label %4046, label %4041

; <label>:4041                                    ; preds = %4033
  %4042 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4043 = fadd fast float %4037, -1.000000e+00
  %4044 = fmul fast float %4042, %4043
  %4045 = fadd fast float %4044, 1.000000e+00
  br label %4046

; <label>:4046                                    ; preds = %4041, %4033
  %4047 = phi float [ %4045, %4041 ], [ %4035, %4033 ]
  br i1 %3809, label %4048, label %4066

; <label>:4048                                    ; preds = %4046
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4051 = fsub fast float %3886, %4050
  %4052 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4053 = fsub fast float %3886, %3808
  %4054 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4055 = fsub fast float %4052, %4054
  %4056 = fsub fast float %3888, %4054
  %4057 = fdiv fast float %4056, %4055
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4059 = fmul fast float %4058, 2.000000e+00
  %4060 = fsub fast float 3.000000e+00, %4059
  %4061 = fsub fast float %4037, %4047
  %4062 = fmul fast float %4058, %4058
  %4063 = fmul fast float %4062, %4061
  %4064 = fmul fast float %4063, %4060
  %4065 = fadd fast float %4064, %4047
  br label %4066

; <label>:4066                                    ; preds = %4048, %4046
  %4067 = phi float [ %4065, %4048 ], [ %4047, %4046 ]
  %4068 = call float @dx.op.binary.f32(i32 35, float %4037, float %4067)  ; FMax(a,b)
  %4069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.i32 %4069, 2
  %4071 = and i32 %4070, 1
  %4072 = icmp eq i32 %4071, 0
  %4073 = fcmp fast une float %4068, 1.000000e+00
  %4074 = and i1 %4073, %4072
  br i1 %4074, label %4075, label %4094

; <label>:4075                                    ; preds = %4066
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %3755, float %3756, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.ResRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.ResRet.f32 %4076, 2
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 1
  %4082 = fmul fast float %4081, %4077
  %4083 = fmul fast float %4081, %4078
  %4084 = fmul fast float %4081, %4079
  %4085 = fcmp fast ogt float %4037, 0x3FEFFF2E40000000
  %4086 = fsub fast float 1.000000e+00, %4068
  %4087 = fsub fast float 1.000000e+00, %4037
  %4088 = fdiv fast float %4086, %4087
  %4089 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4090 = select i1 %4085, float 0.000000e+00, float %4089
  %4091 = fmul fast float %4082, %4090
  %4092 = fmul fast float %4083, %4090
  %4093 = fmul fast float %4084, %4090
  br label %4094

; <label>:4094                                    ; preds = %4075, %4066
  %4095 = phi float [ 0.000000e+00, %4066 ], [ %4091, %4075 ]
  %4096 = phi float [ 0.000000e+00, %4066 ], [ %4092, %4075 ]
  %4097 = phi float [ 0.000000e+00, %4066 ], [ %4093, %4075 ]
  %4098 = fmul fast float %4095, %2669
  %4099 = fmul fast float %4096, %2669
  %4100 = fmul fast float %4097, %2669
  %4101 = fmul fast float %4068, %3730
  %4102 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4068, float %4068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4103 = call float @dx.op.dot3.f32(i32 55, float %4098, float %4099, float %4100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4104 = select i1 %167, float %4102, float %4068
  %4105 = select i1 %167, float 1.000000e+00, float %4068
  %4106 = select i1 %167, float %4103, float %4098
  %4107 = select i1 %167, float 0.000000e+00, float %4099
  %4108 = select i1 %167, float 0.000000e+00, float %4100
  %4109 = fmul fast float %4104, %3742
  %4110 = fmul fast float %4104, %3743
  %4111 = fmul fast float %4105, %3744
  %4112 = fadd fast float %4109, %4106
  %4113 = fadd fast float %4110, %4107
  %4114 = fadd fast float %4108, %4111
  %4115 = fmul fast float %4104, %3745
  %4116 = fmul fast float %4104, %3746
  %4117 = fmul fast float %4105, %3747
  br label %4118

; <label>:4118                                    ; preds = %4094, %3751, %3720, %2952
  %4119 = phi float [ %2957, %2952 ], [ %3742, %3720 ], [ %4112, %4094 ], [ %3742, %3751 ]
  %4120 = phi float [ %2958, %2952 ], [ %3743, %3720 ], [ %4113, %4094 ], [ %3743, %3751 ]
  %4121 = phi float [ %2959, %2952 ], [ %3744, %3720 ], [ %4114, %4094 ], [ %3744, %3751 ]
  %4122 = phi float [ %2960, %2952 ], [ %3745, %3720 ], [ %4115, %4094 ], [ %3745, %3751 ]
  %4123 = phi float [ %2961, %2952 ], [ %3746, %3720 ], [ %4116, %4094 ], [ %3746, %3751 ]
  %4124 = phi float [ %2962, %2952 ], [ %3747, %3720 ], [ %4117, %4094 ], [ %3747, %3751 ]
  %4125 = phi float [ %2963, %2952 ], [ %3730, %3720 ], [ %4101, %4094 ], [ %3730, %3751 ]
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 2
  %4128 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4129 = fmul fast float %4127, %59
  %4130 = fmul fast float %4128, %60
  %4131 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4132 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4133 = select i1 %2692, i32 2, i32 0
  %4134 = or i32 %4133, 1
  %4135 = uitofp i32 %4134 to float
  %4136 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4131, float %4132, float %4135, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.ResRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.ResRet.f32 %4136, 2
  %4140 = extractvalue %dx.types.ResRet.f32 %4136, 3
  %4141 = add nuw nsw i32 %4133, 2
  %4142 = uitofp i32 %4141 to float
  %4143 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4131, float %4132, float %4142, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = extractvalue %dx.types.ResRet.f32 %4143, 3
  %4148 = call float @dx.op.binary.f32(i32 35, float %4138, float %4139)  ; FMax(a,b)
  %4149 = call float @dx.op.binary.f32(i32 35, float %4137, float %4148)  ; FMax(a,b)
  %4150 = call float @dx.op.binary.f32(i32 35, float %4149, float %4140)  ; FMax(a,b)
  %4151 = call float @dx.op.binary.f32(i32 36, float %4145, float %4146)  ; FMin(a,b)
  %4152 = call float @dx.op.binary.f32(i32 36, float %4144, float %4151)  ; FMin(a,b)
  %4153 = call float @dx.op.binary.f32(i32 36, float %4152, float %4147)  ; FMin(a,b)
  %4154 = fmul fast float %4150, 2.550000e+02
  %4155 = fadd fast float %4154, 0x3F70101020000000
  %4156 = fptoui float %4155 to i32
  %4157 = fmul fast float %4153, 2.550000e+02
  %4158 = fadd fast float %4157, 0x3F70101020000000
  %4159 = fptoui float %4158 to i32
  %4160 = icmp ult i32 %4156, %4159
  br i1 %4160, label %4161, label %4330

; <label>:4161                                    ; preds = %4118
  %4162 = fcmp fast ogt float %49, 9.843750e-01
  %4163 = fadd fast float %2956, -4.000000e+00
  %4164 = select i1 %4162, float -4.000000e+00, float %4163
  %4165 = call float @dx.op.binary.f32(i32 35, float %4164, float 0.000000e+00)  ; FMax(a,b)
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = fadd fast float %4167, %4165
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4170 = fmul fast float %4168, %4169
  %4171 = call float @dx.op.unary.f32(i32 23, float %4170)  ; Log(value)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4173 = fmul fast float %4172, %4171
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 2
  %4176 = fmul fast float %4173, %4175
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = uitofp i32 %4156 to float
  %4179 = uitofp i32 %4159 to float
  %4180 = fadd fast float %4178, 5.000000e-01
  %4181 = fadd fast float %4179, 5.000000e-01
  %4182 = fmul fast float %4175, %4180
  %4183 = fmul fast float %4175, %4181
  %4184 = fadd fast float %4182, 0x3F0FFB4800000000
  %4185 = fadd fast float %4183, 0xBF0FFB4800000000
  %4186 = call float @dx.op.binary.f32(i32 35, float %4177, float %4184)  ; FMax(a,b)
  %4187 = call float @dx.op.binary.f32(i32 36, float %4186, float %4185)  ; FMin(a,b)
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4192 = select i1 %2692, float %4191, float 0.000000e+00
  %4193 = fmul fast float %4189, %4187
  %4194 = fadd fast float %4192, %4193
  %4195 = fadd fast float %4192, %4190
  %4196 = fsub fast float %4189, %4190
  %4197 = fadd fast float %4196, %4192
  %4198 = call float @dx.op.binary.f32(i32 35, float %4194, float %4195)  ; FMax(a,b)
  %4199 = call float @dx.op.binary.f32(i32 36, float %4198, float %4197)  ; FMin(a,b)
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %4131, float %4132, float %4199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.i32 %4204, 0
  %4206 = extractvalue %dx.types.CBufRet.i32 %4204, 1
  %4207 = uitofp i32 %4205 to float
  %4208 = uitofp i32 %4206 to float
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.CBufRet.f32 %4209, 1
  %4212 = fmul fast float %4207, %4131
  %4213 = fmul fast float %4208, %4132
  %4214 = fadd fast float %4212, -5.000000e-01
  %4215 = fadd fast float %4213, -5.000000e-01
  %4216 = call float @dx.op.unary.f32(i32 22, float %4214)  ; Frc(value)
  %4217 = call float @dx.op.unary.f32(i32 22, float %4215)  ; Frc(value)
  %4218 = fmul fast float %4216, %4216
  %4219 = fmul fast float %4218, %4216
  %4220 = fsub fast float 3.000000e+00, %4216
  %4221 = fmul fast float %4218, %4220
  %4222 = fmul fast float %4216, 3.000000e+00
  %4223 = fmul fast float %4219, 3.000000e+00
  %4224 = fmul fast float %4218, 6.000000e+00
  %4225 = fsub fast float %4223, %4224
  %4226 = fadd fast float %4225, 4.000000e+00
  %4227 = fmul fast float %4226, 0x3FC5555560000000
  %4228 = fmul fast float %4219, -3.000000e+00
  %4229 = fadd fast float %4218, %4216
  %4230 = fmul fast float %4229, 3.000000e+00
  %4231 = fadd fast float %4228, 1.000000e+00
  %4232 = fadd fast float %4231, %4230
  %4233 = fmul fast float %4219, 0x3FC5555560000000
  %4234 = fmul fast float %4217, %4217
  %4235 = fmul fast float %4234, %4217
  %4236 = fsub fast float 3.000000e+00, %4217
  %4237 = fmul fast float %4234, %4236
  %4238 = fmul fast float %4217, 3.000000e+00
  %4239 = fmul fast float %4235, 3.000000e+00
  %4240 = fmul fast float %4234, 6.000000e+00
  %4241 = fsub fast float %4239, %4240
  %4242 = fadd fast float %4241, 4.000000e+00
  %4243 = fmul fast float %4242, 0x3FC5555560000000
  %4244 = fmul fast float %4235, -3.000000e+00
  %4245 = fadd fast float %4234, %4217
  %4246 = fmul fast float %4245, 3.000000e+00
  %4247 = fadd fast float %4244, 1.000000e+00
  %4248 = fadd fast float %4247, %4246
  %4249 = fmul fast float %4235, 0x3FC5555560000000
  %4250 = fadd fast float %4216, 1.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4222
  %4252 = fadd fast float %4251, %4221
  %4253 = fadd fast float %4252, %4226
  %4254 = fmul fast float %4253, 0x3FC5555560000000
  %4255 = fdiv fast float %4227, %4254
  %4256 = fsub fast float %4250, %4255
  %4257 = fsub fast float 1.000000e+00, %4216
  %4258 = fadd fast float %4232, %4219
  %4259 = fmul fast float %4258, 0x3FC5555560000000
  %4260 = fdiv fast float %4233, %4259
  %4261 = fadd fast float %4257, %4260
  %4262 = fadd fast float %4217, 1.000000e+00
  %4263 = fsub fast float 1.000000e+00, %4238
  %4264 = fadd fast float %4263, %4237
  %4265 = fadd fast float %4264, %4242
  %4266 = fmul fast float %4265, 0x3FC5555560000000
  %4267 = fdiv fast float %4243, %4266
  %4268 = fsub fast float %4262, %4267
  %4269 = fsub fast float 1.000000e+00, %4217
  %4270 = fadd fast float %4248, %4235
  %4271 = fmul fast float %4270, 0x3FC5555560000000
  %4272 = fdiv fast float %4249, %4271
  %4273 = fadd fast float %4272, %4269
  %4274 = fmul fast float %4256, %4210
  %4275 = fsub fast float %4131, %4274
  %4276 = fmul fast float %4261, %4210
  %4277 = fadd fast float %4276, %4131
  %4278 = fmul fast float %4273, %4211
  %4279 = fadd fast float %4278, %4132
  %4280 = fmul fast float %4268, %4211
  %4281 = fsub fast float %4132, %4280
  %4282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4275, float %4281, float %4199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.ResRet.f32 %4282, 1
  %4285 = extractvalue %dx.types.ResRet.f32 %4282, 2
  %4286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4277, float %4281, float %4199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.ResRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.ResRet.f32 %4286, 2
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4275, float %4279, float %4199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4277, float %4279, float %4199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4297 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4298 = fsub fast float %4291, %4283
  %4299 = fsub fast float %4292, %4284
  %4300 = fsub fast float %4293, %4285
  %4301 = fmul fast float %4298, %4271
  %4302 = fmul fast float %4299, %4271
  %4303 = fmul fast float %4300, %4271
  %4304 = fadd fast float %4301, %4283
  %4305 = fadd fast float %4302, %4284
  %4306 = fadd fast float %4303, %4285
  %4307 = fsub fast float %4295, %4287
  %4308 = fsub fast float %4296, %4288
  %4309 = fsub fast float %4297, %4289
  %4310 = fmul fast float %4307, %4271
  %4311 = fmul fast float %4308, %4271
  %4312 = fmul fast float %4309, %4271
  %4313 = fsub fast float %4287, %4304
  %4314 = fadd fast float %4313, %4310
  %4315 = fsub fast float %4288, %4305
  %4316 = fadd fast float %4315, %4311
  %4317 = fsub fast float %4289, %4306
  %4318 = fadd fast float %4317, %4312
  %4319 = fmul fast float %4314, %4259
  %4320 = fmul fast float %4316, %4259
  %4321 = fmul fast float %4318, %4259
  %4322 = fadd fast float %4319, %4304
  %4323 = fadd fast float %4320, %4305
  %4324 = fadd fast float %4321, %4306
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4327 = fmul fast float %4322, %4326
  %4328 = fmul fast float %4323, %4326
  %4329 = fmul fast float %4324, %4326
  br label %4330

; <label>:4330                                    ; preds = %4161, %4118
  %4331 = phi float [ %4201, %4161 ], [ 1.000000e+00, %4118 ]
  %4332 = phi float [ %4202, %4161 ], [ 1.000000e+00, %4118 ]
  %4333 = phi float [ %4203, %4161 ], [ 1.000000e+00, %4118 ]
  %4334 = phi float [ %4327, %4161 ], [ 0.000000e+00, %4118 ]
  %4335 = phi float [ %4328, %4161 ], [ 0.000000e+00, %4118 ]
  %4336 = phi float [ %4329, %4161 ], [ 0.000000e+00, %4118 ]
  %4337 = fmul fast float %4334, %2669
  %4338 = fmul fast float %4335, %2669
  %4339 = fmul fast float %4336, %2669
  %4340 = fmul fast float %4331, %4125
  %4341 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4342 = call float @dx.op.dot3.f32(i32 55, float %4337, float %4338, float %4339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = select i1 %167, float %4341, float %4331
  %4344 = select i1 %167, float %4341, float %4332
  %4345 = select i1 %167, float 1.000000e+00, float %4333
  %4346 = select i1 %167, float %4342, float %4337
  %4347 = select i1 %167, float 0.000000e+00, float %4338
  %4348 = select i1 %167, float 0.000000e+00, float %4339
  %4349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.i32 %4349, 3
  %4351 = and i32 %4350, 3
  %4352 = icmp ne i32 %4351, 0
  %4353 = and i32 %4350, 4
  %4354 = icmp ne i32 %4353, 0
  %4355 = and i1 %4352, %4354
  %4356 = and i1 %167, %4355
  br i1 %4356, label %4357, label %4363

; <label>:4357                                    ; preds = %4330
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 1
  %4360 = fadd fast float %4340, -1.000000e+00
  %4361 = fmul fast float %4359, %4360
  %4362 = fadd fast float %4361, 1.000000e+00
  br label %4363

; <label>:4363                                    ; preds = %4357, %4330
  %4364 = phi float [ %4362, %4357 ], [ %4340, %4330 ]
  %4365 = fadd fast float %4122, %4119
  %4366 = fmul fast float %4343, %4365
  %4367 = fadd fast float %4366, %4346
  %4368 = fadd fast float %4123, %4120
  %4369 = fmul fast float %4344, %4368
  %4370 = fadd fast float %4369, %4347
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  br i1 %167, label %4373, label %4397

; <label>:4373                                    ; preds = %4363
  %4374 = fadd fast float %4367, %4370
  %4375 = fmul fast float %4372, %4374
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4378 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %4379 = fsub fast float %2679, %2673
  %4380 = fadd fast float %4379, %2680
  %4381 = fsub fast float %4380, %4378
  %4382 = extractvalue %dx.types.CBufRet.f32 %2674, 2
  %4383 = fmul fast float %4381, %4382
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fsub fast float %4384, %4377
  %4386 = fmul fast float %4385, %4364
  %4387 = fadd fast float %4386, %4377
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = fsub fast float %4387, %4389
  %4391 = fmul fast float %4390, 1.000000e+01
  %4392 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4393 = fsub fast float %1289, %2669
  %4394 = fmul fast float %4392, %4393
  %4395 = fadd fast float %4394, %2669
  %4396 = fmul fast float %4395, %4387
  br label %4421

; <label>:4397                                    ; preds = %4363
  %4398 = fadd fast float %4124, %4121
  %4399 = fmul fast float %4345, %4398
  %4400 = fadd fast float %4399, %4348
  %4401 = fmul fast float %4372, %4367
  %4402 = fmul fast float %4372, %4370
  %4403 = fmul fast float %4372, %4400
  %4404 = call float @dx.op.binary.f32(i32 35, float %4402, float %4403)  ; FMax(a,b)
  %4405 = call float @dx.op.binary.f32(i32 35, float %4401, float %4404)  ; FMax(a,b)
  %4406 = call float @dx.op.binary.f32(i32 35, float %4405, float %2669)  ; FMax(a,b)
  %4407 = fcmp fast ugt float %4406, 0x3F10000000000000
  br i1 %4407, label %4409, label %4408

; <label>:4408                                    ; preds = %4397
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4409

; <label>:4409                                    ; preds = %4408, %4397
  %4410 = add i32 %37, 116
  %4411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.i32 %4411, 0
  %4413 = and i32 %4412, 32
  %4414 = icmp eq i32 %4413, 0
  br i1 %4414, label %4421, label %4415

; <label>:4415                                    ; preds = %4409
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 0
  %4418 = fmul fast float %4417, 0x3FE99999A0000000
  %4419 = fadd fast float %4417, %4401
  %4420 = fadd fast float %4418, %4403
  br label %4421

; <label>:4421                                    ; preds = %4415, %4409, %4373
  %4422 = phi float [ %4375, %4373 ], [ %4419, %4415 ], [ %4401, %4409 ]
  %4423 = phi float [ %4396, %4373 ], [ %4402, %4415 ], [ %4402, %4409 ]
  %4424 = phi float [ %4395, %4373 ], [ %4420, %4415 ], [ %4403, %4409 ]
  %4425 = phi float [ %4395, %4373 ], [ %2669, %4415 ], [ %2669, %4409 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4426 = call float @dx.op.binary.f32(i32 36, float %4422, float 3.225500e+04)  ; FMin(a,b)
  %4427 = call float @dx.op.binary.f32(i32 36, float %4423, float 3.225500e+04)  ; FMin(a,b)
  %4428 = call float @dx.op.binary.f32(i32 36, float %4424, float 3.225500e+04)  ; FMin(a,b)
  %4429 = call float @dx.op.binary.f32(i32 36, float %4425, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4427)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4428)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %4429)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
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
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!41 = !{!42, !43, !44, !45, !46, !47, !48}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!49 = !{[23 x i32] [i32 21, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !67}
!51 = !{!52, !65, null}
!52 = !{!53, !56, !58, !59, !61, !62, !64}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 15}
!56 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 1, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!59 = !{i32 3, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 3, i8 0, !60}
!60 = !{i32 3, i32 7}
!61 = !{i32 4, !"TANGENT", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 4, i8 0, !55}
!62 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !54, i8 1, i32 1, i8 1, i32 5, i8 0, !63}
!63 = !{i32 3, i32 1}
!64 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!67 = !{i32 0, i64 16}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = !{!74, !74, i64 0}
!74 = !{!"int", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C/C++ TBAA"}
!77 = !{!78, !80, !82, !84}
!78 = distinct !{!78, !79, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!79 = distinct !{!79, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!80 = distinct !{!80, !81, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!81 = distinct !{!81, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!82 = distinct !{!82, !83, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!83 = distinct !{!83, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!84 = distinct !{!84, !85, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!85 = distinct !{!85, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !75, i64 0}
!96 = !{!97, !99, !101, !102, !104, !105, !106, !108, !109, !110}
!97 = distinct !{!97, !98, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!98 = distinct !{!98, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!99 = distinct !{!99, !100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!100 = distinct !{!100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!101 = distinct !{!101, !100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!102 = distinct !{!102, !103, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!103 = distinct !{!103, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!104 = distinct !{!104, !103, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!105 = distinct !{!105, !103, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!106 = distinct !{!106, !107, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!107 = distinct !{!107, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!108 = distinct !{!108, !107, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!109 = distinct !{!109, !107, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!110 = distinct !{!110, !111, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!111 = distinct !{!111, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"\01?sort@@YAXAIAM00@Z: %c"}
!114 = distinct !{!114, !"\01?sort@@YAXAIAM00@Z"}
!115 = !{!116, !117, !97, !99, !101, !102, !104, !105, !106, !108, !109, !110}
!116 = distinct !{!116, !114, !"\01?sort@@YAXAIAM00@Z: %a"}
!117 = distinct !{!117, !114, !"\01?sort@@YAXAIAM00@Z: %b"}
!118 = !{!117}
!119 = !{!116, !113, !97, !99, !101, !102, !104, !105, !106, !108, !109, !110}
!120 = !{!116}
!121 = !{!117, !113, !97, !99, !101, !102, !104, !105, !106, !108, !109, !110}
!122 = !{!123}
!123 = distinct !{!123, !124, !"\01?sort@@YAXAIAM00@Z: %c"}
!124 = distinct !{!124, !"\01?sort@@YAXAIAM00@Z"}
!125 = !{!126, !127, !97, !99, !101, !102, !104, !105, !106, !108, !109, !110}
!126 = distinct !{!126, !124, !"\01?sort@@YAXAIAM00@Z: %a"}
!127 = distinct !{!127, !124, !"\01?sort@@YAXAIAM00@Z: %b"}
!128 = !{!127}
!129 = !{!126, !123, !97, !99, !101, !102, !104, !105, !106, !108, !109, !110}
!130 = !{!126}
!131 = !{!127, !123, !97, !99, !101, !102, !104, !105, !106, !108, !109, !110}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}

