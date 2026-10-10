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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: fe10d310a6ef1eedbe15047bf9cfa9bc
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
; Number of inputs: 29, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24, 25, 26, 27, 28 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
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
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %123 = fmul fast float %72, 5.000000e-01
  %124 = fmul fast float %73, 5.000000e-01
  %125 = fptosi float %123 to i32
  %126 = fptosi float %124 to i32
  %127 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %125, i32 %126, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = lshr i32 %128, 18
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %130, 0x3F4C00EBA0000000
  %132 = call float @dx.op.unary.f32(i32 21, float %131)  ; Exp(value)
  %133 = fadd fast float %132, -1.000000e+00
  %134 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %135 = extractvalue %dx.types.Dimensions %134, 0
  %136 = sitofp i32 %135 to float
  %137 = extractvalue %dx.types.Dimensions %134, 1
  %138 = sitofp i32 %137 to float
  %139 = fcmp fast oge float %123, %136
  %140 = fcmp fast oge float %124, %138
  %141 = or i1 %139, %140
  %142 = select i1 %141, float 0x4197782600000000, float %133
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %72
  %147 = fmul fast float %145, %73
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = and i32 %149, 114688
  %151 = icmp ne i32 %150, 0
  %152 = select i1 %151, float %146, float 0.000000e+00
  %153 = select i1 %151, float %147, float 0.000000e+00
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fmul fast float %155, 2.550000e+02
  %157 = fptoui float %156 to i32
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 3
  %161 = and i32 %160, 3
  %162 = icmp ne i32 %161, 0
  %163 = and i32 %160, 4
  %164 = icmp ne i32 %163, 0
  %165 = and i1 %162, %164
  br i1 %165, label %166, label %177

; <label>:166                                     ; preds = %0
  %167 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %168 = fmul fast float %167, %73
  %169 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %170 = fmul fast float %169, %72
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %170, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = fsub fast float 1.000000e+00, %172
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = fcmp fast olt float %173, %175
  br label %180

; <label>:177                                     ; preds = %0
  %178 = icmp eq i32 %163, 0
  %179 = and i1 %162, %178
  br label %180

; <label>:180                                     ; preds = %177, %166
  %181 = phi i1 [ %176, %166 ], [ %179, %177 ]
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = shl i32 %183, 4
  %185 = and i32 %184, 32752
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = lshr i32 %183, 7
  %188 = and i32 %187, 32752
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = lshr i32 %183, 22
  %191 = shl nuw nsw i32 %190, 5
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = and i32 %194, 255
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F70101020000000
  %198 = lshr i32 %194, 8
  %199 = and i32 %198, 255
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F70101020000000
  %202 = lshr i32 %194, 16
  %203 = and i32 %202, 255
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F70101020000000
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 65535
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %207, 16
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = and i32 %213, 65535
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %213, 16
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = fmul fast float %215, 0x3F50624DE0000000
  %219 = fmul fast float %217, 0x3F50624DE0000000
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %224

; <label>:224                                     ; preds = %180
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = add i32 %226, 0
  %228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %228, %dx.types.Handle %69, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 3
  br label %231

; <label>:231                                     ; preds = %224, %180
  %232 = phi float [ 1.000000e+00, %180 ], [ %230, %224 ]
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = or i32 %236, %234
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %852, label %239

; <label>:239                                     ; preds = %231
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = fmul fast float %243, 0x3F50624DE0000000
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = lshr i32 %246, 24
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = lshr i32 %257, 22
  %259 = shl nuw nsw i32 %258, 5
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = shl i32 %257, 4
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %257, 7
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 3
  %269 = fmul fast float %268, 1.000000e+03
  %270 = fmul fast float %218, %269
  %271 = call float @dx.op.unary.f32(i32 22, float %270)  ; Frc(value)
  %272 = fadd fast float %271, %209
  %273 = fmul fast float %219, %269
  %274 = call float @dx.op.unary.f32(i32 22, float %273)  ; Frc(value)
  %275 = fadd fast float %274, %211
  %276 = fmul fast float %244, %269
  %277 = call float @dx.op.unary.f32(i32 22, float %276)  ; Frc(value)
  %278 = fmul fast float %277, 0x401921FB60000000
  %279 = fadd fast float %278, %260
  %280 = call float @dx.op.unary.f32(i32 13, float %279)  ; Sin(value)
  %281 = call float @dx.op.unary.f32(i32 12, float %279)  ; Cos(value)
  %282 = fsub fast float -0.000000e+00, %280
  %283 = fadd fast float %58, -5.000000e-01
  %284 = fadd fast float %59, -5.000000e-01
  %285 = fmul fast float %253, %283
  %286 = fmul fast float %255, %284
  %287 = fadd fast float %285, 5.000000e-01
  %288 = fadd fast float %286, 5.000000e-01
  %289 = fmul fast float %263, %287
  %290 = fmul fast float %266, %288
  %291 = fmul fast float %281, %289
  %292 = call float @dx.op.tertiary.f32(i32 46, float %282, float %290, float %291)  ; FMad(a,b,c)
  %293 = fmul fast float %280, %289
  %294 = call float @dx.op.tertiary.f32(i32 46, float %281, float %290, float %293)  ; FMad(a,b,c)
  %295 = fadd fast float %272, %292
  %296 = fadd fast float %275, %294
  %297 = icmp ugt i32 %248, 1
  %298 = icmp ugt i32 %246, 33554431
  %299 = or i1 %298, %297
  br i1 %299, label %300, label %324

; <label>:300                                     ; preds = %239
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = lshr i32 %302, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = fmul fast float %268, %304
  %306 = call float @dx.op.unary.f32(i32 22, float %305)  ; Frc(value)
  %307 = mul nuw nsw i32 %248, %249
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %306, %308
  %310 = call float @dx.op.unary.f32(i32 27, float %309)  ; Round_ni(value)
  %311 = fptoui float %310 to i32
  %312 = urem i32 %311, %248
  %313 = udiv i32 %311, %249
  %314 = call float @dx.op.unary.f32(i32 22, float %295)  ; Frc(value)
  %315 = call float @dx.op.unary.f32(i32 22, float %296)  ; Frc(value)
  %316 = uitofp i32 %312 to float
  %317 = uitofp i32 %313 to float
  %318 = fadd fast float %314, %316
  %319 = fadd fast float %315, %317
  %320 = uitofp i32 %248 to float
  %321 = uitofp i32 %249 to float
  %322 = fdiv fast float %318, %320
  %323 = fdiv fast float %319, %321
  br label %324

; <label>:324                                     ; preds = %300, %239
  %325 = phi float [ %322, %300 ], [ %295, %239 ]
  %326 = phi float [ %323, %300 ], [ %296, %239 ]
  %327 = and i32 %234, 256
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %373, label %329

