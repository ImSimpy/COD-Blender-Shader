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
; shader hash: fda82fb6adf65d2929f75e8bbc9070cd
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
;   [208 x i8] (type annotation not present)
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t16,space1     1
;                                   texture    byte         r/o      T7     t17,space1     1
;                                   texture     f32          2d      T8     t37,space2     1
;                                   texture     f32          2d      T9             t1     1
;                                   texture     f32          2d     T10     t58,space2     1
;                                   texture     f32          2d     T11     t59,space2     1
;                                   texture     f32          2d     T12     t60,space2     1
;                                   texture    byte         r/o     T13     t45,space1     1
;                                   texture    byte         r/o     T14     t46,space1     1
;                                   texture    byte         r/o     T15     t47,space1     1
;                                   texture    byte         r/o     T16     t48,space1     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture     u32          2d     T19     t56,space2     1
;                                   texture     f32          2d     T20     t34,space2     1
;                                   texture    byte         r/o     T21     t10,space1     1
;                                   texture    byte         r/o     T22      t1,space1     1
;                                   texture     f32          1d     T23     t32,space2     1
;                                   texture     f32     2darray     T24      t8,space2     1
;                                   texture     f32          2d     T25      t2,space2     1
;                                   texture     f32          2d     T26      t3,space2     1
;                                   texture     f32          2d     T27      t4,space2     1
;                                   textureunorm_f32     2darray     T28     t80,space2     1
;                                   texture    byte         r/o     T29     t67,space1     1
;                                   texture     f32          2d     T30      t7,space2     1
;                                   texture     f32          2d     T31      t6,space2     1
;                                   texture     f32          2d     T32      t5,space2     1
;                                   texture     f32          2d     T33     t38,space2     1
;                                   texture    byte         r/o     T34     t12,space1     1
;                                   texture    byte         r/o     T35     t13,space1     1
;                                   texture     f32          1d     T36     t30,space2     1
;                                   texture     f32          3d     T37     t44,space2     1
;                                   texture     f32          3d     T38     t45,space2     1
;                                   texture     f32     2darray     T39     t47,space2     1
;                                   textureunorm_f32     2darray     T40     t85,space2     1
;                                   texture     f32          2d     T41     t83,space2     1
;                                   texture     f32          2d     T42     t86,space2     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = icmp ne i32 %50, 0
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = alloca [12 x float], align 4
  %78 = alloca [12 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %73
  %86 = fmul fast float %84, %74
  %87 = select i1 %51, float 1.000000e+00, float -1.000000e+00
  %88 = fmul fast float %68, %87
  %89 = fmul fast float %69, %87
  %90 = fmul fast float %70, %87
  %91 = fmul fast float %69, %66
  %92 = fmul fast float %70, %65
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %70, %64
  %95 = fmul fast float %68, %66
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %68, %65
  %98 = fmul fast float %69, %64
  %99 = fsub fast float %97, %98
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %101, 2.000000e+00
  %104 = fmul fast float %103, %85
  %105 = fmul fast float %102, 2.000000e+00
  %106 = fmul fast float %105, %86
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %107, %110
  %114 = fmul fast float %107, %111
  %115 = fmul fast float %107, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %108, %117
  %121 = fmul fast float %108, %118
  %122 = fmul fast float %108, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %127, %113
  %129 = fadd fast float %121, %125
  %130 = fadd fast float %129, %114
  %131 = fadd fast float %122, %126
  %132 = fadd fast float %131, %115
  %133 = fmul fast float %128, %76
  %134 = fmul fast float %130, %76
  %135 = fmul fast float %132, %76
  %136 = fmul fast float %85, 5.000000e-01
  %137 = fmul fast float %86, 5.000000e-01
  %138 = fptosi float %136 to i32
  %139 = fptosi float %137 to i32
  %140 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = lshr i32 %141, 18
  %143 = uitofp i32 %142 to float
  %144 = fmul fast float %143, 0x3F4C00EBA0000000
  %145 = call float @dx.op.unary.f32(i32 21, float %144)  ; Exp(value)
  %146 = fadd fast float %145, -1.000000e+00
  %147 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %148 = extractvalue %dx.types.Dimensions %147, 0
  %149 = sitofp i32 %148 to float
  %150 = extractvalue %dx.types.Dimensions %147, 1
  %151 = sitofp i32 %150 to float
  %152 = fcmp fast oge float %136, %149
  %153 = fcmp fast oge float %137, %151
  %154 = or i1 %152, %153
  %155 = select i1 %154, float 0x4197782600000000, float %146
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %159 = fmul fast float %157, %85
  %160 = fmul fast float %158, %86
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %162, 114688
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %164, float %159, float 0.000000e+00
  %166 = select i1 %164, float %160, float 0.000000e+00
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = fmul fast float %168, 2.550000e+02
  %170 = fptoui float %169 to i32
  %171 = select i1 %164, i32 %170, i32 0
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 3
  %175 = and i32 %174, 3
  %176 = icmp ne i32 %175, 0
  %177 = and i32 %174, 4
  %178 = icmp ne i32 %177, 0
  %179 = and i1 %176, %178
  br i1 %179, label %180, label %191

; <label>:180                                     ; preds = %0
  %181 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %182 = fmul fast float %181, %86
  %183 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %184 = fmul fast float %183, %85
  %185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %184, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fsub fast float 1.000000e+00, %186
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = fcmp fast olt float %187, %189
  br label %194

; <label>:191                                     ; preds = %0
  %192 = icmp eq i32 %177, 0
  %193 = and i1 %176, %192
  br label %194

; <label>:194                                     ; preds = %191, %180
  %195 = phi i1 [ %190, %180 ], [ %193, %191 ]
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %198 = fmul fast float %197, 0x3FE3C6EF40000000
  %199 = frem fast float %85, 2.560000e+02
  %200 = frem fast float %86, 2.560000e+02
  %201 = fptoui float %199 to i32
  %202 = fptoui float %200 to i32
  %203 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fadd fast float %204, %198
  %206 = call float @dx.op.unary.f32(i32 22, float %205)  ; Frc(value)
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = shl i32 %208, 4
  %210 = and i32 %209, 32752
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %208, 7
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %208, 22
  %216 = shl nuw nsw i32 %215, 5
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %219, 8
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %219, 16
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 65535
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %232, 16
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = fmul fast float %240, 0x3F50624DE0000000
  %244 = fmul fast float %242, 0x3F50624DE0000000
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 2
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %256, label %249

; <label>:249                                     ; preds = %194
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = add i32 %251, 0
  %253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %253, %dx.types.Handle %82, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 3
  br label %256

; <label>:256                                     ; preds = %249, %194
  %257 = phi float [ 1.000000e+00, %194 ], [ %255, %249 ]
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = or i32 %261, %259
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %877, label %264

; <label>:264                                     ; preds = %256
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = lshr i32 %266, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %268, 0x3F50624DE0000000
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = lshr i32 %271, 16
  %273 = and i32 %272, 255
  %274 = lshr i32 %271, 24
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = lshr i32 %282, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = shl i32 %282, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %294 = fmul fast float %293, 1.000000e+03
  %295 = fmul fast float %243, %294
  %296 = call float @dx.op.unary.f32(i32 22, float %295)  ; Frc(value)
  %297 = fadd fast float %296, %234
  %298 = fmul fast float %244, %294
  %299 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %300 = fadd fast float %299, %236
  %301 = fmul fast float %269, %294
  %302 = call float @dx.op.unary.f32(i32 22, float %301)  ; Frc(value)
  %303 = fmul fast float %302, 0x401921FB60000000
  %304 = fadd fast float %303, %285
  %305 = call float @dx.op.unary.f32(i32 13, float %304)  ; Sin(value)
  %306 = call float @dx.op.unary.f32(i32 12, float %304)  ; Cos(value)
  %307 = fsub fast float -0.000000e+00, %305
  %308 = fadd fast float %71, -5.000000e-01
  %309 = fadd fast float %72, -5.000000e-01
  %310 = fmul fast float %278, %308
  %311 = fmul fast float %280, %309
  %312 = fadd fast float %310, 5.000000e-01
  %313 = fadd fast float %311, 5.000000e-01
  %314 = fmul fast float %288, %312
  %315 = fmul fast float %291, %313
  %316 = fmul fast float %306, %314
  %317 = call float @dx.op.tertiary.f32(i32 46, float %307, float %315, float %316)  ; FMad(a,b,c)
  %318 = fmul fast float %305, %314
  %319 = call float @dx.op.tertiary.f32(i32 46, float %306, float %315, float %318)  ; FMad(a,b,c)
  %320 = fadd fast float %297, %317
  %321 = fadd fast float %300, %319
  %322 = icmp ugt i32 %273, 1
  %323 = icmp ugt i32 %271, 33554431
  %324 = or i1 %323, %322
  br i1 %324, label %325, label %349

; <label>:325                                     ; preds = %264
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = lshr i32 %327, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %293, %329
  %331 = call float @dx.op.unary.f32(i32 22, float %330)  ; Frc(value)
  %332 = mul nuw nsw i32 %273, %274
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %331, %333
  %335 = call float @dx.op.unary.f32(i32 27, float %334)  ; Round_ni(value)
  %336 = fptoui float %335 to i32
  %337 = urem i32 %336, %273
  %338 = udiv i32 %336, %274
  %339 = call float @dx.op.unary.f32(i32 22, float %320)  ; Frc(value)
  %340 = call float @dx.op.unary.f32(i32 22, float %321)  ; Frc(value)
  %341 = uitofp i32 %337 to float
  %342 = uitofp i32 %338 to float
  %343 = fadd fast float %339, %341
  %344 = fadd fast float %340, %342
  %345 = uitofp i32 %273 to float
  %346 = uitofp i32 %274 to float
  %347 = fdiv fast float %343, %345
  %348 = fdiv fast float %344, %346
  br label %349

; <label>:349                                     ; preds = %325, %264
  %350 = phi float [ %347, %325 ], [ %320, %264 ]
  %351 = phi float [ %348, %325 ], [ %321, %264 ]
  %352 = and i32 %259, 256
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %398, label %354

; <label>:354                                     ; preds = %349
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = add i32 %356, 0
  %358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %358, %dx.types.Handle %82, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = shl i32 %362, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %362, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = fsub fast float 1.000000e+00, %257
  %370 = call float @dx.op.binary.f32(i32 35, float %369, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %371 = bitcast float %257 to i32
  %372 = sitofp i32 %371 to float
  %373 = fadd fast float %372, 0xC1CFBF8940000000
  %374 = fmul fast float %368, %373
  %375 = fadd fast float %374, 0x41CFBF8940000000
  %376 = fptosi float %375 to i32
  %377 = bitcast i32 %376 to float
  %378 = bitcast float %370 to i32
  %379 = sitofp i32 %378 to float
  %380 = fadd fast float %379, 0xC1CFBF8940000000
  %381 = fmul fast float %380, %368
  %382 = fadd fast float %381, 0x41CFBF8940000000
  %383 = fptosi float %382 to i32
  %384 = bitcast i32 %383 to float
  %385 = fmul fast float %377, %365
  %386 = fmul fast float %384, %365
  %387 = fsub fast float %370, %385
  %388 = fadd fast float %386, %370
  %389 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %390 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %391 = fsub fast float %360, %389
  %392 = fsub fast float %390, %389
  %393 = bitcast float %392 to i32
  %394 = sub nsw i32 2129859010, %393
  %395 = bitcast i32 %394 to float
  %396 = fmul fast float %395, %391
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  br label %398

; <label>:398                                     ; preds = %354, %349
  %399 = phi float [ %397, %354 ], [ %257, %349 ]
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 128
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %419, label %404

; <label>:404                                     ; preds = %398
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = add i32 %406, 0
  %408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %408, %dx.types.Handle %82, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 524288
  %414 = icmp ne i32 %413, 0
  %415 = fcmp fast ogt float %410, 0x3FE0101020000000
  %416 = select i1 %415, float 1.000000e+00, float 0.000000e+00
  %417 = select i1 %414, float %416, float %410
  %418 = fmul fast float %417, %399
  br label %419

; <label>:419                                     ; preds = %404, %398
  %420 = phi float [ %418, %404 ], [ %399, %398 ]
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 16
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %618, label %425

; <label>:425                                     ; preds = %419
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %429, 0
  %431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %431, %dx.types.Handle %81, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = and i32 %427, 255
  %438 = uitofp i32 %437 to float
  %439 = lshr i32 %427, 8
  %440 = and i32 %439, 255
  %441 = uitofp i32 %440 to float
  %442 = fmul fast float %436, %438
  %443 = fadd fast float %442, %441
  %444 = fmul fast float %443, 0x3F70101000000000
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 512
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %456, label %449

; <label>:449                                     ; preds = %425
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = add i32 %451, 0
  %453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %453, %dx.types.Handle %82, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  br label %456

; <label>:456                                     ; preds = %449, %425
  %457 = phi float [ %455, %449 ], [ 1.000000e+00, %425 ]
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 33554432
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %565, label %462

; <label>:462                                     ; preds = %456
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 65535
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = lshr i32 %464, 16
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %474, 24
  %476 = uitofp i32 %475 to float
  %477 = fmul fast float %476, 0x3F70101020000000
  %478 = and i32 %474, 255
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = lshr i32 %474, 8
  %482 = and i32 %481, 255
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %483, 0x3F70101020000000
  %485 = lshr i32 %474, 16
  %486 = and i32 %485, 255
  %487 = uitofp i32 %486 to float
  %488 = fmul fast float %487, 0x3F70101020000000
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 24
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = and i32 %490, 255
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %495, 0x3F70101020000000
  %497 = lshr i32 %490, 8
  %498 = and i32 %497, 255
  %499 = uitofp i32 %498 to float
  %500 = fmul fast float %499, 0x3F70101020000000
  %501 = lshr i32 %490, 16
  %502 = and i32 %501, 255
  %503 = uitofp i32 %502 to float
  %504 = fmul fast float %503, 0x3F70101020000000
  %505 = bitcast float %433 to i32
  %506 = ashr i32 %505, 1
  %507 = sub nsw i32 1597463174, %506
  %508 = bitcast i32 %507 to float
  %509 = fmul fast float %433, 5.000000e-01
  %510 = fmul fast float %508, %508
  %511 = fmul fast float %510, %509
  %512 = fsub fast float 1.500000e+00, %511
  %513 = fmul fast float %508, %433
  %514 = fmul fast float %513, %512
  %515 = bitcast float %434 to i32
  %516 = ashr i32 %515, 1
  %517 = sub nsw i32 1597463174, %516
  %518 = bitcast i32 %517 to float
  %519 = fmul fast float %434, 5.000000e-01
  %520 = fmul fast float %518, %518
  %521 = fmul fast float %520, %519
  %522 = fsub fast float 1.500000e+00, %521
  %523 = fmul fast float %518, %434
  %524 = fmul fast float %523, %522
  %525 = bitcast float %435 to i32
  %526 = ashr i32 %525, 1
  %527 = sub nsw i32 1597463174, %526
  %528 = bitcast i32 %527 to float
  %529 = fmul fast float %435, 5.000000e-01
  %530 = fmul fast float %528, %528
  %531 = fmul fast float %530, %529
  %532 = fsub fast float 1.500000e+00, %531
  %533 = fmul fast float %528, %435
  %534 = fmul fast float %533, %532
  %535 = fsub fast float %514, %496
  %536 = fsub fast float %524, %500
  %537 = fsub fast float %534, %504
  %538 = fmul fast float %535, %466
  %539 = fmul fast float %536, %468
  %540 = fmul fast float %537, %472
  %541 = fadd fast float %538, %480
  %542 = fadd fast float %539, %484
  %543 = fadd fast float %540, %488
  %544 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %545 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %546 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %547 = fmul fast float %544, %544
  %548 = fmul fast float %545, %545
  %549 = fmul fast float %546, %546
  %550 = fsub fast float %547, %433
  %551 = fsub fast float %548, %434
  %552 = fsub fast float %549, %435
  %553 = fmul fast float %550, %457
  %554 = fmul fast float %551, %457
  %555 = fmul fast float %552, %457
  %556 = fadd fast float %553, %433
  %557 = fadd fast float %554, %434
  %558 = fadd fast float %555, %435
  %559 = fadd fast float %477, %444
  %560 = fsub fast float %559, %493
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fsub fast float %561, %444
  %563 = fmul fast float %562, %457
  %564 = fadd fast float %563, %444
  br label %618

; <label>:565                                     ; preds = %456
  %566 = and i32 %459, 134217728
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %602, label %568

; <label>:568                                     ; preds = %565
  %569 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %570 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %571 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %572 = fadd fast float %569, -5.000000e-01
  %573 = fadd fast float %570, -5.000000e-01
  %574 = fadd fast float %571, -5.000000e-01
  %575 = fmul fast float %572, %457
  %576 = fmul fast float %573, %457
  %577 = fmul fast float %574, %457
  %578 = fadd fast float %575, 5.000000e-01
  %579 = fadd fast float %576, 5.000000e-01
  %580 = fadd fast float %577, 5.000000e-01
  %581 = call float @dx.op.unary.f32(i32 24, float %433)  ; Sqrt(value)
  %582 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %583 = call float @dx.op.unary.f32(i32 24, float %435)  ; Sqrt(value)
  %584 = fmul fast float %578, 2.000000e+00
  %585 = fsub fast float 1.000000e+00, %584
  %586 = fmul fast float %585, %581
  %587 = fadd fast float %586, %584
  %588 = fmul fast float %587, %581
  %589 = fmul fast float %579, 2.000000e+00
  %590 = fsub fast float 1.000000e+00, %589
  %591 = fmul fast float %590, %582
  %592 = fadd fast float %591, %589
  %593 = fmul fast float %592, %582
  %594 = fmul fast float %580, 2.000000e+00
  %595 = fsub fast float 1.000000e+00, %594
  %596 = fmul fast float %595, %583
  %597 = fadd fast float %596, %594
  %598 = fmul fast float %597, %583
  %599 = fmul fast float %588, %588
  %600 = fmul fast float %593, %593
  %601 = fmul fast float %598, %598
  br label %618

; <label>:602                                     ; preds = %565
  %603 = fmul fast float %222, %222
  %604 = fmul fast float %226, %226
  %605 = fmul fast float %230, %230
  %606 = fadd fast float %603, -1.000000e+00
  %607 = fadd fast float %604, -1.000000e+00
  %608 = fadd fast float %605, -1.000000e+00
  %609 = fmul fast float %457, %606
  %610 = fmul fast float %457, %607
  %611 = fmul fast float %457, %608
  %612 = fadd fast float %609, 1.000000e+00
  %613 = fadd fast float %610, 1.000000e+00
  %614 = fadd fast float %611, 1.000000e+00
  %615 = fmul fast float %612, %433
  %616 = fmul fast float %613, %434
  %617 = fmul fast float %614, %435
  br label %618

; <label>:618                                     ; preds = %602, %568, %462, %419
  %619 = phi float [ %564, %462 ], [ %444, %568 ], [ %444, %602 ], [ 0x3FA23C0BE0000000, %419 ]
  %620 = phi float [ %556, %462 ], [ %599, %568 ], [ %615, %602 ], [ 1.000000e+00, %419 ]
  %621 = phi float [ %557, %462 ], [ %600, %568 ], [ %616, %602 ], [ 1.000000e+00, %419 ]
  %622 = phi float [ %558, %462 ], [ %601, %568 ], [ %617, %602 ], [ 1.000000e+00, %419 ]
  %623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.i32 %623, 1
  %625 = and i32 %624, 1
  %626 = icmp ne i32 %625, 0
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 32
  %630 = icmp ne i32 %629, 0
  %631 = and i1 %626, %630
  %632 = select i1 %631, float 1.000000e+00, float %620
  %633 = select i1 %631, float 0x3FD3333340000000, float %621
  %634 = select i1 %631, float 0x3FD3333340000000, float %622
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 32
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %708, label %639

; <label>:639                                     ; preds = %618
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = add i32 %643, 0
  %645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %645, %dx.types.Handle %81, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = extractvalue %dx.types.ResRet.f32 %646, 1
  %649 = extractvalue %dx.types.ResRet.f32 %646, 2
  %650 = extractvalue %dx.types.ResRet.f32 %646, 3
  %651 = and i32 %641, 255
  %652 = uitofp i32 %651 to float
  %653 = lshr i32 %641, 8
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %641, 16
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101000000000
  %660 = fmul fast float %647, %652
  %661 = fadd fast float %660, %655
  %662 = fmul fast float %661, 0x3F70101000000000
  %663 = fadd fast float %648, -5.000000e-01
  %664 = fadd fast float %650, -5.000000e-01
  %665 = fmul fast float %663, %659
  %666 = fmul fast float %664, %659
  %667 = fadd fast float %665, 5.000000e-01
  %668 = fadd fast float %666, 5.000000e-01
  %669 = fmul fast float %667, 2.000000e+00
  %670 = fadd fast float %669, -1.000000e+00
  %671 = fmul fast float %668, 2.000000e+00
  %672 = fadd fast float %671, -1.000000e+00
  %673 = fadd fast float %670, %672
  %674 = fmul fast float %673, 5.000000e-01
  %675 = fsub fast float %670, %672
  %676 = fmul fast float %675, 5.000000e-01
  %677 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %678 = fsub fast float 1.000000e+00, %677
  %679 = call float @dx.op.unary.f32(i32 6, float %676)  ; FAbs(value)
  %680 = fsub fast float %678, %679
  %681 = call float @dx.op.dot3.f32(i32 55, float %674, float %676, float %680, float %674, float %676, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call float @dx.op.unary.f32(i32 25, float %681)  ; Rsqrt(value)
  %683 = fmul fast float %674, %682
  %684 = fmul fast float %676, %682
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 67108864
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %704, label %689

; <label>:689                                     ; preds = %639
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 65535
  %693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %692)  ; LegacyF16ToF32(value)
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 65535
  %697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %696)  ; LegacyF16ToF32(value)
  %698 = lshr i32 %691, 16
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = fsub fast float %662, %699
  %701 = fmul fast float %700, %693
  %702 = fadd fast float %701, %697
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  br label %704

; <label>:704                                     ; preds = %689, %639
  %705 = phi float [ %703, %689 ], [ %662, %639 ]
  %706 = call float @dx.op.dot2.f32(i32 54, float %683, float %684, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %707 = call float @dx.op.dot2.f32(i32 54, float %683, float %684, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %708

; <label>:708                                     ; preds = %704, %618
  %709 = phi float [ %705, %704 ], [ 0x3FD6666660000000, %618 ]
  %710 = phi float [ %706, %704 ], [ 0.000000e+00, %618 ]
  %711 = phi float [ %707, %704 ], [ 0.000000e+00, %618 ]
  %712 = phi float [ %649, %704 ], [ 1.000000e+00, %618 ]
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = lshr i32 %714, 22
  %716 = shl nuw nsw i32 %715, 5
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 64
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %754, label %722

; <label>:722                                     ; preds = %708
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 131072
  %730 = icmp eq i32 %729, 0
  %731 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %81, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = fmul fast float %732, %211
  %736 = fmul fast float %733, %214
  %737 = fmul fast float %734, %217
  br i1 %730, label %744, label %738

; <label>:738                                     ; preds = %722
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = fmul fast float %740, %735
  %742 = fmul fast float %740, %736
  %743 = fmul fast float %740, %737
  br label %744

; <label>:744                                     ; preds = %738, %722
  %745 = phi float [ %741, %738 ], [ %735, %722 ]
  %746 = phi float [ %742, %738 ], [ %736, %722 ]
  %747 = phi float [ %743, %738 ], [ %737, %722 ]
  %748 = fmul fast float %745, %717
  %749 = select i1 %195, float %748, float %745
  %750 = call float @dx.op.dot3.f32(i32 55, float %749, float %746, float %747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = select i1 %195, float 0.000000e+00, float %745
  %752 = select i1 %195, float %750, float %746
  %753 = select i1 %195, float 0.000000e+00, float %747
  br label %754

; <label>:754                                     ; preds = %744, %708
  %755 = phi float [ %751, %744 ], [ 0.000000e+00, %708 ]
  %756 = phi float [ %752, %744 ], [ 0.000000e+00, %708 ]
  %757 = phi float [ %753, %744 ], [ 0.000000e+00, %708 ]
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 1024
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %790, label %762

; <label>:762                                     ; preds = %754
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = lshr i32 %764, 8
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = lshr i32 %764, 16
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = fmul fast float %767, %767
  %777 = fmul fast float %771, %771
  %778 = fmul fast float %775, %775
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %780, 0
  %782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %782, %dx.types.Handle %82, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = fmul fast float %776, %784
  %788 = fmul fast float %777, %785
  %789 = fmul fast float %778, %786
  br label %790

; <label>:790                                     ; preds = %762, %754
  %791 = phi float [ %787, %762 ], [ 0.000000e+00, %754 ]
  %792 = phi float [ %788, %762 ], [ 0.000000e+00, %754 ]
  %793 = phi float [ %789, %762 ], [ 0.000000e+00, %754 ]
  %794 = fcmp fast ogt float %791, 0.000000e+00
  %795 = fcmp fast ogt float %792, 0.000000e+00
  %796 = fcmp fast ogt float %793, 0.000000e+00
  %797 = call float @dx.op.unary.f32(i32 23, float %791)  ; Log(value)
  %798 = call float @dx.op.unary.f32(i32 23, float %792)  ; Log(value)
  %799 = call float @dx.op.unary.f32(i32 23, float %793)  ; Log(value)
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = lshr i32 %801, 7
  %803 = and i32 %802, 32752
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = fmul fast float %797, 0xBFE62E4300000000
  %806 = fmul fast float %805, %804
  %807 = fmul fast float %798, 0xBFE62E4300000000
  %808 = fmul fast float %807, %804
  %809 = fmul fast float %799, 0xBFE62E4300000000
  %810 = fmul fast float %809, %804
  %811 = select i1 %794, float %806, float 1.270000e+02
  %812 = select i1 %795, float %808, float 1.270000e+02
  %813 = select i1 %796, float %810, float 1.270000e+02
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 10240
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %860, label %818

; <label>:818                                     ; preds = %790
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %820, 0
  %822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %82, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 1
  %825 = extractvalue %dx.types.ResRet.f32 %823, 3
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 1048576
  %829 = icmp ne i32 %828, 0
  %830 = and i32 %827, 8192
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %846, label %832

; <label>:832                                     ; preds = %818
  %833 = extractvalue %dx.types.ResRet.f32 %823, 2
  %834 = select i1 %829, float %833, float %824
  %835 = extractvalue %dx.types.ResRet.f32 %823, 0
  %836 = select i1 %829, float %835, float %824
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = lshr i32 %838, 16
  %840 = and i32 %839, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F80101020000000
  %843 = fmul fast float %842, %836
  %844 = fmul fast float %842, %824
  %845 = fmul fast float %842, %834
  br label %846

; <label>:846                                     ; preds = %832, %818
  %847 = phi float [ %843, %832 ], [ 0.000000e+00, %818 ]
  %848 = phi float [ %844, %832 ], [ 0.000000e+00, %818 ]
  %849 = phi float [ %845, %832 ], [ 0.000000e+00, %818 ]
  %850 = and i32 %827, 2048
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %860, label %852

; <label>:852                                     ; preds = %846
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = shl i32 %854, 4
  %856 = and i32 %855, 32752
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = fmul fast float %857, %825
  %859 = call float @dx.op.binary.f32(i32 35, float %858, float 0x3F70101020000000)  ; FMax(a,b)
  br label %860

; <label>:860                                     ; preds = %852, %846, %790
  %861 = phi float [ %847, %852 ], [ %847, %846 ], [ 0.000000e+00, %790 ]
  %862 = phi float [ %848, %852 ], [ %848, %846 ], [ 0.000000e+00, %790 ]
  %863 = phi float [ %849, %852 ], [ %849, %846 ], [ 0.000000e+00, %790 ]
  %864 = phi float [ %859, %852 ], [ 0x3F70101020000000, %846 ], [ 0x3F70101020000000, %790 ]
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = lshr i32 %866, 8
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = fmul fast float %871, %872
  %874 = fadd fast float %873, %868
  %875 = fmul fast float %874, 0x3F70101020000000
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  br label %877

; <label>:877                                     ; preds = %860, %256
  %878 = phi float [ 0.000000e+00, %256 ], [ %710, %860 ]
  %879 = phi float [ 0.000000e+00, %256 ], [ %711, %860 ]
  %880 = phi float [ 0.000000e+00, %256 ], [ %632, %860 ]
  %881 = phi float [ 0.000000e+00, %256 ], [ %633, %860 ]
  %882 = phi float [ 0.000000e+00, %256 ], [ %634, %860 ]
  %883 = phi float [ 0.000000e+00, %256 ], [ %755, %860 ]
  %884 = phi float [ 0.000000e+00, %256 ], [ %756, %860 ]
  %885 = phi float [ 0.000000e+00, %256 ], [ %757, %860 ]
  %886 = phi float [ 0.000000e+00, %256 ], [ %811, %860 ]
  %887 = phi float [ 0.000000e+00, %256 ], [ %812, %860 ]
  %888 = phi float [ 0.000000e+00, %256 ], [ %813, %860 ]
  %889 = phi float [ 0.000000e+00, %256 ], [ %861, %860 ]
  %890 = phi float [ 0.000000e+00, %256 ], [ %862, %860 ]
  %891 = phi float [ 0.000000e+00, %256 ], [ %863, %860 ]
  %892 = phi float [ 0.000000e+00, %256 ], [ %619, %860 ]
  %893 = phi float [ 0.000000e+00, %256 ], [ %420, %860 ]
  %894 = phi float [ 0.000000e+00, %256 ], [ %709, %860 ]
  %895 = phi float [ 0.000000e+00, %256 ], [ %712, %860 ]
  %896 = phi float [ 0.000000e+00, %256 ], [ %864, %860 ]
  %897 = phi float [ 0.000000e+00, %256 ], [ %876, %860 ]
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = call float @dx.op.dot2.f32(i32 54, float %878, float %879, float %878, float %879)  ; Dot2(ax,ay,bx,by)
  %901 = fmul fast float %900, 0x3FE3333340000000
  %902 = fsub fast float 1.000000e+00, %901
  %903 = call float @dx.op.dot3.f32(i32 55, float %878, float %879, float %902, float %878, float %879, float %902)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = call float @dx.op.unary.f32(i32 25, float %903)  ; Rsqrt(value)
  %905 = fmul fast float %904, %878
  %906 = fmul fast float %904, %879
  %907 = fmul fast float %902, %904
  %908 = fmul fast float %907, %88
  %909 = fmul fast float %907, %89
  %910 = fmul fast float %907, %90
  %911 = fmul fast float %905, %64
  %912 = fmul fast float %905, %65
  %913 = fmul fast float %905, %66
  %914 = fmul fast float %93, %67
  %915 = fmul fast float %914, %906
  %916 = fmul fast float %96, %67
  %917 = fmul fast float %916, %906
  %918 = fmul fast float %99, %67
  %919 = fmul fast float %918, %906
  %920 = fadd fast float %915, %911
  %921 = fmul fast float %920, %87
  %922 = fadd fast float %921, %908
  %923 = fadd fast float %917, %912
  %924 = fmul fast float %923, %87
  %925 = fadd fast float %924, %909
  %926 = fadd fast float %919, %913
  %927 = fmul fast float %926, %87
  %928 = fadd fast float %927, %910
  %929 = call float @dx.op.dot3.f32(i32 55, float %922, float %925, float %928, float %922, float %925, float %928)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = call float @dx.op.unary.f32(i32 25, float %929)  ; Rsqrt(value)
  %931 = fmul fast float %922, %930
  %932 = fmul fast float %925, %930
  %933 = fmul fast float %928, %930
  %934 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %935 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %936 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %937 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %938 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %939 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %940 = fadd fast float %934, %133
  %941 = fadd fast float %935, %134
  %942 = fadd fast float %936, %135
  %943 = fadd fast float %937, %133
  %944 = fadd fast float %938, %134
  %945 = fadd fast float %939, %135
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %953 = fmul fast float %947, %85
  %954 = fmul fast float %953, %951
  %955 = fmul fast float %948, %86
  %956 = fmul fast float %955, %952
  %957 = fptoui float %954 to i32
  %958 = fptoui float %956 to i32
  %959 = fadd fast float %947, -1.000000e+00
  %960 = fadd fast float %948, -1.000000e+00
  %961 = fptoui float %959 to i32
  %962 = fptoui float %960 to i32
  %963 = call i32 @dx.op.binary.i32(i32 40, i32 %957, i32 %961)  ; UMin(a,b)
  %964 = call i32 @dx.op.binary.i32(i32 40, i32 %958, i32 %962)  ; UMin(a,b)
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %968 = fmul fast float %966, %76
  %969 = fsub fast float %968, %967
  %970 = fadd fast float %949, -1.000000e+00
  %971 = call float @dx.op.binary.f32(i32 36, float %969, float %970)  ; FMin(a,b)
  %972 = fptoui float %971 to i32
  %973 = fptoui float %947 to i32
  %974 = fptoui float %948 to i32
  %975 = mul i32 %972, %974
  %976 = add i32 %975, %964
  %977 = mul i32 %976, %973
  %978 = add i32 %977, %963
  %979 = shl i32 %978, 2
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 1023
  %983 = lshr i32 %981, 10
  %984 = icmp eq i32 %982, 0
  br i1 %984, label %1488, label %985

; <label>:985                                     ; preds = %877
  %986 = and i32 %981, 1023
  br label %987

; <label>:987                                     ; preds = %1119, %985
  %988 = phi i32 [ %1069, %1119 ], [ 0, %985 ]
  %989 = phi float [ %1120, %1119 ], [ 0.000000e+00, %985 ]
  %990 = phi float [ %1121, %1119 ], [ %899, %985 ]
  %991 = phi float [ %1122, %1119 ], [ %897, %985 ]
  %992 = phi float [ %1123, %1119 ], [ %886, %985 ]
  %993 = phi float [ %1124, %1119 ], [ %887, %985 ]
  %994 = phi float [ %1125, %1119 ], [ %888, %985 ]
  %995 = phi float [ %1126, %1119 ], [ 0.000000e+00, %985 ]
  %996 = phi float [ %1127, %1119 ], [ 0.000000e+00, %985 ]
  %997 = phi float [ %1128, %1119 ], [ %889, %985 ]
  %998 = phi float [ %1129, %1119 ], [ %890, %985 ]
  %999 = phi float [ %1130, %1119 ], [ %891, %985 ]
  %1000 = phi float [ %1131, %1119 ], [ %883, %985 ]
  %1001 = phi float [ %1132, %1119 ], [ %884, %985 ]
  %1002 = phi float [ %1133, %1119 ], [ %885, %985 ]
  %1003 = phi float [ %1134, %1119 ], [ %931, %985 ]
  %1004 = phi float [ %1135, %1119 ], [ %932, %985 ]
  %1005 = phi float [ %1136, %1119 ], [ %933, %985 ]
  %1006 = phi float [ %1137, %1119 ], [ %895, %985 ]
  %1007 = phi float [ %1138, %1119 ], [ %894, %985 ]
  %1008 = phi float [ %1139, %1119 ], [ 0.000000e+00, %985 ]
  %1009 = phi float [ %1140, %1119 ], [ %892, %985 ]
  %1010 = phi float [ %1141, %1119 ], [ %880, %985 ]
  %1011 = phi float [ %1142, %1119 ], [ %881, %985 ]
  %1012 = phi float [ %1143, %1119 ], [ %882, %985 ]
  %1013 = add nuw nsw i32 %988, %983
  %1014 = shl i32 %1013, 2
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = shl i32 %1016, 8
  %1018 = or i32 %1017, 48
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = extractvalue %dx.types.ResRet.f32 %1019, 3
  %1024 = or i32 %1017, 64
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.i32 %1025, 1
  %1028 = or i32 %1017, 80
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1032 = or i32 %1017, 96
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = or i32 %1017, 112
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1041 = or i32 %1017, 128
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1047 = or i32 %1017, 144
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = or i32 %1017, 160
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1059 = or i32 %1017, 192
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = or i32 %1017, 208
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = or i32 %1017, 248
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = add nuw nsw i32 %988, 1
  %1070 = bitcast float %1023 to i32
  %1071 = and i32 %1070, 512
  %1072 = icmp eq i32 %1071, 0
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1077 = extractvalue %dx.types.ResRet.f32 %1073, 3
  %1078 = call float @dx.op.dot4.f32(i32 56, float %1074, float %1075, float %1076, float %1077, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1079 = or i32 %1017, 16
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = extractvalue %dx.types.ResRet.f32 %1080, 3
  %1085 = call float @dx.op.dot4.f32(i32 56, float %1081, float %1082, float %1083, float %1084, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1086 = or i32 %1017, 32
  %1087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = extractvalue %dx.types.ResRet.f32 %1087, 3
  %1092 = call float @dx.op.dot4.f32(i32 56, float %1088, float %1089, float %1090, float %1091, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1093 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 6, float %1095)  ; FAbs(value)
  %1097 = call float @dx.op.unary.f32(i32 6, float %1092)  ; FAbs(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1099 = fadd fast float %1096, %1094
  %1100 = fadd fast float %1099, %1098
  %1101 = fcmp fast oeq float %1100, 0.000000e+00
  %1102 = call float @dx.op.dot4.f32(i32 56, float %1074, float %1075, float %1076, float %1077, float %940, float %941, float %942, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1103 = call float @dx.op.dot4.f32(i32 56, float %1081, float %1082, float %1083, float %1084, float %940, float %941, float %942, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1104 = call float @dx.op.dot4.f32(i32 56, float %1074, float %1075, float %1076, float %1077, float %943, float %944, float %945, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1105 = call float @dx.op.dot4.f32(i32 56, float %1081, float %1082, float %1083, float %1084, float %943, float %944, float %945, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1106 = fsub fast float %1102, %1078
  %1107 = fsub fast float %1104, %1078
  %1108 = fsub fast float %1103, %1085
  %1109 = fsub fast float %1105, %1085
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1113 = fadd fast float %1112, %1110
  %1114 = call float @dx.op.unary.f32(i32 7, float %1113)  ; Saturate(value)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1116 = fcmp fast ogt float %1114, %1115
  %1117 = and i1 %1101, %1116
  %1118 = and i1 %1072, %1117
  br i1 %1118, label %1145, label %1119

; <label>:1119                                    ; preds = %1474, %1226, %1145, %987
  %1120 = phi float [ %989, %1145 ], [ %1229, %1226 ], [ %1229, %1474 ], [ %989, %987 ]
  %1121 = phi float [ %990, %1145 ], [ %990, %1226 ], [ %1450, %1474 ], [ %990, %987 ]
  %1122 = phi float [ %991, %1145 ], [ %991, %1226 ], [ %1448, %1474 ], [ %991, %987 ]
  %1123 = phi float [ %992, %1145 ], [ %992, %1226 ], [ %1426, %1474 ], [ %992, %987 ]
  %1124 = phi float [ %993, %1145 ], [ %993, %1226 ], [ %1427, %1474 ], [ %993, %987 ]
  %1125 = phi float [ %994, %1145 ], [ %994, %1226 ], [ %1428, %1474 ], [ %994, %987 ]
  %1126 = phi float [ %995, %1145 ], [ %995, %1226 ], [ %1353, %1474 ], [ %995, %987 ]
  %1127 = phi float [ %996, %1145 ], [ %996, %1226 ], [ %1351, %1474 ], [ %996, %987 ]
  %1128 = phi float [ %997, %1145 ], [ %997, %1226 ], [ %1396, %1474 ], [ %997, %987 ]
  %1129 = phi float [ %998, %1145 ], [ %998, %1226 ], [ %1397, %1474 ], [ %998, %987 ]
  %1130 = phi float [ %999, %1145 ], [ %999, %1226 ], [ %1398, %1474 ], [ %999, %987 ]
  %1131 = phi float [ %1000, %1145 ], [ %1000, %1226 ], [ %1484, %1474 ], [ %1000, %987 ]
  %1132 = phi float [ %1001, %1145 ], [ %1001, %1226 ], [ %1485, %1474 ], [ %1001, %987 ]
  %1133 = phi float [ %1002, %1145 ], [ %1002, %1226 ], [ %1486, %1474 ], [ %1002, %987 ]
  %1134 = phi float [ %1003, %1145 ], [ %1003, %1226 ], [ %1332, %1474 ], [ %1003, %987 ]
  %1135 = phi float [ %1004, %1145 ], [ %1004, %1226 ], [ %1333, %1474 ], [ %1004, %987 ]
  %1136 = phi float [ %1005, %1145 ], [ %1005, %1226 ], [ %1334, %1474 ], [ %1005, %987 ]
  %1137 = phi float [ %1006, %1145 ], [ %1006, %1226 ], [ %1406, %1474 ], [ %1006, %987 ]
  %1138 = phi float [ %1007, %1145 ], [ %1007, %1226 ], [ %1403, %1474 ], [ %1007, %987 ]
  %1139 = phi float [ %1008, %1145 ], [ %1008, %1226 ], [ %1400, %1474 ], [ %1008, %987 ]
  %1140 = phi float [ %1009, %1145 ], [ %1009, %1226 ], [ %1349, %1474 ], [ %1009, %987 ]
  %1141 = phi float [ %1010, %1145 ], [ %1010, %1226 ], [ %1344, %1474 ], [ %1010, %987 ]
  %1142 = phi float [ %1011, %1145 ], [ %1011, %1226 ], [ %1345, %1474 ], [ %1011, %987 ]
  %1143 = phi float [ %1012, %1145 ], [ %1012, %1226 ], [ %1346, %1474 ], [ %1012, %987 ]
  %1144 = icmp eq i32 %1069, %986
  br i1 %1144, label %1487, label %987

; <label>:1145                                    ; preds = %987
  %1146 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1147 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1151 = extractvalue %dx.types.ResRet.i32 %1025, 3
  %1152 = extractvalue %dx.types.ResRet.i32 %1025, 2
  %1153 = add i32 %1151, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1153, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1156 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1154, %dx.types.Handle %1155, float %1078, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float %1106, float %1108, float undef, float %1107, float %1109, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = fmul fast float %1157, %1150
  %1159 = fadd fast float %1158, %1149
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = fmul fast float %1078, %1034
  %1162 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1085, float %1161)  ; FMad(a,b,c)
  %1163 = fadd fast float %1162, %1148
  %1164 = fmul fast float %1078, %1036
  %1165 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1085, float %1164)  ; FMad(a,b,c)
  %1166 = fadd fast float %1165, %1147
  %1167 = fmul fast float %1106, %1034
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1108, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1106, %1036
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1108, float %1169)  ; FMad(a,b,c)
  %1171 = fmul fast float %1107, %1034
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1109, float %1171)  ; FMad(a,b,c)
  %1173 = fmul fast float %1107, %1036
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1109, float %1173)  ; FMad(a,b,c)
  %1175 = add i32 %1152, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1175, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1176, %dx.types.Handle %1155, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = and i32 %1070, 1024
  %1180 = icmp ne i32 %1179, 0
  %1181 = fcmp fast ogt float %1178, 0x3FE0101020000000
  %1182 = uitofp i1 %1181 to float
  %1183 = select i1 %1180, float %1182, float %1178
  %1184 = and i32 %1070, 8192
  %1185 = icmp ne i32 %1184, 0
  %1186 = select i1 %1185, float %1146, float 1.000000e+00
  %1187 = fmul fast float %1078, 2.000000e+00
  %1188 = fadd fast float %1187, -1.000000e+00
  %1189 = call float @dx.op.unary.f32(i32 6, float %1188)  ; FAbs(value)
  %1190 = fmul fast float %1189, %1067
  %1191 = fsub fast float %1190, %1067
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = fmul fast float %1085, 2.000000e+00
  %1194 = fadd fast float %1193, -1.000000e+00
  %1195 = call float @dx.op.unary.f32(i32 6, float %1194)  ; FAbs(value)
  %1196 = fmul fast float %1195, %1068
  %1197 = fsub fast float %1196, %1068
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fmul fast float %1097, %1030
  %1200 = fsub fast float %1199, %1030
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = fmul fast float %1160, %1186
  %1203 = fmul fast float %1202, %1157
  %1204 = fmul fast float %1203, %1192
  %1205 = fmul fast float %1204, %1183
  %1206 = fmul fast float %1205, %1198
  %1207 = fmul fast float %1206, %1201
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1211 = fsub fast float %1114, %1210
  %1212 = fmul fast float %1211, %1209
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fmul fast float %1207, %1031
  %1215 = fadd fast float %1207, %1031
  %1216 = fmul fast float %1215, %1040
  %1217 = fsub fast float %1216, %1040
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = and i32 %1070, 128
  %1220 = icmp ne i32 %1219, 0
  %1221 = select i1 %1220, float %1218, float %1214
  %1222 = fmul fast float %1221, %1213
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = fcmp fast ugt float %1222, %1224
  br i1 %1225, label %1226, label %1119

; <label>:1226                                    ; preds = %1145
  %1227 = select i1 %1185, float %1222, float 0.000000e+00
  %1228 = fadd fast float %1227, %989
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  br i1 %1185, label %1119, label %1230

; <label>:1230                                    ; preds = %1226
  %1231 = and i32 %1070, 4
  %1232 = and i32 %1070, 8
  %1233 = add i32 %1026, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1233, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1234, %dx.types.Handle %1235, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  %1241 = bitcast float %1052 to i32
  %1242 = and i32 %1241, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = lshr i32 %1241, 8
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1240, %1243
  %1248 = fadd fast float %1247, %1246
  %1249 = fmul fast float %1248, 0x3F70101000000000
  %1250 = add i32 %1027, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1250, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1251, %dx.types.Handle %1235, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  %1256 = extractvalue %dx.types.ResRet.f32 %1252, 3
  %1257 = bitcast float %1046 to i32
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = lshr i32 %1257, 8
  %1261 = and i32 %1260, 255
  %1262 = uitofp i32 %1261 to float
  %1263 = lshr i32 %1257, 16
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101000000000
  %1267 = fmul fast float %1253, %1259
  %1268 = fadd fast float %1267, %1262
  %1269 = fmul fast float %1268, 0x3F70101000000000
  %1270 = fadd fast float %1254, -5.000000e-01
  %1271 = fadd fast float %1256, -5.000000e-01
  %1272 = fmul fast float %1270, %1266
  %1273 = fmul fast float %1271, %1266
  %1274 = fadd fast float %1272, 5.000000e-01
  %1275 = fadd fast float %1273, 5.000000e-01
  %1276 = fmul fast float %1237, %1055
  %1277 = fmul fast float %1238, %1056
  %1278 = fmul fast float %1239, %1057
  %1279 = fmul fast float %1274, 2.000000e+00
  %1280 = fadd fast float %1279, -1.000000e+00
  %1281 = fmul fast float %1275, 2.000000e+00
  %1282 = fadd fast float %1281, -1.000000e+00
  %1283 = fadd fast float %1280, %1282
  %1284 = fmul fast float %1283, 5.000000e-01
  %1285 = fsub fast float %1280, %1282
  %1286 = fmul fast float %1285, 5.000000e-01
  %1287 = call float @dx.op.unary.f32(i32 6, float %1284)  ; FAbs(value)
  %1288 = fsub fast float 1.000000e+00, %1287
  %1289 = call float @dx.op.unary.f32(i32 6, float %1286)  ; FAbs(value)
  %1290 = fsub fast float %1288, %1289
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1286, float %1290, float %1284, float %1286, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = call float @dx.op.unary.f32(i32 25, float %1291)  ; Rsqrt(value)
  %1293 = fmul fast float %1284, %1292
  %1294 = fmul fast float %1286, %1292
  %1295 = fmul fast float %1292, %1290
  %1296 = fmul fast float %1295, %1020
  %1297 = fmul fast float %1295, %1021
  %1298 = fmul fast float %1295, %1022
  %1299 = fmul fast float %1293, %1043
  %1300 = fmul fast float %1293, %1044
  %1301 = fmul fast float %1293, %1045
  %1302 = fadd fast float %1299, %1296
  %1303 = fadd fast float %1300, %1297
  %1304 = fadd fast float %1301, %1298
  %1305 = fmul fast float %1294, %1049
  %1306 = fmul fast float %1294, %1050
  %1307 = fmul fast float %1294, %1051
  %1308 = fadd fast float %1302, %1305
  %1309 = fadd fast float %1303, %1306
  %1310 = fadd fast float %1304, %1307
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1308, float %1309, float %1310, float %1308, float %1309, float %1310)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = call float @dx.op.unary.f32(i32 25, float %1311)  ; Rsqrt(value)
  %1313 = fmul fast float %1308, %1312
  %1314 = fmul fast float %1309, %1312
  %1315 = fmul fast float %1310, %1312
  %1316 = icmp ne i32 %1232, 0
  %1317 = select i1 %1316, float 1.000000e+00, float 0.000000e+00
  %1318 = fmul fast float %1222, %1317
  %1319 = and i32 %1070, 1
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1321, label %1325

; <label>:1321                                    ; preds = %1230
  %1322 = fsub fast float %1313, %1003
  %1323 = fsub fast float %1314, %1004
  %1324 = fsub fast float %1315, %1005
  br label %1325

; <label>:1325                                    ; preds = %1321, %1230
  %1326 = phi float [ %1322, %1321 ], [ %1313, %1230 ]
  %1327 = phi float [ %1323, %1321 ], [ %1314, %1230 ]
  %1328 = phi float [ %1324, %1321 ], [ %1315, %1230 ]
  %1329 = fmul float %1328, %1318
  %1330 = fmul float %1327, %1318
  %1331 = fmul float %1326, %1318
  %1332 = fadd fast float %1331, %1003
  %1333 = fadd fast float %1330, %1004
  %1334 = fadd fast float %1329, %1005
  %1335 = icmp ne i32 %1231, 0
  %1336 = select i1 %1335, float 1.000000e+00, float 0.000000e+00
  %1337 = fmul fast float %1222, %1336
  %1338 = fsub fast float %1276, %1010
  %1339 = fsub fast float %1277, %1011
  %1340 = fsub fast float %1278, %1012
  %1341 = fmul fast float %1338, %1337
  %1342 = fmul fast float %1339, %1337
  %1343 = fmul fast float %1340, %1337
  %1344 = fadd fast float %1341, %1010
  %1345 = fadd fast float %1342, %1011
  %1346 = fadd fast float %1343, %1012
  %1347 = fsub fast float %1249, %1009
  %1348 = fmul fast float %1347, %1337
  %1349 = fadd fast float %1348, %1009
  %1350 = fmul fast float %1337, %996
  %1351 = fsub fast float %996, %1350
  %1352 = fmul fast float %1337, %995
  %1353 = fsub fast float %995, %1352
  %1354 = bitcast float %1064 to i32
  %1355 = lshr i32 %1354, 16
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 1
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1361, label %1386

; <label>:1361                                    ; preds = %1325
  %1362 = fadd fast float %1249, 0xBFB99999A0000000
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = fmul fast float %1363, 0x3FF1C71C80000000
  %1365 = fsub fast float 1.000000e+00, %1364
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1366, %1276
  %1368 = fmul fast float %1366, %1277
  %1369 = fmul fast float %1366, %1278
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1371, float %1372)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1370, float %1373)  ; FMax(a,b)
  %1375 = fcmp fast ogt float %1374, 0.000000e+00
  %1376 = bitcast float %1374 to i32
  %1377 = sub nsw i32 2129859010, %1376
  %1378 = bitcast i32 %1377 to float
  %1379 = select i1 %1375, float %1378, float 0.000000e+00
  %1380 = fmul fast float %1370, %1356
  %1381 = fmul fast float %1371, %1356
  %1382 = fmul fast float %1372, %1356
  %1383 = fmul fast float %1380, %1379
  %1384 = fmul fast float %1381, %1379
  %1385 = fmul fast float %1382, %1379
  br label %1386

; <label>:1386                                    ; preds = %1361, %1325
  %1387 = phi float [ %1356, %1325 ], [ %1383, %1361 ]
  %1388 = phi float [ %1356, %1325 ], [ %1384, %1361 ]
  %1389 = phi float [ %1356, %1325 ], [ %1385, %1361 ]
  %1390 = fsub fast float %1387, %997
  %1391 = fsub fast float %1388, %998
  %1392 = fsub fast float %1389, %999
  %1393 = fmul fast float %1390, %1337
  %1394 = fmul fast float %1391, %1337
  %1395 = fmul fast float %1392, %1337
  %1396 = fadd fast float %1393, %997
  %1397 = fadd fast float %1394, %998
  %1398 = fadd fast float %1395, %999
  %1399 = fadd fast float %1222, %1008
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fsub fast float %1269, %1007
  %1402 = fmul fast float %1401, %1318
  %1403 = fadd fast float %1402, %1007
  %1404 = fsub fast float %1255, %1006
  %1405 = fmul fast float %1404, %1318
  %1406 = fadd fast float %1405, %1006
  br i1 %1320, label %1415, label %1407

; <label>:1407                                    ; preds = %1386
  %1408 = and i32 %1070, 32768
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1425, label %1410

; <label>:1410                                    ; preds = %1407
  %1411 = fmul fast float %1318, 1.270000e+02
  %1412 = fadd fast float %1411, %992
  %1413 = fadd fast float %1411, %993
  %1414 = fadd fast float %1411, %994
  br label %1425

; <label>:1415                                    ; preds = %1386
  %1416 = fsub fast float 1.270000e+02, %992
  %1417 = fsub fast float 1.270000e+02, %993
  %1418 = fsub fast float 1.270000e+02, %994
  %1419 = fmul fast float %1318, %1416
  %1420 = fmul fast float %1318, %1417
  %1421 = fmul fast float %1318, %1418
  %1422 = fadd fast float %1419, %992
  %1423 = fadd fast float %1420, %993
  %1424 = fadd fast float %1421, %994
  br label %1425

; <label>:1425                                    ; preds = %1415, %1410, %1407
  %1426 = phi float [ %1412, %1410 ], [ %992, %1407 ], [ %1422, %1415 ]
  %1427 = phi float [ %1413, %1410 ], [ %993, %1407 ], [ %1423, %1415 ]
  %1428 = phi float [ %1414, %1410 ], [ %994, %1407 ], [ %1424, %1415 ]
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1276, float %1277, float %1278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = fmul fast float %1432, %1429
  %1434 = fadd fast float %1433, %1431
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1436 = bitcast float %1058 to i32
  %1437 = and i32 %1436, 65535
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = lshr i32 %1436, 16
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fcmp fast oge float %1438, 0.000000e+00
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = select i1 %1441, float %1438, float %1443
  %1445 = fadd fast float %1444, %1440
  %1446 = fsub fast float %1435, %991
  %1447 = fmul fast float %1446, %1222
  %1448 = fadd fast float %1447, %991
  %1449 = fmul fast float %1445, %1222
  %1450 = call float @dx.op.binary.f32(i32 35, float %990, float %1449)  ; FMax(a,b)
  %1451 = and i32 %1070, 16
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1474, label %1453

; <label>:1453                                    ; preds = %1425
  %1454 = add i32 %1061, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1454, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1455, %dx.types.Handle %1235, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = and i32 %1354, 65535
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = fmul fast float %1457, %1055
  %1463 = fmul fast float %1458, %1056
  %1464 = fmul fast float %1459, %1057
  %1465 = and i32 %1070, 16384
  %1466 = icmp ne i32 %1465, 0
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = select i1 %1466, float %1468, float 1.000000e+00
  %1470 = fmul fast float %1469, %1461
  %1471 = fmul fast float %1462, %1470
  %1472 = fmul fast float %1463, %1470
  %1473 = fmul fast float %1464, %1470
  br label %1474

; <label>:1474                                    ; preds = %1453, %1425
  %1475 = phi float [ %1471, %1453 ], [ 0.000000e+00, %1425 ]
  %1476 = phi float [ %1472, %1453 ], [ 0.000000e+00, %1425 ]
  %1477 = phi float [ %1473, %1453 ], [ 0.000000e+00, %1425 ]
  %1478 = fsub fast float %1475, %1000
  %1479 = fsub fast float %1476, %1001
  %1480 = fsub fast float %1477, %1002
  %1481 = fmul fast float %1478, %1222
  %1482 = fmul fast float %1479, %1222
  %1483 = fmul fast float %1480, %1222
  %1484 = fadd fast float %1481, %1000
  %1485 = fadd fast float %1482, %1001
  %1486 = fadd fast float %1483, %1002
  br label %1119

; <label>:1487                                    ; preds = %1119
  br label %1488

; <label>:1488                                    ; preds = %1487, %877
  %1489 = phi float [ 0.000000e+00, %877 ], [ %1120, %1487 ]
  %1490 = phi float [ %899, %877 ], [ %1121, %1487 ]
  %1491 = phi float [ %897, %877 ], [ %1122, %1487 ]
  %1492 = phi float [ %886, %877 ], [ %1123, %1487 ]
  %1493 = phi float [ %887, %877 ], [ %1124, %1487 ]
  %1494 = phi float [ %888, %877 ], [ %1125, %1487 ]
  %1495 = phi float [ 0.000000e+00, %877 ], [ %1126, %1487 ]
  %1496 = phi float [ 0.000000e+00, %877 ], [ %1127, %1487 ]
  %1497 = phi float [ %889, %877 ], [ %1128, %1487 ]
  %1498 = phi float [ %890, %877 ], [ %1129, %1487 ]
  %1499 = phi float [ %891, %877 ], [ %1130, %1487 ]
  %1500 = phi float [ %883, %877 ], [ %1131, %1487 ]
  %1501 = phi float [ %884, %877 ], [ %1132, %1487 ]
  %1502 = phi float [ %885, %877 ], [ %1133, %1487 ]
  %1503 = phi float [ %931, %877 ], [ %1134, %1487 ]
  %1504 = phi float [ %932, %877 ], [ %1135, %1487 ]
  %1505 = phi float [ %933, %877 ], [ %1136, %1487 ]
  %1506 = phi float [ %895, %877 ], [ %1137, %1487 ]
  %1507 = phi float [ %894, %877 ], [ %1138, %1487 ]
  %1508 = phi float [ 0.000000e+00, %877 ], [ %1139, %1487 ]
  %1509 = phi float [ %892, %877 ], [ %1140, %1487 ]
  %1510 = phi float [ %880, %877 ], [ %1141, %1487 ]
  %1511 = phi float [ %881, %877 ], [ %1142, %1487 ]
  %1512 = phi float [ %882, %877 ], [ %1143, %1487 ]
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1503, float %1504, float %1505, float %1503, float %1504, float %1505)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = call float @dx.op.unary.f32(i32 25, float %1513)  ; Rsqrt(value)
  %1515 = fmul fast float %1514, %1503
  %1516 = fmul fast float %1514, %1504
  %1517 = fmul fast float %1514, %1505
  %1518 = fadd fast float %1508, %893
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1520 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1516, float %1517, float %1515, float %1516, float %1517)  ; Dot3(ax,ay,az,bx,by,bz)
  %1521 = call float @dx.op.unary.f32(i32 25, float %1520)  ; Rsqrt(value)
  %1522 = fmul fast float %1521, %1515
  %1523 = fmul fast float %1521, %1516
  %1524 = fmul fast float %1521, %1517
  %1525 = fadd fast float %1509, 0xBFB99999A0000000
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = fmul fast float %1526, 0x3FF1C71C80000000
  %1528 = call float @dx.op.binary.f32(i32 36, float %1509, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1529 = fsub fast float 1.000000e+00, %1527
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fmul fast float %1530, %1510
  %1532 = fmul fast float %1530, %1511
  %1533 = fmul fast float %1530, %1512
  %1534 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1535 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1536 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1537 = fmul fast float %1527, %1510
  %1538 = fmul fast float %1527, %1511
  %1539 = fmul fast float %1527, %1512
  %1540 = fadd fast float %1537, %1528
  %1541 = fadd fast float %1538, %1528
  %1542 = fadd fast float %1539, %1528
  %1543 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1544 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 1
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1565, label %1551

; <label>:1551                                    ; preds = %1488
  %1552 = call float @dx.op.binary.f32(i32 35, float %1535, float %1536)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1534, float %1552)  ; FMax(a,b)
  %1554 = fcmp fast ogt float %1553, 0.000000e+00
  %1555 = bitcast float %1553 to i32
  %1556 = sub nsw i32 2129859010, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = select i1 %1554, float %1557, float 0.000000e+00
  %1559 = fmul fast float %1534, %1497
  %1560 = fmul fast float %1535, %1498
  %1561 = fmul fast float %1536, %1499
  %1562 = fmul fast float %1559, %1558
  %1563 = fmul fast float %1560, %1558
  %1564 = fmul fast float %1561, %1558
  br label %1565

; <label>:1565                                    ; preds = %1551, %1488
  %1566 = phi float [ %1562, %1551 ], [ %1497, %1488 ]
  %1567 = phi float [ %1563, %1551 ], [ %1498, %1488 ]
  %1568 = phi float [ %1564, %1551 ], [ %1499, %1488 ]
  %1569 = call float @dx.op.binary.f32(i32 36, float %1492, float 1.270000e+02)  ; FMin(a,b)
  %1570 = call float @dx.op.binary.f32(i32 36, float %1493, float 1.270000e+02)  ; FMin(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1494, float 1.270000e+02)  ; FMin(a,b)
  %1572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.i32 %1572, 3
  %1574 = and i32 %1573, 8
  %1575 = icmp ne i32 %1574, 0
  %1576 = call float @dx.op.binary.f32(i32 35, float %1534, float %1510)  ; FMax(a,b)
  %1577 = call float @dx.op.binary.f32(i32 35, float %1535, float %1510)  ; FMax(a,b)
  %1578 = call float @dx.op.binary.f32(i32 35, float %1536, float %1510)  ; FMax(a,b)
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1534, float %1535, float %1536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = select i1 %195, float %1510, float %1534
  %1581 = select i1 %195, float %1579, float %1535
  %1582 = select i1 %195, float 1.000000e+00, float %1536
  %1583 = select i1 %1575, float %1576, float %1580
  %1584 = select i1 %1575, float %1577, float %1581
  %1585 = select i1 %1575, float %1578, float %1582
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1566, float %1567, float %1568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = select i1 %195, float %1586, float %1566
  %1588 = select i1 %195, float %1586, float %1567
  %1589 = select i1 %195, float %1586, float %1568
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1594 = fadd fast float %1591, %133
  %1595 = fadd fast float %1592, %134
  %1596 = fadd fast float %1593, %135
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1600 = fsub fast float %1594, %1598
  %1601 = fsub fast float %1595, %1599
  %1602 = fmul fast float %1600, %1600
  %1603 = fmul fast float %1601, %1601
  %1604 = fadd fast float %1602, %1603
  %1605 = call float @dx.op.unary.f32(i32 24, float %1604)  ; Sqrt(value)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1607 = fcmp fast olt float %1605, %1606
  br i1 %1607, label %1608, label %1675

; <label>:1608                                    ; preds = %1565
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 0
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.CBufRet.f32 %1609, 1
  %1616 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1617 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1618 = extractvalue %dx.types.CBufRet.f32 %1609, 3
  %1619 = extractvalue %dx.types.CBufRet.f32 %1611, 3
  %1620 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1621 = fadd fast float %1618, %1594
  %1622 = fadd fast float %1619, %1595
  %1623 = fadd fast float %1620, %1596
  %1624 = fmul fast float %1621, %1610
  %1625 = call float @dx.op.tertiary.f32(i32 46, float %1622, float %1612, float %1624)  ; FMad(a,b,c)
  %1626 = call float @dx.op.tertiary.f32(i32 46, float %1623, float %1614, float %1625)  ; FMad(a,b,c)
  %1627 = fmul fast float %1621, %1615
  %1628 = call float @dx.op.tertiary.f32(i32 46, float %1622, float %1616, float %1627)  ; FMad(a,b,c)
  %1629 = call float @dx.op.tertiary.f32(i32 46, float %1623, float %1617, float %1628)  ; FMad(a,b,c)
  %1630 = fsub fast float %1626, %1618
  %1631 = fsub fast float %1629, %1619
  %1632 = fsub fast float %1630, %1598
  %1633 = fadd fast float %1632, %1606
  %1634 = fsub fast float %1631, %1599
  %1635 = fadd fast float %1634, %1606
  %1636 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1637 = fmul fast float %1633, %1636
  %1638 = fmul fast float %1635, %1636
  %1639 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1640 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1641 = fsub fast float 1.000000e+00, %1639
  %1642 = fsub fast float 1.000000e+00, %1640
  %1643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %1641, float %1642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  %1645 = fcmp fast ugt float %1644, 0.000000e+00
  br i1 %1645, label %1646, label %1949

; <label>:1646                                    ; preds = %1608
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1649 = fmul fast float %1648, %1644
  %1650 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1651 = fadd fast float %1650, %1649
  %1652 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1653 = fadd fast float %1651, %1620
  %1654 = fmul fast float %1626, %1614
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1629, float %1617, float %1654)  ; FMad(a,b,c)
  %1656 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1652, float %1655)  ; FMad(a,b,c)
  %1657 = fsub fast float %1656, %1620
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1660 = fsub fast float %1657, %1659
  %1661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %1641, float %1642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %1641, float %1642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = extractvalue %dx.types.ResRet.f32 %1665, 2
  %1669 = fadd fast float %1666, %1662
  %1670 = fmul fast float %1669, 0x3F847AE140000000
  %1671 = fadd fast float %1667, %1663
  %1672 = fmul fast float %1671, 0x3F847AE140000000
  %1673 = fadd fast float %1668, %1664
  %1674 = fmul fast float %1673, 0x3F847AE140000000
  br label %1949

; <label>:1675                                    ; preds = %1565
  %1676 = and i32 %171, 1
  %1677 = icmp eq i32 %1676, 0
  br i1 %1677, label %1949, label %1678

; <label>:1678                                    ; preds = %1675
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1686 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1687 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1679, 3
  %1689 = extractvalue %dx.types.CBufRet.f32 %1681, 3
  %1690 = extractvalue %dx.types.CBufRet.f32 %1683, 3
  %1691 = fadd fast float %1688, %1594
  %1692 = fadd fast float %1689, %1595
  %1693 = fadd fast float %1690, %1596
  %1694 = fmul fast float %1691, %1680
  %1695 = call float @dx.op.tertiary.f32(i32 46, float %1692, float %1682, float %1694)  ; FMad(a,b,c)
  %1696 = call float @dx.op.tertiary.f32(i32 46, float %1693, float %1684, float %1695)  ; FMad(a,b,c)
  %1697 = fmul fast float %1691, %1685
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1692, float %1686, float %1697)  ; FMad(a,b,c)
  %1699 = call float @dx.op.tertiary.f32(i32 46, float %1693, float %1687, float %1698)  ; FMad(a,b,c)
  %1700 = fsub fast float %1696, %1688
  %1701 = fsub fast float %1699, %1689
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1706 = extractvalue %dx.types.CBufRet.f32 %1702, 3
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.i32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.i32 %1709, 1
  %1712 = udiv i32 %1711, %1710
  %1713 = fsub fast float %1700, %1703
  %1714 = fsub fast float %1701, %1704
  %1715 = call float @dx.op.binary.f32(i32 35, float %1713, float 0.000000e+00)  ; FMax(a,b)
  %1716 = call float @dx.op.binary.f32(i32 35, float %1714, float 0.000000e+00)  ; FMax(a,b)
  %1717 = call float @dx.op.binary.f32(i32 36, float %1715, float %1705)  ; FMin(a,b)
  %1718 = call float @dx.op.binary.f32(i32 36, float %1716, float %1706)  ; FMin(a,b)
  %1719 = add i32 %1710, -1
  %1720 = add i32 %1712, -1
  %1721 = fmul fast float %1717, %1708
  %1722 = fmul fast float %1718, %1708
  %1723 = fptoui float %1721 to i32
  %1724 = fptoui float %1722 to i32
  %1725 = call i32 @dx.op.binary.i32(i32 40, i32 %1723, i32 %1719)  ; UMin(a,b)
  %1726 = call i32 @dx.op.binary.i32(i32 40, i32 %1724, i32 %1720)  ; UMin(a,b)
  %1727 = mul i32 %1726, %1710
  %1728 = add i32 %1727, %1725
  %1729 = shl i32 %1728, 2
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = icmp eq i32 %1731, -1
  br i1 %1732, label %1949, label %1733

; <label>:1733                                    ; preds = %1678
  %1734 = mul i32 %1731, 148
  %1735 = add i32 %1734, 4
  %1736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = add i32 %1734, 8
  %1739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = add i32 %1734, 36
  %1742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = add i32 %1734, 60
  %1745 = add i32 %1734, 92
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = add i32 %1734, 116
  %1749 = fsub fast float %1700, %1737
  %1750 = fsub fast float %1701, %1740
  %1751 = fmul fast float %1708, %1749
  %1752 = fmul fast float %1708, %1750
  %1753 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  %1754 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 2
  %1758 = call float @dx.op.unary.f32(i32 83, float %1753)  ; DerivCoarseX(value)
  %1759 = call float @dx.op.unary.f32(i32 83, float %1755)  ; DerivCoarseX(value)
  %1760 = call float @dx.op.unary.f32(i32 84, float %1753)  ; DerivCoarseY(value)
  %1761 = call float @dx.op.unary.f32(i32 84, float %1755)  ; DerivCoarseY(value)
  %1762 = fmul fast float %1758, %1757
  %1763 = fmul fast float %1759, %1757
  %1764 = fmul fast float %1760, %1757
  %1765 = fmul fast float %1761, %1757
  %1766 = call float @dx.op.dot2.f32(i32 54, float %1764, float %1765, float %1764, float %1765)  ; Dot2(ax,ay,bx,by)
  %1767 = call float @dx.op.dot2.f32(i32 54, float %1762, float %1763, float %1762, float %1763)  ; Dot2(ax,ay,bx,by)
  %1768 = call float @dx.op.binary.f32(i32 35, float %1767, float %1766)  ; FMax(a,b)
  %1769 = call float @dx.op.unary.f32(i32 23, float %1768)  ; Log(value)
  %1770 = fmul fast float %1769, 5.000000e-01
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1773 = fadd fast float %1772, %1770
  %1774 = call float @dx.op.binary.f32(i32 35, float %1773, float 0.000000e+00)  ; FMax(a,b)
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1777 = fadd fast float %1776, %1774
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1780 = fadd fast float %1777, %1779
  %1781 = add i32 %1747, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1781, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1782, i32 0)  ; GetDimensions(handle,mipLevel)
  %1784 = extractvalue %dx.types.Dimensions %1783, 0
  %1785 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1784)  ; FirstbitLo(value)
  %1786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.i32 %1786, 1
  %1788 = sub nsw i32 %1787, %1785
  %1789 = sitofp i32 %1788 to float
  %1790 = fsub fast float %1780, %1789
  %1791 = call float @dx.op.binary.f32(i32 35, float %1790, float 0.000000e+00)  ; FMax(a,b)
  %1792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1782, %dx.types.Handle %42, float %1753, float %1755, float %1743, float undef, i32 0, i32 0, i32 undef, float %1791)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = fcmp ule float %1793, 0x3FE0101020000000
  %1795 = extractvalue %dx.types.CBufRet.i32 %1786, 0
  %1796 = and i32 %1795, 128
  %1797 = icmp ne i32 %1796, 0
  %1798 = and i1 %1794, %1797
  br i1 %1798, label %1949, label %1799

; <label>:1799                                    ; preds = %1733
  %1800 = add i32 %1734, 20
  %1801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = add i32 %1734, 24
  %1804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.f32 %1804, 0
  %1806 = add i32 %1734, 40
  %1807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = add i32 %1734, 96
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 2
  %1814 = fmul fast float %1813, %1753
  %1815 = fmul fast float %1813, %1755
  %1816 = extractvalue %dx.types.CBufRet.f32 %1812, 3
  %1817 = fadd fast float %1814, %1816
  %1818 = fadd fast float %1815, %1816
  %1819 = add i32 %1811, 0
  %1820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1819, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1821 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1820, i32 0)  ; GetDimensions(handle,mipLevel)
  %1822 = extractvalue %dx.types.Dimensions %1821, 0
  %1823 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1822)  ; FirstbitLo(value)
  %1824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.i32 %1824, 1
  %1826 = sub nsw i32 %1825, %1823
  %1827 = sitofp i32 %1826 to float
  %1828 = fsub fast float %1777, %1827
  %1829 = call float @dx.op.binary.f32(i32 35, float %1828, float 0.000000e+00)  ; FMax(a,b)
  %1830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1820, %dx.types.Handle %42, float %1817, float %1818, float %1808, float undef, i32 0, i32 0, i32 undef, float %1829)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1831 = extractvalue %dx.types.ResRet.f32 %1830, 0
  %1832 = fmul fast float %1831, %1802
  %1833 = fadd fast float %1832, %1805
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1837 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1842 = extractvalue %dx.types.CBufRet.f32 %1834, 3
  %1843 = fadd fast float %1839, %1700
  %1844 = fadd fast float %1841, %1701
  %1845 = fadd fast float %1833, %1842
  %1846 = fmul fast float %1843, %1835
  %1847 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1836, float %1846)  ; FMad(a,b,c)
  %1848 = call float @dx.op.tertiary.f32(i32 46, float %1845, float %1837, float %1847)  ; FMad(a,b,c)
  %1849 = fsub fast float %1848, %1842
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1852 = fsub fast float %1849, %1851
  %1853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.i32 %1853, 0
  %1855 = call i32 @dx.op.binary.i32(i32 40, i32 %1731, i32 %1854)  ; UMin(a,b)
  %1856 = mul i32 %1855, 36
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = add i32 %1856, 4
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = fmul fast float %1861, %1753
  %1863 = fmul fast float %1861, %1755
  %1864 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1865 = fadd fast float %1862, %1864
  %1866 = fadd fast float %1863, %1864
  %1867 = icmp eq i32 %1858, 0
  br i1 %1867, label %1936, label %1868

; <label>:1868                                    ; preds = %1799
  br label %1869

; <label>:1869                                    ; preds = %1926, %1868
  %1870 = phi float [ %1927, %1926 ], [ 0.000000e+00, %1868 ]
  %1871 = phi float [ %1928, %1926 ], [ 0.000000e+00, %1868 ]
  %1872 = phi float [ %1929, %1926 ], [ 0.000000e+00, %1868 ]
  %1873 = phi float [ %1930, %1926 ], [ 0.000000e+00, %1868 ]
  %1874 = phi float [ %1931, %1926 ], [ 0.000000e+00, %1868 ]
  %1875 = phi float [ %1932, %1926 ], [ 0.000000e+00, %1868 ]
  %1876 = phi i32 [ %1933, %1926 ], [ 0, %1868 ]
  %1877 = shl i32 %1876, 2
  %1878 = add i32 %1744, %1877
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = add i32 %1748, %1877
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = add i32 %1883, 0
  %1885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1884, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1886 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1885, i32 0)  ; GetDimensions(handle,mipLevel)
  %1887 = extractvalue %dx.types.Dimensions %1886, 0
  %1888 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1887)  ; FirstbitLo(value)
  %1889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.i32 %1889, 1
  %1891 = sub nsw i32 %1890, %1888
  %1892 = sitofp i32 %1891 to float
  %1893 = fsub fast float %1777, %1892
  %1894 = call float @dx.op.binary.f32(i32 35, float %1893, float 0.000000e+00)  ; FMax(a,b)
  %1895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1885, %dx.types.Handle %42, float %1865, float %1866, float %1880, float undef, i32 0, i32 0, i32 undef, float %1894)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = fcmp fast ogt float %1896, 0.000000e+00
  br i1 %1897, label %1898, label %1926

; <label>:1898                                    ; preds = %1869
  %1899 = add i32 %1859, %1877
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 32767
  %1903 = mul nuw nsw i32 %1902, 928
  %1904 = add nuw nsw i32 %1903, 48
  %1905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = add nuw nsw i32 %1903, 60
  %1910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1910, 2
  %1914 = fmul fast float %1906, %1896
  %1915 = fmul fast float %1907, %1896
  %1916 = fmul fast float %1908, %1896
  %1917 = fadd fast float %1914, %1870
  %1918 = fadd fast float %1915, %1871
  %1919 = fadd fast float %1916, %1872
  %1920 = fmul fast float %1911, %1896
  %1921 = fmul fast float %1912, %1896
  %1922 = fmul fast float %1913, %1896
  %1923 = fadd fast float %1920, %1873
  %1924 = fadd fast float %1921, %1874
  %1925 = fadd fast float %1922, %1875
  br label %1926

; <label>:1926                                    ; preds = %1898, %1869
  %1927 = phi float [ %1917, %1898 ], [ %1870, %1869 ]
  %1928 = phi float [ %1918, %1898 ], [ %1871, %1869 ]
  %1929 = phi float [ %1919, %1898 ], [ %1872, %1869 ]
  %1930 = phi float [ %1923, %1898 ], [ %1873, %1869 ]
  %1931 = phi float [ %1924, %1898 ], [ %1874, %1869 ]
  %1932 = phi float [ %1925, %1898 ], [ %1875, %1869 ]
  %1933 = add nuw i32 %1876, 1
  %1934 = icmp eq i32 %1933, %1858
  br i1 %1934, label %1935, label %1869

; <label>:1935                                    ; preds = %1926
  br label %1936

; <label>:1936                                    ; preds = %1935, %1799
  %1937 = phi float [ 0.000000e+00, %1799 ], [ %1927, %1935 ]
  %1938 = phi float [ 0.000000e+00, %1799 ], [ %1928, %1935 ]
  %1939 = phi float [ 0.000000e+00, %1799 ], [ %1929, %1935 ]
  %1940 = phi float [ 0.000000e+00, %1799 ], [ %1930, %1935 ]
  %1941 = phi float [ 0.000000e+00, %1799 ], [ %1931, %1935 ]
  %1942 = phi float [ 0.000000e+00, %1799 ], [ %1932, %1935 ]
  %1943 = fadd fast float %1940, %1937
  %1944 = fmul fast float %1943, 0x3F847AE140000000
  %1945 = fadd fast float %1941, %1938
  %1946 = fmul fast float %1945, 0x3F847AE140000000
  %1947 = fadd fast float %1942, %1939
  %1948 = fmul fast float %1947, 0x3F847AE140000000
  br label %1949

; <label>:1949                                    ; preds = %1936, %1733, %1678, %1675, %1646, %1608
  %1950 = phi float [ %1660, %1646 ], [ -1.310720e+05, %1608 ], [ %1852, %1936 ], [ -1.310720e+05, %1678 ], [ -1.310720e+05, %1733 ], [ -1.310720e+05, %1675 ]
  %1951 = phi float [ %1670, %1646 ], [ 0.000000e+00, %1608 ], [ %1944, %1936 ], [ 0.000000e+00, %1678 ], [ 0.000000e+00, %1733 ], [ 0.000000e+00, %1675 ]
  %1952 = phi float [ %1672, %1646 ], [ 0.000000e+00, %1608 ], [ %1946, %1936 ], [ 0.000000e+00, %1678 ], [ 0.000000e+00, %1733 ], [ 0.000000e+00, %1675 ]
  %1953 = phi float [ %1674, %1646 ], [ 0.000000e+00, %1608 ], [ %1948, %1936 ], [ 0.000000e+00, %1678 ], [ 0.000000e+00, %1733 ], [ 0.000000e+00, %1675 ]
  %1954 = phi i1 [ true, %1646 ], [ false, %1608 ], [ true, %1936 ], [ false, %1678 ], [ false, %1733 ], [ false, %1675 ]
  %1955 = and i32 %171, 3
  %1956 = icmp eq i32 %1955, 1
  %1957 = select i1 %1956, float 1.000000e+00, float 0.000000e+00
  %1958 = fsub fast float %1950, %135
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = select i1 %1954, float %1959, float 1.000000e+00
  %1961 = fmul fast float %1960, %1957
  %1962 = icmp eq i32 %1955, 3
  %1963 = select i1 %1962, float 1.000000e+00, float %1961
  %1964 = call float @dx.op.binary.f32(i32 35, float %1489, float %1963)  ; FMax(a,b)
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fcmp fast une float %1965, 0.000000e+00
  %1967 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %1968 = call float @dx.op.unary.f32(i32 25, float %1967)  ; Rsqrt(value)
  br i1 %1966, label %1976, label %1969

; <label>:1969                                    ; preds = %1949
  %1970 = fmul fast float %1968, %133
  %1971 = fmul fast float %1968, %134
  %1972 = fmul fast float %1968, %135
  %1973 = fsub fast float -0.000000e+00, %1970
  %1974 = fsub fast float -0.000000e+00, %1971
  %1975 = fsub fast float -0.000000e+00, %1972
  br label %2144

; <label>:1976                                    ; preds = %1949
  %1977 = fmul fast float %133, %1968
  %1978 = fsub fast float -0.000000e+00, %1977
  %1979 = fmul fast float %134, %1968
  %1980 = fsub fast float -0.000000e+00, %1979
  %1981 = fmul fast float %135, %1968
  %1982 = fsub fast float -0.000000e+00, %1981
  %1983 = call float @dx.op.dot3.f32(i32 55, float %1978, float %1980, float %1982, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = fmul fast float %1965, 2.500000e+00
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = fmul fast float %1965, 0x4013FFFFE0000000
  %1987 = fadd fast float %1986, 0xBFFFFFFFE0000000
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1989 = fmul fast float %1965, 0x4004000020000000
  %1990 = fadd fast float %1989, 0xBFF8000040000000
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1993 = fmul fast float %1525, 1.000000e+01
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fmul fast float %1994, 2.000000e+00
  %1996 = fsub fast float 3.000000e+00, %1995
  %1997 = fmul fast float %1994, %1994
  %1998 = fmul fast float %1997, %1996
  %1999 = fsub fast float 1.000000e+00, %1998
  %2000 = fsub fast float 0x3FE3333340000000, %1546
  %2001 = fmul fast float %2000, 0x400AAAAAA0000000
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = fmul fast float %1999, %2002
  %2004 = fmul fast float %1583, 0x3FEA2B8620000000
  %2005 = fmul fast float %1584, 0x3FEA2B8620000000
  %2006 = fmul fast float %1585, 0x3FEA2B8620000000
  %2007 = fadd fast float %2004, 0x3FC81DFBA0000000
  %2008 = fmul fast float %2007, %1583
  %2009 = fadd fast float %2008, 0x3F910E6020000000
  %2010 = fadd fast float %2005, 0x3FC81DFBA0000000
  %2011 = fmul fast float %2010, %1584
  %2012 = fadd fast float %2011, 0x3F910E6020000000
  %2013 = fadd fast float %2006, 0x3FC81DFBA0000000
  %2014 = fmul fast float %2013, %1585
  %2015 = fadd fast float %2014, 0x3F910E6020000000
  %2016 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2017 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2018 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2019 = fsub fast float %2016, %1583
  %2020 = fsub fast float %2017, %1584
  %2021 = fsub fast float %2018, %1585
  %2022 = fmul fast float %2019, %1992
  %2023 = fmul fast float %2022, %2003
  %2024 = fmul fast float %2020, %1992
  %2025 = fmul fast float %2024, %2003
  %2026 = fmul fast float %2021, %1992
  %2027 = fmul fast float %2026, %2003
  %2028 = fadd fast float %2023, %1583
  %2029 = fadd fast float %2025, %1584
  %2030 = fadd fast float %2027, %1585
  %2031 = fmul fast float %1506, %1506
  %2032 = fmul fast float %2031, %2031
  %2033 = fadd fast float %1988, 1.000000e+00
  %2034 = fsub fast float %2033, %2003
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2036 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2038 = fsub fast float 1.000000e+00, %2032
  %2039 = call float @dx.op.binary.f32(i32 36, float %2035, float %2038)  ; FMin(a,b)
  %2040 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %2041 = call float @dx.op.binary.f32(i32 35, float %2039, float %2040)  ; FMax(a,b)
  %2042 = fadd fast float %2037, 0xBFE4CCCCC0000000
  %2043 = fmul fast float %2042, 0x4006DB6DA0000000
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = fmul fast float %2044, 2.000000e+00
  %2046 = fsub fast float 3.000000e+00, %2045
  %2047 = bitcast float %1543 to i32
  %2048 = ashr i32 %2047, 1
  %2049 = add nsw i32 %2048, 532487669
  %2050 = bitcast i32 %2049 to float
  %2051 = fsub fast float 1.000000e+00, %2050
  %2052 = bitcast float %2051 to i32
  %2053 = sub nsw i32 2129859010, %2052
  %2054 = bitcast i32 %2053 to float
  %2055 = fmul fast float %2054, 2.000000e+00
  %2056 = bitcast float %1544 to i32
  %2057 = ashr i32 %2056, 1
  %2058 = add nsw i32 %2057, 532487669
  %2059 = bitcast i32 %2058 to float
  %2060 = fsub fast float 1.000000e+00, %2059
  %2061 = bitcast float %2060 to i32
  %2062 = sub nsw i32 2129859010, %2061
  %2063 = bitcast i32 %2062 to float
  %2064 = fmul fast float %2063, 2.000000e+00
  %2065 = bitcast float %1545 to i32
  %2066 = ashr i32 %2065, 1
  %2067 = add nsw i32 %2066, 532487669
  %2068 = bitcast i32 %2067 to float
  %2069 = fsub fast float 1.000000e+00, %2068
  %2070 = bitcast float %2069 to i32
  %2071 = sub nsw i32 2129859010, %2070
  %2072 = bitcast i32 %2071 to float
  %2073 = fmul fast float %2072, 2.000000e+00
  %2074 = fsub fast float 0x4002A9FBE0000000, %2055
  %2075 = fadd fast float %2055, 0x3FD54FDF00000000
  %2076 = bitcast float %2075 to i32
  %2077 = sub nsw i32 2129859010, %2076
  %2078 = bitcast i32 %2077 to float
  %2079 = fmul fast float %2078, %2074
  %2080 = fmul fast float %2079, %2079
  %2081 = fsub fast float 0x4002A9FBE0000000, %2064
  %2082 = fadd fast float %2064, 0x3FD54FDF00000000
  %2083 = bitcast float %2082 to i32
  %2084 = sub nsw i32 2129859010, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %2085, %2081
  %2087 = fmul fast float %2086, %2086
  %2088 = fsub fast float 0x4002A9FBE0000000, %2073
  %2089 = fadd fast float %2073, 0x3FD54FDF00000000
  %2090 = bitcast float %2089 to i32
  %2091 = sub nsw i32 2129859010, %2090
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2092, %2088
  %2094 = fmul fast float %2093, %2093
  %2095 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2080)  ; FMax(a,b)
  %2096 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2087)  ; FMax(a,b)
  %2097 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2094)  ; FMax(a,b)
  %2098 = fsub fast float 1.000000e+00, %1983
  %2099 = fadd fast float %2098, %1999
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2101 = fsub fast float 1.000000e+00, %1963
  %2102 = fmul fast float %2041, %2101
  %2103 = fmul fast float %2044, %2044
  %2104 = fmul fast float %2103, %2102
  %2105 = fmul fast float %2104, %2046
  %2106 = fmul fast float %2101, 0xBFE99999A0000000
  %2107 = fmul fast float %2106, %1992
  %2108 = fmul fast float %2107, %2003
  %2109 = fadd fast float %2108, 1.000000e+00
  %2110 = fadd fast float %1546, -1.000000e+00
  %2111 = fmul fast float %2109, %2110
  %2112 = fadd fast float %2111, 1.000000e+00
  %2113 = fsub fast float %2095, %1543
  %2114 = fsub fast float %2096, %1544
  %2115 = fsub fast float %2097, %1545
  %2116 = fmul fast float %2105, %2113
  %2117 = fmul fast float %2105, %2114
  %2118 = fmul fast float %2105, %2115
  %2119 = fadd fast float %2116, %1543
  %2120 = fadd fast float %2117, %1544
  %2121 = fadd fast float %2118, %1545
  %2122 = fsub fast float %88, %1522
  %2123 = fsub fast float %89, %1523
  %2124 = fsub fast float %90, %1524
  %2125 = fmul fast float %2105, %2122
  %2126 = fmul fast float %2105, %2123
  %2127 = fmul fast float %2105, %2124
  %2128 = fadd fast float %2125, %1522
  %2129 = fadd fast float %2126, %1523
  %2130 = fadd fast float %2127, %1524
  %2131 = fmul fast float %2105, %2100
  %2132 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2133 = fsub fast float 1.000000e+00, %2132
  %2134 = fmul fast float %2131, %2133
  %2135 = fadd fast float %2134, %2132
  %2136 = fsub fast float 1.000000e+00, %1506
  %2137 = fmul fast float %2105, %2136
  %2138 = fadd fast float %2137, %1506
  %2139 = call float @dx.op.dot3.f32(i32 55, float %2128, float %2129, float %2130, float %2128, float %2129, float %2130)  ; Dot3(ax,ay,az,bx,by,bz)
  %2140 = call float @dx.op.unary.f32(i32 25, float %2139)  ; Rsqrt(value)
  %2141 = fmul fast float %2128, %2140
  %2142 = fmul fast float %2129, %2140
  %2143 = fmul fast float %2130, %2140
  br label %2144

; <label>:2144                                    ; preds = %1976, %1969
  %2145 = phi float [ %1975, %1969 ], [ %1982, %1976 ]
  %2146 = phi float [ %1974, %1969 ], [ %1980, %1976 ]
  %2147 = phi float [ %1973, %1969 ], [ %1978, %1976 ]
  %2148 = phi float [ %1972, %1969 ], [ %1981, %1976 ]
  %2149 = phi float [ %1971, %1969 ], [ %1979, %1976 ]
  %2150 = phi float [ %1970, %1969 ], [ %1977, %1976 ]
  %2151 = phi float [ %1543, %1969 ], [ %2119, %1976 ]
  %2152 = phi float [ %1544, %1969 ], [ %2120, %1976 ]
  %2153 = phi float [ %1545, %1969 ], [ %2121, %1976 ]
  %2154 = phi float [ %1583, %1969 ], [ %2028, %1976 ]
  %2155 = phi float [ %1584, %1969 ], [ %2029, %1976 ]
  %2156 = phi float [ %1585, %1969 ], [ %2030, %1976 ]
  %2157 = phi float [ %1522, %1969 ], [ %2141, %1976 ]
  %2158 = phi float [ %1523, %1969 ], [ %2142, %1976 ]
  %2159 = phi float [ %1524, %1969 ], [ %2143, %1976 ]
  %2160 = phi float [ %1546, %1969 ], [ %2135, %1976 ]
  %2161 = phi float [ %1506, %1969 ], [ %2138, %1976 ]
  %2162 = fsub fast float -0.000000e+00, %135
  %2163 = select i1 %195, float 0.000000e+00, float %2153
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float %2147, float %2146, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2149, float %2148, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = fmul fast float %2166, 2.000000e+00
  %2168 = fmul fast float %2167, %2157
  %2169 = fmul fast float %2167, %2158
  %2170 = fmul fast float %2167, %2159
  %2171 = fsub fast float %2150, %2168
  %2172 = fsub fast float %2149, %2169
  %2173 = fsub fast float %2148, %2170
  %2174 = call float @dx.op.binary.f32(i32 36, float %2161, float 1.000000e+00)  ; FMin(a,b)
  %2175 = fsub fast float 1.000000e+00, %2161
  %2176 = bitcast float %2175 to i32
  %2177 = sub nsw i32 2129859010, %2176
  %2178 = bitcast i32 %2177 to float
  %2179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %2180 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = fcmp fast oeq float %2180, 0.000000e+00
  %2182 = fcmp fast oeq float %2179, 0.000000e+00
  %2183 = or i1 %2182, %2181
  br i1 %2183, label %2213, label %2184

; <label>:2184                                    ; preds = %2144
  %2185 = fsub fast float -0.000000e+00, %63
  %2186 = fsub fast float -0.000000e+00, %61
  %2187 = call float @dx.op.unary.f32(i32 24, float %2180)  ; Sqrt(value)
  %2188 = fdiv fast float %2187, %2179
  %2189 = fcmp fast ogt float %2188, 0x3FFB6F8900000000
  %2190 = select i1 %2189, float 0x3FFB6F8900000000, float %2188
  %2191 = fmul fast float %2190, 0x3FE8A23460000000
  %2192 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2193 = call float @dx.op.binary.f32(i32 35, float %2190, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2194 = fmul fast float %2192, %2179
  %2195 = fmul fast float %2193, 0x3FF279A740000000
  %2196 = fadd fast float %2195, -1.000000e+00
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2186, float %62, float %2185, float %2186, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = call float @dx.op.unary.f32(i32 25, float %2197)  ; Rsqrt(value)
  %2199 = fmul fast float %2198, %2185
  %2200 = fmul fast float %2198, %2186
  %2201 = fmul fast float %2198, %62
  %2202 = fmul fast float %2196, %2196
  %2203 = fsub fast float 1.000000e+00, %2202
  %2204 = fmul fast float %2193, 0x40005F8BE0000000
  %2205 = fsub fast float 0x400C5BF8A0000000, %2204
  %2206 = fdiv fast float %2194, %2205
  %2207 = fmul fast float %2206, 0x3FEE31C3C0000000
  %2208 = fmul fast float %2207, %2203
  %2209 = fmul fast float %2193, 0x3FDACB7480000000
  %2210 = fadd fast float %2209, 0xBFD7347680000000
  %2211 = fmul fast float %2210, %2206
  %2212 = fmul fast float %2211, %2203
  br label %2213

; <label>:2213                                    ; preds = %2184, %2144
  %2214 = phi float [ %2199, %2184 ], [ 0.000000e+00, %2144 ]
  %2215 = phi float [ %2200, %2184 ], [ 0.000000e+00, %2144 ]
  %2216 = phi float [ %2201, %2184 ], [ 0.000000e+00, %2144 ]
  %2217 = phi float [ %2208, %2184 ], [ 0.000000e+00, %2144 ]
  %2218 = phi float [ %2212, %2184 ], [ 0.000000e+00, %2144 ]
  %2219 = call float @dx.op.dot3.f32(i32 55, float %2214, float %2215, float %2216, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2220 = fmul fast float %2219, 0x3FDF454380000000
  %2221 = fmul fast float %2219, %2219
  %2222 = fmul fast float %2221, 0x3FEE471020000000
  %2223 = fadd fast float %2222, 0xBFD42F6020000000
  %2224 = fmul fast float %2179, 0x3FD20DD760000000
  %2225 = fmul fast float %2223, %2218
  %2226 = fadd fast float %2225, %2224
  %2227 = fmul fast float %2220, %2217
  %2228 = fadd fast float %2226, %2227
  %2229 = fsub fast float %2226, %2227
  %2230 = call float @dx.op.dot3.f32(i32 55, float %2214, float %2215, float %2216, float %2171, float %2172, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2231 = fmul fast float %2230, 0x3FDF454380000000
  %2232 = fmul fast float %2230, %2230
  %2233 = fmul fast float %2232, 0x3FEE471020000000
  %2234 = fadd fast float %2233, 0xBFD42F6020000000
  %2235 = call float @dx.op.dot3.f32(i32 55, float %2179, float %2217, float %2218, float 0x3FD20DD760000000, float %2231, float %2234)  ; Dot3(ax,ay,az,bx,by,bz)
  %2236 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %2237 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2238 = fcmp fast oeq float %2237, 0.000000e+00
  %2239 = fcmp fast oeq float %2236, 0.000000e+00
  %2240 = or i1 %2239, %2238
  br i1 %2240, label %2270, label %2241

; <label>:2241                                    ; preds = %2213
  %2242 = fsub fast float -0.000000e+00, %59
  %2243 = fsub fast float -0.000000e+00, %57
  %2244 = call float @dx.op.unary.f32(i32 24, float %2237)  ; Sqrt(value)
  %2245 = fdiv fast float %2244, %2236
  %2246 = fcmp fast ogt float %2245, 0x3FFB6F8900000000
  %2247 = select i1 %2246, float 0x3FFB6F8900000000, float %2245
  %2248 = fmul fast float %2247, 0x3FE8A23460000000
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = call float @dx.op.binary.f32(i32 35, float %2247, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2251 = fmul fast float %2249, %2236
  %2252 = fmul fast float %2250, 0x3FF279A740000000
  %2253 = fadd fast float %2252, -1.000000e+00
  %2254 = call float @dx.op.dot3.f32(i32 55, float %2242, float %2243, float %58, float %2242, float %2243, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2255 = call float @dx.op.unary.f32(i32 25, float %2254)  ; Rsqrt(value)
  %2256 = fmul fast float %2255, %2242
  %2257 = fmul fast float %2255, %2243
  %2258 = fmul fast float %2255, %58
  %2259 = fmul fast float %2253, %2253
  %2260 = fsub fast float 1.000000e+00, %2259
  %2261 = fmul fast float %2250, 0x40005F8BE0000000
  %2262 = fsub fast float 0x400C5BF8A0000000, %2261
  %2263 = fdiv fast float %2251, %2262
  %2264 = fmul fast float %2263, 0x3FEE31C3C0000000
  %2265 = fmul fast float %2264, %2260
  %2266 = fmul fast float %2250, 0x3FDACB7480000000
  %2267 = fadd fast float %2266, 0xBFD7347680000000
  %2268 = fmul fast float %2267, %2263
  %2269 = fmul fast float %2268, %2260
  br label %2270

; <label>:2270                                    ; preds = %2241, %2213
  %2271 = phi float [ %2256, %2241 ], [ 0.000000e+00, %2213 ]
  %2272 = phi float [ %2257, %2241 ], [ 0.000000e+00, %2213 ]
  %2273 = phi float [ %2258, %2241 ], [ 0.000000e+00, %2213 ]
  %2274 = phi float [ %2265, %2241 ], [ 0.000000e+00, %2213 ]
  %2275 = phi float [ %2269, %2241 ], [ 0.000000e+00, %2213 ]
  %2276 = call float @dx.op.dot3.f32(i32 55, float %2271, float %2272, float %2273, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2277 = fmul fast float %2276, 0x3FDF454380000000
  %2278 = fmul fast float %2276, %2276
  %2279 = fmul fast float %2278, 0x3FEE471020000000
  %2280 = fadd fast float %2279, 0xBFD42F6020000000
  %2281 = fmul fast float %2236, 0x3FD20DD760000000
  %2282 = fmul fast float %2280, %2275
  %2283 = fadd fast float %2282, %2281
  %2284 = fmul fast float %2277, %2274
  %2285 = fadd fast float %2283, %2284
  %2286 = fsub fast float %2283, %2284
  %2287 = call float @dx.op.dot3.f32(i32 55, float %2271, float %2272, float %2273, float %2171, float %2172, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2288 = fmul fast float %2287, 0x3FDF454380000000
  %2289 = fmul fast float %2287, %2287
  %2290 = fmul fast float %2289, 0x3FEE471020000000
  %2291 = fadd fast float %2290, 0xBFD42F6020000000
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2236, float %2274, float %2275, float 0x3FD20DD760000000, float %2288, float %2291)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %2294 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2295 = fcmp fast oeq float %2294, 0.000000e+00
  %2296 = fcmp fast oeq float %2293, 0.000000e+00
  %2297 = or i1 %2296, %2295
  br i1 %2297, label %2327, label %2298

; <label>:2298                                    ; preds = %2270
  %2299 = fsub fast float -0.000000e+00, %55
  %2300 = fsub fast float -0.000000e+00, %53
  %2301 = call float @dx.op.unary.f32(i32 24, float %2294)  ; Sqrt(value)
  %2302 = fdiv fast float %2301, %2293
  %2303 = fcmp fast ogt float %2302, 0x3FFB6F8900000000
  %2304 = select i1 %2303, float 0x3FFB6F8900000000, float %2302
  %2305 = fmul fast float %2304, 0x3FE8A23460000000
  %2306 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2307 = call float @dx.op.binary.f32(i32 35, float %2304, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2308 = fmul fast float %2306, %2293
  %2309 = fmul fast float %2307, 0x3FF279A740000000
  %2310 = fadd fast float %2309, -1.000000e+00
  %2311 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %54, float %2299, float %2300, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2312 = call float @dx.op.unary.f32(i32 25, float %2311)  ; Rsqrt(value)
  %2313 = fmul fast float %2312, %2299
  %2314 = fmul fast float %2312, %2300
  %2315 = fmul fast float %2312, %54
  %2316 = fmul fast float %2310, %2310
  %2317 = fsub fast float 1.000000e+00, %2316
  %2318 = fmul fast float %2307, 0x40005F8BE0000000
  %2319 = fsub fast float 0x400C5BF8A0000000, %2318
  %2320 = fdiv fast float %2308, %2319
  %2321 = fmul fast float %2320, 0x3FEE31C3C0000000
  %2322 = fmul fast float %2321, %2317
  %2323 = fmul fast float %2307, 0x3FDACB7480000000
  %2324 = fadd fast float %2323, 0xBFD7347680000000
  %2325 = fmul fast float %2324, %2320
  %2326 = fmul fast float %2325, %2317
  br label %2327

; <label>:2327                                    ; preds = %2298, %2270
  %2328 = phi float [ %2313, %2298 ], [ 0.000000e+00, %2270 ]
  %2329 = phi float [ %2314, %2298 ], [ 0.000000e+00, %2270 ]
  %2330 = phi float [ %2315, %2298 ], [ 0.000000e+00, %2270 ]
  %2331 = phi float [ %2322, %2298 ], [ 0.000000e+00, %2270 ]
  %2332 = phi float [ %2326, %2298 ], [ 0.000000e+00, %2270 ]
  %2333 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2334 = fmul fast float %2333, 0x3FDF454380000000
  %2335 = fmul fast float %2333, %2333
  %2336 = fmul fast float %2335, 0x3FEE471020000000
  %2337 = fadd fast float %2336, 0xBFD42F6020000000
  %2338 = fmul fast float %2293, 0x3FD20DD760000000
  %2339 = fmul fast float %2337, %2332
  %2340 = fadd fast float %2339, %2338
  %2341 = fmul fast float %2334, %2331
  %2342 = fadd fast float %2340, %2341
  %2343 = fsub fast float %2340, %2341
  %2344 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2171, float %2172, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2345 = fmul fast float %2344, 0x3FDF454380000000
  %2346 = fmul fast float %2344, %2344
  %2347 = fmul fast float %2346, 0x3FEE471020000000
  %2348 = fadd fast float %2347, 0xBFD42F6020000000
  %2349 = call float @dx.op.dot3.f32(i32 55, float %2293, float %2331, float %2332, float 0x3FD20DD760000000, float %2345, float %2348)  ; Dot3(ax,ay,az,bx,by,bz)
  %2350 = call float @dx.op.binary.f32(i32 35, float %2228, float 0.000000e+00)  ; FMax(a,b)
  %2351 = call float @dx.op.binary.f32(i32 35, float %2285, float 0.000000e+00)  ; FMax(a,b)
  %2352 = call float @dx.op.binary.f32(i32 35, float %2342, float 0.000000e+00)  ; FMax(a,b)
  %2353 = call float @dx.op.binary.f32(i32 35, float %2229, float 0.000000e+00)  ; FMax(a,b)
  %2354 = call float @dx.op.binary.f32(i32 35, float %2286, float 0.000000e+00)  ; FMax(a,b)
  %2355 = call float @dx.op.binary.f32(i32 35, float %2343, float 0.000000e+00)  ; FMax(a,b)
  %2356 = call float @dx.op.binary.f32(i32 35, float %2235, float 0.000000e+00)  ; FMax(a,b)
  %2357 = call float @dx.op.binary.f32(i32 35, float %2292, float 0.000000e+00)  ; FMax(a,b)
  %2358 = call float @dx.op.binary.f32(i32 35, float %2349, float 0.000000e+00)  ; FMax(a,b)
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = call float @dx.op.binary.f32(i32 36, float %2154, float %2360)  ; FMin(a,b)
  %2362 = fsub fast float 1.000000e+00, %2174
  %2363 = fmul fast float %2361, %2362
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = bitcast float %2364 to i32
  %2366 = sub nsw i32 2129859010, %2365
  %2367 = bitcast i32 %2366 to float
  %2368 = call float @dx.op.binary.f32(i32 36, float %2155, float %2360)  ; FMin(a,b)
  %2369 = fmul fast float %2368, %2362
  %2370 = fsub fast float 1.000000e+00, %2369
  %2371 = bitcast float %2370 to i32
  %2372 = sub nsw i32 2129859010, %2371
  %2373 = bitcast i32 %2372 to float
  %2374 = call float @dx.op.binary.f32(i32 36, float %2156, float %2360)  ; FMin(a,b)
  %2375 = fmul fast float %2374, %2362
  %2376 = fsub fast float 1.000000e+00, %2375
  %2377 = bitcast float %2376 to i32
  %2378 = sub nsw i32 2129859010, %2377
  %2379 = bitcast i32 %2378 to float
  %2380 = fmul fast float %2350, %2174
  %2381 = fmul fast float %2380, %2367
  %2382 = fmul fast float %2351, %2174
  %2383 = fmul fast float %2382, %2373
  %2384 = fmul fast float %2352, %2174
  %2385 = fmul fast float %2384, %2379
  %2386 = call float @dx.op.binary.f32(i32 36, float %2151, float %2360)  ; FMin(a,b)
  %2387 = fmul fast float %2386, %2362
  %2388 = fsub fast float 1.000000e+00, %2387
  %2389 = bitcast float %2388 to i32
  %2390 = sub nsw i32 2129859010, %2389
  %2391 = bitcast i32 %2390 to float
  %2392 = call float @dx.op.binary.f32(i32 36, float %2152, float %2360)  ; FMin(a,b)
  %2393 = fmul fast float %2392, %2362
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = bitcast float %2394 to i32
  %2396 = sub nsw i32 2129859010, %2395
  %2397 = bitcast i32 %2396 to float
  %2398 = call float @dx.op.binary.f32(i32 36, float %2163, float %2360)  ; FMin(a,b)
  %2399 = fmul fast float %2398, %2362
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = bitcast float %2400 to i32
  %2402 = sub nsw i32 2129859010, %2401
  %2403 = bitcast i32 %2402 to float
  %2404 = fmul fast float %2356, %2174
  %2405 = fmul fast float %2404, %2391
  %2406 = fmul fast float %2357, %2174
  %2407 = fmul fast float %2406, %2397
  %2408 = fmul fast float %2358, %2174
  %2409 = fmul fast float %2408, %2403
  %2410 = call float @dx.op.dot3.f32(i32 55, float %2381, float %2383, float %2385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2411 = select i1 %195, float 0.000000e+00, float %2381
  %2412 = select i1 %195, float %2410, float %2383
  %2413 = select i1 %195, float 0.000000e+00, float %2385
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2353, float %2354, float %2355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = select i1 %195, float 0.000000e+00, float %2353
  %2416 = select i1 %195, float %2414, float %2354
  %2417 = select i1 %195, float 0.000000e+00, float %2355
  %2418 = call float @dx.op.dot3.f32(i32 55, float %2405, float %2407, float %2409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2419 = select i1 %195, float 0.000000e+00, float %2405
  %2420 = select i1 %195, float %2418, float %2407
  %2421 = select i1 %195, float 0.000000e+00, float %2409
  %2422 = fmul fast float %896, %896
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2424 = fmul fast float %2165, 9.843750e-01
  %2425 = fmul fast float %2160, 9.843750e-01
  %2426 = fadd fast float %2424, 7.812500e-03
  %2427 = fadd fast float %2425, 7.812500e-03
  %2428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %2426, float %2427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2429 = extractvalue %dx.types.ResRet.f32 %2428, 0
  %2430 = extractvalue %dx.types.ResRet.f32 %2428, 1
  %2431 = extractvalue %dx.types.ResRet.f32 %2428, 2
  %2432 = extractvalue %dx.types.ResRet.f32 %2428, 3
  %2433 = fsub fast float 1.000000e+00, %2423
  %2434 = fsub fast float %2431, %2429
  %2435 = fsub fast float %2432, %2430
  %2436 = fmul fast float %2434, %2433
  %2437 = fmul fast float %2435, %2433
  %2438 = fadd fast float %2436, %2429
  %2439 = fadd fast float %2437, %2430
  %2440 = fmul fast float %2438, %2151
  %2441 = fmul fast float %2438, %2152
  %2442 = fmul fast float %2438, %2163
  %2443 = fadd fast float %2440, %2439
  %2444 = fadd fast float %2441, %2439
  %2445 = fadd fast float %2442, %2439
  %2446 = fcmp fast ogt float %1496, 0.000000e+00
  br i1 %2446, label %2447, label %2473

; <label>:2447                                    ; preds = %2327
  %2448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1496, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2449 = extractvalue %dx.types.ResRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.ResRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.ResRet.f32 %2448, 2
  %2452 = fadd fast float %2449, -5.000000e-01
  %2453 = fadd fast float %2450, -5.000000e-01
  %2454 = fadd fast float %2451, -5.000000e-01
  %2455 = fsub fast float 1.000000e+00, %2151
  %2456 = fsub fast float 1.000000e+00, %2152
  %2457 = fsub fast float 1.000000e+00, %2163
  %2458 = fmul fast float %2151, 4.000000e+00
  %2459 = fmul fast float %2458, %2455
  %2460 = fmul fast float %2459, %2452
  %2461 = fmul fast float %2152, 4.000000e+00
  %2462 = fmul fast float %2461, %2456
  %2463 = fmul fast float %2462, %2453
  %2464 = fmul fast float %2163, 4.000000e+00
  %2465 = fmul fast float %2464, %2457
  %2466 = fmul fast float %2465, %2454
  %2467 = fadd fast float %2460, %2443
  %2468 = fadd fast float %2463, %2444
  %2469 = fadd fast float %2466, %2445
  %2470 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2471 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2472 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  br label %2473

; <label>:2473                                    ; preds = %2447, %2327
  %2474 = phi float [ %2470, %2447 ], [ %2443, %2327 ]
  %2475 = phi float [ %2471, %2447 ], [ %2444, %2327 ]
  %2476 = phi float [ %2472, %2447 ], [ %2445, %2327 ]
  %2477 = call float @dx.op.binary.f32(i32 35, float %2475, float %2476)  ; FMax(a,b)
  %2478 = call float @dx.op.binary.f32(i32 35, float %2474, float %2477)  ; FMax(a,b)
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2155, float %2156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2481 = fcmp fast ogt float %2480, 0x3E7FF19E20000000
  %2482 = fdiv fast float 1.000000e+00, %2480
  %2483 = select i1 %2481, float %2482, float 0.000000e+00
  %2484 = fmul fast float %2483, %2154
  %2485 = fmul fast float %2483, %2155
  %2486 = fmul fast float %2483, %2156
  %2487 = fadd fast float %2484, -1.000000e+00
  %2488 = fadd fast float %2485, -1.000000e+00
  %2489 = fadd fast float %2486, -1.000000e+00
  %2490 = fmul fast float %2487, 5.000000e-01
  %2491 = fmul fast float %2488, 5.000000e-01
  %2492 = fmul fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 1.000000e+00
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fadd fast float %2492, 1.000000e+00
  %2496 = call float @dx.op.binary.f32(i32 35, float %2165, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2497 = fdiv fast float %896, %2496
  %2498 = fcmp fast olt float %1569, 1.270000e+02
  %2499 = fcmp fast olt float %1570, 1.270000e+02
  %2500 = fcmp fast olt float %1571, 1.270000e+02
  %2501 = fmul fast float %1569, 0xBFF7154760000000
  %2502 = fmul fast float %2501, %2497
  %2503 = fmul fast float %1570, 0xBFF7154760000000
  %2504 = fmul fast float %2503, %2497
  %2505 = fmul fast float %1571, 0xBFF7154760000000
  %2506 = fmul fast float %2505, %2497
  %2507 = call float @dx.op.unary.f32(i32 21, float %2502)  ; Exp(value)
  %2508 = call float @dx.op.unary.f32(i32 21, float %2504)  ; Exp(value)
  %2509 = call float @dx.op.unary.f32(i32 21, float %2506)  ; Exp(value)
  %2510 = call float @dx.op.unary.f32(i32 7, float %2507)  ; Saturate(value)
  %2511 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2512 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2513 = select i1 %2498, float %2510, float 0.000000e+00
  %2514 = select i1 %2499, float %2511, float 0.000000e+00
  %2515 = select i1 %2500, float %2512, float 0.000000e+00
  %2516 = fmul fast float %2513, %2479
  %2517 = fmul fast float %2514, %2479
  %2518 = fmul fast float %2515, %2479
  %2519 = fadd fast float %2516, -1.000000e+00
  %2520 = fadd fast float %2517, -1.000000e+00
  %2521 = fadd fast float %2518, -1.000000e+00
  %2522 = fmul fast float %2519, %1519
  %2523 = fmul fast float %2520, %1519
  %2524 = fmul fast float %2521, %1519
  %2525 = fmul fast float %2474, %2419
  %2526 = fmul fast float %2475, %2420
  %2527 = fmul fast float %2476, %2421
  %2528 = fsub fast float 1.000000e+00, %2165
  %2529 = bitcast float %2528 to i32
  %2530 = sitofp i32 %2529 to float
  %2531 = fmul fast float %2530, 5.000000e+00
  %2532 = fadd fast float %2531, 0xC1EFBF8940000000
  %2533 = fptosi float %2532 to i32
  %2534 = bitcast i32 %2533 to float
  %2535 = fmul fast float %2534, %1495
  %2536 = fmul fast float %2411, %2535
  %2537 = fmul fast float %2536, %2479
  %2538 = fmul fast float %2537, %2493
  %2539 = fmul fast float %2412, %2535
  %2540 = fmul fast float %2539, %2479
  %2541 = fmul fast float %2540, %2494
  %2542 = fmul fast float %2413, %2535
  %2543 = fmul fast float %2542, %2479
  %2544 = fmul fast float %2543, %2495
  %2545 = fadd fast float %2525, %1500
  %2546 = fadd fast float %2545, %2538
  %2547 = fmul fast float %2546, %1519
  %2548 = fadd fast float %2526, %1501
  %2549 = fadd fast float %2548, %2541
  %2550 = fmul fast float %2549, %1519
  %2551 = fadd fast float %2527, %1502
  %2552 = fadd fast float %2551, %2544
  %2553 = fmul fast float %2552, %1519
  %2554 = fmul fast float %2152, 0x4012D0A400000000
  %2555 = fadd fast float %2524, 1.000000e+00
  %2556 = fadd fast float %2523, 1.000000e+00
  %2557 = fadd fast float %2522, 1.000000e+00
  %2558 = fmul fast float %2479, %2413
  %2559 = fmul fast float %2479, %2412
  %2560 = fmul fast float %2479, %2411
  %2561 = fsub fast float 1.000000e+00, %2160
  %2562 = fmul fast float %2561, %1519
  %2563 = fsub fast float 1.000000e+00, %2562
  %2564 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2565 = fsub fast float 1.000000e+00, %2564
  %2566 = fadd fast float %2554, 0x3FDB6377A0000000
  %2567 = fmul fast float %2565, %2566
  %2568 = call float @dx.op.dot3.f32(i32 55, float %1587, float %1588, float %1589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2569 = fadd fast float %2567, %2568
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = call float @dx.op.binary.f32(i32 35, float %2570, float 0x3F847AE140000000)  ; FMax(a,b)
  %2572 = fmul fast float %2571, %2571
  %2573 = fmul fast float %2572, %2572
  %2574 = fmul fast float %2573, 0xC00A935000000000
  %2575 = call float @dx.op.unary.f32(i32 21, float %2574)  ; Exp(value)
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = fmul fast float %2557, %2415
  %2578 = fmul fast float %2577, %2576
  %2579 = fmul fast float %2556, %2416
  %2580 = fmul fast float %2579, %2576
  %2581 = fmul fast float %2555, %2417
  %2582 = fmul fast float %2581, %2576
  %2583 = fadd fast float %2578, %2560
  %2584 = fmul fast float %2583, %1519
  %2585 = fadd fast float %2580, %2559
  %2586 = fmul fast float %2585, %1519
  %2587 = fadd fast float %2582, %2558
  %2588 = fmul fast float %2587, %1519
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 3
  %2591 = fcmp fast oeq float %2590, 0.000000e+00
  br i1 %2591, label %3796, label %2592

; <label>:2592                                    ; preds = %2473
  %2593 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2594 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2595 = extractvalue %dx.types.CBufRet.f32 %2589, 2
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = extractvalue %dx.types.CBufRet.f32 %2596, 1
  %2599 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.CBufRet.f32 %2600, 1
  %2603 = call float @dx.op.dot3.f32(i32 55, float %2597, float %2598, float %2599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2604 = select i1 %195, float %2601, float %2597
  %2605 = select i1 %195, float %2603, float %2598
  %2606 = select i1 %195, float %2602, float %2599
  %2607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2608 = extractvalue %dx.types.CBufRet.f32 %2607, 2
  %2609 = fmul fast float %2608, %88
  %2610 = fmul fast float %2608, %89
  %2611 = fmul fast float %2608, %90
  %2612 = fadd fast float %2609, %133
  %2613 = fadd fast float %2610, %134
  %2614 = fadd fast float %2611, %135
  %2615 = fcmp fast olt float %2590, 0.000000e+00
  br i1 %2615, label %3240, label %2616

; <label>:2616                                    ; preds = %2592
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.CBufRet.f32 %2617, 2
  %2621 = extractvalue %dx.types.CBufRet.f32 %2617, 3
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2626 = extractvalue %dx.types.CBufRet.f32 %2622, 3
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.CBufRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.CBufRet.f32 %2627, 3
  %2632 = fmul fast float %2618, %2612
  %2633 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %2619, float %2632)  ; FMad(a,b,c)
  %2634 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2620, float %2633)  ; FMad(a,b,c)
  %2635 = fadd fast float %2634, %2621
  %2636 = fmul fast float %2623, %2612
  %2637 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %2624, float %2636)  ; FMad(a,b,c)
  %2638 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2625, float %2637)  ; FMad(a,b,c)
  %2639 = fadd fast float %2638, %2626
  %2640 = fmul fast float %2628, %2612
  %2641 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %2629, float %2640)  ; FMad(a,b,c)
  %2642 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2630, float %2641)  ; FMad(a,b,c)
  %2643 = fadd fast float %2642, %2631
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.CBufRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2648 = fmul fast float %2647, %2635
  %2649 = fmul fast float %2647, %2639
  %2650 = fadd fast float %2648, %2645
  %2651 = fadd fast float %2649, %2646
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2655 = extractvalue %dx.types.CBufRet.f32 %2652, 3
  %2656 = fmul fast float %2655, %2635
  %2657 = fmul fast float %2655, %2639
  %2658 = fadd fast float %2656, %2653
  %2659 = fadd fast float %2657, %2654
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 1
  %2662 = fsub fast float %2661, %2643
  %2663 = extractvalue %dx.types.CBufRet.f32 %2660, 2
  %2664 = fmul fast float %2662, %2663
  %2665 = fsub fast float 1.000000e+00, %2664
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2652, 2
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 2
  %2670 = fadd fast float %2669, %2667
  %2671 = fcmp fast ogt float %2670, 0.000000e+00
  br i1 %2671, label %2672, label %2696

; <label>:2672                                    ; preds = %2616
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2676 = fsub fast float %2658, %2674
  %2677 = fsub fast float %2659, %2675
  %2678 = fcmp fast olt float %2676, 0.000000e+00
  %2679 = fcmp fast olt float %2677, 0.000000e+00
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 0
  %2682 = extractvalue %dx.types.CBufRet.f32 %2680, 1
  %2683 = extractvalue %dx.types.CBufRet.f32 %2680, 2
  %2684 = extractvalue %dx.types.CBufRet.f32 %2680, 3
  %2685 = select i1 %2678, float %2681, float %2683
  %2686 = select i1 %2679, float %2682, float %2684
  %2687 = fmul fast float %2685, %2676
  %2688 = fmul fast float %2686, %2677
  %2689 = call float @dx.op.unary.f32(i32 6, float %2687)  ; FAbs(value)
  %2690 = call float @dx.op.unary.f32(i32 6, float %2688)  ; FAbs(value)
  %2691 = extractvalue %dx.types.CBufRet.f32 %2607, 0
  %2692 = call float @dx.op.binary.f32(i32 35, float %2689, float %2690)  ; FMax(a,b)
  %2693 = fsub fast float %2691, %2692
  %2694 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2695 = fmul fast float %2694, %2666
  br label %2696

; <label>:2696                                    ; preds = %2672, %2616
  %2697 = phi float [ %2695, %2672 ], [ 0.000000e+00, %2616 ]
  %2698 = extractvalue %dx.types.CBufRet.f32 %2644, 2
  %2699 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2700 = fadd fast float %2699, %2698
  %2701 = fcmp fast ogt float %2700, 0.000000e+00
  %2702 = extractvalue %dx.types.CBufRet.f32 %2607, 0
  br i1 %2701, label %2703, label %2726

; <label>:2703                                    ; preds = %2696
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = fsub fast float %2650, %2705
  %2708 = fsub fast float %2651, %2706
  %2709 = fcmp fast olt float %2707, 0.000000e+00
  %2710 = fcmp fast olt float %2708, 0.000000e+00
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2715 = extractvalue %dx.types.CBufRet.f32 %2711, 3
  %2716 = select i1 %2709, float %2712, float %2714
  %2717 = select i1 %2710, float %2713, float %2715
  %2718 = fmul fast float %2716, %2707
  %2719 = fmul fast float %2717, %2708
  %2720 = call float @dx.op.unary.f32(i32 6, float %2718)  ; FAbs(value)
  %2721 = call float @dx.op.unary.f32(i32 6, float %2719)  ; FAbs(value)
  %2722 = call float @dx.op.binary.f32(i32 35, float %2720, float %2721)  ; FMax(a,b)
  %2723 = fsub fast float %2702, %2722
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = fmul fast float %2724, %2666
  br label %2726

; <label>:2726                                    ; preds = %2703, %2696
  %2727 = phi float [ %2725, %2703 ], [ 0.000000e+00, %2696 ]
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.CBufRet.f32 %2731, 1
  %2734 = fsub fast float %2635, %2732
  %2735 = fsub fast float %2639, %2733
  %2736 = fcmp fast olt float %2734, 0.000000e+00
  %2737 = fcmp fast olt float %2735, 0.000000e+00
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.CBufRet.f32 %2738, 2
  %2742 = extractvalue %dx.types.CBufRet.f32 %2738, 3
  %2743 = select i1 %2736, float %2739, float %2741
  %2744 = select i1 %2737, float %2740, float %2742
  %2745 = fmul fast float %2743, %2734
  %2746 = fmul fast float %2744, %2735
  %2747 = call float @dx.op.unary.f32(i32 6, float %2745)  ; FAbs(value)
  %2748 = call float @dx.op.unary.f32(i32 6, float %2746)  ; FAbs(value)
  %2749 = call float @dx.op.binary.f32(i32 35, float %2747, float %2748)  ; FMax(a,b)
  %2750 = fsub fast float %2702, %2749
  %2751 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  %2752 = call float @dx.op.binary.f32(i32 36, float %2751, float %2730)  ; FMin(a,b)
  %2753 = fmul fast float %2752, %2666
  %2754 = fsub fast float %2727, %2753
  %2755 = fsub fast float %2697, %2727
  %2756 = fsub fast float %2755, %2753
  %2757 = call float @dx.op.binary.f32(i32 35, float %2753, float %2727)  ; FMax(a,b)
  %2758 = call float @dx.op.binary.f32(i32 35, float %2757, float %2697)  ; FMax(a,b)
  %2759 = fcmp fast olt float %2758, 1.000000e+00
  br i1 %2759, label %2760, label %3158, !dx.controlflow.hints !84

; <label>:2760                                    ; preds = %2726
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = fcmp fast une float %2762, 0.000000e+00
  br i1 %2763, label %2764, label %3158, !dx.controlflow.hints !85

; <label>:2764                                    ; preds = %2760
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.CBufRet.f32 %2765, 1
  %2768 = extractvalue %dx.types.CBufRet.f32 %2765, 2
  %2769 = extractvalue %dx.types.CBufRet.f32 %2765, 3
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2774 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2779 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2780 = fmul fast float %2766, %2612
  %2781 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %2767, float %2780)  ; FMad(a,b,c)
  %2782 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2768, float %2781)  ; FMad(a,b,c)
  %2783 = fadd fast float %2782, %2769
  %2784 = fmul fast float %2771, %2612
  %2785 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %2772, float %2784)  ; FMad(a,b,c)
  %2786 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2773, float %2785)  ; FMad(a,b,c)
  %2787 = fadd fast float %2786, %2774
  %2788 = fmul fast float %2776, %2612
  %2789 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %2777, float %2788)  ; FMad(a,b,c)
  %2790 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2778, float %2789)  ; FMad(a,b,c)
  %2791 = fadd fast float %2790, %2779
  %2792 = fcmp fast oge float %2783, 1.000000e+00
  %2793 = fcmp fast oge float %2787, 1.000000e+00
  %2794 = or i1 %2792, %2793
  %2795 = fcmp fast olt float %2783, 0.000000e+00
  %2796 = fcmp fast olt float %2787, 0.000000e+00
  %2797 = or i1 %2795, %2796
  %2798 = or i1 %2794, %2797
  br i1 %2798, label %3158, label %2799, !dx.controlflow.hints !86

; <label>:2799                                    ; preds = %2764
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.CBufRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.CBufRet.f32 %2800, 2
  %2804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.i32 %2804, 2
  %2806 = uitofp i32 %2805 to float
  %2807 = extractvalue %dx.types.CBufRet.i32 %2804, 3
  %2808 = uitofp i32 %2807 to float
  %2809 = extractvalue %dx.types.CBufRet.f32 %2800, 3
  %2810 = fmul fast float %2809, 2.000000e+00
  %2811 = fsub fast float %2783, %2801
  %2812 = fsub fast float %2787, %2802
  %2813 = fmul fast float %2810, %2811
  %2814 = fmul fast float %2810, %2812
  %2815 = fdiv fast float 1.000000e+00, %2595
  %2816 = fmul fast float %2814, %2815
  %2817 = call float @dx.op.unary.f32(i32 6, float %2816)  ; FAbs(value)
  %2818 = fmul fast float %2803, %2614
  %2819 = fmul fast float %2818, %2810
  %2820 = call float @dx.op.unary.f32(i32 6, float %2819)  ; FAbs(value)
  %2821 = call float @dx.op.unary.f32(i32 6, float %2813)  ; FAbs(value)
  %2822 = call float @dx.op.binary.f32(i32 35, float %2821, float %2820)  ; FMax(a,b)
  %2823 = call float @dx.op.binary.f32(i32 35, float %2822, float %2817)  ; FMax(a,b)
  %2824 = fmul fast float %2823, 2.000000e+00
  %2825 = call float @dx.op.unary.f32(i32 23, float %2824)  ; Log(value)
  %2826 = call float @dx.op.binary.f32(i32 35, float %2825, float %2806)  ; FMax(a,b)
  %2827 = call float @dx.op.unary.f32(i32 22, float %2826)  ; Frc(value)
  %2828 = fadd fast float %2827, 0xBFEA666660000000
  %2829 = fmul fast float %2828, 8.000000e+00
  %2830 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  %2831 = call float @dx.op.unary.f32(i32 27, float %2826)  ; Round_ni(value)
  %2832 = fadd fast float %2831, %2830
  %2833 = call float @dx.op.binary.f32(i32 36, float %2832, float %2808)  ; FMin(a,b)
  %2834 = call float @dx.op.unary.f32(i32 27, float %2833)  ; Round_ni(value)
  %2835 = fsub fast float -0.000000e+00, %2834
  %2836 = call float @dx.op.unary.f32(i32 21, float %2835)  ; Exp(value)
  %2837 = fmul fast float %2836, %2810
  %2838 = fmul fast float %2837, %2783
  %2839 = fmul fast float %2837, %2787
  %2840 = fmul fast float %2838, 2.500000e-01
  %2841 = fmul fast float %2839, 2.500000e-01
  %2842 = fadd fast float %2840, 5.000000e-01
  %2843 = fadd fast float %2841, 5.000000e-01
  %2844 = fsub fast float %2808, %2806
  %2845 = fptoui float %2844 to i32
  %2846 = add i32 %2845, 320
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2846)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.CBufRet.f32 %2847, 1
  %2850 = fcmp fast une float %2833, %2808
  %2851 = fsub fast float %2783, %2848
  %2852 = fsub fast float %2787, %2849
  %2853 = call float @dx.op.unary.f32(i32 6, float %2851)  ; FAbs(value)
  %2854 = call float @dx.op.unary.f32(i32 6, float %2852)  ; FAbs(value)
  %2855 = fmul fast float %2853, %2837
  %2856 = fmul fast float %2854, %2837
  %2857 = fcmp fast olt float %2855, 1.000000e+00
  %2858 = fcmp fast olt float %2856, 1.000000e+00
  %2859 = and i1 %2857, %2858
  %2860 = or i1 %2850, %2859
  br i1 %2860, label %2861, label %3158, !dx.controlflow.hints !87

; <label>:2861                                    ; preds = %2799
  %2862 = fmul fast float %2839, 5.000000e-01
  %2863 = fmul fast float %2838, 5.000000e-01
  %2864 = fadd fast float %2862, 5.000000e-01
  %2865 = fadd fast float %2863, 5.000000e-01
  %2866 = sitofp i32 %2805 to float
  %2867 = fsub fast float %2833, %2866
  %2868 = call float @dx.op.unary.f32(i32 27, float %2867)  ; Round_ni(value)
  %2869 = call float @dx.op.unary.f32(i32 22, float %2833)  ; Frc(value)
  %2870 = call float @dx.op.unary.f32(i32 22, float %2865)  ; Frc(value)
  %2871 = call float @dx.op.unary.f32(i32 22, float %2864)  ; Frc(value)
  %2872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2870, float %2871, float %2868, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.ResRet.f32 %2872, 1
  %2875 = extractvalue %dx.types.ResRet.f32 %2872, 2
  %2876 = extractvalue %dx.types.ResRet.f32 %2872, 3
  %2877 = fcmp fast ogt float %2869, 0.000000e+00
  br i1 %2877, label %2878, label %2899, !dx.controlflow.hints !88

; <label>:2878                                    ; preds = %2861
  %2879 = fadd fast float %2868, 1.000000e+00
  %2880 = call float @dx.op.unary.f32(i32 22, float %2842)  ; Frc(value)
  %2881 = call float @dx.op.unary.f32(i32 22, float %2843)  ; Frc(value)
  %2882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2880, float %2881, float %2879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = extractvalue %dx.types.ResRet.f32 %2882, 1
  %2885 = extractvalue %dx.types.ResRet.f32 %2882, 2
  %2886 = extractvalue %dx.types.ResRet.f32 %2882, 3
  %2887 = fsub fast float %2883, %2873
  %2888 = fsub fast float %2884, %2874
  %2889 = fsub fast float %2885, %2875
  %2890 = fsub fast float %2886, %2876
  %2891 = fmul fast float %2887, %2869
  %2892 = fmul fast float %2888, %2869
  %2893 = fmul fast float %2889, %2869
  %2894 = fmul fast float %2890, %2869
  %2895 = fadd fast float %2891, %2873
  %2896 = fadd fast float %2892, %2874
  %2897 = fadd fast float %2893, %2875
  %2898 = fadd fast float %2894, %2876
  br label %2899

; <label>:2899                                    ; preds = %2878, %2861
  %2900 = phi float [ %2895, %2878 ], [ %2873, %2861 ]
  %2901 = phi float [ %2896, %2878 ], [ %2874, %2861 ]
  %2902 = phi float [ %2897, %2878 ], [ %2875, %2861 ]
  %2903 = phi float [ %2898, %2878 ], [ %2876, %2861 ]
  %2904 = fadd fast float %2900, -5.000000e-01
  %2905 = fadd fast float %2902, -5.000000e-01
  %2906 = fmul fast float %2904, 0xBFD5555560000000
  %2907 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2905, float %2906)  ; FMad(a,b,c)
  %2908 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2901, float 0.000000e+00)  ; FMad(a,b,c)
  %2909 = fadd fast float %2908, %2903
  %2910 = fmul fast float %2904, -7.500000e-01
  %2911 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2905, float %2910)  ; FMad(a,b,c)
  %2912 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2901, float 0.000000e+00)  ; FMad(a,b,c)
  %2913 = fadd fast float %2912, %2903
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.CBufRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.CBufRet.f32 %2916, 2
  %2920 = extractvalue %dx.types.CBufRet.f32 %2916, 3
  %2921 = fsub fast float %2917, %2907
  %2922 = fsub fast float %2918, %2909
  %2923 = fsub fast float %2919, %2911
  %2924 = fsub fast float %2920, %2913
  %2925 = fmul fast float %2921, %2915
  %2926 = fmul fast float %2922, %2915
  %2927 = fmul fast float %2923, %2915
  %2928 = fmul fast float %2924, %2915
  %2929 = fadd fast float %2925, %2907
  %2930 = fadd fast float %2926, %2909
  %2931 = fadd fast float %2927, %2911
  %2932 = fadd fast float %2928, %2913
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 536870911
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2936, %2783
  %2938 = fmul fast float %2936, %2787
  %2939 = fptoui float %2937 to i32
  %2940 = fptoui float %2938 to i32
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 31
  %2944 = lshr i32 %2939, %2943
  %2945 = lshr i32 %2940, %2943
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 31
  %2949 = shl i32 1, %2948
  %2950 = call i32 @dx.op.binary.i32(i32 40, i32 %2949, i32 4)  ; UMin(a,b)
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = extractvalue %dx.types.ResRet.i32 %2951, 1
  %2954 = icmp eq i32 %2950, 0
  br i1 %2954, label %2996, label %2955

; <label>:2955                                    ; preds = %2899
  br label %2956

; <label>:2956                                    ; preds = %2984, %2955
  %2957 = phi i32 [ %2987, %2984 ], [ 0, %2955 ]
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = lshr i32 %2959, 16
  %2961 = and i32 %2960, 31
  %2962 = shl i32 %2945, %2961
  %2963 = add i32 %2962, %2944
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 31
  %2967 = shl i32 %2963, %2966
  %2968 = add i32 %2967, %2957
  %2969 = shl i32 %2968, 2
  %2970 = add i32 %2969, 32
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = icmp slt i32 %2972, 0
  %2974 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2957
  %2975 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2957
  %2976 = bitcast float* %2974 to i32*
  %2977 = bitcast float* %2975 to i32*
  br i1 %2973, label %2978, label %2984

; <label>:2978                                    ; preds = %2956
  %2979 = and i32 %2972, 1073741823
  %2980 = add nuw nsw i32 %2979, 20
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.i32 %2981, 1
  br label %2984

; <label>:2984                                    ; preds = %2978, %2956
  %2985 = phi i32 [ %2982, %2978 ], [ %2952, %2956 ]
  %2986 = phi i32 [ %2983, %2978 ], [ %2953, %2956 ]
  store i32 %2985, i32* %2976, align 4
  store i32 %2986, i32* %2977, align 4
  %2987 = add nuw i32 %2957, 1
  %2988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.i32 %2988, 2
  %2990 = icmp eq i32 %2989, 0
  %2991 = icmp ugt i32 %2972, -1073741825
  %2992 = and i1 %2991, %2990
  %2993 = icmp ult i32 %2987, %2950
  %2994 = and i1 %2992, %2993
  br i1 %2994, label %2956, label %2995

; <label>:2995                                    ; preds = %2984
  br label %2996

; <label>:2996                                    ; preds = %2995, %2899
  %2997 = phi i32 [ 0, %2899 ], [ %2987, %2995 ]
  %2998 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2999 = fptoui float %2998 to i32
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3052, label %3001

; <label>:3001                                    ; preds = %2996
  br label %3002

; <label>:3002                                    ; preds = %3047, %3001
  %3003 = phi i32 [ %3048, %3047 ], [ %2997, %3001 ]
  %3004 = phi i32 [ %3049, %3047 ], [ 0, %3001 ]
  %3005 = lshr i32 %3004, 2
  %3006 = and i32 %3004, 3
  %3007 = add nuw nsw i32 %3005, 83
  %3008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %3007)  ; CBufferLoadLegacy(handle,regIndex)
  %3009 = extractvalue %dx.types.CBufRet.i32 %3008, 0
  %3010 = extractvalue %dx.types.CBufRet.i32 %3008, 1
  %3011 = extractvalue %dx.types.CBufRet.i32 %3008, 2
  %3012 = extractvalue %dx.types.CBufRet.i32 %3008, 3
  %3013 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %3009, i32* %3013, align 4
  %3014 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %3010, i32* %3014, align 4
  %3015 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %3011, i32* %3015, align 4
  %3016 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %3012, i32* %3016, align 4
  %3017 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %3006
  %3018 = load i32, i32* %3017, align 4, !tbaa !89, !noalias !93
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = lshr i32 %3020, 16
  %3022 = and i32 %3021, 31
  %3023 = shl i32 %2945, %3022
  %3024 = add i32 %3023, %2944
  %3025 = shl i32 %3024, 2
  %3026 = add i32 %3025, %3018
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3047, label %3030

; <label>:3030                                    ; preds = %3002
  %3031 = icmp slt i32 %3028, 0
  %3032 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3003
  %3033 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3003
  %3034 = bitcast float* %3032 to i32*
  %3035 = bitcast float* %3033 to i32*
  br i1 %3031, label %3036, label %3043

; <label>:3036                                    ; preds = %3030
  %3037 = and i32 %3028, 1073741823
  %3038 = add i32 %3018, 20
  %3039 = add i32 %3038, %3037
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.i32 %3040, 1
  br label %3043

; <label>:3043                                    ; preds = %3036, %3030
  %3044 = phi i32 [ %3041, %3036 ], [ %2952, %3030 ]
  %3045 = phi i32 [ %3042, %3036 ], [ %2953, %3030 ]
  store i32 %3044, i32* %3034, align 4
  store i32 %3045, i32* %3035, align 4
  %3046 = add i32 %3003, 1
  br label %3047

; <label>:3047                                    ; preds = %3043, %3002
  %3048 = phi i32 [ %3003, %3002 ], [ %3046, %3043 ]
  %3049 = add nuw i32 %3004, 1
  %3050 = icmp eq i32 %3049, %2999
  br i1 %3050, label %3051, label %3002

; <label>:3051                                    ; preds = %3047
  br label %3052

; <label>:3052                                    ; preds = %3051, %2996
  %3053 = phi i32 [ %2997, %2996 ], [ %3048, %3051 ]
  %3054 = icmp eq i32 %3053, 1
  %3055 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %3056 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %3054, label %3057, label %3060

; <label>:3057                                    ; preds = %3052
  %3058 = load float, float* %3055, align 4
  %3059 = load float, float* %3056, align 4
  br label %3087

; <label>:3060                                    ; preds = %3052
  %3061 = load float, float* %3055, align 4
  %3062 = load float, float* %3056, align 4
  %3063 = fdiv fast float 1.000000e+00, %3062
  %3064 = fsub fast float %3061, %3063
  %3065 = icmp ugt i32 %3053, 1
  br i1 %3065, label %3066, label %3082

; <label>:3066                                    ; preds = %3060
  br label %3067

; <label>:3067                                    ; preds = %3067, %3066
  %3068 = phi float [ %3077, %3067 ], [ %3064, %3066 ]
  %3069 = phi float [ %3078, %3067 ], [ %3061, %3066 ]
  %3070 = phi i32 [ %3079, %3067 ], [ 1, %3066 ]
  %3071 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3070
  %3072 = load float, float* %3071, align 4
  %3073 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3070
  %3074 = load float, float* %3073, align 4
  %3075 = fdiv fast float 1.000000e+00, %3074
  %3076 = fsub fast float %3072, %3075
  %3077 = call float @dx.op.binary.f32(i32 36, float %3068, float %3076)  ; FMin(a,b)
  %3078 = call float @dx.op.binary.f32(i32 35, float %3069, float %3072)  ; FMax(a,b)
  %3079 = add nuw i32 %3070, 1
  %3080 = icmp eq i32 %3079, %3053
  br i1 %3080, label %3081, label %3067

; <label>:3081                                    ; preds = %3067
  br label %3082

; <label>:3082                                    ; preds = %3081, %3060
  %3083 = phi float [ %3064, %3060 ], [ %3077, %3081 ]
  %3084 = phi float [ %3061, %3060 ], [ %3078, %3081 ]
  %3085 = fsub fast float %3084, %3083
  %3086 = fdiv fast float 1.000000e+00, %3085
  br label %3087

; <label>:3087                                    ; preds = %3082, %3057
  %3088 = phi float [ %3058, %3057 ], [ %3084, %3082 ]
  %3089 = phi float [ %3059, %3057 ], [ %3086, %3082 ]
  %3090 = fadd fast float %2791, %3088
  %3091 = fmul fast float %3090, %3089
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3093 = fmul fast float %3092, 2.000000e+00
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %2929, %2929
  %3096 = fsub fast float %2930, %3095
  %3097 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3096)  ; FMax(a,b)
  %3098 = fdiv fast float 1.000000e+00, %3097
  %3099 = fmul fast float %2930, %2929
  %3100 = fsub fast float %2931, %3099
  %3101 = fsub fast float %3094, %2929
  %3102 = fmul fast float %3094, %3094
  %3103 = fsub fast float %3102, %2930
  %3104 = fmul fast float %3098, %3100
  %3105 = fmul fast float %3104, %3101
  %3106 = fsub fast float %3103, %3105
  %3107 = fmul fast float %2930, %2930
  %3108 = fsub fast float %2932, %3107
  %3109 = fmul fast float %3100, %3100
  %3110 = fmul fast float %3109, %3098
  %3111 = fsub fast float %3108, %3110
  %3112 = fdiv fast float %3106, %3111
  %3113 = fmul fast float %3112, %3100
  %3114 = fsub fast float %3101, %3113
  %3115 = fmul fast float %3114, %3098
  %3116 = fmul fast float %3115, %2929
  %3117 = fsub fast float 1.000000e+00, %3116
  %3118 = fmul fast float %3112, %2930
  %3119 = fsub fast float %3117, %3118
  %3120 = fmul fast float %3115, %3115
  %3121 = fmul fast float %3112, 4.000000e+00
  %3122 = fmul fast float %3121, %3119
  %3123 = fsub fast float %3120, %3122
  %3124 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3125 = fcmp fast oge float %3115, 0.000000e+00
  %3126 = fsub fast float -0.000000e+00, %3124
  %3127 = select i1 %3125, float %3126, float %3124
  %3128 = fsub fast float %3127, %3115
  %3129 = fdiv fast float %3128, %3112
  %3130 = fdiv fast float %3119, %3128
  %3131 = fmul fast float %3129, 5.000000e-01
  %3132 = fmul fast float %3130, 2.000000e+00
  %3133 = select i1 %3125, float %3131, float %3132
  %3134 = select i1 %3125, float %3132, float %3131
  %3135 = call float @dx.op.binary.f32(i32 35, float %3133, float %3134)  ; FMax(a,b)
  %3136 = call float @dx.op.binary.f32(i32 36, float %3133, float %3134)  ; FMin(a,b)
  %3137 = fcmp fast ogt float %3094, %3135
  %3138 = fsub fast float %3094, %3136
  %3139 = fsub fast float %3094, %3135
  %3140 = fsub fast float %3135, %3136
  %3141 = select i1 %3137, float %3139, float %3140
  %3142 = fmul float %3138, %3141
  %3143 = select i1 %3137, float %3136, float %3094
  %3144 = fcmp fast ogt float %3094, %3136
  %3145 = fmul fast float %3143, %3135
  %3146 = fadd fast float %3143, %3135
  %3147 = fmul fast float %3146, %2929
  %3148 = fadd fast float %3145, %2930
  %3149 = fsub fast float %3148, %3147
  %3150 = fdiv fast float %3149, %3142
  %3151 = select i1 %3144, float %3150, float 0.000000e+00
  %3152 = fsub fast float 1.000000e+00, %3151
  %3153 = select i1 %3137, float %3152, float %3151
  %3154 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3155 = extractvalue %dx.types.CBufRet.f32 %2914, 3
  %3156 = fmul fast float %3155, %3154
  %3157 = fsub fast float 1.000000e+00, %3156
  br label %3158

; <label>:3158                                    ; preds = %3087, %2799, %2764, %2760, %2726
  %3159 = phi float [ 1.000000e+00, %2726 ], [ %3157, %3087 ], [ 1.000000e+00, %2764 ], [ 1.000000e+00, %2799 ], [ 1.000000e+00, %2760 ]
  %3160 = fcmp fast ogt float %2756, 0.000000e+00
  br i1 %3160, label %3161, label %3167, !dx.controlflow.hints !102

; <label>:3161                                    ; preds = %3158
  %3162 = fadd fast float %2669, %2643
  %3163 = call float @dx.op.binary.f32(i32 35, float %3162, float 0.000000e+00)  ; FMax(a,b)
  %3164 = fadd fast float %3163, 0x3F10000000000000
  %3165 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %2658, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float %3164)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  br label %3167

; <label>:3167                                    ; preds = %3161, %3158
  %3168 = phi float [ %3166, %3161 ], [ 1.000000e+00, %3158 ]
  %3169 = fcmp fast ogt float %2754, 0.000000e+00
  br i1 %3169, label %3170, label %3176, !dx.controlflow.hints !103

; <label>:3170                                    ; preds = %3167
  %3171 = fadd fast float %2699, %2643
  %3172 = call float @dx.op.binary.f32(i32 35, float %3171, float 0.000000e+00)  ; FMax(a,b)
  %3173 = fadd fast float %3172, 0x3F10000000000000
  %3174 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %2650, float %2651, float undef, float undef, i32 0, i32 0, i32 undef, float %3173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  br label %3176

; <label>:3176                                    ; preds = %3170, %3167
  %3177 = phi float [ %3175, %3170 ], [ 1.000000e+00, %3167 ]
  %3178 = fcmp fast ogt float %2753, 0.000000e+00
  br i1 %3178, label %3179, label %3186, !dx.controlflow.hints !104

; <label>:3179                                    ; preds = %3176
  %3180 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %3181 = fadd fast float %3180, %2643
  %3182 = call float @dx.op.binary.f32(i32 35, float %3181, float 0.000000e+00)  ; FMax(a,b)
  %3183 = fadd fast float %3182, 0x3F10000000000000
  %3184 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %2635, float %2639, float undef, float undef, i32 0, i32 0, i32 undef, float %3183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3185 = extractvalue %dx.types.ResRet.f32 %3184, 0
  br label %3186

; <label>:3186                                    ; preds = %3179, %3176
  %3187 = phi float [ %3185, %3179 ], [ 1.000000e+00, %3176 ]
  %3188 = fsub fast float %3168, %3159
  %3189 = fmul fast float %3188, %2697
  %3190 = fadd fast float %3189, %3159
  %3191 = fsub fast float %3177, %3190
  %3192 = fmul fast float %3191, %2727
  %3193 = fadd fast float %3192, %3190
  %3194 = fsub fast float %3187, %3193
  %3195 = fmul fast float %3194, %2753
  %3196 = fadd fast float %3195, %3193
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 2
  %3199 = fcmp fast ogt float %3198, 0.000000e+00
  br i1 %3199, label %3200, label %3240, !dx.controlflow.hints !105

; <label>:3200                                    ; preds = %3186
  %3201 = fcmp fast ugt float %3198, 0.000000e+00
  br i1 %3201, label %3202, label %3237

; <label>:3202                                    ; preds = %3200
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.CBufRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.CBufRet.f32 %3203, 2
  %3207 = extractvalue %dx.types.CBufRet.f32 %3203, 3
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.CBufRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.CBufRet.f32 %3208, 2
  %3212 = extractvalue %dx.types.CBufRet.f32 %3208, 3
  %3213 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3214 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.CBufRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.CBufRet.f32 %3215, 2
  %3219 = fadd fast float %3216, %2612
  %3220 = fadd fast float %3217, %2613
  %3221 = fadd fast float %3218, %2614
  %3222 = fmul fast float %3219, %3204
  %3223 = call float @dx.op.tertiary.f32(i32 46, float %3205, float %3220, float %3222)  ; FMad(a,b,c)
  %3224 = call float @dx.op.tertiary.f32(i32 46, float %3206, float %3221, float %3223)  ; FMad(a,b,c)
  %3225 = fadd fast float %3224, %3207
  %3226 = fmul fast float %3219, %3209
  %3227 = call float @dx.op.tertiary.f32(i32 46, float %3210, float %3220, float %3226)  ; FMad(a,b,c)
  %3228 = call float @dx.op.tertiary.f32(i32 46, float %3211, float %3221, float %3227)  ; FMad(a,b,c)
  %3229 = fadd fast float %3228, %3212
  %3230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %3225, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = fmul fast float %3231, %3214
  %3233 = fadd fast float %3232, %3213
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3235 = fmul fast float %3234, %3198
  %3236 = fsub fast float 1.000000e+00, %3235
  br label %3237

; <label>:3237                                    ; preds = %3202, %3200
  %3238 = phi float [ %3236, %3202 ], [ 1.000000e+00, %3200 ]
  %3239 = fmul fast float %3238, %3196
  br label %3240

; <label>:3240                                    ; preds = %3237, %3186, %2592
  %3241 = phi float [ 1.000000e+00, %2592 ], [ %3239, %3237 ], [ %3196, %3186 ]
  %3242 = call float @dx.op.binary.f32(i32 36, float %3241, float %3241)  ; FMin(a,b)
  %3243 = call float @dx.op.binary.f32(i32 36, float %3241, float %3242)  ; FMin(a,b)
  %3244 = fcmp fast ogt float %3243, 0.000000e+00
  br i1 %3244, label %3245, label %3405, !dx.controlflow.hints !106

; <label>:3245                                    ; preds = %3240
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.CBufRet.f32 %3246, 1
  %3249 = extractvalue %dx.types.CBufRet.f32 %3246, 2
  %3250 = extractvalue %dx.types.CBufRet.f32 %3246, 3
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3255 = extractvalue %dx.types.CBufRet.f32 %3251, 3
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3260 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3261 = fmul fast float %3247, %2612
  %3262 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %3248, float %3261)  ; FMad(a,b,c)
  %3263 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %3249, float %3262)  ; FMad(a,b,c)
  %3264 = fadd fast float %3263, %3250
  %3265 = fmul fast float %3252, %2612
  %3266 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %3253, float %3265)  ; FMad(a,b,c)
  %3267 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %3254, float %3266)  ; FMad(a,b,c)
  %3268 = fadd fast float %3267, %3255
  %3269 = fmul fast float %3257, %2612
  %3270 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %3258, float %3269)  ; FMad(a,b,c)
  %3271 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %3259, float %3270)  ; FMad(a,b,c)
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.CBufRet.f32 %3272, 3
  %3276 = fmul fast float %3275, %3264
  %3277 = fmul fast float %3275, %3268
  %3278 = fadd fast float %3276, %3273
  %3279 = fadd fast float %3277, %3274
  %3280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3281 = extractvalue %dx.types.CBufRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.CBufRet.f32 %3280, 1
  %3283 = fsub fast float %3278, %3281
  %3284 = fsub fast float %3279, %3282
  %3285 = fcmp fast olt float %3283, 0.000000e+00
  %3286 = fcmp fast olt float %3284, 0.000000e+00
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 0
  %3289 = extractvalue %dx.types.CBufRet.f32 %3287, 1
  %3290 = extractvalue %dx.types.CBufRet.f32 %3287, 2
  %3291 = extractvalue %dx.types.CBufRet.f32 %3287, 3
  %3292 = select i1 %3285, float %3288, float %3290
  %3293 = select i1 %3286, float %3289, float %3291
  %3294 = fmul fast float %3292, %3283
  %3295 = fmul fast float %3293, %3284
  %3296 = call float @dx.op.unary.f32(i32 6, float %3294)  ; FAbs(value)
  %3297 = call float @dx.op.unary.f32(i32 6, float %3295)  ; FAbs(value)
  %3298 = extractvalue %dx.types.CBufRet.f32 %2607, 0
  %3299 = call float @dx.op.binary.f32(i32 35, float %3296, float %3297)  ; FMax(a,b)
  %3300 = fsub fast float %3298, %3299
  %3301 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  %3302 = fcmp fast ogt float %3301, 0.000000e+00
  br i1 %3302, label %3303, label %3344, !dx.controlflow.hints !107

; <label>:3303                                    ; preds = %3245
  %3304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %3278, float %3279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 1
  %3306 = fcmp fast ogt float %3305, 0.000000e+00
  br i1 %3306, label %3307, label %3339

; <label>:3307                                    ; preds = %3303
  %3308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %3278, float %3279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.ResRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.ResRet.f32 %3308, 2
  %3312 = extractvalue %dx.types.ResRet.f32 %3308, 3
  %3313 = fsub fast float 1.000000e+00, %3260
  %3314 = fsub fast float %3313, %3271
  %3315 = fmul fast float %3314, 0x400921FB60000000
  %3316 = fadd fast float %3315, 0x3FF921FB60000000
  %3317 = call float @dx.op.unary.f32(i32 13, float %3316)  ; Sin(value)
  %3318 = fadd fast float %3317, -1.000000e+00
  %3319 = fmul fast float %3318, 0x3FD45F3060000000
  %3320 = fmul fast float %3314, 0x401921FB60000000
  %3321 = fadd fast float %3320, 0x400921FB60000000
  %3322 = call float @dx.op.unary.f32(i32 13, float %3321)  ; Sin(value)
  %3323 = fadd fast float %3322, 0x3E7777A5C0000000
  %3324 = fmul fast float %3323, 0x3FC45F3060000000
  %3325 = fmul fast float %3314, 0x4022D97C80000000
  %3326 = fadd fast float %3325, 0x4012D97C80000000
  %3327 = call float @dx.op.unary.f32(i32 13, float %3326)  ; Sin(value)
  %3328 = fadd fast float %3327, 1.000000e+00
  %3329 = fmul fast float %3328, 0x3FBB2995E0000000
  %3330 = fmul fast float %3314, 0x402921FB60000000
  %3331 = fadd fast float %3330, 0x401921FB60000000
  %3332 = call float @dx.op.unary.f32(i32 13, float %3331)  ; Sin(value)
  %3333 = fadd fast float %3332, 0xBE8777A5C0000000
  %3334 = fmul fast float %3333, 0x3FB45F3060000000
  %3335 = call float @dx.op.dot4.f32(i32 56, float %3309, float %3310, float %3311, float %3312, float %3319, float %3324, float %3329, float %3334)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3336 = fmul fast float %3335, 0xBFF7154760000000
  %3337 = call float @dx.op.unary.f32(i32 21, float %3336)  ; Exp(value)
  %3338 = call float @dx.op.unary.f32(i32 7, float %3337)  ; Saturate(value)
  br label %3339

; <label>:3339                                    ; preds = %3307, %3303
  %3340 = phi float [ %3338, %3307 ], [ 1.000000e+00, %3303 ]
  %3341 = fadd fast float %3340, -1.000000e+00
  %3342 = fmul fast float %3341, %3301
  %3343 = fadd fast float %3342, 1.000000e+00
  br label %3344

; <label>:3344                                    ; preds = %3339, %3245
  %3345 = phi float [ %3343, %3339 ], [ 1.000000e+00, %3245 ]
  %3346 = fmul fast float %3345, %3241
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3351 = fadd fast float %3348, %133
  %3352 = fadd fast float %3349, %134
  %3353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3353, 1
  %3355 = fsub fast float -0.000000e+00, %3351
  %3356 = fsub fast float -0.000000e+00, %3352
  %3357 = fsub fast float %2162, %3350
  %3358 = fadd fast float %3357, %3354
  %3359 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3355, float %3356, float %3358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3360 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2593, float %2594, float %2595)  ; Dot3(ax,ay,az,bx,by,bz)
  %3361 = fdiv fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3361, %3359
  %3363 = fmul fast float %2593, %3362
  %3364 = fmul fast float %2594, %3362
  %3365 = fadd fast float %3363, %3351
  %3366 = fadd fast float %3364, %3352
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.CBufRet.f32 %3367, 1
  %3370 = fsub fast float %3365, %3368
  %3371 = fsub fast float %3366, %3369
  %3372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3373 = extractvalue %dx.types.CBufRet.f32 %3372, 2
  %3374 = extractvalue %dx.types.CBufRet.f32 %3372, 3
  %3375 = fmul fast float %3370, %3373
  %3376 = fmul fast float %3371, %3374
  %3377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.i32 %3377, 3
  %3379 = icmp eq i32 %3378, 0
  br i1 %3379, label %3385, label %3380

; <label>:3380                                    ; preds = %3344
  %3381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.f32 %3381, 1
  %3384 = extractvalue %dx.types.ResRet.f32 %3381, 2
  br label %3390

; <label>:3385                                    ; preds = %3344
  %3386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  br label %3390

; <label>:3390                                    ; preds = %3385, %3380
  %3391 = phi float [ %3382, %3380 ], [ %3387, %3385 ]
  %3392 = phi float [ %3383, %3380 ], [ %3388, %3385 ]
  %3393 = phi float [ %3384, %3380 ], [ %3389, %3385 ]
  %3394 = extractvalue %dx.types.CBufRet.f32 %3353, 2
  %3395 = fmul fast float %3394, %3391
  %3396 = extractvalue %dx.types.CBufRet.f32 %3353, 0
  %3397 = fsub fast float %3362, %3396
  %3398 = fsub fast float %3397, %3395
  %3399 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3398)  ; FMax(a,b)
  %3400 = fmul fast float %3399, %3392
  %3401 = call float @dx.op.binary.f32(i32 36, float %3393, float %3400)  ; FMin(a,b)
  %3402 = fmul fast float %3401, 0xBFF7154760000000
  %3403 = call float @dx.op.unary.f32(i32 21, float %3402)  ; Exp(value)
  %3404 = fmul fast float %3346, %3403
  br label %3405

; <label>:3405                                    ; preds = %3390, %3240
  %3406 = phi float [ %3404, %3390 ], [ %3241, %3240 ]
  %3407 = call float @dx.op.binary.f32(i32 36, float %3406, float %3406)  ; FMin(a,b)
  %3408 = call float @dx.op.binary.f32(i32 36, float %3406, float %3407)  ; FMin(a,b)
  %3409 = fcmp fast ogt float %3408, 0.000000e+00
  br i1 %3409, label %3410, label %3796, !dx.controlflow.hints !108

; <label>:3410                                    ; preds = %3405
  %3411 = fmul fast float %3406, %2604
  %3412 = fmul fast float %3406, %2605
  %3413 = fmul fast float %3406, %2606
  %3414 = fsub fast float %135, %1950
  %3415 = fcmp fast ogt float %3414, 0.000000e+00
  %3416 = fmul fast float %2593, 5.120000e+02
  %3417 = fmul fast float %2594, 5.120000e+02
  %3418 = fmul fast float %2595, 5.120000e+02
  %3419 = fadd fast float %3418, %135
  %3420 = fsub fast float %1950, %3419
  %3421 = fmul fast float %3420, 2.000000e+00
  %3422 = fadd fast float %3421, %3419
  %3423 = select i1 %3415, float %3422, float %3419
  %3424 = fsub fast float %3423, %135
  %3425 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3417, float %3424, float %3416, float %3417, float %3424)  ; Dot3(ax,ay,az,bx,by,bz)
  %3426 = call float @dx.op.unary.f32(i32 25, float %3425)  ; Rsqrt(value)
  %3427 = fmul fast float %3426, %3416
  %3428 = fmul fast float %3426, %3417
  %3429 = fmul fast float %3426, %3424
  %3430 = fsub fast float %1950, %135
  %3431 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3430)  ; Dot3(ax,ay,az,bx,by,bz)
  %3432 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3427, float %3428, float %3429)  ; Dot3(ax,ay,az,bx,by,bz)
  %3433 = fdiv fast float 1.000000e+00, %3432
  %3434 = fmul fast float %3433, %3431
  %3435 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3414, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3436 = fcmp fast ogt float %3435, 0.000000e+00
  %3437 = fcmp fast olt float %3435, 0.000000e+00
  %3438 = zext i1 %3436 to i32
  %3439 = zext i1 %3437 to i32
  %3440 = sub nsw i32 %3438, %3439
  %3441 = sitofp i32 %3440 to float
  %3442 = fsub fast float %3423, %1950
  %3443 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3417, float %3442, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3444 = fcmp fast ogt float %3443, 0.000000e+00
  %3445 = fcmp fast olt float %3443, 0.000000e+00
  %3446 = zext i1 %3444 to i32
  %3447 = zext i1 %3445 to i32
  %3448 = sub nsw i32 %3446, %3447
  %3449 = sitofp i32 %3448 to float
  %3450 = fcmp fast une float %3441, %3449
  br i1 %3450, label %3451, label %3461

; <label>:3451                                    ; preds = %3410
  %3452 = fmul fast float %3434, %3429
  %3453 = fmul fast float %3434, %3428
  %3454 = fmul fast float %3434, %3427
  %3455 = fmul fast float %3454, %3454
  %3456 = fmul fast float %3453, %3453
  %3457 = fadd fast float %3455, %3456
  %3458 = fmul fast float %3452, %3452
  %3459 = fadd fast float %3457, %3458
  %3460 = call float @dx.op.unary.f32(i32 24, float %3459)  ; Sqrt(value)
  br label %3471

; <label>:3461                                    ; preds = %3410
  %3462 = icmp slt i32 %3440, 0
  br i1 %3462, label %3463, label %3471

; <label>:3463                                    ; preds = %3461
  %3464 = fsub fast float %135, %3423
  %3465 = fmul fast float %3416, %3416
  %3466 = fmul fast float %3417, %3417
  %3467 = fadd fast float %3465, %3466
  %3468 = fmul fast float %3464, %3464
  %3469 = fadd fast float %3467, %3468
  %3470 = call float @dx.op.unary.f32(i32 24, float %3469)  ; Sqrt(value)
  br label %3471

; <label>:3471                                    ; preds = %3463, %3461, %3451
  %3472 = phi float [ %3460, %3451 ], [ %3470, %3463 ], [ 0.000000e+00, %3461 ]
  %3473 = fsub fast float -0.000000e+00, %3472
  %3474 = select i1 %3415, float -0.000000e+00, float %3473
  %3475 = fmul fast float %1951, 0x3FF7154760000000
  %3476 = fmul fast float %3475, %3474
  %3477 = fmul fast float %1952, 0x3FF7154760000000
  %3478 = fmul fast float %3477, %3474
  %3479 = fmul fast float %1953, 0x3FF7154760000000
  %3480 = fmul fast float %3479, %3474
  %3481 = call float @dx.op.unary.f32(i32 21, float %3476)  ; Exp(value)
  %3482 = call float @dx.op.unary.f32(i32 21, float %3478)  ; Exp(value)
  %3483 = call float @dx.op.unary.f32(i32 21, float %3480)  ; Exp(value)
  %3484 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3485 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3486 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3487 = fmul fast float %3411, %3484
  %3488 = fmul fast float %3412, %3485
  %3489 = fmul fast float %3413, %3486
  %3490 = fsub fast float %2593, %2150
  %3491 = fsub fast float %2594, %2149
  %3492 = fsub fast float %2595, %2148
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3491, float %3492, float %3490, float %3491, float %3492)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = call float @dx.op.unary.f32(i32 25, float %3493)  ; Rsqrt(value)
  %3495 = fmul fast float %3494, %3490
  %3496 = fmul fast float %3494, %3491
  %3497 = fmul fast float %3494, %3492
  %3498 = call float @dx.op.dot3.f32(i32 55, float %2593, float %2594, float %2595, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = call float @dx.op.dot3.f32(i32 55, float %2147, float %2146, float %2145, float %3495, float %3496, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3501 = fmul fast float %3500, %3500
  %3502 = fmul fast float %3501, %2178
  %3503 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3504 = fmul fast float %3503, %3500
  %3505 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float %3495, float %3496, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = fmul fast float %3505, %3505
  %3507 = call float @dx.op.unary.f32(i32 6, float %3498)  ; FAbs(value)
  %3508 = call float @dx.op.binary.f32(i32 35, float %2561, float 0x3F847AE140000000)  ; FMax(a,b)
  %3509 = fmul fast float %3508, %3508
  %3510 = fmul fast float %3509, %3509
  %3511 = fsub fast float 1.000000e+00, %3510
  %3512 = fmul fast float %2165, %2165
  %3513 = fmul fast float %3512, %3511
  %3514 = fadd fast float %3513, %3510
  %3515 = bitcast float %3514 to i32
  %3516 = ashr i32 %3515, 1
  %3517 = add nsw i32 %3516, 532487669
  %3518 = bitcast i32 %3517 to float
  %3519 = fadd fast float %3518, %2165
  %3520 = fmul fast float %3510, %3506
  %3521 = fsub fast float 1.000000e+00, %3506
  %3522 = fadd fast float %3521, %3520
  %3523 = fmul fast float %3507, %3507
  %3524 = fmul fast float %3523, %3511
  %3525 = fadd fast float %3524, %3510
  %3526 = bitcast float %3525 to i32
  %3527 = ashr i32 %3526, 1
  %3528 = add nsw i32 %3527, 532487669
  %3529 = bitcast i32 %3528 to float
  %3530 = fadd fast float %3529, %3507
  %3531 = fmul fast float %3522, %3522
  %3532 = fmul fast float %3531, %3519
  %3533 = fmul fast float %3532, %3530
  %3534 = fdiv fast float 0x3FF0A00000000000, %3533
  %3535 = fmul fast float %3534, %3510
  %3536 = fmul fast float %2423, 0x3FF9999980000000
  %3537 = fsub fast float 5.000000e+00, %3536
  %3538 = call float @dx.op.unary.f32(i32 6, float %3499)  ; FAbs(value)
  %3539 = fsub fast float 1.000000e+00, %3538
  %3540 = fmul fast float %2423, 0x41D9660740000000
  %3541 = fadd fast float %3540, 0xC1EFBF8940000000
  %3542 = bitcast float %3539 to i32
  %3543 = sitofp i32 %3542 to float
  %3544 = fmul fast float %3543, %3537
  %3545 = fadd fast float %3541, %3544
  %3546 = fptosi float %3545 to i32
  %3547 = bitcast i32 %3546 to float
  %3548 = fsub fast float 1.000000e+00, %2151
  %3549 = fsub fast float 1.000000e+00, %2152
  %3550 = fsub fast float 1.000000e+00, %2163
  %3551 = fmul fast float %3547, %3548
  %3552 = fmul fast float %3547, %3549
  %3553 = fmul fast float %3547, %3550
  %3554 = fadd fast float %3551, %2151
  %3555 = fadd fast float %3552, %2152
  %3556 = fadd fast float %3553, %2163
  br i1 %2446, label %3557, label %3580

; <label>:3557                                    ; preds = %3471
  %3558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1496, float %3538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3559 = extractvalue %dx.types.ResRet.f32 %3558, 0
  %3560 = extractvalue %dx.types.ResRet.f32 %3558, 1
  %3561 = extractvalue %dx.types.ResRet.f32 %3558, 2
  %3562 = fadd fast float %3559, -5.000000e-01
  %3563 = fadd fast float %3560, -5.000000e-01
  %3564 = fadd fast float %3561, -5.000000e-01
  %3565 = fmul fast float %2151, 4.000000e+00
  %3566 = fmul fast float %3565, %3548
  %3567 = fmul fast float %3566, %3562
  %3568 = fmul fast float %2152, 4.000000e+00
  %3569 = fmul fast float %3568, %3549
  %3570 = fmul fast float %3569, %3563
  %3571 = fmul fast float %2163, 4.000000e+00
  %3572 = fmul fast float %3571, %3550
  %3573 = fmul fast float %3572, %3564
  %3574 = fadd fast float %3567, %3554
  %3575 = fadd fast float %3570, %3555
  %3576 = fadd fast float %3573, %3556
  %3577 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3578 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3579 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  br label %3580

; <label>:3580                                    ; preds = %3557, %3471
  %3581 = phi float [ %3577, %3557 ], [ %3554, %3471 ]
  %3582 = phi float [ %3578, %3557 ], [ %3555, %3471 ]
  %3583 = phi float [ %3579, %3557 ], [ %3556, %3471 ]
  %3584 = fmul fast float %3498, 9.843750e-01
  %3585 = fadd fast float %3584, 7.812500e-03
  %3586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3585, float %2427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3591 = fsub fast float %3589, %3587
  %3592 = fsub fast float %3590, %3588
  %3593 = fmul fast float %3591, %2433
  %3594 = fmul fast float %3592, %2433
  %3595 = fadd fast float %3593, %3587
  %3596 = fadd fast float %3594, %3588
  %3597 = fmul fast float %3595, %2151
  %3598 = fmul fast float %3595, %2152
  %3599 = fmul fast float %3595, %2163
  %3600 = fadd fast float %3597, %3596
  %3601 = fadd fast float %3598, %3596
  %3602 = fadd fast float %3599, %3596
  br i1 %2446, label %3603, label %3626

; <label>:3603                                    ; preds = %3580
  %3604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1496, float %3498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3608 = fadd fast float %3605, -5.000000e-01
  %3609 = fadd fast float %3606, -5.000000e-01
  %3610 = fadd fast float %3607, -5.000000e-01
  %3611 = fmul fast float %2151, 4.000000e+00
  %3612 = fmul fast float %3611, %3548
  %3613 = fmul fast float %3612, %3608
  %3614 = fmul fast float %2152, 4.000000e+00
  %3615 = fmul fast float %3614, %3549
  %3616 = fmul fast float %3615, %3609
  %3617 = fmul fast float %2163, 4.000000e+00
  %3618 = fmul fast float %3617, %3550
  %3619 = fmul fast float %3618, %3610
  %3620 = fadd fast float %3613, %3600
  %3621 = fadd fast float %3616, %3601
  %3622 = fadd fast float %3619, %3602
  %3623 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3624 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  %3625 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  br label %3626

; <label>:3626                                    ; preds = %3603, %3580
  %3627 = phi float [ %3623, %3603 ], [ %3600, %3580 ]
  %3628 = phi float [ %3624, %3603 ], [ %3601, %3580 ]
  %3629 = phi float [ %3625, %3603 ], [ %3602, %3580 ]
  %3630 = call float @dx.op.binary.f32(i32 35, float %3628, float %3629)  ; FMax(a,b)
  %3631 = call float @dx.op.binary.f32(i32 35, float %3627, float %3630)  ; FMax(a,b)
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = call float @dx.op.binary.f32(i32 35, float %3507, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3634 = fdiv fast float %896, %3633
  %3635 = fmul fast float %2501, %3634
  %3636 = fmul fast float %2503, %3634
  %3637 = fmul fast float %2505, %3634
  %3638 = call float @dx.op.unary.f32(i32 21, float %3635)  ; Exp(value)
  %3639 = call float @dx.op.unary.f32(i32 21, float %3636)  ; Exp(value)
  %3640 = call float @dx.op.unary.f32(i32 21, float %3637)  ; Exp(value)
  %3641 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3642 = call float @dx.op.unary.f32(i32 7, float %3639)  ; Saturate(value)
  %3643 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3644 = select i1 %2498, float %3641, float 0.000000e+00
  %3645 = select i1 %2499, float %3642, float 0.000000e+00
  %3646 = select i1 %2500, float %3643, float 0.000000e+00
  %3647 = fsub fast float -0.000000e+00, %2157
  %3648 = fsub fast float -0.000000e+00, %2158
  %3649 = fsub fast float -0.000000e+00, %2159
  %3650 = call float @dx.op.dot3.f32(i32 55, float %2593, float %2594, float %2595, float %3647, float %3648, float %3649)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = fmul fast float %3651, 9.843750e-01
  %3653 = fadd fast float %3652, 7.812500e-03
  %3654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3653, float %2427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3659 = fsub fast float %3657, %3655
  %3660 = fsub fast float %3658, %3656
  %3661 = fmul fast float %3659, %2433
  %3662 = fmul fast float %3660, %2433
  %3663 = fadd fast float %3661, %3655
  %3664 = fadd fast float %3662, %3656
  %3665 = fmul fast float %3663, %2151
  %3666 = fmul fast float %3663, %2152
  %3667 = fmul fast float %3663, %2163
  %3668 = fadd fast float %3665, %3664
  %3669 = fadd fast float %3666, %3664
  %3670 = fadd fast float %3667, %3664
  br i1 %2446, label %3671, label %3694

; <label>:3671                                    ; preds = %3626
  %3672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1496, float %3651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = fadd fast float %3673, -5.000000e-01
  %3677 = fadd fast float %3674, -5.000000e-01
  %3678 = fadd fast float %3675, -5.000000e-01
  %3679 = fmul fast float %2151, 4.000000e+00
  %3680 = fmul fast float %3679, %3548
  %3681 = fmul fast float %3680, %3676
  %3682 = fmul fast float %2152, 4.000000e+00
  %3683 = fmul fast float %3682, %3549
  %3684 = fmul fast float %3683, %3677
  %3685 = fmul fast float %2163, 4.000000e+00
  %3686 = fmul fast float %3685, %3550
  %3687 = fmul fast float %3686, %3678
  %3688 = fadd fast float %3681, %3668
  %3689 = fadd fast float %3684, %3669
  %3690 = fadd fast float %3687, %3670
  %3691 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3692 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3693 = call float @dx.op.unary.f32(i32 7, float %3690)  ; Saturate(value)
  br label %3694

; <label>:3694                                    ; preds = %3671, %3626
  %3695 = phi float [ %3691, %3671 ], [ %3668, %3626 ]
  %3696 = phi float [ %3692, %3671 ], [ %3669, %3626 ]
  %3697 = phi float [ %3693, %3671 ], [ %3670, %3626 ]
  %3698 = call float @dx.op.binary.f32(i32 35, float %3696, float %3697)  ; FMax(a,b)
  %3699 = call float @dx.op.binary.f32(i32 35, float %3695, float %3698)  ; FMax(a,b)
  %3700 = fsub fast float 1.000000e+00, %3699
  %3701 = fmul fast float %2561, %2566
  %3702 = fadd fast float %2568, %3701
  %3703 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3704 = fsub fast float %2593, %2171
  %3705 = fsub fast float %2594, %2172
  %3706 = fsub fast float %2595, %2173
  %3707 = call float @dx.op.dot3.f32(i32 55, float %3704, float %3705, float %3706, float %3704, float %3705, float %3706)  ; Dot3(ax,ay,az,bx,by,bz)
  %3708 = call float @dx.op.unary.f32(i32 25, float %3707)  ; Rsqrt(value)
  %3709 = fmul fast float %3708, %3704
  %3710 = fmul fast float %3708, %3705
  %3711 = fmul fast float %3708, %3706
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3648, float %3649, float %3709, float %3710, float %3711)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = fmul fast float %3712, %3712
  %3714 = call float @dx.op.unary.f32(i32 6, float %3651)  ; FAbs(value)
  %3715 = call float @dx.op.binary.f32(i32 35, float %3703, float 0x3F847AE140000000)  ; FMax(a,b)
  %3716 = fmul fast float %3715, %3715
  %3717 = fmul fast float %3716, %3716
  %3718 = fsub fast float 1.000000e+00, %3717
  %3719 = fmul fast float %3512, %3718
  %3720 = fadd fast float %3719, %3717
  %3721 = bitcast float %3720 to i32
  %3722 = ashr i32 %3721, 1
  %3723 = add nsw i32 %3722, 532487669
  %3724 = bitcast i32 %3723 to float
  %3725 = fadd fast float %3724, %2165
  %3726 = fmul fast float %3717, %3713
  %3727 = fsub fast float 1.000000e+00, %3713
  %3728 = fadd fast float %3727, %3726
  %3729 = fmul fast float %3714, %3714
  %3730 = fmul fast float %3729, %3718
  %3731 = fadd fast float %3730, %3717
  %3732 = bitcast float %3731 to i32
  %3733 = ashr i32 %3732, 1
  %3734 = add nsw i32 %3733, 532487669
  %3735 = bitcast i32 %3734 to float
  %3736 = fadd fast float %3735, %3714
  %3737 = fmul fast float %3728, %3728
  %3738 = fmul fast float %3737, %3725
  %3739 = fmul fast float %3738, %3736
  %3740 = fdiv fast float 0x3FF0A00000000000, %3739
  %3741 = fmul fast float %3740, %3717
  %3742 = fmul fast float %3651, %3644
  %3743 = fmul fast float %3651, %3645
  %3744 = fmul fast float %3651, %3646
  %3745 = fmul fast float %3742, %3700
  %3746 = fmul fast float %3745, %3741
  %3747 = fmul fast float %3743, %3700
  %3748 = fmul fast float %3747, %3741
  %3749 = fmul fast float %3744, %3700
  %3750 = fmul fast float %3749, %3741
  %3751 = fmul fast float %3581, %3535
  %3752 = fmul fast float %3582, %3535
  %3753 = fmul fast float %3583, %3535
  %3754 = fsub fast float 1.000000e+00, %3499
  %3755 = bitcast float %3754 to i32
  %3756 = sitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 5.000000e+00
  %3758 = fadd fast float %3757, 0xC1EFBF8940000000
  %3759 = fptosi float %3758 to i32
  %3760 = bitcast i32 %3759 to float
  %3761 = fmul fast float %3760, %1495
  %3762 = fmul fast float %3632, %3761
  %3763 = fmul fast float %3762, %2493
  %3764 = fmul fast float %3762, %2494
  %3765 = fmul fast float %3762, %2495
  %3766 = fadd fast float %3763, %3751
  %3767 = fadd fast float %3764, %3752
  %3768 = fadd fast float %3765, %3753
  %3769 = fmul fast float %3766, %3504
  %3770 = fmul fast float %3767, %3504
  %3771 = fmul fast float %3768, %3504
  %3772 = fmul fast float %3504, %3487
  %3773 = fmul fast float %3772, %3632
  %3774 = fmul fast float %3504, %3488
  %3775 = fmul fast float %3774, %3632
  %3776 = fmul fast float %3504, %3489
  %3777 = fmul fast float %3776, %3632
  %3778 = fadd fast float %3769, %3746
  %3779 = fadd fast float %3770, %3748
  %3780 = fadd fast float %3771, %3750
  %3781 = fmul fast float %3778, %3487
  %3782 = fmul fast float %3779, %3488
  %3783 = fmul fast float %3780, %3489
  %3784 = fadd fast float %3773, %2583
  %3785 = fmul fast float %3784, %1519
  %3786 = fadd fast float %3775, %2585
  %3787 = fmul fast float %3786, %1519
  %3788 = fadd fast float %3777, %2587
  %3789 = fmul fast float %3788, %1519
  %3790 = fadd fast float %3781, %2546
  %3791 = fmul fast float %3790, %1519
  %3792 = fadd fast float %3782, %2549
  %3793 = fmul fast float %3792, %1519
  %3794 = fadd fast float %3783, %2552
  %3795 = fmul fast float %3794, %1519
  br label %3796

; <label>:3796                                    ; preds = %3694, %3405, %2473
  %3797 = phi float [ %2547, %2473 ], [ %2547, %3405 ], [ %3791, %3694 ]
  %3798 = phi float [ %2550, %2473 ], [ %2550, %3405 ], [ %3793, %3694 ]
  %3799 = phi float [ %2553, %2473 ], [ %2553, %3405 ], [ %3795, %3694 ]
  %3800 = phi float [ %2584, %2473 ], [ %2584, %3405 ], [ %3785, %3694 ]
  %3801 = phi float [ %2586, %2473 ], [ %2586, %3405 ], [ %3787, %3694 ]
  %3802 = phi float [ %2588, %2473 ], [ %2588, %3405 ], [ %3789, %3694 ]
  %3803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.i32 %3803, 0
  %3805 = icmp eq i32 %3804, 0
  br i1 %3805, label %4580, label %3806

; <label>:3806                                    ; preds = %3796
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 3
  %3810 = fmul fast float %3808, %85
  %3811 = fmul fast float %3809, %86
  %3812 = fptoui float %3810 to i32
  %3813 = fptoui float %3811 to i32
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.CBufRet.f32 %3814, 2
  %3817 = extractvalue %dx.types.CBufRet.f32 %3814, 3
  %3818 = fadd fast float %76, -4.000000e+00
  %3819 = call float @dx.op.binary.f32(i32 35, float %3818, float 0.000000e+00)  ; FMax(a,b)
  %3820 = fadd fast float %3819, %3815
  %3821 = fmul fast float %3820, %3816
  %3822 = call float @dx.op.unary.f32(i32 23, float %3821)  ; Log(value)
  %3823 = fmul fast float %3822, %3817
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 2
  %3826 = fmul fast float %3823, %3825
  %3827 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.i32 %3828, 1
  %3830 = add i32 %3829, -1
  %3831 = uitofp i32 %3829 to float
  %3832 = fmul fast float %3831, %3827
  %3833 = fptoui float %3832 to i32
  %3834 = call i32 @dx.op.binary.i32(i32 40, i32 %3833, i32 %3830)  ; UMin(a,b)
  %3835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.i32 %3835, 2
  %3837 = extractvalue %dx.types.CBufRet.i32 %3835, 3
  %3838 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3813, i32 %3836, i32 %3812)  ; UMad(a,b,c)
  %3839 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3834, i32 %3837, i32 %3838)  ; UMad(a,b,c)
  %3840 = add nsw i32 %3804, -1
  %3841 = call i32 @dx.op.binary.i32(i32 37, i32 %3840, i32 0)  ; IMax(a,b)
  %3842 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %3843 = fptoui float %3842 to i32
  %3844 = lshr i32 %3843, 5
  %3845 = call i32 @dx.op.binary.i32(i32 40, i32 %3844, i32 8191)  ; UMin(a,b)
  %3846 = shl i32 %3845, 2
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = lshr i32 %3848, 16
  %3850 = and i32 %3848, 65535
  %3851 = lshr i32 %3848, 21
  %3852 = lshr i32 %3850, 5
  %3853 = call i32 @dx.op.binary.i32(i32 40, i32 %3852, i32 %3841)  ; UMin(a,b)
  %3854 = icmp ugt i32 %3851, %3853
  br i1 %3854, label %4580, label %3855

; <label>:3855                                    ; preds = %3806
  br label %3856

; <label>:3856                                    ; preds = %4570, %3855
  %3857 = phi i32 [ %4577, %4570 ], [ %3851, %3855 ]
  %3858 = phi float [ %4571, %4570 ], [ %3797, %3855 ]
  %3859 = phi float [ %4572, %4570 ], [ %3798, %3855 ]
  %3860 = phi float [ %4573, %4570 ], [ %3799, %3855 ]
  %3861 = phi float [ %4574, %4570 ], [ %3800, %3855 ]
  %3862 = phi float [ %4575, %4570 ], [ %3801, %3855 ]
  %3863 = phi float [ %4576, %4570 ], [ %3802, %3855 ]
  %3864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.i32 %3864, 0
  %3866 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3839, i32 %3865, i32 %3857)  ; UMad(a,b,c)
  %3867 = shl i32 %3866, 2
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = shl i32 %3857, 5
  %3871 = sub nsw i32 %3849, %3870
  %3872 = call i32 @dx.op.binary.i32(i32 37, i32 %3871, i32 0)  ; IMax(a,b)
  %3873 = call i32 @dx.op.binary.i32(i32 38, i32 %3872, i32 31)  ; IMin(a,b)
  %3874 = sub nsw i32 1, %3849
  %3875 = add nsw i32 %3874, %3850
  %3876 = call i32 @dx.op.binary.i32(i32 37, i32 %3875, i32 0)  ; IMax(a,b)
  %3877 = call i32 @dx.op.binary.i32(i32 38, i32 %3876, i32 32)  ; IMin(a,b)
  %3878 = and i32 %3877, 31
  %3879 = shl i32 -1, %3878
  %3880 = xor i32 %3879, -1
  %3881 = and i32 %3873, 31
  %3882 = shl i32 %3880, %3881
  %3883 = icmp eq i32 %3877, 32
  %3884 = select i1 %3883, i32 -1, i32 %3882
  %3885 = and i32 %3884, %3869
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %4570, label %3887

; <label>:3887                                    ; preds = %3856
  br label %3888

; <label>:3888                                    ; preds = %4023, %3887
  %3889 = phi i32 [ %3900, %4023 ], [ %3885, %3887 ]
  %3890 = phi float [ %4024, %4023 ], [ %3858, %3887 ]
  %3891 = phi float [ %4025, %4023 ], [ %3859, %3887 ]
  %3892 = phi float [ %4026, %4023 ], [ %3860, %3887 ]
  %3893 = phi float [ %4027, %4023 ], [ %3861, %3887 ]
  %3894 = phi float [ %4028, %4023 ], [ %3862, %3887 ]
  %3895 = phi float [ %4029, %4023 ], [ %3863, %3887 ]
  %3896 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3889)  ; FirstbitLo(value)
  %3897 = add i32 %3896, %3870
  %3898 = and i32 %3896, 31
  %3899 = shl i32 1, %3898
  %3900 = xor i32 %3899, %3889
  %3901 = mul i32 %3897, 112
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = or i32 %3901, 12
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = add i32 %3901, 16
  %3910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.ResRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.ResRet.f32 %3910, 2
  %3914 = add i32 %3901, 28
  %3915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.i32 %3915, 0
  %3917 = add i32 %3901, 44
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = add i32 %3901, 48
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = add i32 %3901, 64
  %3927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = add i32 %3901, 80
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3936 = add i32 %3901, 92
  %3937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.i32 %3937, 0
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3904, float %3905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = select i1 %195, float %3934, float %3903
  %3941 = select i1 %195, float %3939, float %3904
  %3942 = select i1 %195, float %3935, float %3905
  %3943 = and i32 %3938, 65535
  %3944 = uitofp i32 %3943 to float
  %3945 = lshr i32 %3938, 16
  %3946 = uitofp i32 %3945 to float
  %3947 = and i32 %3916, 65535
  %3948 = and i32 %3916, 50331648
  %3949 = icmp slt i32 %3916, 0
  %3950 = icmp eq i32 %3948, 33554432
  %3951 = fsub fast float %3922, %133
  %3952 = fsub fast float %3923, %134
  %3953 = fsub fast float %3924, %135
  %3954 = call float @dx.op.dot3.f32(i32 55, float %3951, float %3952, float %3953, float %3951, float %3952, float %3953)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = call float @dx.op.unary.f32(i32 24, float %3954)  ; Sqrt(value)
  %3956 = fdiv fast float 1.000000e+00, %3955
  %3957 = fmul fast float %3956, %3951
  %3958 = fmul fast float %3956, %3952
  %3959 = fmul fast float %3956, %3953
  %3960 = fadd fast float %3955, %3908
  %3961 = fdiv fast float 1.000000e+00, %3960
  %3962 = fmul float %3919, %3961
  %3963 = fmul float %3962, %3962
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  br i1 %3950, label %3965, label %3986

; <label>:3965                                    ; preds = %3888
  %3966 = fmul fast float %3930, %3911
  %3967 = fmul fast float %3930, %3912
  %3968 = fmul fast float %3930, %3913
  %3969 = fadd fast float %3951, %3966
  %3970 = fadd fast float %3952, %3967
  %3971 = fadd fast float %3953, %3968
  %3972 = call float @dx.op.dot3.f32(i32 55, float %3969, float %3970, float %3971, float %3969, float %3970, float %3971)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = call float @dx.op.unary.f32(i32 25, float %3972)  ; Rsqrt(value)
  %3974 = fmul fast float %3973, %3969
  %3975 = fmul fast float %3973, %3970
  %3976 = fmul fast float %3973, %3971
  %3977 = fsub fast float %133, %3922
  %3978 = fsub fast float %134, %3923
  %3979 = fsub fast float %135, %3924
  %3980 = fsub fast float -0.000000e+00, %3977
  %3981 = fsub fast float -0.000000e+00, %3978
  %3982 = fsub fast float -0.000000e+00, %3979
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3980, float %3981, float %3982, float %3911, float %3912, float %3913)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = fcmp fast ogt float %3983, 0.000000e+00
  %3985 = uitofp i1 %3984 to float
  br label %3986

; <label>:3986                                    ; preds = %3965, %3888
  %3987 = phi float [ %3985, %3965 ], [ 1.000000e+00, %3888 ]
  %3988 = phi float [ %3974, %3965 ], [ %3957, %3888 ]
  %3989 = phi float [ %3975, %3965 ], [ %3958, %3888 ]
  %3990 = phi float [ %3976, %3965 ], [ %3959, %3888 ]
  %3991 = call float @dx.op.dot3.f32(i32 55, float %3911, float %3912, float %3913, float %3988, float %3989, float %3990)  ; Dot3(ax,ay,az,bx,by,bz)
  %3992 = fmul fast float %3991, %3991
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = fsub fast float 1.000000e+00, %3993
  %3995 = fmul fast float %3994, 5.000000e-01
  %3996 = fcmp fast ogt float %3991, 0.000000e+00
  %3997 = fsub fast float 1.000000e+00, %3995
  %3998 = select i1 %3996, float %3995, float %3997
  %3999 = fmul fast float %3998, %3946
  %4000 = fadd fast float %3999, %3944
  %4001 = fmul fast float %4000, 0x3EF0001000000000
  %4002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %4001, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = fmul fast float %3991, %3928
  %4005 = fadd fast float %4004, %3929
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = select i1 %3950, float 1.000000e+00, float %4006
  %4008 = select i1 %3950, float %4006, float 1.000000e+00
  %4009 = fmul fast float %3955, %3925
  %4010 = fsub fast float 1.000000e+00, %4009
  %4011 = fmul fast float %4010, %3931
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = fmul fast float %4012, %4008
  %4014 = fmul fast float %4013, 2.000000e+00
  %4015 = fsub fast float 3.000000e+00, %4014
  %4016 = fmul fast float %4003, %3987
  %4017 = fmul fast float %4013, %4013
  %4018 = fmul fast float %4017, %4016
  %4019 = fmul fast float %4018, %4015
  %4020 = call float @dx.op.binary.f32(i32 36, float %4019, float %4019)  ; FMin(a,b)
  %4021 = call float @dx.op.binary.f32(i32 36, float %4019, float %4020)  ; FMin(a,b)
  %4022 = fcmp fast ogt float %4021, 0.000000e+00
  br i1 %4022, label %4031, label %4023, !dx.controlflow.hints !109

; <label>:4023                                    ; preds = %4523, %4131, %3986
  %4024 = phi float [ %3890, %4131 ], [ %3890, %3986 ], [ %4566, %4523 ]
  %4025 = phi float [ %3891, %4131 ], [ %3891, %3986 ], [ %4567, %4523 ]
  %4026 = phi float [ %3892, %4131 ], [ %3892, %3986 ], [ %4568, %4523 ]
  %4027 = phi float [ %3893, %4131 ], [ %3893, %3986 ], [ %4560, %4523 ]
  %4028 = phi float [ %3894, %4131 ], [ %3894, %3986 ], [ %4561, %4523 ]
  %4029 = phi float [ %3895, %4131 ], [ %3895, %3986 ], [ %4562, %4523 ]
  %4030 = icmp eq i32 %3889, %3899
  br i1 %4030, label %4569, label %3888

; <label>:4031                                    ; preds = %3986
  %4032 = icmp eq i32 %3947, 255
  br i1 %4032, label %4131, label %4033, !dx.controlflow.hints !110

; <label>:4033                                    ; preds = %4031
  %4034 = mul nuw nsw i32 %3947, 176
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = add nuw nsw i32 %4034, 16
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = add nuw nsw i32 %4034, 32
  %4045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = add nuw nsw i32 %4034, 48
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4054 = extractvalue %dx.types.ResRet.f32 %4050, 3
  %4055 = add nuw nsw i32 %4034, 64
  %4056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = extractvalue %dx.types.ResRet.f32 %4056, 3
  %4061 = add nuw nsw i32 %4034, 80
  %4062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %4062, 2
  %4066 = extractvalue %dx.types.ResRet.f32 %4062, 3
  %4067 = add nuw nsw i32 %4034, 96
  %4068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.ResRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.ResRet.f32 %4068, 2
  %4072 = extractvalue %dx.types.ResRet.f32 %4068, 3
  %4073 = bitcast float %4043 to i32
  %4074 = fmul fast float %4048, %88
  %4075 = fmul fast float %4048, %89
  %4076 = fmul fast float %4048, %90
  %4077 = fadd fast float %4074, %133
  %4078 = fadd fast float %4075, %134
  %4079 = fadd fast float %4076, %135
  %4080 = fmul fast float %4077, %4051
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4057, float %4080)  ; FMad(a,b,c)
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4063, float %4081)  ; FMad(a,b,c)
  %4083 = fadd fast float %4082, %4069
  %4084 = fmul fast float %4077, %4052
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4058, float %4084)  ; FMad(a,b,c)
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4064, float %4085)  ; FMad(a,b,c)
  %4087 = fadd fast float %4086, %4070
  %4088 = fmul fast float %4077, %4053
  %4089 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4059, float %4088)  ; FMad(a,b,c)
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4065, float %4089)  ; FMad(a,b,c)
  %4091 = fadd fast float %4090, %4071
  %4092 = fmul fast float %4077, %4054
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4060, float %4092)  ; FMad(a,b,c)
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4066, float %4093)  ; FMad(a,b,c)
  %4095 = fadd fast float %4094, %4072
  %4096 = fdiv fast float %4083, %4095
  %4097 = fdiv fast float %4087, %4095
  %4098 = fdiv fast float %4091, %4095
  %4099 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4098)  ; FMax(a,b)
  %4100 = fmul fast float %206, 0x401921FB60000000
  %4101 = call float @dx.op.unary.f32(i32 13, float %4100)  ; Sin(value)
  %4102 = call float @dx.op.unary.f32(i32 12, float %4100)  ; Cos(value)
  %4103 = fsub fast float -0.000000e+00, %4101
  %4104 = fmul fast float %4038, 5.000000e-01
  %4105 = call float @dx.op.dot2.f32(i32 54, float %206, float %206, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4106 = call float @dx.op.unary.f32(i32 22, float %4105)  ; Frc(value)
  %4107 = fmul fast float %4106, 0x404A7DD040000000
  %4108 = call float @dx.op.unary.f32(i32 22, float %4107)  ; Frc(value)
  %4109 = fmul fast float %4108, %4047
  %4110 = fadd fast float %4109, %4104
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4103, float 0.000000e+00)  ; FMad(a,b,c)
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4102, float 0.000000e+00)  ; FMad(a,b,c)
  %4113 = fadd fast float %4111, %4096
  %4114 = fadd fast float %4112, %4097
  %4115 = fmul fast float %4113, %4042
  %4116 = fmul fast float %4114, %4042
  %4117 = call float @dx.op.binary.f32(i32 35, float %4115, float %4038)  ; FMax(a,b)
  %4118 = call float @dx.op.binary.f32(i32 35, float %4116, float %4038)  ; FMax(a,b)
  %4119 = call float @dx.op.binary.f32(i32 36, float %4117, float %4039)  ; FMin(a,b)
  %4120 = call float @dx.op.binary.f32(i32 36, float %4118, float %4039)  ; FMin(a,b)
  %4121 = fadd fast float %4119, %4036
  %4122 = fadd fast float %4120, %4037
  %4123 = uitofp i32 %4073 to float
  %4124 = fadd fast float %4099, %4046
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %4121, float %4122, float %4123, float undef, i32 0, i32 0, i32 undef, float %4124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fadd fast float %4126, -1.000000e+00
  %4128 = fmul fast float %4127, %4007
  %4129 = fadd fast float %4128, 1.000000e+00
  %4130 = fmul fast float %4129, %4019
  br label %4131

; <label>:4131                                    ; preds = %4033, %4031
  %4132 = phi float [ %4130, %4033 ], [ %4019, %4031 ]
  %4133 = call float @dx.op.binary.f32(i32 36, float %4132, float %4132)  ; FMin(a,b)
  %4134 = call float @dx.op.binary.f32(i32 36, float %4132, float %4133)  ; FMin(a,b)
  %4135 = fcmp fast ogt float %4134, 0.000000e+00
  br i1 %4135, label %4136, label %4023, !dx.controlflow.hints !111

; <label>:4136                                    ; preds = %4131
  %4137 = fmul fast float %4132, %3940
  %4138 = fmul fast float %4132, %3941
  %4139 = fmul fast float %4132, %3942
  %4140 = fsub fast float %3924, %1950
  %4141 = fcmp fast ogt float %4140, 0.000000e+00
  %4142 = fsub fast float %135, %1950
  %4143 = fcmp fast ogt float %4142, 0.000000e+00
  %4144 = xor i1 %4143, %4141
  %4145 = fsub fast float %1950, %3924
  %4146 = fmul fast float %4145, 2.000000e+00
  %4147 = fadd fast float %4146, %3924
  %4148 = select i1 %4144, float %3924, float %4147
  %4149 = fsub fast float %4148, %135
  %4150 = call float @dx.op.dot3.f32(i32 55, float %3951, float %3952, float %4149, float %3951, float %3952, float %4149)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = call float @dx.op.unary.f32(i32 25, float %4150)  ; Rsqrt(value)
  %4152 = fmul fast float %4151, %3951
  %4153 = fmul fast float %4151, %3952
  %4154 = fmul fast float %4151, %4149
  %4155 = fsub fast float %1950, %135
  %4156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4155)  ; Dot3(ax,ay,az,bx,by,bz)
  %4157 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4152, float %4153, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = fdiv fast float 1.000000e+00, %4157
  %4159 = fmul fast float %4158, %4156
  %4160 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4142, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4161 = fcmp fast ogt float %4160, 0.000000e+00
  %4162 = fcmp fast olt float %4160, 0.000000e+00
  %4163 = zext i1 %4161 to i32
  %4164 = zext i1 %4162 to i32
  %4165 = sub nsw i32 %4163, %4164
  %4166 = sitofp i32 %4165 to float
  %4167 = fsub fast float %4148, %1950
  %4168 = call float @dx.op.dot3.f32(i32 55, float %3951, float %3952, float %4167, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4169 = fcmp fast ogt float %4168, 0.000000e+00
  %4170 = fcmp fast olt float %4168, 0.000000e+00
  %4171 = zext i1 %4169 to i32
  %4172 = zext i1 %4170 to i32
  %4173 = sub nsw i32 %4171, %4172
  %4174 = sitofp i32 %4173 to float
  %4175 = fcmp fast une float %4166, %4174
  br i1 %4175, label %4176, label %4186

; <label>:4176                                    ; preds = %4136
  %4177 = fmul fast float %4159, %4154
  %4178 = fmul fast float %4159, %4153
  %4179 = fmul fast float %4159, %4152
  %4180 = fmul fast float %4179, %4179
  %4181 = fmul fast float %4178, %4178
  %4182 = fadd fast float %4180, %4181
  %4183 = fmul fast float %4177, %4177
  %4184 = fadd fast float %4182, %4183
  %4185 = call float @dx.op.unary.f32(i32 24, float %4184)  ; Sqrt(value)
  br label %4198

; <label>:4186                                    ; preds = %4136
  %4187 = icmp slt i32 %4165, 0
  br i1 %4187, label %4188, label %4198

; <label>:4188                                    ; preds = %4186
  %4189 = fsub fast float %133, %3922
  %4190 = fsub fast float %134, %3923
  %4191 = fsub fast float %135, %4148
  %4192 = fmul fast float %4189, %4189
  %4193 = fmul fast float %4190, %4190
  %4194 = fadd fast float %4192, %4193
  %4195 = fmul fast float %4191, %4191
  %4196 = fadd fast float %4194, %4195
  %4197 = call float @dx.op.unary.f32(i32 24, float %4196)  ; Sqrt(value)
  br label %4198

; <label>:4198                                    ; preds = %4188, %4186, %4176
  %4199 = phi float [ %4185, %4176 ], [ %4197, %4188 ], [ 0.000000e+00, %4186 ]
  %4200 = and i1 %4143, %4141
  %4201 = fsub fast float -0.000000e+00, %4199
  %4202 = select i1 %4200, float -0.000000e+00, float %4201
  %4203 = fmul fast float %1951, 0x3FF7154760000000
  %4204 = fmul fast float %4203, %4202
  %4205 = fmul fast float %1952, 0x3FF7154760000000
  %4206 = fmul fast float %4205, %4202
  %4207 = fmul fast float %1953, 0x3FF7154760000000
  %4208 = fmul fast float %4207, %4202
  %4209 = call float @dx.op.unary.f32(i32 21, float %4204)  ; Exp(value)
  %4210 = call float @dx.op.unary.f32(i32 21, float %4206)  ; Exp(value)
  %4211 = call float @dx.op.unary.f32(i32 21, float %4208)  ; Exp(value)
  %4212 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4213 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4214 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4215 = fmul fast float %4137, %4212
  %4216 = fmul fast float %4138, %4213
  %4217 = fmul fast float %4139, %4214
  %4218 = fsub fast float %3957, %2150
  %4219 = fsub fast float %3958, %2149
  %4220 = fsub fast float %3959, %2148
  %4221 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4220, float %4218, float %4219, float %4220)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = call float @dx.op.unary.f32(i32 25, float %4221)  ; Rsqrt(value)
  %4223 = fmul fast float %4222, %4218
  %4224 = fmul fast float %4222, %4219
  %4225 = fmul fast float %4222, %4220
  %4226 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4227 = call float @dx.op.dot3.f32(i32 55, float %2147, float %2146, float %2145, float %4223, float %4224, float %4225)  ; Dot3(ax,ay,az,bx,by,bz)
  %4228 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4229 = fmul fast float %4228, %3964
  %4230 = fmul fast float %4228, %4228
  %4231 = fmul fast float %4230, %2178
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = fmul fast float %4229, %4232
  %4234 = bitcast float %3954 to i32
  %4235 = ashr i32 %4234, 1
  %4236 = sub nsw i32 1597463007, %4235
  %4237 = bitcast i32 %4236 to float
  %4238 = fmul fast float %4237, %3951
  %4239 = fmul fast float %4237, %3952
  %4240 = fmul fast float %4237, %3953
  %4241 = fsub fast float %4238, %2150
  %4242 = fsub fast float %4239, %2149
  %4243 = fsub fast float %4240, %2148
  %4244 = call float @dx.op.dot3.f32(i32 55, float %4241, float %4242, float %4243, float %4241, float %4242, float %4243)  ; Dot3(ax,ay,az,bx,by,bz)
  %4245 = call float @dx.op.unary.f32(i32 25, float %4244)  ; Rsqrt(value)
  %4246 = fmul fast float %4241, %4245
  %4247 = fmul fast float %4242, %4245
  %4248 = fmul fast float %4243, %4245
  %4249 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float %4246, float %4247, float %4248)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = fmul fast float %4249, %4249
  %4251 = call float @dx.op.unary.f32(i32 6, float %4226)  ; FAbs(value)
  %4252 = call float @dx.op.binary.f32(i32 35, float %2561, float 0x3F847AE140000000)  ; FMax(a,b)
  %4253 = fmul fast float %4252, %4252
  %4254 = fmul fast float %4253, %4253
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %2165, %2165
  %4257 = fmul fast float %4256, %4255
  %4258 = fadd fast float %4257, %4254
  %4259 = bitcast float %4258 to i32
  %4260 = ashr i32 %4259, 1
  %4261 = add nsw i32 %4260, 532487669
  %4262 = bitcast i32 %4261 to float
  %4263 = fadd fast float %4262, %2165
  %4264 = fmul fast float %4254, %4250
  %4265 = fsub fast float 1.000000e+00, %4250
  %4266 = fadd fast float %4265, %4264
  %4267 = fmul fast float %4251, %4251
  %4268 = fmul fast float %4267, %4255
  %4269 = fadd fast float %4268, %4254
  %4270 = bitcast float %4269 to i32
  %4271 = ashr i32 %4270, 1
  %4272 = add nsw i32 %4271, 532487669
  %4273 = bitcast i32 %4272 to float
  %4274 = fadd fast float %4273, %4251
  %4275 = fmul fast float %4266, %4266
  %4276 = fmul fast float %4275, %4263
  %4277 = fmul fast float %4276, %4274
  %4278 = fdiv fast float 1.000000e+00, %4277
  %4279 = bitcast float %4254 to i32
  %4280 = sitofp i32 %4279 to float
  %4281 = fmul fast float %4280, 0x3FE7F73180000000
  %4282 = fadd fast float %4281, 0x41AFE27C40000000
  %4283 = fptosi float %4282 to i32
  %4284 = bitcast i32 %4283 to float
  %4285 = fmul fast float %3919, 0x3FD80E9D60000000
  %4286 = fmul fast float %4285, %4237
  %4287 = fadd fast float %4284, %4286
  %4288 = bitcast float %4287 to i32
  %4289 = sub nsw i32 2129859010, %4288
  %4290 = bitcast i32 %4289 to float
  %4291 = fmul fast float %4254, %4278
  %4292 = fmul fast float %4291, %4284
  %4293 = fmul fast float %4292, %4290
  %4294 = fmul fast float %2423, 0x3FF9999980000000
  %4295 = fsub fast float 5.000000e+00, %4294
  %4296 = call float @dx.op.unary.f32(i32 6, float %4227)  ; FAbs(value)
  %4297 = fsub fast float 1.000000e+00, %4296
  %4298 = fmul fast float %2423, 0x41D9660740000000
  %4299 = fadd fast float %4298, 0xC1EFBF8940000000
  %4300 = bitcast float %4297 to i32
  %4301 = sitofp i32 %4300 to float
  %4302 = fmul fast float %4301, %4295
  %4303 = fadd fast float %4299, %4302
  %4304 = fptosi float %4303 to i32
  %4305 = bitcast i32 %4304 to float
  %4306 = fsub fast float 1.000000e+00, %2151
  %4307 = fsub fast float 1.000000e+00, %2152
  %4308 = fsub fast float 1.000000e+00, %2163
  %4309 = fmul fast float %4305, %4306
  %4310 = fmul fast float %4305, %4307
  %4311 = fmul fast float %4305, %4308
  %4312 = fadd fast float %4309, %2151
  %4313 = fadd fast float %4310, %2152
  %4314 = fadd fast float %4311, %2163
  br i1 %2446, label %4315, label %4338

; <label>:4315                                    ; preds = %4198
  %4316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1496, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4317 = extractvalue %dx.types.ResRet.f32 %4316, 0
  %4318 = extractvalue %dx.types.ResRet.f32 %4316, 1
  %4319 = extractvalue %dx.types.ResRet.f32 %4316, 2
  %4320 = fadd fast float %4317, -5.000000e-01
  %4321 = fadd fast float %4318, -5.000000e-01
  %4322 = fadd fast float %4319, -5.000000e-01
  %4323 = fmul fast float %2151, 4.000000e+00
  %4324 = fmul fast float %4323, %4306
  %4325 = fmul fast float %4324, %4320
  %4326 = fmul fast float %2152, 4.000000e+00
  %4327 = fmul fast float %4326, %4307
  %4328 = fmul fast float %4327, %4321
  %4329 = fmul fast float %2163, 4.000000e+00
  %4330 = fmul fast float %4329, %4308
  %4331 = fmul fast float %4330, %4322
  %4332 = fadd fast float %4325, %4312
  %4333 = fadd fast float %4328, %4313
  %4334 = fadd fast float %4331, %4314
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  br label %4338

; <label>:4338                                    ; preds = %4315, %4198
  %4339 = phi float [ %4335, %4315 ], [ %4312, %4198 ]
  %4340 = phi float [ %4336, %4315 ], [ %4313, %4198 ]
  %4341 = phi float [ %4337, %4315 ], [ %4314, %4198 ]
  %4342 = fmul fast float %4226, 9.843750e-01
  %4343 = fadd fast float %4342, 7.812500e-03
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4343, float %2427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = extractvalue %dx.types.ResRet.f32 %4344, 3
  %4349 = fsub fast float %4347, %4345
  %4350 = fsub fast float %4348, %4346
  %4351 = fmul fast float %4349, %2433
  %4352 = fmul fast float %4350, %2433
  %4353 = fadd fast float %4351, %4345
  %4354 = fadd fast float %4352, %4346
  %4355 = fmul fast float %4353, %2151
  %4356 = fmul fast float %4353, %2152
  %4357 = fmul fast float %4353, %2163
  %4358 = fadd fast float %4355, %4354
  %4359 = fadd fast float %4356, %4354
  %4360 = fadd fast float %4357, %4354
  br i1 %2446, label %4361, label %4384

; <label>:4361                                    ; preds = %4338
  %4362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1496, float %4226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = fadd fast float %4363, -5.000000e-01
  %4367 = fadd fast float %4364, -5.000000e-01
  %4368 = fadd fast float %4365, -5.000000e-01
  %4369 = fmul fast float %2151, 4.000000e+00
  %4370 = fmul fast float %4369, %4306
  %4371 = fmul fast float %4370, %4366
  %4372 = fmul fast float %2152, 4.000000e+00
  %4373 = fmul fast float %4372, %4307
  %4374 = fmul fast float %4373, %4367
  %4375 = fmul fast float %2163, 4.000000e+00
  %4376 = fmul fast float %4375, %4308
  %4377 = fmul fast float %4376, %4368
  %4378 = fadd fast float %4371, %4358
  %4379 = fadd fast float %4374, %4359
  %4380 = fadd fast float %4377, %4360
  %4381 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4383 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  br label %4384

; <label>:4384                                    ; preds = %4361, %4338
  %4385 = phi float [ %4381, %4361 ], [ %4358, %4338 ]
  %4386 = phi float [ %4382, %4361 ], [ %4359, %4338 ]
  %4387 = phi float [ %4383, %4361 ], [ %4360, %4338 ]
  %4388 = call float @dx.op.binary.f32(i32 35, float %4386, float %4387)  ; FMax(a,b)
  %4389 = call float @dx.op.binary.f32(i32 35, float %4385, float %4388)  ; FMax(a,b)
  %4390 = fsub fast float 1.000000e+00, %4389
  %4391 = call float @dx.op.binary.f32(i32 35, float %4251, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4392 = fdiv fast float %896, %4391
  %4393 = fmul fast float %2501, %4392
  %4394 = fmul fast float %2503, %4392
  %4395 = fmul fast float %2505, %4392
  %4396 = call float @dx.op.unary.f32(i32 21, float %4393)  ; Exp(value)
  %4397 = call float @dx.op.unary.f32(i32 21, float %4394)  ; Exp(value)
  %4398 = call float @dx.op.unary.f32(i32 21, float %4395)  ; Exp(value)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4402 = select i1 %2498, float %4399, float 0.000000e+00
  %4403 = select i1 %2499, float %4400, float 0.000000e+00
  %4404 = select i1 %2500, float %4401, float 0.000000e+00
  %4405 = fsub fast float -0.000000e+00, %2157
  %4406 = fsub fast float -0.000000e+00, %2158
  %4407 = fsub fast float -0.000000e+00, %2159
  %4408 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %4405, float %4406, float %4407)  ; Dot3(ax,ay,az,bx,by,bz)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = fmul fast float %4409, %3964
  %4411 = fmul fast float %4409, 9.843750e-01
  %4412 = fadd fast float %4411, 7.812500e-03
  %4413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4412, float %2427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.ResRet.f32 %4413, 3
  %4418 = fsub fast float %4416, %4414
  %4419 = fsub fast float %4417, %4415
  %4420 = fmul fast float %4418, %2433
  %4421 = fmul fast float %4419, %2433
  %4422 = fadd fast float %4420, %4414
  %4423 = fadd fast float %4421, %4415
  %4424 = fmul fast float %4422, %2151
  %4425 = fmul fast float %4422, %2152
  %4426 = fmul fast float %4422, %2163
  %4427 = fadd fast float %4424, %4423
  %4428 = fadd fast float %4425, %4423
  %4429 = fadd fast float %4426, %4423
  br i1 %2446, label %4430, label %4453

; <label>:4430                                    ; preds = %4384
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1496, float %4409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.ResRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.ResRet.f32 %4431, 2
  %4435 = fadd fast float %4432, -5.000000e-01
  %4436 = fadd fast float %4433, -5.000000e-01
  %4437 = fadd fast float %4434, -5.000000e-01
  %4438 = fmul fast float %2151, 4.000000e+00
  %4439 = fmul fast float %4438, %4306
  %4440 = fmul fast float %4439, %4435
  %4441 = fmul fast float %2152, 4.000000e+00
  %4442 = fmul fast float %4441, %4307
  %4443 = fmul fast float %4442, %4436
  %4444 = fmul fast float %2163, 4.000000e+00
  %4445 = fmul fast float %4444, %4308
  %4446 = fmul fast float %4445, %4437
  %4447 = fadd fast float %4440, %4427
  %4448 = fadd fast float %4443, %4428
  %4449 = fadd fast float %4446, %4429
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  br label %4453

; <label>:4453                                    ; preds = %4430, %4384
  %4454 = phi float [ %4450, %4430 ], [ %4427, %4384 ]
  %4455 = phi float [ %4451, %4430 ], [ %4428, %4384 ]
  %4456 = phi float [ %4452, %4430 ], [ %4429, %4384 ]
  %4457 = call float @dx.op.binary.f32(i32 35, float %4455, float %4456)  ; FMax(a,b)
  %4458 = call float @dx.op.binary.f32(i32 35, float %4454, float %4457)  ; FMax(a,b)
  %4459 = fsub fast float 1.000000e+00, %4458
  %4460 = fmul fast float %2561, %2566
  %4461 = fadd fast float %2568, %4460
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fsub fast float %4238, %2171
  %4464 = fsub fast float %4239, %2172
  %4465 = fsub fast float %4240, %2173
  %4466 = call float @dx.op.dot3.f32(i32 55, float %4463, float %4464, float %4465, float %4463, float %4464, float %4465)  ; Dot3(ax,ay,az,bx,by,bz)
  %4467 = call float @dx.op.unary.f32(i32 25, float %4466)  ; Rsqrt(value)
  %4468 = fmul fast float %4463, %4467
  %4469 = fmul fast float %4464, %4467
  %4470 = fmul fast float %4465, %4467
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4405, float %4406, float %4407, float %4468, float %4469, float %4470)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = fmul fast float %4471, %4471
  %4473 = call float @dx.op.unary.f32(i32 6, float %4409)  ; FAbs(value)
  %4474 = call float @dx.op.binary.f32(i32 35, float %4462, float 0x3F847AE140000000)  ; FMax(a,b)
  %4475 = fmul fast float %4474, %4474
  %4476 = fmul fast float %4475, %4475
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = fmul fast float %4256, %4477
  %4479 = fadd fast float %4478, %4476
  %4480 = bitcast float %4479 to i32
  %4481 = ashr i32 %4480, 1
  %4482 = add nsw i32 %4481, 532487669
  %4483 = bitcast i32 %4482 to float
  %4484 = fadd fast float %4483, %2165
  %4485 = fmul fast float %4476, %4472
  %4486 = fsub fast float 1.000000e+00, %4472
  %4487 = fadd fast float %4486, %4485
  %4488 = fmul fast float %4473, %4473
  %4489 = fmul fast float %4488, %4477
  %4490 = fadd fast float %4489, %4476
  %4491 = bitcast float %4490 to i32
  %4492 = ashr i32 %4491, 1
  %4493 = add nsw i32 %4492, 532487669
  %4494 = bitcast i32 %4493 to float
  %4495 = fadd fast float %4494, %4473
  %4496 = fmul fast float %4487, %4487
  %4497 = fmul fast float %4496, %4484
  %4498 = fmul fast float %4497, %4495
  %4499 = fdiv fast float 1.000000e+00, %4498
  %4500 = bitcast float %4476 to i32
  %4501 = sitofp i32 %4500 to float
  %4502 = fmul fast float %4501, 0x3FE7F73180000000
  %4503 = fadd fast float %4502, 0x41AFE27C40000000
  %4504 = fptosi float %4503 to i32
  %4505 = bitcast i32 %4504 to float
  %4506 = fadd fast float %4505, %4286
  %4507 = bitcast float %4506 to i32
  %4508 = sub nsw i32 2129859010, %4507
  %4509 = bitcast i32 %4508 to float
  %4510 = fmul fast float %4476, %4499
  %4511 = fmul fast float %4510, %4505
  %4512 = fmul fast float %4511, %4509
  br i1 %3949, label %4513, label %4523

; <label>:4513                                    ; preds = %4453
  %4514 = fmul fast float %4410, %4402
  %4515 = fmul fast float %4410, %4403
  %4516 = fmul fast float %4410, %4404
  %4517 = fmul fast float %4514, %4459
  %4518 = fmul fast float %4517, %4512
  %4519 = fmul fast float %4515, %4459
  %4520 = fmul fast float %4519, %4512
  %4521 = fmul fast float %4516, %4459
  %4522 = fmul fast float %4521, %4512
  br label %4523

; <label>:4523                                    ; preds = %4513, %4453
  %4524 = phi float [ %4518, %4513 ], [ 0.000000e+00, %4453 ]
  %4525 = phi float [ %4520, %4513 ], [ 0.000000e+00, %4453 ]
  %4526 = phi float [ %4522, %4513 ], [ 0.000000e+00, %4453 ]
  %4527 = fmul fast float %4339, %4293
  %4528 = fmul fast float %4340, %4293
  %4529 = fmul fast float %4341, %4293
  %4530 = fsub fast float 1.000000e+00, %4227
  %4531 = bitcast float %4530 to i32
  %4532 = sitofp i32 %4531 to float
  %4533 = fmul fast float %4532, 5.000000e+00
  %4534 = fadd fast float %4533, 0xC1EFBF8940000000
  %4535 = fptosi float %4534 to i32
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, %1495
  %4538 = fmul fast float %4390, %4537
  %4539 = fmul fast float %4538, %2493
  %4540 = fmul fast float %4538, %2494
  %4541 = fmul fast float %4538, %2495
  %4542 = fadd fast float %4539, %4527
  %4543 = fadd fast float %4540, %4528
  %4544 = fadd fast float %4541, %4529
  %4545 = fmul fast float %4542, %4233
  %4546 = fmul fast float %4543, %4233
  %4547 = fmul fast float %4544, %4233
  %4548 = fadd fast float %4545, %4524
  %4549 = fadd fast float %4546, %4525
  %4550 = fadd fast float %4547, %4526
  %4551 = fmul fast float %4215, %1519
  %4552 = fmul fast float %4551, %4233
  %4553 = fmul fast float %4552, %4390
  %4554 = fmul fast float %4216, %1519
  %4555 = fmul fast float %4554, %4233
  %4556 = fmul fast float %4555, %4390
  %4557 = fmul fast float %4217, %1519
  %4558 = fmul fast float %4557, %4233
  %4559 = fmul fast float %4558, %4390
  %4560 = fadd fast float %4553, %3893
  %4561 = fadd fast float %4556, %3894
  %4562 = fadd fast float %4559, %3895
  %4563 = fmul fast float %4551, %4548
  %4564 = fmul fast float %4554, %4549
  %4565 = fmul fast float %4557, %4550
  %4566 = fadd fast float %4563, %3890
  %4567 = fadd fast float %4564, %3891
  %4568 = fadd fast float %4565, %3892
  br label %4023

; <label>:4569                                    ; preds = %4023
  br label %4570

; <label>:4570                                    ; preds = %4569, %3856
  %4571 = phi float [ %3858, %3856 ], [ %4024, %4569 ]
  %4572 = phi float [ %3859, %3856 ], [ %4025, %4569 ]
  %4573 = phi float [ %3860, %3856 ], [ %4026, %4569 ]
  %4574 = phi float [ %3861, %3856 ], [ %4027, %4569 ]
  %4575 = phi float [ %3862, %3856 ], [ %4028, %4569 ]
  %4576 = phi float [ %3863, %3856 ], [ %4029, %4569 ]
  %4577 = add i32 %3857, 1
  %4578 = icmp ugt i32 %4577, %3853
  br i1 %4578, label %4579, label %3856

; <label>:4579                                    ; preds = %4570
  br label %4580

; <label>:4580                                    ; preds = %4579, %3806, %3796
  %4581 = phi float [ %3797, %3796 ], [ %3797, %3806 ], [ %4571, %4579 ]
  %4582 = phi float [ %3798, %3796 ], [ %3798, %3806 ], [ %4572, %4579 ]
  %4583 = phi float [ %3799, %3796 ], [ %3799, %3806 ], [ %4573, %4579 ]
  %4584 = phi float [ %3800, %3796 ], [ %3800, %3806 ], [ %4574, %4579 ]
  %4585 = phi float [ %3801, %3796 ], [ %3801, %3806 ], [ %4575, %4579 ]
  %4586 = phi float [ %3802, %3796 ], [ %3802, %3806 ], [ %4576, %4579 ]
  %4587 = fmul fast float %2522, %1519
  %4588 = fmul fast float %2523, %1519
  %4589 = fmul fast float %2524, %1519
  %4590 = fadd fast float %4587, 1.000000e+00
  %4591 = fadd fast float %4588, 1.000000e+00
  %4592 = fadd fast float %4589, 1.000000e+00
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4590, float %4591, float %4592, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = fsub fast float 1.000000e+00, %4593
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 0
  %4597 = fmul fast float %4596, %2528
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4600 = fsub fast float 1.000000e+00, %1491
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = fadd fast float %4586, %1490
  %4603 = fmul fast float %4602, %1491
  %4604 = fmul fast float %4601, %4599
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4607 = fmul fast float %4584, %2154
  %4608 = fmul fast float %4585, %2155
  %4609 = fmul fast float %4586, %2156
  %4610 = fcmp fast ogt float %76, %155
  %4611 = and i1 %4610, %1956
  %4612 = or i1 %1962, %4611
  %4613 = icmp eq i32 %1955, 2
  %4614 = fcmp fast ole float %76, %155
  %4615 = and i1 %4614, %4613
  %4616 = or i1 %4615, %4612
  br i1 %4611, label %4617, label %4876

; <label>:4617                                    ; preds = %4580
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 3
  %4621 = fmul fast float %4619, %85
  %4622 = fmul fast float %4620, %86
  %4623 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4624 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4625 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %4623, float %4624, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.ResRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.ResRet.f32 %4625, 3
  %4630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %4623, float %4624, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = extractvalue %dx.types.ResRet.f32 %4630, 3
  %4635 = call float @dx.op.binary.f32(i32 35, float %4627, float %4628)  ; FMax(a,b)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4626, float %4635)  ; FMax(a,b)
  %4637 = call float @dx.op.binary.f32(i32 35, float %4636, float %4629)  ; FMax(a,b)
  %4638 = call float @dx.op.binary.f32(i32 36, float %4632, float %4633)  ; FMin(a,b)
  %4639 = call float @dx.op.binary.f32(i32 36, float %4631, float %4638)  ; FMin(a,b)
  %4640 = call float @dx.op.binary.f32(i32 36, float %4639, float %4634)  ; FMin(a,b)
  %4641 = fmul fast float %4637, 2.550000e+02
  %4642 = fadd fast float %4641, 0x3F70101020000000
  %4643 = fptoui float %4642 to i32
  %4644 = fmul fast float %4640, 2.550000e+02
  %4645 = fadd fast float %4644, 0x3F70101020000000
  %4646 = fptoui float %4645 to i32
  %4647 = icmp ult i32 %4643, %4646
  br i1 %4647, label %4648, label %4816

; <label>:4648                                    ; preds = %4617
  %4649 = fcmp fast ogt float %75, 9.843750e-01
  %4650 = fadd fast float %76, -4.000000e+00
  %4651 = select i1 %4649, float -4.000000e+00, float %4650
  %4652 = call float @dx.op.binary.f32(i32 35, float %4651, float 0.000000e+00)  ; FMax(a,b)
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 0
  %4655 = fadd fast float %4654, %4652
  %4656 = extractvalue %dx.types.CBufRet.f32 %4653, 2
  %4657 = fmul fast float %4655, %4656
  %4658 = call float @dx.op.unary.f32(i32 23, float %4657)  ; Log(value)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4653, 3
  %4660 = fmul fast float %4659, %4658
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 2
  %4663 = fmul fast float %4660, %4662
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = uitofp i32 %4643 to float
  %4666 = uitofp i32 %4646 to float
  %4667 = fadd fast float %4665, 5.000000e-01
  %4668 = fadd fast float %4666, 5.000000e-01
  %4669 = fmul fast float %4662, %4667
  %4670 = fmul fast float %4662, %4668
  %4671 = fadd fast float %4669, 0x3F0FFB4800000000
  %4672 = fadd fast float %4670, 0xBF0FFB4800000000
  %4673 = call float @dx.op.binary.f32(i32 35, float %4664, float %4671)  ; FMax(a,b)
  %4674 = call float @dx.op.binary.f32(i32 36, float %4673, float %4672)  ; FMin(a,b)
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4677 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4678 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4679 = fmul fast float %4676, %4674
  %4680 = fadd fast float %4678, %4679
  %4681 = fadd fast float %4678, %4677
  %4682 = fsub fast float %4676, %4677
  %4683 = fadd fast float %4682, %4678
  %4684 = call float @dx.op.binary.f32(i32 35, float %4680, float %4681)  ; FMax(a,b)
  %4685 = call float @dx.op.binary.f32(i32 36, float %4684, float %4683)  ; FMin(a,b)
  %4686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %4623, float %4624, float %4685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4687 = extractvalue %dx.types.ResRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.ResRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.ResRet.f32 %4686, 2
  %4690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.i32 %4690, 0
  %4692 = extractvalue %dx.types.CBufRet.i32 %4690, 1
  %4693 = uitofp i32 %4691 to float
  %4694 = uitofp i32 %4692 to float
  %4695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.CBufRet.f32 %4695, 1
  %4698 = fmul fast float %4693, %4623
  %4699 = fmul fast float %4694, %4624
  %4700 = fadd fast float %4698, -5.000000e-01
  %4701 = fadd fast float %4699, -5.000000e-01
  %4702 = call float @dx.op.unary.f32(i32 22, float %4700)  ; Frc(value)
  %4703 = call float @dx.op.unary.f32(i32 22, float %4701)  ; Frc(value)
  %4704 = fmul fast float %4702, %4702
  %4705 = fmul fast float %4704, %4702
  %4706 = fsub fast float 3.000000e+00, %4702
  %4707 = fmul fast float %4704, %4706
  %4708 = fmul fast float %4702, 3.000000e+00
  %4709 = fmul fast float %4705, 3.000000e+00
  %4710 = fmul fast float %4704, 6.000000e+00
  %4711 = fsub fast float %4709, %4710
  %4712 = fadd fast float %4711, 4.000000e+00
  %4713 = fmul fast float %4712, 0x3FC5555560000000
  %4714 = fmul fast float %4705, -3.000000e+00
  %4715 = fadd fast float %4704, %4702
  %4716 = fmul fast float %4715, 3.000000e+00
  %4717 = fadd fast float %4714, 1.000000e+00
  %4718 = fadd fast float %4717, %4716
  %4719 = fmul fast float %4705, 0x3FC5555560000000
  %4720 = fmul fast float %4703, %4703
  %4721 = fmul fast float %4720, %4703
  %4722 = fsub fast float 3.000000e+00, %4703
  %4723 = fmul fast float %4720, %4722
  %4724 = fmul fast float %4703, 3.000000e+00
  %4725 = fmul fast float %4721, 3.000000e+00
  %4726 = fmul fast float %4720, 6.000000e+00
  %4727 = fsub fast float %4725, %4726
  %4728 = fadd fast float %4727, 4.000000e+00
  %4729 = fmul fast float %4728, 0x3FC5555560000000
  %4730 = fmul fast float %4721, -3.000000e+00
  %4731 = fadd fast float %4720, %4703
  %4732 = fmul fast float %4731, 3.000000e+00
  %4733 = fadd fast float %4730, 1.000000e+00
  %4734 = fadd fast float %4733, %4732
  %4735 = fmul fast float %4721, 0x3FC5555560000000
  %4736 = fadd fast float %4702, 1.000000e+00
  %4737 = fsub fast float 1.000000e+00, %4708
  %4738 = fadd fast float %4737, %4707
  %4739 = fadd fast float %4738, %4712
  %4740 = fmul fast float %4739, 0x3FC5555560000000
  %4741 = fdiv fast float %4713, %4740
  %4742 = fsub fast float %4736, %4741
  %4743 = fsub fast float 1.000000e+00, %4702
  %4744 = fadd fast float %4718, %4705
  %4745 = fmul fast float %4744, 0x3FC5555560000000
  %4746 = fdiv fast float %4719, %4745
  %4747 = fadd fast float %4743, %4746
  %4748 = fadd fast float %4703, 1.000000e+00
  %4749 = fsub fast float 1.000000e+00, %4724
  %4750 = fadd fast float %4749, %4723
  %4751 = fadd fast float %4750, %4728
  %4752 = fmul fast float %4751, 0x3FC5555560000000
  %4753 = fdiv fast float %4729, %4752
  %4754 = fsub fast float %4748, %4753
  %4755 = fsub fast float 1.000000e+00, %4703
  %4756 = fadd fast float %4734, %4721
  %4757 = fmul fast float %4756, 0x3FC5555560000000
  %4758 = fdiv fast float %4735, %4757
  %4759 = fadd fast float %4758, %4755
  %4760 = fmul fast float %4742, %4696
  %4761 = fsub fast float %4623, %4760
  %4762 = fmul fast float %4747, %4696
  %4763 = fadd fast float %4762, %4623
  %4764 = fmul fast float %4759, %4697
  %4765 = fadd fast float %4764, %4624
  %4766 = fmul fast float %4754, %4697
  %4767 = fsub fast float %4624, %4766
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4761, float %4767, float %4685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4763, float %4767, float %4685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4773 = extractvalue %dx.types.ResRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.ResRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.ResRet.f32 %4772, 2
  %4776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4761, float %4765, float %4685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4763, float %4765, float %4685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.ResRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.ResRet.f32 %4780, 2
  %4784 = fsub fast float %4777, %4769
  %4785 = fsub fast float %4778, %4770
  %4786 = fsub fast float %4779, %4771
  %4787 = fmul fast float %4784, %4757
  %4788 = fmul fast float %4785, %4757
  %4789 = fmul fast float %4786, %4757
  %4790 = fadd fast float %4787, %4769
  %4791 = fadd fast float %4788, %4770
  %4792 = fadd fast float %4789, %4771
  %4793 = fsub fast float %4781, %4773
  %4794 = fsub fast float %4782, %4774
  %4795 = fsub fast float %4783, %4775
  %4796 = fmul fast float %4793, %4757
  %4797 = fmul fast float %4794, %4757
  %4798 = fmul fast float %4795, %4757
  %4799 = fsub fast float %4773, %4790
  %4800 = fadd fast float %4799, %4796
  %4801 = fsub fast float %4774, %4791
  %4802 = fadd fast float %4801, %4797
  %4803 = fsub fast float %4775, %4792
  %4804 = fadd fast float %4803, %4798
  %4805 = fmul fast float %4800, %4745
  %4806 = fmul fast float %4802, %4745
  %4807 = fmul fast float %4804, %4745
  %4808 = fadd fast float %4805, %4790
  %4809 = fadd fast float %4806, %4791
  %4810 = fadd fast float %4807, %4792
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4813 = fmul fast float %4808, %4812
  %4814 = fmul fast float %4809, %4812
  %4815 = fmul fast float %4810, %4812
  br label %4816

; <label>:4816                                    ; preds = %4648, %4617
  %4817 = phi float [ %4687, %4648 ], [ 1.000000e+00, %4617 ]
  %4818 = phi float [ %4688, %4648 ], [ 1.000000e+00, %4617 ]
  %4819 = phi float [ %4689, %4648 ], [ 1.000000e+00, %4617 ]
  %4820 = phi float [ %4813, %4648 ], [ 0.000000e+00, %4617 ]
  %4821 = phi float [ %4814, %4648 ], [ 0.000000e+00, %4617 ]
  %4822 = phi float [ %4815, %4648 ], [ 0.000000e+00, %4617 ]
  %4823 = fmul fast float %4820, %4594
  %4824 = fmul fast float %4821, %4594
  %4825 = fmul fast float %4822, %4594
  %4826 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %4819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = call float @dx.op.dot3.f32(i32 55, float %4823, float %4824, float %4825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = select i1 %195, float %4826, float %4817
  %4829 = select i1 %195, float %4826, float %4818
  %4830 = select i1 %195, float 1.000000e+00, float %4819
  %4831 = select i1 %195, float %4827, float %4823
  %4832 = select i1 %195, float 0.000000e+00, float %4824
  %4833 = select i1 %195, float 0.000000e+00, float %4825
  %4834 = fmul fast float %4828, %4607
  %4835 = fmul fast float %4829, %4608
  %4836 = fmul fast float %4830, %4609
  %4837 = fadd fast float %4834, %4831
  %4838 = fadd fast float %4835, %4832
  %4839 = fadd fast float %4833, %4836
  %4840 = fmul fast float %4828, %4581
  %4841 = fmul fast float %4829, %4582
  %4842 = fmul fast float %4830, %4583
  %4843 = fmul fast float %85, 2.000000e+00
  %4844 = fmul fast float %4843, %4619
  %4845 = fmul fast float %86, 2.000000e+00
  %4846 = fmul fast float %4845, %4620
  %4847 = fsub fast float 1.000000e+00, %4844
  %4848 = fsub fast float 1.000000e+00, %4846
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4849, 2
  %4853 = fmul fast float %4847, %4850
  %4854 = fmul fast float %4847, %4851
  %4855 = fmul fast float %4847, %4852
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.CBufRet.f32 %4856, 1
  %4859 = extractvalue %dx.types.CBufRet.f32 %4856, 2
  %4860 = fmul fast float %4848, %4857
  %4861 = fmul fast float %4848, %4858
  %4862 = fmul fast float %4848, %4859
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4866 = extractvalue %dx.types.CBufRet.f32 %4863, 2
  %4867 = fadd fast float %4860, %4864
  %4868 = fadd fast float %4867, %4853
  %4869 = fadd fast float %4861, %4865
  %4870 = fadd fast float %4869, %4854
  %4871 = fadd fast float %4862, %4866
  %4872 = fadd fast float %4871, %4855
  %4873 = fmul fast float %4868, %155
  %4874 = fmul fast float %4870, %155
  %4875 = fmul fast float %4872, %155
  br label %4876

; <label>:4876                                    ; preds = %4816, %4580
  %4877 = phi float [ %4873, %4816 ], [ %133, %4580 ]
  %4878 = phi float [ %4874, %4816 ], [ %134, %4580 ]
  %4879 = phi float [ %4875, %4816 ], [ %135, %4580 ]
  %4880 = phi float [ %155, %4816 ], [ %76, %4580 ]
  %4881 = phi float [ %4837, %4816 ], [ %4607, %4580 ]
  %4882 = phi float [ %4838, %4816 ], [ %4608, %4580 ]
  %4883 = phi float [ %4839, %4816 ], [ %4609, %4580 ]
  %4884 = phi float [ %4840, %4816 ], [ %4581, %4580 ]
  %4885 = phi float [ %4841, %4816 ], [ %4582, %4580 ]
  %4886 = phi float [ %4842, %4816 ], [ %4583, %4580 ]
  %4887 = phi float [ %4817, %4816 ], [ 1.000000e+00, %4580 ]
  br i1 %4616, label %6038, label %4888

; <label>:4888                                    ; preds = %4876
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4892 = extractvalue %dx.types.CBufRet.f32 %4889, 2
  %4893 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4894, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4894, 3
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4903 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4908 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %4913 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4914 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4916 = fcmp fast olt float %4915, -5.000000e-01
  %4917 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %4877, float %4878, float %4879)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = call float @dx.op.unary.f32(i32 25, float %4917)  ; Rsqrt(value)
  %4919 = fmul fast float %4918, %4917
  %4920 = fmul fast float %4918, %4877
  %4921 = fmul fast float %4918, %4878
  %4922 = fmul fast float %4918, %4879
  %4923 = fadd fast float %4919, %4893
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %4890, float %4891, float %4892)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.i32 %4925, 1
  %4927 = and i32 %4926, 1
  %4928 = icmp ne i32 %4927, 0
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 2
  %4931 = fcmp fast ogt float %4930, 0.000000e+00
  %4932 = and i1 %4928, %4931
  br i1 %4932, label %4933, label %5335, !dx.controlflow.hints !112

; <label>:4933                                    ; preds = %4888
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 3
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4940 = fsub fast float %4937, %4939
  %4941 = and i32 %4926, 2
  %4942 = extractvalue %dx.types.CBufRet.i32 %4925, 0
  %4943 = call i32 @dx.op.binary.i32(i32 40, i32 %4942, i32 3)  ; UMin(a,b)
  %4944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4944, 0
  %4946 = extractvalue %dx.types.CBufRet.f32 %4944, 1
  %4947 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4948 = extractvalue %dx.types.CBufRet.f32 %4938, 1
  %4949 = fsub fast float %4945, %4947
  %4950 = fsub fast float %4946, %4948
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 0
  %4953 = fcmp fast ogt float %4952, 0.000000e+00
  %4954 = fsub fast float -0.000000e+00, %4949
  %4955 = fsub fast float -0.000000e+00, %4950
  %4956 = call float @dx.op.dot2.f32(i32 54, float %4920, float %4921, float %4920, float %4921)  ; Dot2(ax,ay,bx,by)
  %4957 = call float @dx.op.dot2.f32(i32 54, float %4920, float %4921, float %4954, float %4955)  ; Dot2(ax,ay,bx,by)
  %4958 = fmul fast float %4957, 2.000000e+00
  %4959 = call float @dx.op.dot2.f32(i32 54, float %4954, float %4955, float %4954, float %4955)  ; Dot2(ax,ay,bx,by)
  %4960 = fmul fast float %4952, %4952
  %4961 = fsub fast float %4959, %4960
  %4962 = fmul fast float %4958, %4958
  %4963 = fmul fast float %4956, 4.000000e+00
  %4964 = fmul fast float %4963, %4961
  %4965 = fsub fast float %4962, %4964
  %4966 = fcmp fast ogt float %4965, 0.000000e+00
  br i1 %4966, label %4967, label %4982

; <label>:4967                                    ; preds = %4933
  %4968 = fcmp fast ogt float %4958, 0.000000e+00
  %4969 = call float @dx.op.unary.f32(i32 24, float %4965)  ; Sqrt(value)
  %4970 = fsub fast float -0.000000e+00, %4969
  %4971 = select i1 %4968, float %4969, float %4970
  %4972 = fadd fast float %4971, %4958
  %4973 = fmul float %4972, -5.000000e-01
  %4974 = fdiv fast float %4973, %4956
  %4975 = call float @dx.op.binary.f32(i32 35, float %4974, float 0.000000e+00)  ; FMax(a,b)
  %4976 = call float @dx.op.binary.f32(i32 36, float %4919, float %4975)  ; FMin(a,b)
  %4977 = fdiv fast float %4961, %4973
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %4979 = call float @dx.op.binary.f32(i32 36, float %4919, float %4978)  ; FMin(a,b)
  %4980 = call float @dx.op.binary.f32(i32 36, float %4976, float %4979)  ; FMin(a,b)
  %4981 = call float @dx.op.binary.f32(i32 35, float %4976, float %4979)  ; FMax(a,b)
  br label %4982

; <label>:4982                                    ; preds = %4967, %4933
  %4983 = phi float [ %4981, %4967 ], [ -1.000000e+00, %4933 ]
  %4984 = phi float [ %4980, %4967 ], [ -1.000000e+00, %4933 ]
  %4985 = phi i1 [ true, %4967 ], [ false, %4933 ]
  %4986 = and i1 %4953, %4985
  br i1 %4986, label %4987, label %4989

; <label>:4987                                    ; preds = %4982
  %4988 = fcmp fast oeq float %4984, %4983
  br i1 %4988, label %5288, label %4990

; <label>:4989                                    ; preds = %4982
  br i1 %4953, label %5288, label %4990

; <label>:4990                                    ; preds = %4989, %4987
  %4991 = phi float [ %4919, %4989 ], [ %4983, %4987 ]
  %4992 = phi float [ 0.000000e+00, %4989 ], [ %4984, %4987 ]
  %4993 = icmp ne i32 %4941, 0
  %4994 = fmul fast float %4991, %4922
  %4995 = fadd fast float %4994, %4935
  %4996 = fmul fast float %4995, %4991
  %4997 = select i1 %4993, float 0.000000e+00, float %4996
  %4998 = fcmp fast oeq float %4922, 0.000000e+00
  %4999 = fdiv fast float %4940, %4922
  %5000 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4999)  ; FMax(a,b)
  %5001 = select i1 %4998, float %4991, float %5000
  %5002 = call float @dx.op.binary.f32(i32 36, float %4991, float %5001)  ; FMin(a,b)
  %5003 = fcmp fast ogt float %4922, 0.000000e+00
  %5004 = fcmp fast olt float %4940, 0.000000e+00
  br i1 %5003, label %5005, label %5062

; <label>:5005                                    ; preds = %4990
  %5006 = icmp eq i32 %4941, 0
  br i1 %5004, label %5007, label %5051

; <label>:5007                                    ; preds = %5005
  %5008 = select i1 %5006, float %4991, float 0.000000e+00
  %5009 = fsub fast float -0.000000e+00, %5008
  %5010 = call float @dx.op.unary.f32(i32 6, float %5009)  ; FAbs(value)
  %5011 = fmul fast float %5008, %4922
  %5012 = fadd fast float %5011, %4935
  %5013 = fmul fast float %5010, %5012
  %5014 = fsub fast float %4997, %5013
  %5015 = fsub fast float %4991, %5010
  %5016 = select i1 %5006, float %5015, float 0.000000e+00
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5025 = extractvalue %dx.types.CBufRet.f32 %5021, 3
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5028 = call float @dx.op.binary.f32(i32 36, float %5014, float %5027)  ; FMin(a,b)
  %5029 = fmul fast float %5025, %5016
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fsub fast float %5022, %5018
  %5032 = fsub fast float %5023, %5019
  %5033 = fsub fast float %5024, %5020
  %5034 = fmul fast float %5030, %5031
  %5035 = fmul fast float %5030, %5032
  %5036 = fmul fast float %5030, %5033
  %5037 = fadd fast float %5034, %5018
  %5038 = fadd fast float %5035, %5019
  %5039 = fadd fast float %5036, %5020
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.CBufRet.f32 %5040, 1
  %5043 = fadd fast float %5042, %5041
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5046 = extractvalue %dx.types.CBufRet.f32 %5040, 3
  %5047 = fadd fast float %5046, %5045
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = fmul fast float %5044, %5028
  %5050 = fmul fast float %5049, %5048
  br label %5288

; <label>:5051                                    ; preds = %5005
  br i1 %5006, label %5052, label %5073

; <label>:5052                                    ; preds = %5051
  %5053 = call float @dx.op.binary.f32(i32 36, float %5002, float %4992)  ; FMin(a,b)
  %5054 = fsub fast float %5002, %5053
  %5055 = fsub fast float %5054, %4991
  %5056 = call float @dx.op.unary.f32(i32 6, float %5055)  ; FAbs(value)
  %5057 = fadd fast float %5054, %4991
  %5058 = fmul fast float %5057, %4922
  %5059 = fadd fast float %5058, %4935
  %5060 = fmul fast float %5059, %5056
  %5061 = fsub fast float %4997, %5060
  br label %5073

; <label>:5062                                    ; preds = %4990
  br i1 %5004, label %5063, label %5073

; <label>:5063                                    ; preds = %5062
  %5064 = call float @dx.op.binary.f32(i32 35, float %4992, float %5002)  ; FMax(a,b)
  %5065 = icmp eq i32 %4941, 0
  %5066 = select i1 %5065, float %5002, float 0.000000e+00
  %5067 = fsub fast float -0.000000e+00, %5066
  %5068 = call float @dx.op.unary.f32(i32 6, float %5067)  ; FAbs(value)
  %5069 = fmul fast float %5066, %4922
  %5070 = fadd fast float %5069, %4935
  %5071 = fmul fast float %5068, %5070
  %5072 = fsub fast float %4997, %5071
  br label %5073

; <label>:5073                                    ; preds = %5063, %5062, %5052, %5051
  %5074 = phi float [ %4992, %5051 ], [ %4992, %5052 ], [ %5064, %5063 ], [ %4992, %5062 ]
  %5075 = phi float [ 0.000000e+00, %5051 ], [ %5056, %5052 ], [ %5068, %5063 ], [ 0.000000e+00, %5062 ]
  %5076 = phi float [ %4997, %5051 ], [ %5061, %5052 ], [ %5072, %5063 ], [ %4997, %5062 ]
  %5077 = phi float [ %5002, %5051 ], [ %5002, %5052 ], [ %4991, %5063 ], [ %4991, %5062 ]
  %5078 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5078, align 4, !tbaa !113, !noalias !115
  %5079 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5079, align 4, !tbaa !113, !noalias !115
  %5080 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5080, align 4, !tbaa !113, !noalias !115
  %5081 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %5081, align 4, !tbaa !113, !noalias !115
  %5082 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %5082, align 4, !tbaa !113, !noalias !115
  %5083 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %5083, align 4, !tbaa !113, !noalias !115
  %5084 = icmp sgt i32 %4943, 0
  br i1 %5084, label %5085, label %5146

; <label>:5085                                    ; preds = %5073
  br label %5086

; <label>:5086                                    ; preds = %5135, %5085
  %5087 = phi i32 [ %5136, %5135 ], [ 0, %5085 ]
  %5088 = phi i32 [ %5137, %5135 ], [ 0, %5085 ]
  %5089 = add nuw i32 %5088, 171
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %5089)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.CBufRet.f32 %5090, 1
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.CBufRet.f32 %5093, 1
  %5096 = fsub fast float %5091, %5094
  %5097 = fsub fast float %5092, %5095
  %5098 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %5099 = fsub fast float -0.000000e+00, %5096
  %5100 = fsub fast float -0.000000e+00, %5097
  %5101 = call float @dx.op.dot2.f32(i32 54, float %4920, float %4921, float %5099, float %5100)  ; Dot2(ax,ay,bx,by)
  %5102 = fmul fast float %5101, 2.000000e+00
  %5103 = call float @dx.op.dot2.f32(i32 54, float %5099, float %5100, float %5099, float %5100)  ; Dot2(ax,ay,bx,by)
  %5104 = fmul fast float %5098, %5098
  %5105 = fsub fast float %5103, %5104
  %5106 = fmul fast float %5102, %5102
  %5107 = fmul fast float %4963, %5105
  %5108 = fsub fast float %5106, %5107
  %5109 = fcmp fast ogt float %5108, 0.000000e+00
  br i1 %5109, label %5110, label %5125

; <label>:5110                                    ; preds = %5086
  %5111 = fcmp fast ogt float %5102, 0.000000e+00
  %5112 = call float @dx.op.unary.f32(i32 24, float %5108)  ; Sqrt(value)
  %5113 = fsub fast float -0.000000e+00, %5112
  %5114 = select i1 %5111, float %5112, float %5113
  %5115 = fadd fast float %5114, %5102
  %5116 = fmul float %5115, -5.000000e-01
  %5117 = fdiv fast float %5116, %4956
  %5118 = call float @dx.op.binary.f32(i32 35, float %5117, float 0.000000e+00)  ; FMax(a,b)
  %5119 = call float @dx.op.binary.f32(i32 36, float %4991, float %5118)  ; FMin(a,b)
  %5120 = fdiv fast float %5105, %5116
  %5121 = call float @dx.op.binary.f32(i32 35, float %5120, float 0.000000e+00)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 36, float %4991, float %5121)  ; FMin(a,b)
  %5123 = call float @dx.op.binary.f32(i32 36, float %5119, float %5122)  ; FMin(a,b)
  %5124 = call float @dx.op.binary.f32(i32 35, float %5119, float %5122)  ; FMax(a,b)
  br label %5125

; <label>:5125                                    ; preds = %5110, %5086
  %5126 = phi float [ %5124, %5110 ], [ -1.000000e+00, %5086 ]
  %5127 = phi float [ %5123, %5110 ], [ -1.000000e+00, %5086 ]
  %5128 = phi i1 [ true, %5110 ], [ false, %5086 ]
  br i1 %5128, label %5129, label %5135

; <label>:5129                                    ; preds = %5125
  %5130 = call float @dx.op.binary.f32(i32 35, float %5074, float %5127)  ; FMax(a,b)
  %5131 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5088
  store float %5130, float* %5131, align 4, !tbaa !113, !noalias !115
  %5132 = call float @dx.op.binary.f32(i32 35, float %5074, float %5126)  ; FMax(a,b)
  %5133 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5088
  store float %5132, float* %5133, align 4, !tbaa !113, !noalias !115
  %5134 = add nsw i32 %5087, 1
  br label %5135

; <label>:5135                                    ; preds = %5129, %5125
  %5136 = phi i32 [ %5134, %5129 ], [ %5087, %5125 ]
  %5137 = add nuw nsw i32 %5088, 1
  %5138 = icmp eq i32 %5137, %4943
  br i1 %5138, label %5139, label %5086

; <label>:5139                                    ; preds = %5135
  %5140 = load float, float* %5080, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %5141 = load float, float* %5079, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  %5142 = load float, float* %5078, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  %5143 = load float, float* %5083, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %5144 = load float, float* %5082, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %5145 = load float, float* %5081, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  br label %5146

; <label>:5146                                    ; preds = %5139, %5073
  %5147 = phi float [ -1.000000e+00, %5073 ], [ %5145, %5139 ]
  %5148 = phi float [ -1.000000e+00, %5073 ], [ %5144, %5139 ]
  %5149 = phi float [ -1.000000e+00, %5073 ], [ %5143, %5139 ]
  %5150 = phi float [ -1.000000e+00, %5073 ], [ %5142, %5139 ]
  %5151 = phi float [ -1.000000e+00, %5073 ], [ %5141, %5139 ]
  %5152 = phi float [ -1.000000e+00, %5073 ], [ %5140, %5139 ]
  %5153 = phi i32 [ 0, %5073 ], [ %5136, %5139 ]
  %5154 = call float @dx.op.binary.f32(i32 36, float %5150, float %5151)  ; FMin(a,b)
  %5155 = call float @dx.op.binary.f32(i32 36, float %5154, float %5152)  ; FMin(a,b)
  %5156 = call float @dx.op.binary.f32(i32 35, float %5150, float %5151)  ; FMax(a,b)
  %5157 = call float @dx.op.binary.f32(i32 36, float %5156, float %5152)  ; FMin(a,b)
  %5158 = call float @dx.op.binary.f32(i32 35, float %5154, float %5157)  ; FMax(a,b)
  %5159 = call float @dx.op.binary.f32(i32 35, float %5156, float %5152)  ; FMax(a,b)
  store float %5155, float* %5078, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  store float %5158, float* %5079, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  store float %5159, float* %5080, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %5160 = call float @dx.op.binary.f32(i32 36, float %5147, float %5148)  ; FMin(a,b)
  %5161 = call float @dx.op.binary.f32(i32 36, float %5160, float %5149)  ; FMin(a,b)
  %5162 = call float @dx.op.binary.f32(i32 35, float %5147, float %5148)  ; FMax(a,b)
  %5163 = call float @dx.op.binary.f32(i32 36, float %5162, float %5149)  ; FMin(a,b)
  %5164 = call float @dx.op.binary.f32(i32 35, float %5160, float %5163)  ; FMax(a,b)
  %5165 = call float @dx.op.binary.f32(i32 35, float %5162, float %5149)  ; FMax(a,b)
  store float %5161, float* %5081, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %5164, float* %5082, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %5165, float* %5083, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %5166 = sub nsw i32 3, %5153
  %5167 = icmp sgt i32 %5166, 2
  br i1 %5167, label %5168, label %5206

; <label>:5168                                    ; preds = %5146
  %5169 = icmp eq i32 %4941, 0
  %5170 = fsub fast float %4991, %5075
  %5171 = select i1 %5169, float %5170, float %5075
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.CBufRet.f32 %5176, 1
  %5179 = extractvalue %dx.types.CBufRet.f32 %5176, 2
  %5180 = extractvalue %dx.types.CBufRet.f32 %5176, 3
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 3
  %5183 = call float @dx.op.binary.f32(i32 36, float %5076, float %5182)  ; FMin(a,b)
  %5184 = fmul fast float %5180, %5171
  %5185 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5186 = fsub fast float %5177, %5173
  %5187 = fsub fast float %5178, %5174
  %5188 = fsub fast float %5179, %5175
  %5189 = fmul fast float %5185, %5186
  %5190 = fmul fast float %5185, %5187
  %5191 = fmul fast float %5185, %5188
  %5192 = fadd fast float %5189, %5173
  %5193 = fadd fast float %5190, %5174
  %5194 = fadd fast float %5191, %5175
  %5195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.CBufRet.f32 %5195, 1
  %5198 = fadd fast float %5197, %5196
  %5199 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5195, 2
  %5201 = extractvalue %dx.types.CBufRet.f32 %5195, 3
  %5202 = fadd fast float %5201, %5200
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = fmul fast float %5199, %5183
  %5205 = fmul fast float %5204, %5203
  br label %5288

; <label>:5206                                    ; preds = %5146
  %5207 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5166
  %5208 = load float, float* %5207, align 4, !tbaa !113, !noalias !115
  %5209 = fcmp fast olt float %5208, %5077
  %5210 = icmp sgt i32 %5153, 0
  %5211 = and i1 %5210, %5209
  br i1 %5211, label %5212, label %5249

; <label>:5212                                    ; preds = %5206
  br label %5213

; <label>:5213                                    ; preds = %5242, %5212
  %5214 = phi float [ %5243, %5242 ], [ %5075, %5212 ]
  %5215 = phi float [ %5244, %5242 ], [ %5076, %5212 ]
  %5216 = phi float [ %5224, %5242 ], [ %5208, %5212 ]
  %5217 = phi i32 [ %5221, %5242 ], [ %5166, %5212 ]
  %5218 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5217
  %5219 = load float, float* %5218, align 4, !tbaa !113, !noalias !115
  %5220 = icmp slt i32 %5217, 2
  %5221 = add nsw i32 %5217, 1
  %5222 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5221
  %5223 = load float, float* %5222, align 4, !tbaa !113, !noalias !115
  %5224 = select i1 %5220, float %5223, float %4991
  %5225 = call float @dx.op.binary.f32(i32 36, float %5224, float %5219)  ; FMin(a,b)
  %5226 = call float @dx.op.binary.f32(i32 36, float %5077, float %5225)  ; FMin(a,b)
  %5227 = icmp eq i32 %4941, 0
  %5228 = fadd fast float %5226, %5216
  %5229 = fmul fast float %5228, %4922
  %5230 = fadd fast float %5229, %4935
  br i1 %5227, label %5236, label %5231

; <label>:5231                                    ; preds = %5213
  %5232 = fsub fast float %5226, %5216
  %5233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5232)  ; FMax(a,b)
  %5234 = fmul fast float %5233, %5230
  %5235 = fadd fast float %5234, %5215
  br label %5242

; <label>:5236                                    ; preds = %5213
  %5237 = fsub fast float %5216, %5226
  %5238 = call float @dx.op.unary.f32(i32 6, float %5237)  ; FAbs(value)
  %5239 = fadd fast float %5238, %5214
  %5240 = fmul fast float %5238, %5230
  %5241 = fsub fast float %5215, %5240
  br label %5242

; <label>:5242                                    ; preds = %5236, %5231
  %5243 = phi float [ %5233, %5231 ], [ %5239, %5236 ]
  %5244 = phi float [ %5235, %5231 ], [ %5241, %5236 ]
  %5245 = fcmp fast olt float %5224, %5077
  %5246 = icmp slt i32 %5221, 3
  %5247 = and i1 %5246, %5245
  br i1 %5247, label %5213, label %5248

; <label>:5248                                    ; preds = %5242
  br label %5249

; <label>:5249                                    ; preds = %5248, %5206
  %5250 = phi float [ %5075, %5206 ], [ %5243, %5248 ]
  %5251 = phi float [ %5076, %5206 ], [ %5244, %5248 ]
  %5252 = fsub fast float %4991, %5250
  %5253 = select i1 %4993, float %5250, float %5252
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.CBufRet.f32 %5258, 1
  %5261 = extractvalue %dx.types.CBufRet.f32 %5258, 2
  %5262 = extractvalue %dx.types.CBufRet.f32 %5258, 3
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5265 = call float @dx.op.binary.f32(i32 36, float %5251, float %5264)  ; FMin(a,b)
  %5266 = fmul fast float %5262, %5253
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = fsub fast float %5259, %5255
  %5269 = fsub fast float %5260, %5256
  %5270 = fsub fast float %5261, %5257
  %5271 = fmul fast float %5267, %5268
  %5272 = fmul fast float %5267, %5269
  %5273 = fmul fast float %5267, %5270
  %5274 = fadd fast float %5271, %5255
  %5275 = fadd fast float %5272, %5256
  %5276 = fadd fast float %5273, %5257
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.CBufRet.f32 %5277, 1
  %5280 = fadd fast float %5279, %5278
  %5281 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5277, 2
  %5283 = extractvalue %dx.types.CBufRet.f32 %5277, 3
  %5284 = fadd fast float %5283, %5282
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fmul fast float %5281, %5265
  %5287 = fmul fast float %5286, %5285
  br label %5288

; <label>:5288                                    ; preds = %5249, %5168, %5007, %4989, %4987
  %5289 = phi float [ %5016, %5007 ], [ %5171, %5168 ], [ %5253, %5249 ], [ 0.000000e+00, %4987 ], [ 0.000000e+00, %4989 ]
  %5290 = phi float [ %5050, %5007 ], [ %5205, %5168 ], [ %5287, %5249 ], [ 0.000000e+00, %4987 ], [ 0.000000e+00, %4989 ]
  %5291 = phi float [ %5037, %5007 ], [ %5192, %5168 ], [ %5274, %5249 ], [ 0.000000e+00, %4987 ], [ 0.000000e+00, %4989 ]
  %5292 = phi float [ %5038, %5007 ], [ %5193, %5168 ], [ %5275, %5249 ], [ 0.000000e+00, %4987 ], [ 0.000000e+00, %4989 ]
  %5293 = phi float [ %5039, %5007 ], [ %5194, %5168 ], [ %5276, %5249 ], [ 0.000000e+00, %4987 ], [ 0.000000e+00, %4989 ]
  %5294 = fmul fast float %4930, %5290
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5297 = fsub fast float %4937, %5296
  %5298 = fcmp fast olt float %5294, -2.000000e+01
  %5299 = call float @dx.op.unary.f32(i32 21, float %5294)  ; Exp(value)
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 3
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5305 = fmul fast float %5302, %5297
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = fsub fast float 1.000000e+00, %5306
  %5308 = fmul fast float %4922, 5.000000e-01
  %5309 = fadd fast float %5308, 5.000000e-01
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5307)  ; FMax(a,b)
  %5313 = fdiv fast float %5311, %5312
  %5314 = fsub fast float %5297, %4879
  %5315 = call float @dx.op.unary.f32(i32 6, float %5314)  ; FAbs(value)
  %5316 = fmul fast float %5315, %5301
  %5317 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5318 = fsub fast float 1.000000e+00, %5316
  %5319 = fmul fast float %5318, %5317
  %5320 = fadd fast float %5319, %5316
  %5321 = fmul fast float %5304, %5297
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fsub fast float 1.000000e+00, %5320
  %5324 = fmul fast float %5323, %5322
  %5325 = fadd fast float %5324, %5320
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = fadd fast float %5299, -1.000000e+00
  %5328 = select i1 %5298, float -1.000000e+00, float %5327
  %5329 = fmul fast float %5326, %5328
  %5330 = fadd fast float %5329, 1.000000e+00
  %5331 = fsub fast float -0.000000e+00, %5329
  %5332 = fmul fast float %5291, %5331
  %5333 = fmul fast float %5292, %5331
  %5334 = fmul fast float %5293, %5331
  br label %5335

; <label>:5335                                    ; preds = %5288, %4888
  %5336 = phi float [ %5289, %5288 ], [ 0.000000e+00, %4888 ]
  %5337 = phi float [ %5330, %5288 ], [ 1.000000e+00, %4888 ]
  %5338 = phi float [ %5332, %5288 ], [ 0.000000e+00, %4888 ]
  %5339 = phi float [ %5333, %5288 ], [ 0.000000e+00, %4888 ]
  %5340 = phi float [ %5334, %5288 ], [ 0.000000e+00, %4888 ]
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5343 = fsub fast float 1.000000e+00, %5337
  %5344 = fmul fast float %5343, %4923
  %5345 = fmul fast float %5344, %5342
  %5346 = fsub fast float %4923, %5345
  br i1 %4916, label %5347, label %5376, !dx.controlflow.hints !151

; <label>:5347                                    ; preds = %5335
  %5348 = fmul fast float %4924, %4913
  %5349 = fadd fast float %5348, %4914
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = fmul fast float %4895, %5346
  %5352 = fsub fast float -0.000000e+00, %5351
  %5353 = fmul fast float %4896, %5346
  %5354 = fsub fast float -0.000000e+00, %5353
  %5355 = call float @dx.op.unary.f32(i32 21, float %5352)  ; Exp(value)
  %5356 = call float @dx.op.unary.f32(i32 21, float %5354)  ; Exp(value)
  %5357 = call float @dx.op.binary.f32(i32 35, float %4903, float %5355)  ; FMax(a,b)
  %5358 = call float @dx.op.binary.f32(i32 35, float %4903, float %5356)  ; FMax(a,b)
  %5359 = fsub fast float %5358, %5357
  %5360 = fmul fast float %5359, %5350
  %5361 = fadd fast float %5360, %5357
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = fsub fast float %4900, %4905
  %5364 = fsub fast float %4901, %4906
  %5365 = fsub fast float %4902, %4907
  %5366 = fmul fast float %5350, %5363
  %5367 = fmul fast float %5350, %5364
  %5368 = fmul fast float %5350, %5365
  %5369 = fadd fast float %5366, %4905
  %5370 = fadd fast float %5367, %4906
  %5371 = fadd fast float %5368, %4907
  %5372 = fsub fast float 1.000000e+00, %5362
  %5373 = fmul fast float %5372, %5369
  %5374 = fmul fast float %5372, %5370
  %5375 = fmul fast float %5372, %5371
  br label %5435

; <label>:5376                                    ; preds = %5335
  %5377 = fmul fast float %5346, %4912
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fsub fast float 2.000000e+00, %5378
  %5380 = fmul fast float %5378, 9.921875e-01
  %5381 = fmul fast float %5380, %5379
  %5382 = fadd fast float %5381, 3.906250e-03
  %5383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %5382, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = fsub fast float %5378, %5384
  %5386 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5385)  ; FMax(a,b)
  %5387 = fmul fast float %4898, %4879
  %5388 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5389 = fcmp fast ogt float %5388, 0x3EB0C6F7A0000000
  br i1 %5389, label %5390, label %5396, !dx.controlflow.hints !152

; <label>:5390                                    ; preds = %5376
  %5391 = fmul fast float %5387, 0xBFF7154760000000
  %5392 = call float @dx.op.unary.f32(i32 21, float %5391)  ; Exp(value)
  %5393 = fsub fast float 1.000000e+00, %5392
  %5394 = fdiv fast float %5393, %5387
  %5395 = fmul fast float %5394, %4908
  br label %5396

; <label>:5396                                    ; preds = %5390, %5376
  %5397 = phi float [ %5395, %5390 ], [ %4908, %5376 ]
  %5398 = fadd fast float %5397, %4910
  %5399 = fmul fast float %5398, %5386
  %5400 = fmul fast float %4895, %5399
  %5401 = fsub fast float -0.000000e+00, %5400
  %5402 = fmul fast float %4896, %5399
  %5403 = fsub fast float -0.000000e+00, %5402
  %5404 = fmul fast float %4897, %5399
  %5405 = fsub fast float -0.000000e+00, %5404
  %5406 = call float @dx.op.unary.f32(i32 21, float %5401)  ; Exp(value)
  %5407 = call float @dx.op.unary.f32(i32 21, float %5403)  ; Exp(value)
  %5408 = call float @dx.op.unary.f32(i32 21, float %5405)  ; Exp(value)
  %5409 = fmul fast float %4924, %4924
  %5410 = fadd fast float %5409, 1.000000e+00
  %5411 = fmul fast float %5410, 0x3FAE8EC8A0000000
  %5412 = fmul fast float %5411, %4905
  %5413 = fmul fast float %5411, %4906
  %5414 = fmul fast float %5411, %4907
  %5415 = fmul fast float %4924, %4903
  %5416 = fsub fast float 1.000000e+00, %5415
  %5417 = fmul fast float %4903, %4903
  %5418 = fsub fast float 1.000000e+00, %5417
  %5419 = fmul fast float %5418, 0x3FB45F3060000000
  %5420 = fmul fast float %5416, %5416
  %5421 = fdiv fast float 1.000000e+00, %5420
  %5422 = fmul fast float %5419, %5421
  %5423 = fmul fast float %5422, %4900
  %5424 = fmul fast float %5422, %4901
  %5425 = fmul fast float %5422, %4902
  %5426 = fadd fast float %5423, %5412
  %5427 = fadd fast float %5424, %5413
  %5428 = fadd fast float %5425, %5414
  %5429 = fsub fast float 1.000000e+00, %5406
  %5430 = fsub fast float 1.000000e+00, %5407
  %5431 = fsub fast float 1.000000e+00, %5408
  %5432 = fmul fast float %5426, %5429
  %5433 = fmul fast float %5427, %5430
  %5434 = fmul fast float %5428, %5431
  br label %5435

; <label>:5435                                    ; preds = %5396, %5347
  %5436 = phi float [ %5373, %5347 ], [ %5432, %5396 ]
  %5437 = phi float [ %5374, %5347 ], [ %5433, %5396 ]
  %5438 = phi float [ %5375, %5347 ], [ %5434, %5396 ]
  %5439 = phi float [ %5362, %5347 ], [ %5406, %5396 ]
  %5440 = phi float [ %5362, %5347 ], [ %5407, %5396 ]
  %5441 = phi float [ %5362, %5347 ], [ %5408, %5396 ]
  br i1 %4932, label %5442, label %5640, !dx.controlflow.hints !153

; <label>:5442                                    ; preds = %5435
  %5443 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5444 = fmul fast float %5443, %5343
  %5445 = fsub fast float %5338, %5436
  %5446 = fsub fast float %5339, %5437
  %5447 = fsub fast float %5340, %5438
  %5448 = fmul fast float %5444, %5445
  %5449 = fmul fast float %5444, %5446
  %5450 = fmul fast float %5444, %5447
  %5451 = fadd fast float %5448, %5436
  %5452 = fadd fast float %5449, %5437
  %5453 = fadd fast float %5450, %5438
  %5454 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5439)  ; FMax(a,b)
  %5455 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5440)  ; FMax(a,b)
  %5456 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5441)  ; FMax(a,b)
  %5457 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5337)  ; FMax(a,b)
  %5458 = call float @dx.op.binary.f32(i32 35, float %5336, float %5346)  ; FMax(a,b)
  %5459 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5458)  ; FMax(a,b)
  %5460 = fdiv fast float %5336, %5459
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = fdiv fast float %5346, %5459
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = fcmp fast une float %5457, 1.000000e+00
  br i1 %5464, label %5465, label %5478, !dx.controlflow.hints !154

; <label>:5465                                    ; preds = %5442
  %5466 = call float @dx.op.unary.f32(i32 23, float %5457)  ; Log(value)
  %5467 = fmul fast float %5466, 0x3FE62E4300000000
  %5468 = fmul fast float %5338, %5467
  %5469 = fsub fast float -0.000000e+00, %5468
  %5470 = fmul fast float %5339, %5467
  %5471 = fsub fast float -0.000000e+00, %5470
  %5472 = fmul fast float %5340, %5467
  %5473 = fsub fast float -0.000000e+00, %5472
  %5474 = fsub fast float 1.000000e+00, %5457
  %5475 = fdiv fast float %5469, %5474
  %5476 = fdiv fast float %5471, %5474
  %5477 = fdiv fast float %5473, %5474
  br label %5478

; <label>:5478                                    ; preds = %5465, %5442
  %5479 = phi float [ %5475, %5465 ], [ %5338, %5442 ]
  %5480 = phi float [ %5476, %5465 ], [ %5339, %5442 ]
  %5481 = phi float [ %5477, %5465 ], [ %5340, %5442 ]
  %5482 = phi float [ %5467, %5465 ], [ 0.000000e+00, %5442 ]
  %5483 = fcmp fast une float %5454, 1.000000e+00
  br i1 %5483, label %5484, label %5491, !dx.controlflow.hints !155

; <label>:5484                                    ; preds = %5478
  %5485 = call float @dx.op.unary.f32(i32 23, float %5454)  ; Log(value)
  %5486 = fmul fast float %5485, 0x3FE62E4300000000
  %5487 = fmul fast float %5451, %5486
  %5488 = fsub fast float -0.000000e+00, %5487
  %5489 = fsub fast float 1.000000e+00, %5454
  %5490 = fdiv fast float %5488, %5489
  br label %5491

; <label>:5491                                    ; preds = %5484, %5478
  %5492 = phi float [ %5490, %5484 ], [ %5451, %5478 ]
  %5493 = phi float [ %5486, %5484 ], [ 0.000000e+00, %5478 ]
  %5494 = fcmp fast une float %5455, 1.000000e+00
  br i1 %5494, label %5495, label %5502, !dx.controlflow.hints !155

; <label>:5495                                    ; preds = %5491
  %5496 = call float @dx.op.unary.f32(i32 23, float %5455)  ; Log(value)
  %5497 = fmul fast float %5496, 0x3FE62E4300000000
  %5498 = fmul fast float %5452, %5497
  %5499 = fsub fast float -0.000000e+00, %5498
  %5500 = fsub fast float 1.000000e+00, %5455
  %5501 = fdiv fast float %5499, %5500
  br label %5502

; <label>:5502                                    ; preds = %5495, %5491
  %5503 = phi float [ %5501, %5495 ], [ %5452, %5491 ]
  %5504 = phi float [ %5497, %5495 ], [ 0.000000e+00, %5491 ]
  %5505 = fcmp fast une float %5456, 1.000000e+00
  br i1 %5505, label %5506, label %5513, !dx.controlflow.hints !155

; <label>:5506                                    ; preds = %5502
  %5507 = call float @dx.op.unary.f32(i32 23, float %5456)  ; Log(value)
  %5508 = fmul fast float %5507, 0x3FE62E4300000000
  %5509 = fmul fast float %5453, %5508
  %5510 = fsub fast float -0.000000e+00, %5509
  %5511 = fsub fast float 1.000000e+00, %5456
  %5512 = fdiv fast float %5510, %5511
  br label %5513

; <label>:5513                                    ; preds = %5506, %5502
  %5514 = phi float [ %5512, %5506 ], [ %5453, %5502 ]
  %5515 = phi float [ %5508, %5506 ], [ 0.000000e+00, %5502 ]
  %5516 = fmul fast float %5479, %5463
  %5517 = fmul fast float %5480, %5463
  %5518 = fmul fast float %5481, %5463
  %5519 = fmul fast float %5482, %5463
  %5520 = fmul fast float %5492, %5461
  %5521 = fmul fast float %5503, %5461
  %5522 = fmul fast float %5514, %5461
  %5523 = fmul fast float %5493, %5461
  %5524 = fmul fast float %5504, %5461
  %5525 = fmul fast float %5515, %5461
  %5526 = fadd fast float %5520, %5516
  %5527 = fadd fast float %5521, %5517
  %5528 = fadd fast float %5522, %5518
  %5529 = fadd fast float %5523, %5519
  %5530 = fadd fast float %5524, %5519
  %5531 = fadd fast float %5525, %5519
  %5532 = fcmp fast une float %5529, 0.000000e+00
  br i1 %5532, label %5533, label %5540, !dx.controlflow.hints !156

; <label>:5533                                    ; preds = %5513
  %5534 = fmul fast float %5529, 0x3FF7154760000000
  %5535 = call float @dx.op.unary.f32(i32 21, float %5534)  ; Exp(value)
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = fmul fast float %5526, %5536
  %5538 = fsub fast float -0.000000e+00, %5537
  %5539 = fdiv fast float %5538, %5529
  br label %5540

; <label>:5540                                    ; preds = %5533, %5513
  %5541 = phi float [ %5535, %5533 ], [ 1.000000e+00, %5513 ]
  %5542 = phi float [ %5539, %5533 ], [ %5526, %5513 ]
  %5543 = fcmp fast une float %5530, 0.000000e+00
  br i1 %5543, label %5544, label %5551, !dx.controlflow.hints !156

; <label>:5544                                    ; preds = %5540
  %5545 = fmul fast float %5530, 0x3FF7154760000000
  %5546 = call float @dx.op.unary.f32(i32 21, float %5545)  ; Exp(value)
  %5547 = fsub fast float 1.000000e+00, %5546
  %5548 = fmul fast float %5527, %5547
  %5549 = fsub fast float -0.000000e+00, %5548
  %5550 = fdiv fast float %5549, %5530
  br label %5551

; <label>:5551                                    ; preds = %5544, %5540
  %5552 = phi float [ %5546, %5544 ], [ 1.000000e+00, %5540 ]
  %5553 = phi float [ %5550, %5544 ], [ %5527, %5540 ]
  %5554 = fcmp fast une float %5531, 0.000000e+00
  br i1 %5554, label %5555, label %5562, !dx.controlflow.hints !156

; <label>:5555                                    ; preds = %5551
  %5556 = fmul fast float %5531, 0x3FF7154760000000
  %5557 = call float @dx.op.unary.f32(i32 21, float %5556)  ; Exp(value)
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = fmul fast float %5528, %5558
  %5560 = fsub fast float -0.000000e+00, %5559
  %5561 = fdiv fast float %5560, %5531
  br label %5562

; <label>:5562                                    ; preds = %5555, %5551
  %5563 = phi float [ %5557, %5555 ], [ 1.000000e+00, %5551 ]
  %5564 = phi float [ %5561, %5555 ], [ %5528, %5551 ]
  %5565 = fcmp fast ogt float %5461, %5463
  br i1 %5565, label %5566, label %5586

; <label>:5566                                    ; preds = %5562
  %5567 = fsub fast float 1.000000e+00, %5463
  %5568 = fmul fast float %5479, %5567
  %5569 = fmul fast float %5480, %5567
  %5570 = fmul fast float %5481, %5567
  %5571 = fmul fast float %5482, %5567
  %5572 = fcmp fast une float %5571, 0.000000e+00
  br i1 %5572, label %5573, label %5624, !dx.controlflow.hints !157

; <label>:5573                                    ; preds = %5566
  %5574 = fmul fast float %5571, 0x3FF7154760000000
  %5575 = call float @dx.op.unary.f32(i32 21, float %5574)  ; Exp(value)
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5568, %5576
  %5578 = fsub fast float -0.000000e+00, %5577
  %5579 = fmul fast float %5569, %5576
  %5580 = fsub fast float -0.000000e+00, %5579
  %5581 = fmul fast float %5570, %5576
  %5582 = fsub fast float -0.000000e+00, %5581
  %5583 = fdiv fast float %5578, %5571
  %5584 = fdiv fast float %5580, %5571
  %5585 = fdiv fast float %5582, %5571
  br label %5624

; <label>:5586                                    ; preds = %5562
  %5587 = fsub fast float 1.000000e+00, %5461
  %5588 = fmul fast float %5492, %5587
  %5589 = fmul fast float %5503, %5587
  %5590 = fmul fast float %5514, %5587
  %5591 = fmul fast float %5493, %5587
  %5592 = fmul fast float %5504, %5587
  %5593 = fmul fast float %5515, %5587
  %5594 = fcmp fast une float %5591, 0.000000e+00
  br i1 %5594, label %5595, label %5602, !dx.controlflow.hints !156

; <label>:5595                                    ; preds = %5586
  %5596 = fmul fast float %5591, 0x3FF7154760000000
  %5597 = call float @dx.op.unary.f32(i32 21, float %5596)  ; Exp(value)
  %5598 = fsub fast float 1.000000e+00, %5597
  %5599 = fmul fast float %5588, %5598
  %5600 = fsub fast float -0.000000e+00, %5599
  %5601 = fdiv fast float %5600, %5591
  br label %5602

; <label>:5602                                    ; preds = %5595, %5586
  %5603 = phi float [ %5601, %5595 ], [ %5588, %5586 ]
  %5604 = phi float [ %5597, %5595 ], [ 1.000000e+00, %5586 ]
  %5605 = fcmp fast une float %5592, 0.000000e+00
  br i1 %5605, label %5606, label %5613, !dx.controlflow.hints !156

; <label>:5606                                    ; preds = %5602
  %5607 = fmul fast float %5592, 0x3FF7154760000000
  %5608 = call float @dx.op.unary.f32(i32 21, float %5607)  ; Exp(value)
  %5609 = fsub fast float 1.000000e+00, %5608
  %5610 = fmul fast float %5589, %5609
  %5611 = fsub fast float -0.000000e+00, %5610
  %5612 = fdiv fast float %5611, %5592
  br label %5613

; <label>:5613                                    ; preds = %5606, %5602
  %5614 = phi float [ %5612, %5606 ], [ %5589, %5602 ]
  %5615 = phi float [ %5608, %5606 ], [ 1.000000e+00, %5602 ]
  %5616 = fcmp fast une float %5593, 0.000000e+00
  br i1 %5616, label %5617, label %5624, !dx.controlflow.hints !156

; <label>:5617                                    ; preds = %5613
  %5618 = fmul fast float %5593, 0x3FF7154760000000
  %5619 = call float @dx.op.unary.f32(i32 21, float %5618)  ; Exp(value)
  %5620 = fsub fast float 1.000000e+00, %5619
  %5621 = fmul fast float %5590, %5620
  %5622 = fsub fast float -0.000000e+00, %5621
  %5623 = fdiv fast float %5622, %5593
  br label %5624

; <label>:5624                                    ; preds = %5617, %5613, %5573, %5566
  %5625 = phi float [ %5623, %5617 ], [ %5585, %5573 ], [ %5570, %5566 ], [ %5590, %5613 ]
  %5626 = phi float [ %5614, %5617 ], [ %5584, %5573 ], [ %5569, %5566 ], [ %5614, %5613 ]
  %5627 = phi float [ %5603, %5617 ], [ %5583, %5573 ], [ %5568, %5566 ], [ %5603, %5613 ]
  %5628 = phi float [ %5619, %5617 ], [ %5575, %5573 ], [ 1.000000e+00, %5566 ], [ 1.000000e+00, %5613 ]
  %5629 = phi float [ %5615, %5617 ], [ %5575, %5573 ], [ 1.000000e+00, %5566 ], [ %5615, %5613 ]
  %5630 = phi float [ %5604, %5617 ], [ %5575, %5573 ], [ 1.000000e+00, %5566 ], [ %5604, %5613 ]
  %5631 = fmul fast float %5630, %5542
  %5632 = fmul fast float %5629, %5553
  %5633 = fmul fast float %5628, %5564
  %5634 = fadd fast float %5631, %5627
  %5635 = fadd fast float %5632, %5626
  %5636 = fadd fast float %5633, %5625
  %5637 = fmul fast float %5630, %5541
  %5638 = fmul fast float %5629, %5552
  %5639 = fmul fast float %5628, %5563
  br label %5640

; <label>:5640                                    ; preds = %5624, %5435
  %5641 = phi float [ %5639, %5624 ], [ %5441, %5435 ]
  %5642 = phi float [ %5638, %5624 ], [ %5440, %5435 ]
  %5643 = phi float [ %5637, %5624 ], [ %5439, %5435 ]
  %5644 = phi float [ %5636, %5624 ], [ %5438, %5435 ]
  %5645 = phi float [ %5635, %5624 ], [ %5437, %5435 ]
  %5646 = phi float [ %5634, %5624 ], [ %5436, %5435 ]
  %5647 = fmul fast float %5646, %4594
  %5648 = fmul fast float %5645, %4594
  %5649 = fmul fast float %5644, %4594
  %5650 = fmul fast float %5643, %4887
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5642, float %5641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5647, float %5648, float %5649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = select i1 %195, float %5651, float %5643
  %5654 = select i1 %195, float %5651, float %5642
  %5655 = select i1 %195, float 1.000000e+00, float %5641
  %5656 = select i1 %195, float %5652, float %5647
  %5657 = select i1 %195, float 0.000000e+00, float %5648
  %5658 = select i1 %195, float 0.000000e+00, float %5649
  %5659 = fmul fast float %5653, %4881
  %5660 = fmul fast float %5654, %4882
  %5661 = fmul fast float %5655, %4883
  %5662 = fadd fast float %5659, %5656
  %5663 = fadd fast float %5660, %5657
  %5664 = fadd fast float %5658, %5661
  %5665 = fmul fast float %5653, %4884
  %5666 = fmul fast float %5654, %4885
  %5667 = fmul fast float %5655, %4886
  %5668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.i32 %5668, 0
  %5670 = icmp eq i32 %5669, 0
  br i1 %5670, label %6038, label %5671, !dx.controlflow.hints !158

; <label>:5671                                    ; preds = %5640
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 2
  %5674 = extractvalue %dx.types.CBufRet.f32 %5672, 3
  %5675 = fmul fast float %5673, %85
  %5676 = fmul fast float %5674, %86
  %5677 = fmul fast float %5675, 2.000000e+00
  %5678 = fmul fast float %5676, 2.000000e+00
  %5679 = fsub fast float 1.000000e+00, %5677
  %5680 = fsub fast float 1.000000e+00, %5678
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 0
  %5683 = extractvalue %dx.types.CBufRet.f32 %5681, 1
  %5684 = extractvalue %dx.types.CBufRet.f32 %5681, 2
  %5685 = fmul fast float %5679, %5682
  %5686 = fmul fast float %5679, %5683
  %5687 = fmul fast float %5679, %5684
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.CBufRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.CBufRet.f32 %5688, 2
  %5692 = fmul fast float %5680, %5689
  %5693 = fmul fast float %5680, %5690
  %5694 = fmul fast float %5680, %5691
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5699 = fadd fast float %5692, %5696
  %5700 = fadd fast float %5699, %5685
  %5701 = fadd fast float %5693, %5697
  %5702 = fadd fast float %5701, %5686
  %5703 = fadd fast float %5694, %5698
  %5704 = fadd fast float %5703, %5687
  %5705 = fmul fast float %5700, %4880
  %5706 = fmul fast float %5702, %4880
  %5707 = fmul fast float %5704, %4880
  %5708 = fmul fast float %5705, %5705
  %5709 = fmul fast float %5706, %5706
  %5710 = fadd fast float %5708, %5709
  %5711 = fmul fast float %5707, %5707
  %5712 = fadd fast float %5710, %5711
  %5713 = call float @dx.op.unary.f32(i32 24, float %5712)  ; Sqrt(value)
  %5714 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %5715 = fsub fast float %5713, %5714
  %5716 = extractvalue %dx.types.CBufRet.f32 %4605, 2
  %5717 = fmul fast float %5715, %5716
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = fadd fast float %5718, -5.000000e-01
  %5720 = fmul fast float %5719, 2.000000e+00
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 2
  %5723 = call float @dx.op.binary.f32(i32 36, float %5722, float %5720)  ; FMin(a,b)
  %5724 = fsub fast float -0.000000e+00, %5722
  %5725 = fcmp fast ogt float %5723, %5724
  br i1 %5725, label %5726, label %6038, !dx.controlflow.hints !159

; <label>:5726                                    ; preds = %5671
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 3
  %5729 = fcmp fast ogt float %5728, 0.000000e+00
  br i1 %5729, label %5730, label %5805, !dx.controlflow.hints !160

; <label>:5730                                    ; preds = %5726
  %5731 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %5732 = extractvalue %dx.types.Dimensions %5731, 0
  %5733 = sitofp i32 %5732 to float
  %5734 = extractvalue %dx.types.Dimensions %5731, 1
  %5735 = sitofp i32 %5734 to float
  %5736 = fmul fast float %5675, %5733
  %5737 = fmul fast float %5676, %5735
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5740 = fsub fast float -0.000000e+00, %5739
  %5741 = fptoui float %5740 to i32
  %5742 = fptoui float %5736 to i32
  %5743 = fptoui float %5737 to i32
  %5744 = and i32 %5741, 31
  %5745 = lshr i32 %5742, %5744
  %5746 = lshr i32 %5743, %5744
  %5747 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %5741, i32 %5745, i32 %5746, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5748 = extractvalue %dx.types.ResRet.f32 %5747, 0
  %5749 = fcmp fast olt float %5748, -1.000000e+00
  %5750 = fcmp fast ogt float %5748, -1.000000e+00
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5753 = select i1 %5750, float %5752, float 1.000000e+00
  %5754 = fadd fast float %5748, 1.000000e+00
  %5755 = fmul fast float %5753, %5754
  %5756 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5758 = fcmp fast oge float %5756, %5757
  %5759 = select i1 %5758, float 0x4197782600000000, float %5756
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5764 = select i1 %5749, float %5761, float %5682
  %5765 = select i1 %5749, float %5762, float %5683
  %5766 = select i1 %5749, float %5763, float %5684
  %5767 = fmul fast float %5764, %5679
  %5768 = fmul fast float %5765, %5679
  %5769 = fmul fast float %5766, %5679
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.CBufRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5774 = select i1 %5749, float %5771, float %5689
  %5775 = select i1 %5749, float %5772, float %5690
  %5776 = select i1 %5749, float %5773, float %5691
  %5777 = fmul fast float %5774, %5680
  %5778 = fmul fast float %5775, %5680
  %5779 = fmul fast float %5776, %5680
  %5780 = fadd fast float %5777, %5767
  %5781 = fadd fast float %5778, %5768
  %5782 = fadd fast float %5779, %5769
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.CBufRet.f32 %5783, 1
  %5786 = extractvalue %dx.types.CBufRet.f32 %5783, 2
  %5787 = select i1 %5749, float %5784, float %5696
  %5788 = select i1 %5749, float %5785, float %5697
  %5789 = select i1 %5749, float %5786, float %5698
  %5790 = fadd fast float %5780, %5787
  %5791 = fadd fast float %5781, %5788
  %5792 = fadd fast float %5782, %5789
  %5793 = fmul fast float %5790, %5759
  %5794 = fmul fast float %5791, %5759
  %5795 = fmul fast float %5792, %5759
  %5796 = fmul fast float %5793, %5793
  %5797 = fmul fast float %5794, %5794
  %5798 = fadd fast float %5796, %5797
  %5799 = fmul fast float %5795, %5795
  %5800 = fadd fast float %5798, %5799
  %5801 = call float @dx.op.unary.f32(i32 24, float %5800)  ; Sqrt(value)
  %5802 = fsub fast float %5801, %5714
  %5803 = fmul fast float %5802, %5716
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  br label %5805

; <label>:5805                                    ; preds = %5730, %5726
  %5806 = phi float [ %5804, %5730 ], [ 1.000000e+00, %5726 ]
  %5807 = fmul fast float %5723, 5.000000e-01
  %5808 = fadd fast float %5807, 5.000000e-01
  %5809 = call float @dx.op.unary.f32(i32 22, float %5808)  ; Frc(value)
  %5810 = call float @dx.op.unary.f32(i32 27, float %5809)  ; Round_ni(value)
  %5811 = call float @dx.op.unary.f32(i32 22, float %5809)  ; Frc(value)
  %5812 = fmul fast float %5811, 2.000000e+00
  %5813 = fadd fast float %5812, -1.000000e+00
  %5814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %5675, float %5676, float %5810, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.ResRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.ResRet.f32 %5814, 2
  %5818 = extractvalue %dx.types.ResRet.f32 %5814, 3
  %5819 = fadd fast float %5815, -5.000000e-01
  %5820 = fadd fast float %5817, -5.000000e-01
  %5821 = fmul fast float %5819, 0xBFD5555560000000
  %5822 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5820, float %5821)  ; FMad(a,b,c)
  %5823 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5816, float 0.000000e+00)  ; FMad(a,b,c)
  %5824 = fadd fast float %5823, %5818
  %5825 = fmul fast float %5819, -7.500000e-01
  %5826 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5820, float %5825)  ; FMad(a,b,c)
  %5827 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5816, float 0.000000e+00)  ; FMad(a,b,c)
  %5828 = fadd fast float %5827, %5818
  %5829 = call float @dx.op.binary.f32(i32 35, float %5822, float -1.000000e+00)  ; FMax(a,b)
  %5830 = call float @dx.op.binary.f32(i32 35, float %5824, float -1.000000e+00)  ; FMax(a,b)
  %5831 = call float @dx.op.binary.f32(i32 35, float %5826, float -1.000000e+00)  ; FMax(a,b)
  %5832 = call float @dx.op.binary.f32(i32 35, float %5828, float -1.000000e+00)  ; FMax(a,b)
  %5833 = call float @dx.op.binary.f32(i32 36, float %5829, float 1.000000e+00)  ; FMin(a,b)
  %5834 = call float @dx.op.binary.f32(i32 36, float %5830, float 1.000000e+00)  ; FMin(a,b)
  %5835 = call float @dx.op.binary.f32(i32 36, float %5831, float 1.000000e+00)  ; FMin(a,b)
  %5836 = call float @dx.op.binary.f32(i32 36, float %5832, float 1.000000e+00)  ; FMin(a,b)
  %5837 = fcmp fast olt float %5833, 0x3FEFFF8020000000
  br i1 %5837, label %5838, label %5953, !dx.controlflow.hints !161

; <label>:5838                                    ; preds = %5805
  %5839 = extractvalue %dx.types.CBufRet.f32 %5721, 3
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5844 = extractvalue %dx.types.CBufRet.f32 %5840, 3
  %5845 = fsub fast float %5841, %5833
  %5846 = fsub fast float %5842, %5834
  %5847 = fsub fast float %5843, %5835
  %5848 = fsub fast float %5844, %5836
  %5849 = fmul fast float %5845, %5839
  %5850 = fmul fast float %5846, %5839
  %5851 = fmul fast float %5847, %5839
  %5852 = fmul fast float %5848, %5839
  %5853 = fadd fast float %5849, %5833
  %5854 = fadd fast float %5850, %5834
  %5855 = fsub fast float -0.000000e+00, %5854
  %5856 = fadd fast float %5851, %5835
  %5857 = fadd fast float %5852, %5836
  %5858 = fmul fast float %5853, %5853
  %5859 = fsub fast float %5854, %5858
  %5860 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5859)  ; FMax(a,b)
  %5861 = fdiv fast float 1.000000e+00, %5860
  %5862 = fmul fast float %5854, %5853
  %5863 = fsub fast float %5856, %5862
  %5864 = fsub fast float %5813, %5853
  %5865 = fmul fast float %5813, %5813
  %5866 = fsub fast float %5865, %5854
  %5867 = fmul fast float %5864, %5861
  %5868 = fmul fast float %5867, %5863
  %5869 = fsub fast float %5866, %5868
  %5870 = fmul fast float %5854, %5854
  %5871 = fsub fast float %5857, %5870
  %5872 = fmul fast float %5863, %5863
  %5873 = fmul fast float %5872, %5861
  %5874 = fsub fast float %5871, %5873
  %5875 = fdiv fast float %5869, %5874
  %5876 = fmul fast float %5863, %5875
  %5877 = fsub fast float %5864, %5876
  %5878 = fmul fast float %5877, %5861
  %5879 = fmul fast float %5878, %5853
  %5880 = fsub fast float 1.000000e+00, %5879
  %5881 = fmul fast float %5854, %5875
  %5882 = fsub fast float %5880, %5881
  %5883 = fmul fast float %5878, %5878
  %5884 = fmul fast float %5875, 4.000000e+00
  %5885 = fmul fast float %5884, %5882
  %5886 = fsub fast float %5883, %5885
  %5887 = call float @dx.op.unary.f32(i32 24, float %5886)  ; Sqrt(value)
  %5888 = fcmp fast oge float %5878, 0.000000e+00
  %5889 = fsub fast float -0.000000e+00, %5887
  %5890 = select i1 %5888, float %5889, float %5887
  %5891 = fsub fast float %5890, %5878
  %5892 = fdiv fast float %5891, %5875
  %5893 = fdiv fast float %5882, %5891
  %5894 = fmul fast float %5892, 5.000000e-01
  %5895 = fmul fast float %5893, 2.000000e+00
  %5896 = select i1 %5888, float %5894, float %5895
  %5897 = select i1 %5888, float %5895, float %5894
  %5898 = call float @dx.op.binary.f32(i32 35, float %5896, float %5897)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 36, float %5896, float %5897)  ; FMin(a,b)
  %5900 = fcmp fast ogt float %5813, %5899
  br i1 %5900, label %5901, label %5911

; <label>:5901                                    ; preds = %5838
  %5902 = fsub fast float %5813, %5899
  %5903 = fsub fast float %5898, %5899
  %5904 = fmul fast float %5902, %5903
  %5905 = fmul fast float %5898, %5813
  %5906 = fadd fast float %5898, %5813
  %5907 = fmul fast float %5906, %5853
  %5908 = fadd fast float %5905, %5854
  %5909 = fsub fast float %5908, %5907
  %5910 = fdiv fast float %5909, %5904
  br label %5911

; <label>:5911                                    ; preds = %5901, %5838
  %5912 = phi float [ %5910, %5901 ], [ 0.000000e+00, %5838 ]
  %5913 = fcmp fast ogt float %5813, %5898
  %5914 = fsub fast float %5813, %5898
  br i1 %5913, label %5915, label %5925

; <label>:5915                                    ; preds = %5911
  %5916 = fsub fast float %5898, %5899
  %5917 = fmul fast float %5916, %5914
  %5918 = fmul fast float %5899, %5813
  %5919 = fadd fast float %5899, %5813
  %5920 = fmul fast float %5919, %5853
  %5921 = fsub fast float %5855, %5918
  %5922 = fadd fast float %5921, %5920
  %5923 = fdiv fast float %5922, %5917
  %5924 = fadd fast float %5923, %5912
  br label %5925

; <label>:5925                                    ; preds = %5915, %5911
  %5926 = phi float [ %5924, %5915 ], [ %5912, %5911 ]
  %5927 = fsub fast float %5813, %5899
  %5928 = fmul fast float %5927, %5914
  %5929 = fmul fast float %5899, %5898
  %5930 = fadd fast float %5899, %5898
  %5931 = fmul fast float %5930, %5853
  %5932 = fadd fast float %5929, %5854
  %5933 = fsub fast float %5932, %5931
  %5934 = fdiv fast float %5933, %5928
  %5935 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5936 = fcmp fast oeq float %4606, 0.000000e+00
  %5937 = extractvalue %dx.types.CBufRet.f32 %5721, 0
  %5938 = fcmp fast oeq float %5937, 0.000000e+00
  %5939 = or i1 %5936, %5938
  %5940 = fmul fast float %5937, 2.000000e+00
  %5941 = fadd fast float %5722, %5723
  %5942 = fdiv fast float %5941, %5940
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = fmul fast float %5943, 2.000000e+00
  %5945 = fsub fast float 3.000000e+00, %5944
  %5946 = fmul fast float %5943, %5943
  %5947 = fmul fast float %5946, %5945
  %5948 = select i1 %5939, float 1.000000e+00, float %5947
  %5949 = fmul fast float %5934, %4606
  %5950 = fadd fast float %5935, %5949
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = fmul fast float %5948, %5951
  br label %5953

; <label>:5953                                    ; preds = %5925, %5805
  %5954 = phi float [ %5952, %5925 ], [ 0.000000e+00, %5805 ]
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %5675, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.i32 %5958, 2
  %5960 = icmp eq i32 %5959, 0
  br i1 %5960, label %5966, label %5961

; <label>:5961                                    ; preds = %5953
  %5962 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5963 = fadd fast float %5957, -1.000000e+00
  %5964 = fmul fast float %5962, %5963
  %5965 = fadd fast float %5964, 1.000000e+00
  br label %5966

; <label>:5966                                    ; preds = %5961, %5953
  %5967 = phi float [ %5965, %5961 ], [ %5955, %5953 ]
  br i1 %5729, label %5968, label %5986

; <label>:5968                                    ; preds = %5966
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5971 = fsub fast float %5806, %5970
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5973 = fsub fast float %5806, %5728
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = fsub fast float %5972, %5974
  %5976 = fsub fast float %5808, %5974
  %5977 = fdiv fast float %5976, %5975
  %5978 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5979 = fmul fast float %5978, 2.000000e+00
  %5980 = fsub fast float 3.000000e+00, %5979
  %5981 = fsub fast float %5957, %5967
  %5982 = fmul fast float %5978, %5978
  %5983 = fmul fast float %5982, %5981
  %5984 = fmul fast float %5983, %5980
  %5985 = fadd fast float %5984, %5967
  br label %5986

; <label>:5986                                    ; preds = %5968, %5966
  %5987 = phi float [ %5985, %5968 ], [ %5967, %5966 ]
  %5988 = call float @dx.op.binary.f32(i32 35, float %5957, float %5987)  ; FMax(a,b)
  %5989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.i32 %5989, 2
  %5991 = and i32 %5990, 1
  %5992 = icmp eq i32 %5991, 0
  %5993 = fcmp fast une float %5988, 1.000000e+00
  %5994 = and i1 %5993, %5992
  br i1 %5994, label %5995, label %6014

; <label>:5995                                    ; preds = %5986
  %5996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5675, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5997 = extractvalue %dx.types.ResRet.f32 %5996, 0
  %5998 = extractvalue %dx.types.ResRet.f32 %5996, 1
  %5999 = extractvalue %dx.types.ResRet.f32 %5996, 2
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6002 = fmul fast float %6001, %5997
  %6003 = fmul fast float %6001, %5998
  %6004 = fmul fast float %6001, %5999
  %6005 = fcmp fast ogt float %5957, 0x3FEFFF2E40000000
  %6006 = fsub fast float 1.000000e+00, %5988
  %6007 = fsub fast float 1.000000e+00, %5957
  %6008 = fdiv fast float %6006, %6007
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = select i1 %6005, float 0.000000e+00, float %6009
  %6011 = fmul fast float %6002, %6010
  %6012 = fmul fast float %6003, %6010
  %6013 = fmul fast float %6004, %6010
  br label %6014

; <label>:6014                                    ; preds = %5995, %5986
  %6015 = phi float [ 0.000000e+00, %5986 ], [ %6011, %5995 ]
  %6016 = phi float [ 0.000000e+00, %5986 ], [ %6012, %5995 ]
  %6017 = phi float [ 0.000000e+00, %5986 ], [ %6013, %5995 ]
  %6018 = fmul fast float %6015, %4594
  %6019 = fmul fast float %6016, %4594
  %6020 = fmul fast float %6017, %4594
  %6021 = fmul fast float %5988, %5650
  %6022 = call float @dx.op.dot3.f32(i32 55, float %5988, float %5988, float %5988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6024 = select i1 %195, float %6022, float %5988
  %6025 = select i1 %195, float 1.000000e+00, float %5988
  %6026 = select i1 %195, float %6023, float %6018
  %6027 = select i1 %195, float 0.000000e+00, float %6019
  %6028 = select i1 %195, float 0.000000e+00, float %6020
  %6029 = fmul fast float %6024, %5662
  %6030 = fmul fast float %6024, %5663
  %6031 = fmul fast float %6025, %5664
  %6032 = fadd fast float %6029, %6026
  %6033 = fadd fast float %6030, %6027
  %6034 = fadd fast float %6028, %6031
  %6035 = fmul fast float %6024, %5665
  %6036 = fmul fast float %6024, %5666
  %6037 = fmul fast float %6025, %5667
  br label %6038

; <label>:6038                                    ; preds = %6014, %5671, %5640, %4876
  %6039 = phi float [ %4881, %4876 ], [ %5662, %5640 ], [ %6032, %6014 ], [ %5662, %5671 ]
  %6040 = phi float [ %4882, %4876 ], [ %5663, %5640 ], [ %6033, %6014 ], [ %5663, %5671 ]
  %6041 = phi float [ %4883, %4876 ], [ %5664, %5640 ], [ %6034, %6014 ], [ %5664, %5671 ]
  %6042 = phi float [ %4884, %4876 ], [ %5665, %5640 ], [ %6035, %6014 ], [ %5665, %5671 ]
  %6043 = phi float [ %4885, %4876 ], [ %5666, %5640 ], [ %6036, %6014 ], [ %5666, %5671 ]
  %6044 = phi float [ %4886, %4876 ], [ %5667, %5640 ], [ %6037, %6014 ], [ %5667, %5671 ]
  %6045 = phi float [ %4887, %4876 ], [ %5650, %5640 ], [ %6021, %6014 ], [ %5650, %5671 ]
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6046, 3
  %6049 = fmul fast float %6047, %85
  %6050 = fmul fast float %6048, %86
  %6051 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  %6052 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6053 = select i1 %4616, i32 2, i32 0
  %6054 = or i32 %6053, 1
  %6055 = uitofp i32 %6054 to float
  %6056 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6051, float %6052, float %6055, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = extractvalue %dx.types.ResRet.f32 %6056, 3
  %6061 = add nuw nsw i32 %6053, 2
  %6062 = uitofp i32 %6061 to float
  %6063 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6051, float %6052, float %6062, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.ResRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.ResRet.f32 %6063, 3
  %6068 = call float @dx.op.binary.f32(i32 35, float %6058, float %6059)  ; FMax(a,b)
  %6069 = call float @dx.op.binary.f32(i32 35, float %6057, float %6068)  ; FMax(a,b)
  %6070 = call float @dx.op.binary.f32(i32 35, float %6069, float %6060)  ; FMax(a,b)
  %6071 = call float @dx.op.binary.f32(i32 36, float %6065, float %6066)  ; FMin(a,b)
  %6072 = call float @dx.op.binary.f32(i32 36, float %6064, float %6071)  ; FMin(a,b)
  %6073 = call float @dx.op.binary.f32(i32 36, float %6072, float %6067)  ; FMin(a,b)
  %6074 = fmul fast float %6070, 2.550000e+02
  %6075 = fadd fast float %6074, 0x3F70101020000000
  %6076 = fptoui float %6075 to i32
  %6077 = fmul fast float %6073, 2.550000e+02
  %6078 = fadd fast float %6077, 0x3F70101020000000
  %6079 = fptoui float %6078 to i32
  %6080 = icmp ult i32 %6076, %6079
  br i1 %6080, label %6081, label %6250

; <label>:6081                                    ; preds = %6038
  %6082 = fcmp fast ogt float %75, 9.843750e-01
  %6083 = fadd fast float %4880, -4.000000e+00
  %6084 = select i1 %6082, float -4.000000e+00, float %6083
  %6085 = call float @dx.op.binary.f32(i32 35, float %6084, float 0.000000e+00)  ; FMax(a,b)
  %6086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6086, 0
  %6088 = fadd fast float %6087, %6085
  %6089 = extractvalue %dx.types.CBufRet.f32 %6086, 2
  %6090 = fmul fast float %6088, %6089
  %6091 = call float @dx.op.unary.f32(i32 23, float %6090)  ; Log(value)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6086, 3
  %6093 = fmul fast float %6092, %6091
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6096 = fmul fast float %6093, %6095
  %6097 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6098 = uitofp i32 %6076 to float
  %6099 = uitofp i32 %6079 to float
  %6100 = fadd fast float %6098, 5.000000e-01
  %6101 = fadd fast float %6099, 5.000000e-01
  %6102 = fmul fast float %6095, %6100
  %6103 = fmul fast float %6095, %6101
  %6104 = fadd fast float %6102, 0x3F0FFB4800000000
  %6105 = fadd fast float %6103, 0xBF0FFB4800000000
  %6106 = call float @dx.op.binary.f32(i32 35, float %6097, float %6104)  ; FMax(a,b)
  %6107 = call float @dx.op.binary.f32(i32 36, float %6106, float %6105)  ; FMin(a,b)
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6108, 0
  %6112 = select i1 %4616, float %6111, float 0.000000e+00
  %6113 = fmul fast float %6109, %6107
  %6114 = fadd fast float %6112, %6113
  %6115 = fadd fast float %6112, %6110
  %6116 = fsub fast float %6109, %6110
  %6117 = fadd fast float %6116, %6112
  %6118 = call float @dx.op.binary.f32(i32 35, float %6114, float %6115)  ; FMax(a,b)
  %6119 = call float @dx.op.binary.f32(i32 36, float %6118, float %6117)  ; FMin(a,b)
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %6051, float %6052, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.i32 %6124, 0
  %6126 = extractvalue %dx.types.CBufRet.i32 %6124, 1
  %6127 = uitofp i32 %6125 to float
  %6128 = uitofp i32 %6126 to float
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.CBufRet.f32 %6129, 1
  %6132 = fmul fast float %6127, %6051
  %6133 = fmul fast float %6128, %6052
  %6134 = fadd fast float %6132, -5.000000e-01
  %6135 = fadd fast float %6133, -5.000000e-01
  %6136 = call float @dx.op.unary.f32(i32 22, float %6134)  ; Frc(value)
  %6137 = call float @dx.op.unary.f32(i32 22, float %6135)  ; Frc(value)
  %6138 = fmul fast float %6136, %6136
  %6139 = fmul fast float %6138, %6136
  %6140 = fsub fast float 3.000000e+00, %6136
  %6141 = fmul fast float %6138, %6140
  %6142 = fmul fast float %6136, 3.000000e+00
  %6143 = fmul fast float %6139, 3.000000e+00
  %6144 = fmul fast float %6138, 6.000000e+00
  %6145 = fsub fast float %6143, %6144
  %6146 = fadd fast float %6145, 4.000000e+00
  %6147 = fmul fast float %6146, 0x3FC5555560000000
  %6148 = fmul fast float %6139, -3.000000e+00
  %6149 = fadd fast float %6138, %6136
  %6150 = fmul fast float %6149, 3.000000e+00
  %6151 = fadd fast float %6148, 1.000000e+00
  %6152 = fadd fast float %6151, %6150
  %6153 = fmul fast float %6139, 0x3FC5555560000000
  %6154 = fmul fast float %6137, %6137
  %6155 = fmul fast float %6154, %6137
  %6156 = fsub fast float 3.000000e+00, %6137
  %6157 = fmul fast float %6154, %6156
  %6158 = fmul fast float %6137, 3.000000e+00
  %6159 = fmul fast float %6155, 3.000000e+00
  %6160 = fmul fast float %6154, 6.000000e+00
  %6161 = fsub fast float %6159, %6160
  %6162 = fadd fast float %6161, 4.000000e+00
  %6163 = fmul fast float %6162, 0x3FC5555560000000
  %6164 = fmul fast float %6155, -3.000000e+00
  %6165 = fadd fast float %6154, %6137
  %6166 = fmul fast float %6165, 3.000000e+00
  %6167 = fadd fast float %6164, 1.000000e+00
  %6168 = fadd fast float %6167, %6166
  %6169 = fmul fast float %6155, 0x3FC5555560000000
  %6170 = fadd fast float %6136, 1.000000e+00
  %6171 = fsub fast float 1.000000e+00, %6142
  %6172 = fadd fast float %6171, %6141
  %6173 = fadd fast float %6172, %6146
  %6174 = fmul fast float %6173, 0x3FC5555560000000
  %6175 = fdiv fast float %6147, %6174
  %6176 = fsub fast float %6170, %6175
  %6177 = fsub fast float 1.000000e+00, %6136
  %6178 = fadd fast float %6152, %6139
  %6179 = fmul fast float %6178, 0x3FC5555560000000
  %6180 = fdiv fast float %6153, %6179
  %6181 = fadd fast float %6177, %6180
  %6182 = fadd fast float %6137, 1.000000e+00
  %6183 = fsub fast float 1.000000e+00, %6158
  %6184 = fadd fast float %6183, %6157
  %6185 = fadd fast float %6184, %6162
  %6186 = fmul fast float %6185, 0x3FC5555560000000
  %6187 = fdiv fast float %6163, %6186
  %6188 = fsub fast float %6182, %6187
  %6189 = fsub fast float 1.000000e+00, %6137
  %6190 = fadd fast float %6168, %6155
  %6191 = fmul fast float %6190, 0x3FC5555560000000
  %6192 = fdiv fast float %6169, %6191
  %6193 = fadd fast float %6192, %6189
  %6194 = fmul fast float %6176, %6130
  %6195 = fsub fast float %6051, %6194
  %6196 = fmul fast float %6181, %6130
  %6197 = fadd fast float %6196, %6051
  %6198 = fmul fast float %6193, %6131
  %6199 = fadd fast float %6198, %6052
  %6200 = fmul fast float %6188, %6131
  %6201 = fsub fast float %6052, %6200
  %6202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6195, float %6201, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.ResRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.ResRet.f32 %6202, 2
  %6206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6197, float %6201, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6195, float %6199, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6211 = extractvalue %dx.types.ResRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.ResRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.ResRet.f32 %6210, 2
  %6214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6197, float %6199, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6215 = extractvalue %dx.types.ResRet.f32 %6214, 0
  %6216 = extractvalue %dx.types.ResRet.f32 %6214, 1
  %6217 = extractvalue %dx.types.ResRet.f32 %6214, 2
  %6218 = fsub fast float %6211, %6203
  %6219 = fsub fast float %6212, %6204
  %6220 = fsub fast float %6213, %6205
  %6221 = fmul fast float %6218, %6191
  %6222 = fmul fast float %6219, %6191
  %6223 = fmul fast float %6220, %6191
  %6224 = fadd fast float %6221, %6203
  %6225 = fadd fast float %6222, %6204
  %6226 = fadd fast float %6223, %6205
  %6227 = fsub fast float %6215, %6207
  %6228 = fsub fast float %6216, %6208
  %6229 = fsub fast float %6217, %6209
  %6230 = fmul fast float %6227, %6191
  %6231 = fmul fast float %6228, %6191
  %6232 = fmul fast float %6229, %6191
  %6233 = fsub fast float %6207, %6224
  %6234 = fadd fast float %6233, %6230
  %6235 = fsub fast float %6208, %6225
  %6236 = fadd fast float %6235, %6231
  %6237 = fsub fast float %6209, %6226
  %6238 = fadd fast float %6237, %6232
  %6239 = fmul fast float %6234, %6179
  %6240 = fmul fast float %6236, %6179
  %6241 = fmul fast float %6238, %6179
  %6242 = fadd fast float %6239, %6224
  %6243 = fadd fast float %6240, %6225
  %6244 = fadd fast float %6241, %6226
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6247 = fmul fast float %6242, %6246
  %6248 = fmul fast float %6243, %6246
  %6249 = fmul fast float %6244, %6246
  br label %6250

; <label>:6250                                    ; preds = %6081, %6038
  %6251 = phi float [ %6121, %6081 ], [ 1.000000e+00, %6038 ]
  %6252 = phi float [ %6122, %6081 ], [ 1.000000e+00, %6038 ]
  %6253 = phi float [ %6123, %6081 ], [ 1.000000e+00, %6038 ]
  %6254 = phi float [ %6247, %6081 ], [ 0.000000e+00, %6038 ]
  %6255 = phi float [ %6248, %6081 ], [ 0.000000e+00, %6038 ]
  %6256 = phi float [ %6249, %6081 ], [ 0.000000e+00, %6038 ]
  %6257 = fmul fast float %6254, %4594
  %6258 = fmul fast float %6255, %4594
  %6259 = fmul fast float %6256, %4594
  %6260 = fmul fast float %6251, %6045
  %6261 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6252, float %6253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = call float @dx.op.dot3.f32(i32 55, float %6257, float %6258, float %6259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = select i1 %195, float %6261, float %6251
  %6264 = select i1 %195, float %6261, float %6252
  %6265 = select i1 %195, float 1.000000e+00, float %6253
  %6266 = select i1 %195, float %6262, float %6257
  %6267 = select i1 %195, float 0.000000e+00, float %6258
  %6268 = select i1 %195, float 0.000000e+00, float %6259
  %6269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.i32 %6269, 3
  %6271 = and i32 %6270, 3
  %6272 = icmp ne i32 %6271, 0
  %6273 = and i32 %6270, 4
  %6274 = icmp ne i32 %6273, 0
  %6275 = and i1 %6272, %6274
  %6276 = and i1 %195, %6275
  br i1 %6276, label %6277, label %6283

; <label>:6277                                    ; preds = %6250
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 1
  %6280 = fadd fast float %6260, -1.000000e+00
  %6281 = fmul fast float %6279, %6280
  %6282 = fadd fast float %6281, 1.000000e+00
  br label %6283

; <label>:6283                                    ; preds = %6277, %6250
  %6284 = phi float [ %6282, %6277 ], [ %6260, %6250 ]
  %6285 = fadd fast float %6042, %6039
  %6286 = fmul fast float %6263, %6285
  %6287 = fadd fast float %6286, %6266
  %6288 = fadd fast float %6043, %6040
  %6289 = fmul fast float %6264, %6288
  %6290 = fadd fast float %6289, %6267
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  br i1 %195, label %6293, label %6316

; <label>:6293                                    ; preds = %6283
  %6294 = fadd fast float %6287, %6290
  %6295 = fmul fast float %6292, %6294
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 3
  %6298 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %6299 = fsub fast float %4603, %4597
  %6300 = fadd fast float %6299, %4604
  %6301 = fsub fast float %6300, %6298
  %6302 = extractvalue %dx.types.CBufRet.f32 %4598, 2
  %6303 = fmul fast float %6301, %6302
  %6304 = call float @dx.op.unary.f32(i32 7, float %6303)  ; Saturate(value)
  %6305 = fsub fast float %6304, %6297
  %6306 = fmul fast float %6305, %6284
  %6307 = fadd fast float %6306, %6297
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = fsub fast float %6307, %6309
  %6311 = fmul fast float %6310, 1.000000e+01
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = fmul fast float %6312, %4593
  %6314 = fadd fast float %6313, %4594
  %6315 = fmul fast float %6314, %6307
  br label %6339

; <label>:6316                                    ; preds = %6283
  %6317 = fadd fast float %6044, %6041
  %6318 = fmul fast float %6265, %6317
  %6319 = fadd fast float %6318, %6268
  %6320 = fmul fast float %6292, %6287
  %6321 = fmul fast float %6292, %6290
  %6322 = fmul fast float %6292, %6319
  %6323 = call float @dx.op.binary.f32(i32 35, float %6320, float %6321)  ; FMax(a,b)
  %6324 = call float @dx.op.binary.f32(i32 35, float %6323, float %6322)  ; FMax(a,b)
  %6325 = call float @dx.op.binary.f32(i32 35, float %6324, float %4594)  ; FMax(a,b)
  %6326 = fcmp fast ugt float %6325, 0x3F10000000000000
  br i1 %6326, label %6328, label %6327

; <label>:6327                                    ; preds = %6316
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6328

; <label>:6328                                    ; preds = %6327, %6316
  %6329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6330 = extractvalue %dx.types.ResRet.i32 %6329, 0
  %6331 = and i32 %6330, 32
  %6332 = icmp eq i32 %6331, 0
  br i1 %6332, label %6339, label %6333

; <label>:6333                                    ; preds = %6328
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 0
  %6336 = fmul fast float %6335, 0x3FE99999A0000000
  %6337 = fadd fast float %6335, %6320
  %6338 = fadd fast float %6336, %6322
  br label %6339

; <label>:6339                                    ; preds = %6333, %6328, %6293
  %6340 = phi float [ %6295, %6293 ], [ %6337, %6333 ], [ %6320, %6328 ]
  %6341 = phi float [ %6315, %6293 ], [ %6321, %6333 ], [ %6321, %6328 ]
  %6342 = phi float [ %6314, %6293 ], [ %6338, %6333 ], [ %6322, %6328 ]
  %6343 = phi float [ %6314, %6293 ], [ %4594, %6333 ], [ %4594, %6328 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6344 = call float @dx.op.binary.f32(i32 36, float %6340, float 3.225500e+04)  ; FMin(a,b)
  %6345 = call float @dx.op.binary.f32(i32 36, float %6341, float 3.225500e+04)  ; FMin(a,b)
  %6346 = call float @dx.op.binary.f32(i32 36, float %6342, float 3.225500e+04)  ; FMin(a,b)
  %6347 = call float @dx.op.binary.f32(i32 36, float %6343, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6345)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6346)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6347)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !52, !55}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{i32 20, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !37}
!37 = !{i32 0, i32 14}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !37}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!52 = !{!53, !54}
!53 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!57 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!58 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!59 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{[31 x i32] [i32 29, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !83}
!65 = !{!66, !81, null}
!66 = !{!67, !70, !72, !74, !75, !76, !77, !78, !80}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 1, i8 0, !71}
!71 = !{i32 3, i32 3}
!72 = !{i32 2, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 2, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 3, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 3, i8 0, !69}
!75 = !{i32 4, !"SH_RED", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 5, i8 0, !69}
!77 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !68, i8 1, i32 1, i8 1, i32 7, i8 0, !79}
!79 = !{i32 3, i32 1}
!80 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!83 = !{i32 0, i64 16}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !96, !98, !100}
!94 = distinct !{!94, !95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!95 = distinct !{!95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!96 = distinct !{!96, !97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!97 = distinct !{!97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!98 = distinct !{!98, !99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!99 = distinct !{!99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!100 = distinct !{!100, !101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!101 = distinct !{!101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !91, i64 0}
!115 = !{!116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!116 = distinct !{!116, !117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!117 = distinct !{!117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!118 = distinct !{!118, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!119 = distinct !{!119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!120 = distinct !{!120, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!121 = distinct !{!121, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!122 = distinct !{!122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!123 = distinct !{!123, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!124 = distinct !{!124, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!125 = distinct !{!125, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