; <label>:329                                     ; preds = %324
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = add i32 %331, 0
  %333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %333, %dx.types.Handle %69, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = shl i32 %337, 4
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %337, 7
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fsub fast float 1.000000e+00, %232
  %345 = call float @dx.op.binary.f32(i32 35, float %344, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %346 = bitcast float %232 to i32
  %347 = sitofp i32 %346 to float
  %348 = fadd fast float %347, 0xC1CFBF8940000000
  %349 = fmul fast float %343, %348
  %350 = fadd fast float %349, 0x41CFBF8940000000
  %351 = fptosi float %350 to i32
  %352 = bitcast i32 %351 to float
  %353 = bitcast float %345 to i32
  %354 = sitofp i32 %353 to float
  %355 = fadd fast float %354, 0xC1CFBF8940000000
  %356 = fmul fast float %355, %343
  %357 = fadd fast float %356, 0x41CFBF8940000000
  %358 = fptosi float %357 to i32
  %359 = bitcast i32 %358 to float
  %360 = fmul fast float %352, %340
  %361 = fmul fast float %359, %340
  %362 = fsub fast float %345, %360
  %363 = fadd fast float %361, %345
  %364 = call float @dx.op.unary.f32(i32 7, float %362)  ; Saturate(value)
  %365 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %366 = fsub fast float %335, %364
  %367 = fsub fast float %365, %364
  %368 = bitcast float %367 to i32
  %369 = sub nsw i32 2129859010, %368
  %370 = bitcast i32 %369 to float
  %371 = fmul fast float %370, %366
  %372 = call float @dx.op.unary.f32(i32 7, float %371)  ; Saturate(value)
  br label %373

; <label>:373                                     ; preds = %329, %324
  %374 = phi float [ %372, %329 ], [ %232, %324 ]
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 128
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %394, label %379

; <label>:379                                     ; preds = %373
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = add i32 %381, 0
  %383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %383, %dx.types.Handle %69, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 524288
  %389 = icmp ne i32 %388, 0
  %390 = fcmp fast ogt float %385, 0x3FE0101020000000
  %391 = select i1 %390, float 1.000000e+00, float 0.000000e+00
  %392 = select i1 %389, float %391, float %385
  %393 = fmul fast float %392, %374
  br label %394

; <label>:394                                     ; preds = %379, %373
  %395 = phi float [ %393, %379 ], [ %374, %373 ]
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 16
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %593, label %400

; <label>:400                                     ; preds = %394
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %404, 0
  %406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %406, %dx.types.Handle %68, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = and i32 %402, 255
  %413 = uitofp i32 %412 to float
  %414 = lshr i32 %402, 8
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %411, %413
  %418 = fadd fast float %417, %416
  %419 = fmul fast float %418, 0x3F70101000000000
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 512
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %431, label %424

; <label>:424                                     ; preds = %400
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %426, 0
  %428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %428, %dx.types.Handle %69, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  br label %431

; <label>:431                                     ; preds = %424, %400
  %432 = phi float [ %430, %424 ], [ 1.000000e+00, %400 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 33554432
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %540, label %437

; <label>:437                                     ; preds = %431
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 65535
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %439, 16
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 65535
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 24
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = and i32 %449, 255
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F70101020000000
  %456 = lshr i32 %449, 8
  %457 = and i32 %456, 255
  %458 = uitofp i32 %457 to float
  %459 = fmul fast float %458, 0x3F70101020000000
  %460 = lshr i32 %449, 16
  %461 = and i32 %460, 255
  %462 = uitofp i32 %461 to float
  %463 = fmul fast float %462, 0x3F70101020000000
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = lshr i32 %465, 24
  %467 = uitofp i32 %466 to float
  %468 = fmul fast float %467, 0x3F70101020000000
  %469 = and i32 %465, 255
  %470 = uitofp i32 %469 to float
  %471 = fmul fast float %470, 0x3F70101020000000
  %472 = lshr i32 %465, 8
  %473 = and i32 %472, 255
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %474, 0x3F70101020000000
  %476 = lshr i32 %465, 16
  %477 = and i32 %476, 255
  %478 = uitofp i32 %477 to float
  %479 = fmul fast float %478, 0x3F70101020000000
  %480 = bitcast float %408 to i32
  %481 = ashr i32 %480, 1
  %482 = sub nsw i32 1597463174, %481
  %483 = bitcast i32 %482 to float
  %484 = fmul fast float %408, 5.000000e-01
  %485 = fmul fast float %483, %483
  %486 = fmul fast float %485, %484
  %487 = fsub fast float 1.500000e+00, %486
  %488 = fmul fast float %483, %408
  %489 = fmul fast float %488, %487
  %490 = bitcast float %409 to i32
  %491 = ashr i32 %490, 1
  %492 = sub nsw i32 1597463174, %491
  %493 = bitcast i32 %492 to float
  %494 = fmul fast float %409, 5.000000e-01
  %495 = fmul fast float %493, %493
  %496 = fmul fast float %495, %494
  %497 = fsub fast float 1.500000e+00, %496
  %498 = fmul fast float %493, %409
  %499 = fmul fast float %498, %497
  %500 = bitcast float %410 to i32
  %501 = ashr i32 %500, 1
  %502 = sub nsw i32 1597463174, %501
  %503 = bitcast i32 %502 to float
  %504 = fmul fast float %410, 5.000000e-01
  %505 = fmul fast float %503, %503
  %506 = fmul fast float %505, %504
  %507 = fsub fast float 1.500000e+00, %506
  %508 = fmul fast float %503, %410
  %509 = fmul fast float %508, %507
  %510 = fsub fast float %489, %471
  %511 = fsub fast float %499, %475
  %512 = fsub fast float %509, %479
  %513 = fmul fast float %510, %441
  %514 = fmul fast float %511, %443
  %515 = fmul fast float %512, %447
  %516 = fadd fast float %513, %455
  %517 = fadd fast float %514, %459
  %518 = fadd fast float %515, %463
  %519 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %520 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %521 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  %522 = fmul fast float %519, %519
  %523 = fmul fast float %520, %520
  %524 = fmul fast float %521, %521
  %525 = fsub fast float %522, %408
  %526 = fsub fast float %523, %409
  %527 = fsub fast float %524, %410
  %528 = fmul fast float %525, %432
  %529 = fmul fast float %526, %432
  %530 = fmul fast float %527, %432
  %531 = fadd fast float %528, %408
  %532 = fadd fast float %529, %409
  %533 = fadd fast float %530, %410
  %534 = fadd fast float %452, %419
  %535 = fsub fast float %534, %468
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  %537 = fsub fast float %536, %419
  %538 = fmul fast float %537, %432
  %539 = fadd fast float %538, %419
  br label %593

; <label>:540                                     ; preds = %431
  %541 = and i32 %434, 134217728
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %577, label %543

; <label>:543                                     ; preds = %540
  %544 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %545 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %546 = call float @dx.op.unary.f32(i32 24, float %205)  ; Sqrt(value)
  %547 = fadd fast float %544, -5.000000e-01
  %548 = fadd fast float %545, -5.000000e-01
  %549 = fadd fast float %546, -5.000000e-01
  %550 = fmul fast float %547, %432
  %551 = fmul fast float %548, %432
  %552 = fmul fast float %549, %432
  %553 = fadd fast float %550, 5.000000e-01
  %554 = fadd fast float %551, 5.000000e-01
  %555 = fadd fast float %552, 5.000000e-01
  %556 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %557 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %558 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %559 = fmul fast float %553, 2.000000e+00
  %560 = fsub fast float 1.000000e+00, %559
  %561 = fmul fast float %560, %556
  %562 = fadd fast float %561, %559
  %563 = fmul fast float %562, %556
  %564 = fmul fast float %554, 2.000000e+00
  %565 = fsub fast float 1.000000e+00, %564
  %566 = fmul fast float %565, %557
  %567 = fadd fast float %566, %564
  %568 = fmul fast float %567, %557
  %569 = fmul fast float %555, 2.000000e+00
  %570 = fsub fast float 1.000000e+00, %569
  %571 = fmul fast float %570, %558
  %572 = fadd fast float %571, %569
  %573 = fmul fast float %572, %558
  %574 = fmul fast float %563, %563
  %575 = fmul fast float %568, %568
  %576 = fmul fast float %573, %573
  br label %593

; <label>:577                                     ; preds = %540
  %578 = fmul fast float %197, %197
  %579 = fmul fast float %201, %201
  %580 = fmul fast float %205, %205
  %581 = fadd fast float %578, -1.000000e+00
  %582 = fadd fast float %579, -1.000000e+00
  %583 = fadd fast float %580, -1.000000e+00
  %584 = fmul fast float %432, %581
  %585 = fmul fast float %432, %582
  %586 = fmul fast float %432, %583
  %587 = fadd fast float %584, 1.000000e+00
  %588 = fadd fast float %585, 1.000000e+00
  %589 = fadd fast float %586, 1.000000e+00
  %590 = fmul fast float %587, %408
  %591 = fmul fast float %588, %409
  %592 = fmul fast float %589, %410
  br label %593

; <label>:593                                     ; preds = %577, %543, %437, %394
  %594 = phi float [ %539, %437 ], [ %419, %543 ], [ %419, %577 ], [ 0x3FA23C0BE0000000, %394 ]
  %595 = phi float [ %531, %437 ], [ %574, %543 ], [ %590, %577 ], [ 1.000000e+00, %394 ]
  %596 = phi float [ %532, %437 ], [ %575, %543 ], [ %591, %577 ], [ 1.000000e+00, %394 ]
  %597 = phi float [ %533, %437 ], [ %576, %543 ], [ %592, %577 ], [ 1.000000e+00, %394 ]
  %598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.i32 %598, 1
  %600 = and i32 %599, 1
  %601 = icmp ne i32 %600, 0
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 32
  %605 = icmp ne i32 %604, 0
  %606 = and i1 %601, %605
  %607 = select i1 %606, float 1.000000e+00, float %595
  %608 = select i1 %606, float 0x3FD3333340000000, float %596
  %609 = select i1 %606, float 0x3FD3333340000000, float %597
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 32
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %683, label %614

; <label>:614                                     ; preds = %593
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = add i32 %618, 0
  %620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %620, %dx.types.Handle %68, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = extractvalue %dx.types.ResRet.f32 %621, 3
  %626 = and i32 %616, 255
  %627 = uitofp i32 %626 to float
  %628 = lshr i32 %616, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = lshr i32 %616, 16
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101000000000
  %635 = fmul fast float %622, %627
  %636 = fadd fast float %635, %630
  %637 = fmul fast float %636, 0x3F70101000000000
  %638 = fadd fast float %623, -5.000000e-01
  %639 = fadd fast float %625, -5.000000e-01
  %640 = fmul fast float %638, %634
  %641 = fmul fast float %639, %634
  %642 = fadd fast float %640, 5.000000e-01
  %643 = fadd fast float %641, 5.000000e-01
  %644 = fmul fast float %642, 2.000000e+00
  %645 = fadd fast float %644, -1.000000e+00
  %646 = fmul fast float %643, 2.000000e+00
  %647 = fadd fast float %646, -1.000000e+00
  %648 = fadd fast float %645, %647
  %649 = fmul fast float %648, 5.000000e-01
  %650 = fsub fast float %645, %647
  %651 = fmul fast float %650, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %653 = fsub fast float 1.000000e+00, %652
  %654 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %655 = fsub fast float %653, %654
  %656 = call float @dx.op.dot3.f32(i32 55, float %649, float %651, float %655, float %649, float %651, float %655)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.unary.f32(i32 25, float %656)  ; Rsqrt(value)
  %658 = fmul fast float %649, %657
  %659 = fmul fast float %651, %657
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 67108864
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %679, label %664

; <label>:664                                     ; preds = %614
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 65535
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 65535
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = lshr i32 %666, 16
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = fsub fast float %637, %674
  %676 = fmul fast float %675, %668
  %677 = fadd fast float %676, %672
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  br label %679

; <label>:679                                     ; preds = %664, %614
  %680 = phi float [ %678, %664 ], [ %637, %614 ]
  %681 = call float @dx.op.dot2.f32(i32 54, float %658, float %659, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %682 = call float @dx.op.dot2.f32(i32 54, float %658, float %659, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %683

; <label>:683                                     ; preds = %679, %593
  %684 = phi float [ %680, %679 ], [ 0x3FD6666660000000, %593 ]
  %685 = phi float [ %681, %679 ], [ 0.000000e+00, %593 ]
  %686 = phi float [ %682, %679 ], [ 0.000000e+00, %593 ]
  %687 = phi float [ %624, %679 ], [ 1.000000e+00, %593 ]
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = lshr i32 %689, 22
  %691 = shl nuw nsw i32 %690, 5
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 64
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %729, label %697

; <label>:697                                     ; preds = %683
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = add i32 %699, 0
  %701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %700, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 131072
  %705 = icmp eq i32 %704, 0
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %701, %dx.types.Handle %68, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = fmul fast float %707, %186
  %711 = fmul fast float %708, %189
  %712 = fmul fast float %709, %192
  br i1 %705, label %719, label %713

; <label>:713                                     ; preds = %697
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = fmul fast float %715, %710
  %717 = fmul fast float %715, %711
  %718 = fmul fast float %715, %712
  br label %719

; <label>:719                                     ; preds = %713, %697
  %720 = phi float [ %716, %713 ], [ %710, %697 ]
  %721 = phi float [ %717, %713 ], [ %711, %697 ]
  %722 = phi float [ %718, %713 ], [ %712, %697 ]
  %723 = fmul fast float %720, %692
  %724 = select i1 %181, float %723, float %720
  %725 = call float @dx.op.dot3.f32(i32 55, float %724, float %721, float %722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = select i1 %181, float 0.000000e+00, float %720
  %727 = select i1 %181, float %725, float %721
  %728 = select i1 %181, float 0.000000e+00, float %722
  br label %729

; <label>:729                                     ; preds = %719, %683
  %730 = phi float [ %726, %719 ], [ 0.000000e+00, %683 ]
  %731 = phi float [ %727, %719 ], [ 0.000000e+00, %683 ]
  %732 = phi float [ %728, %719 ], [ 0.000000e+00, %683 ]
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 1024
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %765, label %737

; <label>:737                                     ; preds = %729
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = lshr i32 %739, 8
  %744 = and i32 %743, 255
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = lshr i32 %739, 16
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = fmul fast float %742, %742
  %752 = fmul fast float %746, %746
  %753 = fmul fast float %750, %750
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %69, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = extractvalue %dx.types.ResRet.f32 %758, 1
  %761 = extractvalue %dx.types.ResRet.f32 %758, 2
  %762 = fmul fast float %751, %759
  %763 = fmul fast float %752, %760
  %764 = fmul fast float %753, %761
  br label %765

; <label>:765                                     ; preds = %737, %729
  %766 = phi float [ %762, %737 ], [ 0.000000e+00, %729 ]
  %767 = phi float [ %763, %737 ], [ 0.000000e+00, %729 ]
  %768 = phi float [ %764, %737 ], [ 0.000000e+00, %729 ]
  %769 = fcmp fast ogt float %766, 0.000000e+00
  %770 = fcmp fast ogt float %767, 0.000000e+00
  %771 = fcmp fast ogt float %768, 0.000000e+00
  %772 = call float @dx.op.unary.f32(i32 23, float %766)  ; Log(value)
  %773 = call float @dx.op.unary.f32(i32 23, float %767)  ; Log(value)
  %774 = call float @dx.op.unary.f32(i32 23, float %768)  ; Log(value)
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = lshr i32 %776, 7
  %778 = and i32 %777, 32752
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = fmul fast float %772, 0xBFE62E4300000000
  %781 = fmul fast float %780, %779
  %782 = fmul fast float %773, 0xBFE62E4300000000
  %783 = fmul fast float %782, %779
  %784 = fmul fast float %774, 0xBFE62E4300000000
  %785 = fmul fast float %784, %779
  %786 = select i1 %769, float %781, float 1.270000e+02
  %787 = select i1 %770, float %783, float 1.270000e+02
  %788 = select i1 %771, float %785, float 1.270000e+02
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 10240
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %835, label %793

; <label>:793                                     ; preds = %765
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = add i32 %795, 0
  %797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %797, %dx.types.Handle %69, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 1
  %800 = extractvalue %dx.types.ResRet.f32 %798, 3
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 1048576
  %804 = icmp ne i32 %803, 0
  %805 = and i32 %802, 8192
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %821, label %807

; <label>:807                                     ; preds = %793
  %808 = extractvalue %dx.types.ResRet.f32 %798, 2
  %809 = select i1 %804, float %808, float %799
  %810 = extractvalue %dx.types.ResRet.f32 %798, 0
  %811 = select i1 %804, float %810, float %799
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 16
  %815 = and i32 %814, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F80101020000000
  %818 = fmul fast float %817, %811
  %819 = fmul fast float %817, %799
  %820 = fmul fast float %817, %809
  br label %821

; <label>:821                                     ; preds = %807, %793
  %822 = phi float [ %818, %807 ], [ 0.000000e+00, %793 ]
  %823 = phi float [ %819, %807 ], [ 0.000000e+00, %793 ]
  %824 = phi float [ %820, %807 ], [ 0.000000e+00, %793 ]
  %825 = and i32 %802, 2048
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %835, label %827

; <label>:827                                     ; preds = %821
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = shl i32 %829, 4
  %831 = and i32 %830, 32752
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = fmul fast float %832, %800
  %834 = call float @dx.op.binary.f32(i32 35, float %833, float 0x3F70101020000000)  ; FMax(a,b)
  br label %835

; <label>:835                                     ; preds = %827, %821, %765
  %836 = phi float [ %822, %827 ], [ %822, %821 ], [ 0.000000e+00, %765 ]
  %837 = phi float [ %823, %827 ], [ %823, %821 ], [ 0.000000e+00, %765 ]
  %838 = phi float [ %824, %827 ], [ %824, %821 ], [ 0.000000e+00, %765 ]
  %839 = phi float [ %834, %827 ], [ 0x3F70101020000000, %821 ], [ 0x3F70101020000000, %765 ]
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = lshr i32 %841, 8
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = call float @dx.op.dot3.f32(i32 55, float %607, float %608, float %609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = fmul fast float %846, %847
  %849 = fadd fast float %848, %843
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  br label %852

; <label>:852                                     ; preds = %835, %231
  %853 = phi float [ 0.000000e+00, %231 ], [ %685, %835 ]
  %854 = phi float [ 0.000000e+00, %231 ], [ %686, %835 ]
  %855 = phi float [ 0.000000e+00, %231 ], [ %607, %835 ]
  %856 = phi float [ 0.000000e+00, %231 ], [ %608, %835 ]
  %857 = phi float [ 0.000000e+00, %231 ], [ %609, %835 ]
  %858 = phi float [ 0.000000e+00, %231 ], [ %836, %835 ]
  %859 = phi float [ 0.000000e+00, %231 ], [ %837, %835 ]
  %860 = phi float [ 0.000000e+00, %231 ], [ %838, %835 ]
  %861 = phi float [ 0.000000e+00, %231 ], [ %730, %835 ]
  %862 = phi float [ 0.000000e+00, %231 ], [ %731, %835 ]
  %863 = phi float [ 0.000000e+00, %231 ], [ %732, %835 ]
  %864 = phi float [ 0.000000e+00, %231 ], [ %786, %835 ]
  %865 = phi float [ 0.000000e+00, %231 ], [ %787, %835 ]
  %866 = phi float [ 0.000000e+00, %231 ], [ %788, %835 ]
  %867 = phi float [ 0.000000e+00, %231 ], [ %594, %835 ]
  %868 = phi float [ 0.000000e+00, %231 ], [ %395, %835 ]
  %869 = phi float [ 0.000000e+00, %231 ], [ %684, %835 ]
  %870 = phi float [ 0.000000e+00, %231 ], [ %687, %835 ]
  %871 = phi float [ 0.000000e+00, %231 ], [ %839, %835 ]
  %872 = phi float [ 0.000000e+00, %231 ], [ %851, %835 ]
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = call float @dx.op.dot2.f32(i32 54, float %853, float %854, float %853, float %854)  ; Dot2(ax,ay,bx,by)
  %876 = fmul fast float %875, 0x3FE3333340000000
  %877 = fsub fast float 1.000000e+00, %876
  %878 = call float @dx.op.dot3.f32(i32 55, float %853, float %854, float %877, float %853, float %854, float %877)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = call float @dx.op.unary.f32(i32 25, float %878)  ; Rsqrt(value)
  %880 = fmul fast float %879, %853
  %881 = fmul fast float %879, %854
  %882 = fmul fast float %877, %879
  %883 = fmul fast float %882, %75
  %884 = fmul fast float %882, %76
  %885 = fmul fast float %882, %77
  %886 = fmul fast float %880, %51
  %887 = fmul fast float %880, %52
  %888 = fmul fast float %880, %53
  %889 = fmul fast float %80, %54
  %890 = fmul fast float %889, %881
  %891 = fmul fast float %83, %54
  %892 = fmul fast float %891, %881
  %893 = fmul fast float %86, %54
  %894 = fmul fast float %893, %881
  %895 = fadd fast float %890, %886
  %896 = fmul fast float %895, %74
  %897 = fadd fast float %896, %883
  %898 = fadd fast float %892, %887
  %899 = fmul fast float %898, %74
  %900 = fadd fast float %899, %884
  %901 = fadd fast float %894, %888
  %902 = fmul fast float %901, %74
  %903 = fadd fast float %902, %885
  %904 = call float @dx.op.dot3.f32(i32 55, float %897, float %900, float %903, float %897, float %900, float %903)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call float @dx.op.unary.f32(i32 25, float %904)  ; Rsqrt(value)
  %906 = fmul fast float %897, %905
  %907 = fmul fast float %900, %905
  %908 = fmul fast float %903, %905
  %909 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %910 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %911 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %912 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %913 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %914 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %915 = fadd fast float %909, %120
  %916 = fadd fast float %910, %121
  %917 = fadd fast float %911, %122
  %918 = fadd fast float %912, %120
  %919 = fadd fast float %913, %121
  %920 = fadd fast float %914, %122
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %924 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %928 = fmul fast float %922, %72
  %929 = fmul fast float %928, %926
  %930 = fmul fast float %923, %73
  %931 = fmul fast float %930, %927
  %932 = fptoui float %929 to i32
  %933 = fptoui float %931 to i32
  %934 = fadd fast float %922, -1.000000e+00
  %935 = fadd fast float %923, -1.000000e+00
  %936 = fptoui float %934 to i32
  %937 = fptoui float %935 to i32
  %938 = call i32 @dx.op.binary.i32(i32 40, i32 %932, i32 %936)  ; UMin(a,b)
  %939 = call i32 @dx.op.binary.i32(i32 40, i32 %933, i32 %937)  ; UMin(a,b)
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 3
  %943 = fmul fast float %941, %63
  %944 = fsub fast float %943, %942
  %945 = fadd fast float %924, -1.000000e+00
  %946 = call float @dx.op.binary.f32(i32 36, float %944, float %945)  ; FMin(a,b)
  %947 = fptoui float %946 to i32
  %948 = fptoui float %922 to i32
  %949 = fptoui float %923 to i32
  %950 = mul i32 %947, %949
  %951 = add i32 %950, %939
  %952 = mul i32 %951, %948
  %953 = add i32 %952, %938
  %954 = shl i32 %953, 2
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 1023
  %958 = lshr i32 %956, 10
  %959 = icmp eq i32 %957, 0
  br i1 %959, label %1463, label %960

; <label>:960                                     ; preds = %852
  %961 = and i32 %956, 1023
  br label %962

; <label>:962                                     ; preds = %1094, %960
  %963 = phi i32 [ %1044, %1094 ], [ 0, %960 ]
  %964 = phi float [ %1095, %1094 ], [ 0.000000e+00, %960 ]
  %965 = phi float [ %1096, %1094 ], [ %874, %960 ]
  %966 = phi float [ %1097, %1094 ], [ %872, %960 ]
  %967 = phi float [ %1098, %1094 ], [ %864, %960 ]
  %968 = phi float [ %1099, %1094 ], [ %865, %960 ]
  %969 = phi float [ %1100, %1094 ], [ %866, %960 ]
  %970 = phi float [ %1101, %1094 ], [ 0.000000e+00, %960 ]
  %971 = phi float [ %1102, %1094 ], [ 0.000000e+00, %960 ]
  %972 = phi float [ %1103, %1094 ], [ %858, %960 ]
  %973 = phi float [ %1104, %1094 ], [ %859, %960 ]
  %974 = phi float [ %1105, %1094 ], [ %860, %960 ]
  %975 = phi float [ %1106, %1094 ], [ %861, %960 ]
  %976 = phi float [ %1107, %1094 ], [ %862, %960 ]
  %977 = phi float [ %1108, %1094 ], [ %863, %960 ]
  %978 = phi float [ %1109, %1094 ], [ %906, %960 ]
  %979 = phi float [ %1110, %1094 ], [ %907, %960 ]
  %980 = phi float [ %1111, %1094 ], [ %908, %960 ]
  %981 = phi float [ %1112, %1094 ], [ %870, %960 ]
  %982 = phi float [ %1113, %1094 ], [ %869, %960 ]
  %983 = phi float [ %1114, %1094 ], [ 0.000000e+00, %960 ]
  %984 = phi float [ %1115, %1094 ], [ %867, %960 ]
  %985 = phi float [ %1116, %1094 ], [ %855, %960 ]
  %986 = phi float [ %1117, %1094 ], [ %856, %960 ]
  %987 = phi float [ %1118, %1094 ], [ %857, %960 ]
  %988 = add nuw nsw i32 %963, %958
  %989 = shl i32 %988, 2
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = shl i32 %991, 8
  %993 = or i32 %992, 48
  %994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = or i32 %992, 64
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.i32 %1000, 1
  %1003 = or i32 %992, 80
  %1004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 3
  %1007 = or i32 %992, 96
  %1008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1013 = or i32 %992, 112
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1016 = or i32 %992, 128
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1022 = or i32 %992, 144
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1023, 3
  %1028 = or i32 %992, 160
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1034 = or i32 %992, 192
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = or i32 %992, 208
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = or i32 %992, 248
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = add nuw nsw i32 %963, 1
  %1045 = bitcast float %998 to i32
  %1046 = and i32 %1045, 512
  %1047 = icmp eq i32 %1046, 0
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = call float @dx.op.dot4.f32(i32 56, float %1049, float %1050, float %1051, float %1052, float %120, float %121, float %122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1054 = or i32 %992, 16
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = call float @dx.op.dot4.f32(i32 56, float %1056, float %1057, float %1058, float %1059, float %120, float %121, float %122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1061 = or i32 %992, 32
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = extractvalue %dx.types.ResRet.f32 %1062, 3
  %1067 = call float @dx.op.dot4.f32(i32 56, float %1063, float %1064, float %1065, float %1066, float %120, float %121, float %122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1068 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1069 = call float @dx.op.unary.f32(i32 6, float %1068)  ; FAbs(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1060)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 6, float %1070)  ; FAbs(value)
  %1072 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1074 = fadd fast float %1071, %1069
  %1075 = fadd fast float %1074, %1073
  %1076 = fcmp fast oeq float %1075, 0.000000e+00
  %1077 = call float @dx.op.dot4.f32(i32 56, float %1049, float %1050, float %1051, float %1052, float %915, float %916, float %917, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1078 = call float @dx.op.dot4.f32(i32 56, float %1056, float %1057, float %1058, float %1059, float %915, float %916, float %917, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1079 = call float @dx.op.dot4.f32(i32 56, float %1049, float %1050, float %1051, float %1052, float %918, float %919, float %920, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1080 = call float @dx.op.dot4.f32(i32 56, float %1056, float %1057, float %1058, float %1059, float %918, float %919, float %920, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1081 = fsub fast float %1077, %1053
  %1082 = fsub fast float %1079, %1053
  %1083 = fsub fast float %1078, %1060
  %1084 = fsub fast float %1080, %1060
  %1085 = call float @dx.op.dot3.f32(i32 55, float %995, float %996, float %997, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 2
  %1088 = fadd fast float %1087, %1085
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1091 = fcmp fast ogt float %1089, %1090
  %1092 = and i1 %1076, %1091
  %1093 = and i1 %1047, %1092
  br i1 %1093, label %1120, label %1094

; <label>:1094                                    ; preds = %1449, %1201, %1120, %962
  %1095 = phi float [ %964, %1120 ], [ %1204, %1201 ], [ %1204, %1449 ], [ %964, %962 ]
  %1096 = phi float [ %965, %1120 ], [ %965, %1201 ], [ %1425, %1449 ], [ %965, %962 ]
  %1097 = phi float [ %966, %1120 ], [ %966, %1201 ], [ %1423, %1449 ], [ %966, %962 ]
  %1098 = phi float [ %967, %1120 ], [ %967, %1201 ], [ %1401, %1449 ], [ %967, %962 ]
  %1099 = phi float [ %968, %1120 ], [ %968, %1201 ], [ %1402, %1449 ], [ %968, %962 ]
  %1100 = phi float [ %969, %1120 ], [ %969, %1201 ], [ %1403, %1449 ], [ %969, %962 ]
  %1101 = phi float [ %970, %1120 ], [ %970, %1201 ], [ %1328, %1449 ], [ %970, %962 ]
  %1102 = phi float [ %971, %1120 ], [ %971, %1201 ], [ %1326, %1449 ], [ %971, %962 ]
  %1103 = phi float [ %972, %1120 ], [ %972, %1201 ], [ %1371, %1449 ], [ %972, %962 ]
  %1104 = phi float [ %973, %1120 ], [ %973, %1201 ], [ %1372, %1449 ], [ %973, %962 ]
  %1105 = phi float [ %974, %1120 ], [ %974, %1201 ], [ %1373, %1449 ], [ %974, %962 ]
  %1106 = phi float [ %975, %1120 ], [ %975, %1201 ], [ %1459, %1449 ], [ %975, %962 ]
  %1107 = phi float [ %976, %1120 ], [ %976, %1201 ], [ %1460, %1449 ], [ %976, %962 ]
  %1108 = phi float [ %977, %1120 ], [ %977, %1201 ], [ %1461, %1449 ], [ %977, %962 ]
  %1109 = phi float [ %978, %1120 ], [ %978, %1201 ], [ %1307, %1449 ], [ %978, %962 ]
  %1110 = phi float [ %979, %1120 ], [ %979, %1201 ], [ %1308, %1449 ], [ %979, %962 ]
  %1111 = phi float [ %980, %1120 ], [ %980, %1201 ], [ %1309, %1449 ], [ %980, %962 ]
  %1112 = phi float [ %981, %1120 ], [ %981, %1201 ], [ %1381, %1449 ], [ %981, %962 ]
  %1113 = phi float [ %982, %1120 ], [ %982, %1201 ], [ %1378, %1449 ], [ %982, %962 ]
  %1114 = phi float [ %983, %1120 ], [ %983, %1201 ], [ %1375, %1449 ], [ %983, %962 ]
  %1115 = phi float [ %984, %1120 ], [ %984, %1201 ], [ %1324, %1449 ], [ %984, %962 ]
  %1116 = phi float [ %985, %1120 ], [ %985, %1201 ], [ %1319, %1449 ], [ %985, %962 ]
  %1117 = phi float [ %986, %1120 ], [ %986, %1201 ], [ %1320, %1449 ], [ %986, %962 ]
  %1118 = phi float [ %987, %1120 ], [ %987, %1201 ], [ %1321, %1449 ], [ %987, %962 ]
  %1119 = icmp eq i32 %1044, %961
  br i1 %1119, label %1462, label %962

; <label>:1120                                    ; preds = %962
  %1121 = extractvalue %dx.types.ResRet.f32 %1014, 3
  %1122 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1126 = extractvalue %dx.types.ResRet.i32 %1000, 3
  %1127 = extractvalue %dx.types.ResRet.i32 %1000, 2
  %1128 = add i32 %1126, 0
  %1129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1128, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1129, %dx.types.Handle %1130, float %1053, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float %1081, float %1083, float undef, float %1082, float %1084, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = fmul fast float %1132, %1125
  %1134 = fadd fast float %1133, %1124
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fmul fast float %1053, %1009
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %1060, float %1136)  ; FMad(a,b,c)
  %1138 = fadd fast float %1137, %1123
  %1139 = fmul fast float %1053, %1011
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %1060, float %1139)  ; FMad(a,b,c)
  %1141 = fadd fast float %1140, %1122
  %1142 = fmul fast float %1081, %1009
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %1083, float %1142)  ; FMad(a,b,c)
  %1144 = fmul fast float %1081, %1011
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %1083, float %1144)  ; FMad(a,b,c)
  %1146 = fmul fast float %1082, %1009
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %1084, float %1146)  ; FMad(a,b,c)
  %1148 = fmul fast float %1082, %1011
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %1084, float %1148)  ; FMad(a,b,c)
  %1150 = add i32 %1127, 0
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1150, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1151, %dx.types.Handle %1130, float %1138, float %1141, float undef, float undef, i32 0, i32 0, i32 undef, float %1143, float %1145, float undef, float %1147, float %1149, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = and i32 %1045, 1024
  %1155 = icmp ne i32 %1154, 0
  %1156 = fcmp fast ogt float %1153, 0x3FE0101020000000
  %1157 = uitofp i1 %1156 to float
  %1158 = select i1 %1155, float %1157, float %1153
  %1159 = and i32 %1045, 8192
  %1160 = icmp ne i32 %1159, 0
  %1161 = select i1 %1160, float %1121, float 1.000000e+00
  %1162 = fmul fast float %1053, 2.000000e+00
  %1163 = fadd fast float %1162, -1.000000e+00
  %1164 = call float @dx.op.unary.f32(i32 6, float %1163)  ; FAbs(value)
  %1165 = fmul fast float %1164, %1042
  %1166 = fsub fast float %1165, %1042
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = fmul fast float %1060, 2.000000e+00
  %1169 = fadd fast float %1168, -1.000000e+00
  %1170 = call float @dx.op.unary.f32(i32 6, float %1169)  ; FAbs(value)
  %1171 = fmul fast float %1170, %1043
  %1172 = fsub fast float %1171, %1043
  %1173 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1174 = fmul fast float %1072, %1005
  %1175 = fsub fast float %1174, %1005
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1177 = fmul fast float %1135, %1161
  %1178 = fmul fast float %1177, %1132
  %1179 = fmul fast float %1178, %1167
  %1180 = fmul fast float %1179, %1158
  %1181 = fmul fast float %1180, %1173
  %1182 = fmul fast float %1181, %1176
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1186 = fsub fast float %1089, %1185
  %1187 = fmul fast float %1186, %1184
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fmul fast float %1182, %1006
  %1190 = fadd fast float %1182, %1006
  %1191 = fmul fast float %1190, %1015
  %1192 = fsub fast float %1191, %1015
  %1193 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1194 = and i32 %1045, 128
  %1195 = icmp ne i32 %1194, 0
  %1196 = select i1 %1195, float %1193, float %1189
  %1197 = fmul fast float %1196, %1188
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = fcmp fast ugt float %1197, %1199
  br i1 %1200, label %1201, label %1094

; <label>:1201                                    ; preds = %1120
  %1202 = select i1 %1160, float %1197, float 0.000000e+00
  %1203 = fadd fast float %1202, %964
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  br i1 %1160, label %1094, label %1205

; <label>:1205                                    ; preds = %1201
  %1206 = and i32 %1045, 4
  %1207 = and i32 %1045, 8
  %1208 = add i32 %1001, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1208, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1209, %dx.types.Handle %1210, float %1138, float %1141, float undef, float undef, i32 0, i32 0, i32 undef, float %1143, float %1145, float undef, float %1147, float %1149, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  %1215 = extractvalue %dx.types.ResRet.f32 %1211, 3
  %1216 = bitcast float %1027 to i32
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = lshr i32 %1216, 8
  %1220 = and i32 %1219, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = fmul fast float %1215, %1218
  %1223 = fadd fast float %1222, %1221
  %1224 = fmul fast float %1223, 0x3F70101000000000
  %1225 = add i32 %1002, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1225, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1226, %dx.types.Handle %1210, float %1138, float %1141, float undef, float undef, i32 0, i32 0, i32 undef, float %1143, float %1145, float undef, float %1147, float %1149, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = bitcast float %1021 to i32
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = lshr i32 %1232, 8
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = lshr i32 %1232, 16
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101000000000
  %1242 = fmul fast float %1228, %1234
  %1243 = fadd fast float %1242, %1237
  %1244 = fmul fast float %1243, 0x3F70101000000000
  %1245 = fadd fast float %1229, -5.000000e-01
  %1246 = fadd fast float %1231, -5.000000e-01
  %1247 = fmul fast float %1245, %1241
  %1248 = fmul fast float %1246, %1241
  %1249 = fadd fast float %1247, 5.000000e-01
  %1250 = fadd fast float %1248, 5.000000e-01
  %1251 = fmul fast float %1212, %1030
  %1252 = fmul fast float %1213, %1031
  %1253 = fmul fast float %1214, %1032
  %1254 = fmul fast float %1249, 2.000000e+00
  %1255 = fadd fast float %1254, -1.000000e+00
  %1256 = fmul fast float %1250, 2.000000e+00
  %1257 = fadd fast float %1256, -1.000000e+00
  %1258 = fadd fast float %1255, %1257
  %1259 = fmul fast float %1258, 5.000000e-01
  %1260 = fsub fast float %1255, %1257
  %1261 = fmul fast float %1260, 5.000000e-01
  %1262 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1263 = fsub fast float 1.000000e+00, %1262
  %1264 = call float @dx.op.unary.f32(i32 6, float %1261)  ; FAbs(value)
  %1265 = fsub fast float %1263, %1264
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1259, float %1261, float %1265, float %1259, float %1261, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = call float @dx.op.unary.f32(i32 25, float %1266)  ; Rsqrt(value)
  %1268 = fmul fast float %1259, %1267
  %1269 = fmul fast float %1261, %1267
  %1270 = fmul fast float %1267, %1265
  %1271 = fmul fast float %1270, %995
  %1272 = fmul fast float %1270, %996
  %1273 = fmul fast float %1270, %997
  %1274 = fmul fast float %1268, %1018
  %1275 = fmul fast float %1268, %1019
  %1276 = fmul fast float %1268, %1020
  %1277 = fadd fast float %1274, %1271
  %1278 = fadd fast float %1275, %1272
  %1279 = fadd fast float %1276, %1273
  %1280 = fmul fast float %1269, %1024
  %1281 = fmul fast float %1269, %1025
  %1282 = fmul fast float %1269, %1026
  %1283 = fadd fast float %1277, %1280
  %1284 = fadd fast float %1278, %1281
  %1285 = fadd fast float %1279, %1282
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1283, float %1284, float %1285, float %1283, float %1284, float %1285)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = call float @dx.op.unary.f32(i32 25, float %1286)  ; Rsqrt(value)
  %1288 = fmul fast float %1283, %1287
  %1289 = fmul fast float %1284, %1287
  %1290 = fmul fast float %1285, %1287
  %1291 = icmp ne i32 %1207, 0
  %1292 = select i1 %1291, float 1.000000e+00, float 0.000000e+00
  %1293 = fmul fast float %1197, %1292
  %1294 = and i32 %1045, 1
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1296, label %1300

; <label>:1296                                    ; preds = %1205
  %1297 = fsub fast float %1288, %978
  %1298 = fsub fast float %1289, %979
  %1299 = fsub fast float %1290, %980
  br label %1300

; <label>:1300                                    ; preds = %1296, %1205
  %1301 = phi float [ %1297, %1296 ], [ %1288, %1205 ]
  %1302 = phi float [ %1298, %1296 ], [ %1289, %1205 ]
  %1303 = phi float [ %1299, %1296 ], [ %1290, %1205 ]
  %1304 = fmul float %1303, %1293
  %1305 = fmul float %1302, %1293
  %1306 = fmul float %1301, %1293
  %1307 = fadd fast float %1306, %978
  %1308 = fadd fast float %1305, %979
  %1309 = fadd fast float %1304, %980
  %1310 = icmp ne i32 %1206, 0
  %1311 = select i1 %1310, float 1.000000e+00, float 0.000000e+00
  %1312 = fmul fast float %1197, %1311
  %1313 = fsub fast float %1251, %985
  %1314 = fsub fast float %1252, %986
  %1315 = fsub fast float %1253, %987
  %1316 = fmul fast float %1313, %1312
  %1317 = fmul fast float %1314, %1312
  %1318 = fmul fast float %1315, %1312
  %1319 = fadd fast float %1316, %985
  %1320 = fadd fast float %1317, %986
  %1321 = fadd fast float %1318, %987
  %1322 = fsub fast float %1224, %984
  %1323 = fmul fast float %1322, %1312
  %1324 = fadd fast float %1323, %984
  %1325 = fmul fast float %1312, %971
  %1326 = fsub fast float %971, %1325
  %1327 = fmul fast float %1312, %970
  %1328 = fsub fast float %970, %1327
  %1329 = bitcast float %1039 to i32
  %1330 = lshr i32 %1329, 16
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 1
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1336, label %1361

; <label>:1336                                    ; preds = %1300
  %1337 = fadd fast float %1224, 0xBFB99999A0000000
  %1338 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1339 = fmul fast float %1338, 0x3FF1C71C80000000
  %1340 = fsub fast float 1.000000e+00, %1339
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = fmul fast float %1341, %1251
  %1343 = fmul fast float %1341, %1252
  %1344 = fmul fast float %1341, %1253
  %1345 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1346 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1347 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1346, float %1347)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 35, float %1345, float %1348)  ; FMax(a,b)
  %1350 = fcmp fast ogt float %1349, 0.000000e+00
  %1351 = bitcast float %1349 to i32
  %1352 = sub nsw i32 2129859010, %1351
  %1353 = bitcast i32 %1352 to float
  %1354 = select i1 %1350, float %1353, float 0.000000e+00
  %1355 = fmul fast float %1345, %1331
  %1356 = fmul fast float %1346, %1331
  %1357 = fmul fast float %1347, %1331
  %1358 = fmul fast float %1355, %1354
  %1359 = fmul fast float %1356, %1354
  %1360 = fmul fast float %1357, %1354
  br label %1361

; <label>:1361                                    ; preds = %1336, %1300
  %1362 = phi float [ %1331, %1300 ], [ %1358, %1336 ]
  %1363 = phi float [ %1331, %1300 ], [ %1359, %1336 ]
  %1364 = phi float [ %1331, %1300 ], [ %1360, %1336 ]
  %1365 = fsub fast float %1362, %972
  %1366 = fsub fast float %1363, %973
  %1367 = fsub fast float %1364, %974
  %1368 = fmul fast float %1365, %1312
  %1369 = fmul fast float %1366, %1312
  %1370 = fmul fast float %1367, %1312
  %1371 = fadd fast float %1368, %972
  %1372 = fadd fast float %1369, %973
  %1373 = fadd fast float %1370, %974
  %1374 = fadd fast float %1197, %983
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = fsub fast float %1244, %982
  %1377 = fmul fast float %1376, %1293
  %1378 = fadd fast float %1377, %982
  %1379 = fsub fast float %1230, %981
  %1380 = fmul fast float %1379, %1293
  %1381 = fadd fast float %1380, %981
  br i1 %1295, label %1390, label %1382

; <label>:1382                                    ; preds = %1361
  %1383 = and i32 %1045, 32768
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1400, label %1385

; <label>:1385                                    ; preds = %1382
  %1386 = fmul fast float %1293, 1.270000e+02
  %1387 = fadd fast float %1386, %967
  %1388 = fadd fast float %1386, %968
  %1389 = fadd fast float %1386, %969
  br label %1400

; <label>:1390                                    ; preds = %1361
  %1391 = fsub fast float 1.270000e+02, %967
  %1392 = fsub fast float 1.270000e+02, %968
  %1393 = fsub fast float 1.270000e+02, %969
  %1394 = fmul fast float %1293, %1391
  %1395 = fmul fast float %1293, %1392
  %1396 = fmul fast float %1293, %1393
  %1397 = fadd fast float %1394, %967
  %1398 = fadd fast float %1395, %968
  %1399 = fadd fast float %1396, %969
  br label %1400

; <label>:1400                                    ; preds = %1390, %1385, %1382
  %1401 = phi float [ %1387, %1385 ], [ %967, %1382 ], [ %1397, %1390 ]
  %1402 = phi float [ %1388, %1385 ], [ %968, %1382 ], [ %1398, %1390 ]
  %1403 = phi float [ %1389, %1385 ], [ %969, %1382 ], [ %1399, %1390 ]
  %1404 = call float @dx.op.dot3.f32(i32 55, float %1251, float %1252, float %1253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = fmul fast float %1407, %1404
  %1409 = fadd fast float %1408, %1406
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = bitcast float %1033 to i32
  %1412 = and i32 %1411, 65535
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = lshr i32 %1411, 16
  %1415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1414)  ; LegacyF16ToF32(value)
  %1416 = fcmp fast oge float %1413, 0.000000e+00
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 0
  %1419 = select i1 %1416, float %1413, float %1418
  %1420 = fadd fast float %1419, %1415
  %1421 = fsub fast float %1410, %966
  %1422 = fmul fast float %1421, %1197
  %1423 = fadd fast float %1422, %966
  %1424 = fmul fast float %1420, %1197
  %1425 = call float @dx.op.binary.f32(i32 35, float %965, float %1424)  ; FMax(a,b)
  %1426 = and i32 %1045, 16
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1449, label %1428

; <label>:1428                                    ; preds = %1400
  %1429 = add i32 %1036, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1429, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1430, %dx.types.Handle %1210, float %1138, float %1141, float undef, float undef, i32 0, i32 0, i32 undef, float %1143, float %1145, float undef, float %1147, float %1149, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.ResRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.ResRet.f32 %1431, 2
  %1435 = and i32 %1329, 65535
  %1436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1435)  ; LegacyF16ToF32(value)
  %1437 = fmul fast float %1432, %1030
  %1438 = fmul fast float %1433, %1031
  %1439 = fmul fast float %1434, %1032
  %1440 = and i32 %1045, 16384
  %1441 = icmp ne i32 %1440, 0
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = select i1 %1441, float %1443, float 1.000000e+00
  %1445 = fmul fast float %1444, %1436
  %1446 = fmul fast float %1437, %1445
  %1447 = fmul fast float %1438, %1445
  %1448 = fmul fast float %1439, %1445
  br label %1449

; <label>:1449                                    ; preds = %1428, %1400
  %1450 = phi float [ %1446, %1428 ], [ 0.000000e+00, %1400 ]
  %1451 = phi float [ %1447, %1428 ], [ 0.000000e+00, %1400 ]
  %1452 = phi float [ %1448, %1428 ], [ 0.000000e+00, %1400 ]
  %1453 = fsub fast float %1450, %975
  %1454 = fsub fast float %1451, %976
  %1455 = fsub fast float %1452, %977
  %1456 = fmul fast float %1453, %1197
  %1457 = fmul fast float %1454, %1197
  %1458 = fmul fast float %1455, %1197
  %1459 = fadd fast float %1456, %975
  %1460 = fadd fast float %1457, %976
  %1461 = fadd fast float %1458, %977
  br label %1094

; <label>:1462                                    ; preds = %1094
  br label %1463

; <label>:1463                                    ; preds = %1462, %852
  %1464 = phi float [ 0.000000e+00, %852 ], [ %1095, %1462 ]
  %1465 = phi float [ %874, %852 ], [ %1096, %1462 ]
  %1466 = phi float [ %872, %852 ], [ %1097, %1462 ]
  %1467 = phi float [ %864, %852 ], [ %1098, %1462 ]
  %1468 = phi float [ %865, %852 ], [ %1099, %1462 ]
  %1469 = phi float [ %866, %852 ], [ %1100, %1462 ]
  %1470 = phi float [ 0.000000e+00, %852 ], [ %1101, %1462 ]
  %1471 = phi float [ 0.000000e+00, %852 ], [ %1102, %1462 ]
  %1472 = phi float [ %858, %852 ], [ %1103, %1462 ]
  %1473 = phi float [ %859, %852 ], [ %1104, %1462 ]
  %1474 = phi float [ %860, %852 ], [ %1105, %1462 ]
  %1475 = phi float [ %861, %852 ], [ %1106, %1462 ]
  %1476 = phi float [ %862, %852 ], [ %1107, %1462 ]
  %1477 = phi float [ %863, %852 ], [ %1108, %1462 ]
  %1478 = phi float [ %906, %852 ], [ %1109, %1462 ]
  %1479 = phi float [ %907, %852 ], [ %1110, %1462 ]
  %1480 = phi float [ %908, %852 ], [ %1111, %1462 ]
  %1481 = phi float [ %870, %852 ], [ %1112, %1462 ]
  %1482 = phi float [ %869, %852 ], [ %1113, %1462 ]
  %1483 = phi float [ 0.000000e+00, %852 ], [ %1114, %1462 ]
  %1484 = phi float [ %867, %852 ], [ %1115, %1462 ]
  %1485 = phi float [ %855, %852 ], [ %1116, %1462 ]
  %1486 = phi float [ %856, %852 ], [ %1117, %1462 ]
  %1487 = phi float [ %857, %852 ], [ %1118, %1462 ]
  %1488 = call float @dx.op.dot3.f32(i32 55, float %1478, float %1479, float %1480, float %1478, float %1479, float %1480)  ; Dot3(ax,ay,az,bx,by,bz)
  %1489 = call float @dx.op.unary.f32(i32 25, float %1488)  ; Rsqrt(value)
  %1490 = fmul fast float %1489, %1478
  %1491 = fmul fast float %1489, %1479
  %1492 = fmul fast float %1489, %1480
  %1493 = fadd fast float %1483, %868
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1490, float %1491, float %1492, float %1490, float %1491, float %1492)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = call float @dx.op.unary.f32(i32 25, float %1495)  ; Rsqrt(value)
  %1497 = fmul fast float %1496, %1490
  %1498 = fmul fast float %1496, %1491
  %1499 = fmul fast float %1496, %1492
  %1500 = fadd fast float %1484, 0xBFB99999A0000000
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = fmul fast float %1501, 0x3FF1C71C80000000
  %1503 = call float @dx.op.binary.f32(i32 36, float %1484, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1504 = fsub fast float 1.000000e+00, %1502
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = fmul fast float %1505, %1485
  %1507 = fmul fast float %1505, %1486
  %1508 = fmul fast float %1505, %1487
  %1509 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1510 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1512 = fmul fast float %1502, %1485
  %1513 = fmul fast float %1502, %1486
  %1514 = fmul fast float %1502, %1487
  %1515 = fadd fast float %1512, %1503
  %1516 = fadd fast float %1513, %1503
  %1517 = fadd fast float %1514, %1503
  %1518 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 1
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1540, label %1526

; <label>:1526                                    ; preds = %1463
  %1527 = call float @dx.op.binary.f32(i32 35, float %1510, float %1511)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 35, float %1509, float %1527)  ; FMax(a,b)
  %1529 = fcmp fast ogt float %1528, 0.000000e+00
  %1530 = bitcast float %1528 to i32
  %1531 = sub nsw i32 2129859010, %1530
  %1532 = bitcast i32 %1531 to float
  %1533 = select i1 %1529, float %1532, float 0.000000e+00
  %1534 = fmul fast float %1509, %1472
  %1535 = fmul fast float %1510, %1473
  %1536 = fmul fast float %1511, %1474
  %1537 = fmul fast float %1534, %1533
  %1538 = fmul fast float %1535, %1533
  %1539 = fmul fast float %1536, %1533
  br label %1540

; <label>:1540                                    ; preds = %1526, %1463
  %1541 = phi float [ %1537, %1526 ], [ %1472, %1463 ]
  %1542 = phi float [ %1538, %1526 ], [ %1473, %1463 ]
  %1543 = phi float [ %1539, %1526 ], [ %1474, %1463 ]
  %1544 = call float @dx.op.binary.f32(i32 36, float %1467, float 1.270000e+02)  ; FMin(a,b)
  %1545 = call float @dx.op.binary.f32(i32 36, float %1468, float 1.270000e+02)  ; FMin(a,b)
  %1546 = call float @dx.op.binary.f32(i32 36, float %1469, float 1.270000e+02)  ; FMin(a,b)
  %1547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.i32 %1547, 3
  %1549 = and i32 %1548, 8
  %1550 = icmp ne i32 %1549, 0
  %1551 = call float @dx.op.binary.f32(i32 35, float %1509, float %1485)  ; FMax(a,b)
  %1552 = call float @dx.op.binary.f32(i32 35, float %1510, float %1485)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1511, float %1485)  ; FMax(a,b)
  %1554 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1510, float %1511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1555 = select i1 %181, float %1485, float %1509
  %1556 = select i1 %181, float %1554, float %1510
  %1557 = select i1 %181, float 1.000000e+00, float %1511
  %1558 = select i1 %1550, float %1551, float %1555
  %1559 = select i1 %1550, float %1552, float %1556
  %1560 = select i1 %1550, float %1553, float %1557
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1541, float %1542, float %1543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = select i1 %181, float %1561, float %1541
  %1563 = select i1 %181, float %1561, float %1542
  %1564 = select i1 %181, float %1561, float %1543
  %1565 = and i32 %157, 3
  %1566 = select i1 %151, i32 %1565, i32 0
  %1567 = icmp eq i32 %1566, 1
  br i1 %1567, label %1568, label %1644

; <label>:1568                                    ; preds = %1540
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1572 = fadd fast float %1570, %120
  %1573 = fadd fast float %1571, %121
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1577 = fsub fast float %1572, %1575
  %1578 = fsub fast float %1573, %1576
  %1579 = fmul fast float %1577, %1577
  %1580 = fmul fast float %1578, %1578
  %1581 = fadd fast float %1579, %1580
  %1582 = call float @dx.op.unary.f32(i32 24, float %1581)  ; Sqrt(value)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1574, 2
  %1584 = fcmp fast olt float %1582, %1583
  br i1 %1584, label %1585, label %1638

; <label>:1585                                    ; preds = %1568
  %1586 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1587 = fadd fast float %1586, %122
  %1588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.f32 %1588, 0
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1588, 1
  %1595 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1597 = extractvalue %dx.types.CBufRet.f32 %1588, 3
  %1598 = extractvalue %dx.types.CBufRet.f32 %1590, 3
  %1599 = extractvalue %dx.types.CBufRet.f32 %1592, 3
  %1600 = fadd fast float %1597, %1572
  %1601 = fadd fast float %1598, %1573
  %1602 = fadd fast float %1587, %1599
  %1603 = fmul fast float %1600, %1589
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %1591, float %1603)  ; FMad(a,b,c)
  %1605 = call float @dx.op.tertiary.f32(i32 46, float %1602, float %1593, float %1604)  ; FMad(a,b,c)
  %1606 = fmul fast float %1600, %1594
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %1595, float %1606)  ; FMad(a,b,c)
  %1608 = call float @dx.op.tertiary.f32(i32 46, float %1602, float %1596, float %1607)  ; FMad(a,b,c)
  %1609 = fsub fast float %1605, %1597
  %1610 = fsub fast float %1608, %1598
  %1611 = fsub fast float %1609, %1575
  %1612 = fadd fast float %1611, %1583
  %1613 = fsub fast float %1610, %1576
  %1614 = fadd fast float %1613, %1583
  %1615 = extractvalue %dx.types.CBufRet.f32 %1574, 3
  %1616 = fmul fast float %1612, %1615
  %1617 = fmul fast float %1614, %1615
  %1618 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1620 = fsub fast float 1.000000e+00, %1618
  %1621 = fsub fast float 1.000000e+00, %1619
  %1622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %1620, float %1621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = fcmp fast ugt float %1623, 0.000000e+00
  br i1 %1624, label %1625, label %1638

; <label>:1625                                    ; preds = %1585
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1628 = fmul fast float %1627, %1623
  %1629 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1630 = fadd fast float %1629, %1628
  %1631 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1632 = fadd fast float %1630, %1599
  %1633 = fmul fast float %1605, %1593
  %1634 = call float @dx.op.tertiary.f32(i32 46, float %1608, float %1596, float %1633)  ; FMad(a,b,c)
  %1635 = call float @dx.op.tertiary.f32(i32 46, float %1632, float %1631, float %1634)  ; FMad(a,b,c)
  %1636 = fsub fast float %1635, %1599
  %1637 = fsub fast float %1636, %1586
  br label %1638

; <label>:1638                                    ; preds = %1625, %1585, %1568
  %1639 = phi i1 [ true, %1625 ], [ false, %1585 ], [ false, %1568 ]
  %1640 = phi float [ %1637, %1625 ], [ -1.310720e+05, %1585 ], [ -1.310720e+05, %1568 ]
  %1641 = fsub fast float %1640, %122
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = select i1 %1639, float %1642, float 1.000000e+00
  br label %1644

; <label>:1644                                    ; preds = %1638, %1540
  %1645 = phi float [ %1643, %1638 ], [ 0.000000e+00, %1540 ]
  %1646 = icmp eq i32 %1566, 3
  %1647 = select i1 %1646, float 1.000000e+00, float %1645
  %1648 = call float @dx.op.binary.f32(i32 35, float %1464, float %1647)  ; FMax(a,b)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1650 = fcmp fast une float %1649, 0.000000e+00
  %1651 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = call float @dx.op.unary.f32(i32 25, float %1651)  ; Rsqrt(value)
  br i1 %1650, label %1660, label %1653

; <label>:1653                                    ; preds = %1644
  %1654 = fmul fast float %1652, %120
  %1655 = fmul fast float %1652, %121
  %1656 = fmul fast float %1652, %122
  %1657 = fsub fast float -0.000000e+00, %1654
  %1658 = fsub fast float -0.000000e+00, %1655
  %1659 = fsub fast float -0.000000e+00, %1656
  br label %1828

; <label>:1660                                    ; preds = %1644
  %1661 = fmul fast float %120, %1652
  %1662 = fsub fast float -0.000000e+00, %1661
  %1663 = fmul fast float %121, %1652
  %1664 = fsub fast float -0.000000e+00, %1663
  %1665 = fmul fast float %122, %1652
  %1666 = fsub fast float -0.000000e+00, %1665
  %1667 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1664, float %1666, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1668 = fmul fast float %1649, 2.500000e+00
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = fmul fast float %1649, 0x4013FFFFE0000000
  %1671 = fadd fast float %1670, 0xBFFFFFFFE0000000
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = fmul fast float %1649, 0x4004000020000000
  %1674 = fadd fast float %1673, 0xBFF8000040000000
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1677 = fmul fast float %1500, 1.000000e+01
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fmul fast float %1678, 2.000000e+00
  %1680 = fsub fast float 3.000000e+00, %1679
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1681, %1680
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fsub fast float 0x3FE3333340000000, %1521
  %1685 = fmul fast float %1684, 0x400AAAAAA0000000
  %1686 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1687 = fmul fast float %1683, %1686
  %1688 = fmul fast float %1558, 0x3FEA2B8620000000
  %1689 = fmul fast float %1559, 0x3FEA2B8620000000
  %1690 = fmul fast float %1560, 0x3FEA2B8620000000
  %1691 = fadd fast float %1688, 0x3FC81DFBA0000000
  %1692 = fmul fast float %1691, %1558
  %1693 = fadd fast float %1692, 0x3F910E6020000000
  %1694 = fadd fast float %1689, 0x3FC81DFBA0000000
  %1695 = fmul fast float %1694, %1559
  %1696 = fadd fast float %1695, 0x3F910E6020000000
  %1697 = fadd fast float %1690, 0x3FC81DFBA0000000
  %1698 = fmul fast float %1697, %1560
  %1699 = fadd fast float %1698, 0x3F910E6020000000
  %1700 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1701 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1702 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1703 = fsub fast float %1700, %1558
  %1704 = fsub fast float %1701, %1559
  %1705 = fsub fast float %1702, %1560
  %1706 = fmul fast float %1703, %1676
  %1707 = fmul fast float %1706, %1687
  %1708 = fmul fast float %1704, %1676
  %1709 = fmul fast float %1708, %1687
  %1710 = fmul fast float %1705, %1676
  %1711 = fmul fast float %1710, %1687
  %1712 = fadd fast float %1707, %1558
  %1713 = fadd fast float %1709, %1559
  %1714 = fadd fast float %1711, %1560
  %1715 = fmul fast float %1481, %1481
  %1716 = fmul fast float %1715, %1715
  %1717 = fadd fast float %1672, 1.000000e+00
  %1718 = fsub fast float %1717, %1687
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1722 = fsub fast float 1.000000e+00, %1716
  %1723 = call float @dx.op.binary.f32(i32 36, float %1719, float %1722)  ; FMin(a,b)
  %1724 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1725 = call float @dx.op.binary.f32(i32 35, float %1723, float %1724)  ; FMax(a,b)
  %1726 = fadd fast float %1721, 0xBFE4CCCCC0000000
  %1727 = fmul fast float %1726, 0x4006DB6DA0000000
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fmul fast float %1728, 2.000000e+00
  %1730 = fsub fast float 3.000000e+00, %1729
  %1731 = bitcast float %1518 to i32
  %1732 = ashr i32 %1731, 1
  %1733 = add nsw i32 %1732, 532487669
  %1734 = bitcast i32 %1733 to float
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = bitcast float %1735 to i32
  %1737 = sub nsw i32 2129859010, %1736
  %1738 = bitcast i32 %1737 to float
  %1739 = fmul fast float %1738, 2.000000e+00
  %1740 = bitcast float %1519 to i32
  %1741 = ashr i32 %1740, 1
  %1742 = add nsw i32 %1741, 532487669
  %1743 = bitcast i32 %1742 to float
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = bitcast float %1744 to i32
  %1746 = sub nsw i32 2129859010, %1745
  %1747 = bitcast i32 %1746 to float
  %1748 = fmul fast float %1747, 2.000000e+00
  %1749 = bitcast float %1520 to i32
  %1750 = ashr i32 %1749, 1
  %1751 = add nsw i32 %1750, 532487669
  %1752 = bitcast i32 %1751 to float
  %1753 = fsub fast float 1.000000e+00, %1752
  %1754 = bitcast float %1753 to i32
  %1755 = sub nsw i32 2129859010, %1754
  %1756 = bitcast i32 %1755 to float
  %1757 = fmul fast float %1756, 2.000000e+00
  %1758 = fsub fast float 0x4002A9FBE0000000, %1739
  %1759 = fadd fast float %1739, 0x3FD54FDF00000000
  %1760 = bitcast float %1759 to i32
  %1761 = sub nsw i32 2129859010, %1760
  %1762 = bitcast i32 %1761 to float
  %1763 = fmul fast float %1762, %1758
  %1764 = fmul fast float %1763, %1763
  %1765 = fsub fast float 0x4002A9FBE0000000, %1748
  %1766 = fadd fast float %1748, 0x3FD54FDF00000000
  %1767 = bitcast float %1766 to i32
  %1768 = sub nsw i32 2129859010, %1767
  %1769 = bitcast i32 %1768 to float
  %1770 = fmul fast float %1769, %1765
  %1771 = fmul fast float %1770, %1770
  %1772 = fsub fast float 0x4002A9FBE0000000, %1757
  %1773 = fadd fast float %1757, 0x3FD54FDF00000000
  %1774 = bitcast float %1773 to i32
  %1775 = sub nsw i32 2129859010, %1774
  %1776 = bitcast i32 %1775 to float
  %1777 = fmul fast float %1776, %1772
  %1778 = fmul fast float %1777, %1777
  %1779 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1764)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1771)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1778)  ; FMax(a,b)
  %1782 = fsub fast float 1.000000e+00, %1667
  %1783 = fadd fast float %1782, %1683
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = fsub fast float 1.000000e+00, %1647
  %1786 = fmul fast float %1725, %1785
  %1787 = fmul fast float %1728, %1728
  %1788 = fmul fast float %1787, %1786
  %1789 = fmul fast float %1788, %1730
  %1790 = fmul fast float %1785, 0xBFE99999A0000000
  %1791 = fmul fast float %1790, %1676
  %1792 = fmul fast float %1791, %1687
  %1793 = fadd fast float %1792, 1.000000e+00
  %1794 = fadd fast float %1521, -1.000000e+00
  %1795 = fmul fast float %1793, %1794
  %1796 = fadd fast float %1795, 1.000000e+00
  %1797 = fsub fast float %1779, %1518
  %1798 = fsub fast float %1780, %1519
  %1799 = fsub fast float %1781, %1520
  %1800 = fmul fast float %1789, %1797
  %1801 = fmul fast float %1789, %1798
  %1802 = fmul fast float %1789, %1799
  %1803 = fadd fast float %1800, %1518
  %1804 = fadd fast float %1801, %1519
  %1805 = fadd fast float %1802, %1520
  %1806 = fsub fast float %75, %1497
  %1807 = fsub fast float %76, %1498
  %1808 = fsub fast float %77, %1499
  %1809 = fmul fast float %1789, %1806
  %1810 = fmul fast float %1789, %1807
  %1811 = fmul fast float %1789, %1808
  %1812 = fadd fast float %1809, %1497
  %1813 = fadd fast float %1810, %1498
  %1814 = fadd fast float %1811, %1499
  %1815 = fmul fast float %1789, %1784
  %1816 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1817 = fsub fast float 1.000000e+00, %1816
  %1818 = fmul fast float %1815, %1817
  %1819 = fadd fast float %1818, %1816
  %1820 = fsub fast float 1.000000e+00, %1481
  %1821 = fmul fast float %1789, %1820
  %1822 = fadd fast float %1821, %1481
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1812, float %1813, float %1814, float %1812, float %1813, float %1814)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1812, %1824
  %1826 = fmul fast float %1813, %1824
  %1827 = fmul fast float %1814, %1824
  br label %1828

; <label>:1828                                    ; preds = %1660, %1653
  %1829 = phi float [ %1659, %1653 ], [ %1666, %1660 ]
  %1830 = phi float [ %1658, %1653 ], [ %1664, %1660 ]
  %1831 = phi float [ %1657, %1653 ], [ %1662, %1660 ]
  %1832 = phi float [ %1656, %1653 ], [ %1665, %1660 ]
  %1833 = phi float [ %1655, %1653 ], [ %1663, %1660 ]
  %1834 = phi float [ %1654, %1653 ], [ %1661, %1660 ]
  %1835 = phi float [ %1558, %1653 ], [ %1712, %1660 ]
  %1836 = phi float [ %1559, %1653 ], [ %1713, %1660 ]
  %1837 = phi float [ %1560, %1653 ], [ %1714, %1660 ]
  %1838 = phi float [ %1518, %1653 ], [ %1803, %1660 ]
  %1839 = phi float [ %1519, %1653 ], [ %1804, %1660 ]
  %1840 = phi float [ %1520, %1653 ], [ %1805, %1660 ]
  %1841 = phi float [ %1497, %1653 ], [ %1825, %1660 ]
  %1842 = phi float [ %1498, %1653 ], [ %1826, %1660 ]
  %1843 = phi float [ %1499, %1653 ], [ %1827, %1660 ]
  %1844 = phi float [ %1521, %1653 ], [ %1819, %1660 ]
  %1845 = phi float [ %1481, %1653 ], [ %1822, %1660 ]
  %1846 = select i1 %181, float 0.000000e+00, float %1840
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %1831, float %1830, float %1829)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1849 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1833, float %1832, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %1850 = fmul fast float %1849, 2.000000e+00
  %1851 = fmul fast float %1850, %1841
  %1852 = fmul fast float %1850, %1842
  %1853 = fmul fast float %1850, %1843
  %1854 = fsub fast float %1834, %1851
  %1855 = fsub fast float %1833, %1852
  %1856 = fsub fast float %1832, %1853
  %1857 = call float @dx.op.binary.f32(i32 36, float %1845, float 1.000000e+00)  ; FMin(a,b)
  %1858 = fsub fast float 1.000000e+00, %1845
  %1859 = bitcast float %1858 to i32
  %1860 = sub nsw i32 2129859010, %1859
  %1861 = bitcast i32 %1860 to float
  %1862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %47)  ; FMax(a,b)
  %1863 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = fcmp fast oeq float %1863, 0.000000e+00
  %1865 = fcmp fast oeq float %1862, 0.000000e+00
  %1866 = or i1 %1865, %1864
  br i1 %1866, label %1896, label %1867

; <label>:1867                                    ; preds = %1828
  %1868 = fsub fast float -0.000000e+00, %50
  %1869 = fsub fast float -0.000000e+00, %48
  %1870 = call float @dx.op.unary.f32(i32 24, float %1863)  ; Sqrt(value)
  %1871 = fdiv fast float %1870, %1862
  %1872 = fcmp fast ogt float %1871, 0x3FFB6F8900000000
  %1873 = select i1 %1872, float 0x3FFB6F8900000000, float %1871
  %1874 = fmul fast float %1873, 0x3FE8A23460000000
  %1875 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1876 = call float @dx.op.binary.f32(i32 35, float %1873, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1877 = fmul fast float %1875, %1862
  %1878 = fmul fast float %1876, 0x3FF279A740000000
  %1879 = fadd fast float %1878, -1.000000e+00
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1868, float %1869, float %49, float %1868, float %1869, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = call float @dx.op.unary.f32(i32 25, float %1880)  ; Rsqrt(value)
  %1882 = fmul fast float %1881, %1868
  %1883 = fmul fast float %1881, %1869
  %1884 = fmul fast float %1881, %49
  %1885 = fmul fast float %1879, %1879
  %1886 = fsub fast float 1.000000e+00, %1885
  %1887 = fmul fast float %1876, 0x40005F8BE0000000
  %1888 = fsub fast float 0x400C5BF8A0000000, %1887
  %1889 = fdiv fast float %1877, %1888
  %1890 = fmul fast float %1889, 0x3FEE31C3C0000000
  %1891 = fmul fast float %1890, %1886
  %1892 = fmul fast float %1876, 0x3FDACB7480000000
  %1893 = fadd fast float %1892, 0xBFD7347680000000
  %1894 = fmul fast float %1893, %1889
  %1895 = fmul fast float %1894, %1886
  br label %1896

; <label>:1896                                    ; preds = %1867, %1828
  %1897 = phi float [ %1882, %1867 ], [ 0.000000e+00, %1828 ]
  %1898 = phi float [ %1883, %1867 ], [ 0.000000e+00, %1828 ]
  %1899 = phi float [ %1884, %1867 ], [ 0.000000e+00, %1828 ]
  %1900 = phi float [ %1891, %1867 ], [ 0.000000e+00, %1828 ]
  %1901 = phi float [ %1895, %1867 ], [ 0.000000e+00, %1828 ]
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = fmul fast float %1902, 0x3FDF454380000000
  %1904 = fmul fast float %1902, %1902
  %1905 = fmul fast float %1904, 0x3FEE471020000000
  %1906 = fadd fast float %1905, 0xBFD42F6020000000
  %1907 = fmul fast float %1862, 0x3FD20DD760000000
  %1908 = fmul fast float %1906, %1901
  %1909 = fadd fast float %1908, %1907
  %1910 = fmul fast float %1903, %1900
  %1911 = fadd fast float %1909, %1910
  %1912 = fsub fast float %1909, %1910
  %1913 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %1914 = fmul fast float %1913, 0x3FDF454380000000
  %1915 = fmul fast float %1913, %1913
  %1916 = fmul fast float %1915, 0x3FEE471020000000
  %1917 = fadd fast float %1916, 0xBFD42F6020000000
  %1918 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1900, float %1901, float 0x3FD20DD760000000, float %1914, float %1917)  ; Dot3(ax,ay,az,bx,by,bz)
  %1919 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %43)  ; FMax(a,b)
  %1920 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %1921 = fcmp fast oeq float %1920, 0.000000e+00
  %1922 = fcmp fast oeq float %1919, 0.000000e+00
  %1923 = or i1 %1922, %1921
  br i1 %1923, label %1953, label %1924

; <label>:1924                                    ; preds = %1896
  %1925 = fsub fast float -0.000000e+00, %46
  %1926 = fsub fast float -0.000000e+00, %44
  %1927 = call float @dx.op.unary.f32(i32 24, float %1920)  ; Sqrt(value)
  %1928 = fdiv fast float %1927, %1919
  %1929 = fcmp fast ogt float %1928, 0x3FFB6F8900000000
  %1930 = select i1 %1929, float 0x3FFB6F8900000000, float %1928
  %1931 = fmul fast float %1930, 0x3FE8A23460000000
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = call float @dx.op.binary.f32(i32 35, float %1930, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1934 = fmul fast float %1932, %1919
  %1935 = fmul fast float %1933, 0x3FF279A740000000
  %1936 = fadd fast float %1935, -1.000000e+00
  %1937 = call float @dx.op.dot3.f32(i32 55, float %1925, float %1926, float %45, float %1925, float %1926, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = call float @dx.op.unary.f32(i32 25, float %1937)  ; Rsqrt(value)
  %1939 = fmul fast float %1938, %1925
  %1940 = fmul fast float %1938, %1926
  %1941 = fmul fast float %1938, %45
  %1942 = fmul fast float %1936, %1936
  %1943 = fsub fast float 1.000000e+00, %1942
  %1944 = fmul fast float %1933, 0x40005F8BE0000000
  %1945 = fsub fast float 0x400C5BF8A0000000, %1944
  %1946 = fdiv fast float %1934, %1945
  %1947 = fmul fast float %1946, 0x3FEE31C3C0000000
  %1948 = fmul fast float %1947, %1943
  %1949 = fmul fast float %1933, 0x3FDACB7480000000
  %1950 = fadd fast float %1949, 0xBFD7347680000000
  %1951 = fmul fast float %1950, %1946
  %1952 = fmul fast float %1951, %1943
  br label %1953

; <label>:1953                                    ; preds = %1924, %1896
  %1954 = phi float [ %1939, %1924 ], [ 0.000000e+00, %1896 ]
  %1955 = phi float [ %1940, %1924 ], [ 0.000000e+00, %1896 ]
  %1956 = phi float [ %1941, %1924 ], [ 0.000000e+00, %1896 ]
  %1957 = phi float [ %1948, %1924 ], [ 0.000000e+00, %1896 ]
  %1958 = phi float [ %1952, %1924 ], [ 0.000000e+00, %1896 ]
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1954, float %1955, float %1956, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = fmul fast float %1959, 0x3FDF454380000000
  %1961 = fmul fast float %1959, %1959
  %1962 = fmul fast float %1961, 0x3FEE471020000000
  %1963 = fadd fast float %1962, 0xBFD42F6020000000
  %1964 = fmul fast float %1919, 0x3FD20DD760000000
  %1965 = fmul fast float %1963, %1958
  %1966 = fadd fast float %1965, %1964
  %1967 = fmul fast float %1960, %1957
  %1968 = fadd fast float %1966, %1967
  %1969 = fsub fast float %1966, %1967
  %1970 = call float @dx.op.dot3.f32(i32 55, float %1954, float %1955, float %1956, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = fmul fast float %1970, 0x3FDF454380000000
  %1972 = fmul fast float %1970, %1970
  %1973 = fmul fast float %1972, 0x3FEE471020000000
  %1974 = fadd fast float %1973, 0xBFD42F6020000000
  %1975 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1957, float %1958, float 0x3FD20DD760000000, float %1971, float %1974)  ; Dot3(ax,ay,az,bx,by,bz)
  %1976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %39)  ; FMax(a,b)
  %1977 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = fcmp fast oeq float %1977, 0.000000e+00
  %1979 = fcmp fast oeq float %1976, 0.000000e+00
  %1980 = or i1 %1979, %1978
  br i1 %1980, label %2010, label %1981

; <label>:1981                                    ; preds = %1953
  %1982 = fsub fast float -0.000000e+00, %42
  %1983 = fsub fast float -0.000000e+00, %40
  %1984 = call float @dx.op.unary.f32(i32 24, float %1977)  ; Sqrt(value)
  %1985 = fdiv fast float %1984, %1976
  %1986 = fcmp fast ogt float %1985, 0x3FFB6F8900000000
  %1987 = select i1 %1986, float 0x3FFB6F8900000000, float %1985
  %1988 = fmul fast float %1987, 0x3FE8A23460000000
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = call float @dx.op.binary.f32(i32 35, float %1987, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1991 = fmul fast float %1989, %1976
  %1992 = fmul fast float %1990, 0x3FF279A740000000
  %1993 = fadd fast float %1992, -1.000000e+00
  %1994 = call float @dx.op.dot3.f32(i32 55, float %1982, float %1983, float %41, float %1982, float %1983, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = call float @dx.op.unary.f32(i32 25, float %1994)  ; Rsqrt(value)
  %1996 = fmul fast float %1995, %1982
  %1997 = fmul fast float %1995, %1983
  %1998 = fmul fast float %1995, %41
  %1999 = fmul fast float %1993, %1993
  %2000 = fsub fast float 1.000000e+00, %1999
  %2001 = fmul fast float %1990, 0x40005F8BE0000000
  %2002 = fsub fast float 0x400C5BF8A0000000, %2001
  %2003 = fdiv fast float %1991, %2002
  %2004 = fmul fast float %2003, 0x3FEE31C3C0000000
  %2005 = fmul fast float %2004, %2000
  %2006 = fmul fast float %1990, 0x3FDACB7480000000
  %2007 = fadd fast float %2006, 0xBFD7347680000000
  %2008 = fmul fast float %2007, %2003
  %2009 = fmul fast float %2008, %2000
  br label %2010

; <label>:2010                                    ; preds = %1981, %1953
  %2011 = phi float [ %1996, %1981 ], [ 0.000000e+00, %1953 ]
  %2012 = phi float [ %1997, %1981 ], [ 0.000000e+00, %1953 ]
  %2013 = phi float [ %1998, %1981 ], [ 0.000000e+00, %1953 ]
  %2014 = phi float [ %2005, %1981 ], [ 0.000000e+00, %1953 ]
  %2015 = phi float [ %2009, %1981 ], [ 0.000000e+00, %1953 ]
  %2016 = call float @dx.op.dot3.f32(i32 55, float %2011, float %2012, float %2013, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = fmul fast float %2016, 0x3FDF454380000000
  %2018 = fmul fast float %2016, %2016
  %2019 = fmul fast float %2018, 0x3FEE471020000000
  %2020 = fadd fast float %2019, 0xBFD42F6020000000
  %2021 = fmul fast float %1976, 0x3FD20DD760000000
  %2022 = fmul fast float %2020, %2015
  %2023 = fadd fast float %2022, %2021
  %2024 = fmul fast float %2017, %2014
  %2025 = fadd fast float %2023, %2024
  %2026 = fsub fast float %2023, %2024
  %2027 = call float @dx.op.dot3.f32(i32 55, float %2011, float %2012, float %2013, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2028 = fmul fast float %2027, 0x3FDF454380000000
  %2029 = fmul fast float %2027, %2027
  %2030 = fmul fast float %2029, 0x3FEE471020000000
  %2031 = fadd fast float %2030, 0xBFD42F6020000000
  %2032 = call float @dx.op.dot3.f32(i32 55, float %1976, float %2014, float %2015, float 0x3FD20DD760000000, float %2028, float %2031)  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = call float @dx.op.binary.f32(i32 35, float %1911, float 0.000000e+00)  ; FMax(a,b)
  %2034 = call float @dx.op.binary.f32(i32 35, float %1968, float 0.000000e+00)  ; FMax(a,b)
  %2035 = call float @dx.op.binary.f32(i32 35, float %2025, float 0.000000e+00)  ; FMax(a,b)
  %2036 = call float @dx.op.binary.f32(i32 35, float %1912, float 0.000000e+00)  ; FMax(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %1969, float 0.000000e+00)  ; FMax(a,b)
  %2038 = call float @dx.op.binary.f32(i32 35, float %2026, float 0.000000e+00)  ; FMax(a,b)
  %2039 = call float @dx.op.binary.f32(i32 35, float %1918, float 0.000000e+00)  ; FMax(a,b)
  %2040 = call float @dx.op.binary.f32(i32 35, float %1975, float 0.000000e+00)  ; FMax(a,b)
  %2041 = call float @dx.op.binary.f32(i32 35, float %2032, float 0.000000e+00)  ; FMax(a,b)
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  %2044 = call float @dx.op.binary.f32(i32 36, float %1835, float %2043)  ; FMin(a,b)
  %2045 = fsub fast float 1.000000e+00, %1857
  %2046 = fmul fast float %2044, %2045
  %2047 = fsub fast float 1.000000e+00, %2046
  %2048 = bitcast float %2047 to i32
  %2049 = sub nsw i32 2129859010, %2048
  %2050 = bitcast i32 %2049 to float
  %2051 = call float @dx.op.binary.f32(i32 36, float %1836, float %2043)  ; FMin(a,b)
  %2052 = fmul fast float %2051, %2045
  %2053 = fsub fast float 1.000000e+00, %2052
  %2054 = bitcast float %2053 to i32
  %2055 = sub nsw i32 2129859010, %2054
  %2056 = bitcast i32 %2055 to float
  %2057 = call float @dx.op.binary.f32(i32 36, float %1837, float %2043)  ; FMin(a,b)
  %2058 = fmul fast float %2057, %2045
  %2059 = fsub fast float 1.000000e+00, %2058
  %2060 = bitcast float %2059 to i32
  %2061 = sub nsw i32 2129859010, %2060
  %2062 = bitcast i32 %2061 to float
  %2063 = fmul fast float %2033, %1857
  %2064 = fmul fast float %2063, %2050
  %2065 = fmul fast float %2034, %1857
  %2066 = fmul fast float %2065, %2056
  %2067 = fmul fast float %2035, %1857
  %2068 = fmul fast float %2067, %2062
  %2069 = call float @dx.op.binary.f32(i32 36, float %1838, float %2043)  ; FMin(a,b)
  %2070 = fmul fast float %2069, %2045
  %2071 = fsub fast float 1.000000e+00, %2070
  %2072 = bitcast float %2071 to i32
  %2073 = sub nsw i32 2129859010, %2072
  %2074 = bitcast i32 %2073 to float
  %2075 = call float @dx.op.binary.f32(i32 36, float %1839, float %2043)  ; FMin(a,b)
  %2076 = fmul fast float %2075, %2045
  %2077 = fsub fast float 1.000000e+00, %2076
  %2078 = bitcast float %2077 to i32
  %2079 = sub nsw i32 2129859010, %2078
  %2080 = bitcast i32 %2079 to float
  %2081 = call float @dx.op.binary.f32(i32 36, float %1846, float %2043)  ; FMin(a,b)
  %2082 = fmul fast float %2081, %2045
  %2083 = fsub fast float 1.000000e+00, %2082
  %2084 = bitcast float %2083 to i32
  %2085 = sub nsw i32 2129859010, %2084
  %2086 = bitcast i32 %2085 to float
  %2087 = fmul fast float %2039, %1857
  %2088 = fmul fast float %2087, %2074
  %2089 = fmul fast float %2040, %1857
  %2090 = fmul fast float %2089, %2080
  %2091 = fmul fast float %2041, %1857
  %2092 = fmul fast float %2091, %2086
  %2093 = call float @dx.op.dot3.f32(i32 55, float %2064, float %2066, float %2068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2094 = select i1 %181, float 0.000000e+00, float %2064
  %2095 = select i1 %181, float %2093, float %2066
  %2096 = select i1 %181, float 0.000000e+00, float %2068
  %2097 = call float @dx.op.dot3.f32(i32 55, float %2036, float %2037, float %2038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = select i1 %181, float 0.000000e+00, float %2036
  %2099 = select i1 %181, float %2097, float %2037
  %2100 = select i1 %181, float 0.000000e+00, float %2038
  %2101 = call float @dx.op.dot3.f32(i32 55, float %2088, float %2090, float %2092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2102 = select i1 %181, float 0.000000e+00, float %2088
  %2103 = select i1 %181, float %2101, float %2090
  %2104 = select i1 %181, float 0.000000e+00, float %2092
  %2105 = fmul fast float %871, %871
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2107 = fmul fast float %1848, 9.843750e-01
  %2108 = fmul fast float %1844, 9.843750e-01
  %2109 = fadd fast float %2107, 7.812500e-03
  %2110 = fadd fast float %2108, 7.812500e-03
  %2111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %2109, float %2110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2112 = extractvalue %dx.types.ResRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.ResRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.ResRet.f32 %2111, 2
  %2115 = extractvalue %dx.types.ResRet.f32 %2111, 3
  %2116 = fsub fast float 1.000000e+00, %2106
  %2117 = fsub fast float %2114, %2112
  %2118 = fsub fast float %2115, %2113
  %2119 = fmul fast float %2117, %2116
  %2120 = fmul fast float %2118, %2116
  %2121 = fadd fast float %2119, %2112
  %2122 = fadd fast float %2120, %2113
  %2123 = fmul fast float %2121, %1838
  %2124 = fmul fast float %2121, %1839
  %2125 = fmul fast float %2121, %1846
  %2126 = fadd fast float %2123, %2122
  %2127 = fadd fast float %2124, %2122
  %2128 = fadd fast float %2125, %2122
  %2129 = fcmp fast ogt float %1471, 0.000000e+00
  br i1 %2129, label %2130, label %2156

; <label>:2130                                    ; preds = %2010
  %2131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1471, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.f32 %2131, 2
  %2135 = fadd fast float %2132, -5.000000e-01
  %2136 = fadd fast float %2133, -5.000000e-01
  %2137 = fadd fast float %2134, -5.000000e-01
  %2138 = fsub fast float 1.000000e+00, %1838
  %2139 = fsub fast float 1.000000e+00, %1839
  %2140 = fsub fast float 1.000000e+00, %1846
  %2141 = fmul fast float %1838, 4.000000e+00
  %2142 = fmul fast float %2141, %2138
  %2143 = fmul fast float %2142, %2135
  %2144 = fmul fast float %1839, 4.000000e+00
  %2145 = fmul fast float %2144, %2139
  %2146 = fmul fast float %2145, %2136
  %2147 = fmul fast float %1846, 4.000000e+00
  %2148 = fmul fast float %2147, %2140
  %2149 = fmul fast float %2148, %2137
  %2150 = fadd fast float %2143, %2126
  %2151 = fadd fast float %2146, %2127
  %2152 = fadd fast float %2149, %2128
  %2153 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2154 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2155 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  br label %2156

; <label>:2156                                    ; preds = %2130, %2010
  %2157 = phi float [ %2153, %2130 ], [ %2126, %2010 ]
  %2158 = phi float [ %2154, %2130 ], [ %2127, %2010 ]
  %2159 = phi float [ %2155, %2130 ], [ %2128, %2010 ]
  %2160 = call float @dx.op.binary.f32(i32 35, float %2158, float %2159)  ; FMax(a,b)
  %2161 = call float @dx.op.binary.f32(i32 35, float %2157, float %2160)  ; FMax(a,b)
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1836, float %1837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2164 = fcmp fast ogt float %2163, 0x3E7FF19E20000000
  %2165 = fdiv fast float 1.000000e+00, %2163
  %2166 = select i1 %2164, float %2165, float 0.000000e+00
  %2167 = fmul fast float %2166, %1835
  %2168 = fmul fast float %2166, %1836
  %2169 = fmul fast float %2166, %1837
  %2170 = fadd fast float %2167, -1.000000e+00
  %2171 = fadd fast float %2168, -1.000000e+00
  %2172 = fadd fast float %2169, -1.000000e+00
  %2173 = fmul fast float %2170, 5.000000e-01
  %2174 = fmul fast float %2171, 5.000000e-01
  %2175 = fmul fast float %2172, 5.000000e-01
  %2176 = fadd fast float %2173, 1.000000e+00
  %2177 = fadd fast float %2174, 1.000000e+00
  %2178 = fadd fast float %2175, 1.000000e+00
  %2179 = call float @dx.op.binary.f32(i32 35, float %1848, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2180 = fdiv fast float %871, %2179
  %2181 = fcmp fast olt float %1544, 1.270000e+02
  %2182 = fcmp fast olt float %1545, 1.270000e+02
  %2183 = fcmp fast olt float %1546, 1.270000e+02
  %2184 = fmul fast float %1544, 0xBFF7154760000000
  %2185 = fmul fast float %2184, %2180
  %2186 = fmul fast float %1545, 0xBFF7154760000000
  %2187 = fmul fast float %2186, %2180
  %2188 = fmul fast float %1546, 0xBFF7154760000000
  %2189 = fmul fast float %2188, %2180
  %2190 = call float @dx.op.unary.f32(i32 21, float %2185)  ; Exp(value)
  %2191 = call float @dx.op.unary.f32(i32 21, float %2187)  ; Exp(value)
  %2192 = call float @dx.op.unary.f32(i32 21, float %2189)  ; Exp(value)
  %2193 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2194 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2195 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2196 = select i1 %2181, float %2193, float 0.000000e+00
  %2197 = select i1 %2182, float %2194, float 0.000000e+00
  %2198 = select i1 %2183, float %2195, float 0.000000e+00
  %2199 = fmul fast float %2196, %2162
  %2200 = fmul fast float %2197, %2162
  %2201 = fmul fast float %2198, %2162
  %2202 = fadd fast float %2199, -1.000000e+00
  %2203 = fadd fast float %2200, -1.000000e+00
  %2204 = fadd fast float %2201, -1.000000e+00
  %2205 = fmul fast float %2202, %1494
  %2206 = fmul fast float %2203, %1494
  %2207 = fmul fast float %2204, %1494
  %2208 = fmul fast float %2157, %2102
  %2209 = fmul fast float %2158, %2103
  %2210 = fmul fast float %2159, %2104
  %2211 = fsub fast float 1.000000e+00, %1848
  %2212 = bitcast float %2211 to i32
  %2213 = sitofp i32 %2212 to float
  %2214 = fmul fast float %2213, 5.000000e+00
  %2215 = fadd fast float %2214, 0xC1EFBF8940000000
  %2216 = fptosi float %2215 to i32
  %2217 = bitcast i32 %2216 to float
  %2218 = fmul fast float %2217, %1470
  %2219 = fmul fast float %2094, %2218
  %2220 = fmul fast float %2219, %2162
  %2221 = fmul fast float %2220, %2176
  %2222 = fmul fast float %2095, %2218
  %2223 = fmul fast float %2222, %2162
  %2224 = fmul fast float %2223, %2177
  %2225 = fmul fast float %2096, %2218
  %2226 = fmul fast float %2225, %2162
  %2227 = fmul fast float %2226, %2178
  %2228 = fadd fast float %2208, %1475
  %2229 = fadd fast float %2228, %2221
  %2230 = fmul fast float %2229, %1494
  %2231 = fadd fast float %2209, %1476
  %2232 = fadd fast float %2231, %2224
  %2233 = fmul fast float %2232, %1494
  %2234 = fadd fast float %2210, %1477
  %2235 = fadd fast float %2234, %2227
  %2236 = fmul fast float %2235, %1494
  %2237 = fmul fast float %1839, 0x4012D0A400000000
  %2238 = fadd fast float %2207, 1.000000e+00
  %2239 = fadd fast float %2206, 1.000000e+00
  %2240 = fadd fast float %2205, 1.000000e+00
  %2241 = fmul fast float %2162, %2096
  %2242 = fmul fast float %2162, %2095
  %2243 = fmul fast float %2162, %2094
  %2244 = fsub fast float 1.000000e+00, %1844
  %2245 = fmul fast float %2244, %1494
  %2246 = fsub fast float 1.000000e+00, %2245
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = fadd fast float %2237, 0x3FDB6377A0000000
  %2250 = fmul fast float %2248, %2249
  %2251 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1563, float %1564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = fadd fast float %2250, %2251
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = call float @dx.op.binary.f32(i32 35, float %2253, float 0x3F847AE140000000)  ; FMax(a,b)
  %2255 = fmul fast float %2254, %2254
  %2256 = fmul fast float %2255, %2255
  %2257 = fmul fast float %2256, 0xC00A935000000000
  %2258 = call float @dx.op.unary.f32(i32 21, float %2257)  ; Exp(value)
  %2259 = fsub fast float 1.000000e+00, %2258
  %2260 = fmul fast float %2240, %2098
  %2261 = fmul fast float %2260, %2259
  %2262 = fmul fast float %2239, %2099
  %2263 = fmul fast float %2262, %2259
  %2264 = fmul fast float %2238, %2100
  %2265 = fmul fast float %2264, %2259
  %2266 = fadd fast float %2261, %2243
  %2267 = fmul fast float %2266, %1494
  %2268 = fadd fast float %2263, %2242
  %2269 = fmul fast float %2268, %1494
  %2270 = fadd fast float %2265, %2241
  %2271 = fmul fast float %2270, %1494
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 3
  %2274 = fcmp fast oeq float %2273, 0.000000e+00
  br i1 %2274, label %3404, label %2275

; <label>:2275                                    ; preds = %2156
  %2276 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2272, 2
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2286 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2287 = select i1 %181, float %2284, float %2280
  %2288 = select i1 %181, float %2286, float %2281
  %2289 = select i1 %181, float %2285, float %2282
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 2
  %2292 = fmul fast float %2291, %75
  %2293 = fmul fast float %2291, %76
  %2294 = fmul fast float %2291, %77
  %2295 = fadd fast float %2292, %120
  %2296 = fadd fast float %2293, %121
  %2297 = fadd fast float %2294, %122
  %2298 = fcmp fast olt float %2273, 0.000000e+00
  br i1 %2298, label %2923, label %2299

; <label>:2299                                    ; preds = %2275
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.CBufRet.f32 %2310, 1
  %2313 = extractvalue %dx.types.CBufRet.f32 %2310, 2
  %2314 = extractvalue %dx.types.CBufRet.f32 %2310, 3
  %2315 = fmul fast float %2301, %2295
  %2316 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2302, float %2315)  ; FMad(a,b,c)
  %2317 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2303, float %2316)  ; FMad(a,b,c)
  %2318 = fadd fast float %2317, %2304
  %2319 = fmul fast float %2306, %2295
  %2320 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2307, float %2319)  ; FMad(a,b,c)
  %2321 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2308, float %2320)  ; FMad(a,b,c)
  %2322 = fadd fast float %2321, %2309
  %2323 = fmul fast float %2311, %2295
  %2324 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2312, float %2323)  ; FMad(a,b,c)
  %2325 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2313, float %2324)  ; FMad(a,b,c)
  %2326 = fadd fast float %2325, %2314
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.CBufRet.f32 %2327, 1
  %2330 = extractvalue %dx.types.CBufRet.f32 %2327, 3
  %2331 = fmul fast float %2330, %2318
  %2332 = fmul fast float %2330, %2322
  %2333 = fadd fast float %2331, %2328
  %2334 = fadd fast float %2332, %2329
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.CBufRet.f32 %2335, 3
  %2339 = fmul fast float %2338, %2318
  %2340 = fmul fast float %2338, %2322
  %2341 = fadd fast float %2339, %2336
  %2342 = fadd fast float %2340, %2337
  %2343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2344 = extractvalue %dx.types.CBufRet.f32 %2343, 1
  %2345 = fsub fast float %2344, %2326
  %2346 = extractvalue %dx.types.CBufRet.f32 %2343, 2
  %2347 = fmul fast float %2345, %2346
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2353 = fadd fast float %2352, %2350
  %2354 = fcmp fast ogt float %2353, 0.000000e+00
  br i1 %2354, label %2355, label %2379

; <label>:2355                                    ; preds = %2299
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.CBufRet.f32 %2356, 1
  %2359 = fsub fast float %2341, %2357
  %2360 = fsub fast float %2342, %2358
  %2361 = fcmp fast olt float %2359, 0.000000e+00
  %2362 = fcmp fast olt float %2360, 0.000000e+00
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 2
  %2367 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2368 = select i1 %2361, float %2364, float %2366
  %2369 = select i1 %2362, float %2365, float %2367
  %2370 = fmul fast float %2368, %2359
  %2371 = fmul fast float %2369, %2360
  %2372 = call float @dx.op.unary.f32(i32 6, float %2370)  ; FAbs(value)
  %2373 = call float @dx.op.unary.f32(i32 6, float %2371)  ; FAbs(value)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2375 = call float @dx.op.binary.f32(i32 35, float %2372, float %2373)  ; FMax(a,b)
  %2376 = fsub fast float %2374, %2375
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = fmul fast float %2377, %2349
  br label %2379

; <label>:2379                                    ; preds = %2355, %2299
  %2380 = phi float [ %2378, %2355 ], [ 0.000000e+00, %2299 ]
  %2381 = extractvalue %dx.types.CBufRet.f32 %2327, 2
  %2382 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2383 = fadd fast float %2382, %2381
  %2384 = fcmp fast ogt float %2383, 0.000000e+00
  %2385 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  br i1 %2384, label %2386, label %2409

; <label>:2386                                    ; preds = %2379
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = extractvalue %dx.types.CBufRet.f32 %2387, 1
  %2390 = fsub fast float %2333, %2388
  %2391 = fsub fast float %2334, %2389
  %2392 = fcmp fast olt float %2390, 0.000000e+00
  %2393 = fcmp fast olt float %2391, 0.000000e+00
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2399 = select i1 %2392, float %2395, float %2397
  %2400 = select i1 %2393, float %2396, float %2398
  %2401 = fmul fast float %2399, %2390
  %2402 = fmul fast float %2400, %2391
  %2403 = call float @dx.op.unary.f32(i32 6, float %2401)  ; FAbs(value)
  %2404 = call float @dx.op.unary.f32(i32 6, float %2402)  ; FAbs(value)
  %2405 = call float @dx.op.binary.f32(i32 35, float %2403, float %2404)  ; FMax(a,b)
  %2406 = fsub fast float %2385, %2405
  %2407 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  %2408 = fmul fast float %2407, %2349
  br label %2409

; <label>:2409                                    ; preds = %2386, %2379
  %2410 = phi float [ %2408, %2386 ], [ 0.000000e+00, %2379 ]
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 1
  %2413 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.CBufRet.f32 %2414, 1
  %2417 = fsub fast float %2318, %2415
  %2418 = fsub fast float %2322, %2416
  %2419 = fcmp fast olt float %2417, 0.000000e+00
  %2420 = fcmp fast olt float %2418, 0.000000e+00
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2424 = extractvalue %dx.types.CBufRet.f32 %2421, 2
  %2425 = extractvalue %dx.types.CBufRet.f32 %2421, 3
  %2426 = select i1 %2419, float %2422, float %2424
  %2427 = select i1 %2420, float %2423, float %2425
  %2428 = fmul fast float %2426, %2417
  %2429 = fmul fast float %2427, %2418
  %2430 = call float @dx.op.unary.f32(i32 6, float %2428)  ; FAbs(value)
  %2431 = call float @dx.op.unary.f32(i32 6, float %2429)  ; FAbs(value)
  %2432 = call float @dx.op.binary.f32(i32 35, float %2430, float %2431)  ; FMax(a,b)
  %2433 = fsub fast float %2385, %2432
  %2434 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2435 = call float @dx.op.binary.f32(i32 36, float %2434, float %2413)  ; FMin(a,b)
  %2436 = fmul fast float %2435, %2349
  %2437 = fsub fast float %2410, %2436
  %2438 = fsub fast float %2380, %2410
  %2439 = fsub fast float %2438, %2436
  %2440 = call float @dx.op.binary.f32(i32 35, float %2410, float %2380)  ; FMax(a,b)
  %2441 = call float @dx.op.binary.f32(i32 35, float %2436, float %2440)  ; FMax(a,b)
  %2442 = fcmp fast olt float %2441, 1.000000e+00
  br i1 %2442, label %2443, label %2841, !dx.controlflow.hints !72

; <label>:2443                                    ; preds = %2409
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2446 = fcmp fast une float %2445, 0.000000e+00
  br i1 %2446, label %2447, label %2841, !dx.controlflow.hints !73

; <label>:2447                                    ; preds = %2443
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2452 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2457 = extractvalue %dx.types.CBufRet.f32 %2453, 3
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.CBufRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.CBufRet.f32 %2458, 2
  %2462 = extractvalue %dx.types.CBufRet.f32 %2458, 3
  %2463 = fmul fast float %2449, %2295
  %2464 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2450, float %2463)  ; FMad(a,b,c)
  %2465 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2451, float %2464)  ; FMad(a,b,c)
  %2466 = fadd fast float %2465, %2452
  %2467 = fmul fast float %2454, %2295
  %2468 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2455, float %2467)  ; FMad(a,b,c)
  %2469 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2456, float %2468)  ; FMad(a,b,c)
  %2470 = fadd fast float %2469, %2457
  %2471 = fmul fast float %2459, %2295
  %2472 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2460, float %2471)  ; FMad(a,b,c)
  %2473 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2461, float %2472)  ; FMad(a,b,c)
  %2474 = fadd fast float %2473, %2462
  %2475 = fcmp fast oge float %2466, 1.000000e+00
  %2476 = fcmp fast oge float %2470, 1.000000e+00
  %2477 = or i1 %2475, %2476
  %2478 = fcmp fast olt float %2466, 0.000000e+00
  %2479 = fcmp fast olt float %2470, 0.000000e+00
  %2480 = or i1 %2478, %2479
  %2481 = or i1 %2477, %2480
  br i1 %2481, label %2841, label %2482, !dx.controlflow.hints !74

; <label>:2482                                    ; preds = %2447
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.CBufRet.f32 %2483, 2
  %2487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.i32 %2487, 2
  %2489 = uitofp i32 %2488 to float
  %2490 = extractvalue %dx.types.CBufRet.i32 %2487, 3
  %2491 = uitofp i32 %2490 to float
  %2492 = extractvalue %dx.types.CBufRet.f32 %2483, 3
  %2493 = fmul fast float %2492, 2.000000e+00
  %2494 = fsub fast float %2466, %2484
  %2495 = fsub fast float %2470, %2485
  %2496 = fmul fast float %2493, %2494
  %2497 = fmul fast float %2493, %2495
  %2498 = fdiv fast float 1.000000e+00, %2278
  %2499 = fmul fast float %2497, %2498
  %2500 = call float @dx.op.unary.f32(i32 6, float %2499)  ; FAbs(value)
  %2501 = fmul fast float %2486, %2297
  %2502 = fmul fast float %2501, %2493
  %2503 = call float @dx.op.unary.f32(i32 6, float %2502)  ; FAbs(value)
  %2504 = call float @dx.op.unary.f32(i32 6, float %2496)  ; FAbs(value)
  %2505 = call float @dx.op.binary.f32(i32 35, float %2503, float %2500)  ; FMax(a,b)
  %2506 = call float @dx.op.binary.f32(i32 35, float %2504, float %2505)  ; FMax(a,b)
  %2507 = fmul fast float %2506, 2.000000e+00
  %2508 = call float @dx.op.unary.f32(i32 23, float %2507)  ; Log(value)
  %2509 = call float @dx.op.binary.f32(i32 35, float %2508, float %2489)  ; FMax(a,b)
  %2510 = call float @dx.op.unary.f32(i32 22, float %2509)  ; Frc(value)
  %2511 = fadd fast float %2510, 0xBFEA666660000000
  %2512 = fmul fast float %2511, 8.000000e+00
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = call float @dx.op.unary.f32(i32 27, float %2509)  ; Round_ni(value)
  %2515 = fadd fast float %2514, %2513
  %2516 = call float @dx.op.binary.f32(i32 36, float %2515, float %2491)  ; FMin(a,b)
  %2517 = call float @dx.op.unary.f32(i32 27, float %2516)  ; Round_ni(value)
  %2518 = fsub fast float -0.000000e+00, %2517
  %2519 = call float @dx.op.unary.f32(i32 21, float %2518)  ; Exp(value)
  %2520 = fmul fast float %2519, %2493
  %2521 = fmul fast float %2520, %2466
  %2522 = fmul fast float %2520, %2470
  %2523 = fmul fast float %2521, 2.500000e-01
  %2524 = fmul fast float %2522, 2.500000e-01
  %2525 = fadd fast float %2523, 5.000000e-01
  %2526 = fadd fast float %2524, 5.000000e-01
  %2527 = fsub fast float %2491, %2489
  %2528 = fptoui float %2527 to i32
  %2529 = add i32 %2528, 320
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %2529)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = fcmp fast une float %2516, %2491
  %2534 = fsub fast float %2466, %2531
  %2535 = fsub fast float %2470, %2532
  %2536 = call float @dx.op.unary.f32(i32 6, float %2534)  ; FAbs(value)
  %2537 = call float @dx.op.unary.f32(i32 6, float %2535)  ; FAbs(value)
  %2538 = fmul fast float %2536, %2520
  %2539 = fmul fast float %2537, %2520
  %2540 = fcmp fast olt float %2538, 1.000000e+00
  %2541 = fcmp fast olt float %2539, 1.000000e+00
  %2542 = and i1 %2540, %2541
  %2543 = or i1 %2533, %2542
  br i1 %2543, label %2544, label %2841, !dx.controlflow.hints !75

; <label>:2544                                    ; preds = %2482
  %2545 = fmul fast float %2522, 5.000000e-01
  %2546 = fmul fast float %2521, 5.000000e-01
  %2547 = fadd fast float %2545, 5.000000e-01
  %2548 = fadd fast float %2546, 5.000000e-01
  %2549 = sitofp i32 %2488 to float
  %2550 = fsub fast float %2516, %2549
  %2551 = call float @dx.op.unary.f32(i32 27, float %2550)  ; Round_ni(value)
  %2552 = call float @dx.op.unary.f32(i32 22, float %2516)  ; Frc(value)
  %2553 = call float @dx.op.unary.f32(i32 22, float %2548)  ; Frc(value)
  %2554 = call float @dx.op.unary.f32(i32 22, float %2547)  ; Frc(value)
  %2555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2553, float %2554, float %2551, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2556 = extractvalue %dx.types.ResRet.f32 %2555, 0
  %2557 = extractvalue %dx.types.ResRet.f32 %2555, 1
  %2558 = extractvalue %dx.types.ResRet.f32 %2555, 2
  %2559 = extractvalue %dx.types.ResRet.f32 %2555, 3
  %2560 = fcmp fast ogt float %2552, 0.000000e+00
  br i1 %2560, label %2561, label %2582, !dx.controlflow.hints !76

; <label>:2561                                    ; preds = %2544
  %2562 = fadd fast float %2551, 1.000000e+00
  %2563 = call float @dx.op.unary.f32(i32 22, float %2525)  ; Frc(value)
  %2564 = call float @dx.op.unary.f32(i32 22, float %2526)  ; Frc(value)
  %2565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2563, float %2564, float %2562, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.ResRet.f32 %2565, 1
  %2568 = extractvalue %dx.types.ResRet.f32 %2565, 2
  %2569 = extractvalue %dx.types.ResRet.f32 %2565, 3
  %2570 = fsub fast float %2566, %2556
  %2571 = fsub fast float %2567, %2557
  %2572 = fsub fast float %2568, %2558
  %2573 = fsub fast float %2569, %2559
  %2574 = fmul fast float %2570, %2552
  %2575 = fmul fast float %2571, %2552
  %2576 = fmul fast float %2572, %2552
  %2577 = fmul fast float %2573, %2552
  %2578 = fadd fast float %2574, %2556
  %2579 = fadd fast float %2575, %2557
  %2580 = fadd fast float %2576, %2558
  %2581 = fadd fast float %2577, %2559
  br label %2582

; <label>:2582                                    ; preds = %2561, %2544
  %2583 = phi float [ %2578, %2561 ], [ %2556, %2544 ]
  %2584 = phi float [ %2579, %2561 ], [ %2557, %2544 ]
  %2585 = phi float [ %2580, %2561 ], [ %2558, %2544 ]
  %2586 = phi float [ %2581, %2561 ], [ %2559, %2544 ]
  %2587 = fadd fast float %2583, -5.000000e-01
  %2588 = fadd fast float %2585, -5.000000e-01
  %2589 = fmul fast float %2587, 0xBFD5555560000000
  %2590 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2588, float %2589)  ; FMad(a,b,c)
  %2591 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2584, float 0.000000e+00)  ; FMad(a,b,c)
  %2592 = fadd fast float %2591, %2586
  %2593 = fmul fast float %2587, -7.500000e-01
  %2594 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2588, float %2593)  ; FMad(a,b,c)
  %2595 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2584, float 0.000000e+00)  ; FMad(a,b,c)
  %2596 = fadd fast float %2595, %2586
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 0
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2601 = extractvalue %dx.types.CBufRet.f32 %2599, 1
  %2602 = extractvalue %dx.types.CBufRet.f32 %2599, 2
  %2603 = extractvalue %dx.types.CBufRet.f32 %2599, 3
  %2604 = fsub fast float %2600, %2590
  %2605 = fsub fast float %2601, %2592
  %2606 = fsub fast float %2602, %2594
  %2607 = fsub fast float %2603, %2596
  %2608 = fmul fast float %2604, %2598
  %2609 = fmul fast float %2605, %2598
  %2610 = fmul fast float %2606, %2598
  %2611 = fmul fast float %2607, %2598
  %2612 = fadd fast float %2608, %2590
  %2613 = fadd fast float %2609, %2592
  %2614 = fadd fast float %2610, %2594
  %2615 = fadd fast float %2611, %2596
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 536870911
  %2619 = uitofp i32 %2618 to float
  %2620 = fmul fast float %2619, %2466
  %2621 = fmul fast float %2619, %2470
  %2622 = fptoui float %2620 to i32
  %2623 = fptoui float %2621 to i32
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 31
  %2627 = lshr i32 %2622, %2626
  %2628 = lshr i32 %2623, %2626
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = and i32 %2630, 31
  %2632 = shl i32 1, %2631
  %2633 = call i32 @dx.op.binary.i32(i32 40, i32 %2632, i32 4)  ; UMin(a,b)
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = extractvalue %dx.types.ResRet.i32 %2634, 1
  %2637 = icmp eq i32 %2633, 0
  br i1 %2637, label %2679, label %2638

; <label>:2638                                    ; preds = %2582
  br label %2639

; <label>:2639                                    ; preds = %2667, %2638
  %2640 = phi i32 [ %2670, %2667 ], [ 0, %2638 ]
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = lshr i32 %2642, 16
  %2644 = and i32 %2643, 31
  %2645 = shl i32 %2628, %2644
  %2646 = add i32 %2645, %2627
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 31
  %2650 = shl i32 %2646, %2649
  %2651 = add i32 %2650, %2640
  %2652 = shl i32 %2651, 2
  %2653 = add i32 %2652, 32
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = icmp slt i32 %2655, 0
  %2657 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2640
  %2658 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2640
  %2659 = bitcast float* %2657 to i32*
  %2660 = bitcast float* %2658 to i32*
  br i1 %2656, label %2661, label %2667

; <label>:2661                                    ; preds = %2639
  %2662 = and i32 %2655, 1073741823
  %2663 = add nuw nsw i32 %2662, 20
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.i32 %2664, 1
  br label %2667

; <label>:2667                                    ; preds = %2661, %2639
  %2668 = phi i32 [ %2665, %2661 ], [ %2635, %2639 ]
  %2669 = phi i32 [ %2666, %2661 ], [ %2636, %2639 ]
  store i32 %2668, i32* %2659, align 4
  store i32 %2669, i32* %2660, align 4
  %2670 = add nuw i32 %2640, 1
  %2671 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.i32 %2671, 2
  %2673 = icmp eq i32 %2672, 0
  %2674 = icmp ugt i32 %2655, -1073741825
  %2675 = and i1 %2674, %2673
  %2676 = icmp ult i32 %2670, %2633
  %2677 = and i1 %2675, %2676
  br i1 %2677, label %2639, label %2678

; <label>:2678                                    ; preds = %2667
  br label %2679

; <label>:2679                                    ; preds = %2678, %2582
  %2680 = phi i32 [ 0, %2582 ], [ %2670, %2678 ]
  %2681 = extractvalue %dx.types.CBufRet.f32 %2444, 2
  %2682 = fptoui float %2681 to i32
  %2683 = icmp eq i32 %2682, 0
  br i1 %2683, label %2735, label %2684

; <label>:2684                                    ; preds = %2679
  br label %2685

; <label>:2685                                    ; preds = %2730, %2684
  %2686 = phi i32 [ %2731, %2730 ], [ %2680, %2684 ]
  %2687 = phi i32 [ %2732, %2730 ], [ 0, %2684 ]
  %2688 = lshr i32 %2687, 2
  %2689 = and i32 %2687, 3
  %2690 = add nuw nsw i32 %2688, 83
  %2691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2690)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.i32 %2691, 0
  %2693 = extractvalue %dx.types.CBufRet.i32 %2691, 1
  %2694 = extractvalue %dx.types.CBufRet.i32 %2691, 2
  %2695 = extractvalue %dx.types.CBufRet.i32 %2691, 3
  %2696 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2692, i32* %2696, align 4
  %2697 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2693, i32* %2697, align 4
  %2698 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2694, i32* %2698, align 4
  %2699 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2695, i32* %2699, align 4
  %2700 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2689
  %2701 = load i32, i32* %2700, align 4, !tbaa !77, !noalias !81
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = lshr i32 %2703, 16
  %2705 = and i32 %2704, 31
  %2706 = shl i32 %2628, %2705
  %2707 = add i32 %2706, %2627
  %2708 = shl i32 %2707, 2
  %2709 = add i32 %2708, %2701
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = icmp eq i32 %2711, 0
  br i1 %2712, label %2730, label %2713

; <label>:2713                                    ; preds = %2685
  %2714 = icmp slt i32 %2711, 0
  %2715 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2686
  %2716 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2686
  %2717 = bitcast float* %2715 to i32*
  %2718 = bitcast float* %2716 to i32*
  br i1 %2714, label %2719, label %2726

; <label>:2719                                    ; preds = %2713
  %2720 = and i32 %2711, 1073741823
  %2721 = add i32 %2701, 20
  %2722 = add i32 %2721, %2720
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = extractvalue %dx.types.ResRet.i32 %2723, 1
  br label %2726

; <label>:2726                                    ; preds = %2719, %2713
  %2727 = phi i32 [ %2724, %2719 ], [ %2635, %2713 ]
  %2728 = phi i32 [ %2725, %2719 ], [ %2636, %2713 ]
  store i32 %2727, i32* %2717, align 4
  store i32 %2728, i32* %2718, align 4
  %2729 = add i32 %2686, 1
  br label %2730

; <label>:2730                                    ; preds = %2726, %2685
  %2731 = phi i32 [ %2686, %2685 ], [ %2729, %2726 ]
  %2732 = add nuw i32 %2687, 1
  %2733 = icmp eq i32 %2732, %2682
  br i1 %2733, label %2734, label %2685

; <label>:2734                                    ; preds = %2730
  br label %2735

; <label>:2735                                    ; preds = %2734, %2679
  %2736 = phi i32 [ %2680, %2679 ], [ %2731, %2734 ]
  %2737 = icmp eq i32 %2736, 1
  %2738 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 0
  %2739 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 0
  br i1 %2737, label %2740, label %2743

; <label>:2740                                    ; preds = %2735
  %2741 = load float, float* %2738, align 4
  %2742 = load float, float* %2739, align 4
  br label %2770

; <label>:2743                                    ; preds = %2735
  %2744 = load float, float* %2738, align 4
  %2745 = load float, float* %2739, align 4
  %2746 = fdiv fast float 1.000000e+00, %2745
  %2747 = fsub fast float %2744, %2746
  %2748 = icmp ugt i32 %2736, 1
  br i1 %2748, label %2749, label %2765

; <label>:2749                                    ; preds = %2743
  br label %2750

; <label>:2750                                    ; preds = %2750, %2749
  %2751 = phi float [ %2760, %2750 ], [ %2747, %2749 ]
  %2752 = phi float [ %2761, %2750 ], [ %2744, %2749 ]
  %2753 = phi i32 [ %2762, %2750 ], [ 1, %2749 ]
  %2754 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2753
  %2755 = load float, float* %2754, align 4
  %2756 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2753
  %2757 = load float, float* %2756, align 4
  %2758 = fdiv fast float 1.000000e+00, %2757
  %2759 = fsub fast float %2755, %2758
  %2760 = call float @dx.op.binary.f32(i32 36, float %2751, float %2759)  ; FMin(a,b)
  %2761 = call float @dx.op.binary.f32(i32 35, float %2752, float %2755)  ; FMax(a,b)
  %2762 = add nuw i32 %2753, 1
  %2763 = icmp eq i32 %2762, %2736
  br i1 %2763, label %2764, label %2750

; <label>:2764                                    ; preds = %2750
  br label %2765

; <label>:2765                                    ; preds = %2764, %2743
  %2766 = phi float [ %2747, %2743 ], [ %2760, %2764 ]
  %2767 = phi float [ %2744, %2743 ], [ %2761, %2764 ]
  %2768 = fsub fast float %2767, %2766
  %2769 = fdiv fast float 1.000000e+00, %2768
  br label %2770

; <label>:2770                                    ; preds = %2765, %2740
  %2771 = phi float [ %2741, %2740 ], [ %2767, %2765 ]
  %2772 = phi float [ %2742, %2740 ], [ %2769, %2765 ]
  %2773 = fadd fast float %2474, %2771
  %2774 = fmul fast float %2773, %2772
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fmul fast float %2775, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2612, %2612
  %2779 = fsub fast float %2613, %2778
  %2780 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2779)  ; FMax(a,b)
  %2781 = fdiv fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2613, %2612
  %2783 = fsub fast float %2614, %2782
  %2784 = fsub fast float %2777, %2612
  %2785 = fmul fast float %2777, %2777
  %2786 = fsub fast float %2785, %2613
  %2787 = fmul fast float %2781, %2783
  %2788 = fmul fast float %2787, %2784
  %2789 = fsub fast float %2786, %2788
  %2790 = fmul fast float %2613, %2613
  %2791 = fsub fast float %2615, %2790
  %2792 = fmul fast float %2783, %2783
  %2793 = fmul fast float %2792, %2781
  %2794 = fsub fast float %2791, %2793
  %2795 = fdiv fast float %2789, %2794
  %2796 = fmul fast float %2795, %2783
  %2797 = fsub fast float %2784, %2796
  %2798 = fmul fast float %2797, %2781
  %2799 = fmul fast float %2798, %2612
  %2800 = fsub fast float 1.000000e+00, %2799
  %2801 = fmul fast float %2795, %2613
  %2802 = fsub fast float %2800, %2801
  %2803 = fmul fast float %2798, %2798
  %2804 = fmul fast float %2795, 4.000000e+00
  %2805 = fmul fast float %2804, %2802
  %2806 = fsub fast float %2803, %2805
  %2807 = call float @dx.op.unary.f32(i32 24, float %2806)  ; Sqrt(value)
  %2808 = fcmp fast oge float %2798, 0.000000e+00
  %2809 = fsub fast float -0.000000e+00, %2807
  %2810 = select i1 %2808, float %2809, float %2807
  %2811 = fsub fast float %2810, %2798
  %2812 = fdiv fast float %2811, %2795
  %2813 = fdiv fast float %2802, %2811
  %2814 = fmul fast float %2812, 5.000000e-01
  %2815 = fmul fast float %2813, 2.000000e+00
  %2816 = select i1 %2808, float %2814, float %2815
  %2817 = select i1 %2808, float %2815, float %2814
  %2818 = call float @dx.op.binary.f32(i32 35, float %2816, float %2817)  ; FMax(a,b)
  %2819 = call float @dx.op.binary.f32(i32 36, float %2816, float %2817)  ; FMin(a,b)
  %2820 = fcmp fast ogt float %2777, %2818
  %2821 = fsub fast float %2777, %2819
  %2822 = fsub fast float %2777, %2818
  %2823 = fsub fast float %2818, %2819
  %2824 = select i1 %2820, float %2822, float %2823
  %2825 = fmul float %2821, %2824
  %2826 = select i1 %2820, float %2819, float %2777
  %2827 = fcmp fast ogt float %2777, %2819
  %2828 = fmul fast float %2826, %2818
  %2829 = fadd fast float %2826, %2818
  %2830 = fmul fast float %2829, %2612
  %2831 = fadd fast float %2828, %2613
  %2832 = fsub fast float %2831, %2830
  %2833 = fdiv fast float %2832, %2825
  %2834 = select i1 %2827, float %2833, float 0.000000e+00
  %2835 = fsub fast float 1.000000e+00, %2834
  %2836 = select i1 %2820, float %2835, float %2834
  %2837 = call float @dx.op.unary.f32(i32 7, float %2836)  ; Saturate(value)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2597, 3
  %2839 = fmul fast float %2838, %2837
  %2840 = fsub fast float 1.000000e+00, %2839
  br label %2841

; <label>:2841                                    ; preds = %2770, %2482, %2447, %2443, %2409
  %2842 = phi float [ 1.000000e+00, %2409 ], [ %2840, %2770 ], [ 1.000000e+00, %2447 ], [ 1.000000e+00, %2482 ], [ 1.000000e+00, %2443 ]
  %2843 = fcmp fast ogt float %2439, 0.000000e+00
  br i1 %2843, label %2844, label %2850, !dx.controlflow.hints !90

; <label>:2844                                    ; preds = %2841
  %2845 = fadd fast float %2352, %2326
  %2846 = call float @dx.op.binary.f32(i32 35, float %2845, float 0.000000e+00)  ; FMax(a,b)
  %2847 = fadd fast float %2846, 0x3F10000000000000
  %2848 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %33, float %2341, float %2342, float undef, float undef, i32 0, i32 0, i32 undef, float %2847)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  br label %2850

; <label>:2850                                    ; preds = %2844, %2841
  %2851 = phi float [ %2849, %2844 ], [ 1.000000e+00, %2841 ]
  %2852 = fcmp fast ogt float %2437, 0.000000e+00
  br i1 %2852, label %2853, label %2859, !dx.controlflow.hints !91

; <label>:2853                                    ; preds = %2850
  %2854 = fadd fast float %2382, %2326
  %2855 = call float @dx.op.binary.f32(i32 35, float %2854, float 0.000000e+00)  ; FMax(a,b)
  %2856 = fadd fast float %2855, 0x3F10000000000000
  %2857 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %33, float %2333, float %2334, float undef, float undef, i32 0, i32 0, i32 undef, float %2856)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  br label %2859

; <label>:2859                                    ; preds = %2853, %2850
  %2860 = phi float [ %2858, %2853 ], [ 1.000000e+00, %2850 ]
  %2861 = fcmp fast ogt float %2436, 0.000000e+00
  br i1 %2861, label %2862, label %2869, !dx.controlflow.hints !92

; <label>:2862                                    ; preds = %2859
  %2863 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2864 = fadd fast float %2863, %2326
  %2865 = call float @dx.op.binary.f32(i32 35, float %2864, float 0.000000e+00)  ; FMax(a,b)
  %2866 = fadd fast float %2865, 0x3F10000000000000
  %2867 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %33, float %2318, float %2322, float undef, float undef, i32 0, i32 0, i32 undef, float %2866)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  br label %2869

; <label>:2869                                    ; preds = %2862, %2859
  %2870 = phi float [ %2868, %2862 ], [ 1.000000e+00, %2859 ]
  %2871 = fsub fast float %2851, %2842
  %2872 = fmul fast float %2871, %2380
  %2873 = fadd fast float %2872, %2842
  %2874 = fsub fast float %2860, %2873
  %2875 = fmul fast float %2874, %2410
  %2876 = fadd fast float %2875, %2873
  %2877 = fsub fast float %2870, %2876
  %2878 = fmul fast float %2877, %2436
  %2879 = fadd fast float %2878, %2876
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 2
  %2882 = fcmp fast ogt float %2881, 0.000000e+00
  br i1 %2882, label %2883, label %2923, !dx.controlflow.hints !93

; <label>:2883                                    ; preds = %2869
  %2884 = fcmp fast ugt float %2881, 0.000000e+00
  br i1 %2884, label %2885, label %2920

; <label>:2885                                    ; preds = %2883
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.CBufRet.f32 %2886, 1
  %2889 = extractvalue %dx.types.CBufRet.f32 %2886, 2
  %2890 = extractvalue %dx.types.CBufRet.f32 %2886, 3
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.CBufRet.f32 %2891, 1
  %2894 = extractvalue %dx.types.CBufRet.f32 %2891, 2
  %2895 = extractvalue %dx.types.CBufRet.f32 %2891, 3
  %2896 = extractvalue %dx.types.CBufRet.f32 %2880, 0
  %2897 = extractvalue %dx.types.CBufRet.f32 %2880, 1
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.CBufRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.CBufRet.f32 %2898, 2
  %2902 = fadd fast float %2899, %2295
  %2903 = fadd fast float %2900, %2296
  %2904 = fadd fast float %2901, %2297
  %2905 = fmul fast float %2902, %2887
  %2906 = call float @dx.op.tertiary.f32(i32 46, float %2888, float %2903, float %2905)  ; FMad(a,b,c)
  %2907 = call float @dx.op.tertiary.f32(i32 46, float %2889, float %2904, float %2906)  ; FMad(a,b,c)
  %2908 = fadd fast float %2907, %2890
  %2909 = fmul fast float %2902, %2892
  %2910 = call float @dx.op.tertiary.f32(i32 46, float %2893, float %2903, float %2909)  ; FMad(a,b,c)
  %2911 = call float @dx.op.tertiary.f32(i32 46, float %2894, float %2904, float %2910)  ; FMad(a,b,c)
  %2912 = fadd fast float %2911, %2895
  %2913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %28, float %2908, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = fmul fast float %2914, %2897
  %2916 = fadd fast float %2915, %2896
  %2917 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  %2918 = fmul fast float %2917, %2881
  %2919 = fsub fast float 1.000000e+00, %2918
  br label %2920

; <label>:2920                                    ; preds = %2885, %2883
  %2921 = phi float [ %2919, %2885 ], [ 1.000000e+00, %2883 ]
  %2922 = fmul fast float %2921, %2879
  br label %2923

; <label>:2923                                    ; preds = %2920, %2869, %2275
  %2924 = phi float [ 1.000000e+00, %2275 ], [ %2922, %2920 ], [ %2879, %2869 ]
  %2925 = call float @dx.op.binary.f32(i32 36, float %2924, float %2924)  ; FMin(a,b)
  %2926 = call float @dx.op.binary.f32(i32 36, float %2924, float %2925)  ; FMin(a,b)
  %2927 = fcmp fast ogt float %2926, 0.000000e+00
  br i1 %2927, label %2928, label %3089, !dx.controlflow.hints !94

; <label>:2928                                    ; preds = %2923
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 0
  %2931 = extractvalue %dx.types.CBufRet.f32 %2929, 1
  %2932 = extractvalue %dx.types.CBufRet.f32 %2929, 2
  %2933 = extractvalue %dx.types.CBufRet.f32 %2929, 3
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = extractvalue %dx.types.CBufRet.f32 %2934, 1
  %2937 = extractvalue %dx.types.CBufRet.f32 %2934, 2
  %2938 = extractvalue %dx.types.CBufRet.f32 %2934, 3
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 0
  %2941 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2942 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2943 = extractvalue %dx.types.CBufRet.f32 %2939, 3
  %2944 = fmul fast float %2930, %2295
  %2945 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2931, float %2944)  ; FMad(a,b,c)
  %2946 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2932, float %2945)  ; FMad(a,b,c)
  %2947 = fadd fast float %2946, %2933
  %2948 = fmul fast float %2935, %2295
  %2949 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2936, float %2948)  ; FMad(a,b,c)
  %2950 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2937, float %2949)  ; FMad(a,b,c)
  %2951 = fadd fast float %2950, %2938
  %2952 = fmul fast float %2940, %2295
  %2953 = call float @dx.op.tertiary.f32(i32 46, float %2296, float %2941, float %2952)  ; FMad(a,b,c)
  %2954 = call float @dx.op.tertiary.f32(i32 46, float %2297, float %2942, float %2953)  ; FMad(a,b,c)
  %2955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.CBufRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.CBufRet.f32 %2955, 3
  %2959 = fmul fast float %2958, %2947
  %2960 = fmul fast float %2958, %2951
  %2961 = fadd fast float %2959, %2956
  %2962 = fadd fast float %2960, %2957
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.CBufRet.f32 %2963, 1
  %2966 = fsub fast float %2961, %2964
  %2967 = fsub fast float %2962, %2965
  %2968 = fcmp fast olt float %2966, 0.000000e+00
  %2969 = fcmp fast olt float %2967, 0.000000e+00
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.CBufRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.CBufRet.f32 %2970, 2
  %2974 = extractvalue %dx.types.CBufRet.f32 %2970, 3
  %2975 = select i1 %2968, float %2971, float %2973
  %2976 = select i1 %2969, float %2972, float %2974
  %2977 = fmul fast float %2975, %2966
  %2978 = fmul fast float %2976, %2967
  %2979 = call float @dx.op.unary.f32(i32 6, float %2977)  ; FAbs(value)
  %2980 = call float @dx.op.unary.f32(i32 6, float %2978)  ; FAbs(value)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2982 = call float @dx.op.binary.f32(i32 35, float %2979, float %2980)  ; FMax(a,b)
  %2983 = fsub fast float %2981, %2982
  %2984 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2985 = fcmp fast ogt float %2984, 0.000000e+00
  br i1 %2985, label %2986, label %3027, !dx.controlflow.hints !95

; <label>:2986                                    ; preds = %2928
  %2987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2989 = fcmp fast ogt float %2988, 0.000000e+00
  br i1 %2989, label %2990, label %3022

; <label>:2990                                    ; preds = %2986
  %2991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.ResRet.f32 %2991, 2
  %2995 = extractvalue %dx.types.ResRet.f32 %2991, 3
  %2996 = fsub fast float 1.000000e+00, %2943
  %2997 = fsub fast float %2996, %2954
  %2998 = fmul fast float %2997, 0x400921FB60000000
  %2999 = fadd fast float %2998, 0x3FF921FB60000000
  %3000 = call float @dx.op.unary.f32(i32 13, float %2999)  ; Sin(value)
  %3001 = fadd fast float %3000, -1.000000e+00
  %3002 = fmul fast float %3001, 0x3FD45F3060000000
  %3003 = fmul fast float %2997, 0x401921FB60000000
  %3004 = fadd fast float %3003, 0x400921FB60000000
  %3005 = call float @dx.op.unary.f32(i32 13, float %3004)  ; Sin(value)
  %3006 = fadd fast float %3005, 0x3E7777A5C0000000
  %3007 = fmul fast float %3006, 0x3FC45F3060000000
  %3008 = fmul fast float %2997, 0x4022D97C80000000
  %3009 = fadd fast float %3008, 0x4012D97C80000000
  %3010 = call float @dx.op.unary.f32(i32 13, float %3009)  ; Sin(value)
  %3011 = fadd fast float %3010, 1.000000e+00
  %3012 = fmul fast float %3011, 0x3FBB2995E0000000
  %3013 = fmul fast float %2997, 0x402921FB60000000
  %3014 = fadd fast float %3013, 0x401921FB60000000
  %3015 = call float @dx.op.unary.f32(i32 13, float %3014)  ; Sin(value)
  %3016 = fadd fast float %3015, 0xBE8777A5C0000000
  %3017 = fmul fast float %3016, 0x3FB45F3060000000
  %3018 = call float @dx.op.dot4.f32(i32 56, float %2992, float %2993, float %2994, float %2995, float %3002, float %3007, float %3012, float %3017)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3019 = fmul fast float %3018, 0xBFF7154760000000
  %3020 = call float @dx.op.unary.f32(i32 21, float %3019)  ; Exp(value)
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  br label %3022

; <label>:3022                                    ; preds = %2990, %2986
  %3023 = phi float [ %3021, %2990 ], [ 1.000000e+00, %2986 ]
  %3024 = fadd fast float %3023, -1.000000e+00
  %3025 = fmul fast float %3024, %2984
  %3026 = fadd fast float %3025, 1.000000e+00
  br label %3027

; <label>:3027                                    ; preds = %3022, %2928
  %3028 = phi float [ %3026, %3022 ], [ 1.000000e+00, %2928 ]
  %3029 = fmul fast float %3028, %2924
  %3030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3031 = extractvalue %dx.types.CBufRet.f32 %3030, 0
  %3032 = extractvalue %dx.types.CBufRet.f32 %3030, 1
  %3033 = extractvalue %dx.types.CBufRet.f32 %3030, 2
  %3034 = fadd fast float %3031, %120
  %3035 = fadd fast float %3032, %121
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 1
  %3038 = fsub fast float -0.000000e+00, %3034
  %3039 = fsub fast float -0.000000e+00, %3035
  %3040 = fsub fast float -0.000000e+00, %122
  %3041 = fsub fast float %3040, %3033
  %3042 = fadd fast float %3041, %3037
  %3043 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3038, float %3039, float %3042)  ; Dot3(ax,ay,az,bx,by,bz)
  %3044 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2276, float %2277, float %2278)  ; Dot3(ax,ay,az,bx,by,bz)
  %3045 = fdiv fast float 1.000000e+00, %3044
  %3046 = fmul fast float %3045, %3043
  %3047 = fmul fast float %2276, %3046
  %3048 = fmul fast float %2277, %3046
  %3049 = fadd fast float %3047, %3034
  %3050 = fadd fast float %3048, %3035
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 0
  %3053 = extractvalue %dx.types.CBufRet.f32 %3051, 1
  %3054 = fsub fast float %3049, %3052
  %3055 = fsub fast float %3050, %3053
  %3056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3057 = extractvalue %dx.types.CBufRet.f32 %3056, 2
  %3058 = extractvalue %dx.types.CBufRet.f32 %3056, 3
  %3059 = fmul fast float %3054, %3057
  %3060 = fmul fast float %3055, %3058
  %3061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3062 = extractvalue %dx.types.CBufRet.i32 %3061, 3
  %3063 = icmp eq i32 %3062, 0
  br i1 %3063, label %3069, label %3064

; <label>:3064                                    ; preds = %3027
  %3065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %3059, float %3060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3066 = extractvalue %dx.types.ResRet.f32 %3065, 0
  %3067 = extractvalue %dx.types.ResRet.f32 %3065, 1
  %3068 = extractvalue %dx.types.ResRet.f32 %3065, 2
  br label %3074

; <label>:3069                                    ; preds = %3027
  %3070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %3059, float %3060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3071 = extractvalue %dx.types.ResRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.ResRet.f32 %3070, 1
  %3073 = extractvalue %dx.types.ResRet.f32 %3070, 2
  br label %3074

; <label>:3074                                    ; preds = %3069, %3064
  %3075 = phi float [ %3066, %3064 ], [ %3071, %3069 ]
  %3076 = phi float [ %3067, %3064 ], [ %3072, %3069 ]
  %3077 = phi float [ %3068, %3064 ], [ %3073, %3069 ]
  %3078 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3079 = fmul fast float %3078, %3075
  %3080 = extractvalue %dx.types.CBufRet.f32 %3036, 0
  %3081 = fsub fast float %3046, %3080
  %3082 = fsub fast float %3081, %3079
  %3083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3082)  ; FMax(a,b)
  %3084 = fmul fast float %3083, %3076
  %3085 = call float @dx.op.binary.f32(i32 36, float %3077, float %3084)  ; FMin(a,b)
  %3086 = fmul fast float %3085, 0xBFF7154760000000
  %3087 = call float @dx.op.unary.f32(i32 21, float %3086)  ; Exp(value)
  %3088 = fmul fast float %3029, %3087
  br label %3089

; <label>:3089                                    ; preds = %3074, %2923
  %3090 = phi float [ %3088, %3074 ], [ %2924, %2923 ]
  %3091 = call float @dx.op.binary.f32(i32 36, float %3090, float %3090)  ; FMin(a,b)
  %3092 = call float @dx.op.binary.f32(i32 36, float %3090, float %3091)  ; FMin(a,b)
  %3093 = fcmp fast ogt float %3092, 0.000000e+00
  br i1 %3093, label %3094, label %3404, !dx.controlflow.hints !96

; <label>:3094                                    ; preds = %3089
  %3095 = fmul fast float %3090, %2287
  %3096 = fmul fast float %3090, %2288
  %3097 = fmul fast float %3090, %2289
  %3098 = fsub fast float %2276, %1834
  %3099 = fsub fast float %2277, %1833
  %3100 = fsub fast float %2278, %1832
  %3101 = call float @dx.op.dot3.f32(i32 55, float %3098, float %3099, float %3100, float %3098, float %3099, float %3100)  ; Dot3(ax,ay,az,bx,by,bz)
  %3102 = call float @dx.op.unary.f32(i32 25, float %3101)  ; Rsqrt(value)
  %3103 = fmul fast float %3102, %3098
  %3104 = fmul fast float %3102, %3099
  %3105 = fmul fast float %3102, %3100
  %3106 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2277, float %2278, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3107 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1830, float %1829, float %3103, float %3104, float %3105)  ; Dot3(ax,ay,az,bx,by,bz)
  %3108 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3109 = fmul fast float %3108, %3108
  %3110 = fmul fast float %3109, %1861
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3112 = fmul fast float %3111, %3108
  %3113 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %3103, float %3104, float %3105)  ; Dot3(ax,ay,az,bx,by,bz)
  %3114 = fmul fast float %3113, %3113
  %3115 = call float @dx.op.unary.f32(i32 6, float %3106)  ; FAbs(value)
  %3116 = call float @dx.op.binary.f32(i32 35, float %2244, float 0x3F847AE140000000)  ; FMax(a,b)
  %3117 = fmul fast float %3116, %3116
  %3118 = fmul fast float %3117, %3117
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = fmul fast float %1848, %1848
  %3121 = fmul fast float %3120, %3119
  %3122 = fadd fast float %3121, %3118
  %3123 = bitcast float %3122 to i32
  %3124 = ashr i32 %3123, 1
  %3125 = add nsw i32 %3124, 532487669
  %3126 = bitcast i32 %3125 to float
  %3127 = fadd fast float %3126, %1848
  %3128 = fmul fast float %3118, %3114
  %3129 = fsub fast float 1.000000e+00, %3114
  %3130 = fadd fast float %3129, %3128
  %3131 = fmul fast float %3115, %3115
  %3132 = fmul fast float %3131, %3119
  %3133 = fadd fast float %3132, %3118
  %3134 = bitcast float %3133 to i32
  %3135 = ashr i32 %3134, 1
  %3136 = add nsw i32 %3135, 532487669
  %3137 = bitcast i32 %3136 to float
  %3138 = fadd fast float %3137, %3115
  %3139 = fmul fast float %3130, %3130
  %3140 = fmul fast float %3139, %3127
  %3141 = fmul fast float %3140, %3138
  %3142 = fdiv fast float 0x3FF0A00000000000, %3141
  %3143 = fmul fast float %3142, %3118
  %3144 = fmul fast float %2106, 0x3FF9999980000000
  %3145 = fsub fast float 5.000000e+00, %3144
  %3146 = call float @dx.op.unary.f32(i32 6, float %3107)  ; FAbs(value)
  %3147 = fsub fast float 1.000000e+00, %3146
  %3148 = fmul fast float %2106, 0x41D9660740000000
  %3149 = fadd fast float %3148, 0xC1EFBF8940000000
  %3150 = bitcast float %3147 to i32
  %3151 = sitofp i32 %3150 to float
  %3152 = fmul fast float %3151, %3145
  %3153 = fadd fast float %3149, %3152
  %3154 = fptosi float %3153 to i32
  %3155 = bitcast i32 %3154 to float
  %3156 = fsub fast float 1.000000e+00, %1838
  %3157 = fsub fast float 1.000000e+00, %1839
  %3158 = fsub fast float 1.000000e+00, %1846
  %3159 = fmul fast float %3155, %3156
  %3160 = fmul fast float %3155, %3157
  %3161 = fmul fast float %3155, %3158
  %3162 = fadd fast float %3159, %1838
  %3163 = fadd fast float %3160, %1839
  %3164 = fadd fast float %3161, %1846
  br i1 %2129, label %3165, label %3188

; <label>:3165                                    ; preds = %3094
  %3166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1471, float %3146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.ResRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.ResRet.f32 %3166, 2
  %3170 = fadd fast float %3167, -5.000000e-01
  %3171 = fadd fast float %3168, -5.000000e-01
  %3172 = fadd fast float %3169, -5.000000e-01
  %3173 = fmul fast float %1838, 4.000000e+00
  %3174 = fmul fast float %3173, %3156
  %3175 = fmul fast float %3174, %3170
  %3176 = fmul fast float %1839, 4.000000e+00
  %3177 = fmul fast float %3176, %3157
  %3178 = fmul fast float %3177, %3171
  %3179 = fmul fast float %1846, 4.000000e+00
  %3180 = fmul fast float %3179, %3158
  %3181 = fmul fast float %3180, %3172
  %3182 = fadd fast float %3175, %3162
  %3183 = fadd fast float %3178, %3163
  %3184 = fadd fast float %3181, %3164
  %3185 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3186 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3187 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  br label %3188

; <label>:3188                                    ; preds = %3165, %3094
  %3189 = phi float [ %3185, %3165 ], [ %3162, %3094 ]
  %3190 = phi float [ %3186, %3165 ], [ %3163, %3094 ]
  %3191 = phi float [ %3187, %3165 ], [ %3164, %3094 ]
  %3192 = fmul fast float %3106, 9.843750e-01
  %3193 = fadd fast float %3192, 7.812500e-03
  %3194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %3193, float %2110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.ResRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.ResRet.f32 %3194, 2
  %3198 = extractvalue %dx.types.ResRet.f32 %3194, 3
  %3199 = fsub fast float %3197, %3195
  %3200 = fsub fast float %3198, %3196
  %3201 = fmul fast float %3199, %2116
  %3202 = fmul fast float %3200, %2116
  %3203 = fadd fast float %3201, %3195
  %3204 = fadd fast float %3202, %3196
  %3205 = fmul fast float %3203, %1838
  %3206 = fmul fast float %3203, %1839
  %3207 = fmul fast float %3203, %1846
  %3208 = fadd fast float %3205, %3204
  %3209 = fadd fast float %3206, %3204
  %3210 = fadd fast float %3207, %3204
  br i1 %2129, label %3211, label %3234

; <label>:3211                                    ; preds = %3188
  %3212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1471, float %3106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = fadd fast float %3213, -5.000000e-01
  %3217 = fadd fast float %3214, -5.000000e-01
  %3218 = fadd fast float %3215, -5.000000e-01
  %3219 = fmul fast float %1838, 4.000000e+00
  %3220 = fmul fast float %3219, %3156
  %3221 = fmul fast float %3220, %3216
  %3222 = fmul fast float %1839, 4.000000e+00
  %3223 = fmul fast float %3222, %3157
  %3224 = fmul fast float %3223, %3217
  %3225 = fmul fast float %1846, 4.000000e+00
  %3226 = fmul fast float %3225, %3158
  %3227 = fmul fast float %3226, %3218
  %3228 = fadd fast float %3221, %3208
  %3229 = fadd fast float %3224, %3209
  %3230 = fadd fast float %3227, %3210
  %3231 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3232 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3233 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  br label %3234

; <label>:3234                                    ; preds = %3211, %3188
  %3235 = phi float [ %3231, %3211 ], [ %3208, %3188 ]
  %3236 = phi float [ %3232, %3211 ], [ %3209, %3188 ]
  %3237 = phi float [ %3233, %3211 ], [ %3210, %3188 ]
  %3238 = call float @dx.op.binary.f32(i32 35, float %3236, float %3237)  ; FMax(a,b)
  %3239 = call float @dx.op.binary.f32(i32 35, float %3235, float %3238)  ; FMax(a,b)
  %3240 = fsub fast float 1.000000e+00, %3239
  %3241 = call float @dx.op.binary.f32(i32 35, float %3115, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3242 = fdiv fast float %871, %3241
  %3243 = fmul fast float %2184, %3242
  %3244 = fmul fast float %2186, %3242
  %3245 = fmul fast float %2188, %3242
  %3246 = call float @dx.op.unary.f32(i32 21, float %3243)  ; Exp(value)
  %3247 = call float @dx.op.unary.f32(i32 21, float %3244)  ; Exp(value)
  %3248 = call float @dx.op.unary.f32(i32 21, float %3245)  ; Exp(value)
  %3249 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3250 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3251 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3252 = select i1 %2181, float %3249, float 0.000000e+00
  %3253 = select i1 %2182, float %3250, float 0.000000e+00
  %3254 = select i1 %2183, float %3251, float 0.000000e+00
  %3255 = fsub fast float -0.000000e+00, %1841
  %3256 = fsub fast float -0.000000e+00, %1842
  %3257 = fsub fast float -0.000000e+00, %1843
  %3258 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2277, float %2278, float %3255, float %3256, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fmul fast float %3259, 9.843750e-01
  %3261 = fadd fast float %3260, 7.812500e-03
  %3262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %3261, float %2110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  %3266 = extractvalue %dx.types.ResRet.f32 %3262, 3
  %3267 = fsub fast float %3265, %3263
  %3268 = fsub fast float %3266, %3264
  %3269 = fmul fast float %3267, %2116
  %3270 = fmul fast float %3268, %2116
  %3271 = fadd fast float %3269, %3263
  %3272 = fadd fast float %3270, %3264
  %3273 = fmul fast float %3271, %1838
  %3274 = fmul fast float %3271, %1839
  %3275 = fmul fast float %3271, %1846
  %3276 = fadd fast float %3273, %3272
  %3277 = fadd fast float %3274, %3272
  %3278 = fadd fast float %3275, %3272
  br i1 %2129, label %3279, label %3302

; <label>:3279                                    ; preds = %3234
  %3280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1471, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = fadd fast float %3281, -5.000000e-01
  %3285 = fadd fast float %3282, -5.000000e-01
  %3286 = fadd fast float %3283, -5.000000e-01
  %3287 = fmul fast float %1838, 4.000000e+00
  %3288 = fmul fast float %3287, %3156
  %3289 = fmul fast float %3288, %3284
  %3290 = fmul fast float %1839, 4.000000e+00
  %3291 = fmul fast float %3290, %3157
  %3292 = fmul fast float %3291, %3285
  %3293 = fmul fast float %1846, 4.000000e+00
  %3294 = fmul fast float %3293, %3158
  %3295 = fmul fast float %3294, %3286
  %3296 = fadd fast float %3289, %3276
  %3297 = fadd fast float %3292, %3277
  %3298 = fadd fast float %3295, %3278
  %3299 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3300 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3301 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  br label %3302

; <label>:3302                                    ; preds = %3279, %3234
  %3303 = phi float [ %3299, %3279 ], [ %3276, %3234 ]
  %3304 = phi float [ %3300, %3279 ], [ %3277, %3234 ]
  %3305 = phi float [ %3301, %3279 ], [ %3278, %3234 ]
  %3306 = call float @dx.op.binary.f32(i32 35, float %3304, float %3305)  ; FMax(a,b)
  %3307 = call float @dx.op.binary.f32(i32 35, float %3303, float %3306)  ; FMax(a,b)
  %3308 = fsub fast float 1.000000e+00, %3307
  %3309 = fmul fast float %2244, %2249
  %3310 = fadd fast float %2251, %3309
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3312 = fsub fast float %2276, %1854
  %3313 = fsub fast float %2277, %1855
  %3314 = fsub fast float %2278, %1856
  %3315 = call float @dx.op.dot3.f32(i32 55, float %3312, float %3313, float %3314, float %3312, float %3313, float %3314)  ; Dot3(ax,ay,az,bx,by,bz)
  %3316 = call float @dx.op.unary.f32(i32 25, float %3315)  ; Rsqrt(value)
  %3317 = fmul fast float %3316, %3312
  %3318 = fmul fast float %3316, %3313
  %3319 = fmul fast float %3316, %3314
  %3320 = call float @dx.op.dot3.f32(i32 55, float %3255, float %3256, float %3257, float %3317, float %3318, float %3319)  ; Dot3(ax,ay,az,bx,by,bz)
  %3321 = fmul fast float %3320, %3320
  %3322 = call float @dx.op.unary.f32(i32 6, float %3259)  ; FAbs(value)
  %3323 = call float @dx.op.binary.f32(i32 35, float %3311, float 0x3F847AE140000000)  ; FMax(a,b)
  %3324 = fmul fast float %3323, %3323
  %3325 = fmul fast float %3324, %3324
  %3326 = fsub fast float 1.000000e+00, %3325
  %3327 = fmul fast float %3120, %3326
  %3328 = fadd fast float %3327, %3325
  %3329 = bitcast float %3328 to i32
  %3330 = ashr i32 %3329, 1
  %3331 = add nsw i32 %3330, 532487669
  %3332 = bitcast i32 %3331 to float
  %3333 = fadd fast float %3332, %1848
  %3334 = fmul fast float %3325, %3321
  %3335 = fsub fast float 1.000000e+00, %3321
  %3336 = fadd fast float %3335, %3334
  %3337 = fmul fast float %3322, %3322
  %3338 = fmul fast float %3337, %3326
  %3339 = fadd fast float %3338, %3325
  %3340 = bitcast float %3339 to i32
  %3341 = ashr i32 %3340, 1
  %3342 = add nsw i32 %3341, 532487669
  %3343 = bitcast i32 %3342 to float
  %3344 = fadd fast float %3343, %3322
  %3345 = fmul fast float %3336, %3336
  %3346 = fmul fast float %3345, %3333
  %3347 = fmul fast float %3346, %3344
  %3348 = fdiv fast float 0x3FF0A00000000000, %3347
  %3349 = fmul fast float %3348, %3325
  %3350 = fmul fast float %3259, %3252
  %3351 = fmul fast float %3259, %3253
  %3352 = fmul fast float %3259, %3254
  %3353 = fmul fast float %3350, %3308
  %3354 = fmul fast float %3353, %3349
  %3355 = fmul fast float %3351, %3308
  %3356 = fmul fast float %3355, %3349
  %3357 = fmul fast float %3352, %3308
  %3358 = fmul fast float %3357, %3349
  %3359 = fmul fast float %3189, %3143
  %3360 = fmul fast float %3190, %3143
  %3361 = fmul fast float %3191, %3143
  %3362 = fsub fast float 1.000000e+00, %3107
  %3363 = bitcast float %3362 to i32
  %3364 = sitofp i32 %3363 to float
  %3365 = fmul fast float %3364, 5.000000e+00
  %3366 = fadd fast float %3365, 0xC1EFBF8940000000
  %3367 = fptosi float %3366 to i32
  %3368 = bitcast i32 %3367 to float
  %3369 = fmul fast float %3368, %1470
  %3370 = fmul fast float %3240, %3369
  %3371 = fmul fast float %3370, %2176
  %3372 = fmul fast float %3370, %2177
  %3373 = fmul fast float %3370, %2178
  %3374 = fadd fast float %3371, %3359
  %3375 = fadd fast float %3372, %3360
  %3376 = fadd fast float %3373, %3361
  %3377 = fmul fast float %3374, %3112
  %3378 = fmul fast float %3375, %3112
  %3379 = fmul fast float %3376, %3112
  %3380 = fmul fast float %3112, %3095
  %3381 = fmul fast float %3380, %3240
  %3382 = fmul fast float %3112, %3096
  %3383 = fmul fast float %3382, %3240
  %3384 = fmul fast float %3112, %3097
  %3385 = fmul fast float %3384, %3240
  %3386 = fadd fast float %3377, %3354
  %3387 = fadd fast float %3378, %3356
  %3388 = fadd fast float %3379, %3358
  %3389 = fmul fast float %3386, %3095
  %3390 = fmul fast float %3387, %3096
  %3391 = fmul fast float %3388, %3097
  %3392 = fadd fast float %3381, %2266
  %3393 = fmul fast float %3392, %1494
  %3394 = fadd fast float %3383, %2268
  %3395 = fmul fast float %3394, %1494
  %3396 = fadd fast float %3385, %2270
  %3397 = fmul fast float %3396, %1494
  %3398 = fadd fast float %3389, %2229
  %3399 = fmul fast float %3398, %1494
  %3400 = fadd fast float %3390, %2232
  %3401 = fmul fast float %3400, %1494
  %3402 = fadd fast float %3391, %2235
  %3403 = fmul fast float %3402, %1494
  br label %3404

; <label>:3404                                    ; preds = %3302, %3089, %2156
  %3405 = phi float [ %2230, %2156 ], [ %2230, %3089 ], [ %3399, %3302 ]
  %3406 = phi float [ %2233, %2156 ], [ %2233, %3089 ], [ %3401, %3302 ]
  %3407 = phi float [ %2236, %2156 ], [ %2236, %3089 ], [ %3403, %3302 ]
  %3408 = phi float [ %2267, %2156 ], [ %2267, %3089 ], [ %3393, %3302 ]
  %3409 = phi float [ %2269, %2156 ], [ %2269, %3089 ], [ %3395, %3302 ]
  %3410 = phi float [ %2271, %2156 ], [ %2271, %3089 ], [ %3397, %3302 ]
  %3411 = fmul fast float %1494, %2205
  %3412 = fsub fast float -0.000000e+00, %3411
  %3413 = fmul fast float %1494, %2206
  %3414 = fsub fast float -0.000000e+00, %3413
  %3415 = fmul fast float %1494, %2207
  %3416 = fsub fast float -0.000000e+00, %3415
  %3417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3417, 0
  %3419 = fmul fast float %3418, %2211
  %3420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3421 = extractvalue %dx.types.CBufRet.f32 %3420, 3
  %3422 = fsub fast float 1.000000e+00, %1466
  %3423 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3424 = fadd fast float %3410, %1465
  %3425 = fmul fast float %3424, %1466
  %3426 = fmul fast float %3423, %3421
  %3427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.f32 %3427, 3
  %3429 = fmul fast float %3408, %1835
  %3430 = fmul fast float %3409, %1836
  %3431 = fmul fast float %3410, %1837
  %3432 = fcmp fast ogt float %63, %142
  %3433 = and i1 %3432, %1567
  %3434 = or i1 %1646, %3433
  %3435 = icmp eq i32 %1566, 2
  %3436 = fcmp fast ole float %63, %142
  %3437 = and i1 %3436, %3435
  %3438 = or i1 %3437, %3434
  br i1 %3433, label %3439, label %3698

; <label>:3439                                    ; preds = %3404
  %3440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3441 = extractvalue %dx.types.CBufRet.f32 %3440, 2
  %3442 = extractvalue %dx.types.CBufRet.f32 %3440, 3
  %3443 = fmul fast float %3441, %72
  %3444 = fmul fast float %3442, %73
  %3445 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3446 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3447 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3445, float %3446, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = extractvalue %dx.types.ResRet.f32 %3447, 3
  %3452 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3445, float %3446, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3454 = extractvalue %dx.types.ResRet.f32 %3452, 1
  %3455 = extractvalue %dx.types.ResRet.f32 %3452, 2
  %3456 = extractvalue %dx.types.ResRet.f32 %3452, 3
  %3457 = call float @dx.op.binary.f32(i32 35, float %3449, float %3450)  ; FMax(a,b)
  %3458 = call float @dx.op.binary.f32(i32 35, float %3448, float %3457)  ; FMax(a,b)
  %3459 = call float @dx.op.binary.f32(i32 35, float %3458, float %3451)  ; FMax(a,b)
  %3460 = call float @dx.op.binary.f32(i32 36, float %3454, float %3455)  ; FMin(a,b)
  %3461 = call float @dx.op.binary.f32(i32 36, float %3453, float %3460)  ; FMin(a,b)
  %3462 = call float @dx.op.binary.f32(i32 36, float %3461, float %3456)  ; FMin(a,b)
  %3463 = fmul fast float %3459, 2.550000e+02
  %3464 = fadd fast float %3463, 0x3F70101020000000
  %3465 = fptoui float %3464 to i32
  %3466 = fmul fast float %3462, 2.550000e+02
  %3467 = fadd fast float %3466, 0x3F70101020000000
  %3468 = fptoui float %3467 to i32
  %3469 = icmp ult i32 %3465, %3468
  br i1 %3469, label %3470, label %3638

; <label>:3470                                    ; preds = %3439
  %3471 = fcmp fast ogt float %62, 9.843750e-01
  %3472 = fadd fast float %63, -4.000000e+00
  %3473 = select i1 %3471, float -4.000000e+00, float %3472
  %3474 = call float @dx.op.binary.f32(i32 35, float %3473, float 0.000000e+00)  ; FMax(a,b)
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = fadd fast float %3476, %3474
  %3478 = extractvalue %dx.types.CBufRet.f32 %3475, 2
  %3479 = fmul fast float %3477, %3478
  %3480 = call float @dx.op.unary.f32(i32 23, float %3479)  ; Log(value)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3475, 3
  %3482 = fmul fast float %3481, %3480
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3485 = fmul fast float %3482, %3484
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = uitofp i32 %3465 to float
  %3488 = uitofp i32 %3468 to float
  %3489 = fadd fast float %3487, 5.000000e-01
  %3490 = fadd fast float %3488, 5.000000e-01
  %3491 = fmul fast float %3484, %3489
  %3492 = fmul fast float %3484, %3490
  %3493 = fadd fast float %3491, 0x3F0FFB4800000000
  %3494 = fadd fast float %3492, 0xBF0FFB4800000000
  %3495 = call float @dx.op.binary.f32(i32 35, float %3486, float %3493)  ; FMax(a,b)
  %3496 = call float @dx.op.binary.f32(i32 36, float %3495, float %3494)  ; FMin(a,b)
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 1
  %3499 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3500 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3501 = fmul fast float %3498, %3496
  %3502 = fadd fast float %3500, %3501
  %3503 = fadd fast float %3500, %3499
  %3504 = fsub fast float %3498, %3499
  %3505 = fadd fast float %3504, %3500
  %3506 = call float @dx.op.binary.f32(i32 35, float %3502, float %3503)  ; FMax(a,b)
  %3507 = call float @dx.op.binary.f32(i32 36, float %3506, float %3505)  ; FMin(a,b)
  %3508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %3445, float %3446, float %3507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.i32 %3512, 0
  %3514 = extractvalue %dx.types.CBufRet.i32 %3512, 1
  %3515 = uitofp i32 %3513 to float
  %3516 = uitofp i32 %3514 to float
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3520 = fmul fast float %3515, %3445
  %3521 = fmul fast float %3516, %3446
  %3522 = fadd fast float %3520, -5.000000e-01
  %3523 = fadd fast float %3521, -5.000000e-01
  %3524 = call float @dx.op.unary.f32(i32 22, float %3522)  ; Frc(value)
  %3525 = call float @dx.op.unary.f32(i32 22, float %3523)  ; Frc(value)
  %3526 = fmul fast float %3524, %3524
  %3527 = fmul fast float %3526, %3524
  %3528 = fsub fast float 3.000000e+00, %3524
  %3529 = fmul fast float %3526, %3528
  %3530 = fmul fast float %3524, 3.000000e+00
  %3531 = fmul fast float %3527, 3.000000e+00
  %3532 = fmul fast float %3526, 6.000000e+00
  %3533 = fsub fast float %3531, %3532
  %3534 = fadd fast float %3533, 4.000000e+00
  %3535 = fmul fast float %3534, 0x3FC5555560000000
  %3536 = fmul fast float %3527, -3.000000e+00
  %3537 = fadd fast float %3526, %3524
  %3538 = fmul fast float %3537, 3.000000e+00
  %3539 = fadd fast float %3536, 1.000000e+00
  %3540 = fadd fast float %3539, %3538
  %3541 = fmul fast float %3527, 0x3FC5555560000000
  %3542 = fmul fast float %3525, %3525
  %3543 = fmul fast float %3542, %3525
  %3544 = fsub fast float 3.000000e+00, %3525
  %3545 = fmul fast float %3542, %3544
  %3546 = fmul fast float %3525, 3.000000e+00
  %3547 = fmul fast float %3543, 3.000000e+00
  %3548 = fmul fast float %3542, 6.000000e+00
  %3549 = fsub fast float %3547, %3548
  %3550 = fadd fast float %3549, 4.000000e+00
  %3551 = fmul fast float %3550, 0x3FC5555560000000
  %3552 = fmul fast float %3543, -3.000000e+00
  %3553 = fadd fast float %3542, %3525
  %3554 = fmul fast float %3553, 3.000000e+00
  %3555 = fadd fast float %3552, 1.000000e+00
  %3556 = fadd fast float %3555, %3554
  %3557 = fmul fast float %3543, 0x3FC5555560000000
  %3558 = fadd fast float %3524, 1.000000e+00
  %3559 = fsub fast float 1.000000e+00, %3530
  %3560 = fadd fast float %3559, %3529
  %3561 = fadd fast float %3560, %3534
  %3562 = fmul fast float %3561, 0x3FC5555560000000
  %3563 = fdiv fast float %3535, %3562
  %3564 = fsub fast float %3558, %3563
  %3565 = fsub fast float 1.000000e+00, %3524
  %3566 = fadd fast float %3540, %3527
  %3567 = fmul fast float %3566, 0x3FC5555560000000
  %3568 = fdiv fast float %3541, %3567
  %3569 = fadd fast float %3565, %3568
  %3570 = fadd fast float %3525, 1.000000e+00
  %3571 = fsub fast float 1.000000e+00, %3546
  %3572 = fadd fast float %3571, %3545
  %3573 = fadd fast float %3572, %3550
  %3574 = fmul fast float %3573, 0x3FC5555560000000
  %3575 = fdiv fast float %3551, %3574
  %3576 = fsub fast float %3570, %3575
  %3577 = fsub fast float 1.000000e+00, %3525
  %3578 = fadd fast float %3556, %3543
  %3579 = fmul fast float %3578, 0x3FC5555560000000
  %3580 = fdiv fast float %3557, %3579
  %3581 = fadd fast float %3580, %3577
  %3582 = fmul fast float %3564, %3518
  %3583 = fsub fast float %3445, %3582
  %3584 = fmul fast float %3569, %3518
  %3585 = fadd fast float %3584, %3445
  %3586 = fmul fast float %3581, %3519
  %3587 = fadd fast float %3586, %3446
  %3588 = fmul fast float %3576, %3519
  %3589 = fsub fast float %3446, %3588
  %3590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3583, float %3589, float %3507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3585, float %3589, float %3507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3583, float %3587, float %3507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3585, float %3587, float %3507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = fsub fast float %3599, %3591
  %3607 = fsub fast float %3600, %3592
  %3608 = fsub fast float %3601, %3593
  %3609 = fmul fast float %3606, %3579
  %3610 = fmul fast float %3607, %3579
  %3611 = fmul fast float %3608, %3579
  %3612 = fadd fast float %3609, %3591
  %3613 = fadd fast float %3610, %3592
  %3614 = fadd fast float %3611, %3593
  %3615 = fsub fast float %3603, %3595
  %3616 = fsub fast float %3604, %3596
  %3617 = fsub fast float %3605, %3597
  %3618 = fmul fast float %3615, %3579
  %3619 = fmul fast float %3616, %3579
  %3620 = fmul fast float %3617, %3579
  %3621 = fsub fast float %3595, %3612
  %3622 = fadd fast float %3621, %3618
  %3623 = fsub fast float %3596, %3613
  %3624 = fadd fast float %3623, %3619
  %3625 = fsub fast float %3597, %3614
  %3626 = fadd fast float %3625, %3620
  %3627 = fmul fast float %3622, %3567
  %3628 = fmul fast float %3624, %3567
  %3629 = fmul fast float %3626, %3567
  %3630 = fadd fast float %3627, %3612
  %3631 = fadd fast float %3628, %3613
  %3632 = fadd fast float %3629, %3614
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 1
  %3635 = fmul fast float %3630, %3634
  %3636 = fmul fast float %3631, %3634
  %3637 = fmul fast float %3632, %3634
  br label %3638

; <label>:3638                                    ; preds = %3470, %3439
  %3639 = phi float [ %3509, %3470 ], [ 1.000000e+00, %3439 ]
  %3640 = phi float [ %3510, %3470 ], [ 1.000000e+00, %3439 ]
  %3641 = phi float [ %3511, %3470 ], [ 1.000000e+00, %3439 ]
  %3642 = phi float [ %3635, %3470 ], [ 0.000000e+00, %3439 ]
  %3643 = phi float [ %3636, %3470 ], [ 0.000000e+00, %3439 ]
  %3644 = phi float [ %3637, %3470 ], [ 0.000000e+00, %3439 ]
  %3645 = fmul fast float %3642, %3412
  %3646 = fmul fast float %3643, %3414
  %3647 = fmul fast float %3644, %3416
  %3648 = call float @dx.op.dot3.f32(i32 55, float %3639, float %3640, float %3641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3649 = call float @dx.op.dot3.f32(i32 55, float %3645, float %3646, float %3647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3650 = select i1 %181, float %3648, float %3639
  %3651 = select i1 %181, float %3648, float %3640
  %3652 = select i1 %181, float 1.000000e+00, float %3641
  %3653 = select i1 %181, float %3649, float %3645
  %3654 = select i1 %181, float 0.000000e+00, float %3646
  %3655 = select i1 %181, float 0.000000e+00, float %3647
  %3656 = fmul fast float %3650, %3429
  %3657 = fmul fast float %3651, %3430
  %3658 = fmul fast float %3652, %3431
  %3659 = fadd fast float %3656, %3653
  %3660 = fadd fast float %3657, %3654
  %3661 = fadd fast float %3655, %3658
  %3662 = fmul fast float %3650, %3405
  %3663 = fmul fast float %3651, %3406
  %3664 = fmul fast float %3652, %3407
  %3665 = fmul fast float %72, 2.000000e+00
  %3666 = fmul fast float %3665, %3441
  %3667 = fmul fast float %73, 2.000000e+00
  %3668 = fmul fast float %3667, %3442
  %3669 = fsub fast float 1.000000e+00, %3666
  %3670 = fsub fast float 1.000000e+00, %3668
  %3671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.CBufRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.CBufRet.f32 %3671, 2
  %3675 = fmul fast float %3669, %3672
  %3676 = fmul fast float %3669, %3673
  %3677 = fmul fast float %3669, %3674
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.CBufRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.CBufRet.f32 %3678, 2
  %3682 = fmul fast float %3670, %3679
  %3683 = fmul fast float %3670, %3680
  %3684 = fmul fast float %3670, %3681
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.CBufRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.CBufRet.f32 %3685, 2
  %3689 = fadd fast float %3682, %3686
  %3690 = fadd fast float %3689, %3675
  %3691 = fadd fast float %3683, %3687
  %3692 = fadd fast float %3691, %3676
  %3693 = fadd fast float %3684, %3688
  %3694 = fadd fast float %3693, %3677
  %3695 = fmul fast float %3690, %142
  %3696 = fmul fast float %3692, %142
  %3697 = fmul fast float %3694, %142
  br label %3698

; <label>:3698                                    ; preds = %3638, %3404
  %3699 = phi float [ %3695, %3638 ], [ %120, %3404 ]
  %3700 = phi float [ %3696, %3638 ], [ %121, %3404 ]
  %3701 = phi float [ %3697, %3638 ], [ %122, %3404 ]
  %3702 = phi float [ %142, %3638 ], [ %63, %3404 ]
  %3703 = phi float [ %3659, %3638 ], [ %3429, %3404 ]
  %3704 = phi float [ %3660, %3638 ], [ %3430, %3404 ]
  %3705 = phi float [ %3661, %3638 ], [ %3431, %3404 ]
  %3706 = phi float [ %3662, %3638 ], [ %3405, %3404 ]
  %3707 = phi float [ %3663, %3638 ], [ %3406, %3404 ]
  %3708 = phi float [ %3664, %3638 ], [ %3407, %3404 ]
  %3709 = phi float [ %3639, %3638 ], [ 1.000000e+00, %3404 ]
  br i1 %3438, label %4864, label %3710

; <label>:3710                                    ; preds = %3698
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.CBufRet.f32 %3711, 1
  %3714 = extractvalue %dx.types.CBufRet.f32 %3711, 2
  %3715 = extractvalue %dx.types.CBufRet.f32 %3711, 3
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.CBufRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3720 = extractvalue %dx.types.CBufRet.f32 %3716, 3
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.CBufRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.CBufRet.f32 %3721, 2
  %3725 = extractvalue %dx.types.CBufRet.f32 %3721, 3
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.CBufRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3730 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.f32 %3731, 3
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3736 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3737 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3738 = fcmp fast olt float %3737, -5.000000e-01
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3699, float %3700, float %3701, float %3699, float %3700, float %3701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call float @dx.op.unary.f32(i32 25, float %3739)  ; Rsqrt(value)
  %3741 = fmul fast float %3740, %3739
  %3742 = fmul fast float %3740, %3699
  %3743 = fmul fast float %3740, %3700
  %3744 = fmul fast float %3740, %3701
  %3745 = fadd fast float %3741, %3715
  %3746 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3743, float %3744, float %3712, float %3713, float %3714)  ; Dot3(ax,ay,az,bx,by,bz)
  %3747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.i32 %3747, 1
  %3749 = and i32 %3748, 1
  %3750 = icmp ne i32 %3749, 0
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3753 = fcmp fast ogt float %3752, 0.000000e+00
  %3754 = and i1 %3750, %3753
  br i1 %3754, label %3755, label %4161, !dx.controlflow.hints !97

; <label>:3755                                    ; preds = %3710
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 2
  %3762 = fsub fast float %3759, %3761
  %3763 = and i32 %3748, 2
  %3764 = extractvalue %dx.types.CBufRet.i32 %3747, 0
  %3765 = call i32 @dx.op.binary.i32(i32 40, i32 %3764, i32 3)  ; UMin(a,b)
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3771 = fsub fast float %3767, %3769
  %3772 = fsub fast float %3768, %3770
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = fcmp fast ogt float %3774, 0.000000e+00
  %3776 = fsub fast float -0.000000e+00, %3771
  %3777 = fsub fast float -0.000000e+00, %3772
  %3778 = call float @dx.op.dot2.f32(i32 54, float %3742, float %3743, float %3742, float %3743)  ; Dot2(ax,ay,bx,by)
  %3779 = call float @dx.op.dot2.f32(i32 54, float %3742, float %3743, float %3776, float %3777)  ; Dot2(ax,ay,bx,by)
  %3780 = fmul fast float %3779, 2.000000e+00
  %3781 = call float @dx.op.dot2.f32(i32 54, float %3776, float %3777, float %3776, float %3777)  ; Dot2(ax,ay,bx,by)
  %3782 = fmul fast float %3774, %3774
  %3783 = fsub fast float %3781, %3782
  %3784 = fmul fast float %3780, %3780
  %3785 = fmul fast float %3778, 4.000000e+00
  %3786 = fmul fast float %3785, %3783
  %3787 = fsub fast float %3784, %3786
  %3788 = fcmp fast ogt float %3787, 0.000000e+00
  br i1 %3788, label %3789, label %3804

; <label>:3789                                    ; preds = %3755
  %3790 = fcmp fast ogt float %3780, 0.000000e+00
  %3791 = call float @dx.op.unary.f32(i32 24, float %3787)  ; Sqrt(value)
  %3792 = fsub fast float -0.000000e+00, %3791
  %3793 = select i1 %3790, float %3791, float %3792
  %3794 = fadd fast float %3793, %3780
  %3795 = fmul float %3794, -5.000000e-01
  %3796 = fdiv fast float %3795, %3778
  %3797 = call float @dx.op.binary.f32(i32 35, float %3796, float 0.000000e+00)  ; FMax(a,b)
  %3798 = call float @dx.op.binary.f32(i32 36, float %3741, float %3797)  ; FMin(a,b)
  %3799 = fdiv fast float %3783, %3795
  %3800 = call float @dx.op.binary.f32(i32 35, float %3799, float 0.000000e+00)  ; FMax(a,b)
  %3801 = call float @dx.op.binary.f32(i32 36, float %3741, float %3800)  ; FMin(a,b)
  %3802 = call float @dx.op.binary.f32(i32 36, float %3798, float %3801)  ; FMin(a,b)
  %3803 = call float @dx.op.binary.f32(i32 35, float %3798, float %3801)  ; FMax(a,b)
  br label %3804

; <label>:3804                                    ; preds = %3789, %3755
  %3805 = phi float [ %3803, %3789 ], [ -1.000000e+00, %3755 ]
  %3806 = phi float [ %3802, %3789 ], [ -1.000000e+00, %3755 ]
  %3807 = phi i1 [ true, %3789 ], [ false, %3755 ]
  %3808 = and i1 %3775, %3807
  br i1 %3808, label %3809, label %3811

; <label>:3809                                    ; preds = %3804
  %3810 = fcmp fast oeq float %3806, %3805
  br i1 %3810, label %4114, label %3812

; <label>:3811                                    ; preds = %3804
  br i1 %3775, label %4114, label %3812

; <label>:3812                                    ; preds = %3811, %3809
  %3813 = phi float [ %3741, %3811 ], [ %3805, %3809 ]
  %3814 = phi float [ 0.000000e+00, %3811 ], [ %3806, %3809 ]
  %3815 = icmp ne i32 %3763, 0
  %3816 = fmul fast float %3813, %3744
  %3817 = fadd fast float %3816, %3757
  %3818 = fmul fast float %3817, %3813
  %3819 = select i1 %3815, float 0.000000e+00, float %3818
  %3820 = fcmp fast oeq float %3744, 0.000000e+00
  %3821 = fdiv fast float %3762, %3744
  %3822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3821)  ; FMax(a,b)
  %3823 = select i1 %3820, float %3813, float %3822
  %3824 = call float @dx.op.binary.f32(i32 36, float %3813, float %3823)  ; FMin(a,b)
  %3825 = fcmp fast ogt float %3744, 0.000000e+00
  %3826 = fcmp fast olt float %3762, 0.000000e+00
  br i1 %3825, label %3827, label %3884

; <label>:3827                                    ; preds = %3812
  %3828 = icmp eq i32 %3763, 0
  br i1 %3826, label %3829, label %3873

; <label>:3829                                    ; preds = %3827
  %3830 = select i1 %3828, float %3813, float 0.000000e+00
  %3831 = fsub fast float -0.000000e+00, %3830
  %3832 = call float @dx.op.unary.f32(i32 6, float %3831)  ; FAbs(value)
  %3833 = fmul fast float %3830, %3744
  %3834 = fadd fast float %3833, %3757
  %3835 = fmul fast float %3832, %3834
  %3836 = fsub fast float %3819, %3835
  %3837 = fsub fast float %3813, %3832
  %3838 = select i1 %3828, float %3837, float 0.000000e+00
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.CBufRet.f32 %3839, 2
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.CBufRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.CBufRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 3
  %3850 = call float @dx.op.binary.f32(i32 36, float %3836, float %3849)  ; FMin(a,b)
  %3851 = fmul fast float %3847, %3838
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3853 = fsub fast float %3844, %3840
  %3854 = fsub fast float %3845, %3841
  %3855 = fsub fast float %3846, %3842
  %3856 = fmul fast float %3852, %3853
  %3857 = fmul fast float %3852, %3854
  %3858 = fmul fast float %3852, %3855
  %3859 = fadd fast float %3856, %3840
  %3860 = fadd fast float %3857, %3841
  %3861 = fadd fast float %3858, %3842
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.CBufRet.f32 %3862, 1
  %3865 = fadd fast float %3864, %3863
  %3866 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3862, 2
  %3868 = extractvalue %dx.types.CBufRet.f32 %3862, 3
  %3869 = fadd fast float %3868, %3867
  %3870 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3871 = fmul fast float %3866, %3850
  %3872 = fmul fast float %3871, %3870
  br label %4114

; <label>:3873                                    ; preds = %3827
  br i1 %3828, label %3874, label %3895

; <label>:3874                                    ; preds = %3873
  %3875 = call float @dx.op.binary.f32(i32 36, float %3824, float %3814)  ; FMin(a,b)
  %3876 = fsub fast float %3824, %3875
  %3877 = fsub fast float %3876, %3813
  %3878 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3879 = fadd fast float %3876, %3813
  %3880 = fmul fast float %3879, %3744
  %3881 = fadd fast float %3880, %3757
  %3882 = fmul fast float %3881, %3878
  %3883 = fsub fast float %3819, %3882
  br label %3895

; <label>:3884                                    ; preds = %3812
  br i1 %3826, label %3885, label %3895

; <label>:3885                                    ; preds = %3884
  %3886 = call float @dx.op.binary.f32(i32 35, float %3814, float %3824)  ; FMax(a,b)
  %3887 = icmp eq i32 %3763, 0
  %3888 = select i1 %3887, float %3824, float 0.000000e+00
  %3889 = fsub fast float -0.000000e+00, %3888
  %3890 = call float @dx.op.unary.f32(i32 6, float %3889)  ; FAbs(value)
  %3891 = fmul fast float %3888, %3744
  %3892 = fadd fast float %3891, %3757
  %3893 = fmul fast float %3890, %3892
  %3894 = fsub fast float %3819, %3893
  br label %3895

; <label>:3895                                    ; preds = %3885, %3884, %3874, %3873
  %3896 = phi float [ %3814, %3873 ], [ %3814, %3874 ], [ %3886, %3885 ], [ %3814, %3884 ]
  %3897 = phi float [ 0.000000e+00, %3873 ], [ %3878, %3874 ], [ %3890, %3885 ], [ 0.000000e+00, %3884 ]
  %3898 = phi float [ %3819, %3873 ], [ %3883, %3874 ], [ %3894, %3885 ], [ %3819, %3884 ]
  %3899 = phi float [ %3824, %3873 ], [ %3824, %3874 ], [ %3813, %3885 ], [ %3813, %3884 ]
  %3900 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 0
  store float -1.000000e+00, float* %3900, align 4, !tbaa !98, !noalias !100
  %3901 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 1
  store float -1.000000e+00, float* %3901, align 4, !tbaa !98, !noalias !100
  %3902 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 2
  store float -1.000000e+00, float* %3902, align 4, !tbaa !98, !noalias !100
  %3903 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 0
  store float -1.000000e+00, float* %3903, align 4, !tbaa !98, !noalias !100
  %3904 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 1
  store float -1.000000e+00, float* %3904, align 4, !tbaa !98, !noalias !100
  %3905 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 2
  store float -1.000000e+00, float* %3905, align 4, !tbaa !98, !noalias !100
  %3906 = icmp sgt i32 %3765, 0
  br i1 %3906, label %3907, label %3968

; <label>:3907                                    ; preds = %3895
  br label %3908

; <label>:3908                                    ; preds = %3957, %3907
  %3909 = phi i32 [ %3958, %3957 ], [ 0, %3907 ]
  %3910 = phi i32 [ %3959, %3957 ], [ 0, %3907 ]
  %3911 = add nuw i32 %3910, 171
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %3911)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.CBufRet.f32 %3912, 1
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3918 = fsub fast float %3913, %3916
  %3919 = fsub fast float %3914, %3917
  %3920 = extractvalue %dx.types.CBufRet.f32 %3912, 2
  %3921 = fsub fast float -0.000000e+00, %3918
  %3922 = fsub fast float -0.000000e+00, %3919
  %3923 = call float @dx.op.dot2.f32(i32 54, float %3742, float %3743, float %3921, float %3922)  ; Dot2(ax,ay,bx,by)
  %3924 = fmul fast float %3923, 2.000000e+00
  %3925 = call float @dx.op.dot2.f32(i32 54, float %3921, float %3922, float %3921, float %3922)  ; Dot2(ax,ay,bx,by)
  %3926 = fmul fast float %3920, %3920
  %3927 = fsub fast float %3925, %3926
  %3928 = fmul fast float %3924, %3924
  %3929 = fmul fast float %3785, %3927
  %3930 = fsub fast float %3928, %3929
  %3931 = fcmp fast ogt float %3930, 0.000000e+00
  br i1 %3931, label %3932, label %3947

; <label>:3932                                    ; preds = %3908
  %3933 = fcmp fast ogt float %3924, 0.000000e+00
  %3934 = call float @dx.op.unary.f32(i32 24, float %3930)  ; Sqrt(value)
  %3935 = fsub fast float -0.000000e+00, %3934
  %3936 = select i1 %3933, float %3934, float %3935
  %3937 = fadd fast float %3936, %3924
  %3938 = fmul float %3937, -5.000000e-01
  %3939 = fdiv fast float %3938, %3778
  %3940 = call float @dx.op.binary.f32(i32 35, float %3939, float 0.000000e+00)  ; FMax(a,b)
  %3941 = call float @dx.op.binary.f32(i32 36, float %3813, float %3940)  ; FMin(a,b)
  %3942 = fdiv fast float %3927, %3938
  %3943 = call float @dx.op.binary.f32(i32 35, float %3942, float 0.000000e+00)  ; FMax(a,b)
  %3944 = call float @dx.op.binary.f32(i32 36, float %3813, float %3943)  ; FMin(a,b)
  %3945 = call float @dx.op.binary.f32(i32 36, float %3941, float %3944)  ; FMin(a,b)
  %3946 = call float @dx.op.binary.f32(i32 35, float %3941, float %3944)  ; FMax(a,b)
  br label %3947

; <label>:3947                                    ; preds = %3932, %3908
  %3948 = phi float [ %3946, %3932 ], [ -1.000000e+00, %3908 ]
  %3949 = phi float [ %3945, %3932 ], [ -1.000000e+00, %3908 ]
  %3950 = phi i1 [ true, %3932 ], [ false, %3908 ]
  br i1 %3950, label %3951, label %3957

; <label>:3951                                    ; preds = %3947
  %3952 = call float @dx.op.binary.f32(i32 35, float %3896, float %3949)  ; FMax(a,b)
  %3953 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %3910
  store float %3952, float* %3953, align 4, !tbaa !98, !noalias !100
  %3954 = call float @dx.op.binary.f32(i32 35, float %3896, float %3948)  ; FMax(a,b)
  %3955 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %3910
  store float %3954, float* %3955, align 4, !tbaa !98, !noalias !100
  %3956 = add nsw i32 %3909, 1
  br label %3957

; <label>:3957                                    ; preds = %3951, %3947
  %3958 = phi i32 [ %3956, %3951 ], [ %3909, %3947 ]
  %3959 = add nuw nsw i32 %3910, 1
  %3960 = icmp eq i32 %3959, %3765
  br i1 %3960, label %3961, label %3908

; <label>:3961                                    ; preds = %3957
  %3962 = load float, float* %3902, align 4, !tbaa !98, !alias.scope !116, !noalias !119
  %3963 = load float, float* %3901, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  %3964 = load float, float* %3900, align 4, !tbaa !98, !alias.scope !124, !noalias !125
  %3965 = load float, float* %3905, align 4, !tbaa !98, !alias.scope !126, !noalias !129
  %3966 = load float, float* %3904, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  %3967 = load float, float* %3903, align 4, !tbaa !98, !alias.scope !134, !noalias !135
  br label %3968

; <label>:3968                                    ; preds = %3961, %3895
  %3969 = phi float [ -1.000000e+00, %3895 ], [ %3967, %3961 ]
  %3970 = phi float [ -1.000000e+00, %3895 ], [ %3966, %3961 ]
  %3971 = phi float [ -1.000000e+00, %3895 ], [ %3965, %3961 ]
  %3972 = phi float [ -1.000000e+00, %3895 ], [ %3964, %3961 ]
  %3973 = phi float [ -1.000000e+00, %3895 ], [ %3963, %3961 ]
  %3974 = phi float [ -1.000000e+00, %3895 ], [ %3962, %3961 ]
  %3975 = phi i32 [ 0, %3895 ], [ %3958, %3961 ]
  %3976 = call float @dx.op.binary.f32(i32 36, float %3973, float %3974)  ; FMin(a,b)
  %3977 = call float @dx.op.binary.f32(i32 36, float %3972, float %3976)  ; FMin(a,b)
  %3978 = call float @dx.op.binary.f32(i32 35, float %3972, float %3973)  ; FMax(a,b)
  %3979 = call float @dx.op.binary.f32(i32 36, float %3978, float %3974)  ; FMin(a,b)
  %3980 = call float @dx.op.binary.f32(i32 36, float %3972, float %3973)  ; FMin(a,b)
  %3981 = call float @dx.op.binary.f32(i32 35, float %3980, float %3979)  ; FMax(a,b)
  %3982 = call float @dx.op.binary.f32(i32 35, float %3973, float %3974)  ; FMax(a,b)
  %3983 = call float @dx.op.binary.f32(i32 35, float %3972, float %3982)  ; FMax(a,b)
  store float %3977, float* %3900, align 4, !tbaa !98, !alias.scope !124, !noalias !125
  store float %3981, float* %3901, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  store float %3983, float* %3902, align 4, !tbaa !98, !alias.scope !116, !noalias !119
  %3984 = call float @dx.op.binary.f32(i32 36, float %3970, float %3971)  ; FMin(a,b)
  %3985 = call float @dx.op.binary.f32(i32 36, float %3969, float %3984)  ; FMin(a,b)
  %3986 = call float @dx.op.binary.f32(i32 35, float %3969, float %3970)  ; FMax(a,b)
  %3987 = call float @dx.op.binary.f32(i32 36, float %3986, float %3971)  ; FMin(a,b)
  %3988 = call float @dx.op.binary.f32(i32 36, float %3969, float %3970)  ; FMin(a,b)
  %3989 = call float @dx.op.binary.f32(i32 35, float %3988, float %3987)  ; FMax(a,b)
  %3990 = call float @dx.op.binary.f32(i32 35, float %3970, float %3971)  ; FMax(a,b)
  %3991 = call float @dx.op.binary.f32(i32 35, float %3969, float %3990)  ; FMax(a,b)
  store float %3985, float* %3903, align 4, !tbaa !98, !alias.scope !134, !noalias !135
  store float %3989, float* %3904, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  store float %3991, float* %3905, align 4, !tbaa !98, !alias.scope !126, !noalias !129
  %3992 = sub nsw i32 3, %3975
  %3993 = icmp sgt i32 %3992, 2
  br i1 %3993, label %3994, label %4032

; <label>:3994                                    ; preds = %3968
  %3995 = icmp eq i32 %3763, 0
  %3996 = fsub fast float %3813, %3897
  %3997 = select i1 %3995, float %3996, float %3897
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.CBufRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4006 = extractvalue %dx.types.CBufRet.f32 %4002, 3
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 3
  %4009 = call float @dx.op.binary.f32(i32 36, float %3898, float %4008)  ; FMin(a,b)
  %4010 = fmul fast float %4006, %3997
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = fsub fast float %4003, %3999
  %4013 = fsub fast float %4004, %4000
  %4014 = fsub fast float %4005, %4001
  %4015 = fmul fast float %4011, %4012
  %4016 = fmul fast float %4011, %4013
  %4017 = fmul fast float %4011, %4014
  %4018 = fadd fast float %4015, %3999
  %4019 = fadd fast float %4016, %4000
  %4020 = fadd fast float %4017, %4001
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4024 = fadd fast float %4023, %4022
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4027 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4028 = fadd fast float %4027, %4026
  %4029 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4030 = fmul fast float %4025, %4009
  %4031 = fmul fast float %4030, %4029
  br label %4114

; <label>:4032                                    ; preds = %3968
  %4033 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %3992
  %4034 = load float, float* %4033, align 4, !tbaa !98, !noalias !100
  %4035 = fcmp fast olt float %4034, %3899
  %4036 = icmp sgt i32 %3975, 0
  %4037 = and i1 %4036, %4035
  br i1 %4037, label %4038, label %4075

; <label>:4038                                    ; preds = %4032
  br label %4039

; <label>:4039                                    ; preds = %4068, %4038
  %4040 = phi float [ %4069, %4068 ], [ %3897, %4038 ]
  %4041 = phi float [ %4070, %4068 ], [ %3898, %4038 ]
  %4042 = phi float [ %4050, %4068 ], [ %4034, %4038 ]
  %4043 = phi i32 [ %4047, %4068 ], [ %3992, %4038 ]
  %4044 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %4043
  %4045 = load float, float* %4044, align 4, !tbaa !98, !noalias !100
  %4046 = icmp slt i32 %4043, 2
  %4047 = add nsw i32 %4043, 1
  %4048 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4047
  %4049 = load float, float* %4048, align 4, !tbaa !98, !noalias !100
  %4050 = select i1 %4046, float %4049, float %3813
  %4051 = call float @dx.op.binary.f32(i32 36, float %4050, float %4045)  ; FMin(a,b)
  %4052 = call float @dx.op.binary.f32(i32 36, float %3899, float %4051)  ; FMin(a,b)
  %4053 = icmp eq i32 %3763, 0
  %4054 = fadd fast float %4052, %4042
  %4055 = fmul fast float %4054, %3744
  %4056 = fadd fast float %4055, %3757
  br i1 %4053, label %4062, label %4057

; <label>:4057                                    ; preds = %4039
  %4058 = fsub fast float %4052, %4042
  %4059 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4058)  ; FMax(a,b)
  %4060 = fmul fast float %4059, %4056
  %4061 = fadd fast float %4060, %4041
  br label %4068

; <label>:4062                                    ; preds = %4039
  %4063 = fsub fast float %4042, %4052
  %4064 = call float @dx.op.unary.f32(i32 6, float %4063)  ; FAbs(value)
  %4065 = fadd fast float %4064, %4040
  %4066 = fmul fast float %4064, %4056
  %4067 = fsub fast float %4041, %4066
  br label %4068

; <label>:4068                                    ; preds = %4062, %4057
  %4069 = phi float [ %4059, %4057 ], [ %4065, %4062 ]
  %4070 = phi float [ %4061, %4057 ], [ %4067, %4062 ]
  %4071 = fcmp fast olt float %4050, %3899
  %4072 = icmp slt i32 %4047, 3
  %4073 = and i1 %4072, %4071
  br i1 %4073, label %4039, label %4074

; <label>:4074                                    ; preds = %4068
  br label %4075

; <label>:4075                                    ; preds = %4074, %4032
  %4076 = phi float [ %3897, %4032 ], [ %4069, %4074 ]
  %4077 = phi float [ %3898, %4032 ], [ %4070, %4074 ]
  %4078 = fsub fast float %3813, %4076
  %4079 = select i1 %3815, float %4076, float %4078
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = extractvalue %dx.types.CBufRet.f32 %4080, 1
  %4083 = extractvalue %dx.types.CBufRet.f32 %4080, 2
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4088 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4091 = call float @dx.op.binary.f32(i32 36, float %4077, float %4090)  ; FMin(a,b)
  %4092 = fmul fast float %4088, %4079
  %4093 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4094 = fsub fast float %4085, %4081
  %4095 = fsub fast float %4086, %4082
  %4096 = fsub fast float %4087, %4083
  %4097 = fmul fast float %4093, %4094
  %4098 = fmul fast float %4093, %4095
  %4099 = fmul fast float %4093, %4096
  %4100 = fadd fast float %4097, %4081
  %4101 = fadd fast float %4098, %4082
  %4102 = fadd fast float %4099, %4083
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.CBufRet.f32 %4103, 1
  %4106 = fadd fast float %4105, %4104
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4103, 2
  %4109 = extractvalue %dx.types.CBufRet.f32 %4103, 3
  %4110 = fadd fast float %4109, %4108
  %4111 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4112 = fmul fast float %4107, %4091
  %4113 = fmul fast float %4112, %4111
  br label %4114

; <label>:4114                                    ; preds = %4075, %3994, %3829, %3811, %3809
  %4115 = phi float [ %3838, %3829 ], [ %3997, %3994 ], [ %4079, %4075 ], [ 0.000000e+00, %3809 ], [ 0.000000e+00, %3811 ]
  %4116 = phi float [ %3872, %3829 ], [ %4031, %3994 ], [ %4113, %4075 ], [ 0.000000e+00, %3809 ], [ 0.000000e+00, %3811 ]
  %4117 = phi float [ %3859, %3829 ], [ %4018, %3994 ], [ %4100, %4075 ], [ 0.000000e+00, %3809 ], [ 0.000000e+00, %3811 ]
  %4118 = phi float [ %3860, %3829 ], [ %4019, %3994 ], [ %4101, %4075 ], [ 0.000000e+00, %3809 ], [ 0.000000e+00, %3811 ]
  %4119 = phi float [ %3861, %3829 ], [ %4020, %3994 ], [ %4102, %4075 ], [ 0.000000e+00, %3809 ], [ 0.000000e+00, %3811 ]
  %4120 = fmul fast float %3752, %4116
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 2
  %4123 = fsub fast float %3759, %4122
  %4124 = fcmp fast olt float %4120, -2.000000e+01
  %4125 = call float @dx.op.unary.f32(i32 21, float %4120)  ; Exp(value)
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 2
  %4128 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4131 = fmul fast float %4128, %4123
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = fsub fast float 1.000000e+00, %4132
  %4134 = fmul fast float %3744, 5.000000e-01
  %4135 = fadd fast float %4134, 5.000000e-01
  %4136 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4137 = fsub fast float 1.000000e+00, %4136
  %4138 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4133)  ; FMax(a,b)
  %4139 = fdiv fast float %4137, %4138
  %4140 = fsub fast float %4123, %3701
  %4141 = call float @dx.op.unary.f32(i32 6, float %4140)  ; FAbs(value)
  %4142 = fmul fast float %4141, %4127
  %4143 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4144 = fsub fast float 1.000000e+00, %4142
  %4145 = fmul fast float %4144, %4143
  %4146 = fadd fast float %4145, %4142
  %4147 = fmul fast float %4130, %4123
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fsub fast float 1.000000e+00, %4146
  %4150 = fmul fast float %4149, %4148
  %4151 = fadd fast float %4150, %4146
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fadd fast float %4125, -1.000000e+00
  %4154 = select i1 %4124, float -1.000000e+00, float %4153
  %4155 = fmul fast float %4152, %4154
  %4156 = fadd fast float %4155, 1.000000e+00
  %4157 = fsub fast float -0.000000e+00, %4155
  %4158 = fmul fast float %4117, %4157
  %4159 = fmul fast float %4118, %4157
  %4160 = fmul fast float %4119, %4157
  br label %4161

; <label>:4161                                    ; preds = %4114, %3710
  %4162 = phi float [ %4115, %4114 ], [ 0.000000e+00, %3710 ]
  %4163 = phi float [ %4156, %4114 ], [ 1.000000e+00, %3710 ]
  %4164 = phi float [ %4158, %4114 ], [ 0.000000e+00, %3710 ]
  %4165 = phi float [ %4159, %4114 ], [ 0.000000e+00, %3710 ]
  %4166 = phi float [ %4160, %4114 ], [ 0.000000e+00, %3710 ]
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4169 = fsub fast float 1.000000e+00, %4163
  %4170 = fmul fast float %4169, %3745
  %4171 = fmul fast float %4170, %4168
  %4172 = fsub fast float %3745, %4171
  br i1 %3738, label %4173, label %4202, !dx.controlflow.hints !136

; <label>:4173                                    ; preds = %4161
  %4174 = fmul fast float %3746, %3735
  %4175 = fadd fast float %4174, %3736
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = fmul fast float %3717, %4172
  %4178 = fsub fast float -0.000000e+00, %4177
  %4179 = fmul fast float %3718, %4172
  %4180 = fsub fast float -0.000000e+00, %4179
  %4181 = call float @dx.op.unary.f32(i32 21, float %4178)  ; Exp(value)
  %4182 = call float @dx.op.unary.f32(i32 21, float %4180)  ; Exp(value)
  %4183 = call float @dx.op.binary.f32(i32 35, float %3725, float %4181)  ; FMax(a,b)
  %4184 = call float @dx.op.binary.f32(i32 35, float %3725, float %4182)  ; FMax(a,b)
  %4185 = fsub fast float %4184, %4183
  %4186 = fmul fast float %4185, %4176
  %4187 = fadd fast float %4186, %4183
  %4188 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4189 = fsub fast float %3722, %3727
  %4190 = fsub fast float %3723, %3728
  %4191 = fsub fast float %3724, %3729
  %4192 = fmul fast float %4176, %4189
  %4193 = fmul fast float %4176, %4190
  %4194 = fmul fast float %4176, %4191
  %4195 = fadd fast float %4192, %3727
  %4196 = fadd fast float %4193, %3728
  %4197 = fadd fast float %4194, %3729
  %4198 = fsub fast float 1.000000e+00, %4188
  %4199 = fmul fast float %4198, %4195
  %4200 = fmul fast float %4198, %4196
  %4201 = fmul fast float %4198, %4197
  br label %4261

; <label>:4202                                    ; preds = %4161
  %4203 = fmul fast float %4172, %3734
  %4204 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  %4205 = fsub fast float 2.000000e+00, %4204
  %4206 = fmul fast float %4204, 9.921875e-01
  %4207 = fmul fast float %4206, %4205
  %4208 = fadd fast float %4207, 3.906250e-03
  %4209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %4208, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = fsub fast float %4204, %4210
  %4212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4211)  ; FMax(a,b)
  %4213 = fmul fast float %3720, %3701
  %4214 = call float @dx.op.unary.f32(i32 6, float %4213)  ; FAbs(value)
  %4215 = fcmp fast ogt float %4214, 0x3EB0C6F7A0000000
  br i1 %4215, label %4216, label %4222, !dx.controlflow.hints !137

; <label>:4216                                    ; preds = %4202
  %4217 = fmul fast float %4213, 0xBFF7154760000000
  %4218 = call float @dx.op.unary.f32(i32 21, float %4217)  ; Exp(value)
  %4219 = fsub fast float 1.000000e+00, %4218
  %4220 = fdiv fast float %4219, %4213
  %4221 = fmul fast float %4220, %3730
  br label %4222

; <label>:4222                                    ; preds = %4216, %4202
  %4223 = phi float [ %4221, %4216 ], [ %3730, %4202 ]
  %4224 = fadd fast float %4223, %3732
  %4225 = fmul fast float %4224, %4212
  %4226 = fmul fast float %3717, %4225
  %4227 = fsub fast float -0.000000e+00, %4226
  %4228 = fmul fast float %3718, %4225
  %4229 = fsub fast float -0.000000e+00, %4228
  %4230 = fmul fast float %3719, %4225
  %4231 = fsub fast float -0.000000e+00, %4230
  %4232 = call float @dx.op.unary.f32(i32 21, float %4227)  ; Exp(value)
  %4233 = call float @dx.op.unary.f32(i32 21, float %4229)  ; Exp(value)
  %4234 = call float @dx.op.unary.f32(i32 21, float %4231)  ; Exp(value)
  %4235 = fmul fast float %3746, %3746
  %4236 = fadd fast float %4235, 1.000000e+00
  %4237 = fmul fast float %4236, 0x3FAE8EC8A0000000
  %4238 = fmul fast float %4237, %3727
  %4239 = fmul fast float %4237, %3728
  %4240 = fmul fast float %4237, %3729
  %4241 = fmul fast float %3746, %3725
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = fmul fast float %3725, %3725
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = fmul fast float %4244, 0x3FB45F3060000000
  %4246 = fmul fast float %4242, %4242
  %4247 = fdiv fast float 1.000000e+00, %4246
  %4248 = fmul fast float %4245, %4247
  %4249 = fmul fast float %4248, %3722
  %4250 = fmul fast float %4248, %3723
  %4251 = fmul fast float %4248, %3724
  %4252 = fadd fast float %4249, %4238
  %4253 = fadd fast float %4250, %4239
  %4254 = fadd fast float %4251, %4240
  %4255 = fsub fast float 1.000000e+00, %4232
  %4256 = fsub fast float 1.000000e+00, %4233
  %4257 = fsub fast float 1.000000e+00, %4234
  %4258 = fmul fast float %4252, %4255
  %4259 = fmul fast float %4253, %4256
  %4260 = fmul fast float %4254, %4257
  br label %4261

; <label>:4261                                    ; preds = %4222, %4173
  %4262 = phi float [ %4199, %4173 ], [ %4258, %4222 ]
  %4263 = phi float [ %4200, %4173 ], [ %4259, %4222 ]
  %4264 = phi float [ %4201, %4173 ], [ %4260, %4222 ]
  %4265 = phi float [ %4188, %4173 ], [ %4232, %4222 ]
  %4266 = phi float [ %4188, %4173 ], [ %4233, %4222 ]
  %4267 = phi float [ %4188, %4173 ], [ %4234, %4222 ]
  br i1 %3754, label %4268, label %4466, !dx.controlflow.hints !138

; <label>:4268                                    ; preds = %4261
  %4269 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4270 = fmul fast float %4269, %4169
  %4271 = fsub fast float %4164, %4262
  %4272 = fsub fast float %4165, %4263
  %4273 = fsub fast float %4166, %4264
  %4274 = fmul fast float %4270, %4271
  %4275 = fmul fast float %4270, %4272
  %4276 = fmul fast float %4270, %4273
  %4277 = fadd fast float %4274, %4262
  %4278 = fadd fast float %4275, %4263
  %4279 = fadd fast float %4276, %4264
  %4280 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4265)  ; FMax(a,b)
  %4281 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4266)  ; FMax(a,b)
  %4282 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4267)  ; FMax(a,b)
  %4283 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4163)  ; FMax(a,b)
  %4284 = call float @dx.op.binary.f32(i32 35, float %4162, float %4172)  ; FMax(a,b)
  %4285 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4284)  ; FMax(a,b)
  %4286 = fdiv fast float %4162, %4285
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fdiv fast float %4172, %4285
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = fcmp fast une float %4283, 1.000000e+00
  br i1 %4290, label %4291, label %4304, !dx.controlflow.hints !139

; <label>:4291                                    ; preds = %4268
  %4292 = call float @dx.op.unary.f32(i32 23, float %4283)  ; Log(value)
  %4293 = fmul fast float %4292, 0x3FE62E4300000000
  %4294 = fmul fast float %4164, %4293
  %4295 = fsub fast float -0.000000e+00, %4294
  %4296 = fmul fast float %4165, %4293
  %4297 = fsub fast float -0.000000e+00, %4296
  %4298 = fmul fast float %4166, %4293
  %4299 = fsub fast float -0.000000e+00, %4298
  %4300 = fsub fast float 1.000000e+00, %4283
  %4301 = fdiv fast float %4295, %4300
  %4302 = fdiv fast float %4297, %4300
  %4303 = fdiv fast float %4299, %4300
  br label %4304

; <label>:4304                                    ; preds = %4291, %4268
  %4305 = phi float [ %4301, %4291 ], [ %4164, %4268 ]
  %4306 = phi float [ %4302, %4291 ], [ %4165, %4268 ]
  %4307 = phi float [ %4303, %4291 ], [ %4166, %4268 ]
  %4308 = phi float [ %4293, %4291 ], [ 0.000000e+00, %4268 ]
  %4309 = fcmp fast une float %4280, 1.000000e+00
  br i1 %4309, label %4310, label %4317, !dx.controlflow.hints !140

; <label>:4310                                    ; preds = %4304
  %4311 = call float @dx.op.unary.f32(i32 23, float %4280)  ; Log(value)
  %4312 = fmul fast float %4311, 0x3FE62E4300000000
  %4313 = fmul fast float %4277, %4312
  %4314 = fsub fast float -0.000000e+00, %4313
  %4315 = fsub fast float 1.000000e+00, %4280
  %4316 = fdiv fast float %4314, %4315
  br label %4317

; <label>:4317                                    ; preds = %4310, %4304
  %4318 = phi float [ %4316, %4310 ], [ %4277, %4304 ]
  %4319 = phi float [ %4312, %4310 ], [ 0.000000e+00, %4304 ]
  %4320 = fcmp fast une float %4281, 1.000000e+00
  br i1 %4320, label %4321, label %4328, !dx.controlflow.hints !140

; <label>:4321                                    ; preds = %4317
  %4322 = call float @dx.op.unary.f32(i32 23, float %4281)  ; Log(value)
  %4323 = fmul fast float %4322, 0x3FE62E4300000000
  %4324 = fmul fast float %4278, %4323
  %4325 = fsub fast float -0.000000e+00, %4324
  %4326 = fsub fast float 1.000000e+00, %4281
  %4327 = fdiv fast float %4325, %4326
  br label %4328

; <label>:4328                                    ; preds = %4321, %4317
  %4329 = phi float [ %4327, %4321 ], [ %4278, %4317 ]
  %4330 = phi float [ %4323, %4321 ], [ 0.000000e+00, %4317 ]
  %4331 = fcmp fast une float %4282, 1.000000e+00
  br i1 %4331, label %4332, label %4339, !dx.controlflow.hints !140

; <label>:4332                                    ; preds = %4328
  %4333 = call float @dx.op.unary.f32(i32 23, float %4282)  ; Log(value)
  %4334 = fmul fast float %4333, 0x3FE62E4300000000
  %4335 = fmul fast float %4279, %4334
  %4336 = fsub fast float -0.000000e+00, %4335
  %4337 = fsub fast float 1.000000e+00, %4282
  %4338 = fdiv fast float %4336, %4337
  br label %4339

; <label>:4339                                    ; preds = %4332, %4328
  %4340 = phi float [ %4338, %4332 ], [ %4279, %4328 ]
  %4341 = phi float [ %4334, %4332 ], [ 0.000000e+00, %4328 ]
  %4342 = fmul fast float %4305, %4289
  %4343 = fmul fast float %4306, %4289
  %4344 = fmul fast float %4307, %4289
  %4345 = fmul fast float %4308, %4289
  %4346 = fmul fast float %4318, %4287
  %4347 = fmul fast float %4329, %4287
  %4348 = fmul fast float %4340, %4287
  %4349 = fmul fast float %4319, %4287
  %4350 = fmul fast float %4330, %4287
  %4351 = fmul fast float %4341, %4287
  %4352 = fadd fast float %4346, %4342
  %4353 = fadd fast float %4347, %4343
  %4354 = fadd fast float %4348, %4344
  %4355 = fadd fast float %4349, %4345
  %4356 = fadd fast float %4350, %4345
  %4357 = fadd fast float %4351, %4345
  %4358 = fcmp fast une float %4355, 0.000000e+00
  br i1 %4358, label %4359, label %4366, !dx.controlflow.hints !141

; <label>:4359                                    ; preds = %4339
  %4360 = fmul fast float %4355, 0x3FF7154760000000
  %4361 = call float @dx.op.unary.f32(i32 21, float %4360)  ; Exp(value)
  %4362 = fsub fast float 1.000000e+00, %4361
  %4363 = fmul fast float %4352, %4362
  %4364 = fsub fast float -0.000000e+00, %4363
  %4365 = fdiv fast float %4364, %4355
  br label %4366

; <label>:4366                                    ; preds = %4359, %4339
  %4367 = phi float [ %4361, %4359 ], [ 1.000000e+00, %4339 ]
  %4368 = phi float [ %4365, %4359 ], [ %4352, %4339 ]
  %4369 = fcmp fast une float %4356, 0.000000e+00
  br i1 %4369, label %4370, label %4377, !dx.controlflow.hints !141

; <label>:4370                                    ; preds = %4366
  %4371 = fmul fast float %4356, 0x3FF7154760000000
  %4372 = call float @dx.op.unary.f32(i32 21, float %4371)  ; Exp(value)
  %4373 = fsub fast float 1.000000e+00, %4372
  %4374 = fmul fast float %4353, %4373
  %4375 = fsub fast float -0.000000e+00, %4374
  %4376 = fdiv fast float %4375, %4356
  br label %4377

; <label>:4377                                    ; preds = %4370, %4366
  %4378 = phi float [ %4372, %4370 ], [ 1.000000e+00, %4366 ]
  %4379 = phi float [ %4376, %4370 ], [ %4353, %4366 ]
  %4380 = fcmp fast une float %4357, 0.000000e+00
  br i1 %4380, label %4381, label %4388, !dx.controlflow.hints !141

; <label>:4381                                    ; preds = %4377
  %4382 = fmul fast float %4357, 0x3FF7154760000000
  %4383 = call float @dx.op.unary.f32(i32 21, float %4382)  ; Exp(value)
  %4384 = fsub fast float 1.000000e+00, %4383
  %4385 = fmul fast float %4354, %4384
  %4386 = fsub fast float -0.000000e+00, %4385
  %4387 = fdiv fast float %4386, %4357
  br label %4388

; <label>:4388                                    ; preds = %4381, %4377
  %4389 = phi float [ %4383, %4381 ], [ 1.000000e+00, %4377 ]
  %4390 = phi float [ %4387, %4381 ], [ %4354, %4377 ]
  %4391 = fcmp fast ogt float %4287, %4289
  br i1 %4391, label %4392, label %4412

; <label>:4392                                    ; preds = %4388
  %4393 = fsub fast float 1.000000e+00, %4289
  %4394 = fmul fast float %4305, %4393
  %4395 = fmul fast float %4306, %4393
  %4396 = fmul fast float %4307, %4393
  %4397 = fmul fast float %4308, %4393
  %4398 = fcmp fast une float %4397, 0.000000e+00
  br i1 %4398, label %4399, label %4450, !dx.controlflow.hints !142

; <label>:4399                                    ; preds = %4392
  %4400 = fmul fast float %4397, 0x3FF7154760000000
  %4401 = call float @dx.op.unary.f32(i32 21, float %4400)  ; Exp(value)
  %4402 = fsub fast float 1.000000e+00, %4401
  %4403 = fmul fast float %4394, %4402
  %4404 = fsub fast float -0.000000e+00, %4403
  %4405 = fmul fast float %4395, %4402
  %4406 = fsub fast float -0.000000e+00, %4405
  %4407 = fmul fast float %4396, %4402
  %4408 = fsub fast float -0.000000e+00, %4407
  %4409 = fdiv fast float %4404, %4397
  %4410 = fdiv fast float %4406, %4397
  %4411 = fdiv fast float %4408, %4397
  br label %4450

; <label>:4412                                    ; preds = %4388
  %4413 = fsub fast float 1.000000e+00, %4287
  %4414 = fmul fast float %4318, %4413
  %4415 = fmul fast float %4329, %4413
  %4416 = fmul fast float %4340, %4413
  %4417 = fmul fast float %4319, %4413
  %4418 = fmul fast float %4330, %4413
  %4419 = fmul fast float %4341, %4413
  %4420 = fcmp fast une float %4417, 0.000000e+00
  br i1 %4420, label %4421, label %4428, !dx.controlflow.hints !141

; <label>:4421                                    ; preds = %4412
  %4422 = fmul fast float %4417, 0x3FF7154760000000
  %4423 = call float @dx.op.unary.f32(i32 21, float %4422)  ; Exp(value)
  %4424 = fsub fast float 1.000000e+00, %4423
  %4425 = fmul fast float %4414, %4424
  %4426 = fsub fast float -0.000000e+00, %4425
  %4427 = fdiv fast float %4426, %4417
  br label %4428

; <label>:4428                                    ; preds = %4421, %4412
  %4429 = phi float [ %4427, %4421 ], [ %4414, %4412 ]
  %4430 = phi float [ %4423, %4421 ], [ 1.000000e+00, %4412 ]
  %4431 = fcmp fast une float %4418, 0.000000e+00
  br i1 %4431, label %4432, label %4439, !dx.controlflow.hints !141

; <label>:4432                                    ; preds = %4428
  %4433 = fmul fast float %4418, 0x3FF7154760000000
  %4434 = call float @dx.op.unary.f32(i32 21, float %4433)  ; Exp(value)
  %4435 = fsub fast float 1.000000e+00, %4434
  %4436 = fmul fast float %4415, %4435
  %4437 = fsub fast float -0.000000e+00, %4436
  %4438 = fdiv fast float %4437, %4418
  br label %4439

; <label>:4439                                    ; preds = %4432, %4428
  %4440 = phi float [ %4438, %4432 ], [ %4415, %4428 ]
  %4441 = phi float [ %4434, %4432 ], [ 1.000000e+00, %4428 ]
  %4442 = fcmp fast une float %4419, 0.000000e+00
  br i1 %4442, label %4443, label %4450, !dx.controlflow.hints !141

; <label>:4443                                    ; preds = %4439
  %4444 = fmul fast float %4419, 0x3FF7154760000000
  %4445 = call float @dx.op.unary.f32(i32 21, float %4444)  ; Exp(value)
  %4446 = fsub fast float 1.000000e+00, %4445
  %4447 = fmul fast float %4416, %4446
  %4448 = fsub fast float -0.000000e+00, %4447
  %4449 = fdiv fast float %4448, %4419
  br label %4450

; <label>:4450                                    ; preds = %4443, %4439, %4399, %4392
  %4451 = phi float [ %4449, %4443 ], [ %4411, %4399 ], [ %4396, %4392 ], [ %4416, %4439 ]
  %4452 = phi float [ %4440, %4443 ], [ %4410, %4399 ], [ %4395, %4392 ], [ %4440, %4439 ]
  %4453 = phi float [ %4429, %4443 ], [ %4409, %4399 ], [ %4394, %4392 ], [ %4429, %4439 ]
  %4454 = phi float [ %4445, %4443 ], [ %4401, %4399 ], [ 1.000000e+00, %4392 ], [ 1.000000e+00, %4439 ]
  %4455 = phi float [ %4441, %4443 ], [ %4401, %4399 ], [ 1.000000e+00, %4392 ], [ %4441, %4439 ]
  %4456 = phi float [ %4430, %4443 ], [ %4401, %4399 ], [ 1.000000e+00, %4392 ], [ %4430, %4439 ]
  %4457 = fmul fast float %4456, %4368
  %4458 = fmul fast float %4455, %4379
  %4459 = fmul fast float %4454, %4390
  %4460 = fadd fast float %4457, %4453
  %4461 = fadd fast float %4458, %4452
  %4462 = fadd fast float %4459, %4451
  %4463 = fmul fast float %4456, %4367
  %4464 = fmul fast float %4455, %4378
  %4465 = fmul fast float %4454, %4389
  br label %4466

; <label>:4466                                    ; preds = %4450, %4261
  %4467 = phi float [ %4465, %4450 ], [ %4267, %4261 ]
  %4468 = phi float [ %4464, %4450 ], [ %4266, %4261 ]
  %4469 = phi float [ %4463, %4450 ], [ %4265, %4261 ]
  %4470 = phi float [ %4462, %4450 ], [ %4264, %4261 ]
  %4471 = phi float [ %4461, %4450 ], [ %4263, %4261 ]
  %4472 = phi float [ %4460, %4450 ], [ %4262, %4261 ]
  %4473 = fmul fast float %4472, %3412
  %4474 = fmul fast float %4471, %3414
  %4475 = fmul fast float %4470, %3416
  %4476 = fmul fast float %4469, %3709
  %4477 = call float @dx.op.dot3.f32(i32 55, float %4469, float %4468, float %4467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4478 = call float @dx.op.dot3.f32(i32 55, float %4473, float %4474, float %4475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4479 = select i1 %181, float %4477, float %4469
  %4480 = select i1 %181, float %4477, float %4468
  %4481 = select i1 %181, float 1.000000e+00, float %4467
  %4482 = select i1 %181, float %4478, float %4473
  %4483 = select i1 %181, float 0.000000e+00, float %4474
  %4484 = select i1 %181, float 0.000000e+00, float %4475
  %4485 = fmul fast float %4479, %3703
  %4486 = fmul fast float %4480, %3704
  %4487 = fmul fast float %4481, %3705
  %4488 = fadd fast float %4485, %4482
  %4489 = fadd fast float %4486, %4483
  %4490 = fadd fast float %4484, %4487
  %4491 = fmul fast float %4479, %3706
  %4492 = fmul fast float %4480, %3707
  %4493 = fmul fast float %4481, %3708
  %4494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.i32 %4494, 0
  %4496 = icmp eq i32 %4495, 0
  br i1 %4496, label %4864, label %4497, !dx.controlflow.hints !143

; <label>:4497                                    ; preds = %4466
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 2
  %4500 = extractvalue %dx.types.CBufRet.f32 %4498, 3
  %4501 = fmul fast float %4499, %72
  %4502 = fmul fast float %4500, %73
  %4503 = fmul fast float %4501, 2.000000e+00
  %4504 = fmul fast float %4502, 2.000000e+00
  %4505 = fsub fast float 1.000000e+00, %4503
  %4506 = fsub fast float 1.000000e+00, %4504
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.CBufRet.f32 %4507, 2
  %4511 = fmul fast float %4505, %4508
  %4512 = fmul fast float %4505, %4509
  %4513 = fmul fast float %4505, %4510
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4518 = fmul fast float %4506, %4515
  %4519 = fmul fast float %4506, %4516
  %4520 = fmul fast float %4506, %4517
  %4521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.CBufRet.f32 %4521, 1
  %4524 = extractvalue %dx.types.CBufRet.f32 %4521, 2
  %4525 = fadd fast float %4518, %4522
  %4526 = fadd fast float %4525, %4511
  %4527 = fadd fast float %4519, %4523
  %4528 = fadd fast float %4527, %4512
  %4529 = fadd fast float %4520, %4524
  %4530 = fadd fast float %4529, %4513
  %4531 = fmul fast float %4526, %3702
  %4532 = fmul fast float %4528, %3702
  %4533 = fmul fast float %4530, %3702
  %4534 = fmul fast float %4531, %4531
  %4535 = fmul fast float %4532, %4532
  %4536 = fadd fast float %4534, %4535
  %4537 = fmul fast float %4533, %4533
  %4538 = fadd fast float %4536, %4537
  %4539 = call float @dx.op.unary.f32(i32 24, float %4538)  ; Sqrt(value)
  %4540 = extractvalue %dx.types.CBufRet.f32 %3427, 0
  %4541 = fsub fast float %4539, %4540
  %4542 = extractvalue %dx.types.CBufRet.f32 %3427, 2
  %4543 = fmul fast float %4541, %4542
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = fadd fast float %4544, -5.000000e-01
  %4546 = fmul fast float %4545, 2.000000e+00
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 2
  %4549 = call float @dx.op.binary.f32(i32 36, float %4548, float %4546)  ; FMin(a,b)
  %4550 = fsub fast float -0.000000e+00, %4548
  %4551 = fcmp fast ogt float %4549, %4550
  br i1 %4551, label %4552, label %4864, !dx.controlflow.hints !144

; <label>:4552                                    ; preds = %4497
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 3
  %4555 = fcmp fast ogt float %4554, 0.000000e+00
  br i1 %4555, label %4556, label %4631, !dx.controlflow.hints !145

; <label>:4556                                    ; preds = %4552
  %4557 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %4558 = extractvalue %dx.types.Dimensions %4557, 0
  %4559 = sitofp i32 %4558 to float
  %4560 = extractvalue %dx.types.Dimensions %4557, 1
  %4561 = sitofp i32 %4560 to float
  %4562 = fmul fast float %4501, %4559
  %4563 = fmul fast float %4502, %4561
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 1
  %4566 = fsub fast float -0.000000e+00, %4565
  %4567 = fptoui float %4566 to i32
  %4568 = fptoui float %4562 to i32
  %4569 = fptoui float %4563 to i32
  %4570 = and i32 %4567, 31
  %4571 = lshr i32 %4568, %4570
  %4572 = lshr i32 %4569, %4570
  %4573 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %4567, i32 %4571, i32 %4572, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = fcmp fast olt float %4574, -1.000000e+00
  %4576 = fcmp fast ogt float %4574, -1.000000e+00
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 1
  %4579 = select i1 %4576, float %4578, float 1.000000e+00
  %4580 = fadd fast float %4574, 1.000000e+00
  %4581 = fmul fast float %4579, %4580
  %4582 = call float @dx.op.unary.f32(i32 6, float %4581)  ; FAbs(value)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4584 = fcmp fast oge float %4582, %4583
  %4585 = select i1 %4584, float 0x4197782600000000, float %4582
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.CBufRet.f32 %4586, 2
  %4590 = select i1 %4575, float %4587, float %4508
  %4591 = select i1 %4575, float %4588, float %4509
  %4592 = select i1 %4575, float %4589, float %4510
  %4593 = fmul fast float %4590, %4505
  %4594 = fmul fast float %4591, %4505
  %4595 = fmul fast float %4592, %4505
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.CBufRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4600 = select i1 %4575, float %4597, float %4515
  %4601 = select i1 %4575, float %4598, float %4516
  %4602 = select i1 %4575, float %4599, float %4517
  %4603 = fmul fast float %4600, %4506
  %4604 = fmul fast float %4601, %4506
  %4605 = fmul fast float %4602, %4506
  %4606 = fadd fast float %4603, %4593
  %4607 = fadd fast float %4604, %4594
  %4608 = fadd fast float %4605, %4595
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.CBufRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.CBufRet.f32 %4609, 2
  %4613 = select i1 %4575, float %4610, float %4522
  %4614 = select i1 %4575, float %4611, float %4523
  %4615 = select i1 %4575, float %4612, float %4524
  %4616 = fadd fast float %4606, %4613
  %4617 = fadd fast float %4607, %4614
  %4618 = fadd fast float %4608, %4615
  %4619 = fmul fast float %4616, %4585
  %4620 = fmul fast float %4617, %4585
  %4621 = fmul fast float %4618, %4585
  %4622 = fmul fast float %4619, %4619
  %4623 = fmul fast float %4620, %4620
  %4624 = fadd fast float %4622, %4623
  %4625 = fmul fast float %4621, %4621
  %4626 = fadd fast float %4624, %4625
  %4627 = call float @dx.op.unary.f32(i32 24, float %4626)  ; Sqrt(value)
  %4628 = fsub fast float %4627, %4540
  %4629 = fmul fast float %4628, %4542
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  br label %4631

; <label>:4631                                    ; preds = %4556, %4552
  %4632 = phi float [ %4630, %4556 ], [ 1.000000e+00, %4552 ]
  %4633 = fmul fast float %4549, 5.000000e-01
  %4634 = fadd fast float %4633, 5.000000e-01
  %4635 = call float @dx.op.unary.f32(i32 22, float %4634)  ; Frc(value)
  %4636 = call float @dx.op.unary.f32(i32 27, float %4635)  ; Round_ni(value)
  %4637 = call float @dx.op.unary.f32(i32 22, float %4635)  ; Frc(value)
  %4638 = fmul fast float %4637, 2.000000e+00
  %4639 = fadd fast float %4638, -1.000000e+00
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %4501, float %4502, float %4636, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4645 = fadd fast float %4641, -5.000000e-01
  %4646 = fadd fast float %4643, -5.000000e-01
  %4647 = fmul fast float %4645, 0xBFD5555560000000
  %4648 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4646, float %4647)  ; FMad(a,b,c)
  %4649 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4642, float 0.000000e+00)  ; FMad(a,b,c)
  %4650 = fadd fast float %4649, %4644
  %4651 = fmul fast float %4645, -7.500000e-01
  %4652 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4646, float %4651)  ; FMad(a,b,c)
  %4653 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4642, float 0.000000e+00)  ; FMad(a,b,c)
  %4654 = fadd fast float %4653, %4644
  %4655 = call float @dx.op.binary.f32(i32 35, float %4648, float -1.000000e+00)  ; FMax(a,b)
  %4656 = call float @dx.op.binary.f32(i32 35, float %4650, float -1.000000e+00)  ; FMax(a,b)
  %4657 = call float @dx.op.binary.f32(i32 35, float %4652, float -1.000000e+00)  ; FMax(a,b)
  %4658 = call float @dx.op.binary.f32(i32 35, float %4654, float -1.000000e+00)  ; FMax(a,b)
  %4659 = call float @dx.op.binary.f32(i32 36, float %4655, float 1.000000e+00)  ; FMin(a,b)
  %4660 = call float @dx.op.binary.f32(i32 36, float %4656, float 1.000000e+00)  ; FMin(a,b)
  %4661 = call float @dx.op.binary.f32(i32 36, float %4657, float 1.000000e+00)  ; FMin(a,b)
  %4662 = call float @dx.op.binary.f32(i32 36, float %4658, float 1.000000e+00)  ; FMin(a,b)
  %4663 = fcmp fast olt float %4659, 0x3FEFFF8020000000
  br i1 %4663, label %4664, label %4779, !dx.controlflow.hints !146

; <label>:4664                                    ; preds = %4631
  %4665 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 0
  %4668 = extractvalue %dx.types.CBufRet.f32 %4666, 1
  %4669 = extractvalue %dx.types.CBufRet.f32 %4666, 2
  %4670 = extractvalue %dx.types.CBufRet.f32 %4666, 3
  %4671 = fsub fast float %4667, %4659
  %4672 = fsub fast float %4668, %4660
  %4673 = fsub fast float %4669, %4661
  %4674 = fsub fast float %4670, %4662
  %4675 = fmul fast float %4671, %4665
  %4676 = fmul fast float %4672, %4665
  %4677 = fmul fast float %4673, %4665
  %4678 = fmul fast float %4674, %4665
  %4679 = fadd fast float %4675, %4659
  %4680 = fadd fast float %4676, %4660
  %4681 = fsub fast float -0.000000e+00, %4680
  %4682 = fadd fast float %4677, %4661
  %4683 = fadd fast float %4678, %4662
  %4684 = fmul fast float %4679, %4679
  %4685 = fsub fast float %4680, %4684
  %4686 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4685)  ; FMax(a,b)
  %4687 = fdiv fast float 1.000000e+00, %4686
  %4688 = fmul fast float %4680, %4679
  %4689 = fsub fast float %4682, %4688
  %4690 = fsub fast float %4639, %4679
  %4691 = fmul fast float %4639, %4639
  %4692 = fsub fast float %4691, %4680
  %4693 = fmul fast float %4690, %4687
  %4694 = fmul fast float %4693, %4689
  %4695 = fsub fast float %4692, %4694
  %4696 = fmul fast float %4680, %4680
  %4697 = fsub fast float %4683, %4696
  %4698 = fmul fast float %4689, %4689
  %4699 = fmul fast float %4698, %4687
  %4700 = fsub fast float %4697, %4699
  %4701 = fdiv fast float %4695, %4700
  %4702 = fmul fast float %4689, %4701
  %4703 = fsub fast float %4690, %4702
  %4704 = fmul fast float %4703, %4687
  %4705 = fmul fast float %4704, %4679
  %4706 = fsub fast float 1.000000e+00, %4705
  %4707 = fmul fast float %4680, %4701
  %4708 = fsub fast float %4706, %4707
  %4709 = fmul fast float %4704, %4704
  %4710 = fmul fast float %4701, 4.000000e+00
  %4711 = fmul fast float %4710, %4708
  %4712 = fsub fast float %4709, %4711
  %4713 = call float @dx.op.unary.f32(i32 24, float %4712)  ; Sqrt(value)
  %4714 = fcmp fast oge float %4704, 0.000000e+00
  %4715 = fsub fast float -0.000000e+00, %4713
  %4716 = select i1 %4714, float %4715, float %4713
  %4717 = fsub fast float %4716, %4704
  %4718 = fdiv fast float %4717, %4701
  %4719 = fdiv fast float %4708, %4717
  %4720 = fmul fast float %4718, 5.000000e-01
  %4721 = fmul fast float %4719, 2.000000e+00
  %4722 = select i1 %4714, float %4720, float %4721
  %4723 = select i1 %4714, float %4721, float %4720
  %4724 = call float @dx.op.binary.f32(i32 35, float %4722, float %4723)  ; FMax(a,b)
  %4725 = call float @dx.op.binary.f32(i32 36, float %4722, float %4723)  ; FMin(a,b)
  %4726 = fcmp fast ogt float %4639, %4725
  br i1 %4726, label %4727, label %4737

; <label>:4727                                    ; preds = %4664
  %4728 = fsub fast float %4639, %4725
  %4729 = fsub fast float %4724, %4725
  %4730 = fmul fast float %4728, %4729
  %4731 = fmul fast float %4724, %4639
  %4732 = fadd fast float %4724, %4639
  %4733 = fmul fast float %4732, %4679
  %4734 = fadd fast float %4731, %4680
  %4735 = fsub fast float %4734, %4733
  %4736 = fdiv fast float %4735, %4730
  br label %4737

; <label>:4737                                    ; preds = %4727, %4664
  %4738 = phi float [ %4736, %4727 ], [ 0.000000e+00, %4664 ]
  %4739 = fcmp fast ogt float %4639, %4724
  %4740 = fsub fast float %4639, %4724
  br i1 %4739, label %4741, label %4751

; <label>:4741                                    ; preds = %4737
  %4742 = fsub fast float %4724, %4725
  %4743 = fmul fast float %4742, %4740
  %4744 = fmul fast float %4725, %4639
  %4745 = fadd fast float %4725, %4639
  %4746 = fmul fast float %4745, %4679
  %4747 = fsub fast float %4681, %4744
  %4748 = fadd fast float %4747, %4746
  %4749 = fdiv fast float %4748, %4743
  %4750 = fadd fast float %4749, %4738
  br label %4751

; <label>:4751                                    ; preds = %4741, %4737
  %4752 = phi float [ %4750, %4741 ], [ %4738, %4737 ]
  %4753 = fsub fast float %4639, %4725
  %4754 = fmul fast float %4753, %4740
  %4755 = fmul fast float %4725, %4724
  %4756 = fadd fast float %4725, %4724
  %4757 = fmul fast float %4756, %4679
  %4758 = fadd fast float %4755, %4680
  %4759 = fsub fast float %4758, %4757
  %4760 = fdiv fast float %4759, %4754
  %4761 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4762 = fcmp fast oeq float %3428, 0.000000e+00
  %4763 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4764 = fcmp fast oeq float %4763, 0.000000e+00
  %4765 = or i1 %4762, %4764
  %4766 = fmul fast float %4763, 2.000000e+00
  %4767 = fadd fast float %4548, %4549
  %4768 = fdiv fast float %4767, %4766
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = fmul fast float %4769, 2.000000e+00
  %4771 = fsub fast float 3.000000e+00, %4770
  %4772 = fmul fast float %4769, %4769
  %4773 = fmul fast float %4772, %4771
  %4774 = select i1 %4765, float 1.000000e+00, float %4773
  %4775 = fmul fast float %4760, %3428
  %4776 = fadd fast float %4761, %4775
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fmul fast float %4774, %4777
  br label %4779

; <label>:4779                                    ; preds = %4751, %4631
  %4780 = phi float [ %4778, %4751 ], [ 0.000000e+00, %4631 ]
  %4781 = fsub fast float 1.000000e+00, %4780
  %4782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %4501, float %4502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.i32 %4784, 2
  %4786 = icmp eq i32 %4785, 0
  br i1 %4786, label %4792, label %4787

; <label>:4787                                    ; preds = %4779
  %4788 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4789 = fadd fast float %4783, -1.000000e+00
  %4790 = fmul fast float %4788, %4789
  %4791 = fadd fast float %4790, 1.000000e+00
  br label %4792

; <label>:4792                                    ; preds = %4787, %4779
  %4793 = phi float [ %4791, %4787 ], [ %4781, %4779 ]
  br i1 %4555, label %4794, label %4812

; <label>:4794                                    ; preds = %4792
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 1
  %4797 = fsub fast float %4632, %4796
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = fsub fast float %4632, %4554
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fsub fast float %4798, %4800
  %4802 = fsub fast float %4634, %4800
  %4803 = fdiv fast float %4802, %4801
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, 2.000000e+00
  %4806 = fsub fast float 3.000000e+00, %4805
  %4807 = fsub fast float %4783, %4793
  %4808 = fmul fast float %4804, %4804
  %4809 = fmul fast float %4808, %4807
  %4810 = fmul fast float %4809, %4806
  %4811 = fadd fast float %4810, %4793
  br label %4812

; <label>:4812                                    ; preds = %4794, %4792
  %4813 = phi float [ %4811, %4794 ], [ %4793, %4792 ]
  %4814 = call float @dx.op.binary.f32(i32 35, float %4783, float %4813)  ; FMax(a,b)
  %4815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.i32 %4815, 2
  %4817 = and i32 %4816, 1
  %4818 = icmp eq i32 %4817, 0
  %4819 = fcmp fast une float %4814, 1.000000e+00
  %4820 = and i1 %4819, %4818
  br i1 %4820, label %4821, label %4840

; <label>:4821                                    ; preds = %4812
  %4822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %4501, float %4502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4823 = extractvalue %dx.types.ResRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.ResRet.f32 %4822, 1
  %4825 = extractvalue %dx.types.ResRet.f32 %4822, 2
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4828 = fmul fast float %4827, %4823
  %4829 = fmul fast float %4827, %4824
  %4830 = fmul fast float %4827, %4825
  %4831 = fcmp fast ogt float %4783, 0x3FEFFF2E40000000
  %4832 = fsub fast float 1.000000e+00, %4814
  %4833 = fsub fast float 1.000000e+00, %4783
  %4834 = fdiv fast float %4832, %4833
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = select i1 %4831, float 0.000000e+00, float %4835
  %4837 = fmul fast float %4828, %4836
  %4838 = fmul fast float %4829, %4836
  %4839 = fmul fast float %4830, %4836
  br label %4840

; <label>:4840                                    ; preds = %4821, %4812
  %4841 = phi float [ 0.000000e+00, %4812 ], [ %4837, %4821 ]
  %4842 = phi float [ 0.000000e+00, %4812 ], [ %4838, %4821 ]
  %4843 = phi float [ 0.000000e+00, %4812 ], [ %4839, %4821 ]
  %4844 = fmul fast float %4841, %3412
  %4845 = fmul fast float %4842, %3414
  %4846 = fmul fast float %4843, %3416
  %4847 = fmul fast float %4814, %4476
  %4848 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4814, float %4814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = select i1 %181, float %4848, float %4814
  %4851 = select i1 %181, float 1.000000e+00, float %4814
  %4852 = select i1 %181, float %4849, float %4844
  %4853 = select i1 %181, float 0.000000e+00, float %4845
  %4854 = select i1 %181, float 0.000000e+00, float %4846
  %4855 = fmul fast float %4850, %4488
  %4856 = fmul fast float %4850, %4489
  %4857 = fmul fast float %4851, %4490
  %4858 = fadd fast float %4855, %4852
  %4859 = fadd fast float %4856, %4853
  %4860 = fadd fast float %4854, %4857
  %4861 = fmul fast float %4850, %4491
  %4862 = fmul fast float %4850, %4492
  %4863 = fmul fast float %4851, %4493
  br label %4864

; <label>:4864                                    ; preds = %4840, %4497, %4466, %3698
  %4865 = phi float [ %3703, %3698 ], [ %4488, %4466 ], [ %4858, %4840 ], [ %4488, %4497 ]
  %4866 = phi float [ %3704, %3698 ], [ %4489, %4466 ], [ %4859, %4840 ], [ %4489, %4497 ]
  %4867 = phi float [ %3705, %3698 ], [ %4490, %4466 ], [ %4860, %4840 ], [ %4490, %4497 ]
  %4868 = phi float [ %3706, %3698 ], [ %4491, %4466 ], [ %4861, %4840 ], [ %4491, %4497 ]
  %4869 = phi float [ %3707, %3698 ], [ %4492, %4466 ], [ %4862, %4840 ], [ %4492, %4497 ]
  %4870 = phi float [ %3708, %3698 ], [ %4493, %4466 ], [ %4863, %4840 ], [ %4493, %4497 ]
  %4871 = phi float [ %3709, %3698 ], [ %4476, %4466 ], [ %4847, %4840 ], [ %4476, %4497 ]
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4875 = fmul fast float %4873, %72
  %4876 = fmul fast float %4874, %73
  %4877 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4878 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4879 = select i1 %3438, i32 2, i32 0
  %4880 = or i32 %4879, 1
  %4881 = uitofp i32 %4880 to float
  %4882 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4877, float %4878, float %4881, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.ResRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.ResRet.f32 %4882, 2
  %4886 = extractvalue %dx.types.ResRet.f32 %4882, 3
  %4887 = add nuw nsw i32 %4879, 2
  %4888 = uitofp i32 %4887 to float
  %4889 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4877, float %4878, float %4888, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4890 = extractvalue %dx.types.ResRet.f32 %4889, 0
  %4891 = extractvalue %dx.types.ResRet.f32 %4889, 1
  %4892 = extractvalue %dx.types.ResRet.f32 %4889, 2
  %4893 = extractvalue %dx.types.ResRet.f32 %4889, 3
  %4894 = call float @dx.op.binary.f32(i32 35, float %4884, float %4885)  ; FMax(a,b)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4883, float %4894)  ; FMax(a,b)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4895, float %4886)  ; FMax(a,b)
  %4897 = call float @dx.op.binary.f32(i32 36, float %4891, float %4892)  ; FMin(a,b)
  %4898 = call float @dx.op.binary.f32(i32 36, float %4890, float %4897)  ; FMin(a,b)
  %4899 = call float @dx.op.binary.f32(i32 36, float %4898, float %4893)  ; FMin(a,b)
  %4900 = fmul fast float %4896, 2.550000e+02
  %4901 = fadd fast float %4900, 0x3F70101020000000
  %4902 = fptoui float %4901 to i32
  %4903 = fmul fast float %4899, 2.550000e+02
  %4904 = fadd fast float %4903, 0x3F70101020000000
  %4905 = fptoui float %4904 to i32
  %4906 = icmp ult i32 %4902, %4905
  br i1 %4906, label %4907, label %5076

; <label>:4907                                    ; preds = %4864
  %4908 = fcmp fast ogt float %62, 9.843750e-01
  %4909 = fadd fast float %3702, -4.000000e+00
  %4910 = select i1 %4908, float -4.000000e+00, float %4909
  %4911 = call float @dx.op.binary.f32(i32 35, float %4910, float 0.000000e+00)  ; FMax(a,b)
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4914 = fadd fast float %4913, %4911
  %4915 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %4916 = fmul fast float %4914, %4915
  %4917 = call float @dx.op.unary.f32(i32 23, float %4916)  ; Log(value)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4912, 3
  %4919 = fmul fast float %4918, %4917
  %4920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.f32 %4920, 2
  %4922 = fmul fast float %4919, %4921
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = uitofp i32 %4902 to float
  %4925 = uitofp i32 %4905 to float
  %4926 = fadd fast float %4924, 5.000000e-01
  %4927 = fadd fast float %4925, 5.000000e-01
  %4928 = fmul fast float %4921, %4926
  %4929 = fmul fast float %4921, %4927
  %4930 = fadd fast float %4928, 0x3F0FFB4800000000
  %4931 = fadd fast float %4929, 0xBF0FFB4800000000
  %4932 = call float @dx.op.binary.f32(i32 35, float %4923, float %4930)  ; FMax(a,b)
  %4933 = call float @dx.op.binary.f32(i32 36, float %4932, float %4931)  ; FMin(a,b)
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 1
  %4936 = extractvalue %dx.types.CBufRet.f32 %4934, 2
  %4937 = extractvalue %dx.types.CBufRet.f32 %4934, 0
  %4938 = select i1 %3438, float %4937, float 0.000000e+00
  %4939 = fmul fast float %4935, %4933
  %4940 = fadd fast float %4938, %4939
  %4941 = fadd fast float %4938, %4936
  %4942 = fsub fast float %4935, %4936
  %4943 = fadd fast float %4942, %4938
  %4944 = call float @dx.op.binary.f32(i32 35, float %4940, float %4941)  ; FMax(a,b)
  %4945 = call float @dx.op.binary.f32(i32 36, float %4944, float %4943)  ; FMin(a,b)
  %4946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %4877, float %4878, float %4945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.ResRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.ResRet.f32 %4946, 2
  %4950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.i32 %4950, 0
  %4952 = extractvalue %dx.types.CBufRet.i32 %4950, 1
  %4953 = uitofp i32 %4951 to float
  %4954 = uitofp i32 %4952 to float
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 0
  %4957 = extractvalue %dx.types.CBufRet.f32 %4955, 1
  %4958 = fmul fast float %4953, %4877
  %4959 = fmul fast float %4954, %4878
  %4960 = fadd fast float %4958, -5.000000e-01
  %4961 = fadd fast float %4959, -5.000000e-01
  %4962 = call float @dx.op.unary.f32(i32 22, float %4960)  ; Frc(value)
  %4963 = call float @dx.op.unary.f32(i32 22, float %4961)  ; Frc(value)
  %4964 = fmul fast float %4962, %4962
  %4965 = fmul fast float %4964, %4962
  %4966 = fsub fast float 3.000000e+00, %4962
  %4967 = fmul fast float %4964, %4966
  %4968 = fmul fast float %4962, 3.000000e+00
  %4969 = fmul fast float %4965, 3.000000e+00
  %4970 = fmul fast float %4964, 6.000000e+00
  %4971 = fsub fast float %4969, %4970
  %4972 = fadd fast float %4971, 4.000000e+00
  %4973 = fmul fast float %4972, 0x3FC5555560000000
  %4974 = fmul fast float %4965, -3.000000e+00
  %4975 = fadd fast float %4964, %4962
  %4976 = fmul fast float %4975, 3.000000e+00
  %4977 = fadd fast float %4974, 1.000000e+00
  %4978 = fadd fast float %4977, %4976
  %4979 = fmul fast float %4965, 0x3FC5555560000000
  %4980 = fmul fast float %4963, %4963
  %4981 = fmul fast float %4980, %4963
  %4982 = fsub fast float 3.000000e+00, %4963
  %4983 = fmul fast float %4980, %4982
  %4984 = fmul fast float %4963, 3.000000e+00
  %4985 = fmul fast float %4981, 3.000000e+00
  %4986 = fmul fast float %4980, 6.000000e+00
  %4987 = fsub fast float %4985, %4986
  %4988 = fadd fast float %4987, 4.000000e+00
  %4989 = fmul fast float %4988, 0x3FC5555560000000
  %4990 = fmul fast float %4981, -3.000000e+00
  %4991 = fadd fast float %4980, %4963
  %4992 = fmul fast float %4991, 3.000000e+00
  %4993 = fadd fast float %4990, 1.000000e+00
  %4994 = fadd fast float %4993, %4992
  %4995 = fmul fast float %4981, 0x3FC5555560000000
  %4996 = fadd fast float %4962, 1.000000e+00
  %4997 = fsub fast float 1.000000e+00, %4968
  %4998 = fadd fast float %4997, %4967
  %4999 = fadd fast float %4998, %4972
  %5000 = fmul fast float %4999, 0x3FC5555560000000
  %5001 = fdiv fast float %4973, %5000
  %5002 = fsub fast float %4996, %5001
  %5003 = fsub fast float 1.000000e+00, %4962
  %5004 = fadd fast float %4978, %4965
  %5005 = fmul fast float %5004, 0x3FC5555560000000
  %5006 = fdiv fast float %4979, %5005
  %5007 = fadd fast float %5003, %5006
  %5008 = fadd fast float %4963, 1.000000e+00
  %5009 = fsub fast float 1.000000e+00, %4984
  %5010 = fadd fast float %5009, %4983
  %5011 = fadd fast float %5010, %4988
  %5012 = fmul fast float %5011, 0x3FC5555560000000
  %5013 = fdiv fast float %4989, %5012
  %5014 = fsub fast float %5008, %5013
  %5015 = fsub fast float 1.000000e+00, %4963
  %5016 = fadd fast float %4994, %4981
  %5017 = fmul fast float %5016, 0x3FC5555560000000
  %5018 = fdiv fast float %4995, %5017
  %5019 = fadd fast float %5018, %5015
  %5020 = fmul fast float %5002, %4956
  %5021 = fsub fast float %4877, %5020
  %5022 = fmul fast float %5007, %4956
  %5023 = fadd fast float %5022, %4877
  %5024 = fmul fast float %5019, %4957
  %5025 = fadd fast float %5024, %4878
  %5026 = fmul fast float %5014, %4957
  %5027 = fsub fast float %4878, %5026
  %5028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5021, float %5027, float %4945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5029 = extractvalue %dx.types.ResRet.f32 %5028, 0
  %5030 = extractvalue %dx.types.ResRet.f32 %5028, 1
  %5031 = extractvalue %dx.types.ResRet.f32 %5028, 2
  %5032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5023, float %5027, float %4945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = extractvalue %dx.types.ResRet.f32 %5032, 1
  %5035 = extractvalue %dx.types.ResRet.f32 %5032, 2
  %5036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5021, float %5025, float %4945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = extractvalue %dx.types.ResRet.f32 %5036, 1
  %5039 = extractvalue %dx.types.ResRet.f32 %5036, 2
  %5040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5023, float %5025, float %4945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.ResRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.ResRet.f32 %5040, 2
  %5044 = fsub fast float %5037, %5029
  %5045 = fsub fast float %5038, %5030
  %5046 = fsub fast float %5039, %5031
  %5047 = fmul fast float %5044, %5017
  %5048 = fmul fast float %5045, %5017
  %5049 = fmul fast float %5046, %5017
  %5050 = fadd fast float %5047, %5029
  %5051 = fadd fast float %5048, %5030
  %5052 = fadd fast float %5049, %5031
  %5053 = fsub fast float %5041, %5033
  %5054 = fsub fast float %5042, %5034
  %5055 = fsub fast float %5043, %5035
  %5056 = fmul fast float %5053, %5017
  %5057 = fmul fast float %5054, %5017
  %5058 = fmul fast float %5055, %5017
  %5059 = fsub fast float %5033, %5050
  %5060 = fadd fast float %5059, %5056
  %5061 = fsub fast float %5034, %5051
  %5062 = fadd fast float %5061, %5057
  %5063 = fsub fast float %5035, %5052
  %5064 = fadd fast float %5063, %5058
  %5065 = fmul fast float %5060, %5005
  %5066 = fmul fast float %5062, %5005
  %5067 = fmul fast float %5064, %5005
  %5068 = fadd fast float %5065, %5050
  %5069 = fadd fast float %5066, %5051
  %5070 = fadd fast float %5067, %5052
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 1
  %5073 = fmul fast float %5068, %5072
  %5074 = fmul fast float %5069, %5072
  %5075 = fmul fast float %5070, %5072
  br label %5076

; <label>:5076                                    ; preds = %4907, %4864
  %5077 = phi float [ %4947, %4907 ], [ 1.000000e+00, %4864 ]
  %5078 = phi float [ %4948, %4907 ], [ 1.000000e+00, %4864 ]
  %5079 = phi float [ %4949, %4907 ], [ 1.000000e+00, %4864 ]
  %5080 = phi float [ %5073, %4907 ], [ 0.000000e+00, %4864 ]
  %5081 = phi float [ %5074, %4907 ], [ 0.000000e+00, %4864 ]
  %5082 = phi float [ %5075, %4907 ], [ 0.000000e+00, %4864 ]
  %5083 = fmul fast float %5080, %3412
  %5084 = fmul fast float %5081, %3414
  %5085 = fmul fast float %5082, %3416
  %5086 = fmul fast float %5077, %4871
  %5087 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5084, float %5085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = select i1 %181, float %5087, float %5077
  %5090 = select i1 %181, float %5087, float %5078
  %5091 = select i1 %181, float 1.000000e+00, float %5079
  %5092 = select i1 %181, float %5088, float %5083
  %5093 = select i1 %181, float 0.000000e+00, float %5084
  %5094 = select i1 %181, float 0.000000e+00, float %5085
  %5095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.i32 %5095, 3
  %5097 = and i32 %5096, 3
  %5098 = icmp ne i32 %5097, 0
  %5099 = and i32 %5096, 4
  %5100 = icmp ne i32 %5099, 0
  %5101 = and i1 %5098, %5100
  %5102 = and i1 %181, %5101
  br i1 %5102, label %5103, label %5109

; <label>:5103                                    ; preds = %5076
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 1
  %5106 = fadd fast float %5086, -1.000000e+00
  %5107 = fmul fast float %5105, %5106
  %5108 = fadd fast float %5107, 1.000000e+00
  br label %5109

; <label>:5109                                    ; preds = %5103, %5076
  %5110 = phi float [ %5108, %5103 ], [ %5086, %5076 ]
  %5111 = fadd fast float %4868, %4865
  %5112 = fmul fast float %5089, %5111
  %5113 = fadd fast float %5112, %5092
  %5114 = fadd fast float %4869, %4866
  %5115 = fmul fast float %5090, %5114
  %5116 = fadd fast float %5115, %5093
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  br i1 %181, label %5119, label %5134

; <label>:5119                                    ; preds = %5109
  %5120 = fadd fast float %5113, %5116
  %5121 = fmul fast float %5118, %5120
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 3
  %5124 = extractvalue %dx.types.CBufRet.f32 %3420, 1
  %5125 = fsub fast float %3425, %3419
  %5126 = fadd fast float %5125, %3426
  %5127 = fsub fast float %5126, %5124
  %5128 = extractvalue %dx.types.CBufRet.f32 %3420, 2
  %5129 = fmul fast float %5127, %5128
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fsub fast float %5130, %5123
  %5132 = fmul fast float %5131, %5110
  %5133 = fadd fast float %5132, %5123
  br label %5159

; <label>:5134                                    ; preds = %5109
  %5135 = fadd fast float %4870, %4867
  %5136 = fmul fast float %5091, %5135
  %5137 = fadd fast float %5136, %5094
  %5138 = fmul fast float %5118, %5113
  %5139 = fmul fast float %5118, %5116
  %5140 = fmul fast float %5118, %5137
  %5141 = call float @dx.op.binary.f32(i32 35, float %5139, float %5140)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5138, float %5141)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 35, float %3414, float %3416)  ; FMax(a,b)
  %5144 = call float @dx.op.binary.f32(i32 35, float %3412, float %5143)  ; FMax(a,b)
  %5145 = call float @dx.op.binary.f32(i32 35, float %5142, float %5144)  ; FMax(a,b)
  %5146 = fcmp fast ugt float %5145, 0x3F10000000000000
  br i1 %5146, label %5148, label %5147

; <label>:5147                                    ; preds = %5134
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5148

; <label>:5148                                    ; preds = %5147, %5134
  %5149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5150 = extractvalue %dx.types.ResRet.i32 %5149, 0
  %5151 = and i32 %5150, 32
  %5152 = icmp eq i32 %5151, 0
  br i1 %5152, label %5159, label %5153

; <label>:5153                                    ; preds = %5148
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 0
  %5156 = fmul fast float %5155, 0x3FE99999A0000000
  %5157 = fadd fast float %5155, %5138
  %5158 = fadd fast float %5156, %5140
  br label %5159

; <label>:5159                                    ; preds = %5153, %5148, %5119
  %5160 = phi float [ 1.000000e+00, %5119 ], [ %3414, %5153 ], [ %3414, %5148 ]
  %5161 = phi float [ 1.000000e+00, %5119 ], [ %3416, %5153 ], [ %3416, %5148 ]
  %5162 = phi float [ %5121, %5119 ], [ %5157, %5153 ], [ %5138, %5148 ]
  %5163 = phi float [ %5133, %5119 ], [ %5139, %5153 ], [ %5139, %5148 ]
  %5164 = phi float [ 1.000000e+00, %5119 ], [ %5158, %5153 ], [ %5140, %5148 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5165 = call float @dx.op.binary.f32(i32 36, float %5162, float 3.225500e+04)  ; FMin(a,b)
  %5166 = call float @dx.op.binary.f32(i32 36, float %5163, float 3.225500e+04)  ; FMin(a,b)
  %5167 = call float @dx.op.binary.f32(i32 36, float %5164, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5165)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5166)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5167)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5168 = call float @dx.op.binary.f32(i32 36, float %3412, float 3.225500e+04)  ; FMin(a,b)
  %5169 = call float @dx.op.binary.f32(i32 36, float %5160, float 3.225500e+04)  ; FMin(a,b)
  %5170 = call float @dx.op.binary.f32(i32 36, float %5161, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5168)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5169)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5170)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!41 = !{!42, !43, !44, !45, !46, !47, !48}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!49 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !71}
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
!67 = !{!68, !69}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!69 = !{i32 1, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 1, i8 0, !55}
!70 = !{i32 1}
!71 = !{i32 0, i64 16}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = !{!78, !78, i64 0}
!78 = !{!"int", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!82, !84, !86, !88}
!82 = distinct !{!82, !83, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!83 = distinct !{!83, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!84 = distinct !{!84, !85, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!85 = distinct !{!85, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!86 = distinct !{!86, !87, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!87 = distinct !{!87, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!88 = distinct !{!88, !89, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!89 = distinct !{!89, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !79, i64 0}
!100 = !{!101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!101 = distinct !{!101, !102, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!102 = distinct !{!102, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!103 = distinct !{!103, !104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!104 = distinct !{!104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!105 = distinct !{!105, !104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!106 = distinct !{!106, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!107 = distinct !{!107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!108 = distinct !{!108, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!109 = distinct !{!109, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!110 = distinct !{!110, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!111 = distinct !{!111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!112 = distinct !{!112, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!113 = distinct !{!113, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!114 = distinct !{!114, !115, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!115 = distinct !{!115, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?sort@@YAXAIAM00@Z: %c"}
!118 = distinct !{!118, !"\01?sort@@YAXAIAM00@Z"}
!119 = !{!120, !121, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!120 = distinct !{!120, !118, !"\01?sort@@YAXAIAM00@Z: %a"}
!121 = distinct !{!121, !118, !"\01?sort@@YAXAIAM00@Z: %b"}
!122 = !{!121}
!123 = !{!120, !117, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!124 = !{!120}
!125 = !{!121, !117, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!134 = !{!130}
!135 = !{!131, !127, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}

