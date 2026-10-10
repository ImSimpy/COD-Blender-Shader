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
; shader hash: 28b5106a15b1f8a5751c6a1d7afb60ac
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %73
  %86 = fmul fast float %84, %74
  %87 = select i1 %51, float 1.000000e+00, float -1.000000e+00
  %88 = fmul fast float %68, %87
  %89 = fmul fast float %69, %87
  %90 = fmul fast float %70, %87
  %91 = fmul fast float %64, %87
  %92 = fmul fast float %65, %87
  %93 = fmul fast float %66, %87
  %94 = fmul fast float %69, %66
  %95 = fmul fast float %70, %65
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %70, %64
  %98 = fmul fast float %68, %66
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %68, %65
  %101 = fmul fast float %69, %64
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %67, %87
  %104 = fmul fast float %103, %96
  %105 = fmul fast float %103, %99
  %106 = fmul fast float %103, %102
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %108, 2.000000e+00
  %111 = fmul fast float %110, %85
  %112 = fmul fast float %109, 2.000000e+00
  %113 = fmul fast float %112, %86
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %114, %117
  %121 = fmul fast float %114, %118
  %122 = fmul fast float %114, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %115, %124
  %128 = fmul fast float %115, %125
  %129 = fmul fast float %115, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %134, %120
  %136 = fadd fast float %128, %132
  %137 = fadd fast float %136, %121
  %138 = fadd fast float %129, %133
  %139 = fadd fast float %138, %122
  %140 = fmul fast float %135, %76
  %141 = fmul fast float %137, %76
  %142 = fmul fast float %139, %76
  %143 = fmul fast float %85, 5.000000e-01
  %144 = fmul fast float %86, 5.000000e-01
  %145 = fptosi float %143 to i32
  %146 = fptosi float %144 to i32
  %147 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %145, i32 %146, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = lshr i32 %148, 18
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, 0x3F4C00EBA0000000
  %152 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %153 = fadd fast float %152, -1.000000e+00
  %154 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %155 = extractvalue %dx.types.Dimensions %154, 0
  %156 = sitofp i32 %155 to float
  %157 = extractvalue %dx.types.Dimensions %154, 1
  %158 = sitofp i32 %157 to float
  %159 = fcmp fast oge float %143, %156
  %160 = fcmp fast oge float %144, %158
  %161 = or i1 %159, %160
  %162 = select i1 %161, float 0x4197782600000000, float %153
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %166 = fmul fast float %164, %85
  %167 = fmul fast float %165, %86
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = and i32 %169, 114688
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float %166, float 0.000000e+00
  %173 = select i1 %171, float %167, float 0.000000e+00
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, 2.550000e+02
  %177 = fptoui float %176 to i32
  %178 = select i1 %171, i32 %177, i32 0
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.i32 %180, 3
  %182 = and i32 %181, 3
  %183 = icmp ne i32 %182, 0
  %184 = and i32 %181, 4
  %185 = icmp ne i32 %184, 0
  %186 = and i1 %183, %185
  br i1 %186, label %187, label %198

; <label>:187                                     ; preds = %0
  %188 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %189 = fmul fast float %188, %86
  %190 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %191 = fmul fast float %190, %85
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %191, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fsub fast float 1.000000e+00, %193
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = fcmp fast olt float %194, %196
  br label %201

; <label>:198                                     ; preds = %0
  %199 = icmp eq i32 %184, 0
  %200 = and i1 %183, %199
  br label %201

; <label>:201                                     ; preds = %198, %187
  %202 = phi i1 [ %197, %187 ], [ %200, %198 ]
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fmul fast float %204, 0x3FE3C6EF40000000
  %206 = frem fast float %85, 2.560000e+02
  %207 = frem fast float %86, 2.560000e+02
  %208 = fptoui float %206 to i32
  %209 = fptoui float %207 to i32
  %210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fadd fast float %211, %205
  %213 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = shl i32 %215, 4
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %215, 7
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %215, 22
  %223 = shl nuw nsw i32 %222, 5
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = lshr i32 %226, 8
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = lshr i32 %226, 16
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = fmul fast float %247, 0x3F50624DE0000000
  %251 = fmul fast float %249, 0x3F50624DE0000000
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 2
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %263, label %256

; <label>:256                                     ; preds = %201
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = add i32 %258, 0
  %260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %259, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %261 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %260, %dx.types.Handle %82, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 3
  br label %263

; <label>:263                                     ; preds = %256, %201
  %264 = phi float [ 1.000000e+00, %201 ], [ %262, %256 ]
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = or i32 %268, %266
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %884, label %271

; <label>:271                                     ; preds = %263
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = lshr i32 %273, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = fmul fast float %275, 0x3F50624DE0000000
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = lshr i32 %278, 16
  %280 = and i32 %279, 255
  %281 = lshr i32 %278, 24
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = lshr i32 %289, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = shl i32 %289, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %301 = fmul fast float %300, 1.000000e+03
  %302 = fmul fast float %250, %301
  %303 = call float @dx.op.unary.f32(i32 22, float %302)  ; Frc(value)
  %304 = fadd fast float %303, %241
  %305 = fmul fast float %251, %301
  %306 = call float @dx.op.unary.f32(i32 22, float %305)  ; Frc(value)
  %307 = fadd fast float %306, %243
  %308 = fmul fast float %276, %301
  %309 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %310 = fmul fast float %309, 0x401921FB60000000
  %311 = fadd fast float %310, %292
  %312 = call float @dx.op.unary.f32(i32 13, float %311)  ; Sin(value)
  %313 = call float @dx.op.unary.f32(i32 12, float %311)  ; Cos(value)
  %314 = fsub fast float -0.000000e+00, %312
  %315 = fadd fast float %71, -5.000000e-01
  %316 = fadd fast float %72, -5.000000e-01
  %317 = fmul fast float %285, %315
  %318 = fmul fast float %287, %316
  %319 = fadd fast float %317, 5.000000e-01
  %320 = fadd fast float %318, 5.000000e-01
  %321 = fmul fast float %295, %319
  %322 = fmul fast float %298, %320
  %323 = fmul fast float %313, %321
  %324 = call float @dx.op.tertiary.f32(i32 46, float %314, float %322, float %323)  ; FMad(a,b,c)
  %325 = fmul fast float %312, %321
  %326 = call float @dx.op.tertiary.f32(i32 46, float %313, float %322, float %325)  ; FMad(a,b,c)
  %327 = fadd fast float %304, %324
  %328 = fadd fast float %307, %326
  %329 = icmp ugt i32 %280, 1
  %330 = icmp ugt i32 %278, 33554431
  %331 = or i1 %330, %329
  br i1 %331, label %332, label %356

; <label>:332                                     ; preds = %271
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = lshr i32 %334, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = fmul fast float %300, %336
  %338 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %339 = mul nuw nsw i32 %280, %281
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %338, %340
  %342 = call float @dx.op.unary.f32(i32 27, float %341)  ; Round_ni(value)
  %343 = fptoui float %342 to i32
  %344 = urem i32 %343, %280
  %345 = udiv i32 %343, %281
  %346 = call float @dx.op.unary.f32(i32 22, float %327)  ; Frc(value)
  %347 = call float @dx.op.unary.f32(i32 22, float %328)  ; Frc(value)
  %348 = uitofp i32 %344 to float
  %349 = uitofp i32 %345 to float
  %350 = fadd fast float %346, %348
  %351 = fadd fast float %347, %349
  %352 = uitofp i32 %280 to float
  %353 = uitofp i32 %281 to float
  %354 = fdiv fast float %350, %352
  %355 = fdiv fast float %351, %353
  br label %356

; <label>:356                                     ; preds = %332, %271
  %357 = phi float [ %354, %332 ], [ %327, %271 ]
  %358 = phi float [ %355, %332 ], [ %328, %271 ]
  %359 = and i32 %266, 256
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %405, label %361

; <label>:361                                     ; preds = %356
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = add i32 %363, 0
  %365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %365, %dx.types.Handle %82, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = shl i32 %369, 4
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %369, 7
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fsub fast float 1.000000e+00, %264
  %377 = call float @dx.op.binary.f32(i32 35, float %376, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %378 = bitcast float %264 to i32
  %379 = sitofp i32 %378 to float
  %380 = fadd fast float %379, 0xC1CFBF8940000000
  %381 = fmul fast float %375, %380
  %382 = fadd fast float %381, 0x41CFBF8940000000
  %383 = fptosi float %382 to i32
  %384 = bitcast i32 %383 to float
  %385 = bitcast float %377 to i32
  %386 = sitofp i32 %385 to float
  %387 = fadd fast float %386, 0xC1CFBF8940000000
  %388 = fmul fast float %387, %375
  %389 = fadd fast float %388, 0x41CFBF8940000000
  %390 = fptosi float %389 to i32
  %391 = bitcast i32 %390 to float
  %392 = fmul fast float %384, %372
  %393 = fmul fast float %391, %372
  %394 = fsub fast float %377, %392
  %395 = fadd fast float %393, %377
  %396 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %397 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %398 = fsub fast float %367, %396
  %399 = fsub fast float %397, %396
  %400 = bitcast float %399 to i32
  %401 = sub nsw i32 2129859010, %400
  %402 = bitcast i32 %401 to float
  %403 = fmul fast float %402, %398
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  br label %405

; <label>:405                                     ; preds = %361, %356
  %406 = phi float [ %404, %361 ], [ %264, %356 ]
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 128
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %426, label %411

; <label>:411                                     ; preds = %405
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %82, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 524288
  %421 = icmp ne i32 %420, 0
  %422 = fcmp fast ogt float %417, 0x3FE0101020000000
  %423 = select i1 %422, float 1.000000e+00, float 0.000000e+00
  %424 = select i1 %421, float %423, float %417
  %425 = fmul fast float %424, %406
  br label %426

; <label>:426                                     ; preds = %411, %405
  %427 = phi float [ %425, %411 ], [ %406, %405 ]
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 16
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %625, label %432

; <label>:432                                     ; preds = %426
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = add i32 %436, 0
  %438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %438, %dx.types.Handle %81, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = extractvalue %dx.types.ResRet.f32 %439, 3
  %444 = and i32 %434, 255
  %445 = uitofp i32 %444 to float
  %446 = lshr i32 %434, 8
  %447 = and i32 %446, 255
  %448 = uitofp i32 %447 to float
  %449 = fmul fast float %443, %445
  %450 = fadd fast float %449, %448
  %451 = fmul fast float %450, 0x3F70101000000000
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 512
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %463, label %456

; <label>:456                                     ; preds = %432
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %460, %dx.types.Handle %82, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  br label %463

; <label>:463                                     ; preds = %456, %432
  %464 = phi float [ %462, %456 ], [ 1.000000e+00, %432 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 33554432
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %572, label %469

; <label>:469                                     ; preds = %463
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 65535
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %471, 16
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 65535
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = lshr i32 %481, 24
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %483, 0x3F70101020000000
  %485 = and i32 %481, 255
  %486 = uitofp i32 %485 to float
  %487 = fmul fast float %486, 0x3F70101020000000
  %488 = lshr i32 %481, 8
  %489 = and i32 %488, 255
  %490 = uitofp i32 %489 to float
  %491 = fmul fast float %490, 0x3F70101020000000
  %492 = lshr i32 %481, 16
  %493 = and i32 %492, 255
  %494 = uitofp i32 %493 to float
  %495 = fmul fast float %494, 0x3F70101020000000
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %512 = bitcast float %440 to i32
  %513 = ashr i32 %512, 1
  %514 = sub nsw i32 1597463174, %513
  %515 = bitcast i32 %514 to float
  %516 = fmul fast float %440, 5.000000e-01
  %517 = fmul fast float %515, %515
  %518 = fmul fast float %517, %516
  %519 = fsub fast float 1.500000e+00, %518
  %520 = fmul fast float %515, %440
  %521 = fmul fast float %520, %519
  %522 = bitcast float %441 to i32
  %523 = ashr i32 %522, 1
  %524 = sub nsw i32 1597463174, %523
  %525 = bitcast i32 %524 to float
  %526 = fmul fast float %441, 5.000000e-01
  %527 = fmul fast float %525, %525
  %528 = fmul fast float %527, %526
  %529 = fsub fast float 1.500000e+00, %528
  %530 = fmul fast float %525, %441
  %531 = fmul fast float %530, %529
  %532 = bitcast float %442 to i32
  %533 = ashr i32 %532, 1
  %534 = sub nsw i32 1597463174, %533
  %535 = bitcast i32 %534 to float
  %536 = fmul fast float %442, 5.000000e-01
  %537 = fmul fast float %535, %535
  %538 = fmul fast float %537, %536
  %539 = fsub fast float 1.500000e+00, %538
  %540 = fmul fast float %535, %442
  %541 = fmul fast float %540, %539
  %542 = fsub fast float %521, %503
  %543 = fsub fast float %531, %507
  %544 = fsub fast float %541, %511
  %545 = fmul fast float %542, %473
  %546 = fmul fast float %543, %475
  %547 = fmul fast float %544, %479
  %548 = fadd fast float %545, %487
  %549 = fadd fast float %546, %491
  %550 = fadd fast float %547, %495
  %551 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %552 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %553 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %554 = fmul fast float %551, %551
  %555 = fmul fast float %552, %552
  %556 = fmul fast float %553, %553
  %557 = fsub fast float %554, %440
  %558 = fsub fast float %555, %441
  %559 = fsub fast float %556, %442
  %560 = fmul fast float %557, %464
  %561 = fmul fast float %558, %464
  %562 = fmul fast float %559, %464
  %563 = fadd fast float %560, %440
  %564 = fadd fast float %561, %441
  %565 = fadd fast float %562, %442
  %566 = fadd fast float %484, %451
  %567 = fsub fast float %566, %500
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %569 = fsub fast float %568, %451
  %570 = fmul fast float %569, %464
  %571 = fadd fast float %570, %451
  br label %625

; <label>:572                                     ; preds = %463
  %573 = and i32 %466, 134217728
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %609, label %575

; <label>:575                                     ; preds = %572
  %576 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %577 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %578 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %579 = fadd fast float %576, -5.000000e-01
  %580 = fadd fast float %577, -5.000000e-01
  %581 = fadd fast float %578, -5.000000e-01
  %582 = fmul fast float %579, %464
  %583 = fmul fast float %580, %464
  %584 = fmul fast float %581, %464
  %585 = fadd fast float %582, 5.000000e-01
  %586 = fadd fast float %583, 5.000000e-01
  %587 = fadd fast float %584, 5.000000e-01
  %588 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %589 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %590 = call float @dx.op.unary.f32(i32 24, float %442)  ; Sqrt(value)
  %591 = fmul fast float %585, 2.000000e+00
  %592 = fsub fast float 1.000000e+00, %591
  %593 = fmul fast float %592, %588
  %594 = fadd fast float %593, %591
  %595 = fmul fast float %594, %588
  %596 = fmul fast float %586, 2.000000e+00
  %597 = fsub fast float 1.000000e+00, %596
  %598 = fmul fast float %597, %589
  %599 = fadd fast float %598, %596
  %600 = fmul fast float %599, %589
  %601 = fmul fast float %587, 2.000000e+00
  %602 = fsub fast float 1.000000e+00, %601
  %603 = fmul fast float %602, %590
  %604 = fadd fast float %603, %601
  %605 = fmul fast float %604, %590
  %606 = fmul fast float %595, %595
  %607 = fmul fast float %600, %600
  %608 = fmul fast float %605, %605
  br label %625

; <label>:609                                     ; preds = %572
  %610 = fmul fast float %229, %229
  %611 = fmul fast float %233, %233
  %612 = fmul fast float %237, %237
  %613 = fadd fast float %610, -1.000000e+00
  %614 = fadd fast float %611, -1.000000e+00
  %615 = fadd fast float %612, -1.000000e+00
  %616 = fmul fast float %464, %613
  %617 = fmul fast float %464, %614
  %618 = fmul fast float %464, %615
  %619 = fadd fast float %616, 1.000000e+00
  %620 = fadd fast float %617, 1.000000e+00
  %621 = fadd fast float %618, 1.000000e+00
  %622 = fmul fast float %619, %440
  %623 = fmul fast float %620, %441
  %624 = fmul fast float %621, %442
  br label %625

; <label>:625                                     ; preds = %609, %575, %469, %426
  %626 = phi float [ %571, %469 ], [ %451, %575 ], [ %451, %609 ], [ 0x3FA23C0BE0000000, %426 ]
  %627 = phi float [ %563, %469 ], [ %606, %575 ], [ %622, %609 ], [ 1.000000e+00, %426 ]
  %628 = phi float [ %564, %469 ], [ %607, %575 ], [ %623, %609 ], [ 1.000000e+00, %426 ]
  %629 = phi float [ %565, %469 ], [ %608, %575 ], [ %624, %609 ], [ 1.000000e+00, %426 ]
  %630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.i32 %630, 1
  %632 = and i32 %631, 1
  %633 = icmp ne i32 %632, 0
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 32
  %637 = icmp ne i32 %636, 0
  %638 = and i1 %633, %637
  %639 = select i1 %638, float 1.000000e+00, float %627
  %640 = select i1 %638, float 0x3FD3333340000000, float %628
  %641 = select i1 %638, float 0x3FD3333340000000, float %629
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 32
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %715, label %646

; <label>:646                                     ; preds = %625
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %650, 0
  %652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %652, %dx.types.Handle %81, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = extractvalue %dx.types.ResRet.f32 %653, 3
  %658 = and i32 %648, 255
  %659 = uitofp i32 %658 to float
  %660 = lshr i32 %648, 8
  %661 = and i32 %660, 255
  %662 = uitofp i32 %661 to float
  %663 = lshr i32 %648, 16
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101000000000
  %667 = fmul fast float %654, %659
  %668 = fadd fast float %667, %662
  %669 = fmul fast float %668, 0x3F70101000000000
  %670 = fadd fast float %655, -5.000000e-01
  %671 = fadd fast float %657, -5.000000e-01
  %672 = fmul fast float %670, %666
  %673 = fmul fast float %671, %666
  %674 = fadd fast float %672, 5.000000e-01
  %675 = fadd fast float %673, 5.000000e-01
  %676 = fmul fast float %674, 2.000000e+00
  %677 = fadd fast float %676, -1.000000e+00
  %678 = fmul fast float %675, 2.000000e+00
  %679 = fadd fast float %678, -1.000000e+00
  %680 = fadd fast float %677, %679
  %681 = fmul fast float %680, 5.000000e-01
  %682 = fsub fast float %677, %679
  %683 = fmul fast float %682, 5.000000e-01
  %684 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %685 = fsub fast float 1.000000e+00, %684
  %686 = call float @dx.op.unary.f32(i32 6, float %683)  ; FAbs(value)
  %687 = fsub fast float %685, %686
  %688 = call float @dx.op.dot3.f32(i32 55, float %681, float %683, float %687, float %681, float %683, float %687)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = call float @dx.op.unary.f32(i32 25, float %688)  ; Rsqrt(value)
  %690 = fmul fast float %681, %689
  %691 = fmul fast float %683, %689
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 67108864
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %711, label %696

; <label>:696                                     ; preds = %646
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 65535
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 65535
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = lshr i32 %698, 16
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = fsub fast float %669, %706
  %708 = fmul fast float %707, %700
  %709 = fadd fast float %708, %704
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  br label %711

; <label>:711                                     ; preds = %696, %646
  %712 = phi float [ %710, %696 ], [ %669, %646 ]
  %713 = call float @dx.op.dot2.f32(i32 54, float %690, float %691, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %714 = call float @dx.op.dot2.f32(i32 54, float %690, float %691, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %715

; <label>:715                                     ; preds = %711, %625
  %716 = phi float [ %712, %711 ], [ 0x3FD6666660000000, %625 ]
  %717 = phi float [ %713, %711 ], [ 0.000000e+00, %625 ]
  %718 = phi float [ %714, %711 ], [ 0.000000e+00, %625 ]
  %719 = phi float [ %656, %711 ], [ 1.000000e+00, %625 ]
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = lshr i32 %721, 22
  %723 = shl nuw nsw i32 %722, 5
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 64
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %761, label %729

; <label>:729                                     ; preds = %715
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %731, 0
  %733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 131072
  %737 = icmp eq i32 %736, 0
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %733, %dx.types.Handle %81, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = fmul fast float %739, %218
  %743 = fmul fast float %740, %221
  %744 = fmul fast float %741, %224
  br i1 %737, label %751, label %745

; <label>:745                                     ; preds = %729
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = fmul fast float %747, %742
  %749 = fmul fast float %747, %743
  %750 = fmul fast float %747, %744
  br label %751

; <label>:751                                     ; preds = %745, %729
  %752 = phi float [ %748, %745 ], [ %742, %729 ]
  %753 = phi float [ %749, %745 ], [ %743, %729 ]
  %754 = phi float [ %750, %745 ], [ %744, %729 ]
  %755 = fmul fast float %752, %724
  %756 = select i1 %202, float %755, float %752
  %757 = call float @dx.op.dot3.f32(i32 55, float %756, float %753, float %754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = select i1 %202, float 0.000000e+00, float %752
  %759 = select i1 %202, float %757, float %753
  %760 = select i1 %202, float 0.000000e+00, float %754
  br label %761

; <label>:761                                     ; preds = %751, %715
  %762 = phi float [ %758, %751 ], [ 0.000000e+00, %715 ]
  %763 = phi float [ %759, %751 ], [ 0.000000e+00, %715 ]
  %764 = phi float [ %760, %751 ], [ 0.000000e+00, %715 ]
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 1024
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %797, label %769

; <label>:769                                     ; preds = %761
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %773, 0x3F70101020000000
  %775 = lshr i32 %771, 8
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %777, 0x3F70101020000000
  %779 = lshr i32 %771, 16
  %780 = and i32 %779, 255
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %781, 0x3F70101020000000
  %783 = fmul fast float %774, %774
  %784 = fmul fast float %778, %778
  %785 = fmul fast float %782, %782
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %787, 0
  %789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %789, %dx.types.Handle %82, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = fmul fast float %783, %791
  %795 = fmul fast float %784, %792
  %796 = fmul fast float %785, %793
  br label %797

; <label>:797                                     ; preds = %769, %761
  %798 = phi float [ %794, %769 ], [ 0.000000e+00, %761 ]
  %799 = phi float [ %795, %769 ], [ 0.000000e+00, %761 ]
  %800 = phi float [ %796, %769 ], [ 0.000000e+00, %761 ]
  %801 = fcmp fast ogt float %798, 0.000000e+00
  %802 = fcmp fast ogt float %799, 0.000000e+00
  %803 = fcmp fast ogt float %800, 0.000000e+00
  %804 = call float @dx.op.unary.f32(i32 23, float %798)  ; Log(value)
  %805 = call float @dx.op.unary.f32(i32 23, float %799)  ; Log(value)
  %806 = call float @dx.op.unary.f32(i32 23, float %800)  ; Log(value)
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = lshr i32 %808, 7
  %810 = and i32 %809, 32752
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = fmul fast float %804, 0xBFE62E4300000000
  %813 = fmul fast float %812, %811
  %814 = fmul fast float %805, 0xBFE62E4300000000
  %815 = fmul fast float %814, %811
  %816 = fmul fast float %806, 0xBFE62E4300000000
  %817 = fmul fast float %816, %811
  %818 = select i1 %801, float %813, float 1.270000e+02
  %819 = select i1 %802, float %815, float 1.270000e+02
  %820 = select i1 %803, float %817, float 1.270000e+02
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = and i32 %822, 10240
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %867, label %825

; <label>:825                                     ; preds = %797
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = add i32 %827, 0
  %829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %829, %dx.types.Handle %82, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 1
  %832 = extractvalue %dx.types.ResRet.f32 %830, 3
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 1048576
  %836 = icmp ne i32 %835, 0
  %837 = and i32 %834, 8192
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %853, label %839

; <label>:839                                     ; preds = %825
  %840 = extractvalue %dx.types.ResRet.f32 %830, 2
  %841 = select i1 %836, float %840, float %831
  %842 = extractvalue %dx.types.ResRet.f32 %830, 0
  %843 = select i1 %836, float %842, float %831
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = lshr i32 %845, 16
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F80101020000000
  %850 = fmul fast float %849, %843
  %851 = fmul fast float %849, %831
  %852 = fmul fast float %849, %841
  br label %853

; <label>:853                                     ; preds = %839, %825
  %854 = phi float [ %850, %839 ], [ 0.000000e+00, %825 ]
  %855 = phi float [ %851, %839 ], [ 0.000000e+00, %825 ]
  %856 = phi float [ %852, %839 ], [ 0.000000e+00, %825 ]
  %857 = and i32 %834, 2048
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %867, label %859

; <label>:859                                     ; preds = %853
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = shl i32 %861, 4
  %863 = and i32 %862, 32752
  %864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %863)  ; LegacyF16ToF32(value)
  %865 = fmul fast float %864, %832
  %866 = call float @dx.op.binary.f32(i32 35, float %865, float 0x3F70101020000000)  ; FMax(a,b)
  br label %867

; <label>:867                                     ; preds = %859, %853, %797
  %868 = phi float [ %854, %859 ], [ %854, %853 ], [ 0.000000e+00, %797 ]
  %869 = phi float [ %855, %859 ], [ %855, %853 ], [ 0.000000e+00, %797 ]
  %870 = phi float [ %856, %859 ], [ %856, %853 ], [ 0.000000e+00, %797 ]
  %871 = phi float [ %866, %859 ], [ 0x3F70101020000000, %853 ], [ 0x3F70101020000000, %797 ]
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = lshr i32 %873, 8
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = call float @dx.op.dot3.f32(i32 55, float %639, float %640, float %641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = fmul fast float %878, %879
  %881 = fadd fast float %880, %875
  %882 = fmul fast float %881, 0x3F70101020000000
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  br label %884

; <label>:884                                     ; preds = %867, %263
  %885 = phi float [ 0.000000e+00, %263 ], [ %717, %867 ]
  %886 = phi float [ 0.000000e+00, %263 ], [ %718, %867 ]
  %887 = phi float [ 0.000000e+00, %263 ], [ %762, %867 ]
  %888 = phi float [ 0.000000e+00, %263 ], [ %763, %867 ]
  %889 = phi float [ 0.000000e+00, %263 ], [ %764, %867 ]
  %890 = phi float [ 0.000000e+00, %263 ], [ %868, %867 ]
  %891 = phi float [ 0.000000e+00, %263 ], [ %869, %867 ]
  %892 = phi float [ 0.000000e+00, %263 ], [ %870, %867 ]
  %893 = phi float [ 0.000000e+00, %263 ], [ %818, %867 ]
  %894 = phi float [ 0.000000e+00, %263 ], [ %819, %867 ]
  %895 = phi float [ 0.000000e+00, %263 ], [ %820, %867 ]
  %896 = phi float [ 0.000000e+00, %263 ], [ %639, %867 ]
  %897 = phi float [ 0.000000e+00, %263 ], [ %640, %867 ]
  %898 = phi float [ 0.000000e+00, %263 ], [ %641, %867 ]
  %899 = phi float [ 0.000000e+00, %263 ], [ %626, %867 ]
  %900 = phi float [ 0.000000e+00, %263 ], [ %427, %867 ]
  %901 = phi float [ 0.000000e+00, %263 ], [ %716, %867 ]
  %902 = phi float [ 0.000000e+00, %263 ], [ %719, %867 ]
  %903 = phi float [ 0.000000e+00, %263 ], [ %871, %867 ]
  %904 = phi float [ 0.000000e+00, %263 ], [ %883, %867 ]
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = call float @dx.op.dot2.f32(i32 54, float %885, float %886, float %885, float %886)  ; Dot2(ax,ay,bx,by)
  %908 = fmul fast float %907, 0x3FE3333340000000
  %909 = fsub fast float 1.000000e+00, %908
  %910 = call float @dx.op.dot3.f32(i32 55, float %885, float %886, float %909, float %885, float %886, float %909)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call float @dx.op.unary.f32(i32 25, float %910)  ; Rsqrt(value)
  %912 = fmul fast float %911, %885
  %913 = fmul fast float %911, %886
  %914 = fmul fast float %909, %911
  %915 = fmul fast float %914, %88
  %916 = fmul fast float %914, %89
  %917 = fmul fast float %914, %90
  %918 = fmul fast float %912, %91
  %919 = fmul fast float %912, %92
  %920 = fmul fast float %912, %93
  %921 = fadd fast float %915, %918
  %922 = fadd fast float %916, %919
  %923 = fadd fast float %917, %920
  %924 = fmul fast float %913, %104
  %925 = fmul fast float %913, %105
  %926 = fmul fast float %913, %106
  %927 = fadd fast float %921, %924
  %928 = fadd fast float %922, %925
  %929 = fadd fast float %923, %926
  %930 = call float @dx.op.dot3.f32(i32 55, float %927, float %928, float %929, float %927, float %928, float %929)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = call float @dx.op.unary.f32(i32 25, float %930)  ; Rsqrt(value)
  %932 = fmul fast float %927, %931
  %933 = fmul fast float %928, %931
  %934 = fmul fast float %929, %931
  %935 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %936 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %937 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %938 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %939 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %940 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %941 = fadd fast float %935, %140
  %942 = fadd fast float %936, %141
  %943 = fadd fast float %937, %142
  %944 = fadd fast float %938, %140
  %945 = fadd fast float %939, %141
  %946 = fadd fast float %940, %142
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %954 = fmul fast float %948, %85
  %955 = fmul fast float %954, %952
  %956 = fmul fast float %949, %86
  %957 = fmul fast float %956, %953
  %958 = fptoui float %955 to i32
  %959 = fptoui float %957 to i32
  %960 = fadd fast float %948, -1.000000e+00
  %961 = fadd fast float %949, -1.000000e+00
  %962 = fptoui float %960 to i32
  %963 = fptoui float %961 to i32
  %964 = call i32 @dx.op.binary.i32(i32 40, i32 %958, i32 %962)  ; UMin(a,b)
  %965 = call i32 @dx.op.binary.i32(i32 40, i32 %959, i32 %963)  ; UMin(a,b)
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %969 = fmul fast float %967, %76
  %970 = fsub fast float %969, %968
  %971 = fadd fast float %950, -1.000000e+00
  %972 = call float @dx.op.binary.f32(i32 36, float %970, float %971)  ; FMin(a,b)
  %973 = fptoui float %972 to i32
  %974 = fptoui float %948 to i32
  %975 = fptoui float %949 to i32
  %976 = mul i32 %973, %975
  %977 = add i32 %976, %965
  %978 = mul i32 %977, %974
  %979 = add i32 %978, %964
  %980 = shl i32 %979, 2
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 1023
  %984 = lshr i32 %982, 10
  %985 = icmp eq i32 %983, 0
  br i1 %985, label %1489, label %986

; <label>:986                                     ; preds = %884
  %987 = and i32 %982, 1023
  br label %988

; <label>:988                                     ; preds = %1120, %986
  %989 = phi i32 [ %1070, %1120 ], [ 0, %986 ]
  %990 = phi float [ %1121, %1120 ], [ 0.000000e+00, %986 ]
  %991 = phi float [ %1122, %1120 ], [ %906, %986 ]
  %992 = phi float [ %1123, %1120 ], [ %904, %986 ]
  %993 = phi float [ %1124, %1120 ], [ %893, %986 ]
  %994 = phi float [ %1125, %1120 ], [ %894, %986 ]
  %995 = phi float [ %1126, %1120 ], [ %895, %986 ]
  %996 = phi float [ %1127, %1120 ], [ 0.000000e+00, %986 ]
  %997 = phi float [ %1128, %1120 ], [ 0.000000e+00, %986 ]
  %998 = phi float [ %1129, %1120 ], [ %890, %986 ]
  %999 = phi float [ %1130, %1120 ], [ %891, %986 ]
  %1000 = phi float [ %1131, %1120 ], [ %892, %986 ]
  %1001 = phi float [ %1132, %1120 ], [ %887, %986 ]
  %1002 = phi float [ %1133, %1120 ], [ %888, %986 ]
  %1003 = phi float [ %1134, %1120 ], [ %889, %986 ]
  %1004 = phi float [ %1135, %1120 ], [ %932, %986 ]
  %1005 = phi float [ %1136, %1120 ], [ %933, %986 ]
  %1006 = phi float [ %1137, %1120 ], [ %934, %986 ]
  %1007 = phi float [ %1138, %1120 ], [ %902, %986 ]
  %1008 = phi float [ %1139, %1120 ], [ %901, %986 ]
  %1009 = phi float [ %1140, %1120 ], [ 0.000000e+00, %986 ]
  %1010 = phi float [ %1141, %1120 ], [ %899, %986 ]
  %1011 = phi float [ %1142, %1120 ], [ %896, %986 ]
  %1012 = phi float [ %1143, %1120 ], [ %897, %986 ]
  %1013 = phi float [ %1144, %1120 ], [ %898, %986 ]
  %1014 = add nuw nsw i32 %989, %984
  %1015 = shl i32 %1014, 2
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = shl i32 %1017, 8
  %1019 = or i32 %1018, 48
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = extractvalue %dx.types.ResRet.f32 %1020, 3
  %1025 = or i32 %1018, 64
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.i32 %1026, 1
  %1029 = or i32 %1018, 80
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1033 = or i32 %1018, 96
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1039 = or i32 %1018, 112
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1042 = or i32 %1018, 128
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.ResRet.f32 %1043, 3
  %1048 = or i32 %1018, 144
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = or i32 %1018, 160
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = or i32 %1018, 192
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = or i32 %1018, 208
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = or i32 %1018, 248
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = add nuw nsw i32 %989, 1
  %1071 = bitcast float %1024 to i32
  %1072 = and i32 %1071, 512
  %1073 = icmp eq i32 %1072, 0
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1079 = call float @dx.op.dot4.f32(i32 56, float %1075, float %1076, float %1077, float %1078, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1080 = or i32 %1018, 16
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = call float @dx.op.dot4.f32(i32 56, float %1082, float %1083, float %1084, float %1085, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1087 = or i32 %1018, 32
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = call float @dx.op.dot4.f32(i32 56, float %1089, float %1090, float %1091, float %1092, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1079)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 6, float %1094)  ; FAbs(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1086)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 6, float %1096)  ; FAbs(value)
  %1098 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1100 = fadd fast float %1097, %1095
  %1101 = fadd fast float %1100, %1099
  %1102 = fcmp fast oeq float %1101, 0.000000e+00
  %1103 = call float @dx.op.dot4.f32(i32 56, float %1075, float %1076, float %1077, float %1078, float %941, float %942, float %943, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1104 = call float @dx.op.dot4.f32(i32 56, float %1082, float %1083, float %1084, float %1085, float %941, float %942, float %943, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1105 = call float @dx.op.dot4.f32(i32 56, float %1075, float %1076, float %1077, float %1078, float %944, float %945, float %946, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1106 = call float @dx.op.dot4.f32(i32 56, float %1082, float %1083, float %1084, float %1085, float %944, float %945, float %946, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1107 = fsub fast float %1103, %1079
  %1108 = fsub fast float %1105, %1079
  %1109 = fsub fast float %1104, %1086
  %1110 = fsub fast float %1106, %1086
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1114 = fadd fast float %1113, %1111
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1117 = fcmp fast ogt float %1115, %1116
  %1118 = and i1 %1102, %1117
  %1119 = and i1 %1073, %1118
  br i1 %1119, label %1146, label %1120

; <label>:1120                                    ; preds = %1475, %1227, %1146, %988
  %1121 = phi float [ %990, %1146 ], [ %1230, %1227 ], [ %1230, %1475 ], [ %990, %988 ]
  %1122 = phi float [ %991, %1146 ], [ %991, %1227 ], [ %1451, %1475 ], [ %991, %988 ]
  %1123 = phi float [ %992, %1146 ], [ %992, %1227 ], [ %1449, %1475 ], [ %992, %988 ]
  %1124 = phi float [ %993, %1146 ], [ %993, %1227 ], [ %1427, %1475 ], [ %993, %988 ]
  %1125 = phi float [ %994, %1146 ], [ %994, %1227 ], [ %1428, %1475 ], [ %994, %988 ]
  %1126 = phi float [ %995, %1146 ], [ %995, %1227 ], [ %1429, %1475 ], [ %995, %988 ]
  %1127 = phi float [ %996, %1146 ], [ %996, %1227 ], [ %1354, %1475 ], [ %996, %988 ]
  %1128 = phi float [ %997, %1146 ], [ %997, %1227 ], [ %1352, %1475 ], [ %997, %988 ]
  %1129 = phi float [ %998, %1146 ], [ %998, %1227 ], [ %1397, %1475 ], [ %998, %988 ]
  %1130 = phi float [ %999, %1146 ], [ %999, %1227 ], [ %1398, %1475 ], [ %999, %988 ]
  %1131 = phi float [ %1000, %1146 ], [ %1000, %1227 ], [ %1399, %1475 ], [ %1000, %988 ]
  %1132 = phi float [ %1001, %1146 ], [ %1001, %1227 ], [ %1485, %1475 ], [ %1001, %988 ]
  %1133 = phi float [ %1002, %1146 ], [ %1002, %1227 ], [ %1486, %1475 ], [ %1002, %988 ]
  %1134 = phi float [ %1003, %1146 ], [ %1003, %1227 ], [ %1487, %1475 ], [ %1003, %988 ]
  %1135 = phi float [ %1004, %1146 ], [ %1004, %1227 ], [ %1333, %1475 ], [ %1004, %988 ]
  %1136 = phi float [ %1005, %1146 ], [ %1005, %1227 ], [ %1334, %1475 ], [ %1005, %988 ]
  %1137 = phi float [ %1006, %1146 ], [ %1006, %1227 ], [ %1335, %1475 ], [ %1006, %988 ]
  %1138 = phi float [ %1007, %1146 ], [ %1007, %1227 ], [ %1407, %1475 ], [ %1007, %988 ]
  %1139 = phi float [ %1008, %1146 ], [ %1008, %1227 ], [ %1404, %1475 ], [ %1008, %988 ]
  %1140 = phi float [ %1009, %1146 ], [ %1009, %1227 ], [ %1401, %1475 ], [ %1009, %988 ]
  %1141 = phi float [ %1010, %1146 ], [ %1010, %1227 ], [ %1350, %1475 ], [ %1010, %988 ]
  %1142 = phi float [ %1011, %1146 ], [ %1011, %1227 ], [ %1345, %1475 ], [ %1011, %988 ]
  %1143 = phi float [ %1012, %1146 ], [ %1012, %1227 ], [ %1346, %1475 ], [ %1012, %988 ]
  %1144 = phi float [ %1013, %1146 ], [ %1013, %1227 ], [ %1347, %1475 ], [ %1013, %988 ]
  %1145 = icmp eq i32 %1070, %987
  br i1 %1145, label %1488, label %988

; <label>:1146                                    ; preds = %988
  %1147 = extractvalue %dx.types.ResRet.f32 %1040, 3
  %1148 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1150 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1151 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1152 = extractvalue %dx.types.ResRet.i32 %1026, 3
  %1153 = extractvalue %dx.types.ResRet.i32 %1026, 2
  %1154 = add i32 %1152, 0
  %1155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1154, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1157 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1155, %dx.types.Handle %1156, float %1079, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float %1107, float %1109, float undef, float %1108, float %1110, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = fmul fast float %1158, %1151
  %1160 = fadd fast float %1159, %1150
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1079, %1035
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1086, float %1162)  ; FMad(a,b,c)
  %1164 = fadd fast float %1163, %1149
  %1165 = fmul fast float %1079, %1037
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1086, float %1165)  ; FMad(a,b,c)
  %1167 = fadd fast float %1166, %1148
  %1168 = fmul fast float %1107, %1035
  %1169 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1109, float %1168)  ; FMad(a,b,c)
  %1170 = fmul fast float %1107, %1037
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1109, float %1170)  ; FMad(a,b,c)
  %1172 = fmul fast float %1108, %1035
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1110, float %1172)  ; FMad(a,b,c)
  %1174 = fmul fast float %1108, %1037
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1110, float %1174)  ; FMad(a,b,c)
  %1176 = add i32 %1153, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1176, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1177, %dx.types.Handle %1156, float %1164, float %1167, float undef, float undef, i32 0, i32 0, i32 undef, float %1169, float %1171, float undef, float %1173, float %1175, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = and i32 %1071, 1024
  %1181 = icmp ne i32 %1180, 0
  %1182 = fcmp fast ogt float %1179, 0x3FE0101020000000
  %1183 = uitofp i1 %1182 to float
  %1184 = select i1 %1181, float %1183, float %1179
  %1185 = and i32 %1071, 8192
  %1186 = icmp ne i32 %1185, 0
  %1187 = select i1 %1186, float %1147, float 1.000000e+00
  %1188 = fmul fast float %1079, 2.000000e+00
  %1189 = fadd fast float %1188, -1.000000e+00
  %1190 = call float @dx.op.unary.f32(i32 6, float %1189)  ; FAbs(value)
  %1191 = fmul fast float %1190, %1068
  %1192 = fsub fast float %1191, %1068
  %1193 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1194 = fmul fast float %1086, 2.000000e+00
  %1195 = fadd fast float %1194, -1.000000e+00
  %1196 = call float @dx.op.unary.f32(i32 6, float %1195)  ; FAbs(value)
  %1197 = fmul fast float %1196, %1069
  %1198 = fsub fast float %1197, %1069
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1098, %1031
  %1201 = fsub fast float %1200, %1031
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = fmul fast float %1161, %1187
  %1204 = fmul fast float %1203, %1158
  %1205 = fmul fast float %1204, %1193
  %1206 = fmul fast float %1205, %1184
  %1207 = fmul fast float %1206, %1199
  %1208 = fmul fast float %1207, %1202
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1212 = fsub fast float %1115, %1211
  %1213 = fmul fast float %1212, %1210
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = fmul fast float %1208, %1032
  %1216 = fadd fast float %1208, %1032
  %1217 = fmul fast float %1216, %1041
  %1218 = fsub fast float %1217, %1041
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = and i32 %1071, 128
  %1221 = icmp ne i32 %1220, 0
  %1222 = select i1 %1221, float %1219, float %1215
  %1223 = fmul fast float %1222, %1214
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = fcmp fast ugt float %1223, %1225
  br i1 %1226, label %1227, label %1120

; <label>:1227                                    ; preds = %1146
  %1228 = select i1 %1186, float %1223, float 0.000000e+00
  %1229 = fadd fast float %1228, %990
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  br i1 %1186, label %1120, label %1231

; <label>:1231                                    ; preds = %1227
  %1232 = and i32 %1071, 4
  %1233 = and i32 %1071, 8
  %1234 = add i32 %1027, 0
  %1235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1234, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1235, %dx.types.Handle %1236, float %1164, float %1167, float undef, float undef, i32 0, i32 0, i32 undef, float %1169, float %1171, float undef, float %1173, float %1175, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = bitcast float %1053 to i32
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = lshr i32 %1242, 8
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1241, %1244
  %1249 = fadd fast float %1248, %1247
  %1250 = fmul fast float %1249, 0x3F70101000000000
  %1251 = add i32 %1028, 0
  %1252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1251, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1253 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1252, %dx.types.Handle %1236, float %1164, float %1167, float undef, float undef, i32 0, i32 0, i32 undef, float %1169, float %1171, float undef, float %1173, float %1175, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = bitcast float %1047 to i32
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = lshr i32 %1258, 8
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = lshr i32 %1258, 16
  %1265 = and i32 %1264, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F70101000000000
  %1268 = fmul fast float %1254, %1260
  %1269 = fadd fast float %1268, %1263
  %1270 = fmul fast float %1269, 0x3F70101000000000
  %1271 = fadd fast float %1255, -5.000000e-01
  %1272 = fadd fast float %1257, -5.000000e-01
  %1273 = fmul fast float %1271, %1267
  %1274 = fmul fast float %1272, %1267
  %1275 = fadd fast float %1273, 5.000000e-01
  %1276 = fadd fast float %1274, 5.000000e-01
  %1277 = fmul fast float %1238, %1056
  %1278 = fmul fast float %1239, %1057
  %1279 = fmul fast float %1240, %1058
  %1280 = fmul fast float %1275, 2.000000e+00
  %1281 = fadd fast float %1280, -1.000000e+00
  %1282 = fmul fast float %1276, 2.000000e+00
  %1283 = fadd fast float %1282, -1.000000e+00
  %1284 = fadd fast float %1281, %1283
  %1285 = fmul fast float %1284, 5.000000e-01
  %1286 = fsub fast float %1281, %1283
  %1287 = fmul fast float %1286, 5.000000e-01
  %1288 = call float @dx.op.unary.f32(i32 6, float %1285)  ; FAbs(value)
  %1289 = fsub fast float 1.000000e+00, %1288
  %1290 = call float @dx.op.unary.f32(i32 6, float %1287)  ; FAbs(value)
  %1291 = fsub fast float %1289, %1290
  %1292 = call float @dx.op.dot3.f32(i32 55, float %1285, float %1287, float %1291, float %1285, float %1287, float %1291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1293 = call float @dx.op.unary.f32(i32 25, float %1292)  ; Rsqrt(value)
  %1294 = fmul fast float %1285, %1293
  %1295 = fmul fast float %1287, %1293
  %1296 = fmul fast float %1293, %1291
  %1297 = fmul fast float %1296, %1021
  %1298 = fmul fast float %1296, %1022
  %1299 = fmul fast float %1296, %1023
  %1300 = fmul fast float %1294, %1044
  %1301 = fmul fast float %1294, %1045
  %1302 = fmul fast float %1294, %1046
  %1303 = fadd fast float %1300, %1297
  %1304 = fadd fast float %1301, %1298
  %1305 = fadd fast float %1302, %1299
  %1306 = fmul fast float %1295, %1050
  %1307 = fmul fast float %1295, %1051
  %1308 = fmul fast float %1295, %1052
  %1309 = fadd fast float %1303, %1306
  %1310 = fadd fast float %1304, %1307
  %1311 = fadd fast float %1305, %1308
  %1312 = call float @dx.op.dot3.f32(i32 55, float %1309, float %1310, float %1311, float %1309, float %1310, float %1311)  ; Dot3(ax,ay,az,bx,by,bz)
  %1313 = call float @dx.op.unary.f32(i32 25, float %1312)  ; Rsqrt(value)
  %1314 = fmul fast float %1309, %1313
  %1315 = fmul fast float %1310, %1313
  %1316 = fmul fast float %1311, %1313
  %1317 = icmp ne i32 %1233, 0
  %1318 = select i1 %1317, float 1.000000e+00, float 0.000000e+00
  %1319 = fmul fast float %1223, %1318
  %1320 = and i32 %1071, 1
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1322, label %1326

; <label>:1322                                    ; preds = %1231
  %1323 = fsub fast float %1314, %1004
  %1324 = fsub fast float %1315, %1005
  %1325 = fsub fast float %1316, %1006
  br label %1326

; <label>:1326                                    ; preds = %1322, %1231
  %1327 = phi float [ %1323, %1322 ], [ %1314, %1231 ]
  %1328 = phi float [ %1324, %1322 ], [ %1315, %1231 ]
  %1329 = phi float [ %1325, %1322 ], [ %1316, %1231 ]
  %1330 = fmul float %1329, %1319
  %1331 = fmul float %1328, %1319
  %1332 = fmul float %1327, %1319
  %1333 = fadd fast float %1332, %1004
  %1334 = fadd fast float %1331, %1005
  %1335 = fadd fast float %1330, %1006
  %1336 = icmp ne i32 %1232, 0
  %1337 = select i1 %1336, float 1.000000e+00, float 0.000000e+00
  %1338 = fmul fast float %1223, %1337
  %1339 = fsub fast float %1277, %1011
  %1340 = fsub fast float %1278, %1012
  %1341 = fsub fast float %1279, %1013
  %1342 = fmul fast float %1339, %1338
  %1343 = fmul fast float %1340, %1338
  %1344 = fmul fast float %1341, %1338
  %1345 = fadd fast float %1342, %1011
  %1346 = fadd fast float %1343, %1012
  %1347 = fadd fast float %1344, %1013
  %1348 = fsub fast float %1250, %1010
  %1349 = fmul fast float %1348, %1338
  %1350 = fadd fast float %1349, %1010
  %1351 = fmul fast float %1338, %997
  %1352 = fsub fast float %997, %1351
  %1353 = fmul fast float %1338, %996
  %1354 = fsub fast float %996, %1353
  %1355 = bitcast float %1065 to i32
  %1356 = lshr i32 %1355, 16
  %1357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1356)  ; LegacyF16ToF32(value)
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = and i32 %1359, 1
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1362, label %1387

; <label>:1362                                    ; preds = %1326
  %1363 = fadd fast float %1250, 0xBFB99999A0000000
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fmul fast float %1364, 0x3FF1C71C80000000
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = fmul fast float %1367, %1277
  %1369 = fmul fast float %1367, %1278
  %1370 = fmul fast float %1367, %1279
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1372, float %1373)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1371, float %1374)  ; FMax(a,b)
  %1376 = fcmp fast ogt float %1375, 0.000000e+00
  %1377 = bitcast float %1375 to i32
  %1378 = sub nsw i32 2129859010, %1377
  %1379 = bitcast i32 %1378 to float
  %1380 = select i1 %1376, float %1379, float 0.000000e+00
  %1381 = fmul fast float %1371, %1357
  %1382 = fmul fast float %1372, %1357
  %1383 = fmul fast float %1373, %1357
  %1384 = fmul fast float %1381, %1380
  %1385 = fmul fast float %1382, %1380
  %1386 = fmul fast float %1383, %1380
  br label %1387

; <label>:1387                                    ; preds = %1362, %1326
  %1388 = phi float [ %1357, %1326 ], [ %1384, %1362 ]
  %1389 = phi float [ %1357, %1326 ], [ %1385, %1362 ]
  %1390 = phi float [ %1357, %1326 ], [ %1386, %1362 ]
  %1391 = fsub fast float %1388, %998
  %1392 = fsub fast float %1389, %999
  %1393 = fsub fast float %1390, %1000
  %1394 = fmul fast float %1391, %1338
  %1395 = fmul fast float %1392, %1338
  %1396 = fmul fast float %1393, %1338
  %1397 = fadd fast float %1394, %998
  %1398 = fadd fast float %1395, %999
  %1399 = fadd fast float %1396, %1000
  %1400 = fadd fast float %1223, %1009
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = fsub fast float %1270, %1008
  %1403 = fmul fast float %1402, %1319
  %1404 = fadd fast float %1403, %1008
  %1405 = fsub fast float %1256, %1007
  %1406 = fmul fast float %1405, %1319
  %1407 = fadd fast float %1406, %1007
  br i1 %1321, label %1416, label %1408

; <label>:1408                                    ; preds = %1387
  %1409 = and i32 %1071, 32768
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1426, label %1411

; <label>:1411                                    ; preds = %1408
  %1412 = fmul fast float %1319, 1.270000e+02
  %1413 = fadd fast float %1412, %993
  %1414 = fadd fast float %1412, %994
  %1415 = fadd fast float %1412, %995
  br label %1426

; <label>:1416                                    ; preds = %1387
  %1417 = fsub fast float 1.270000e+02, %993
  %1418 = fsub fast float 1.270000e+02, %994
  %1419 = fsub fast float 1.270000e+02, %995
  %1420 = fmul fast float %1319, %1417
  %1421 = fmul fast float %1319, %1418
  %1422 = fmul fast float %1319, %1419
  %1423 = fadd fast float %1420, %993
  %1424 = fadd fast float %1421, %994
  %1425 = fadd fast float %1422, %995
  br label %1426

; <label>:1426                                    ; preds = %1416, %1411, %1408
  %1427 = phi float [ %1413, %1411 ], [ %993, %1408 ], [ %1423, %1416 ]
  %1428 = phi float [ %1414, %1411 ], [ %994, %1408 ], [ %1424, %1416 ]
  %1429 = phi float [ %1415, %1411 ], [ %995, %1408 ], [ %1425, %1416 ]
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1277, float %1278, float %1279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1434 = fmul fast float %1433, %1430
  %1435 = fadd fast float %1434, %1432
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = bitcast float %1059 to i32
  %1438 = and i32 %1437, 65535
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = lshr i32 %1437, 16
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = fcmp fast oge float %1439, 0.000000e+00
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = select i1 %1442, float %1439, float %1444
  %1446 = fadd fast float %1445, %1441
  %1447 = fsub fast float %1436, %992
  %1448 = fmul fast float %1447, %1223
  %1449 = fadd fast float %1448, %992
  %1450 = fmul fast float %1446, %1223
  %1451 = call float @dx.op.binary.f32(i32 35, float %991, float %1450)  ; FMax(a,b)
  %1452 = and i32 %1071, 16
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1475, label %1454

; <label>:1454                                    ; preds = %1426
  %1455 = add i32 %1062, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1455, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1456, %dx.types.Handle %1236, float %1164, float %1167, float undef, float undef, i32 0, i32 0, i32 undef, float %1169, float %1171, float undef, float %1173, float %1175, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = and i32 %1355, 65535
  %1462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1461)  ; LegacyF16ToF32(value)
  %1463 = fmul fast float %1458, %1056
  %1464 = fmul fast float %1459, %1057
  %1465 = fmul fast float %1460, %1058
  %1466 = and i32 %1071, 16384
  %1467 = icmp ne i32 %1466, 0
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = select i1 %1467, float %1469, float 1.000000e+00
  %1471 = fmul fast float %1470, %1462
  %1472 = fmul fast float %1463, %1471
  %1473 = fmul fast float %1464, %1471
  %1474 = fmul fast float %1465, %1471
  br label %1475

; <label>:1475                                    ; preds = %1454, %1426
  %1476 = phi float [ %1472, %1454 ], [ 0.000000e+00, %1426 ]
  %1477 = phi float [ %1473, %1454 ], [ 0.000000e+00, %1426 ]
  %1478 = phi float [ %1474, %1454 ], [ 0.000000e+00, %1426 ]
  %1479 = fsub fast float %1476, %1001
  %1480 = fsub fast float %1477, %1002
  %1481 = fsub fast float %1478, %1003
  %1482 = fmul fast float %1479, %1223
  %1483 = fmul fast float %1480, %1223
  %1484 = fmul fast float %1481, %1223
  %1485 = fadd fast float %1482, %1001
  %1486 = fadd fast float %1483, %1002
  %1487 = fadd fast float %1484, %1003
  br label %1120

; <label>:1488                                    ; preds = %1120
  br label %1489

; <label>:1489                                    ; preds = %1488, %884
  %1490 = phi float [ 0.000000e+00, %884 ], [ %1121, %1488 ]
  %1491 = phi float [ %906, %884 ], [ %1122, %1488 ]
  %1492 = phi float [ %904, %884 ], [ %1123, %1488 ]
  %1493 = phi float [ %893, %884 ], [ %1124, %1488 ]
  %1494 = phi float [ %894, %884 ], [ %1125, %1488 ]
  %1495 = phi float [ %895, %884 ], [ %1126, %1488 ]
  %1496 = phi float [ 0.000000e+00, %884 ], [ %1127, %1488 ]
  %1497 = phi float [ 0.000000e+00, %884 ], [ %1128, %1488 ]
  %1498 = phi float [ %890, %884 ], [ %1129, %1488 ]
  %1499 = phi float [ %891, %884 ], [ %1130, %1488 ]
  %1500 = phi float [ %892, %884 ], [ %1131, %1488 ]
  %1501 = phi float [ %887, %884 ], [ %1132, %1488 ]
  %1502 = phi float [ %888, %884 ], [ %1133, %1488 ]
  %1503 = phi float [ %889, %884 ], [ %1134, %1488 ]
  %1504 = phi float [ %932, %884 ], [ %1135, %1488 ]
  %1505 = phi float [ %933, %884 ], [ %1136, %1488 ]
  %1506 = phi float [ %934, %884 ], [ %1137, %1488 ]
  %1507 = phi float [ %902, %884 ], [ %1138, %1488 ]
  %1508 = phi float [ %901, %884 ], [ %1139, %1488 ]
  %1509 = phi float [ 0.000000e+00, %884 ], [ %1140, %1488 ]
  %1510 = phi float [ %899, %884 ], [ %1141, %1488 ]
  %1511 = phi float [ %896, %884 ], [ %1142, %1488 ]
  %1512 = phi float [ %897, %884 ], [ %1143, %1488 ]
  %1513 = phi float [ %898, %884 ], [ %1144, %1488 ]
  %1514 = call float @dx.op.dot3.f32(i32 55, float %1504, float %1505, float %1506, float %1504, float %1505, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1515 = call float @dx.op.unary.f32(i32 25, float %1514)  ; Rsqrt(value)
  %1516 = fmul fast float %1515, %1504
  %1517 = fmul fast float %1515, %1505
  %1518 = fmul fast float %1515, %1506
  %1519 = fadd fast float %1509, %900
  %1520 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1521 = call float @dx.op.dot3.f32(i32 55, float %1516, float %1517, float %1518, float %1516, float %1517, float %1518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1522 = call float @dx.op.unary.f32(i32 25, float %1521)  ; Rsqrt(value)
  %1523 = fmul fast float %1522, %1516
  %1524 = fmul fast float %1522, %1517
  %1525 = fmul fast float %1522, %1518
  %1526 = fadd fast float %1510, 0xBFB99999A0000000
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = fmul fast float %1527, 0x3FF1C71C80000000
  %1529 = call float @dx.op.binary.f32(i32 36, float %1510, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1530 = fsub fast float 1.000000e+00, %1528
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1532 = fmul fast float %1531, %1511
  %1533 = fmul fast float %1531, %1512
  %1534 = fmul fast float %1531, %1513
  %1535 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1536 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1537 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1538 = fmul fast float %1528, %1511
  %1539 = fmul fast float %1528, %1512
  %1540 = fmul fast float %1528, %1513
  %1541 = fadd fast float %1538, %1529
  %1542 = fadd fast float %1539, %1529
  %1543 = fadd fast float %1540, %1529
  %1544 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1547 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 1
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1566, label %1552

; <label>:1552                                    ; preds = %1489
  %1553 = call float @dx.op.binary.f32(i32 35, float %1536, float %1537)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 35, float %1535, float %1553)  ; FMax(a,b)
  %1555 = fcmp fast ogt float %1554, 0.000000e+00
  %1556 = bitcast float %1554 to i32
  %1557 = sub nsw i32 2129859010, %1556
  %1558 = bitcast i32 %1557 to float
  %1559 = select i1 %1555, float %1558, float 0.000000e+00
  %1560 = fmul fast float %1535, %1498
  %1561 = fmul fast float %1536, %1499
  %1562 = fmul fast float %1537, %1500
  %1563 = fmul fast float %1560, %1559
  %1564 = fmul fast float %1561, %1559
  %1565 = fmul fast float %1562, %1559
  br label %1566

; <label>:1566                                    ; preds = %1552, %1489
  %1567 = phi float [ %1563, %1552 ], [ %1498, %1489 ]
  %1568 = phi float [ %1564, %1552 ], [ %1499, %1489 ]
  %1569 = phi float [ %1565, %1552 ], [ %1500, %1489 ]
  %1570 = call float @dx.op.binary.f32(i32 36, float %1493, float 1.270000e+02)  ; FMin(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1494, float 1.270000e+02)  ; FMin(a,b)
  %1572 = call float @dx.op.binary.f32(i32 36, float %1495, float 1.270000e+02)  ; FMin(a,b)
  %1573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.i32 %1573, 3
  %1575 = and i32 %1574, 8
  %1576 = icmp ne i32 %1575, 0
  %1577 = call float @dx.op.binary.f32(i32 35, float %1535, float %1511)  ; FMax(a,b)
  %1578 = call float @dx.op.binary.f32(i32 35, float %1536, float %1511)  ; FMax(a,b)
  %1579 = call float @dx.op.binary.f32(i32 35, float %1537, float %1511)  ; FMax(a,b)
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1535, float %1536, float %1537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = select i1 %202, float %1511, float %1535
  %1582 = select i1 %202, float %1580, float %1536
  %1583 = select i1 %202, float 1.000000e+00, float %1537
  %1584 = select i1 %1576, float %1577, float %1581
  %1585 = select i1 %1576, float %1578, float %1582
  %1586 = select i1 %1576, float %1579, float %1583
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1568, float %1569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = select i1 %202, float %1587, float %1567
  %1589 = select i1 %202, float %1587, float %1568
  %1590 = select i1 %202, float %1587, float %1569
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = add i32 %1592, 0
  %1594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1594, %dx.types.Handle %82, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1596 = extractvalue %dx.types.ResRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.ResRet.f32 %1595, 1
  %1598 = extractvalue %dx.types.ResRet.f32 %1595, 2
  %1599 = extractvalue %dx.types.ResRet.f32 %1595, 3
  %1600 = fmul fast float %1596, 2.000000e+00
  %1601 = fadd fast float %1600, -1.000000e+00
  %1602 = fmul fast float %1597, 2.000000e+00
  %1603 = fadd fast float %1602, -1.000000e+00
  %1604 = fmul fast float %1601, %91
  %1605 = fmul fast float %1601, %92
  %1606 = fmul fast float %1601, %93
  %1607 = fmul fast float %1603, %104
  %1608 = fmul fast float %1603, %105
  %1609 = fmul fast float %1603, %106
  %1610 = fadd fast float %1604, %1607
  %1611 = fadd fast float %1605, %1608
  %1612 = fadd fast float %1606, %1609
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1610, float %1611, float %1612, float %1610, float %1611, float %1612)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = call float @dx.op.unary.f32(i32 25, float %1613)  ; Rsqrt(value)
  %1615 = fmul fast float %1610, %1614
  %1616 = fmul fast float %1611, %1614
  %1617 = fmul fast float %1612, %1614
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = bitcast i32 %1619 to float
  %1621 = fmul fast float %1620, %1598
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = extractvalue %dx.types.ResRet.i32 %1618, 1
  %1624 = bitcast i32 %1623 to float
  %1625 = fmul fast float %1624, %1599
  %1626 = fmul fast float %1625, %1523
  %1627 = fmul fast float %1625, %1524
  %1628 = fmul fast float %1625, %1525
  %1629 = fadd fast float %1626, %1615
  %1630 = fadd fast float %1627, %1616
  %1631 = fadd fast float %1628, %1617
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1629, float %1630, float %1631, float %1629, float %1630, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call float @dx.op.unary.f32(i32 25, float %1632)  ; Rsqrt(value)
  %1634 = fmul fast float %1629, %1633
  %1635 = fmul fast float %1630, %1633
  %1636 = fmul fast float %1631, %1633
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1641 = fadd fast float %1638, %140
  %1642 = fadd fast float %1639, %141
  %1643 = fadd fast float %1640, %142
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1647 = fsub fast float %1641, %1645
  %1648 = fsub fast float %1642, %1646
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1648, %1648
  %1651 = fadd fast float %1649, %1650
  %1652 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1654 = fcmp fast olt float %1652, %1653
  br i1 %1654, label %1655, label %1722

; <label>:1655                                    ; preds = %1566
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1663 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1664 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1665 = extractvalue %dx.types.CBufRet.f32 %1656, 3
  %1666 = extractvalue %dx.types.CBufRet.f32 %1658, 3
  %1667 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1668 = fadd fast float %1665, %1641
  %1669 = fadd fast float %1666, %1642
  %1670 = fadd fast float %1667, %1643
  %1671 = fmul fast float %1668, %1657
  %1672 = call float @dx.op.tertiary.f32(i32 46, float %1669, float %1659, float %1671)  ; FMad(a,b,c)
  %1673 = call float @dx.op.tertiary.f32(i32 46, float %1670, float %1661, float %1672)  ; FMad(a,b,c)
  %1674 = fmul fast float %1668, %1662
  %1675 = call float @dx.op.tertiary.f32(i32 46, float %1669, float %1663, float %1674)  ; FMad(a,b,c)
  %1676 = call float @dx.op.tertiary.f32(i32 46, float %1670, float %1664, float %1675)  ; FMad(a,b,c)
  %1677 = fsub fast float %1673, %1665
  %1678 = fsub fast float %1676, %1666
  %1679 = fsub fast float %1677, %1645
  %1680 = fadd fast float %1679, %1653
  %1681 = fsub fast float %1678, %1646
  %1682 = fadd fast float %1681, %1653
  %1683 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1684 = fmul fast float %1680, %1683
  %1685 = fmul fast float %1682, %1683
  %1686 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1688 = fsub fast float 1.000000e+00, %1686
  %1689 = fsub fast float 1.000000e+00, %1687
  %1690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %1688, float %1689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = fcmp fast ugt float %1691, 0.000000e+00
  br i1 %1692, label %1693, label %1996

; <label>:1693                                    ; preds = %1655
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1696 = fmul fast float %1695, %1691
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1698 = fadd fast float %1697, %1696
  %1699 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1700 = fadd fast float %1698, %1667
  %1701 = fmul fast float %1673, %1661
  %1702 = call float @dx.op.tertiary.f32(i32 46, float %1676, float %1664, float %1701)  ; FMad(a,b,c)
  %1703 = call float @dx.op.tertiary.f32(i32 46, float %1700, float %1699, float %1702)  ; FMad(a,b,c)
  %1704 = fsub fast float %1703, %1667
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 2
  %1707 = fsub fast float %1704, %1706
  %1708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %1688, float %1689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %1688, float %1689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = fadd fast float %1713, %1709
  %1717 = fmul fast float %1716, 0x3F847AE140000000
  %1718 = fadd fast float %1714, %1710
  %1719 = fmul fast float %1718, 0x3F847AE140000000
  %1720 = fadd fast float %1715, %1711
  %1721 = fmul fast float %1720, 0x3F847AE140000000
  br label %1996

; <label>:1722                                    ; preds = %1566
  %1723 = and i32 %178, 1
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1996, label %1725

; <label>:1725                                    ; preds = %1722
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 0
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1726, 1
  %1733 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1734 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1735 = extractvalue %dx.types.CBufRet.f32 %1726, 3
  %1736 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1737 = extractvalue %dx.types.CBufRet.f32 %1730, 3
  %1738 = fadd fast float %1735, %1641
  %1739 = fadd fast float %1736, %1642
  %1740 = fadd fast float %1737, %1643
  %1741 = fmul fast float %1738, %1727
  %1742 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1729, float %1741)  ; FMad(a,b,c)
  %1743 = call float @dx.op.tertiary.f32(i32 46, float %1740, float %1731, float %1742)  ; FMad(a,b,c)
  %1744 = fmul fast float %1738, %1732
  %1745 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1733, float %1744)  ; FMad(a,b,c)
  %1746 = call float @dx.op.tertiary.f32(i32 46, float %1740, float %1734, float %1745)  ; FMad(a,b,c)
  %1747 = fsub fast float %1743, %1735
  %1748 = fsub fast float %1746, %1736
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 0
  %1751 = extractvalue %dx.types.CBufRet.f32 %1749, 1
  %1752 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1753 = extractvalue %dx.types.CBufRet.f32 %1749, 3
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.i32 %1756, 0
  %1758 = extractvalue %dx.types.CBufRet.i32 %1756, 1
  %1759 = udiv i32 %1758, %1757
  %1760 = fsub fast float %1747, %1750
  %1761 = fsub fast float %1748, %1751
  %1762 = call float @dx.op.binary.f32(i32 35, float %1760, float 0.000000e+00)  ; FMax(a,b)
  %1763 = call float @dx.op.binary.f32(i32 35, float %1761, float 0.000000e+00)  ; FMax(a,b)
  %1764 = call float @dx.op.binary.f32(i32 36, float %1762, float %1752)  ; FMin(a,b)
  %1765 = call float @dx.op.binary.f32(i32 36, float %1763, float %1753)  ; FMin(a,b)
  %1766 = add i32 %1757, -1
  %1767 = add i32 %1759, -1
  %1768 = fmul fast float %1764, %1755
  %1769 = fmul fast float %1765, %1755
  %1770 = fptoui float %1768 to i32
  %1771 = fptoui float %1769 to i32
  %1772 = call i32 @dx.op.binary.i32(i32 40, i32 %1770, i32 %1766)  ; UMin(a,b)
  %1773 = call i32 @dx.op.binary.i32(i32 40, i32 %1771, i32 %1767)  ; UMin(a,b)
  %1774 = mul i32 %1773, %1757
  %1775 = add i32 %1774, %1772
  %1776 = shl i32 %1775, 2
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = icmp eq i32 %1778, -1
  br i1 %1779, label %1996, label %1780

; <label>:1780                                    ; preds = %1725
  %1781 = mul i32 %1778, 148
  %1782 = add i32 %1781, 4
  %1783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  %1785 = add i32 %1781, 8
  %1786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = add i32 %1781, 36
  %1789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.f32 %1789, 0
  %1791 = add i32 %1781, 60
  %1792 = add i32 %1781, 92
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = add i32 %1781, 116
  %1796 = fsub fast float %1747, %1784
  %1797 = fsub fast float %1748, %1787
  %1798 = fmul fast float %1755, %1796
  %1799 = fmul fast float %1755, %1797
  %1800 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1801 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1802 = fsub fast float 1.000000e+00, %1801
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 2
  %1805 = call float @dx.op.unary.f32(i32 83, float %1800)  ; DerivCoarseX(value)
  %1806 = call float @dx.op.unary.f32(i32 83, float %1802)  ; DerivCoarseX(value)
  %1807 = call float @dx.op.unary.f32(i32 84, float %1800)  ; DerivCoarseY(value)
  %1808 = call float @dx.op.unary.f32(i32 84, float %1802)  ; DerivCoarseY(value)
  %1809 = fmul fast float %1805, %1804
  %1810 = fmul fast float %1806, %1804
  %1811 = fmul fast float %1807, %1804
  %1812 = fmul fast float %1808, %1804
  %1813 = call float @dx.op.dot2.f32(i32 54, float %1811, float %1812, float %1811, float %1812)  ; Dot2(ax,ay,bx,by)
  %1814 = call float @dx.op.dot2.f32(i32 54, float %1809, float %1810, float %1809, float %1810)  ; Dot2(ax,ay,bx,by)
  %1815 = call float @dx.op.binary.f32(i32 35, float %1814, float %1813)  ; FMax(a,b)
  %1816 = call float @dx.op.unary.f32(i32 23, float %1815)  ; Log(value)
  %1817 = fmul fast float %1816, 5.000000e-01
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1820 = fadd fast float %1819, %1817
  %1821 = call float @dx.op.binary.f32(i32 35, float %1820, float 0.000000e+00)  ; FMax(a,b)
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1824 = fadd fast float %1823, %1821
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1827 = fadd fast float %1824, %1826
  %1828 = add i32 %1794, 0
  %1829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1828, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1830 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1829, i32 0)  ; GetDimensions(handle,mipLevel)
  %1831 = extractvalue %dx.types.Dimensions %1830, 0
  %1832 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1831)  ; FirstbitLo(value)
  %1833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.i32 %1833, 1
  %1835 = sub nsw i32 %1834, %1832
  %1836 = sitofp i32 %1835 to float
  %1837 = fsub fast float %1827, %1836
  %1838 = call float @dx.op.binary.f32(i32 35, float %1837, float 0.000000e+00)  ; FMax(a,b)
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1829, %dx.types.Handle %42, float %1800, float %1802, float %1790, float undef, i32 0, i32 0, i32 undef, float %1838)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = fcmp ule float %1840, 0x3FE0101020000000
  %1842 = extractvalue %dx.types.CBufRet.i32 %1833, 0
  %1843 = and i32 %1842, 128
  %1844 = icmp ne i32 %1843, 0
  %1845 = and i1 %1841, %1844
  br i1 %1845, label %1996, label %1846

; <label>:1846                                    ; preds = %1780
  %1847 = add i32 %1781, 20
  %1848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = add i32 %1781, 24
  %1851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.f32 %1851, 0
  %1853 = add i32 %1781, 40
  %1854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = add i32 %1781, 96
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1861 = fmul fast float %1860, %1800
  %1862 = fmul fast float %1860, %1802
  %1863 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1864 = fadd fast float %1861, %1863
  %1865 = fadd fast float %1862, %1863
  %1866 = add i32 %1858, 0
  %1867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1866, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1868 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1867, i32 0)  ; GetDimensions(handle,mipLevel)
  %1869 = extractvalue %dx.types.Dimensions %1868, 0
  %1870 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1869)  ; FirstbitLo(value)
  %1871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.i32 %1871, 1
  %1873 = sub nsw i32 %1872, %1870
  %1874 = sitofp i32 %1873 to float
  %1875 = fsub fast float %1824, %1874
  %1876 = call float @dx.op.binary.f32(i32 35, float %1875, float 0.000000e+00)  ; FMax(a,b)
  %1877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1867, %dx.types.Handle %42, float %1864, float %1865, float %1855, float undef, i32 0, i32 0, i32 undef, float %1876)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = fmul fast float %1878, %1849
  %1880 = fadd fast float %1879, %1852
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1889 = extractvalue %dx.types.CBufRet.f32 %1881, 3
  %1890 = fadd fast float %1886, %1747
  %1891 = fadd fast float %1888, %1748
  %1892 = fadd fast float %1880, %1889
  %1893 = fmul fast float %1890, %1882
  %1894 = call float @dx.op.tertiary.f32(i32 46, float %1891, float %1883, float %1893)  ; FMad(a,b,c)
  %1895 = call float @dx.op.tertiary.f32(i32 46, float %1892, float %1884, float %1894)  ; FMad(a,b,c)
  %1896 = fsub fast float %1895, %1889
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1899 = fsub fast float %1896, %1898
  %1900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.i32 %1900, 0
  %1902 = call i32 @dx.op.binary.i32(i32 40, i32 %1778, i32 %1901)  ; UMin(a,b)
  %1903 = mul i32 %1902, 36
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = add i32 %1903, 4
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = fmul fast float %1908, %1800
  %1910 = fmul fast float %1908, %1802
  %1911 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1912 = fadd fast float %1909, %1911
  %1913 = fadd fast float %1910, %1911
  %1914 = icmp eq i32 %1905, 0
  br i1 %1914, label %1983, label %1915

; <label>:1915                                    ; preds = %1846
  br label %1916

; <label>:1916                                    ; preds = %1973, %1915
  %1917 = phi float [ %1974, %1973 ], [ 0.000000e+00, %1915 ]
  %1918 = phi float [ %1975, %1973 ], [ 0.000000e+00, %1915 ]
  %1919 = phi float [ %1976, %1973 ], [ 0.000000e+00, %1915 ]
  %1920 = phi float [ %1977, %1973 ], [ 0.000000e+00, %1915 ]
  %1921 = phi float [ %1978, %1973 ], [ 0.000000e+00, %1915 ]
  %1922 = phi float [ %1979, %1973 ], [ 0.000000e+00, %1915 ]
  %1923 = phi i32 [ %1980, %1973 ], [ 0, %1915 ]
  %1924 = shl i32 %1923, 2
  %1925 = add i32 %1791, %1924
  %1926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.f32 %1926, 0
  %1928 = add i32 %1795, %1924
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = add i32 %1930, 0
  %1932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1933 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1932, i32 0)  ; GetDimensions(handle,mipLevel)
  %1934 = extractvalue %dx.types.Dimensions %1933, 0
  %1935 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1934)  ; FirstbitLo(value)
  %1936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.i32 %1936, 1
  %1938 = sub nsw i32 %1937, %1935
  %1939 = sitofp i32 %1938 to float
  %1940 = fsub fast float %1824, %1939
  %1941 = call float @dx.op.binary.f32(i32 35, float %1940, float 0.000000e+00)  ; FMax(a,b)
  %1942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1932, %dx.types.Handle %42, float %1912, float %1913, float %1927, float undef, i32 0, i32 0, i32 undef, float %1941)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = fcmp fast ogt float %1943, 0.000000e+00
  br i1 %1944, label %1945, label %1973

; <label>:1945                                    ; preds = %1916
  %1946 = add i32 %1906, %1924
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = and i32 %1948, 32767
  %1950 = mul nuw nsw i32 %1949, 928
  %1951 = add nuw nsw i32 %1950, 48
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.ResRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.ResRet.f32 %1952, 2
  %1956 = add nuw nsw i32 %1950, 60
  %1957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1961 = fmul fast float %1953, %1943
  %1962 = fmul fast float %1954, %1943
  %1963 = fmul fast float %1955, %1943
  %1964 = fadd fast float %1961, %1917
  %1965 = fadd fast float %1962, %1918
  %1966 = fadd fast float %1963, %1919
  %1967 = fmul fast float %1958, %1943
  %1968 = fmul fast float %1959, %1943
  %1969 = fmul fast float %1960, %1943
  %1970 = fadd fast float %1967, %1920
  %1971 = fadd fast float %1968, %1921
  %1972 = fadd fast float %1969, %1922
  br label %1973

; <label>:1973                                    ; preds = %1945, %1916
  %1974 = phi float [ %1964, %1945 ], [ %1917, %1916 ]
  %1975 = phi float [ %1965, %1945 ], [ %1918, %1916 ]
  %1976 = phi float [ %1966, %1945 ], [ %1919, %1916 ]
  %1977 = phi float [ %1970, %1945 ], [ %1920, %1916 ]
  %1978 = phi float [ %1971, %1945 ], [ %1921, %1916 ]
  %1979 = phi float [ %1972, %1945 ], [ %1922, %1916 ]
  %1980 = add nuw i32 %1923, 1
  %1981 = icmp eq i32 %1980, %1905
  br i1 %1981, label %1982, label %1916

; <label>:1982                                    ; preds = %1973
  br label %1983

; <label>:1983                                    ; preds = %1982, %1846
  %1984 = phi float [ 0.000000e+00, %1846 ], [ %1974, %1982 ]
  %1985 = phi float [ 0.000000e+00, %1846 ], [ %1975, %1982 ]
  %1986 = phi float [ 0.000000e+00, %1846 ], [ %1976, %1982 ]
  %1987 = phi float [ 0.000000e+00, %1846 ], [ %1977, %1982 ]
  %1988 = phi float [ 0.000000e+00, %1846 ], [ %1978, %1982 ]
  %1989 = phi float [ 0.000000e+00, %1846 ], [ %1979, %1982 ]
  %1990 = fadd fast float %1987, %1984
  %1991 = fmul fast float %1990, 0x3F847AE140000000
  %1992 = fadd fast float %1988, %1985
  %1993 = fmul fast float %1992, 0x3F847AE140000000
  %1994 = fadd fast float %1989, %1986
  %1995 = fmul fast float %1994, 0x3F847AE140000000
  br label %1996

; <label>:1996                                    ; preds = %1983, %1780, %1725, %1722, %1693, %1655
  %1997 = phi float [ %1707, %1693 ], [ -1.310720e+05, %1655 ], [ %1899, %1983 ], [ -1.310720e+05, %1725 ], [ -1.310720e+05, %1780 ], [ -1.310720e+05, %1722 ]
  %1998 = phi float [ %1717, %1693 ], [ 0.000000e+00, %1655 ], [ %1991, %1983 ], [ 0.000000e+00, %1725 ], [ 0.000000e+00, %1780 ], [ 0.000000e+00, %1722 ]
  %1999 = phi float [ %1719, %1693 ], [ 0.000000e+00, %1655 ], [ %1993, %1983 ], [ 0.000000e+00, %1725 ], [ 0.000000e+00, %1780 ], [ 0.000000e+00, %1722 ]
  %2000 = phi float [ %1721, %1693 ], [ 0.000000e+00, %1655 ], [ %1995, %1983 ], [ 0.000000e+00, %1725 ], [ 0.000000e+00, %1780 ], [ 0.000000e+00, %1722 ]
  %2001 = phi i1 [ true, %1693 ], [ false, %1655 ], [ true, %1983 ], [ false, %1725 ], [ false, %1780 ], [ false, %1722 ]
  %2002 = and i32 %178, 3
  %2003 = icmp eq i32 %2002, 1
  %2004 = select i1 %2003, float 1.000000e+00, float 0.000000e+00
  %2005 = fsub fast float %1997, %142
  %2006 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2007 = select i1 %2001, float %2006, float 1.000000e+00
  %2008 = fmul fast float %2007, %2004
  %2009 = icmp eq i32 %2002, 3
  %2010 = select i1 %2009, float 1.000000e+00, float %2008
  %2011 = call float @dx.op.binary.f32(i32 35, float %1490, float %2010)  ; FMax(a,b)
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2013 = fcmp fast une float %2012, 0.000000e+00
  %2014 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2015 = call float @dx.op.unary.f32(i32 25, float %2014)  ; Rsqrt(value)
  br i1 %2013, label %2023, label %2016

; <label>:2016                                    ; preds = %1996
  %2017 = fmul fast float %2015, %140
  %2018 = fmul fast float %2015, %141
  %2019 = fmul fast float %2015, %142
  %2020 = fsub fast float -0.000000e+00, %2017
  %2021 = fsub fast float -0.000000e+00, %2018
  %2022 = fsub fast float -0.000000e+00, %2019
  br label %2191

; <label>:2023                                    ; preds = %1996
  %2024 = fmul fast float %140, %2015
  %2025 = fsub fast float -0.000000e+00, %2024
  %2026 = fmul fast float %141, %2015
  %2027 = fsub fast float -0.000000e+00, %2026
  %2028 = fmul fast float %142, %2015
  %2029 = fsub fast float -0.000000e+00, %2028
  %2030 = call float @dx.op.dot3.f32(i32 55, float %2025, float %2027, float %2029, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %2031 = fmul fast float %2012, 2.500000e+00
  %2032 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2033 = fmul fast float %2012, 0x4013FFFFE0000000
  %2034 = fadd fast float %2033, 0xBFFFFFFFE0000000
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2036 = fmul fast float %2012, 0x4004000020000000
  %2037 = fadd fast float %2036, 0xBFF8000040000000
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2040 = fmul fast float %1526, 1.000000e+01
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = fmul fast float %2041, 2.000000e+00
  %2043 = fsub fast float 3.000000e+00, %2042
  %2044 = fmul fast float %2041, %2041
  %2045 = fmul fast float %2044, %2043
  %2046 = fsub fast float 1.000000e+00, %2045
  %2047 = fsub fast float 0x3FE3333340000000, %1547
  %2048 = fmul fast float %2047, 0x400AAAAAA0000000
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = fmul fast float %2046, %2049
  %2051 = fmul fast float %1584, 0x3FEA2B8620000000
  %2052 = fmul fast float %1585, 0x3FEA2B8620000000
  %2053 = fmul fast float %1586, 0x3FEA2B8620000000
  %2054 = fadd fast float %2051, 0x3FC81DFBA0000000
  %2055 = fmul fast float %2054, %1584
  %2056 = fadd fast float %2055, 0x3F910E6020000000
  %2057 = fadd fast float %2052, 0x3FC81DFBA0000000
  %2058 = fmul fast float %2057, %1585
  %2059 = fadd fast float %2058, 0x3F910E6020000000
  %2060 = fadd fast float %2053, 0x3FC81DFBA0000000
  %2061 = fmul fast float %2060, %1586
  %2062 = fadd fast float %2061, 0x3F910E6020000000
  %2063 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2064 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2065 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2066 = fsub fast float %2063, %1584
  %2067 = fsub fast float %2064, %1585
  %2068 = fsub fast float %2065, %1586
  %2069 = fmul fast float %2066, %2039
  %2070 = fmul fast float %2069, %2050
  %2071 = fmul fast float %2067, %2039
  %2072 = fmul fast float %2071, %2050
  %2073 = fmul fast float %2068, %2039
  %2074 = fmul fast float %2073, %2050
  %2075 = fadd fast float %2070, %1584
  %2076 = fadd fast float %2072, %1585
  %2077 = fadd fast float %2074, %1586
  %2078 = fmul fast float %1507, %1507
  %2079 = fmul fast float %2078, %2078
  %2080 = fadd fast float %2035, 1.000000e+00
  %2081 = fsub fast float %2080, %2050
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2084 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2085 = fsub fast float 1.000000e+00, %2079
  %2086 = call float @dx.op.binary.f32(i32 36, float %2082, float %2085)  ; FMin(a,b)
  %2087 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2088 = call float @dx.op.binary.f32(i32 35, float %2086, float %2087)  ; FMax(a,b)
  %2089 = fadd fast float %2084, 0xBFE4CCCCC0000000
  %2090 = fmul fast float %2089, 0x4006DB6DA0000000
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2092 = fmul fast float %2091, 2.000000e+00
  %2093 = fsub fast float 3.000000e+00, %2092
  %2094 = bitcast float %1544 to i32
  %2095 = ashr i32 %2094, 1
  %2096 = add nsw i32 %2095, 532487669
  %2097 = bitcast i32 %2096 to float
  %2098 = fsub fast float 1.000000e+00, %2097
  %2099 = bitcast float %2098 to i32
  %2100 = sub nsw i32 2129859010, %2099
  %2101 = bitcast i32 %2100 to float
  %2102 = fmul fast float %2101, 2.000000e+00
  %2103 = bitcast float %1545 to i32
  %2104 = ashr i32 %2103, 1
  %2105 = add nsw i32 %2104, 532487669
  %2106 = bitcast i32 %2105 to float
  %2107 = fsub fast float 1.000000e+00, %2106
  %2108 = bitcast float %2107 to i32
  %2109 = sub nsw i32 2129859010, %2108
  %2110 = bitcast i32 %2109 to float
  %2111 = fmul fast float %2110, 2.000000e+00
  %2112 = bitcast float %1546 to i32
  %2113 = ashr i32 %2112, 1
  %2114 = add nsw i32 %2113, 532487669
  %2115 = bitcast i32 %2114 to float
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = bitcast float %2116 to i32
  %2118 = sub nsw i32 2129859010, %2117
  %2119 = bitcast i32 %2118 to float
  %2120 = fmul fast float %2119, 2.000000e+00
  %2121 = fsub fast float 0x4002A9FBE0000000, %2102
  %2122 = fadd fast float %2102, 0x3FD54FDF00000000
  %2123 = bitcast float %2122 to i32
  %2124 = sub nsw i32 2129859010, %2123
  %2125 = bitcast i32 %2124 to float
  %2126 = fmul fast float %2125, %2121
  %2127 = fmul fast float %2126, %2126
  %2128 = fsub fast float 0x4002A9FBE0000000, %2111
  %2129 = fadd fast float %2111, 0x3FD54FDF00000000
  %2130 = bitcast float %2129 to i32
  %2131 = sub nsw i32 2129859010, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2132, %2128
  %2134 = fmul fast float %2133, %2133
  %2135 = fsub fast float 0x4002A9FBE0000000, %2120
  %2136 = fadd fast float %2120, 0x3FD54FDF00000000
  %2137 = bitcast float %2136 to i32
  %2138 = sub nsw i32 2129859010, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2139, %2135
  %2141 = fmul fast float %2140, %2140
  %2142 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2127)  ; FMax(a,b)
  %2143 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2134)  ; FMax(a,b)
  %2144 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2141)  ; FMax(a,b)
  %2145 = fsub fast float 1.000000e+00, %2030
  %2146 = fadd fast float %2145, %2046
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2148 = fsub fast float 1.000000e+00, %2010
  %2149 = fmul fast float %2088, %2148
  %2150 = fmul fast float %2091, %2091
  %2151 = fmul fast float %2150, %2149
  %2152 = fmul fast float %2151, %2093
  %2153 = fmul fast float %2148, 0xBFE99999A0000000
  %2154 = fmul fast float %2153, %2039
  %2155 = fmul fast float %2154, %2050
  %2156 = fadd fast float %2155, 1.000000e+00
  %2157 = fadd fast float %1547, -1.000000e+00
  %2158 = fmul fast float %2156, %2157
  %2159 = fadd fast float %2158, 1.000000e+00
  %2160 = fsub fast float %2142, %1544
  %2161 = fsub fast float %2143, %1545
  %2162 = fsub fast float %2144, %1546
  %2163 = fmul fast float %2152, %2160
  %2164 = fmul fast float %2152, %2161
  %2165 = fmul fast float %2152, %2162
  %2166 = fadd fast float %2163, %1544
  %2167 = fadd fast float %2164, %1545
  %2168 = fadd fast float %2165, %1546
  %2169 = fsub fast float %88, %1523
  %2170 = fsub fast float %89, %1524
  %2171 = fsub fast float %90, %1525
  %2172 = fmul fast float %2152, %2169
  %2173 = fmul fast float %2152, %2170
  %2174 = fmul fast float %2152, %2171
  %2175 = fadd fast float %2172, %1523
  %2176 = fadd fast float %2173, %1524
  %2177 = fadd fast float %2174, %1525
  %2178 = fmul fast float %2152, %2147
  %2179 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2178, %2180
  %2182 = fadd fast float %2181, %2179
  %2183 = fsub fast float 1.000000e+00, %1507
  %2184 = fmul fast float %2152, %2183
  %2185 = fadd fast float %2184, %1507
  %2186 = call float @dx.op.dot3.f32(i32 55, float %2175, float %2176, float %2177, float %2175, float %2176, float %2177)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = call float @dx.op.unary.f32(i32 25, float %2186)  ; Rsqrt(value)
  %2188 = fmul fast float %2175, %2187
  %2189 = fmul fast float %2176, %2187
  %2190 = fmul fast float %2177, %2187
  br label %2191

; <label>:2191                                    ; preds = %2023, %2016
  %2192 = phi float [ %2022, %2016 ], [ %2029, %2023 ]
  %2193 = phi float [ %2021, %2016 ], [ %2027, %2023 ]
  %2194 = phi float [ %2020, %2016 ], [ %2025, %2023 ]
  %2195 = phi float [ %2019, %2016 ], [ %2028, %2023 ]
  %2196 = phi float [ %2018, %2016 ], [ %2026, %2023 ]
  %2197 = phi float [ %2017, %2016 ], [ %2024, %2023 ]
  %2198 = phi float [ %1544, %2016 ], [ %2166, %2023 ]
  %2199 = phi float [ %1545, %2016 ], [ %2167, %2023 ]
  %2200 = phi float [ %1546, %2016 ], [ %2168, %2023 ]
  %2201 = phi float [ %1523, %2016 ], [ %2188, %2023 ]
  %2202 = phi float [ %1524, %2016 ], [ %2189, %2023 ]
  %2203 = phi float [ %1525, %2016 ], [ %2190, %2023 ]
  %2204 = phi float [ %1584, %2016 ], [ %2075, %2023 ]
  %2205 = phi float [ %1585, %2016 ], [ %2076, %2023 ]
  %2206 = phi float [ %1586, %2016 ], [ %2077, %2023 ]
  %2207 = phi float [ %1547, %2016 ], [ %2182, %2023 ]
  %2208 = phi float [ %1507, %2016 ], [ %2185, %2023 ]
  %2209 = fsub fast float -0.000000e+00, %2203
  %2210 = fsub fast float -0.000000e+00, %2202
  %2211 = fsub fast float -0.000000e+00, %2201
  %2212 = fsub fast float -0.000000e+00, %142
  %2213 = select i1 %202, float 0.000000e+00, float %2200
  %2214 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float %2194, float %2193, float %2192)  ; Dot3(ax,ay,az,bx,by,bz)
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2216 = call float @dx.op.dot3.f32(i32 55, float %2197, float %2196, float %2195, float %2201, float %2202, float %2203)  ; Dot3(ax,ay,az,bx,by,bz)
  %2217 = fmul fast float %2216, 2.000000e+00
  %2218 = fmul fast float %2217, %2201
  %2219 = fmul fast float %2217, %2202
  %2220 = fmul fast float %2217, %2203
  %2221 = fsub fast float %2197, %2218
  %2222 = fsub fast float %2196, %2219
  %2223 = fsub fast float %2195, %2220
  %2224 = fmul fast float %2196, %1636
  %2225 = fmul fast float %2195, %1635
  %2226 = fsub fast float %2224, %2225
  %2227 = fmul fast float %2195, %1634
  %2228 = fmul fast float %2197, %1636
  %2229 = fsub fast float %2227, %2228
  %2230 = fmul fast float %2197, %1635
  %2231 = fmul fast float %2196, %1634
  %2232 = fsub fast float %2230, %2231
  %2233 = fmul fast float %2229, %1636
  %2234 = fmul fast float %2232, %1635
  %2235 = fmul fast float %2232, %1634
  %2236 = fmul fast float %2226, %1636
  %2237 = fmul fast float %2226, %1635
  %2238 = fmul fast float %2229, %1634
  %2239 = fsub fast float %2211, %2234
  %2240 = fadd fast float %2239, %2233
  %2241 = fsub fast float %2210, %2236
  %2242 = fadd fast float %2241, %2235
  %2243 = fsub fast float %2209, %2238
  %2244 = fadd fast float %2243, %2237
  %2245 = fmul fast float %2240, %1622
  %2246 = fmul fast float %2242, %1622
  %2247 = fmul fast float %2244, %1622
  %2248 = fadd fast float %2245, %2201
  %2249 = fadd fast float %2246, %2202
  %2250 = fadd fast float %2247, %2203
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float %2248, float %2249, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 25, float %2251)  ; Rsqrt(value)
  %2253 = fmul fast float %2248, %2252
  %2254 = fmul fast float %2249, %2252
  %2255 = fmul fast float %2250, %2252
  %2256 = call float @dx.op.dot3.f32(i32 55, float %2197, float %2196, float %2195, float %2253, float %2254, float %2255)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = fmul fast float %2256, 2.000000e+00
  %2258 = fmul fast float %2253, %2257
  %2259 = fmul fast float %2254, %2257
  %2260 = fmul fast float %2255, %2257
  %2261 = fsub fast float %2197, %2258
  %2262 = fsub fast float %2196, %2259
  %2263 = fsub fast float %2195, %2260
  %2264 = call float @dx.op.binary.f32(i32 36, float %2208, float 1.000000e+00)  ; FMin(a,b)
  %2265 = fsub fast float 1.000000e+00, %2208
  %2266 = bitcast float %2265 to i32
  %2267 = sub nsw i32 2129859010, %2266
  %2268 = bitcast i32 %2267 to float
  %2269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %2270 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %2271 = fcmp fast oeq float %2270, 0.000000e+00
  %2272 = fcmp fast oeq float %2269, 0.000000e+00
  %2273 = or i1 %2272, %2271
  br i1 %2273, label %2303, label %2274

; <label>:2274                                    ; preds = %2191
  %2275 = fsub fast float -0.000000e+00, %63
  %2276 = fsub fast float -0.000000e+00, %61
  %2277 = call float @dx.op.unary.f32(i32 24, float %2270)  ; Sqrt(value)
  %2278 = fdiv fast float %2277, %2269
  %2279 = fcmp fast ogt float %2278, 0x3FFB6F8900000000
  %2280 = select i1 %2279, float 0x3FFB6F8900000000, float %2278
  %2281 = fmul fast float %2280, 0x3FE8A23460000000
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2283 = call float @dx.op.binary.f32(i32 35, float %2280, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2284 = fmul fast float %2282, %2269
  %2285 = fmul fast float %2283, 0x3FF279A740000000
  %2286 = fadd fast float %2285, -1.000000e+00
  %2287 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %62, float %2275, float %2276, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %2288 = call float @dx.op.unary.f32(i32 25, float %2287)  ; Rsqrt(value)
  %2289 = fmul fast float %2288, %2275
  %2290 = fmul fast float %2288, %2276
  %2291 = fmul fast float %2288, %62
  %2292 = fmul fast float %2286, %2286
  %2293 = fsub fast float 1.000000e+00, %2292
  %2294 = fmul fast float %2283, 0x40005F8BE0000000
  %2295 = fsub fast float 0x400C5BF8A0000000, %2294
  %2296 = fdiv fast float %2284, %2295
  %2297 = fmul fast float %2296, 0x3FEE31C3C0000000
  %2298 = fmul fast float %2297, %2293
  %2299 = fmul fast float %2283, 0x3FDACB7480000000
  %2300 = fadd fast float %2299, 0xBFD7347680000000
  %2301 = fmul fast float %2300, %2296
  %2302 = fmul fast float %2301, %2293
  br label %2303

; <label>:2303                                    ; preds = %2274, %2191
  %2304 = phi float [ %2289, %2274 ], [ 0.000000e+00, %2191 ]
  %2305 = phi float [ %2290, %2274 ], [ 0.000000e+00, %2191 ]
  %2306 = phi float [ %2291, %2274 ], [ 0.000000e+00, %2191 ]
  %2307 = phi float [ %2298, %2274 ], [ 0.000000e+00, %2191 ]
  %2308 = phi float [ %2302, %2274 ], [ 0.000000e+00, %2191 ]
  %2309 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2201, float %2202, float %2203)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = fmul fast float %2309, 0x3FDF454380000000
  %2311 = fmul fast float %2309, %2309
  %2312 = fmul fast float %2311, 0x3FEE471020000000
  %2313 = fadd fast float %2312, 0xBFD42F6020000000
  %2314 = fmul fast float %2269, 0x3FD20DD760000000
  %2315 = fmul fast float %2313, %2308
  %2316 = fadd fast float %2315, %2314
  %2317 = fmul fast float %2310, %2307
  %2318 = fadd fast float %2316, %2317
  %2319 = fsub fast float %2316, %2317
  %2320 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2261, float %2262, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2321 = fmul fast float %2320, 0x3FDF454380000000
  %2322 = fmul fast float %2320, %2320
  %2323 = fmul fast float %2322, 0x3FEE471020000000
  %2324 = fadd fast float %2323, 0xBFD42F6020000000
  %2325 = call float @dx.op.dot3.f32(i32 55, float %2269, float %2307, float %2308, float 0x3FD20DD760000000, float %2321, float %2324)  ; Dot3(ax,ay,az,bx,by,bz)
  %2326 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %2327 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2328 = fcmp fast oeq float %2327, 0.000000e+00
  %2329 = fcmp fast oeq float %2326, 0.000000e+00
  %2330 = or i1 %2329, %2328
  br i1 %2330, label %2360, label %2331

; <label>:2331                                    ; preds = %2303
  %2332 = fsub fast float -0.000000e+00, %59
  %2333 = fsub fast float -0.000000e+00, %57
  %2334 = call float @dx.op.unary.f32(i32 24, float %2327)  ; Sqrt(value)
  %2335 = fdiv fast float %2334, %2326
  %2336 = fcmp fast ogt float %2335, 0x3FFB6F8900000000
  %2337 = select i1 %2336, float 0x3FFB6F8900000000, float %2335
  %2338 = fmul fast float %2337, 0x3FE8A23460000000
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2340 = call float @dx.op.binary.f32(i32 35, float %2337, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2341 = fmul fast float %2339, %2326
  %2342 = fmul fast float %2340, 0x3FF279A740000000
  %2343 = fadd fast float %2342, -1.000000e+00
  %2344 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2333, float %58, float %2332, float %2333, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2345 = call float @dx.op.unary.f32(i32 25, float %2344)  ; Rsqrt(value)
  %2346 = fmul fast float %2345, %2332
  %2347 = fmul fast float %2345, %2333
  %2348 = fmul fast float %2345, %58
  %2349 = fmul fast float %2343, %2343
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2340, 0x40005F8BE0000000
  %2352 = fsub fast float 0x400C5BF8A0000000, %2351
  %2353 = fdiv fast float %2341, %2352
  %2354 = fmul fast float %2353, 0x3FEE31C3C0000000
  %2355 = fmul fast float %2354, %2350
  %2356 = fmul fast float %2340, 0x3FDACB7480000000
  %2357 = fadd fast float %2356, 0xBFD7347680000000
  %2358 = fmul fast float %2357, %2353
  %2359 = fmul fast float %2358, %2350
  br label %2360

; <label>:2360                                    ; preds = %2331, %2303
  %2361 = phi float [ %2346, %2331 ], [ 0.000000e+00, %2303 ]
  %2362 = phi float [ %2347, %2331 ], [ 0.000000e+00, %2303 ]
  %2363 = phi float [ %2348, %2331 ], [ 0.000000e+00, %2303 ]
  %2364 = phi float [ %2355, %2331 ], [ 0.000000e+00, %2303 ]
  %2365 = phi float [ %2359, %2331 ], [ 0.000000e+00, %2303 ]
  %2366 = call float @dx.op.dot3.f32(i32 55, float %2361, float %2362, float %2363, float %2201, float %2202, float %2203)  ; Dot3(ax,ay,az,bx,by,bz)
  %2367 = fmul fast float %2366, 0x3FDF454380000000
  %2368 = fmul fast float %2366, %2366
  %2369 = fmul fast float %2368, 0x3FEE471020000000
  %2370 = fadd fast float %2369, 0xBFD42F6020000000
  %2371 = fmul fast float %2326, 0x3FD20DD760000000
  %2372 = fmul fast float %2370, %2365
  %2373 = fadd fast float %2372, %2371
  %2374 = fmul fast float %2367, %2364
  %2375 = fadd fast float %2373, %2374
  %2376 = fsub fast float %2373, %2374
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2361, float %2362, float %2363, float %2261, float %2262, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = fmul fast float %2377, 0x3FDF454380000000
  %2379 = fmul fast float %2377, %2377
  %2380 = fmul fast float %2379, 0x3FEE471020000000
  %2381 = fadd fast float %2380, 0xBFD42F6020000000
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2326, float %2364, float %2365, float 0x3FD20DD760000000, float %2378, float %2381)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %2384 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2385 = fcmp fast oeq float %2384, 0.000000e+00
  %2386 = fcmp fast oeq float %2383, 0.000000e+00
  %2387 = or i1 %2386, %2385
  br i1 %2387, label %2417, label %2388

; <label>:2388                                    ; preds = %2360
  %2389 = fsub fast float -0.000000e+00, %55
  %2390 = fsub fast float -0.000000e+00, %53
  %2391 = call float @dx.op.unary.f32(i32 24, float %2384)  ; Sqrt(value)
  %2392 = fdiv fast float %2391, %2383
  %2393 = fcmp fast ogt float %2392, 0x3FFB6F8900000000
  %2394 = select i1 %2393, float 0x3FFB6F8900000000, float %2392
  %2395 = fmul fast float %2394, 0x3FE8A23460000000
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = call float @dx.op.binary.f32(i32 35, float %2394, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2398 = fmul fast float %2396, %2383
  %2399 = fmul fast float %2397, 0x3FF279A740000000
  %2400 = fadd fast float %2399, -1.000000e+00
  %2401 = call float @dx.op.dot3.f32(i32 55, float %2389, float %2390, float %54, float %2389, float %2390, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2402 = call float @dx.op.unary.f32(i32 25, float %2401)  ; Rsqrt(value)
  %2403 = fmul fast float %2402, %2389
  %2404 = fmul fast float %2402, %2390
  %2405 = fmul fast float %2402, %54
  %2406 = fmul fast float %2400, %2400
  %2407 = fsub fast float 1.000000e+00, %2406
  %2408 = fmul fast float %2397, 0x40005F8BE0000000
  %2409 = fsub fast float 0x400C5BF8A0000000, %2408
  %2410 = fdiv fast float %2398, %2409
  %2411 = fmul fast float %2410, 0x3FEE31C3C0000000
  %2412 = fmul fast float %2411, %2407
  %2413 = fmul fast float %2397, 0x3FDACB7480000000
  %2414 = fadd fast float %2413, 0xBFD7347680000000
  %2415 = fmul fast float %2414, %2410
  %2416 = fmul fast float %2415, %2407
  br label %2417

; <label>:2417                                    ; preds = %2388, %2360
  %2418 = phi float [ %2403, %2388 ], [ 0.000000e+00, %2360 ]
  %2419 = phi float [ %2404, %2388 ], [ 0.000000e+00, %2360 ]
  %2420 = phi float [ %2405, %2388 ], [ 0.000000e+00, %2360 ]
  %2421 = phi float [ %2412, %2388 ], [ 0.000000e+00, %2360 ]
  %2422 = phi float [ %2416, %2388 ], [ 0.000000e+00, %2360 ]
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2418, float %2419, float %2420, float %2201, float %2202, float %2203)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = fmul fast float %2423, 0x3FDF454380000000
  %2425 = fmul fast float %2423, %2423
  %2426 = fmul fast float %2425, 0x3FEE471020000000
  %2427 = fadd fast float %2426, 0xBFD42F6020000000
  %2428 = fmul fast float %2383, 0x3FD20DD760000000
  %2429 = fmul fast float %2427, %2422
  %2430 = fadd fast float %2429, %2428
  %2431 = fmul fast float %2424, %2421
  %2432 = fadd fast float %2430, %2431
  %2433 = fsub fast float %2430, %2431
  %2434 = call float @dx.op.dot3.f32(i32 55, float %2418, float %2419, float %2420, float %2261, float %2262, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2435 = fmul fast float %2434, 0x3FDF454380000000
  %2436 = fmul fast float %2434, %2434
  %2437 = fmul fast float %2436, 0x3FEE471020000000
  %2438 = fadd fast float %2437, 0xBFD42F6020000000
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2383, float %2421, float %2422, float 0x3FD20DD760000000, float %2435, float %2438)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.binary.f32(i32 35, float %2318, float 0.000000e+00)  ; FMax(a,b)
  %2441 = call float @dx.op.binary.f32(i32 35, float %2375, float 0.000000e+00)  ; FMax(a,b)
  %2442 = call float @dx.op.binary.f32(i32 35, float %2432, float 0.000000e+00)  ; FMax(a,b)
  %2443 = call float @dx.op.binary.f32(i32 35, float %2319, float 0.000000e+00)  ; FMax(a,b)
  %2444 = call float @dx.op.binary.f32(i32 35, float %2376, float 0.000000e+00)  ; FMax(a,b)
  %2445 = call float @dx.op.binary.f32(i32 35, float %2433, float 0.000000e+00)  ; FMax(a,b)
  %2446 = call float @dx.op.binary.f32(i32 35, float %2325, float 0.000000e+00)  ; FMax(a,b)
  %2447 = call float @dx.op.binary.f32(i32 35, float %2382, float 0.000000e+00)  ; FMax(a,b)
  %2448 = call float @dx.op.binary.f32(i32 35, float %2439, float 0.000000e+00)  ; FMax(a,b)
  %2449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2449, 0
  %2451 = call float @dx.op.binary.f32(i32 36, float %2204, float %2450)  ; FMin(a,b)
  %2452 = fsub fast float 1.000000e+00, %2264
  %2453 = fmul fast float %2451, %2452
  %2454 = fsub fast float 1.000000e+00, %2453
  %2455 = bitcast float %2454 to i32
  %2456 = sub nsw i32 2129859010, %2455
  %2457 = bitcast i32 %2456 to float
  %2458 = call float @dx.op.binary.f32(i32 36, float %2205, float %2450)  ; FMin(a,b)
  %2459 = fmul fast float %2458, %2452
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = bitcast float %2460 to i32
  %2462 = sub nsw i32 2129859010, %2461
  %2463 = bitcast i32 %2462 to float
  %2464 = call float @dx.op.binary.f32(i32 36, float %2206, float %2450)  ; FMin(a,b)
  %2465 = fmul fast float %2464, %2452
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = bitcast float %2466 to i32
  %2468 = sub nsw i32 2129859010, %2467
  %2469 = bitcast i32 %2468 to float
  %2470 = fmul fast float %2440, %2264
  %2471 = fmul fast float %2470, %2457
  %2472 = fmul fast float %2441, %2264
  %2473 = fmul fast float %2472, %2463
  %2474 = fmul fast float %2442, %2264
  %2475 = fmul fast float %2474, %2469
  %2476 = call float @dx.op.binary.f32(i32 36, float %2198, float %2450)  ; FMin(a,b)
  %2477 = fmul fast float %2476, %2452
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = bitcast float %2478 to i32
  %2480 = sub nsw i32 2129859010, %2479
  %2481 = bitcast i32 %2480 to float
  %2482 = call float @dx.op.binary.f32(i32 36, float %2199, float %2450)  ; FMin(a,b)
  %2483 = fmul fast float %2482, %2452
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = bitcast float %2484 to i32
  %2486 = sub nsw i32 2129859010, %2485
  %2487 = bitcast i32 %2486 to float
  %2488 = call float @dx.op.binary.f32(i32 36, float %2213, float %2450)  ; FMin(a,b)
  %2489 = fmul fast float %2488, %2452
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = bitcast float %2490 to i32
  %2492 = sub nsw i32 2129859010, %2491
  %2493 = bitcast i32 %2492 to float
  %2494 = fmul fast float %2446, %2264
  %2495 = fmul fast float %2494, %2481
  %2496 = fmul fast float %2447, %2264
  %2497 = fmul fast float %2496, %2487
  %2498 = fmul fast float %2448, %2264
  %2499 = fmul fast float %2498, %2493
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2473, float %2475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = select i1 %202, float 0.000000e+00, float %2471
  %2502 = select i1 %202, float %2500, float %2473
  %2503 = select i1 %202, float 0.000000e+00, float %2475
  %2504 = call float @dx.op.dot3.f32(i32 55, float %2443, float %2444, float %2445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2505 = select i1 %202, float 0.000000e+00, float %2443
  %2506 = select i1 %202, float %2504, float %2444
  %2507 = select i1 %202, float 0.000000e+00, float %2445
  %2508 = call float @dx.op.dot3.f32(i32 55, float %2495, float %2497, float %2499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2509 = select i1 %202, float 0.000000e+00, float %2495
  %2510 = select i1 %202, float %2508, float %2497
  %2511 = select i1 %202, float 0.000000e+00, float %2499
  %2512 = fmul fast float %903, %903
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = fmul fast float %2215, 9.843750e-01
  %2515 = fmul fast float %2207, 9.843750e-01
  %2516 = fadd fast float %2514, 7.812500e-03
  %2517 = fadd fast float %2515, 7.812500e-03
  %2518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %2516, float %2517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.ResRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.ResRet.f32 %2518, 2
  %2522 = extractvalue %dx.types.ResRet.f32 %2518, 3
  %2523 = fsub fast float 1.000000e+00, %2513
  %2524 = fsub fast float %2521, %2519
  %2525 = fsub fast float %2522, %2520
  %2526 = fmul fast float %2524, %2523
  %2527 = fmul fast float %2525, %2523
  %2528 = fadd fast float %2526, %2519
  %2529 = fadd fast float %2527, %2520
  %2530 = fmul fast float %2528, %2198
  %2531 = fmul fast float %2528, %2199
  %2532 = fmul fast float %2528, %2213
  %2533 = fadd fast float %2530, %2529
  %2534 = fadd fast float %2531, %2529
  %2535 = fadd fast float %2532, %2529
  %2536 = fcmp fast ogt float %1497, 0.000000e+00
  br i1 %2536, label %2537, label %2563

; <label>:2537                                    ; preds = %2417
  %2538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1497, float %2215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2542 = fadd fast float %2539, -5.000000e-01
  %2543 = fadd fast float %2540, -5.000000e-01
  %2544 = fadd fast float %2541, -5.000000e-01
  %2545 = fsub fast float 1.000000e+00, %2198
  %2546 = fsub fast float 1.000000e+00, %2199
  %2547 = fsub fast float 1.000000e+00, %2213
  %2548 = fmul fast float %2198, 4.000000e+00
  %2549 = fmul fast float %2548, %2545
  %2550 = fmul fast float %2549, %2542
  %2551 = fmul fast float %2199, 4.000000e+00
  %2552 = fmul fast float %2551, %2546
  %2553 = fmul fast float %2552, %2543
  %2554 = fmul fast float %2213, 4.000000e+00
  %2555 = fmul fast float %2554, %2547
  %2556 = fmul fast float %2555, %2544
  %2557 = fadd fast float %2550, %2533
  %2558 = fadd fast float %2553, %2534
  %2559 = fadd fast float %2556, %2535
  %2560 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2561 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2562 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  br label %2563

; <label>:2563                                    ; preds = %2537, %2417
  %2564 = phi float [ %2560, %2537 ], [ %2533, %2417 ]
  %2565 = phi float [ %2561, %2537 ], [ %2534, %2417 ]
  %2566 = phi float [ %2562, %2537 ], [ %2535, %2417 ]
  %2567 = call float @dx.op.binary.f32(i32 35, float %2565, float %2566)  ; FMax(a,b)
  %2568 = call float @dx.op.binary.f32(i32 35, float %2564, float %2567)  ; FMax(a,b)
  %2569 = fsub fast float 1.000000e+00, %2568
  %2570 = call float @dx.op.dot3.f32(i32 55, float %2204, float %2205, float %2206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2571 = fcmp fast ogt float %2570, 0x3E7FF19E20000000
  %2572 = fdiv fast float 1.000000e+00, %2570
  %2573 = select i1 %2571, float %2572, float 0.000000e+00
  %2574 = fmul fast float %2573, %2204
  %2575 = fmul fast float %2573, %2205
  %2576 = fmul fast float %2573, %2206
  %2577 = fadd fast float %2574, -1.000000e+00
  %2578 = fadd fast float %2575, -1.000000e+00
  %2579 = fadd fast float %2576, -1.000000e+00
  %2580 = fmul fast float %2577, 5.000000e-01
  %2581 = fmul fast float %2578, 5.000000e-01
  %2582 = fmul fast float %2579, 5.000000e-01
  %2583 = fadd fast float %2580, 1.000000e+00
  %2584 = fadd fast float %2581, 1.000000e+00
  %2585 = fadd fast float %2582, 1.000000e+00
  %2586 = call float @dx.op.binary.f32(i32 35, float %2215, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2587 = fdiv fast float %903, %2586
  %2588 = fcmp fast olt float %1570, 1.270000e+02
  %2589 = fcmp fast olt float %1571, 1.270000e+02
  %2590 = fcmp fast olt float %1572, 1.270000e+02
  %2591 = fmul fast float %1570, 0xBFF7154760000000
  %2592 = fmul fast float %2591, %2587
  %2593 = fmul fast float %1571, 0xBFF7154760000000
  %2594 = fmul fast float %2593, %2587
  %2595 = fmul fast float %1572, 0xBFF7154760000000
  %2596 = fmul fast float %2595, %2587
  %2597 = call float @dx.op.unary.f32(i32 21, float %2592)  ; Exp(value)
  %2598 = call float @dx.op.unary.f32(i32 21, float %2594)  ; Exp(value)
  %2599 = call float @dx.op.unary.f32(i32 21, float %2596)  ; Exp(value)
  %2600 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2601 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2602 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2603 = select i1 %2588, float %2600, float 0.000000e+00
  %2604 = select i1 %2589, float %2601, float 0.000000e+00
  %2605 = select i1 %2590, float %2602, float 0.000000e+00
  %2606 = fmul fast float %2603, %2569
  %2607 = fmul fast float %2604, %2569
  %2608 = fmul fast float %2605, %2569
  %2609 = fadd fast float %2606, -1.000000e+00
  %2610 = fadd fast float %2607, -1.000000e+00
  %2611 = fadd fast float %2608, -1.000000e+00
  %2612 = fmul fast float %2609, %1520
  %2613 = fmul fast float %2610, %1520
  %2614 = fmul fast float %2611, %1520
  %2615 = fmul fast float %2564, %2509
  %2616 = fmul fast float %2565, %2510
  %2617 = fmul fast float %2566, %2511
  %2618 = fsub fast float 1.000000e+00, %2215
  %2619 = bitcast float %2618 to i32
  %2620 = sitofp i32 %2619 to float
  %2621 = fmul fast float %2620, 5.000000e+00
  %2622 = fadd fast float %2621, 0xC1EFBF8940000000
  %2623 = fptosi float %2622 to i32
  %2624 = bitcast i32 %2623 to float
  %2625 = fmul fast float %2624, %1496
  %2626 = fmul fast float %2501, %2625
  %2627 = fmul fast float %2626, %2569
  %2628 = fmul fast float %2627, %2583
  %2629 = fmul fast float %2502, %2625
  %2630 = fmul fast float %2629, %2569
  %2631 = fmul fast float %2630, %2584
  %2632 = fmul fast float %2503, %2625
  %2633 = fmul fast float %2632, %2569
  %2634 = fmul fast float %2633, %2585
  %2635 = fadd fast float %2615, %1501
  %2636 = fadd fast float %2635, %2628
  %2637 = fmul fast float %2636, %1520
  %2638 = fadd fast float %2616, %1502
  %2639 = fadd fast float %2638, %2631
  %2640 = fmul fast float %2639, %1520
  %2641 = fadd fast float %2617, %1503
  %2642 = fadd fast float %2641, %2634
  %2643 = fmul fast float %2642, %1520
  %2644 = fmul fast float %2199, 0x4012D0A400000000
  %2645 = fadd fast float %2614, 1.000000e+00
  %2646 = fadd fast float %2613, 1.000000e+00
  %2647 = fadd fast float %2612, 1.000000e+00
  %2648 = fmul fast float %2569, %2503
  %2649 = fmul fast float %2569, %2502
  %2650 = fmul fast float %2569, %2501
  %2651 = fsub fast float 1.000000e+00, %2207
  %2652 = fmul fast float %2651, %1520
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2655 = fsub fast float 1.000000e+00, %2654
  %2656 = fadd fast float %2644, 0x3FDB6377A0000000
  %2657 = fmul fast float %2655, %2656
  %2658 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1589, float %1590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2659 = fadd fast float %2657, %2658
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = call float @dx.op.binary.f32(i32 35, float %2660, float 0x3F847AE140000000)  ; FMax(a,b)
  %2662 = fmul fast float %2661, %2661
  %2663 = fmul fast float %2662, %2662
  %2664 = fmul fast float %2663, 0xC00A935000000000
  %2665 = call float @dx.op.unary.f32(i32 21, float %2664)  ; Exp(value)
  %2666 = fsub fast float 1.000000e+00, %2665
  %2667 = fmul fast float %2647, %2505
  %2668 = fmul fast float %2667, %2666
  %2669 = fmul fast float %2646, %2506
  %2670 = fmul fast float %2669, %2666
  %2671 = fmul fast float %2645, %2507
  %2672 = fmul fast float %2671, %2666
  %2673 = fadd fast float %2668, %2650
  %2674 = fmul fast float %2673, %1520
  %2675 = fadd fast float %2670, %2649
  %2676 = fmul fast float %2675, %1520
  %2677 = fadd fast float %2672, %2648
  %2678 = fmul fast float %2677, %1520
  %2679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2679, 3
  %2681 = fcmp fast oeq float %2680, 0.000000e+00
  br i1 %2681, label %3900, label %2682

; <label>:2682                                    ; preds = %2563
  %2683 = extractvalue %dx.types.CBufRet.f32 %2679, 0
  %2684 = extractvalue %dx.types.CBufRet.f32 %2679, 1
  %2685 = extractvalue %dx.types.CBufRet.f32 %2679, 2
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.CBufRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.CBufRet.f32 %2686, 2
  %2690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2691 = extractvalue %dx.types.CBufRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.CBufRet.f32 %2690, 1
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2687, float %2688, float %2689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = select i1 %202, float %2691, float %2687
  %2695 = select i1 %202, float %2693, float %2688
  %2696 = select i1 %202, float %2692, float %2689
  %2697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2698 = extractvalue %dx.types.CBufRet.f32 %2697, 2
  %2699 = fmul fast float %2698, %88
  %2700 = fmul fast float %2698, %89
  %2701 = fmul fast float %2698, %90
  %2702 = fadd fast float %2699, %140
  %2703 = fadd fast float %2700, %141
  %2704 = fadd fast float %2701, %142
  %2705 = fcmp fast olt float %2680, 0.000000e+00
  br i1 %2705, label %3330, label %2706

; <label>:2706                                    ; preds = %2682
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.CBufRet.f32 %2707, 2
  %2711 = extractvalue %dx.types.CBufRet.f32 %2707, 3
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2715 = extractvalue %dx.types.CBufRet.f32 %2712, 2
  %2716 = extractvalue %dx.types.CBufRet.f32 %2712, 3
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2721 = extractvalue %dx.types.CBufRet.f32 %2717, 3
  %2722 = fmul fast float %2708, %2702
  %2723 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %2709, float %2722)  ; FMad(a,b,c)
  %2724 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %2710, float %2723)  ; FMad(a,b,c)
  %2725 = fadd fast float %2724, %2711
  %2726 = fmul fast float %2713, %2702
  %2727 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %2714, float %2726)  ; FMad(a,b,c)
  %2728 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %2715, float %2727)  ; FMad(a,b,c)
  %2729 = fadd fast float %2728, %2716
  %2730 = fmul fast float %2718, %2702
  %2731 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %2719, float %2730)  ; FMad(a,b,c)
  %2732 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %2720, float %2731)  ; FMad(a,b,c)
  %2733 = fadd fast float %2732, %2721
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.CBufRet.f32 %2734, 3
  %2738 = fmul fast float %2737, %2725
  %2739 = fmul fast float %2737, %2729
  %2740 = fadd fast float %2738, %2735
  %2741 = fadd fast float %2739, %2736
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.CBufRet.f32 %2742, 3
  %2746 = fmul fast float %2745, %2725
  %2747 = fmul fast float %2745, %2729
  %2748 = fadd fast float %2746, %2743
  %2749 = fadd fast float %2747, %2744
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2752 = fsub fast float %2751, %2733
  %2753 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2754 = fmul fast float %2752, %2753
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2742, 2
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 2
  %2760 = fadd fast float %2759, %2757
  %2761 = fcmp fast ogt float %2760, 0.000000e+00
  br i1 %2761, label %2762, label %2786

; <label>:2762                                    ; preds = %2706
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.CBufRet.f32 %2763, 1
  %2766 = fsub fast float %2748, %2764
  %2767 = fsub fast float %2749, %2765
  %2768 = fcmp fast olt float %2766, 0.000000e+00
  %2769 = fcmp fast olt float %2767, 0.000000e+00
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2774 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2775 = select i1 %2768, float %2771, float %2773
  %2776 = select i1 %2769, float %2772, float %2774
  %2777 = fmul fast float %2775, %2766
  %2778 = fmul fast float %2776, %2767
  %2779 = call float @dx.op.unary.f32(i32 6, float %2777)  ; FAbs(value)
  %2780 = call float @dx.op.unary.f32(i32 6, float %2778)  ; FAbs(value)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2697, 0
  %2782 = call float @dx.op.binary.f32(i32 35, float %2779, float %2780)  ; FMax(a,b)
  %2783 = fsub fast float %2781, %2782
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2785 = fmul fast float %2784, %2756
  br label %2786

; <label>:2786                                    ; preds = %2762, %2706
  %2787 = phi float [ %2785, %2762 ], [ 0.000000e+00, %2706 ]
  %2788 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2789 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2790 = fadd fast float %2789, %2788
  %2791 = fcmp fast ogt float %2790, 0.000000e+00
  %2792 = extractvalue %dx.types.CBufRet.f32 %2697, 0
  br i1 %2791, label %2793, label %2816

; <label>:2793                                    ; preds = %2786
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = fsub fast float %2740, %2795
  %2798 = fsub fast float %2741, %2796
  %2799 = fcmp fast olt float %2797, 0.000000e+00
  %2800 = fcmp fast olt float %2798, 0.000000e+00
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.CBufRet.f32 %2801, 2
  %2805 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2806 = select i1 %2799, float %2802, float %2804
  %2807 = select i1 %2800, float %2803, float %2805
  %2808 = fmul fast float %2806, %2797
  %2809 = fmul fast float %2807, %2798
  %2810 = call float @dx.op.unary.f32(i32 6, float %2808)  ; FAbs(value)
  %2811 = call float @dx.op.unary.f32(i32 6, float %2809)  ; FAbs(value)
  %2812 = call float @dx.op.binary.f32(i32 35, float %2810, float %2811)  ; FMax(a,b)
  %2813 = fsub fast float %2792, %2812
  %2814 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2815 = fmul fast float %2814, %2756
  br label %2816

; <label>:2816                                    ; preds = %2793, %2786
  %2817 = phi float [ %2815, %2793 ], [ 0.000000e+00, %2786 ]
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2820 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.CBufRet.f32 %2821, 1
  %2824 = fsub fast float %2725, %2822
  %2825 = fsub fast float %2729, %2823
  %2826 = fcmp fast olt float %2824, 0.000000e+00
  %2827 = fcmp fast olt float %2825, 0.000000e+00
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2833 = select i1 %2826, float %2829, float %2831
  %2834 = select i1 %2827, float %2830, float %2832
  %2835 = fmul fast float %2833, %2824
  %2836 = fmul fast float %2834, %2825
  %2837 = call float @dx.op.unary.f32(i32 6, float %2835)  ; FAbs(value)
  %2838 = call float @dx.op.unary.f32(i32 6, float %2836)  ; FAbs(value)
  %2839 = call float @dx.op.binary.f32(i32 35, float %2837, float %2838)  ; FMax(a,b)
  %2840 = fsub fast float %2792, %2839
  %2841 = call float @dx.op.unary.f32(i32 7, float %2840)  ; Saturate(value)
  %2842 = call float @dx.op.binary.f32(i32 36, float %2841, float %2820)  ; FMin(a,b)
  %2843 = fmul fast float %2842, %2756
  %2844 = fsub fast float %2817, %2843
  %2845 = fsub fast float %2787, %2817
  %2846 = fsub fast float %2845, %2843
  %2847 = call float @dx.op.binary.f32(i32 35, float %2817, float %2787)  ; FMax(a,b)
  %2848 = call float @dx.op.binary.f32(i32 35, float %2843, float %2847)  ; FMax(a,b)
  %2849 = fcmp fast olt float %2848, 1.000000e+00
  br i1 %2849, label %2850, label %3248, !dx.controlflow.hints !86

; <label>:2850                                    ; preds = %2816
  %2851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2852 = extractvalue %dx.types.CBufRet.f32 %2851, 0
  %2853 = fcmp fast une float %2852, 0.000000e+00
  br i1 %2853, label %2854, label %3248, !dx.controlflow.hints !87

; <label>:2854                                    ; preds = %2850
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.CBufRet.f32 %2855, 1
  %2858 = extractvalue %dx.types.CBufRet.f32 %2855, 2
  %2859 = extractvalue %dx.types.CBufRet.f32 %2855, 3
  %2860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2861 = extractvalue %dx.types.CBufRet.f32 %2860, 0
  %2862 = extractvalue %dx.types.CBufRet.f32 %2860, 1
  %2863 = extractvalue %dx.types.CBufRet.f32 %2860, 2
  %2864 = extractvalue %dx.types.CBufRet.f32 %2860, 3
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 0
  %2867 = extractvalue %dx.types.CBufRet.f32 %2865, 1
  %2868 = extractvalue %dx.types.CBufRet.f32 %2865, 2
  %2869 = extractvalue %dx.types.CBufRet.f32 %2865, 3
  %2870 = fmul fast float %2856, %2702
  %2871 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %2857, float %2870)  ; FMad(a,b,c)
  %2872 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %2858, float %2871)  ; FMad(a,b,c)
  %2873 = fadd fast float %2872, %2859
  %2874 = fmul fast float %2861, %2702
  %2875 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %2862, float %2874)  ; FMad(a,b,c)
  %2876 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %2863, float %2875)  ; FMad(a,b,c)
  %2877 = fadd fast float %2876, %2864
  %2878 = fmul fast float %2866, %2702
  %2879 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %2867, float %2878)  ; FMad(a,b,c)
  %2880 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %2868, float %2879)  ; FMad(a,b,c)
  %2881 = fadd fast float %2880, %2869
  %2882 = fcmp fast oge float %2873, 1.000000e+00
  %2883 = fcmp fast oge float %2877, 1.000000e+00
  %2884 = or i1 %2882, %2883
  %2885 = fcmp fast olt float %2873, 0.000000e+00
  %2886 = fcmp fast olt float %2877, 0.000000e+00
  %2887 = or i1 %2885, %2886
  %2888 = or i1 %2884, %2887
  br i1 %2888, label %3248, label %2889, !dx.controlflow.hints !88

; <label>:2889                                    ; preds = %2854
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.CBufRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.CBufRet.f32 %2890, 2
  %2894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.i32 %2894, 2
  %2896 = uitofp i32 %2895 to float
  %2897 = extractvalue %dx.types.CBufRet.i32 %2894, 3
  %2898 = uitofp i32 %2897 to float
  %2899 = extractvalue %dx.types.CBufRet.f32 %2890, 3
  %2900 = fmul fast float %2899, 2.000000e+00
  %2901 = fsub fast float %2873, %2891
  %2902 = fsub fast float %2877, %2892
  %2903 = fmul fast float %2900, %2901
  %2904 = fmul fast float %2900, %2902
  %2905 = fdiv fast float 1.000000e+00, %2685
  %2906 = fmul fast float %2904, %2905
  %2907 = call float @dx.op.unary.f32(i32 6, float %2906)  ; FAbs(value)
  %2908 = fmul fast float %2893, %2704
  %2909 = fmul fast float %2908, %2900
  %2910 = call float @dx.op.unary.f32(i32 6, float %2909)  ; FAbs(value)
  %2911 = call float @dx.op.unary.f32(i32 6, float %2903)  ; FAbs(value)
  %2912 = call float @dx.op.binary.f32(i32 35, float %2910, float %2907)  ; FMax(a,b)
  %2913 = call float @dx.op.binary.f32(i32 35, float %2911, float %2912)  ; FMax(a,b)
  %2914 = fmul fast float %2913, 2.000000e+00
  %2915 = call float @dx.op.unary.f32(i32 23, float %2914)  ; Log(value)
  %2916 = call float @dx.op.binary.f32(i32 35, float %2915, float %2896)  ; FMax(a,b)
  %2917 = call float @dx.op.unary.f32(i32 22, float %2916)  ; Frc(value)
  %2918 = fadd fast float %2917, 0xBFEA666660000000
  %2919 = fmul fast float %2918, 8.000000e+00
  %2920 = call float @dx.op.unary.f32(i32 7, float %2919)  ; Saturate(value)
  %2921 = call float @dx.op.unary.f32(i32 27, float %2916)  ; Round_ni(value)
  %2922 = fadd fast float %2921, %2920
  %2923 = call float @dx.op.binary.f32(i32 36, float %2922, float %2898)  ; FMin(a,b)
  %2924 = call float @dx.op.unary.f32(i32 27, float %2923)  ; Round_ni(value)
  %2925 = fsub fast float -0.000000e+00, %2924
  %2926 = call float @dx.op.unary.f32(i32 21, float %2925)  ; Exp(value)
  %2927 = fmul fast float %2926, %2900
  %2928 = fmul fast float %2927, %2873
  %2929 = fmul fast float %2927, %2877
  %2930 = fmul fast float %2928, 2.500000e-01
  %2931 = fmul fast float %2929, 2.500000e-01
  %2932 = fadd fast float %2930, 5.000000e-01
  %2933 = fadd fast float %2931, 5.000000e-01
  %2934 = fsub fast float %2898, %2896
  %2935 = fptoui float %2934 to i32
  %2936 = add i32 %2935, 320
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2936)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 1
  %2940 = fcmp fast une float %2923, %2898
  %2941 = fsub fast float %2873, %2938
  %2942 = fsub fast float %2877, %2939
  %2943 = call float @dx.op.unary.f32(i32 6, float %2941)  ; FAbs(value)
  %2944 = call float @dx.op.unary.f32(i32 6, float %2942)  ; FAbs(value)
  %2945 = fmul fast float %2943, %2927
  %2946 = fmul fast float %2944, %2927
  %2947 = fcmp fast olt float %2945, 1.000000e+00
  %2948 = fcmp fast olt float %2946, 1.000000e+00
  %2949 = and i1 %2947, %2948
  %2950 = or i1 %2940, %2949
  br i1 %2950, label %2951, label %3248, !dx.controlflow.hints !89

; <label>:2951                                    ; preds = %2889
  %2952 = fmul fast float %2929, 5.000000e-01
  %2953 = fmul fast float %2928, 5.000000e-01
  %2954 = fadd fast float %2952, 5.000000e-01
  %2955 = fadd fast float %2953, 5.000000e-01
  %2956 = sitofp i32 %2895 to float
  %2957 = fsub fast float %2923, %2956
  %2958 = call float @dx.op.unary.f32(i32 27, float %2957)  ; Round_ni(value)
  %2959 = call float @dx.op.unary.f32(i32 22, float %2923)  ; Frc(value)
  %2960 = call float @dx.op.unary.f32(i32 22, float %2955)  ; Frc(value)
  %2961 = call float @dx.op.unary.f32(i32 22, float %2954)  ; Frc(value)
  %2962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2960, float %2961, float %2958, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = extractvalue %dx.types.ResRet.f32 %2962, 3
  %2967 = fcmp fast ogt float %2959, 0.000000e+00
  br i1 %2967, label %2968, label %2989, !dx.controlflow.hints !90

; <label>:2968                                    ; preds = %2951
  %2969 = fadd fast float %2958, 1.000000e+00
  %2970 = call float @dx.op.unary.f32(i32 22, float %2932)  ; Frc(value)
  %2971 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2970, float %2971, float %2969, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = extractvalue %dx.types.ResRet.f32 %2972, 3
  %2977 = fsub fast float %2973, %2963
  %2978 = fsub fast float %2974, %2964
  %2979 = fsub fast float %2975, %2965
  %2980 = fsub fast float %2976, %2966
  %2981 = fmul fast float %2977, %2959
  %2982 = fmul fast float %2978, %2959
  %2983 = fmul fast float %2979, %2959
  %2984 = fmul fast float %2980, %2959
  %2985 = fadd fast float %2981, %2963
  %2986 = fadd fast float %2982, %2964
  %2987 = fadd fast float %2983, %2965
  %2988 = fadd fast float %2984, %2966
  br label %2989

; <label>:2989                                    ; preds = %2968, %2951
  %2990 = phi float [ %2985, %2968 ], [ %2963, %2951 ]
  %2991 = phi float [ %2986, %2968 ], [ %2964, %2951 ]
  %2992 = phi float [ %2987, %2968 ], [ %2965, %2951 ]
  %2993 = phi float [ %2988, %2968 ], [ %2966, %2951 ]
  %2994 = fadd fast float %2990, -5.000000e-01
  %2995 = fadd fast float %2992, -5.000000e-01
  %2996 = fmul fast float %2994, 0xBFD5555560000000
  %2997 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2995, float %2996)  ; FMad(a,b,c)
  %2998 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2991, float 0.000000e+00)  ; FMad(a,b,c)
  %2999 = fadd fast float %2998, %2993
  %3000 = fmul fast float %2994, -7.500000e-01
  %3001 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2995, float %3000)  ; FMad(a,b,c)
  %3002 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2991, float 0.000000e+00)  ; FMad(a,b,c)
  %3003 = fadd fast float %3002, %2993
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3009 = extractvalue %dx.types.CBufRet.f32 %3006, 2
  %3010 = extractvalue %dx.types.CBufRet.f32 %3006, 3
  %3011 = fsub fast float %3007, %2997
  %3012 = fsub fast float %3008, %2999
  %3013 = fsub fast float %3009, %3001
  %3014 = fsub fast float %3010, %3003
  %3015 = fmul fast float %3011, %3005
  %3016 = fmul fast float %3012, %3005
  %3017 = fmul fast float %3013, %3005
  %3018 = fmul fast float %3014, %3005
  %3019 = fadd fast float %3015, %2997
  %3020 = fadd fast float %3016, %2999
  %3021 = fadd fast float %3017, %3001
  %3022 = fadd fast float %3018, %3003
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = and i32 %3024, 536870911
  %3026 = uitofp i32 %3025 to float
  %3027 = fmul fast float %3026, %2873
  %3028 = fmul fast float %3026, %2877
  %3029 = fptoui float %3027 to i32
  %3030 = fptoui float %3028 to i32
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = and i32 %3032, 31
  %3034 = lshr i32 %3029, %3033
  %3035 = lshr i32 %3030, %3033
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = and i32 %3037, 31
  %3039 = shl i32 1, %3038
  %3040 = call i32 @dx.op.binary.i32(i32 40, i32 %3039, i32 4)  ; UMin(a,b)
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = extractvalue %dx.types.ResRet.i32 %3041, 1
  %3044 = icmp eq i32 %3040, 0
  br i1 %3044, label %3086, label %3045

; <label>:3045                                    ; preds = %2989
  br label %3046

; <label>:3046                                    ; preds = %3074, %3045
  %3047 = phi i32 [ %3077, %3074 ], [ 0, %3045 ]
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = lshr i32 %3049, 16
  %3051 = and i32 %3050, 31
  %3052 = shl i32 %3035, %3051
  %3053 = add i32 %3052, %3034
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = and i32 %3055, 31
  %3057 = shl i32 %3053, %3056
  %3058 = add i32 %3057, %3047
  %3059 = shl i32 %3058, 2
  %3060 = add i32 %3059, 32
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = icmp slt i32 %3062, 0
  %3064 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3047
  %3065 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3047
  %3066 = bitcast float* %3064 to i32*
  %3067 = bitcast float* %3065 to i32*
  br i1 %3063, label %3068, label %3074

; <label>:3068                                    ; preds = %3046
  %3069 = and i32 %3062, 1073741823
  %3070 = add nuw nsw i32 %3069, 20
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = extractvalue %dx.types.ResRet.i32 %3071, 1
  br label %3074

; <label>:3074                                    ; preds = %3068, %3046
  %3075 = phi i32 [ %3072, %3068 ], [ %3042, %3046 ]
  %3076 = phi i32 [ %3073, %3068 ], [ %3043, %3046 ]
  store i32 %3075, i32* %3066, align 4
  store i32 %3076, i32* %3067, align 4
  %3077 = add nuw i32 %3047, 1
  %3078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.i32 %3078, 2
  %3080 = icmp eq i32 %3079, 0
  %3081 = icmp ugt i32 %3062, -1073741825
  %3082 = and i1 %3081, %3080
  %3083 = icmp ult i32 %3077, %3040
  %3084 = and i1 %3082, %3083
  br i1 %3084, label %3046, label %3085

; <label>:3085                                    ; preds = %3074
  br label %3086

; <label>:3086                                    ; preds = %3085, %2989
  %3087 = phi i32 [ 0, %2989 ], [ %3077, %3085 ]
  %3088 = extractvalue %dx.types.CBufRet.f32 %2851, 2
  %3089 = fptoui float %3088 to i32
  %3090 = icmp eq i32 %3089, 0
  br i1 %3090, label %3142, label %3091

; <label>:3091                                    ; preds = %3086
  br label %3092

; <label>:3092                                    ; preds = %3137, %3091
  %3093 = phi i32 [ %3138, %3137 ], [ %3087, %3091 ]
  %3094 = phi i32 [ %3139, %3137 ], [ 0, %3091 ]
  %3095 = lshr i32 %3094, 2
  %3096 = and i32 %3094, 3
  %3097 = add nuw nsw i32 %3095, 83
  %3098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %3097)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.i32 %3098, 0
  %3100 = extractvalue %dx.types.CBufRet.i32 %3098, 1
  %3101 = extractvalue %dx.types.CBufRet.i32 %3098, 2
  %3102 = extractvalue %dx.types.CBufRet.i32 %3098, 3
  %3103 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %3099, i32* %3103, align 4
  %3104 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %3100, i32* %3104, align 4
  %3105 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %3101, i32* %3105, align 4
  %3106 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %3102, i32* %3106, align 4
  %3107 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %3096
  %3108 = load i32, i32* %3107, align 4, !tbaa !91, !noalias !95
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = lshr i32 %3110, 16
  %3112 = and i32 %3111, 31
  %3113 = shl i32 %3035, %3112
  %3114 = add i32 %3113, %3034
  %3115 = shl i32 %3114, 2
  %3116 = add i32 %3115, %3108
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = icmp eq i32 %3118, 0
  br i1 %3119, label %3137, label %3120

; <label>:3120                                    ; preds = %3092
  %3121 = icmp slt i32 %3118, 0
  %3122 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3093
  %3123 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3093
  %3124 = bitcast float* %3122 to i32*
  %3125 = bitcast float* %3123 to i32*
  br i1 %3121, label %3126, label %3133

; <label>:3126                                    ; preds = %3120
  %3127 = and i32 %3118, 1073741823
  %3128 = add i32 %3108, 20
  %3129 = add i32 %3128, %3127
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.i32 %3130, 1
  br label %3133

; <label>:3133                                    ; preds = %3126, %3120
  %3134 = phi i32 [ %3131, %3126 ], [ %3042, %3120 ]
  %3135 = phi i32 [ %3132, %3126 ], [ %3043, %3120 ]
  store i32 %3134, i32* %3124, align 4
  store i32 %3135, i32* %3125, align 4
  %3136 = add i32 %3093, 1
  br label %3137

; <label>:3137                                    ; preds = %3133, %3092
  %3138 = phi i32 [ %3093, %3092 ], [ %3136, %3133 ]
  %3139 = add nuw i32 %3094, 1
  %3140 = icmp eq i32 %3139, %3089
  br i1 %3140, label %3141, label %3092

; <label>:3141                                    ; preds = %3137
  br label %3142

; <label>:3142                                    ; preds = %3141, %3086
  %3143 = phi i32 [ %3087, %3086 ], [ %3138, %3141 ]
  %3144 = icmp eq i32 %3143, 1
  %3145 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %3146 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %3144, label %3147, label %3150

; <label>:3147                                    ; preds = %3142
  %3148 = load float, float* %3145, align 4
  %3149 = load float, float* %3146, align 4
  br label %3177

; <label>:3150                                    ; preds = %3142
  %3151 = load float, float* %3145, align 4
  %3152 = load float, float* %3146, align 4
  %3153 = fdiv fast float 1.000000e+00, %3152
  %3154 = fsub fast float %3151, %3153
  %3155 = icmp ugt i32 %3143, 1
  br i1 %3155, label %3156, label %3172

; <label>:3156                                    ; preds = %3150
  br label %3157

; <label>:3157                                    ; preds = %3157, %3156
  %3158 = phi float [ %3167, %3157 ], [ %3154, %3156 ]
  %3159 = phi float [ %3168, %3157 ], [ %3151, %3156 ]
  %3160 = phi i32 [ %3169, %3157 ], [ 1, %3156 ]
  %3161 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3160
  %3162 = load float, float* %3161, align 4
  %3163 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3160
  %3164 = load float, float* %3163, align 4
  %3165 = fdiv fast float 1.000000e+00, %3164
  %3166 = fsub fast float %3162, %3165
  %3167 = call float @dx.op.binary.f32(i32 36, float %3158, float %3166)  ; FMin(a,b)
  %3168 = call float @dx.op.binary.f32(i32 35, float %3159, float %3162)  ; FMax(a,b)
  %3169 = add nuw i32 %3160, 1
  %3170 = icmp eq i32 %3169, %3143
  br i1 %3170, label %3171, label %3157

; <label>:3171                                    ; preds = %3157
  br label %3172

; <label>:3172                                    ; preds = %3171, %3150
  %3173 = phi float [ %3154, %3150 ], [ %3167, %3171 ]
  %3174 = phi float [ %3151, %3150 ], [ %3168, %3171 ]
  %3175 = fsub fast float %3174, %3173
  %3176 = fdiv fast float 1.000000e+00, %3175
  br label %3177

; <label>:3177                                    ; preds = %3172, %3147
  %3178 = phi float [ %3148, %3147 ], [ %3174, %3172 ]
  %3179 = phi float [ %3149, %3147 ], [ %3176, %3172 ]
  %3180 = fadd fast float %2881, %3178
  %3181 = fmul fast float %3180, %3179
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3183 = fmul fast float %3182, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3019, %3019
  %3186 = fsub fast float %3020, %3185
  %3187 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3186)  ; FMax(a,b)
  %3188 = fdiv fast float 1.000000e+00, %3187
  %3189 = fmul fast float %3020, %3019
  %3190 = fsub fast float %3021, %3189
  %3191 = fsub fast float %3184, %3019
  %3192 = fmul fast float %3184, %3184
  %3193 = fsub fast float %3192, %3020
  %3194 = fmul fast float %3188, %3190
  %3195 = fmul fast float %3194, %3191
  %3196 = fsub fast float %3193, %3195
  %3197 = fmul fast float %3020, %3020
  %3198 = fsub fast float %3022, %3197
  %3199 = fmul fast float %3190, %3190
  %3200 = fmul fast float %3199, %3188
  %3201 = fsub fast float %3198, %3200
  %3202 = fdiv fast float %3196, %3201
  %3203 = fmul fast float %3202, %3190
  %3204 = fsub fast float %3191, %3203
  %3205 = fmul fast float %3204, %3188
  %3206 = fmul fast float %3205, %3019
  %3207 = fsub fast float 1.000000e+00, %3206
  %3208 = fmul fast float %3202, %3020
  %3209 = fsub fast float %3207, %3208
  %3210 = fmul fast float %3205, %3205
  %3211 = fmul fast float %3202, 4.000000e+00
  %3212 = fmul fast float %3211, %3209
  %3213 = fsub fast float %3210, %3212
  %3214 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3215 = fcmp fast oge float %3205, 0.000000e+00
  %3216 = fsub fast float -0.000000e+00, %3214
  %3217 = select i1 %3215, float %3216, float %3214
  %3218 = fsub fast float %3217, %3205
  %3219 = fdiv fast float %3218, %3202
  %3220 = fdiv fast float %3209, %3218
  %3221 = fmul fast float %3219, 5.000000e-01
  %3222 = fmul fast float %3220, 2.000000e+00
  %3223 = select i1 %3215, float %3221, float %3222
  %3224 = select i1 %3215, float %3222, float %3221
  %3225 = call float @dx.op.binary.f32(i32 35, float %3223, float %3224)  ; FMax(a,b)
  %3226 = call float @dx.op.binary.f32(i32 36, float %3223, float %3224)  ; FMin(a,b)
  %3227 = fcmp fast ogt float %3184, %3225
  %3228 = fsub fast float %3184, %3226
  %3229 = fsub fast float %3184, %3225
  %3230 = fsub fast float %3225, %3226
  %3231 = select i1 %3227, float %3229, float %3230
  %3232 = fmul float %3228, %3231
  %3233 = select i1 %3227, float %3226, float %3184
  %3234 = fcmp fast ogt float %3184, %3226
  %3235 = fmul fast float %3233, %3225
  %3236 = fadd fast float %3233, %3225
  %3237 = fmul fast float %3236, %3019
  %3238 = fadd fast float %3235, %3020
  %3239 = fsub fast float %3238, %3237
  %3240 = fdiv fast float %3239, %3232
  %3241 = select i1 %3234, float %3240, float 0.000000e+00
  %3242 = fsub fast float 1.000000e+00, %3241
  %3243 = select i1 %3227, float %3242, float %3241
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3004, 3
  %3246 = fmul fast float %3245, %3244
  %3247 = fsub fast float 1.000000e+00, %3246
  br label %3248

; <label>:3248                                    ; preds = %3177, %2889, %2854, %2850, %2816
  %3249 = phi float [ 1.000000e+00, %2816 ], [ %3247, %3177 ], [ 1.000000e+00, %2854 ], [ 1.000000e+00, %2889 ], [ 1.000000e+00, %2850 ]
  %3250 = fcmp fast ogt float %2846, 0.000000e+00
  br i1 %3250, label %3251, label %3257, !dx.controlflow.hints !104

; <label>:3251                                    ; preds = %3248
  %3252 = fadd fast float %2759, %2733
  %3253 = call float @dx.op.binary.f32(i32 35, float %3252, float 0.000000e+00)  ; FMax(a,b)
  %3254 = fadd fast float %3253, 0x3F10000000000000
  %3255 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %2748, float %2749, float undef, float undef, i32 0, i32 0, i32 undef, float %3254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  br label %3257

; <label>:3257                                    ; preds = %3251, %3248
  %3258 = phi float [ %3256, %3251 ], [ 1.000000e+00, %3248 ]
  %3259 = fcmp fast ogt float %2844, 0.000000e+00
  br i1 %3259, label %3260, label %3266, !dx.controlflow.hints !105

; <label>:3260                                    ; preds = %3257
  %3261 = fadd fast float %2789, %2733
  %3262 = call float @dx.op.binary.f32(i32 35, float %3261, float 0.000000e+00)  ; FMax(a,b)
  %3263 = fadd fast float %3262, 0x3F10000000000000
  %3264 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %2740, float %2741, float undef, float undef, i32 0, i32 0, i32 undef, float %3263)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  br label %3266

; <label>:3266                                    ; preds = %3260, %3257
  %3267 = phi float [ %3265, %3260 ], [ 1.000000e+00, %3257 ]
  %3268 = fcmp fast ogt float %2843, 0.000000e+00
  br i1 %3268, label %3269, label %3276, !dx.controlflow.hints !106

; <label>:3269                                    ; preds = %3266
  %3270 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %3271 = fadd fast float %3270, %2733
  %3272 = call float @dx.op.binary.f32(i32 35, float %3271, float 0.000000e+00)  ; FMax(a,b)
  %3273 = fadd fast float %3272, 0x3F10000000000000
  %3274 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %2725, float %2729, float undef, float undef, i32 0, i32 0, i32 undef, float %3273)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  br label %3276

; <label>:3276                                    ; preds = %3269, %3266
  %3277 = phi float [ %3275, %3269 ], [ 1.000000e+00, %3266 ]
  %3278 = fsub fast float %3258, %3249
  %3279 = fmul fast float %3278, %2787
  %3280 = fadd fast float %3279, %3249
  %3281 = fsub fast float %3267, %3280
  %3282 = fmul fast float %3281, %2817
  %3283 = fadd fast float %3282, %3280
  %3284 = fsub fast float %3277, %3283
  %3285 = fmul fast float %3284, %2843
  %3286 = fadd fast float %3285, %3283
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 2
  %3289 = fcmp fast ogt float %3288, 0.000000e+00
  br i1 %3289, label %3290, label %3330, !dx.controlflow.hints !107

; <label>:3290                                    ; preds = %3276
  %3291 = fcmp fast ugt float %3288, 0.000000e+00
  br i1 %3291, label %3292, label %3327

; <label>:3292                                    ; preds = %3290
  %3293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3293, 0
  %3295 = extractvalue %dx.types.CBufRet.f32 %3293, 1
  %3296 = extractvalue %dx.types.CBufRet.f32 %3293, 2
  %3297 = extractvalue %dx.types.CBufRet.f32 %3293, 3
  %3298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.f32 %3298, 0
  %3300 = extractvalue %dx.types.CBufRet.f32 %3298, 1
  %3301 = extractvalue %dx.types.CBufRet.f32 %3298, 2
  %3302 = extractvalue %dx.types.CBufRet.f32 %3298, 3
  %3303 = extractvalue %dx.types.CBufRet.f32 %3287, 0
  %3304 = extractvalue %dx.types.CBufRet.f32 %3287, 1
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.CBufRet.f32 %3305, 2
  %3309 = fadd fast float %3306, %2702
  %3310 = fadd fast float %3307, %2703
  %3311 = fadd fast float %3308, %2704
  %3312 = fmul fast float %3309, %3294
  %3313 = call float @dx.op.tertiary.f32(i32 46, float %3295, float %3310, float %3312)  ; FMad(a,b,c)
  %3314 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3311, float %3313)  ; FMad(a,b,c)
  %3315 = fadd fast float %3314, %3297
  %3316 = fmul fast float %3309, %3299
  %3317 = call float @dx.op.tertiary.f32(i32 46, float %3300, float %3310, float %3316)  ; FMad(a,b,c)
  %3318 = call float @dx.op.tertiary.f32(i32 46, float %3301, float %3311, float %3317)  ; FMad(a,b,c)
  %3319 = fadd fast float %3318, %3302
  %3320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %3315, float %3319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3322 = fmul fast float %3321, %3304
  %3323 = fadd fast float %3322, %3303
  %3324 = call float @dx.op.unary.f32(i32 7, float %3323)  ; Saturate(value)
  %3325 = fmul fast float %3324, %3288
  %3326 = fsub fast float 1.000000e+00, %3325
  br label %3327

; <label>:3327                                    ; preds = %3292, %3290
  %3328 = phi float [ %3326, %3292 ], [ 1.000000e+00, %3290 ]
  %3329 = fmul fast float %3328, %3286
  br label %3330

; <label>:3330                                    ; preds = %3327, %3276, %2682
  %3331 = phi float [ 1.000000e+00, %2682 ], [ %3329, %3327 ], [ %3286, %3276 ]
  %3332 = call float @dx.op.binary.f32(i32 36, float %3331, float %3331)  ; FMin(a,b)
  %3333 = call float @dx.op.binary.f32(i32 36, float %3331, float %3332)  ; FMin(a,b)
  %3334 = fcmp fast ogt float %3333, 0.000000e+00
  br i1 %3334, label %3335, label %3495, !dx.controlflow.hints !108

; <label>:3335                                    ; preds = %3330
  %3336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3337 = extractvalue %dx.types.CBufRet.f32 %3336, 0
  %3338 = extractvalue %dx.types.CBufRet.f32 %3336, 1
  %3339 = extractvalue %dx.types.CBufRet.f32 %3336, 2
  %3340 = extractvalue %dx.types.CBufRet.f32 %3336, 3
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.CBufRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.CBufRet.f32 %3341, 3
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.CBufRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.CBufRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.CBufRet.f32 %3346, 3
  %3351 = fmul fast float %3337, %2702
  %3352 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %3338, float %3351)  ; FMad(a,b,c)
  %3353 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %3339, float %3352)  ; FMad(a,b,c)
  %3354 = fadd fast float %3353, %3340
  %3355 = fmul fast float %3342, %2702
  %3356 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %3343, float %3355)  ; FMad(a,b,c)
  %3357 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %3344, float %3356)  ; FMad(a,b,c)
  %3358 = fadd fast float %3357, %3345
  %3359 = fmul fast float %3347, %2702
  %3360 = call float @dx.op.tertiary.f32(i32 46, float %2703, float %3348, float %3359)  ; FMad(a,b,c)
  %3361 = call float @dx.op.tertiary.f32(i32 46, float %2704, float %3349, float %3360)  ; FMad(a,b,c)
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3364 = extractvalue %dx.types.CBufRet.f32 %3362, 1
  %3365 = extractvalue %dx.types.CBufRet.f32 %3362, 3
  %3366 = fmul fast float %3365, %3354
  %3367 = fmul fast float %3365, %3358
  %3368 = fadd fast float %3366, %3363
  %3369 = fadd fast float %3367, %3364
  %3370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3371 = extractvalue %dx.types.CBufRet.f32 %3370, 0
  %3372 = extractvalue %dx.types.CBufRet.f32 %3370, 1
  %3373 = fsub fast float %3368, %3371
  %3374 = fsub fast float %3369, %3372
  %3375 = fcmp fast olt float %3373, 0.000000e+00
  %3376 = fcmp fast olt float %3374, 0.000000e+00
  %3377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.CBufRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.CBufRet.f32 %3377, 2
  %3381 = extractvalue %dx.types.CBufRet.f32 %3377, 3
  %3382 = select i1 %3375, float %3378, float %3380
  %3383 = select i1 %3376, float %3379, float %3381
  %3384 = fmul fast float %3382, %3373
  %3385 = fmul fast float %3383, %3374
  %3386 = call float @dx.op.unary.f32(i32 6, float %3384)  ; FAbs(value)
  %3387 = call float @dx.op.unary.f32(i32 6, float %3385)  ; FAbs(value)
  %3388 = extractvalue %dx.types.CBufRet.f32 %2697, 0
  %3389 = call float @dx.op.binary.f32(i32 35, float %3386, float %3387)  ; FMax(a,b)
  %3390 = fsub fast float %3388, %3389
  %3391 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3392 = fcmp fast ogt float %3391, 0.000000e+00
  br i1 %3392, label %3393, label %3434, !dx.controlflow.hints !109

; <label>:3393                                    ; preds = %3335
  %3394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %3368, float %3369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3395 = extractvalue %dx.types.ResRet.f32 %3394, 1
  %3396 = fcmp fast ogt float %3395, 0.000000e+00
  br i1 %3396, label %3397, label %3429

; <label>:3397                                    ; preds = %3393
  %3398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %3368, float %3369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.ResRet.f32 %3398, 2
  %3402 = extractvalue %dx.types.ResRet.f32 %3398, 3
  %3403 = fsub fast float 1.000000e+00, %3350
  %3404 = fsub fast float %3403, %3361
  %3405 = fmul fast float %3404, 0x400921FB60000000
  %3406 = fadd fast float %3405, 0x3FF921FB60000000
  %3407 = call float @dx.op.unary.f32(i32 13, float %3406)  ; Sin(value)
  %3408 = fadd fast float %3407, -1.000000e+00
  %3409 = fmul fast float %3408, 0x3FD45F3060000000
  %3410 = fmul fast float %3404, 0x401921FB60000000
  %3411 = fadd fast float %3410, 0x400921FB60000000
  %3412 = call float @dx.op.unary.f32(i32 13, float %3411)  ; Sin(value)
  %3413 = fadd fast float %3412, 0x3E7777A5C0000000
  %3414 = fmul fast float %3413, 0x3FC45F3060000000
  %3415 = fmul fast float %3404, 0x4022D97C80000000
  %3416 = fadd fast float %3415, 0x4012D97C80000000
  %3417 = call float @dx.op.unary.f32(i32 13, float %3416)  ; Sin(value)
  %3418 = fadd fast float %3417, 1.000000e+00
  %3419 = fmul fast float %3418, 0x3FBB2995E0000000
  %3420 = fmul fast float %3404, 0x402921FB60000000
  %3421 = fadd fast float %3420, 0x401921FB60000000
  %3422 = call float @dx.op.unary.f32(i32 13, float %3421)  ; Sin(value)
  %3423 = fadd fast float %3422, 0xBE8777A5C0000000
  %3424 = fmul fast float %3423, 0x3FB45F3060000000
  %3425 = call float @dx.op.dot4.f32(i32 56, float %3399, float %3400, float %3401, float %3402, float %3409, float %3414, float %3419, float %3424)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3426 = fmul fast float %3425, 0xBFF7154760000000
  %3427 = call float @dx.op.unary.f32(i32 21, float %3426)  ; Exp(value)
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  br label %3429

; <label>:3429                                    ; preds = %3397, %3393
  %3430 = phi float [ %3428, %3397 ], [ 1.000000e+00, %3393 ]
  %3431 = fadd fast float %3430, -1.000000e+00
  %3432 = fmul fast float %3431, %3391
  %3433 = fadd fast float %3432, 1.000000e+00
  br label %3434

; <label>:3434                                    ; preds = %3429, %3335
  %3435 = phi float [ %3433, %3429 ], [ 1.000000e+00, %3335 ]
  %3436 = fmul fast float %3435, %3331
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.CBufRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.CBufRet.f32 %3437, 2
  %3441 = fadd fast float %3438, %140
  %3442 = fadd fast float %3439, %141
  %3443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3443, 1
  %3445 = fsub fast float -0.000000e+00, %3441
  %3446 = fsub fast float -0.000000e+00, %3442
  %3447 = fsub fast float %2212, %3440
  %3448 = fadd fast float %3447, %3444
  %3449 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3445, float %3446, float %3448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3450 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2683, float %2684, float %2685)  ; Dot3(ax,ay,az,bx,by,bz)
  %3451 = fdiv fast float 1.000000e+00, %3450
  %3452 = fmul fast float %3451, %3449
  %3453 = fmul fast float %2683, %3452
  %3454 = fmul fast float %2684, %3452
  %3455 = fadd fast float %3453, %3441
  %3456 = fadd fast float %3454, %3442
  %3457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.CBufRet.f32 %3457, 1
  %3460 = fsub fast float %3455, %3458
  %3461 = fsub fast float %3456, %3459
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 2
  %3464 = extractvalue %dx.types.CBufRet.f32 %3462, 3
  %3465 = fmul fast float %3460, %3463
  %3466 = fmul fast float %3461, %3464
  %3467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.i32 %3467, 3
  %3469 = icmp eq i32 %3468, 0
  br i1 %3469, label %3475, label %3470

; <label>:3470                                    ; preds = %3434
  %3471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %3465, float %3466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3471, 2
  br label %3480

; <label>:3475                                    ; preds = %3434
  %3476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %3465, float %3466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  br label %3480

; <label>:3480                                    ; preds = %3475, %3470
  %3481 = phi float [ %3472, %3470 ], [ %3477, %3475 ]
  %3482 = phi float [ %3473, %3470 ], [ %3478, %3475 ]
  %3483 = phi float [ %3474, %3470 ], [ %3479, %3475 ]
  %3484 = extractvalue %dx.types.CBufRet.f32 %3443, 2
  %3485 = fmul fast float %3484, %3481
  %3486 = extractvalue %dx.types.CBufRet.f32 %3443, 0
  %3487 = fsub fast float %3452, %3486
  %3488 = fsub fast float %3487, %3485
  %3489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3488)  ; FMax(a,b)
  %3490 = fmul fast float %3489, %3482
  %3491 = call float @dx.op.binary.f32(i32 36, float %3483, float %3490)  ; FMin(a,b)
  %3492 = fmul fast float %3491, 0xBFF7154760000000
  %3493 = call float @dx.op.unary.f32(i32 21, float %3492)  ; Exp(value)
  %3494 = fmul fast float %3436, %3493
  br label %3495

; <label>:3495                                    ; preds = %3480, %3330
  %3496 = phi float [ %3494, %3480 ], [ %3331, %3330 ]
  %3497 = call float @dx.op.binary.f32(i32 36, float %3496, float %3496)  ; FMin(a,b)
  %3498 = call float @dx.op.binary.f32(i32 36, float %3496, float %3497)  ; FMin(a,b)
  %3499 = fcmp fast ogt float %3498, 0.000000e+00
  br i1 %3499, label %3500, label %3900, !dx.controlflow.hints !110

; <label>:3500                                    ; preds = %3495
  %3501 = fmul fast float %3496, %2694
  %3502 = fmul fast float %3496, %2695
  %3503 = fmul fast float %3496, %2696
  %3504 = fsub fast float %142, %1997
  %3505 = fcmp fast ogt float %3504, 0.000000e+00
  %3506 = fmul fast float %2683, 5.120000e+02
  %3507 = fmul fast float %2684, 5.120000e+02
  %3508 = fmul fast float %2685, 5.120000e+02
  %3509 = fadd fast float %3508, %142
  %3510 = fsub fast float %1997, %3509
  %3511 = fmul fast float %3510, 2.000000e+00
  %3512 = fadd fast float %3511, %3509
  %3513 = select i1 %3505, float %3512, float %3509
  %3514 = fsub fast float %3513, %142
  %3515 = call float @dx.op.dot3.f32(i32 55, float %3506, float %3507, float %3514, float %3506, float %3507, float %3514)  ; Dot3(ax,ay,az,bx,by,bz)
  %3516 = call float @dx.op.unary.f32(i32 25, float %3515)  ; Rsqrt(value)
  %3517 = fmul fast float %3516, %3506
  %3518 = fmul fast float %3516, %3507
  %3519 = fmul fast float %3516, %3514
  %3520 = fsub fast float %1997, %142
  %3521 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3520)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3517, float %3518, float %3519)  ; Dot3(ax,ay,az,bx,by,bz)
  %3523 = fdiv fast float 1.000000e+00, %3522
  %3524 = fmul fast float %3523, %3521
  %3525 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3504, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = fcmp fast ogt float %3525, 0.000000e+00
  %3527 = fcmp fast olt float %3525, 0.000000e+00
  %3528 = zext i1 %3526 to i32
  %3529 = zext i1 %3527 to i32
  %3530 = sub nsw i32 %3528, %3529
  %3531 = sitofp i32 %3530 to float
  %3532 = fsub fast float %3513, %1997
  %3533 = call float @dx.op.dot3.f32(i32 55, float %3506, float %3507, float %3532, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3534 = fcmp fast ogt float %3533, 0.000000e+00
  %3535 = fcmp fast olt float %3533, 0.000000e+00
  %3536 = zext i1 %3534 to i32
  %3537 = zext i1 %3535 to i32
  %3538 = sub nsw i32 %3536, %3537
  %3539 = sitofp i32 %3538 to float
  %3540 = fcmp fast une float %3531, %3539
  br i1 %3540, label %3541, label %3551

; <label>:3541                                    ; preds = %3500
  %3542 = fmul fast float %3524, %3519
  %3543 = fmul fast float %3524, %3518
  %3544 = fmul fast float %3524, %3517
  %3545 = fmul fast float %3544, %3544
  %3546 = fmul fast float %3543, %3543
  %3547 = fadd fast float %3545, %3546
  %3548 = fmul fast float %3542, %3542
  %3549 = fadd fast float %3547, %3548
  %3550 = call float @dx.op.unary.f32(i32 24, float %3549)  ; Sqrt(value)
  br label %3561

; <label>:3551                                    ; preds = %3500
  %3552 = icmp slt i32 %3530, 0
  br i1 %3552, label %3553, label %3561

; <label>:3553                                    ; preds = %3551
  %3554 = fsub fast float %142, %3513
  %3555 = fmul fast float %3506, %3506
  %3556 = fmul fast float %3507, %3507
  %3557 = fadd fast float %3555, %3556
  %3558 = fmul fast float %3554, %3554
  %3559 = fadd fast float %3557, %3558
  %3560 = call float @dx.op.unary.f32(i32 24, float %3559)  ; Sqrt(value)
  br label %3561

; <label>:3561                                    ; preds = %3553, %3551, %3541
  %3562 = phi float [ %3550, %3541 ], [ %3560, %3553 ], [ 0.000000e+00, %3551 ]
  %3563 = fsub fast float -0.000000e+00, %3562
  %3564 = select i1 %3505, float -0.000000e+00, float %3563
  %3565 = fmul fast float %1998, 0x3FF7154760000000
  %3566 = fmul fast float %3565, %3564
  %3567 = fmul fast float %1999, 0x3FF7154760000000
  %3568 = fmul fast float %3567, %3564
  %3569 = fmul fast float %2000, 0x3FF7154760000000
  %3570 = fmul fast float %3569, %3564
  %3571 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3572 = call float @dx.op.unary.f32(i32 21, float %3568)  ; Exp(value)
  %3573 = call float @dx.op.unary.f32(i32 21, float %3570)  ; Exp(value)
  %3574 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3575 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3576 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3577 = fmul fast float %3501, %3574
  %3578 = fmul fast float %3502, %3575
  %3579 = fmul fast float %3503, %3576
  %3580 = fsub fast float %2683, %2197
  %3581 = fsub fast float %2684, %2196
  %3582 = fsub fast float %2685, %2195
  %3583 = call float @dx.op.dot3.f32(i32 55, float %3580, float %3581, float %3582, float %3580, float %3581, float %3582)  ; Dot3(ax,ay,az,bx,by,bz)
  %3584 = call float @dx.op.unary.f32(i32 25, float %3583)  ; Rsqrt(value)
  %3585 = fmul fast float %3584, %3580
  %3586 = fmul fast float %3584, %3581
  %3587 = fmul fast float %3584, %3582
  %3588 = call float @dx.op.dot3.f32(i32 55, float %2683, float %2684, float %2685, float %2201, float %2202, float %2203)  ; Dot3(ax,ay,az,bx,by,bz)
  %3589 = call float @dx.op.dot3.f32(i32 55, float %2194, float %2193, float %2192, float %3585, float %3586, float %3587)  ; Dot3(ax,ay,az,bx,by,bz)
  %3590 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3591 = fmul fast float %3590, %3590
  %3592 = fmul fast float %3591, %2268
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fmul fast float %3593, %3590
  %3595 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float %3585, float %3586, float %3587)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = fmul fast float %3595, %3595
  %3597 = call float @dx.op.unary.f32(i32 6, float %3588)  ; FAbs(value)
  %3598 = call float @dx.op.binary.f32(i32 35, float %2651, float 0x3F847AE140000000)  ; FMax(a,b)
  %3599 = fmul fast float %3598, %3598
  %3600 = fmul fast float %3599, %3599
  %3601 = fsub fast float 1.000000e+00, %3600
  %3602 = fmul fast float %2215, %2215
  %3603 = fmul fast float %3602, %3601
  %3604 = fadd fast float %3603, %3600
  %3605 = bitcast float %3604 to i32
  %3606 = ashr i32 %3605, 1
  %3607 = add nsw i32 %3606, 532487669
  %3608 = bitcast i32 %3607 to float
  %3609 = fadd fast float %3608, %2215
  %3610 = call float @dx.op.dot3.f32(i32 55, float %1634, float %1635, float %1636, float %3585, float %3586, float %3587)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = fsub fast float 1.000000e+00, %1622
  %3612 = call float @dx.op.binary.f32(i32 35, float %3611, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3613 = fmul fast float %3612, %3612
  %3614 = fmul fast float %3613, %3600
  %3615 = fmul fast float %3610, %3610
  %3616 = fsub fast float 1.000000e+00, %3596
  %3617 = fsub fast float %3616, %3615
  %3618 = fdiv fast float %3615, %3614
  %3619 = fadd fast float %3618, %3596
  %3620 = fdiv fast float %3617, %3600
  %3621 = fadd fast float %3619, %3620
  %3622 = fmul fast float %3597, %3597
  %3623 = fmul fast float %3622, %3601
  %3624 = fadd fast float %3623, %3600
  %3625 = bitcast float %3624 to i32
  %3626 = ashr i32 %3625, 1
  %3627 = add nsw i32 %3626, 532487669
  %3628 = bitcast i32 %3627 to float
  %3629 = fadd fast float %3628, %3597
  %3630 = fmul fast float %3600, %3612
  %3631 = fmul fast float %3621, %3621
  %3632 = fmul fast float %3631, %3630
  %3633 = fmul fast float %3632, %3609
  %3634 = fmul fast float %3633, %3629
  %3635 = fdiv fast float 0x3FF0A00000000000, %3634
  %3636 = fmul fast float %2513, 0x3FF9999980000000
  %3637 = fsub fast float 5.000000e+00, %3636
  %3638 = call float @dx.op.unary.f32(i32 6, float %3589)  ; FAbs(value)
  %3639 = fsub fast float 1.000000e+00, %3638
  %3640 = fmul fast float %2513, 0x41D9660740000000
  %3641 = fadd fast float %3640, 0xC1EFBF8940000000
  %3642 = bitcast float %3639 to i32
  %3643 = sitofp i32 %3642 to float
  %3644 = fmul fast float %3643, %3637
  %3645 = fadd fast float %3641, %3644
  %3646 = fptosi float %3645 to i32
  %3647 = bitcast i32 %3646 to float
  %3648 = fsub fast float 1.000000e+00, %2198
  %3649 = fsub fast float 1.000000e+00, %2199
  %3650 = fsub fast float 1.000000e+00, %2213
  %3651 = fmul fast float %3647, %3648
  %3652 = fmul fast float %3647, %3649
  %3653 = fmul fast float %3647, %3650
  %3654 = fadd fast float %3651, %2198
  %3655 = fadd fast float %3652, %2199
  %3656 = fadd fast float %3653, %2213
  br i1 %2536, label %3657, label %3680

; <label>:3657                                    ; preds = %3561
  %3658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1497, float %3638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = fadd fast float %3659, -5.000000e-01
  %3663 = fadd fast float %3660, -5.000000e-01
  %3664 = fadd fast float %3661, -5.000000e-01
  %3665 = fmul fast float %2198, 4.000000e+00
  %3666 = fmul fast float %3665, %3648
  %3667 = fmul fast float %3666, %3662
  %3668 = fmul fast float %2199, 4.000000e+00
  %3669 = fmul fast float %3668, %3649
  %3670 = fmul fast float %3669, %3663
  %3671 = fmul fast float %2213, 4.000000e+00
  %3672 = fmul fast float %3671, %3650
  %3673 = fmul fast float %3672, %3664
  %3674 = fadd fast float %3667, %3654
  %3675 = fadd fast float %3670, %3655
  %3676 = fadd fast float %3673, %3656
  %3677 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3678 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3679 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  br label %3680

; <label>:3680                                    ; preds = %3657, %3561
  %3681 = phi float [ %3677, %3657 ], [ %3654, %3561 ]
  %3682 = phi float [ %3678, %3657 ], [ %3655, %3561 ]
  %3683 = phi float [ %3679, %3657 ], [ %3656, %3561 ]
  %3684 = fmul fast float %3588, 9.843750e-01
  %3685 = fadd fast float %3684, 7.812500e-03
  %3686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3685, float %2517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3687 = extractvalue %dx.types.ResRet.f32 %3686, 0
  %3688 = extractvalue %dx.types.ResRet.f32 %3686, 1
  %3689 = extractvalue %dx.types.ResRet.f32 %3686, 2
  %3690 = extractvalue %dx.types.ResRet.f32 %3686, 3
  %3691 = fsub fast float %3689, %3687
  %3692 = fsub fast float %3690, %3688
  %3693 = fmul fast float %3691, %2523
  %3694 = fmul fast float %3692, %2523
  %3695 = fadd fast float %3693, %3687
  %3696 = fadd fast float %3694, %3688
  %3697 = fmul fast float %3695, %2198
  %3698 = fmul fast float %3695, %2199
  %3699 = fmul fast float %3695, %2213
  %3700 = fadd fast float %3697, %3696
  %3701 = fadd fast float %3698, %3696
  %3702 = fadd fast float %3699, %3696
  br i1 %2536, label %3703, label %3726

; <label>:3703                                    ; preds = %3680
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1497, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = fadd fast float %3705, -5.000000e-01
  %3709 = fadd fast float %3706, -5.000000e-01
  %3710 = fadd fast float %3707, -5.000000e-01
  %3711 = fmul fast float %2198, 4.000000e+00
  %3712 = fmul fast float %3711, %3648
  %3713 = fmul fast float %3712, %3708
  %3714 = fmul fast float %2199, 4.000000e+00
  %3715 = fmul fast float %3714, %3649
  %3716 = fmul fast float %3715, %3709
  %3717 = fmul fast float %2213, 4.000000e+00
  %3718 = fmul fast float %3717, %3650
  %3719 = fmul fast float %3718, %3710
  %3720 = fadd fast float %3713, %3700
  %3721 = fadd fast float %3716, %3701
  %3722 = fadd fast float %3719, %3702
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  br label %3726

; <label>:3726                                    ; preds = %3703, %3680
  %3727 = phi float [ %3723, %3703 ], [ %3700, %3680 ]
  %3728 = phi float [ %3724, %3703 ], [ %3701, %3680 ]
  %3729 = phi float [ %3725, %3703 ], [ %3702, %3680 ]
  %3730 = call float @dx.op.binary.f32(i32 35, float %3728, float %3729)  ; FMax(a,b)
  %3731 = call float @dx.op.binary.f32(i32 35, float %3727, float %3730)  ; FMax(a,b)
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = call float @dx.op.binary.f32(i32 35, float %3597, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3734 = fdiv fast float %903, %3733
  %3735 = fmul fast float %2591, %3734
  %3736 = fmul fast float %2593, %3734
  %3737 = fmul fast float %2595, %3734
  %3738 = call float @dx.op.unary.f32(i32 21, float %3735)  ; Exp(value)
  %3739 = call float @dx.op.unary.f32(i32 21, float %3736)  ; Exp(value)
  %3740 = call float @dx.op.unary.f32(i32 21, float %3737)  ; Exp(value)
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3744 = select i1 %2588, float %3741, float 0.000000e+00
  %3745 = select i1 %2589, float %3742, float 0.000000e+00
  %3746 = select i1 %2590, float %3743, float 0.000000e+00
  %3747 = call float @dx.op.dot3.f32(i32 55, float %2683, float %2684, float %2685, float %2211, float %2210, float %2209)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3749 = fmul fast float %3748, 9.843750e-01
  %3750 = fadd fast float %3749, 7.812500e-03
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3750, float %2517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.ResRet.f32 %3751, 2
  %3755 = extractvalue %dx.types.ResRet.f32 %3751, 3
  %3756 = fsub fast float %3754, %3752
  %3757 = fsub fast float %3755, %3753
  %3758 = fmul fast float %3756, %2523
  %3759 = fmul fast float %3757, %2523
  %3760 = fadd fast float %3758, %3752
  %3761 = fadd fast float %3759, %3753
  %3762 = fmul fast float %3760, %2198
  %3763 = fmul fast float %3760, %2199
  %3764 = fmul fast float %3760, %2213
  %3765 = fadd fast float %3762, %3761
  %3766 = fadd fast float %3763, %3761
  %3767 = fadd fast float %3764, %3761
  br i1 %2536, label %3768, label %3791

; <label>:3768                                    ; preds = %3726
  %3769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1497, float %3748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.ResRet.f32 %3769, 1
  %3772 = extractvalue %dx.types.ResRet.f32 %3769, 2
  %3773 = fadd fast float %3770, -5.000000e-01
  %3774 = fadd fast float %3771, -5.000000e-01
  %3775 = fadd fast float %3772, -5.000000e-01
  %3776 = fmul fast float %2198, 4.000000e+00
  %3777 = fmul fast float %3776, %3648
  %3778 = fmul fast float %3777, %3773
  %3779 = fmul fast float %2199, 4.000000e+00
  %3780 = fmul fast float %3779, %3649
  %3781 = fmul fast float %3780, %3774
  %3782 = fmul fast float %2213, 4.000000e+00
  %3783 = fmul fast float %3782, %3650
  %3784 = fmul fast float %3783, %3775
  %3785 = fadd fast float %3778, %3765
  %3786 = fadd fast float %3781, %3766
  %3787 = fadd fast float %3784, %3767
  %3788 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3789 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3790 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  br label %3791

; <label>:3791                                    ; preds = %3768, %3726
  %3792 = phi float [ %3788, %3768 ], [ %3765, %3726 ]
  %3793 = phi float [ %3789, %3768 ], [ %3766, %3726 ]
  %3794 = phi float [ %3790, %3768 ], [ %3767, %3726 ]
  %3795 = call float @dx.op.binary.f32(i32 35, float %3793, float %3794)  ; FMax(a,b)
  %3796 = call float @dx.op.binary.f32(i32 35, float %3792, float %3795)  ; FMax(a,b)
  %3797 = fsub fast float 1.000000e+00, %3796
  %3798 = fmul fast float %2651, %2656
  %3799 = fadd fast float %2658, %3798
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3801 = fsub fast float %2683, %2221
  %3802 = fsub fast float %2684, %2222
  %3803 = fsub fast float %2685, %2223
  %3804 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float %3801, float %3802, float %3803)  ; Dot3(ax,ay,az,bx,by,bz)
  %3805 = call float @dx.op.unary.f32(i32 25, float %3804)  ; Rsqrt(value)
  %3806 = fmul fast float %3805, %3801
  %3807 = fmul fast float %3805, %3802
  %3808 = fmul fast float %3805, %3803
  %3809 = call float @dx.op.dot3.f32(i32 55, float %2211, float %2210, float %2209, float %3806, float %3807, float %3808)  ; Dot3(ax,ay,az,bx,by,bz)
  %3810 = fmul fast float %3809, %3809
  %3811 = call float @dx.op.unary.f32(i32 6, float %3748)  ; FAbs(value)
  %3812 = call float @dx.op.binary.f32(i32 35, float %3800, float 0x3F847AE140000000)  ; FMax(a,b)
  %3813 = fmul fast float %3812, %3812
  %3814 = fmul fast float %3813, %3813
  %3815 = fsub fast float 1.000000e+00, %3814
  %3816 = fmul fast float %3602, %3815
  %3817 = fadd fast float %3816, %3814
  %3818 = bitcast float %3817 to i32
  %3819 = ashr i32 %3818, 1
  %3820 = add nsw i32 %3819, 532487669
  %3821 = bitcast i32 %3820 to float
  %3822 = fadd fast float %3821, %2215
  %3823 = call float @dx.op.dot3.f32(i32 55, float %1634, float %1635, float %1636, float %3806, float %3807, float %3808)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = fmul fast float %3613, %3814
  %3825 = fmul fast float %3823, %3823
  %3826 = fsub fast float 1.000000e+00, %3810
  %3827 = fsub fast float %3826, %3825
  %3828 = fdiv fast float %3825, %3824
  %3829 = fadd fast float %3828, %3810
  %3830 = fdiv fast float %3827, %3814
  %3831 = fadd fast float %3829, %3830
  %3832 = fmul fast float %3811, %3811
  %3833 = fmul fast float %3832, %3815
  %3834 = fadd fast float %3833, %3814
  %3835 = bitcast float %3834 to i32
  %3836 = ashr i32 %3835, 1
  %3837 = add nsw i32 %3836, 532487669
  %3838 = bitcast i32 %3837 to float
  %3839 = fadd fast float %3838, %3811
  %3840 = fmul fast float %3814, %3612
  %3841 = fmul fast float %3831, %3831
  %3842 = fmul fast float %3841, %3840
  %3843 = fmul fast float %3842, %3822
  %3844 = fmul fast float %3843, %3839
  %3845 = fdiv fast float 0x3FF0A00000000000, %3844
  %3846 = fmul fast float %3748, %3744
  %3847 = fmul fast float %3748, %3745
  %3848 = fmul fast float %3748, %3746
  %3849 = fmul fast float %3846, %3797
  %3850 = fmul fast float %3849, %3845
  %3851 = fmul fast float %3847, %3797
  %3852 = fmul fast float %3851, %3845
  %3853 = fmul fast float %3848, %3797
  %3854 = fmul fast float %3853, %3845
  %3855 = fmul fast float %3681, %3635
  %3856 = fmul fast float %3682, %3635
  %3857 = fmul fast float %3683, %3635
  %3858 = fsub fast float 1.000000e+00, %3589
  %3859 = bitcast float %3858 to i32
  %3860 = sitofp i32 %3859 to float
  %3861 = fmul fast float %3860, 5.000000e+00
  %3862 = fadd fast float %3861, 0xC1EFBF8940000000
  %3863 = fptosi float %3862 to i32
  %3864 = bitcast i32 %3863 to float
  %3865 = fmul fast float %3864, %1496
  %3866 = fmul fast float %3732, %3865
  %3867 = fmul fast float %3866, %2583
  %3868 = fmul fast float %3866, %2584
  %3869 = fmul fast float %3866, %2585
  %3870 = fadd fast float %3867, %3855
  %3871 = fadd fast float %3868, %3856
  %3872 = fadd fast float %3869, %3857
  %3873 = fmul fast float %3870, %3594
  %3874 = fmul fast float %3871, %3594
  %3875 = fmul fast float %3872, %3594
  %3876 = fmul fast float %3594, %3577
  %3877 = fmul fast float %3876, %3732
  %3878 = fmul fast float %3594, %3578
  %3879 = fmul fast float %3878, %3732
  %3880 = fmul fast float %3594, %3579
  %3881 = fmul fast float %3880, %3732
  %3882 = fadd fast float %3873, %3850
  %3883 = fadd fast float %3874, %3852
  %3884 = fadd fast float %3875, %3854
  %3885 = fmul fast float %3882, %3577
  %3886 = fmul fast float %3883, %3578
  %3887 = fmul fast float %3884, %3579
  %3888 = fadd fast float %3877, %2673
  %3889 = fmul fast float %3888, %1520
  %3890 = fadd fast float %3879, %2675
  %3891 = fmul fast float %3890, %1520
  %3892 = fadd fast float %3881, %2677
  %3893 = fmul fast float %3892, %1520
  %3894 = fadd fast float %3885, %2636
  %3895 = fmul fast float %3894, %1520
  %3896 = fadd fast float %3886, %2639
  %3897 = fmul fast float %3896, %1520
  %3898 = fadd fast float %3887, %2642
  %3899 = fmul fast float %3898, %1520
  br label %3900

; <label>:3900                                    ; preds = %3791, %3495, %2563
  %3901 = phi float [ %2637, %2563 ], [ %2637, %3495 ], [ %3895, %3791 ]
  %3902 = phi float [ %2640, %2563 ], [ %2640, %3495 ], [ %3897, %3791 ]
  %3903 = phi float [ %2643, %2563 ], [ %2643, %3495 ], [ %3899, %3791 ]
  %3904 = phi float [ %2674, %2563 ], [ %2674, %3495 ], [ %3889, %3791 ]
  %3905 = phi float [ %2676, %2563 ], [ %2676, %3495 ], [ %3891, %3791 ]
  %3906 = phi float [ %2678, %2563 ], [ %2678, %3495 ], [ %3893, %3791 ]
  %3907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.i32 %3907, 0
  %3909 = icmp eq i32 %3908, 0
  br i1 %3909, label %4698, label %3910

; <label>:3910                                    ; preds = %3900
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3913 = extractvalue %dx.types.CBufRet.f32 %3911, 3
  %3914 = fmul fast float %3912, %85
  %3915 = fmul fast float %3913, %86
  %3916 = fptoui float %3914 to i32
  %3917 = fptoui float %3915 to i32
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.CBufRet.f32 %3918, 2
  %3921 = extractvalue %dx.types.CBufRet.f32 %3918, 3
  %3922 = fadd fast float %76, -4.000000e+00
  %3923 = call float @dx.op.binary.f32(i32 35, float %3922, float 0.000000e+00)  ; FMax(a,b)
  %3924 = fadd fast float %3923, %3919
  %3925 = fmul fast float %3924, %3920
  %3926 = call float @dx.op.unary.f32(i32 23, float %3925)  ; Log(value)
  %3927 = fmul fast float %3926, %3921
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 2
  %3930 = fmul fast float %3927, %3929
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.i32 %3932, 1
  %3934 = add i32 %3933, -1
  %3935 = uitofp i32 %3933 to float
  %3936 = fmul fast float %3935, %3931
  %3937 = fptoui float %3936 to i32
  %3938 = call i32 @dx.op.binary.i32(i32 40, i32 %3937, i32 %3934)  ; UMin(a,b)
  %3939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.i32 %3939, 2
  %3941 = extractvalue %dx.types.CBufRet.i32 %3939, 3
  %3942 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3917, i32 %3940, i32 %3916)  ; UMad(a,b,c)
  %3943 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3938, i32 %3941, i32 %3942)  ; UMad(a,b,c)
  %3944 = add nsw i32 %3908, -1
  %3945 = call i32 @dx.op.binary.i32(i32 37, i32 %3944, i32 0)  ; IMax(a,b)
  %3946 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %3947 = fptoui float %3946 to i32
  %3948 = lshr i32 %3947, 5
  %3949 = call i32 @dx.op.binary.i32(i32 40, i32 %3948, i32 8191)  ; UMin(a,b)
  %3950 = shl i32 %3949, 2
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = lshr i32 %3952, 16
  %3954 = and i32 %3952, 65535
  %3955 = lshr i32 %3952, 21
  %3956 = lshr i32 %3954, 5
  %3957 = call i32 @dx.op.binary.i32(i32 40, i32 %3956, i32 %3945)  ; UMin(a,b)
  %3958 = icmp ugt i32 %3955, %3957
  br i1 %3958, label %4698, label %3959

; <label>:3959                                    ; preds = %3910
  br label %3960

; <label>:3960                                    ; preds = %4688, %3959
  %3961 = phi i32 [ %4695, %4688 ], [ %3955, %3959 ]
  %3962 = phi float [ %4689, %4688 ], [ %3901, %3959 ]
  %3963 = phi float [ %4690, %4688 ], [ %3902, %3959 ]
  %3964 = phi float [ %4691, %4688 ], [ %3903, %3959 ]
  %3965 = phi float [ %4692, %4688 ], [ %3904, %3959 ]
  %3966 = phi float [ %4693, %4688 ], [ %3905, %3959 ]
  %3967 = phi float [ %4694, %4688 ], [ %3906, %3959 ]
  %3968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.i32 %3968, 0
  %3970 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3943, i32 %3969, i32 %3961)  ; UMad(a,b,c)
  %3971 = shl i32 %3970, 2
  %3972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.i32 %3972, 0
  %3974 = shl i32 %3961, 5
  %3975 = sub nsw i32 %3953, %3974
  %3976 = call i32 @dx.op.binary.i32(i32 37, i32 %3975, i32 0)  ; IMax(a,b)
  %3977 = call i32 @dx.op.binary.i32(i32 38, i32 %3976, i32 31)  ; IMin(a,b)
  %3978 = sub nsw i32 1, %3953
  %3979 = add nsw i32 %3978, %3954
  %3980 = call i32 @dx.op.binary.i32(i32 37, i32 %3979, i32 0)  ; IMax(a,b)
  %3981 = call i32 @dx.op.binary.i32(i32 38, i32 %3980, i32 32)  ; IMin(a,b)
  %3982 = and i32 %3981, 31
  %3983 = shl i32 -1, %3982
  %3984 = xor i32 %3983, -1
  %3985 = and i32 %3977, 31
  %3986 = shl i32 %3984, %3985
  %3987 = icmp eq i32 %3981, 32
  %3988 = select i1 %3987, i32 -1, i32 %3986
  %3989 = and i32 %3988, %3973
  %3990 = icmp eq i32 %3989, 0
  br i1 %3990, label %4688, label %3991

; <label>:3991                                    ; preds = %3960
  br label %3992

; <label>:3992                                    ; preds = %4127, %3991
  %3993 = phi i32 [ %4004, %4127 ], [ %3989, %3991 ]
  %3994 = phi float [ %4128, %4127 ], [ %3962, %3991 ]
  %3995 = phi float [ %4129, %4127 ], [ %3963, %3991 ]
  %3996 = phi float [ %4130, %4127 ], [ %3964, %3991 ]
  %3997 = phi float [ %4131, %4127 ], [ %3965, %3991 ]
  %3998 = phi float [ %4132, %4127 ], [ %3966, %3991 ]
  %3999 = phi float [ %4133, %4127 ], [ %3967, %3991 ]
  %4000 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3993)  ; FirstbitLo(value)
  %4001 = add i32 %4000, %3974
  %4002 = and i32 %4000, 31
  %4003 = shl i32 1, %4002
  %4004 = xor i32 %4003, %3993
  %4005 = mul i32 %4001, 112
  %4006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = or i32 %4005, 12
  %4011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = add i32 %4005, 16
  %4014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.ResRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4018 = add i32 %4005, 28
  %4019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.i32 %4019, 0
  %4021 = add i32 %4005, 44
  %4022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = add i32 %4005, 48
  %4025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = extractvalue %dx.types.ResRet.f32 %4025, 3
  %4030 = add i32 %4005, 64
  %4031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.ResRet.f32 %4031, 1
  %4034 = extractvalue %dx.types.ResRet.f32 %4031, 2
  %4035 = extractvalue %dx.types.ResRet.f32 %4031, 3
  %4036 = add i32 %4005, 80
  %4037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4040 = add i32 %4005, 92
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4009, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4044 = select i1 %202, float %4038, float %4007
  %4045 = select i1 %202, float %4043, float %4008
  %4046 = select i1 %202, float %4039, float %4009
  %4047 = and i32 %4042, 65535
  %4048 = uitofp i32 %4047 to float
  %4049 = lshr i32 %4042, 16
  %4050 = uitofp i32 %4049 to float
  %4051 = and i32 %4020, 65535
  %4052 = and i32 %4020, 50331648
  %4053 = icmp slt i32 %4020, 0
  %4054 = icmp eq i32 %4052, 33554432
  %4055 = fsub fast float %4026, %140
  %4056 = fsub fast float %4027, %141
  %4057 = fsub fast float %4028, %142
  %4058 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4057, float %4055, float %4056, float %4057)  ; Dot3(ax,ay,az,bx,by,bz)
  %4059 = call float @dx.op.unary.f32(i32 24, float %4058)  ; Sqrt(value)
  %4060 = fdiv fast float 1.000000e+00, %4059
  %4061 = fmul fast float %4060, %4055
  %4062 = fmul fast float %4060, %4056
  %4063 = fmul fast float %4060, %4057
  %4064 = fadd fast float %4059, %4012
  %4065 = fdiv fast float 1.000000e+00, %4064
  %4066 = fmul float %4023, %4065
  %4067 = fmul float %4066, %4066
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  br i1 %4054, label %4069, label %4090

; <label>:4069                                    ; preds = %3992
  %4070 = fmul fast float %4034, %4015
  %4071 = fmul fast float %4034, %4016
  %4072 = fmul fast float %4034, %4017
  %4073 = fadd fast float %4055, %4070
  %4074 = fadd fast float %4056, %4071
  %4075 = fadd fast float %4057, %4072
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4073, float %4074, float %4075, float %4073, float %4074, float %4075)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.unary.f32(i32 25, float %4076)  ; Rsqrt(value)
  %4078 = fmul fast float %4077, %4073
  %4079 = fmul fast float %4077, %4074
  %4080 = fmul fast float %4077, %4075
  %4081 = fsub fast float %140, %4026
  %4082 = fsub fast float %141, %4027
  %4083 = fsub fast float %142, %4028
  %4084 = fsub fast float -0.000000e+00, %4081
  %4085 = fsub fast float -0.000000e+00, %4082
  %4086 = fsub fast float -0.000000e+00, %4083
  %4087 = call float @dx.op.dot3.f32(i32 55, float %4084, float %4085, float %4086, float %4015, float %4016, float %4017)  ; Dot3(ax,ay,az,bx,by,bz)
  %4088 = fcmp fast ogt float %4087, 0.000000e+00
  %4089 = uitofp i1 %4088 to float
  br label %4090

; <label>:4090                                    ; preds = %4069, %3992
  %4091 = phi float [ %4089, %4069 ], [ 1.000000e+00, %3992 ]
  %4092 = phi float [ %4078, %4069 ], [ %4061, %3992 ]
  %4093 = phi float [ %4079, %4069 ], [ %4062, %3992 ]
  %4094 = phi float [ %4080, %4069 ], [ %4063, %3992 ]
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4092, float %4093, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = fmul fast float %4095, %4095
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fsub fast float 1.000000e+00, %4097
  %4099 = fmul fast float %4098, 5.000000e-01
  %4100 = fcmp fast ogt float %4095, 0.000000e+00
  %4101 = fsub fast float 1.000000e+00, %4099
  %4102 = select i1 %4100, float %4099, float %4101
  %4103 = fmul fast float %4102, %4050
  %4104 = fadd fast float %4103, %4048
  %4105 = fmul fast float %4104, 0x3EF0001000000000
  %4106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %4105, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = fmul fast float %4095, %4032
  %4109 = fadd fast float %4108, %4033
  %4110 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4111 = select i1 %4054, float 1.000000e+00, float %4110
  %4112 = select i1 %4054, float %4110, float 1.000000e+00
  %4113 = fmul fast float %4059, %4029
  %4114 = fsub fast float 1.000000e+00, %4113
  %4115 = fmul fast float %4114, %4035
  %4116 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4117 = fmul fast float %4116, %4112
  %4118 = fmul fast float %4117, 2.000000e+00
  %4119 = fsub fast float 3.000000e+00, %4118
  %4120 = fmul fast float %4107, %4091
  %4121 = fmul fast float %4117, %4117
  %4122 = fmul fast float %4121, %4120
  %4123 = fmul fast float %4122, %4119
  %4124 = call float @dx.op.binary.f32(i32 36, float %4123, float %4123)  ; FMin(a,b)
  %4125 = call float @dx.op.binary.f32(i32 36, float %4123, float %4124)  ; FMin(a,b)
  %4126 = fcmp fast ogt float %4125, 0.000000e+00
  br i1 %4126, label %4135, label %4127, !dx.controlflow.hints !111

; <label>:4127                                    ; preds = %4641, %4235, %4090
  %4128 = phi float [ %3994, %4235 ], [ %3994, %4090 ], [ %4684, %4641 ]
  %4129 = phi float [ %3995, %4235 ], [ %3995, %4090 ], [ %4685, %4641 ]
  %4130 = phi float [ %3996, %4235 ], [ %3996, %4090 ], [ %4686, %4641 ]
  %4131 = phi float [ %3997, %4235 ], [ %3997, %4090 ], [ %4678, %4641 ]
  %4132 = phi float [ %3998, %4235 ], [ %3998, %4090 ], [ %4679, %4641 ]
  %4133 = phi float [ %3999, %4235 ], [ %3999, %4090 ], [ %4680, %4641 ]
  %4134 = icmp eq i32 %3993, %4003
  br i1 %4134, label %4687, label %3992

; <label>:4135                                    ; preds = %4090
  %4136 = icmp eq i32 %4051, 255
  br i1 %4136, label %4235, label %4137, !dx.controlflow.hints !112

; <label>:4137                                    ; preds = %4135
  %4138 = mul nuw nsw i32 %4051, 176
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = add nuw nsw i32 %4138, 16
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = add nuw nsw i32 %4138, 32
  %4149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = add nuw nsw i32 %4138, 48
  %4154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.ResRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.ResRet.f32 %4154, 2
  %4158 = extractvalue %dx.types.ResRet.f32 %4154, 3
  %4159 = add nuw nsw i32 %4138, 64
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = extractvalue %dx.types.ResRet.f32 %4160, 3
  %4165 = add nuw nsw i32 %4138, 80
  %4166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.ResRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.ResRet.f32 %4166, 2
  %4170 = extractvalue %dx.types.ResRet.f32 %4166, 3
  %4171 = add nuw nsw i32 %4138, 96
  %4172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.ResRet.f32 %4172, 3
  %4177 = bitcast float %4147 to i32
  %4178 = fmul fast float %4152, %88
  %4179 = fmul fast float %4152, %89
  %4180 = fmul fast float %4152, %90
  %4181 = fadd fast float %4178, %140
  %4182 = fadd fast float %4179, %141
  %4183 = fadd fast float %4180, %142
  %4184 = fmul fast float %4181, %4155
  %4185 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4161, float %4184)  ; FMad(a,b,c)
  %4186 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4167, float %4185)  ; FMad(a,b,c)
  %4187 = fadd fast float %4186, %4173
  %4188 = fmul fast float %4181, %4156
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4162, float %4188)  ; FMad(a,b,c)
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4168, float %4189)  ; FMad(a,b,c)
  %4191 = fadd fast float %4190, %4174
  %4192 = fmul fast float %4181, %4157
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4163, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4169, float %4193)  ; FMad(a,b,c)
  %4195 = fadd fast float %4194, %4175
  %4196 = fmul fast float %4181, %4158
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4164, float %4196)  ; FMad(a,b,c)
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4170, float %4197)  ; FMad(a,b,c)
  %4199 = fadd fast float %4198, %4176
  %4200 = fdiv fast float %4187, %4199
  %4201 = fdiv fast float %4191, %4199
  %4202 = fdiv fast float %4195, %4199
  %4203 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4202)  ; FMax(a,b)
  %4204 = fmul fast float %213, 0x401921FB60000000
  %4205 = call float @dx.op.unary.f32(i32 13, float %4204)  ; Sin(value)
  %4206 = call float @dx.op.unary.f32(i32 12, float %4204)  ; Cos(value)
  %4207 = fsub fast float -0.000000e+00, %4205
  %4208 = fmul fast float %4142, 5.000000e-01
  %4209 = call float @dx.op.dot2.f32(i32 54, float %213, float %213, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4210 = call float @dx.op.unary.f32(i32 22, float %4209)  ; Frc(value)
  %4211 = fmul fast float %4210, 0x404A7DD040000000
  %4212 = call float @dx.op.unary.f32(i32 22, float %4211)  ; Frc(value)
  %4213 = fmul fast float %4212, %4151
  %4214 = fadd fast float %4213, %4208
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4207, float 0.000000e+00)  ; FMad(a,b,c)
  %4216 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4206, float 0.000000e+00)  ; FMad(a,b,c)
  %4217 = fadd fast float %4215, %4200
  %4218 = fadd fast float %4216, %4201
  %4219 = fmul fast float %4217, %4146
  %4220 = fmul fast float %4218, %4146
  %4221 = call float @dx.op.binary.f32(i32 35, float %4219, float %4142)  ; FMax(a,b)
  %4222 = call float @dx.op.binary.f32(i32 35, float %4220, float %4142)  ; FMax(a,b)
  %4223 = call float @dx.op.binary.f32(i32 36, float %4221, float %4143)  ; FMin(a,b)
  %4224 = call float @dx.op.binary.f32(i32 36, float %4222, float %4143)  ; FMin(a,b)
  %4225 = fadd fast float %4223, %4140
  %4226 = fadd fast float %4224, %4141
  %4227 = uitofp i32 %4177 to float
  %4228 = fadd fast float %4203, %4150
  %4229 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %4225, float %4226, float %4227, float undef, i32 0, i32 0, i32 undef, float %4228)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = fadd fast float %4230, -1.000000e+00
  %4232 = fmul fast float %4231, %4111
  %4233 = fadd fast float %4232, 1.000000e+00
  %4234 = fmul fast float %4233, %4123
  br label %4235

; <label>:4235                                    ; preds = %4137, %4135
  %4236 = phi float [ %4234, %4137 ], [ %4123, %4135 ]
  %4237 = call float @dx.op.binary.f32(i32 36, float %4236, float %4236)  ; FMin(a,b)
  %4238 = call float @dx.op.binary.f32(i32 36, float %4236, float %4237)  ; FMin(a,b)
  %4239 = fcmp fast ogt float %4238, 0.000000e+00
  br i1 %4239, label %4240, label %4127, !dx.controlflow.hints !113

; <label>:4240                                    ; preds = %4235
  %4241 = fmul fast float %4236, %4044
  %4242 = fmul fast float %4236, %4045
  %4243 = fmul fast float %4236, %4046
  %4244 = fsub fast float %4028, %1997
  %4245 = fcmp fast ogt float %4244, 0.000000e+00
  %4246 = fsub fast float %142, %1997
  %4247 = fcmp fast ogt float %4246, 0.000000e+00
  %4248 = xor i1 %4247, %4245
  %4249 = fsub fast float %1997, %4028
  %4250 = fmul fast float %4249, 2.000000e+00
  %4251 = fadd fast float %4250, %4028
  %4252 = select i1 %4248, float %4028, float %4251
  %4253 = fsub fast float %4252, %142
  %4254 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4253, float %4055, float %4056, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = call float @dx.op.unary.f32(i32 25, float %4254)  ; Rsqrt(value)
  %4256 = fmul fast float %4255, %4055
  %4257 = fmul fast float %4255, %4056
  %4258 = fmul fast float %4255, %4253
  %4259 = fsub fast float %1997, %142
  %4260 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4259)  ; Dot3(ax,ay,az,bx,by,bz)
  %4261 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4256, float %4257, float %4258)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = fdiv fast float 1.000000e+00, %4261
  %4263 = fmul fast float %4262, %4260
  %4264 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4246, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4265 = fcmp fast ogt float %4264, 0.000000e+00
  %4266 = fcmp fast olt float %4264, 0.000000e+00
  %4267 = zext i1 %4265 to i32
  %4268 = zext i1 %4266 to i32
  %4269 = sub nsw i32 %4267, %4268
  %4270 = sitofp i32 %4269 to float
  %4271 = fsub fast float %4252, %1997
  %4272 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4271, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = fcmp fast ogt float %4272, 0.000000e+00
  %4274 = fcmp fast olt float %4272, 0.000000e+00
  %4275 = zext i1 %4273 to i32
  %4276 = zext i1 %4274 to i32
  %4277 = sub nsw i32 %4275, %4276
  %4278 = sitofp i32 %4277 to float
  %4279 = fcmp fast une float %4270, %4278
  br i1 %4279, label %4280, label %4290

; <label>:4280                                    ; preds = %4240
  %4281 = fmul fast float %4263, %4258
  %4282 = fmul fast float %4263, %4257
  %4283 = fmul fast float %4263, %4256
  %4284 = fmul fast float %4283, %4283
  %4285 = fmul fast float %4282, %4282
  %4286 = fadd fast float %4284, %4285
  %4287 = fmul fast float %4281, %4281
  %4288 = fadd fast float %4286, %4287
  %4289 = call float @dx.op.unary.f32(i32 24, float %4288)  ; Sqrt(value)
  br label %4302

; <label>:4290                                    ; preds = %4240
  %4291 = icmp slt i32 %4269, 0
  br i1 %4291, label %4292, label %4302

; <label>:4292                                    ; preds = %4290
  %4293 = fsub fast float %140, %4026
  %4294 = fsub fast float %141, %4027
  %4295 = fsub fast float %142, %4252
  %4296 = fmul fast float %4293, %4293
  %4297 = fmul fast float %4294, %4294
  %4298 = fadd fast float %4296, %4297
  %4299 = fmul fast float %4295, %4295
  %4300 = fadd fast float %4298, %4299
  %4301 = call float @dx.op.unary.f32(i32 24, float %4300)  ; Sqrt(value)
  br label %4302

; <label>:4302                                    ; preds = %4292, %4290, %4280
  %4303 = phi float [ %4289, %4280 ], [ %4301, %4292 ], [ 0.000000e+00, %4290 ]
  %4304 = and i1 %4247, %4245
  %4305 = fsub fast float -0.000000e+00, %4303
  %4306 = select i1 %4304, float -0.000000e+00, float %4305
  %4307 = fmul fast float %1998, 0x3FF7154760000000
  %4308 = fmul fast float %4307, %4306
  %4309 = fmul fast float %1999, 0x3FF7154760000000
  %4310 = fmul fast float %4309, %4306
  %4311 = fmul fast float %2000, 0x3FF7154760000000
  %4312 = fmul fast float %4311, %4306
  %4313 = call float @dx.op.unary.f32(i32 21, float %4308)  ; Exp(value)
  %4314 = call float @dx.op.unary.f32(i32 21, float %4310)  ; Exp(value)
  %4315 = call float @dx.op.unary.f32(i32 21, float %4312)  ; Exp(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4319 = fmul fast float %4241, %4316
  %4320 = fmul fast float %4242, %4317
  %4321 = fmul fast float %4243, %4318
  %4322 = fsub fast float %4061, %2197
  %4323 = fsub fast float %4062, %2196
  %4324 = fsub fast float %4063, %2195
  %4325 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float %4322, float %4323, float %4324)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = call float @dx.op.unary.f32(i32 25, float %4325)  ; Rsqrt(value)
  %4327 = fmul fast float %4326, %4322
  %4328 = fmul fast float %4326, %4323
  %4329 = fmul fast float %4326, %4324
  %4330 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4062, float %4063, float %2201, float %2202, float %2203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4331 = call float @dx.op.dot3.f32(i32 55, float %2194, float %2193, float %2192, float %4327, float %4328, float %4329)  ; Dot3(ax,ay,az,bx,by,bz)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4333 = fmul fast float %4332, %4068
  %4334 = fmul fast float %4332, %4332
  %4335 = fmul fast float %4334, %2268
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fmul fast float %4333, %4336
  %4338 = bitcast float %4058 to i32
  %4339 = ashr i32 %4338, 1
  %4340 = sub nsw i32 1597463007, %4339
  %4341 = bitcast i32 %4340 to float
  %4342 = fmul fast float %4341, %4055
  %4343 = fmul fast float %4341, %4056
  %4344 = fmul fast float %4341, %4057
  %4345 = fsub fast float %4342, %2197
  %4346 = fsub fast float %4343, %2196
  %4347 = fsub fast float %4344, %2195
  %4348 = call float @dx.op.dot3.f32(i32 55, float %4345, float %4346, float %4347, float %4345, float %4346, float %4347)  ; Dot3(ax,ay,az,bx,by,bz)
  %4349 = call float @dx.op.unary.f32(i32 25, float %4348)  ; Rsqrt(value)
  %4350 = fmul fast float %4345, %4349
  %4351 = fmul fast float %4346, %4349
  %4352 = fmul fast float %4347, %4349
  %4353 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float %4350, float %4351, float %4352)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = fmul fast float %4353, %4353
  %4355 = call float @dx.op.unary.f32(i32 6, float %4330)  ; FAbs(value)
  %4356 = call float @dx.op.binary.f32(i32 35, float %2651, float 0x3F847AE140000000)  ; FMax(a,b)
  %4357 = fmul fast float %4356, %4356
  %4358 = fmul fast float %4357, %4357
  %4359 = fsub fast float 1.000000e+00, %4358
  %4360 = fmul fast float %2215, %2215
  %4361 = fmul fast float %4360, %4359
  %4362 = fadd fast float %4361, %4358
  %4363 = bitcast float %4362 to i32
  %4364 = ashr i32 %4363, 1
  %4365 = add nsw i32 %4364, 532487669
  %4366 = bitcast i32 %4365 to float
  %4367 = fadd fast float %4366, %2215
  %4368 = call float @dx.op.dot3.f32(i32 55, float %1634, float %1635, float %1636, float %4350, float %4351, float %4352)  ; Dot3(ax,ay,az,bx,by,bz)
  %4369 = fsub fast float 1.000000e+00, %1622
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4371 = fmul fast float %4370, %4370
  %4372 = fmul fast float %4371, %4358
  %4373 = fmul fast float %4368, %4368
  %4374 = fsub fast float 1.000000e+00, %4354
  %4375 = fsub fast float %4374, %4373
  %4376 = fdiv fast float %4373, %4372
  %4377 = fadd fast float %4376, %4354
  %4378 = fdiv fast float %4375, %4358
  %4379 = fadd fast float %4377, %4378
  %4380 = fmul fast float %4355, %4355
  %4381 = fmul fast float %4380, %4359
  %4382 = fadd fast float %4381, %4358
  %4383 = bitcast float %4382 to i32
  %4384 = ashr i32 %4383, 1
  %4385 = add nsw i32 %4384, 532487669
  %4386 = bitcast i32 %4385 to float
  %4387 = fadd fast float %4386, %4355
  %4388 = fmul fast float %4358, %4370
  %4389 = fmul fast float %4379, %4379
  %4390 = fmul fast float %4389, %4388
  %4391 = fmul fast float %4390, %4367
  %4392 = fmul fast float %4391, %4387
  %4393 = fdiv fast float 1.000000e+00, %4392
  %4394 = bitcast float %4358 to i32
  %4395 = sitofp i32 %4394 to float
  %4396 = fmul fast float %4395, 0x3FE7F73180000000
  %4397 = fadd fast float %4396, 0x41AFE27C40000000
  %4398 = fptosi float %4397 to i32
  %4399 = bitcast i32 %4398 to float
  %4400 = fmul fast float %4023, 0x3FD80E9D60000000
  %4401 = fmul fast float %4400, %4341
  %4402 = fadd fast float %4399, %4401
  %4403 = bitcast float %4402 to i32
  %4404 = sub nsw i32 2129859010, %4403
  %4405 = bitcast i32 %4404 to float
  %4406 = fmul fast float %4399, %4393
  %4407 = fmul fast float %4406, %4405
  %4408 = fmul fast float %2513, 0x3FF9999980000000
  %4409 = fsub fast float 5.000000e+00, %4408
  %4410 = call float @dx.op.unary.f32(i32 6, float %4331)  ; FAbs(value)
  %4411 = fsub fast float 1.000000e+00, %4410
  %4412 = fmul fast float %2513, 0x41D9660740000000
  %4413 = fadd fast float %4412, 0xC1EFBF8940000000
  %4414 = bitcast float %4411 to i32
  %4415 = sitofp i32 %4414 to float
  %4416 = fmul fast float %4415, %4409
  %4417 = fadd fast float %4413, %4416
  %4418 = fptosi float %4417 to i32
  %4419 = bitcast i32 %4418 to float
  %4420 = fsub fast float 1.000000e+00, %2198
  %4421 = fsub fast float 1.000000e+00, %2199
  %4422 = fsub fast float 1.000000e+00, %2213
  %4423 = fmul fast float %4419, %4420
  %4424 = fmul fast float %4419, %4421
  %4425 = fmul fast float %4419, %4422
  %4426 = fadd fast float %4423, %2198
  %4427 = fadd fast float %4424, %2199
  %4428 = fadd fast float %4425, %2213
  br i1 %2536, label %4429, label %4452

; <label>:4429                                    ; preds = %4302
  %4430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1497, float %4410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.ResRet.f32 %4430, 2
  %4434 = fadd fast float %4431, -5.000000e-01
  %4435 = fadd fast float %4432, -5.000000e-01
  %4436 = fadd fast float %4433, -5.000000e-01
  %4437 = fmul fast float %2198, 4.000000e+00
  %4438 = fmul fast float %4437, %4420
  %4439 = fmul fast float %4438, %4434
  %4440 = fmul fast float %2199, 4.000000e+00
  %4441 = fmul fast float %4440, %4421
  %4442 = fmul fast float %4441, %4435
  %4443 = fmul fast float %2213, 4.000000e+00
  %4444 = fmul fast float %4443, %4422
  %4445 = fmul fast float %4444, %4436
  %4446 = fadd fast float %4439, %4426
  %4447 = fadd fast float %4442, %4427
  %4448 = fadd fast float %4445, %4428
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  br label %4452

; <label>:4452                                    ; preds = %4429, %4302
  %4453 = phi float [ %4449, %4429 ], [ %4426, %4302 ]
  %4454 = phi float [ %4450, %4429 ], [ %4427, %4302 ]
  %4455 = phi float [ %4451, %4429 ], [ %4428, %4302 ]
  %4456 = fmul fast float %4330, 9.843750e-01
  %4457 = fadd fast float %4456, 7.812500e-03
  %4458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4457, float %2517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.ResRet.f32 %4458, 2
  %4462 = extractvalue %dx.types.ResRet.f32 %4458, 3
  %4463 = fsub fast float %4461, %4459
  %4464 = fsub fast float %4462, %4460
  %4465 = fmul fast float %4463, %2523
  %4466 = fmul fast float %4464, %2523
  %4467 = fadd fast float %4465, %4459
  %4468 = fadd fast float %4466, %4460
  %4469 = fmul fast float %4467, %2198
  %4470 = fmul fast float %4467, %2199
  %4471 = fmul fast float %4467, %2213
  %4472 = fadd fast float %4469, %4468
  %4473 = fadd fast float %4470, %4468
  %4474 = fadd fast float %4471, %4468
  br i1 %2536, label %4475, label %4498

; <label>:4475                                    ; preds = %4452
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1497, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.ResRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.ResRet.f32 %4476, 2
  %4480 = fadd fast float %4477, -5.000000e-01
  %4481 = fadd fast float %4478, -5.000000e-01
  %4482 = fadd fast float %4479, -5.000000e-01
  %4483 = fmul fast float %2198, 4.000000e+00
  %4484 = fmul fast float %4483, %4420
  %4485 = fmul fast float %4484, %4480
  %4486 = fmul fast float %2199, 4.000000e+00
  %4487 = fmul fast float %4486, %4421
  %4488 = fmul fast float %4487, %4481
  %4489 = fmul fast float %2213, 4.000000e+00
  %4490 = fmul fast float %4489, %4422
  %4491 = fmul fast float %4490, %4482
  %4492 = fadd fast float %4485, %4472
  %4493 = fadd fast float %4488, %4473
  %4494 = fadd fast float %4491, %4474
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  br label %4498

; <label>:4498                                    ; preds = %4475, %4452
  %4499 = phi float [ %4495, %4475 ], [ %4472, %4452 ]
  %4500 = phi float [ %4496, %4475 ], [ %4473, %4452 ]
  %4501 = phi float [ %4497, %4475 ], [ %4474, %4452 ]
  %4502 = call float @dx.op.binary.f32(i32 35, float %4500, float %4501)  ; FMax(a,b)
  %4503 = call float @dx.op.binary.f32(i32 35, float %4499, float %4502)  ; FMax(a,b)
  %4504 = fsub fast float 1.000000e+00, %4503
  %4505 = call float @dx.op.binary.f32(i32 35, float %4355, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4506 = fdiv fast float %903, %4505
  %4507 = fmul fast float %2591, %4506
  %4508 = fmul fast float %2593, %4506
  %4509 = fmul fast float %2595, %4506
  %4510 = call float @dx.op.unary.f32(i32 21, float %4507)  ; Exp(value)
  %4511 = call float @dx.op.unary.f32(i32 21, float %4508)  ; Exp(value)
  %4512 = call float @dx.op.unary.f32(i32 21, float %4509)  ; Exp(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = select i1 %2588, float %4513, float 0.000000e+00
  %4517 = select i1 %2589, float %4514, float 0.000000e+00
  %4518 = select i1 %2590, float %4515, float 0.000000e+00
  %4519 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4062, float %4063, float %2211, float %2210, float %2209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4520, %4068
  %4522 = fmul fast float %4520, 9.843750e-01
  %4523 = fadd fast float %4522, 7.812500e-03
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4523, float %2517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.ResRet.f32 %4524, 1
  %4527 = extractvalue %dx.types.ResRet.f32 %4524, 2
  %4528 = extractvalue %dx.types.ResRet.f32 %4524, 3
  %4529 = fsub fast float %4527, %4525
  %4530 = fsub fast float %4528, %4526
  %4531 = fmul fast float %4529, %2523
  %4532 = fmul fast float %4530, %2523
  %4533 = fadd fast float %4531, %4525
  %4534 = fadd fast float %4532, %4526
  %4535 = fmul fast float %4533, %2198
  %4536 = fmul fast float %4533, %2199
  %4537 = fmul fast float %4533, %2213
  %4538 = fadd fast float %4535, %4534
  %4539 = fadd fast float %4536, %4534
  %4540 = fadd fast float %4537, %4534
  br i1 %2536, label %4541, label %4564

; <label>:4541                                    ; preds = %4498
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1497, float %4520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = extractvalue %dx.types.ResRet.f32 %4542, 1
  %4545 = extractvalue %dx.types.ResRet.f32 %4542, 2
  %4546 = fadd fast float %4543, -5.000000e-01
  %4547 = fadd fast float %4544, -5.000000e-01
  %4548 = fadd fast float %4545, -5.000000e-01
  %4549 = fmul fast float %2198, 4.000000e+00
  %4550 = fmul fast float %4549, %4420
  %4551 = fmul fast float %4550, %4546
  %4552 = fmul fast float %2199, 4.000000e+00
  %4553 = fmul fast float %4552, %4421
  %4554 = fmul fast float %4553, %4547
  %4555 = fmul fast float %2213, 4.000000e+00
  %4556 = fmul fast float %4555, %4422
  %4557 = fmul fast float %4556, %4548
  %4558 = fadd fast float %4551, %4538
  %4559 = fadd fast float %4554, %4539
  %4560 = fadd fast float %4557, %4540
  %4561 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4562 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  br label %4564

; <label>:4564                                    ; preds = %4541, %4498
  %4565 = phi float [ %4561, %4541 ], [ %4538, %4498 ]
  %4566 = phi float [ %4562, %4541 ], [ %4539, %4498 ]
  %4567 = phi float [ %4563, %4541 ], [ %4540, %4498 ]
  %4568 = call float @dx.op.binary.f32(i32 35, float %4566, float %4567)  ; FMax(a,b)
  %4569 = call float @dx.op.binary.f32(i32 35, float %4565, float %4568)  ; FMax(a,b)
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = fmul fast float %2651, %2656
  %4572 = fadd fast float %2658, %4571
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fsub fast float %4342, %2221
  %4575 = fsub fast float %4343, %2222
  %4576 = fsub fast float %4344, %2223
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 25, float %4577)  ; Rsqrt(value)
  %4579 = fmul fast float %4574, %4578
  %4580 = fmul fast float %4575, %4578
  %4581 = fmul fast float %4576, %4578
  %4582 = call float @dx.op.dot3.f32(i32 55, float %2211, float %2210, float %2209, float %4579, float %4580, float %4581)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = fmul fast float %4582, %4582
  %4584 = call float @dx.op.unary.f32(i32 6, float %4520)  ; FAbs(value)
  %4585 = call float @dx.op.binary.f32(i32 35, float %4573, float 0x3F847AE140000000)  ; FMax(a,b)
  %4586 = fmul fast float %4585, %4585
  %4587 = fmul fast float %4586, %4586
  %4588 = fsub fast float 1.000000e+00, %4587
  %4589 = fmul fast float %4360, %4588
  %4590 = fadd fast float %4589, %4587
  %4591 = bitcast float %4590 to i32
  %4592 = ashr i32 %4591, 1
  %4593 = add nsw i32 %4592, 532487669
  %4594 = bitcast i32 %4593 to float
  %4595 = fadd fast float %4594, %2215
  %4596 = call float @dx.op.dot3.f32(i32 55, float %1634, float %1635, float %1636, float %4579, float %4580, float %4581)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = fmul fast float %4371, %4587
  %4598 = fmul fast float %4596, %4596
  %4599 = fsub fast float 1.000000e+00, %4583
  %4600 = fsub fast float %4599, %4598
  %4601 = fdiv fast float %4598, %4597
  %4602 = fadd fast float %4601, %4583
  %4603 = fdiv fast float %4600, %4587
  %4604 = fadd fast float %4602, %4603
  %4605 = fmul fast float %4584, %4584
  %4606 = fmul fast float %4605, %4588
  %4607 = fadd fast float %4606, %4587
  %4608 = bitcast float %4607 to i32
  %4609 = ashr i32 %4608, 1
  %4610 = add nsw i32 %4609, 532487669
  %4611 = bitcast i32 %4610 to float
  %4612 = fadd fast float %4611, %4584
  %4613 = fmul fast float %4587, %4370
  %4614 = fmul fast float %4604, %4604
  %4615 = fmul fast float %4614, %4613
  %4616 = fmul fast float %4615, %4595
  %4617 = fmul fast float %4616, %4612
  %4618 = fdiv fast float 1.000000e+00, %4617
  %4619 = bitcast float %4587 to i32
  %4620 = sitofp i32 %4619 to float
  %4621 = fmul fast float %4620, 0x3FE7F73180000000
  %4622 = fadd fast float %4621, 0x41AFE27C40000000
  %4623 = fptosi float %4622 to i32
  %4624 = bitcast i32 %4623 to float
  %4625 = fadd fast float %4624, %4401
  %4626 = bitcast float %4625 to i32
  %4627 = sub nsw i32 2129859010, %4626
  %4628 = bitcast i32 %4627 to float
  %4629 = fmul fast float %4624, %4618
  %4630 = fmul fast float %4629, %4628
  br i1 %4053, label %4631, label %4641

; <label>:4631                                    ; preds = %4564
  %4632 = fmul fast float %4521, %4516
  %4633 = fmul fast float %4521, %4517
  %4634 = fmul fast float %4521, %4518
  %4635 = fmul fast float %4632, %4570
  %4636 = fmul fast float %4635, %4630
  %4637 = fmul fast float %4633, %4570
  %4638 = fmul fast float %4637, %4630
  %4639 = fmul fast float %4634, %4570
  %4640 = fmul fast float %4639, %4630
  br label %4641

; <label>:4641                                    ; preds = %4631, %4564
  %4642 = phi float [ %4636, %4631 ], [ 0.000000e+00, %4564 ]
  %4643 = phi float [ %4638, %4631 ], [ 0.000000e+00, %4564 ]
  %4644 = phi float [ %4640, %4631 ], [ 0.000000e+00, %4564 ]
  %4645 = fmul fast float %4453, %4407
  %4646 = fmul fast float %4454, %4407
  %4647 = fmul fast float %4455, %4407
  %4648 = fsub fast float 1.000000e+00, %4331
  %4649 = bitcast float %4648 to i32
  %4650 = sitofp i32 %4649 to float
  %4651 = fmul fast float %4650, 5.000000e+00
  %4652 = fadd fast float %4651, 0xC1EFBF8940000000
  %4653 = fptosi float %4652 to i32
  %4654 = bitcast i32 %4653 to float
  %4655 = fmul fast float %4654, %1496
  %4656 = fmul fast float %4504, %4655
  %4657 = fmul fast float %4656, %2583
  %4658 = fmul fast float %4656, %2584
  %4659 = fmul fast float %4656, %2585
  %4660 = fadd fast float %4657, %4645
  %4661 = fadd fast float %4658, %4646
  %4662 = fadd fast float %4659, %4647
  %4663 = fmul fast float %4660, %4337
  %4664 = fmul fast float %4661, %4337
  %4665 = fmul fast float %4662, %4337
  %4666 = fadd fast float %4663, %4642
  %4667 = fadd fast float %4664, %4643
  %4668 = fadd fast float %4665, %4644
  %4669 = fmul fast float %4319, %1520
  %4670 = fmul fast float %4669, %4337
  %4671 = fmul fast float %4670, %4504
  %4672 = fmul fast float %4320, %1520
  %4673 = fmul fast float %4672, %4337
  %4674 = fmul fast float %4673, %4504
  %4675 = fmul fast float %4321, %1520
  %4676 = fmul fast float %4675, %4337
  %4677 = fmul fast float %4676, %4504
  %4678 = fadd fast float %4671, %3997
  %4679 = fadd fast float %4674, %3998
  %4680 = fadd fast float %4677, %3999
  %4681 = fmul fast float %4669, %4666
  %4682 = fmul fast float %4672, %4667
  %4683 = fmul fast float %4675, %4668
  %4684 = fadd fast float %4681, %3994
  %4685 = fadd fast float %4682, %3995
  %4686 = fadd fast float %4683, %3996
  br label %4127

; <label>:4687                                    ; preds = %4127
  br label %4688

; <label>:4688                                    ; preds = %4687, %3960
  %4689 = phi float [ %3962, %3960 ], [ %4128, %4687 ]
  %4690 = phi float [ %3963, %3960 ], [ %4129, %4687 ]
  %4691 = phi float [ %3964, %3960 ], [ %4130, %4687 ]
  %4692 = phi float [ %3965, %3960 ], [ %4131, %4687 ]
  %4693 = phi float [ %3966, %3960 ], [ %4132, %4687 ]
  %4694 = phi float [ %3967, %3960 ], [ %4133, %4687 ]
  %4695 = add i32 %3961, 1
  %4696 = icmp ugt i32 %4695, %3957
  br i1 %4696, label %4697, label %3960

; <label>:4697                                    ; preds = %4688
  br label %4698

; <label>:4698                                    ; preds = %4697, %3910, %3900
  %4699 = phi float [ %3901, %3900 ], [ %3901, %3910 ], [ %4689, %4697 ]
  %4700 = phi float [ %3902, %3900 ], [ %3902, %3910 ], [ %4690, %4697 ]
  %4701 = phi float [ %3903, %3900 ], [ %3903, %3910 ], [ %4691, %4697 ]
  %4702 = phi float [ %3904, %3900 ], [ %3904, %3910 ], [ %4692, %4697 ]
  %4703 = phi float [ %3905, %3900 ], [ %3905, %3910 ], [ %4693, %4697 ]
  %4704 = phi float [ %3906, %3900 ], [ %3906, %3910 ], [ %4694, %4697 ]
  %4705 = fmul fast float %1520, %2612
  %4706 = fsub fast float -0.000000e+00, %4705
  %4707 = fmul fast float %1520, %2613
  %4708 = fsub fast float -0.000000e+00, %4707
  %4709 = fmul fast float %1520, %2614
  %4710 = fsub fast float -0.000000e+00, %4709
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 0
  %4713 = fmul fast float %4712, %2618
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 3
  %4716 = fsub fast float 1.000000e+00, %1492
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fadd fast float %4704, %1491
  %4719 = fmul fast float %4718, %1492
  %4720 = fmul fast float %4717, %4715
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 3
  %4723 = fmul fast float %4702, %2204
  %4724 = fmul fast float %4703, %2205
  %4725 = fmul fast float %4704, %2206
  %4726 = fcmp fast ogt float %76, %162
  %4727 = and i1 %4726, %2003
  %4728 = or i1 %2009, %4727
  %4729 = icmp eq i32 %2002, 2
  %4730 = fcmp fast ole float %76, %162
  %4731 = and i1 %4730, %4729
  %4732 = or i1 %4731, %4728
  br i1 %4727, label %4733, label %4992

; <label>:4733                                    ; preds = %4698
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 2
  %4736 = extractvalue %dx.types.CBufRet.f32 %4734, 3
  %4737 = fmul fast float %4735, %85
  %4738 = fmul fast float %4736, %86
  %4739 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4741 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %4739, float %4740, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4742 = extractvalue %dx.types.ResRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.ResRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.ResRet.f32 %4741, 2
  %4745 = extractvalue %dx.types.ResRet.f32 %4741, 3
  %4746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %4739, float %4740, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.ResRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.ResRet.f32 %4746, 2
  %4750 = extractvalue %dx.types.ResRet.f32 %4746, 3
  %4751 = call float @dx.op.binary.f32(i32 35, float %4743, float %4744)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4742, float %4751)  ; FMax(a,b)
  %4753 = call float @dx.op.binary.f32(i32 35, float %4752, float %4745)  ; FMax(a,b)
  %4754 = call float @dx.op.binary.f32(i32 36, float %4748, float %4749)  ; FMin(a,b)
  %4755 = call float @dx.op.binary.f32(i32 36, float %4747, float %4754)  ; FMin(a,b)
  %4756 = call float @dx.op.binary.f32(i32 36, float %4755, float %4750)  ; FMin(a,b)
  %4757 = fmul fast float %4753, 2.550000e+02
  %4758 = fadd fast float %4757, 0x3F70101020000000
  %4759 = fptoui float %4758 to i32
  %4760 = fmul fast float %4756, 2.550000e+02
  %4761 = fadd fast float %4760, 0x3F70101020000000
  %4762 = fptoui float %4761 to i32
  %4763 = icmp ult i32 %4759, %4762
  br i1 %4763, label %4764, label %4932

; <label>:4764                                    ; preds = %4733
  %4765 = fcmp fast ogt float %75, 9.843750e-01
  %4766 = fadd fast float %76, -4.000000e+00
  %4767 = select i1 %4765, float -4.000000e+00, float %4766
  %4768 = call float @dx.op.binary.f32(i32 35, float %4767, float 0.000000e+00)  ; FMax(a,b)
  %4769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4770 = extractvalue %dx.types.CBufRet.f32 %4769, 0
  %4771 = fadd fast float %4770, %4768
  %4772 = extractvalue %dx.types.CBufRet.f32 %4769, 2
  %4773 = fmul fast float %4771, %4772
  %4774 = call float @dx.op.unary.f32(i32 23, float %4773)  ; Log(value)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4769, 3
  %4776 = fmul fast float %4775, %4774
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 2
  %4779 = fmul fast float %4776, %4778
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4781 = uitofp i32 %4759 to float
  %4782 = uitofp i32 %4762 to float
  %4783 = fadd fast float %4781, 5.000000e-01
  %4784 = fadd fast float %4782, 5.000000e-01
  %4785 = fmul fast float %4778, %4783
  %4786 = fmul fast float %4778, %4784
  %4787 = fadd fast float %4785, 0x3F0FFB4800000000
  %4788 = fadd fast float %4786, 0xBF0FFB4800000000
  %4789 = call float @dx.op.binary.f32(i32 35, float %4780, float %4787)  ; FMax(a,b)
  %4790 = call float @dx.op.binary.f32(i32 36, float %4789, float %4788)  ; FMin(a,b)
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4793 = extractvalue %dx.types.CBufRet.f32 %4791, 2
  %4794 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4795 = fmul fast float %4792, %4790
  %4796 = fadd fast float %4794, %4795
  %4797 = fadd fast float %4794, %4793
  %4798 = fsub fast float %4792, %4793
  %4799 = fadd fast float %4798, %4794
  %4800 = call float @dx.op.binary.f32(i32 35, float %4796, float %4797)  ; FMax(a,b)
  %4801 = call float @dx.op.binary.f32(i32 36, float %4800, float %4799)  ; FMin(a,b)
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %4739, float %4740, float %4801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.i32 %4806, 0
  %4808 = extractvalue %dx.types.CBufRet.i32 %4806, 1
  %4809 = uitofp i32 %4807 to float
  %4810 = uitofp i32 %4808 to float
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4813 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4814 = fmul fast float %4809, %4739
  %4815 = fmul fast float %4810, %4740
  %4816 = fadd fast float %4814, -5.000000e-01
  %4817 = fadd fast float %4815, -5.000000e-01
  %4818 = call float @dx.op.unary.f32(i32 22, float %4816)  ; Frc(value)
  %4819 = call float @dx.op.unary.f32(i32 22, float %4817)  ; Frc(value)
  %4820 = fmul fast float %4818, %4818
  %4821 = fmul fast float %4820, %4818
  %4822 = fsub fast float 3.000000e+00, %4818
  %4823 = fmul fast float %4820, %4822
  %4824 = fmul fast float %4818, 3.000000e+00
  %4825 = fmul fast float %4821, 3.000000e+00
  %4826 = fmul fast float %4820, 6.000000e+00
  %4827 = fsub fast float %4825, %4826
  %4828 = fadd fast float %4827, 4.000000e+00
  %4829 = fmul fast float %4828, 0x3FC5555560000000
  %4830 = fmul fast float %4821, -3.000000e+00
  %4831 = fadd fast float %4820, %4818
  %4832 = fmul fast float %4831, 3.000000e+00
  %4833 = fadd fast float %4830, 1.000000e+00
  %4834 = fadd fast float %4833, %4832
  %4835 = fmul fast float %4821, 0x3FC5555560000000
  %4836 = fmul fast float %4819, %4819
  %4837 = fmul fast float %4836, %4819
  %4838 = fsub fast float 3.000000e+00, %4819
  %4839 = fmul fast float %4836, %4838
  %4840 = fmul fast float %4819, 3.000000e+00
  %4841 = fmul fast float %4837, 3.000000e+00
  %4842 = fmul fast float %4836, 6.000000e+00
  %4843 = fsub fast float %4841, %4842
  %4844 = fadd fast float %4843, 4.000000e+00
  %4845 = fmul fast float %4844, 0x3FC5555560000000
  %4846 = fmul fast float %4837, -3.000000e+00
  %4847 = fadd fast float %4836, %4819
  %4848 = fmul fast float %4847, 3.000000e+00
  %4849 = fadd fast float %4846, 1.000000e+00
  %4850 = fadd fast float %4849, %4848
  %4851 = fmul fast float %4837, 0x3FC5555560000000
  %4852 = fadd fast float %4818, 1.000000e+00
  %4853 = fsub fast float 1.000000e+00, %4824
  %4854 = fadd fast float %4853, %4823
  %4855 = fadd fast float %4854, %4828
  %4856 = fmul fast float %4855, 0x3FC5555560000000
  %4857 = fdiv fast float %4829, %4856
  %4858 = fsub fast float %4852, %4857
  %4859 = fsub fast float 1.000000e+00, %4818
  %4860 = fadd fast float %4834, %4821
  %4861 = fmul fast float %4860, 0x3FC5555560000000
  %4862 = fdiv fast float %4835, %4861
  %4863 = fadd fast float %4859, %4862
  %4864 = fadd fast float %4819, 1.000000e+00
  %4865 = fsub fast float 1.000000e+00, %4840
  %4866 = fadd fast float %4865, %4839
  %4867 = fadd fast float %4866, %4844
  %4868 = fmul fast float %4867, 0x3FC5555560000000
  %4869 = fdiv fast float %4845, %4868
  %4870 = fsub fast float %4864, %4869
  %4871 = fsub fast float 1.000000e+00, %4819
  %4872 = fadd fast float %4850, %4837
  %4873 = fmul fast float %4872, 0x3FC5555560000000
  %4874 = fdiv fast float %4851, %4873
  %4875 = fadd fast float %4874, %4871
  %4876 = fmul fast float %4858, %4812
  %4877 = fsub fast float %4739, %4876
  %4878 = fmul fast float %4863, %4812
  %4879 = fadd fast float %4878, %4739
  %4880 = fmul fast float %4875, %4813
  %4881 = fadd fast float %4880, %4740
  %4882 = fmul fast float %4870, %4813
  %4883 = fsub fast float %4740, %4882
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4877, float %4883, float %4801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4879, float %4883, float %4801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.ResRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.ResRet.f32 %4888, 2
  %4892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4877, float %4881, float %4801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4893 = extractvalue %dx.types.ResRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.ResRet.f32 %4892, 1
  %4895 = extractvalue %dx.types.ResRet.f32 %4892, 2
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4879, float %4881, float %4801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = fsub fast float %4893, %4885
  %4901 = fsub fast float %4894, %4886
  %4902 = fsub fast float %4895, %4887
  %4903 = fmul fast float %4900, %4873
  %4904 = fmul fast float %4901, %4873
  %4905 = fmul fast float %4902, %4873
  %4906 = fadd fast float %4903, %4885
  %4907 = fadd fast float %4904, %4886
  %4908 = fadd fast float %4905, %4887
  %4909 = fsub fast float %4897, %4889
  %4910 = fsub fast float %4898, %4890
  %4911 = fsub fast float %4899, %4891
  %4912 = fmul fast float %4909, %4873
  %4913 = fmul fast float %4910, %4873
  %4914 = fmul fast float %4911, %4873
  %4915 = fsub fast float %4889, %4906
  %4916 = fadd fast float %4915, %4912
  %4917 = fsub fast float %4890, %4907
  %4918 = fadd fast float %4917, %4913
  %4919 = fsub fast float %4891, %4908
  %4920 = fadd fast float %4919, %4914
  %4921 = fmul fast float %4916, %4861
  %4922 = fmul fast float %4918, %4861
  %4923 = fmul fast float %4920, %4861
  %4924 = fadd fast float %4921, %4906
  %4925 = fadd fast float %4922, %4907
  %4926 = fadd fast float %4923, %4908
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 1
  %4929 = fmul fast float %4924, %4928
  %4930 = fmul fast float %4925, %4928
  %4931 = fmul fast float %4926, %4928
  br label %4932

; <label>:4932                                    ; preds = %4764, %4733
  %4933 = phi float [ %4803, %4764 ], [ 1.000000e+00, %4733 ]
  %4934 = phi float [ %4804, %4764 ], [ 1.000000e+00, %4733 ]
  %4935 = phi float [ %4805, %4764 ], [ 1.000000e+00, %4733 ]
  %4936 = phi float [ %4929, %4764 ], [ 0.000000e+00, %4733 ]
  %4937 = phi float [ %4930, %4764 ], [ 0.000000e+00, %4733 ]
  %4938 = phi float [ %4931, %4764 ], [ 0.000000e+00, %4733 ]
  %4939 = fmul fast float %4936, %4706
  %4940 = fmul fast float %4937, %4708
  %4941 = fmul fast float %4938, %4710
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4934, float %4935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = select i1 %202, float %4942, float %4933
  %4945 = select i1 %202, float %4942, float %4934
  %4946 = select i1 %202, float 1.000000e+00, float %4935
  %4947 = select i1 %202, float %4943, float %4939
  %4948 = select i1 %202, float 0.000000e+00, float %4940
  %4949 = select i1 %202, float 0.000000e+00, float %4941
  %4950 = fmul fast float %4944, %4723
  %4951 = fmul fast float %4945, %4724
  %4952 = fmul fast float %4946, %4725
  %4953 = fadd fast float %4950, %4947
  %4954 = fadd fast float %4951, %4948
  %4955 = fadd fast float %4949, %4952
  %4956 = fmul fast float %4944, %4699
  %4957 = fmul fast float %4945, %4700
  %4958 = fmul fast float %4946, %4701
  %4959 = fmul fast float %85, 2.000000e+00
  %4960 = fmul fast float %4959, %4735
  %4961 = fmul fast float %86, 2.000000e+00
  %4962 = fmul fast float %4961, %4736
  %4963 = fsub fast float 1.000000e+00, %4960
  %4964 = fsub fast float 1.000000e+00, %4962
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.CBufRet.f32 %4965, 1
  %4968 = extractvalue %dx.types.CBufRet.f32 %4965, 2
  %4969 = fmul fast float %4963, %4966
  %4970 = fmul fast float %4963, %4967
  %4971 = fmul fast float %4963, %4968
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.CBufRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.CBufRet.f32 %4972, 2
  %4976 = fmul fast float %4964, %4973
  %4977 = fmul fast float %4964, %4974
  %4978 = fmul fast float %4964, %4975
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4983 = fadd fast float %4976, %4980
  %4984 = fadd fast float %4983, %4969
  %4985 = fadd fast float %4977, %4981
  %4986 = fadd fast float %4985, %4970
  %4987 = fadd fast float %4978, %4982
  %4988 = fadd fast float %4987, %4971
  %4989 = fmul fast float %4984, %162
  %4990 = fmul fast float %4986, %162
  %4991 = fmul fast float %4988, %162
  br label %4992

; <label>:4992                                    ; preds = %4932, %4698
  %4993 = phi float [ %4989, %4932 ], [ %140, %4698 ]
  %4994 = phi float [ %4990, %4932 ], [ %141, %4698 ]
  %4995 = phi float [ %4991, %4932 ], [ %142, %4698 ]
  %4996 = phi float [ %162, %4932 ], [ %76, %4698 ]
  %4997 = phi float [ %4953, %4932 ], [ %4723, %4698 ]
  %4998 = phi float [ %4954, %4932 ], [ %4724, %4698 ]
  %4999 = phi float [ %4955, %4932 ], [ %4725, %4698 ]
  %5000 = phi float [ %4956, %4932 ], [ %4699, %4698 ]
  %5001 = phi float [ %4957, %4932 ], [ %4700, %4698 ]
  %5002 = phi float [ %4958, %4932 ], [ %4701, %4698 ]
  %5003 = phi float [ %4933, %4932 ], [ 1.000000e+00, %4698 ]
  br i1 %4732, label %6158, label %5004

; <label>:5004                                    ; preds = %4992
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5009 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5019 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5023 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5024 = extractvalue %dx.types.CBufRet.f32 %5020, 3
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 3
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 3
  %5029 = extractvalue %dx.types.CBufRet.f32 %5027, 0
  %5030 = extractvalue %dx.types.CBufRet.f32 %5027, 1
  %5031 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5032 = fcmp fast olt float %5031, -5.000000e-01
  %5033 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %4995, float %4993, float %4994, float %4995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.unary.f32(i32 25, float %5033)  ; Rsqrt(value)
  %5035 = fmul fast float %5034, %5033
  %5036 = fmul fast float %5034, %4993
  %5037 = fmul fast float %5034, %4994
  %5038 = fmul fast float %5034, %4995
  %5039 = fadd fast float %5035, %5009
  %5040 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5037, float %5038, float %5006, float %5007, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.i32 %5041, 1
  %5043 = and i32 %5042, 1
  %5044 = icmp ne i32 %5043, 0
  %5045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.f32 %5045, 2
  %5047 = fcmp fast ogt float %5046, 0.000000e+00
  %5048 = and i1 %5044, %5047
  br i1 %5048, label %5049, label %5455, !dx.controlflow.hints !114

; <label>:5049                                    ; preds = %5004
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5053 = extractvalue %dx.types.CBufRet.f32 %5052, 2
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5056 = fsub fast float %5053, %5055
  %5057 = and i32 %5042, 2
  %5058 = extractvalue %dx.types.CBufRet.i32 %5041, 0
  %5059 = call i32 @dx.op.binary.i32(i32 40, i32 %5058, i32 3)  ; UMin(a,b)
  %5060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5061 = extractvalue %dx.types.CBufRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.CBufRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5064 = extractvalue %dx.types.CBufRet.f32 %5054, 1
  %5065 = fsub fast float %5061, %5063
  %5066 = fsub fast float %5062, %5064
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = fcmp fast ogt float %5068, 0.000000e+00
  %5070 = fsub fast float -0.000000e+00, %5065
  %5071 = fsub fast float -0.000000e+00, %5066
  %5072 = call float @dx.op.dot2.f32(i32 54, float %5036, float %5037, float %5036, float %5037)  ; Dot2(ax,ay,bx,by)
  %5073 = call float @dx.op.dot2.f32(i32 54, float %5036, float %5037, float %5070, float %5071)  ; Dot2(ax,ay,bx,by)
  %5074 = fmul fast float %5073, 2.000000e+00
  %5075 = call float @dx.op.dot2.f32(i32 54, float %5070, float %5071, float %5070, float %5071)  ; Dot2(ax,ay,bx,by)
  %5076 = fmul fast float %5068, %5068
  %5077 = fsub fast float %5075, %5076
  %5078 = fmul fast float %5074, %5074
  %5079 = fmul fast float %5072, 4.000000e+00
  %5080 = fmul fast float %5079, %5077
  %5081 = fsub fast float %5078, %5080
  %5082 = fcmp fast ogt float %5081, 0.000000e+00
  br i1 %5082, label %5083, label %5098

; <label>:5083                                    ; preds = %5049
  %5084 = fcmp fast ogt float %5074, 0.000000e+00
  %5085 = call float @dx.op.unary.f32(i32 24, float %5081)  ; Sqrt(value)
  %5086 = fsub fast float -0.000000e+00, %5085
  %5087 = select i1 %5084, float %5085, float %5086
  %5088 = fadd fast float %5087, %5074
  %5089 = fmul float %5088, -5.000000e-01
  %5090 = fdiv fast float %5089, %5072
  %5091 = call float @dx.op.binary.f32(i32 35, float %5090, float 0.000000e+00)  ; FMax(a,b)
  %5092 = call float @dx.op.binary.f32(i32 36, float %5035, float %5091)  ; FMin(a,b)
  %5093 = fdiv fast float %5077, %5089
  %5094 = call float @dx.op.binary.f32(i32 35, float %5093, float 0.000000e+00)  ; FMax(a,b)
  %5095 = call float @dx.op.binary.f32(i32 36, float %5035, float %5094)  ; FMin(a,b)
  %5096 = call float @dx.op.binary.f32(i32 36, float %5092, float %5095)  ; FMin(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5092, float %5095)  ; FMax(a,b)
  br label %5098

; <label>:5098                                    ; preds = %5083, %5049
  %5099 = phi float [ %5097, %5083 ], [ -1.000000e+00, %5049 ]
  %5100 = phi float [ %5096, %5083 ], [ -1.000000e+00, %5049 ]
  %5101 = phi i1 [ true, %5083 ], [ false, %5049 ]
  %5102 = and i1 %5069, %5101
  br i1 %5102, label %5103, label %5105

; <label>:5103                                    ; preds = %5098
  %5104 = fcmp fast oeq float %5100, %5099
  br i1 %5104, label %5408, label %5106

; <label>:5105                                    ; preds = %5098
  br i1 %5069, label %5408, label %5106

; <label>:5106                                    ; preds = %5105, %5103
  %5107 = phi float [ %5035, %5105 ], [ %5099, %5103 ]
  %5108 = phi float [ 0.000000e+00, %5105 ], [ %5100, %5103 ]
  %5109 = icmp ne i32 %5057, 0
  %5110 = fmul fast float %5107, %5038
  %5111 = fadd fast float %5110, %5051
  %5112 = fmul fast float %5111, %5107
  %5113 = select i1 %5109, float 0.000000e+00, float %5112
  %5114 = fcmp fast oeq float %5038, 0.000000e+00
  %5115 = fdiv fast float %5056, %5038
  %5116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5115)  ; FMax(a,b)
  %5117 = select i1 %5114, float %5107, float %5116
  %5118 = call float @dx.op.binary.f32(i32 36, float %5107, float %5117)  ; FMin(a,b)
  %5119 = fcmp fast ogt float %5038, 0.000000e+00
  %5120 = fcmp fast olt float %5056, 0.000000e+00
  br i1 %5119, label %5121, label %5178

; <label>:5121                                    ; preds = %5106
  %5122 = icmp eq i32 %5057, 0
  br i1 %5120, label %5123, label %5167

; <label>:5123                                    ; preds = %5121
  %5124 = select i1 %5122, float %5107, float 0.000000e+00
  %5125 = fsub fast float -0.000000e+00, %5124
  %5126 = call float @dx.op.unary.f32(i32 6, float %5125)  ; FAbs(value)
  %5127 = fmul fast float %5124, %5038
  %5128 = fadd fast float %5127, %5051
  %5129 = fmul fast float %5126, %5128
  %5130 = fsub fast float %5113, %5129
  %5131 = fsub fast float %5107, %5126
  %5132 = select i1 %5122, float %5131, float 0.000000e+00
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5141 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 3
  %5144 = call float @dx.op.binary.f32(i32 36, float %5130, float %5143)  ; FMin(a,b)
  %5145 = fmul fast float %5141, %5132
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = fsub fast float %5138, %5134
  %5148 = fsub fast float %5139, %5135
  %5149 = fsub fast float %5140, %5136
  %5150 = fmul fast float %5146, %5147
  %5151 = fmul fast float %5146, %5148
  %5152 = fmul fast float %5146, %5149
  %5153 = fadd fast float %5150, %5134
  %5154 = fadd fast float %5151, %5135
  %5155 = fadd fast float %5152, %5136
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = fadd fast float %5158, %5157
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5162 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5163 = fadd fast float %5162, %5161
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fmul fast float %5160, %5144
  %5166 = fmul fast float %5165, %5164
  br label %5408

; <label>:5167                                    ; preds = %5121
  br i1 %5122, label %5168, label %5189

; <label>:5168                                    ; preds = %5167
  %5169 = call float @dx.op.binary.f32(i32 36, float %5118, float %5108)  ; FMin(a,b)
  %5170 = fsub fast float %5118, %5169
  %5171 = fsub fast float %5170, %5107
  %5172 = call float @dx.op.unary.f32(i32 6, float %5171)  ; FAbs(value)
  %5173 = fadd fast float %5170, %5107
  %5174 = fmul fast float %5173, %5038
  %5175 = fadd fast float %5174, %5051
  %5176 = fmul fast float %5175, %5172
  %5177 = fsub fast float %5113, %5176
  br label %5189

; <label>:5178                                    ; preds = %5106
  br i1 %5120, label %5179, label %5189

; <label>:5179                                    ; preds = %5178
  %5180 = call float @dx.op.binary.f32(i32 35, float %5108, float %5118)  ; FMax(a,b)
  %5181 = icmp eq i32 %5057, 0
  %5182 = select i1 %5181, float %5118, float 0.000000e+00
  %5183 = fsub fast float -0.000000e+00, %5182
  %5184 = call float @dx.op.unary.f32(i32 6, float %5183)  ; FAbs(value)
  %5185 = fmul fast float %5182, %5038
  %5186 = fadd fast float %5185, %5051
  %5187 = fmul fast float %5184, %5186
  %5188 = fsub fast float %5113, %5187
  br label %5189

; <label>:5189                                    ; preds = %5179, %5178, %5168, %5167
  %5190 = phi float [ %5108, %5167 ], [ %5108, %5168 ], [ %5180, %5179 ], [ %5108, %5178 ]
  %5191 = phi float [ 0.000000e+00, %5167 ], [ %5172, %5168 ], [ %5184, %5179 ], [ 0.000000e+00, %5178 ]
  %5192 = phi float [ %5113, %5167 ], [ %5177, %5168 ], [ %5188, %5179 ], [ %5113, %5178 ]
  %5193 = phi float [ %5118, %5167 ], [ %5118, %5168 ], [ %5107, %5179 ], [ %5107, %5178 ]
  %5194 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5194, align 4, !tbaa !115, !noalias !117
  %5195 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5195, align 4, !tbaa !115, !noalias !117
  %5196 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5196, align 4, !tbaa !115, !noalias !117
  %5197 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %5197, align 4, !tbaa !115, !noalias !117
  %5198 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %5198, align 4, !tbaa !115, !noalias !117
  %5199 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %5199, align 4, !tbaa !115, !noalias !117
  %5200 = icmp sgt i32 %5059, 0
  br i1 %5200, label %5201, label %5262

; <label>:5201                                    ; preds = %5189
  br label %5202

; <label>:5202                                    ; preds = %5251, %5201
  %5203 = phi i32 [ %5252, %5251 ], [ 0, %5201 ]
  %5204 = phi i32 [ %5253, %5251 ], [ 0, %5201 ]
  %5205 = add nuw i32 %5204, 171
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %5205)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.CBufRet.f32 %5206, 1
  %5209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.CBufRet.f32 %5209, 1
  %5212 = fsub fast float %5207, %5210
  %5213 = fsub fast float %5208, %5211
  %5214 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5215 = fsub fast float -0.000000e+00, %5212
  %5216 = fsub fast float -0.000000e+00, %5213
  %5217 = call float @dx.op.dot2.f32(i32 54, float %5036, float %5037, float %5215, float %5216)  ; Dot2(ax,ay,bx,by)
  %5218 = fmul fast float %5217, 2.000000e+00
  %5219 = call float @dx.op.dot2.f32(i32 54, float %5215, float %5216, float %5215, float %5216)  ; Dot2(ax,ay,bx,by)
  %5220 = fmul fast float %5214, %5214
  %5221 = fsub fast float %5219, %5220
  %5222 = fmul fast float %5218, %5218
  %5223 = fmul fast float %5079, %5221
  %5224 = fsub fast float %5222, %5223
  %5225 = fcmp fast ogt float %5224, 0.000000e+00
  br i1 %5225, label %5226, label %5241

; <label>:5226                                    ; preds = %5202
  %5227 = fcmp fast ogt float %5218, 0.000000e+00
  %5228 = call float @dx.op.unary.f32(i32 24, float %5224)  ; Sqrt(value)
  %5229 = fsub fast float -0.000000e+00, %5228
  %5230 = select i1 %5227, float %5228, float %5229
  %5231 = fadd fast float %5230, %5218
  %5232 = fmul float %5231, -5.000000e-01
  %5233 = fdiv fast float %5232, %5072
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float 0.000000e+00)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 36, float %5107, float %5234)  ; FMin(a,b)
  %5236 = fdiv fast float %5221, %5232
  %5237 = call float @dx.op.binary.f32(i32 35, float %5236, float 0.000000e+00)  ; FMax(a,b)
  %5238 = call float @dx.op.binary.f32(i32 36, float %5107, float %5237)  ; FMin(a,b)
  %5239 = call float @dx.op.binary.f32(i32 36, float %5235, float %5238)  ; FMin(a,b)
  %5240 = call float @dx.op.binary.f32(i32 35, float %5235, float %5238)  ; FMax(a,b)
  br label %5241

; <label>:5241                                    ; preds = %5226, %5202
  %5242 = phi float [ %5240, %5226 ], [ -1.000000e+00, %5202 ]
  %5243 = phi float [ %5239, %5226 ], [ -1.000000e+00, %5202 ]
  %5244 = phi i1 [ true, %5226 ], [ false, %5202 ]
  br i1 %5244, label %5245, label %5251

; <label>:5245                                    ; preds = %5241
  %5246 = call float @dx.op.binary.f32(i32 35, float %5190, float %5243)  ; FMax(a,b)
  %5247 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5204
  store float %5246, float* %5247, align 4, !tbaa !115, !noalias !117
  %5248 = call float @dx.op.binary.f32(i32 35, float %5190, float %5242)  ; FMax(a,b)
  %5249 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5204
  store float %5248, float* %5249, align 4, !tbaa !115, !noalias !117
  %5250 = add nsw i32 %5203, 1
  br label %5251

; <label>:5251                                    ; preds = %5245, %5241
  %5252 = phi i32 [ %5250, %5245 ], [ %5203, %5241 ]
  %5253 = add nuw nsw i32 %5204, 1
  %5254 = icmp eq i32 %5253, %5059
  br i1 %5254, label %5255, label %5202

; <label>:5255                                    ; preds = %5251
  %5256 = load float, float* %5196, align 4, !tbaa !115, !alias.scope !133, !noalias !136
  %5257 = load float, float* %5195, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  %5258 = load float, float* %5194, align 4, !tbaa !115, !alias.scope !141, !noalias !142
  %5259 = load float, float* %5199, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %5260 = load float, float* %5198, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  %5261 = load float, float* %5197, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  br label %5262

; <label>:5262                                    ; preds = %5255, %5189
  %5263 = phi float [ -1.000000e+00, %5189 ], [ %5261, %5255 ]
  %5264 = phi float [ -1.000000e+00, %5189 ], [ %5260, %5255 ]
  %5265 = phi float [ -1.000000e+00, %5189 ], [ %5259, %5255 ]
  %5266 = phi float [ -1.000000e+00, %5189 ], [ %5258, %5255 ]
  %5267 = phi float [ -1.000000e+00, %5189 ], [ %5257, %5255 ]
  %5268 = phi float [ -1.000000e+00, %5189 ], [ %5256, %5255 ]
  %5269 = phi i32 [ 0, %5189 ], [ %5252, %5255 ]
  %5270 = call float @dx.op.binary.f32(i32 36, float %5267, float %5268)  ; FMin(a,b)
  %5271 = call float @dx.op.binary.f32(i32 36, float %5266, float %5270)  ; FMin(a,b)
  %5272 = call float @dx.op.binary.f32(i32 35, float %5266, float %5267)  ; FMax(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5272, float %5268)  ; FMin(a,b)
  %5274 = call float @dx.op.binary.f32(i32 36, float %5266, float %5267)  ; FMin(a,b)
  %5275 = call float @dx.op.binary.f32(i32 35, float %5274, float %5273)  ; FMax(a,b)
  %5276 = call float @dx.op.binary.f32(i32 35, float %5267, float %5268)  ; FMax(a,b)
  %5277 = call float @dx.op.binary.f32(i32 35, float %5266, float %5276)  ; FMax(a,b)
  store float %5271, float* %5194, align 4, !tbaa !115, !alias.scope !141, !noalias !142
  store float %5275, float* %5195, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  store float %5277, float* %5196, align 4, !tbaa !115, !alias.scope !133, !noalias !136
  %5278 = call float @dx.op.binary.f32(i32 36, float %5264, float %5265)  ; FMin(a,b)
  %5279 = call float @dx.op.binary.f32(i32 36, float %5263, float %5278)  ; FMin(a,b)
  %5280 = call float @dx.op.binary.f32(i32 35, float %5263, float %5264)  ; FMax(a,b)
  %5281 = call float @dx.op.binary.f32(i32 36, float %5280, float %5265)  ; FMin(a,b)
  %5282 = call float @dx.op.binary.f32(i32 36, float %5263, float %5264)  ; FMin(a,b)
  %5283 = call float @dx.op.binary.f32(i32 35, float %5282, float %5281)  ; FMax(a,b)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5264, float %5265)  ; FMax(a,b)
  %5285 = call float @dx.op.binary.f32(i32 35, float %5263, float %5284)  ; FMax(a,b)
  store float %5279, float* %5197, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  store float %5283, float* %5198, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  store float %5285, float* %5199, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %5286 = sub nsw i32 3, %5269
  %5287 = icmp sgt i32 %5286, 2
  br i1 %5287, label %5288, label %5326

; <label>:5288                                    ; preds = %5262
  %5289 = icmp eq i32 %5057, 0
  %5290 = fsub fast float %5107, %5191
  %5291 = select i1 %5289, float %5290, float %5191
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5299 = extractvalue %dx.types.CBufRet.f32 %5296, 2
  %5300 = extractvalue %dx.types.CBufRet.f32 %5296, 3
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5303 = call float @dx.op.binary.f32(i32 36, float %5192, float %5302)  ; FMin(a,b)
  %5304 = fmul fast float %5300, %5291
  %5305 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5306 = fsub fast float %5297, %5293
  %5307 = fsub fast float %5298, %5294
  %5308 = fsub fast float %5299, %5295
  %5309 = fmul fast float %5305, %5306
  %5310 = fmul fast float %5305, %5307
  %5311 = fmul fast float %5305, %5308
  %5312 = fadd fast float %5309, %5293
  %5313 = fadd fast float %5310, %5294
  %5314 = fadd fast float %5311, %5295
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.CBufRet.f32 %5315, 1
  %5318 = fadd fast float %5317, %5316
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5315, 3
  %5322 = fadd fast float %5321, %5320
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = fmul fast float %5319, %5303
  %5325 = fmul fast float %5324, %5323
  br label %5408

; <label>:5326                                    ; preds = %5262
  %5327 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5286
  %5328 = load float, float* %5327, align 4, !tbaa !115, !noalias !117
  %5329 = fcmp fast olt float %5328, %5193
  %5330 = icmp sgt i32 %5269, 0
  %5331 = and i1 %5330, %5329
  br i1 %5331, label %5332, label %5369

; <label>:5332                                    ; preds = %5326
  br label %5333

; <label>:5333                                    ; preds = %5362, %5332
  %5334 = phi float [ %5363, %5362 ], [ %5191, %5332 ]
  %5335 = phi float [ %5364, %5362 ], [ %5192, %5332 ]
  %5336 = phi float [ %5344, %5362 ], [ %5328, %5332 ]
  %5337 = phi i32 [ %5341, %5362 ], [ %5286, %5332 ]
  %5338 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5337
  %5339 = load float, float* %5338, align 4, !tbaa !115, !noalias !117
  %5340 = icmp slt i32 %5337, 2
  %5341 = add nsw i32 %5337, 1
  %5342 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5341
  %5343 = load float, float* %5342, align 4, !tbaa !115, !noalias !117
  %5344 = select i1 %5340, float %5343, float %5107
  %5345 = call float @dx.op.binary.f32(i32 36, float %5344, float %5339)  ; FMin(a,b)
  %5346 = call float @dx.op.binary.f32(i32 36, float %5193, float %5345)  ; FMin(a,b)
  %5347 = icmp eq i32 %5057, 0
  %5348 = fadd fast float %5346, %5336
  %5349 = fmul fast float %5348, %5038
  %5350 = fadd fast float %5349, %5051
  br i1 %5347, label %5356, label %5351

; <label>:5351                                    ; preds = %5333
  %5352 = fsub fast float %5346, %5336
  %5353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5352)  ; FMax(a,b)
  %5354 = fmul fast float %5353, %5350
  %5355 = fadd fast float %5354, %5335
  br label %5362

; <label>:5356                                    ; preds = %5333
  %5357 = fsub fast float %5336, %5346
  %5358 = call float @dx.op.unary.f32(i32 6, float %5357)  ; FAbs(value)
  %5359 = fadd fast float %5358, %5334
  %5360 = fmul fast float %5358, %5350
  %5361 = fsub fast float %5335, %5360
  br label %5362

; <label>:5362                                    ; preds = %5356, %5351
  %5363 = phi float [ %5353, %5351 ], [ %5359, %5356 ]
  %5364 = phi float [ %5355, %5351 ], [ %5361, %5356 ]
  %5365 = fcmp fast olt float %5344, %5193
  %5366 = icmp slt i32 %5341, 3
  %5367 = and i1 %5366, %5365
  br i1 %5367, label %5333, label %5368

; <label>:5368                                    ; preds = %5362
  br label %5369

; <label>:5369                                    ; preds = %5368, %5326
  %5370 = phi float [ %5191, %5326 ], [ %5363, %5368 ]
  %5371 = phi float [ %5192, %5326 ], [ %5364, %5368 ]
  %5372 = fsub fast float %5107, %5370
  %5373 = select i1 %5109, float %5370, float %5372
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5385 = call float @dx.op.binary.f32(i32 36, float %5371, float %5384)  ; FMin(a,b)
  %5386 = fmul fast float %5382, %5373
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fsub fast float %5379, %5375
  %5389 = fsub fast float %5380, %5376
  %5390 = fsub fast float %5381, %5377
  %5391 = fmul fast float %5387, %5388
  %5392 = fmul fast float %5387, %5389
  %5393 = fmul fast float %5387, %5390
  %5394 = fadd fast float %5391, %5375
  %5395 = fadd fast float %5392, %5376
  %5396 = fadd fast float %5393, %5377
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.CBufRet.f32 %5397, 1
  %5400 = fadd fast float %5399, %5398
  %5401 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5397, 2
  %5403 = extractvalue %dx.types.CBufRet.f32 %5397, 3
  %5404 = fadd fast float %5403, %5402
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5406 = fmul fast float %5401, %5385
  %5407 = fmul fast float %5406, %5405
  br label %5408

; <label>:5408                                    ; preds = %5369, %5288, %5123, %5105, %5103
  %5409 = phi float [ %5132, %5123 ], [ %5291, %5288 ], [ %5373, %5369 ], [ 0.000000e+00, %5103 ], [ 0.000000e+00, %5105 ]
  %5410 = phi float [ %5166, %5123 ], [ %5325, %5288 ], [ %5407, %5369 ], [ 0.000000e+00, %5103 ], [ 0.000000e+00, %5105 ]
  %5411 = phi float [ %5153, %5123 ], [ %5312, %5288 ], [ %5394, %5369 ], [ 0.000000e+00, %5103 ], [ 0.000000e+00, %5105 ]
  %5412 = phi float [ %5154, %5123 ], [ %5313, %5288 ], [ %5395, %5369 ], [ 0.000000e+00, %5103 ], [ 0.000000e+00, %5105 ]
  %5413 = phi float [ %5155, %5123 ], [ %5314, %5288 ], [ %5396, %5369 ], [ 0.000000e+00, %5103 ], [ 0.000000e+00, %5105 ]
  %5414 = fmul fast float %5046, %5410
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 2
  %5417 = fsub fast float %5053, %5416
  %5418 = fcmp fast olt float %5414, -2.000000e+01
  %5419 = call float @dx.op.unary.f32(i32 21, float %5414)  ; Exp(value)
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 2
  %5422 = extractvalue %dx.types.CBufRet.f32 %5420, 3
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 2
  %5425 = fmul fast float %5422, %5417
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = fsub fast float 1.000000e+00, %5426
  %5428 = fmul fast float %5038, 5.000000e-01
  %5429 = fadd fast float %5428, 5.000000e-01
  %5430 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5431 = fsub fast float 1.000000e+00, %5430
  %5432 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5427)  ; FMax(a,b)
  %5433 = fdiv fast float %5431, %5432
  %5434 = fsub fast float %5417, %4995
  %5435 = call float @dx.op.unary.f32(i32 6, float %5434)  ; FAbs(value)
  %5436 = fmul fast float %5435, %5421
  %5437 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5438 = fsub fast float 1.000000e+00, %5436
  %5439 = fmul fast float %5438, %5437
  %5440 = fadd fast float %5439, %5436
  %5441 = fmul fast float %5424, %5417
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fsub fast float 1.000000e+00, %5440
  %5444 = fmul fast float %5443, %5442
  %5445 = fadd fast float %5444, %5440
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fadd fast float %5419, -1.000000e+00
  %5448 = select i1 %5418, float -1.000000e+00, float %5447
  %5449 = fmul fast float %5446, %5448
  %5450 = fadd fast float %5449, 1.000000e+00
  %5451 = fsub fast float -0.000000e+00, %5449
  %5452 = fmul fast float %5411, %5451
  %5453 = fmul fast float %5412, %5451
  %5454 = fmul fast float %5413, %5451
  br label %5455

; <label>:5455                                    ; preds = %5408, %5004
  %5456 = phi float [ %5409, %5408 ], [ 0.000000e+00, %5004 ]
  %5457 = phi float [ %5450, %5408 ], [ 1.000000e+00, %5004 ]
  %5458 = phi float [ %5452, %5408 ], [ 0.000000e+00, %5004 ]
  %5459 = phi float [ %5453, %5408 ], [ 0.000000e+00, %5004 ]
  %5460 = phi float [ %5454, %5408 ], [ 0.000000e+00, %5004 ]
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 1
  %5463 = fsub fast float 1.000000e+00, %5457
  %5464 = fmul fast float %5463, %5039
  %5465 = fmul fast float %5464, %5462
  %5466 = fsub fast float %5039, %5465
  br i1 %5032, label %5467, label %5496, !dx.controlflow.hints !153

; <label>:5467                                    ; preds = %5455
  %5468 = fmul fast float %5040, %5029
  %5469 = fadd fast float %5468, %5030
  %5470 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5471 = fmul fast float %5011, %5466
  %5472 = fsub fast float -0.000000e+00, %5471
  %5473 = fmul fast float %5012, %5466
  %5474 = fsub fast float -0.000000e+00, %5473
  %5475 = call float @dx.op.unary.f32(i32 21, float %5472)  ; Exp(value)
  %5476 = call float @dx.op.unary.f32(i32 21, float %5474)  ; Exp(value)
  %5477 = call float @dx.op.binary.f32(i32 35, float %5019, float %5475)  ; FMax(a,b)
  %5478 = call float @dx.op.binary.f32(i32 35, float %5019, float %5476)  ; FMax(a,b)
  %5479 = fsub fast float %5478, %5477
  %5480 = fmul fast float %5479, %5470
  %5481 = fadd fast float %5480, %5477
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fsub fast float %5016, %5021
  %5484 = fsub fast float %5017, %5022
  %5485 = fsub fast float %5018, %5023
  %5486 = fmul fast float %5470, %5483
  %5487 = fmul fast float %5470, %5484
  %5488 = fmul fast float %5470, %5485
  %5489 = fadd fast float %5486, %5021
  %5490 = fadd fast float %5487, %5022
  %5491 = fadd fast float %5488, %5023
  %5492 = fsub fast float 1.000000e+00, %5482
  %5493 = fmul fast float %5492, %5489
  %5494 = fmul fast float %5492, %5490
  %5495 = fmul fast float %5492, %5491
  br label %5555

; <label>:5496                                    ; preds = %5455
  %5497 = fmul fast float %5466, %5028
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = fsub fast float 2.000000e+00, %5498
  %5500 = fmul fast float %5498, 9.921875e-01
  %5501 = fmul fast float %5500, %5499
  %5502 = fadd fast float %5501, 3.906250e-03
  %5503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %5502, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = fsub fast float %5498, %5504
  %5506 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5505)  ; FMax(a,b)
  %5507 = fmul fast float %5014, %4995
  %5508 = call float @dx.op.unary.f32(i32 6, float %5507)  ; FAbs(value)
  %5509 = fcmp fast ogt float %5508, 0x3EB0C6F7A0000000
  br i1 %5509, label %5510, label %5516, !dx.controlflow.hints !154

; <label>:5510                                    ; preds = %5496
  %5511 = fmul fast float %5507, 0xBFF7154760000000
  %5512 = call float @dx.op.unary.f32(i32 21, float %5511)  ; Exp(value)
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = fdiv fast float %5513, %5507
  %5515 = fmul fast float %5514, %5024
  br label %5516

; <label>:5516                                    ; preds = %5510, %5496
  %5517 = phi float [ %5515, %5510 ], [ %5024, %5496 ]
  %5518 = fadd fast float %5517, %5026
  %5519 = fmul fast float %5518, %5506
  %5520 = fmul fast float %5011, %5519
  %5521 = fsub fast float -0.000000e+00, %5520
  %5522 = fmul fast float %5012, %5519
  %5523 = fsub fast float -0.000000e+00, %5522
  %5524 = fmul fast float %5013, %5519
  %5525 = fsub fast float -0.000000e+00, %5524
  %5526 = call float @dx.op.unary.f32(i32 21, float %5521)  ; Exp(value)
  %5527 = call float @dx.op.unary.f32(i32 21, float %5523)  ; Exp(value)
  %5528 = call float @dx.op.unary.f32(i32 21, float %5525)  ; Exp(value)
  %5529 = fmul fast float %5040, %5040
  %5530 = fadd fast float %5529, 1.000000e+00
  %5531 = fmul fast float %5530, 0x3FAE8EC8A0000000
  %5532 = fmul fast float %5531, %5021
  %5533 = fmul fast float %5531, %5022
  %5534 = fmul fast float %5531, %5023
  %5535 = fmul fast float %5040, %5019
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = fmul fast float %5019, %5019
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = fmul fast float %5538, 0x3FB45F3060000000
  %5540 = fmul fast float %5536, %5536
  %5541 = fdiv fast float 1.000000e+00, %5540
  %5542 = fmul fast float %5539, %5541
  %5543 = fmul fast float %5542, %5016
  %5544 = fmul fast float %5542, %5017
  %5545 = fmul fast float %5542, %5018
  %5546 = fadd fast float %5543, %5532
  %5547 = fadd fast float %5544, %5533
  %5548 = fadd fast float %5545, %5534
  %5549 = fsub fast float 1.000000e+00, %5526
  %5550 = fsub fast float 1.000000e+00, %5527
  %5551 = fsub fast float 1.000000e+00, %5528
  %5552 = fmul fast float %5546, %5549
  %5553 = fmul fast float %5547, %5550
  %5554 = fmul fast float %5548, %5551
  br label %5555

; <label>:5555                                    ; preds = %5516, %5467
  %5556 = phi float [ %5493, %5467 ], [ %5552, %5516 ]
  %5557 = phi float [ %5494, %5467 ], [ %5553, %5516 ]
  %5558 = phi float [ %5495, %5467 ], [ %5554, %5516 ]
  %5559 = phi float [ %5482, %5467 ], [ %5526, %5516 ]
  %5560 = phi float [ %5482, %5467 ], [ %5527, %5516 ]
  %5561 = phi float [ %5482, %5467 ], [ %5528, %5516 ]
  br i1 %5048, label %5562, label %5760, !dx.controlflow.hints !155

; <label>:5562                                    ; preds = %5555
  %5563 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5564 = fmul fast float %5563, %5463
  %5565 = fsub fast float %5458, %5556
  %5566 = fsub fast float %5459, %5557
  %5567 = fsub fast float %5460, %5558
  %5568 = fmul fast float %5564, %5565
  %5569 = fmul fast float %5564, %5566
  %5570 = fmul fast float %5564, %5567
  %5571 = fadd fast float %5568, %5556
  %5572 = fadd fast float %5569, %5557
  %5573 = fadd fast float %5570, %5558
  %5574 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5559)  ; FMax(a,b)
  %5575 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5560)  ; FMax(a,b)
  %5576 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5561)  ; FMax(a,b)
  %5577 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5457)  ; FMax(a,b)
  %5578 = call float @dx.op.binary.f32(i32 35, float %5456, float %5466)  ; FMax(a,b)
  %5579 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5578)  ; FMax(a,b)
  %5580 = fdiv fast float %5456, %5579
  %5581 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5582 = fdiv fast float %5466, %5579
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = fcmp fast une float %5577, 1.000000e+00
  br i1 %5584, label %5585, label %5598, !dx.controlflow.hints !156

; <label>:5585                                    ; preds = %5562
  %5586 = call float @dx.op.unary.f32(i32 23, float %5577)  ; Log(value)
  %5587 = fmul fast float %5586, 0x3FE62E4300000000
  %5588 = fmul fast float %5458, %5587
  %5589 = fsub fast float -0.000000e+00, %5588
  %5590 = fmul fast float %5459, %5587
  %5591 = fsub fast float -0.000000e+00, %5590
  %5592 = fmul fast float %5460, %5587
  %5593 = fsub fast float -0.000000e+00, %5592
  %5594 = fsub fast float 1.000000e+00, %5577
  %5595 = fdiv fast float %5589, %5594
  %5596 = fdiv fast float %5591, %5594
  %5597 = fdiv fast float %5593, %5594
  br label %5598

; <label>:5598                                    ; preds = %5585, %5562
  %5599 = phi float [ %5595, %5585 ], [ %5458, %5562 ]
  %5600 = phi float [ %5596, %5585 ], [ %5459, %5562 ]
  %5601 = phi float [ %5597, %5585 ], [ %5460, %5562 ]
  %5602 = phi float [ %5587, %5585 ], [ 0.000000e+00, %5562 ]
  %5603 = fcmp fast une float %5574, 1.000000e+00
  br i1 %5603, label %5604, label %5611, !dx.controlflow.hints !157

; <label>:5604                                    ; preds = %5598
  %5605 = call float @dx.op.unary.f32(i32 23, float %5574)  ; Log(value)
  %5606 = fmul fast float %5605, 0x3FE62E4300000000
  %5607 = fmul fast float %5571, %5606
  %5608 = fsub fast float -0.000000e+00, %5607
  %5609 = fsub fast float 1.000000e+00, %5574
  %5610 = fdiv fast float %5608, %5609
  br label %5611

; <label>:5611                                    ; preds = %5604, %5598
  %5612 = phi float [ %5610, %5604 ], [ %5571, %5598 ]
  %5613 = phi float [ %5606, %5604 ], [ 0.000000e+00, %5598 ]
  %5614 = fcmp fast une float %5575, 1.000000e+00
  br i1 %5614, label %5615, label %5622, !dx.controlflow.hints !157

; <label>:5615                                    ; preds = %5611
  %5616 = call float @dx.op.unary.f32(i32 23, float %5575)  ; Log(value)
  %5617 = fmul fast float %5616, 0x3FE62E4300000000
  %5618 = fmul fast float %5572, %5617
  %5619 = fsub fast float -0.000000e+00, %5618
  %5620 = fsub fast float 1.000000e+00, %5575
  %5621 = fdiv fast float %5619, %5620
  br label %5622

; <label>:5622                                    ; preds = %5615, %5611
  %5623 = phi float [ %5621, %5615 ], [ %5572, %5611 ]
  %5624 = phi float [ %5617, %5615 ], [ 0.000000e+00, %5611 ]
  %5625 = fcmp fast une float %5576, 1.000000e+00
  br i1 %5625, label %5626, label %5633, !dx.controlflow.hints !157

; <label>:5626                                    ; preds = %5622
  %5627 = call float @dx.op.unary.f32(i32 23, float %5576)  ; Log(value)
  %5628 = fmul fast float %5627, 0x3FE62E4300000000
  %5629 = fmul fast float %5573, %5628
  %5630 = fsub fast float -0.000000e+00, %5629
  %5631 = fsub fast float 1.000000e+00, %5576
  %5632 = fdiv fast float %5630, %5631
  br label %5633

; <label>:5633                                    ; preds = %5626, %5622
  %5634 = phi float [ %5632, %5626 ], [ %5573, %5622 ]
  %5635 = phi float [ %5628, %5626 ], [ 0.000000e+00, %5622 ]
  %5636 = fmul fast float %5599, %5583
  %5637 = fmul fast float %5600, %5583
  %5638 = fmul fast float %5601, %5583
  %5639 = fmul fast float %5602, %5583
  %5640 = fmul fast float %5612, %5581
  %5641 = fmul fast float %5623, %5581
  %5642 = fmul fast float %5634, %5581
  %5643 = fmul fast float %5613, %5581
  %5644 = fmul fast float %5624, %5581
  %5645 = fmul fast float %5635, %5581
  %5646 = fadd fast float %5640, %5636
  %5647 = fadd fast float %5641, %5637
  %5648 = fadd fast float %5642, %5638
  %5649 = fadd fast float %5643, %5639
  %5650 = fadd fast float %5644, %5639
  %5651 = fadd fast float %5645, %5639
  %5652 = fcmp fast une float %5649, 0.000000e+00
  br i1 %5652, label %5653, label %5660, !dx.controlflow.hints !158

; <label>:5653                                    ; preds = %5633
  %5654 = fmul fast float %5649, 0x3FF7154760000000
  %5655 = call float @dx.op.unary.f32(i32 21, float %5654)  ; Exp(value)
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = fmul fast float %5646, %5656
  %5658 = fsub fast float -0.000000e+00, %5657
  %5659 = fdiv fast float %5658, %5649
  br label %5660

; <label>:5660                                    ; preds = %5653, %5633
  %5661 = phi float [ %5655, %5653 ], [ 1.000000e+00, %5633 ]
  %5662 = phi float [ %5659, %5653 ], [ %5646, %5633 ]
  %5663 = fcmp fast une float %5650, 0.000000e+00
  br i1 %5663, label %5664, label %5671, !dx.controlflow.hints !158

; <label>:5664                                    ; preds = %5660
  %5665 = fmul fast float %5650, 0x3FF7154760000000
  %5666 = call float @dx.op.unary.f32(i32 21, float %5665)  ; Exp(value)
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = fmul fast float %5647, %5667
  %5669 = fsub fast float -0.000000e+00, %5668
  %5670 = fdiv fast float %5669, %5650
  br label %5671

; <label>:5671                                    ; preds = %5664, %5660
  %5672 = phi float [ %5666, %5664 ], [ 1.000000e+00, %5660 ]
  %5673 = phi float [ %5670, %5664 ], [ %5647, %5660 ]
  %5674 = fcmp fast une float %5651, 0.000000e+00
  br i1 %5674, label %5675, label %5682, !dx.controlflow.hints !158

; <label>:5675                                    ; preds = %5671
  %5676 = fmul fast float %5651, 0x3FF7154760000000
  %5677 = call float @dx.op.unary.f32(i32 21, float %5676)  ; Exp(value)
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = fmul fast float %5648, %5678
  %5680 = fsub fast float -0.000000e+00, %5679
  %5681 = fdiv fast float %5680, %5651
  br label %5682

; <label>:5682                                    ; preds = %5675, %5671
  %5683 = phi float [ %5677, %5675 ], [ 1.000000e+00, %5671 ]
  %5684 = phi float [ %5681, %5675 ], [ %5648, %5671 ]
  %5685 = fcmp fast ogt float %5581, %5583
  br i1 %5685, label %5686, label %5706

; <label>:5686                                    ; preds = %5682
  %5687 = fsub fast float 1.000000e+00, %5583
  %5688 = fmul fast float %5599, %5687
  %5689 = fmul fast float %5600, %5687
  %5690 = fmul fast float %5601, %5687
  %5691 = fmul fast float %5602, %5687
  %5692 = fcmp fast une float %5691, 0.000000e+00
  br i1 %5692, label %5693, label %5744, !dx.controlflow.hints !159

; <label>:5693                                    ; preds = %5686
  %5694 = fmul fast float %5691, 0x3FF7154760000000
  %5695 = call float @dx.op.unary.f32(i32 21, float %5694)  ; Exp(value)
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = fmul fast float %5688, %5696
  %5698 = fsub fast float -0.000000e+00, %5697
  %5699 = fmul fast float %5689, %5696
  %5700 = fsub fast float -0.000000e+00, %5699
  %5701 = fmul fast float %5690, %5696
  %5702 = fsub fast float -0.000000e+00, %5701
  %5703 = fdiv fast float %5698, %5691
  %5704 = fdiv fast float %5700, %5691
  %5705 = fdiv fast float %5702, %5691
  br label %5744

; <label>:5706                                    ; preds = %5682
  %5707 = fsub fast float 1.000000e+00, %5581
  %5708 = fmul fast float %5612, %5707
  %5709 = fmul fast float %5623, %5707
  %5710 = fmul fast float %5634, %5707
  %5711 = fmul fast float %5613, %5707
  %5712 = fmul fast float %5624, %5707
  %5713 = fmul fast float %5635, %5707
  %5714 = fcmp fast une float %5711, 0.000000e+00
  br i1 %5714, label %5715, label %5722, !dx.controlflow.hints !158

; <label>:5715                                    ; preds = %5706
  %5716 = fmul fast float %5711, 0x3FF7154760000000
  %5717 = call float @dx.op.unary.f32(i32 21, float %5716)  ; Exp(value)
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = fmul fast float %5708, %5718
  %5720 = fsub fast float -0.000000e+00, %5719
  %5721 = fdiv fast float %5720, %5711
  br label %5722

; <label>:5722                                    ; preds = %5715, %5706
  %5723 = phi float [ %5721, %5715 ], [ %5708, %5706 ]
  %5724 = phi float [ %5717, %5715 ], [ 1.000000e+00, %5706 ]
  %5725 = fcmp fast une float %5712, 0.000000e+00
  br i1 %5725, label %5726, label %5733, !dx.controlflow.hints !158

; <label>:5726                                    ; preds = %5722
  %5727 = fmul fast float %5712, 0x3FF7154760000000
  %5728 = call float @dx.op.unary.f32(i32 21, float %5727)  ; Exp(value)
  %5729 = fsub fast float 1.000000e+00, %5728
  %5730 = fmul fast float %5709, %5729
  %5731 = fsub fast float -0.000000e+00, %5730
  %5732 = fdiv fast float %5731, %5712
  br label %5733

; <label>:5733                                    ; preds = %5726, %5722
  %5734 = phi float [ %5732, %5726 ], [ %5709, %5722 ]
  %5735 = phi float [ %5728, %5726 ], [ 1.000000e+00, %5722 ]
  %5736 = fcmp fast une float %5713, 0.000000e+00
  br i1 %5736, label %5737, label %5744, !dx.controlflow.hints !158

; <label>:5737                                    ; preds = %5733
  %5738 = fmul fast float %5713, 0x3FF7154760000000
  %5739 = call float @dx.op.unary.f32(i32 21, float %5738)  ; Exp(value)
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5710, %5740
  %5742 = fsub fast float -0.000000e+00, %5741
  %5743 = fdiv fast float %5742, %5713
  br label %5744

; <label>:5744                                    ; preds = %5737, %5733, %5693, %5686
  %5745 = phi float [ %5743, %5737 ], [ %5705, %5693 ], [ %5690, %5686 ], [ %5710, %5733 ]
  %5746 = phi float [ %5734, %5737 ], [ %5704, %5693 ], [ %5689, %5686 ], [ %5734, %5733 ]
  %5747 = phi float [ %5723, %5737 ], [ %5703, %5693 ], [ %5688, %5686 ], [ %5723, %5733 ]
  %5748 = phi float [ %5739, %5737 ], [ %5695, %5693 ], [ 1.000000e+00, %5686 ], [ 1.000000e+00, %5733 ]
  %5749 = phi float [ %5735, %5737 ], [ %5695, %5693 ], [ 1.000000e+00, %5686 ], [ %5735, %5733 ]
  %5750 = phi float [ %5724, %5737 ], [ %5695, %5693 ], [ 1.000000e+00, %5686 ], [ %5724, %5733 ]
  %5751 = fmul fast float %5750, %5662
  %5752 = fmul fast float %5749, %5673
  %5753 = fmul fast float %5748, %5684
  %5754 = fadd fast float %5751, %5747
  %5755 = fadd fast float %5752, %5746
  %5756 = fadd fast float %5753, %5745
  %5757 = fmul fast float %5750, %5661
  %5758 = fmul fast float %5749, %5672
  %5759 = fmul fast float %5748, %5683
  br label %5760

; <label>:5760                                    ; preds = %5744, %5555
  %5761 = phi float [ %5759, %5744 ], [ %5561, %5555 ]
  %5762 = phi float [ %5758, %5744 ], [ %5560, %5555 ]
  %5763 = phi float [ %5757, %5744 ], [ %5559, %5555 ]
  %5764 = phi float [ %5756, %5744 ], [ %5558, %5555 ]
  %5765 = phi float [ %5755, %5744 ], [ %5557, %5555 ]
  %5766 = phi float [ %5754, %5744 ], [ %5556, %5555 ]
  %5767 = fmul fast float %5766, %4706
  %5768 = fmul fast float %5765, %4708
  %5769 = fmul fast float %5764, %4710
  %5770 = fmul fast float %5763, %5003
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5762, float %5761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5768, float %5769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = select i1 %202, float %5771, float %5763
  %5774 = select i1 %202, float %5771, float %5762
  %5775 = select i1 %202, float 1.000000e+00, float %5761
  %5776 = select i1 %202, float %5772, float %5767
  %5777 = select i1 %202, float 0.000000e+00, float %5768
  %5778 = select i1 %202, float 0.000000e+00, float %5769
  %5779 = fmul fast float %5773, %4997
  %5780 = fmul fast float %5774, %4998
  %5781 = fmul fast float %5775, %4999
  %5782 = fadd fast float %5779, %5776
  %5783 = fadd fast float %5780, %5777
  %5784 = fadd fast float %5778, %5781
  %5785 = fmul fast float %5773, %5000
  %5786 = fmul fast float %5774, %5001
  %5787 = fmul fast float %5775, %5002
  %5788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.i32 %5788, 0
  %5790 = icmp eq i32 %5789, 0
  br i1 %5790, label %6158, label %5791, !dx.controlflow.hints !160

; <label>:5791                                    ; preds = %5760
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5795 = fmul fast float %5793, %85
  %5796 = fmul fast float %5794, %86
  %5797 = fmul fast float %5795, 2.000000e+00
  %5798 = fmul fast float %5796, 2.000000e+00
  %5799 = fsub fast float 1.000000e+00, %5797
  %5800 = fsub fast float 1.000000e+00, %5798
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.CBufRet.f32 %5801, 2
  %5805 = fmul fast float %5799, %5802
  %5806 = fmul fast float %5799, %5803
  %5807 = fmul fast float %5799, %5804
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.CBufRet.f32 %5808, 2
  %5812 = fmul fast float %5800, %5809
  %5813 = fmul fast float %5800, %5810
  %5814 = fmul fast float %5800, %5811
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5819 = fadd fast float %5812, %5816
  %5820 = fadd fast float %5819, %5805
  %5821 = fadd fast float %5813, %5817
  %5822 = fadd fast float %5821, %5806
  %5823 = fadd fast float %5814, %5818
  %5824 = fadd fast float %5823, %5807
  %5825 = fmul fast float %5820, %4996
  %5826 = fmul fast float %5822, %4996
  %5827 = fmul fast float %5824, %4996
  %5828 = fmul fast float %5825, %5825
  %5829 = fmul fast float %5826, %5826
  %5830 = fadd fast float %5828, %5829
  %5831 = fmul fast float %5827, %5827
  %5832 = fadd fast float %5830, %5831
  %5833 = call float @dx.op.unary.f32(i32 24, float %5832)  ; Sqrt(value)
  %5834 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %5835 = fsub fast float %5833, %5834
  %5836 = extractvalue %dx.types.CBufRet.f32 %4721, 2
  %5837 = fmul fast float %5835, %5836
  %5838 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5839 = fadd fast float %5838, -5.000000e-01
  %5840 = fmul fast float %5839, 2.000000e+00
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5843 = call float @dx.op.binary.f32(i32 36, float %5842, float %5840)  ; FMin(a,b)
  %5844 = fsub fast float -0.000000e+00, %5842
  %5845 = fcmp fast ogt float %5843, %5844
  br i1 %5845, label %5846, label %6158, !dx.controlflow.hints !161

; <label>:5846                                    ; preds = %5791
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 3
  %5849 = fcmp fast ogt float %5848, 0.000000e+00
  br i1 %5849, label %5850, label %5925, !dx.controlflow.hints !162

; <label>:5850                                    ; preds = %5846
  %5851 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %5852 = extractvalue %dx.types.Dimensions %5851, 0
  %5853 = sitofp i32 %5852 to float
  %5854 = extractvalue %dx.types.Dimensions %5851, 1
  %5855 = sitofp i32 %5854 to float
  %5856 = fmul fast float %5795, %5853
  %5857 = fmul fast float %5796, %5855
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5860 = fsub fast float -0.000000e+00, %5859
  %5861 = fptoui float %5860 to i32
  %5862 = fptoui float %5856 to i32
  %5863 = fptoui float %5857 to i32
  %5864 = and i32 %5861, 31
  %5865 = lshr i32 %5862, %5864
  %5866 = lshr i32 %5863, %5864
  %5867 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %5861, i32 %5865, i32 %5866, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5868 = extractvalue %dx.types.ResRet.f32 %5867, 0
  %5869 = fcmp fast olt float %5868, -1.000000e+00
  %5870 = fcmp fast ogt float %5868, -1.000000e+00
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5873 = select i1 %5870, float %5872, float 1.000000e+00
  %5874 = fadd fast float %5868, 1.000000e+00
  %5875 = fmul fast float %5873, %5874
  %5876 = call float @dx.op.unary.f32(i32 6, float %5875)  ; FAbs(value)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5878 = fcmp fast oge float %5876, %5877
  %5879 = select i1 %5878, float 0x4197782600000000, float %5876
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5884 = select i1 %5869, float %5881, float %5802
  %5885 = select i1 %5869, float %5882, float %5803
  %5886 = select i1 %5869, float %5883, float %5804
  %5887 = fmul fast float %5884, %5799
  %5888 = fmul fast float %5885, %5799
  %5889 = fmul fast float %5886, %5799
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5894 = select i1 %5869, float %5891, float %5809
  %5895 = select i1 %5869, float %5892, float %5810
  %5896 = select i1 %5869, float %5893, float %5811
  %5897 = fmul fast float %5894, %5800
  %5898 = fmul fast float %5895, %5800
  %5899 = fmul fast float %5896, %5800
  %5900 = fadd fast float %5897, %5887
  %5901 = fadd fast float %5898, %5888
  %5902 = fadd fast float %5899, %5889
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %5907 = select i1 %5869, float %5904, float %5816
  %5908 = select i1 %5869, float %5905, float %5817
  %5909 = select i1 %5869, float %5906, float %5818
  %5910 = fadd fast float %5900, %5907
  %5911 = fadd fast float %5901, %5908
  %5912 = fadd fast float %5902, %5909
  %5913 = fmul fast float %5910, %5879
  %5914 = fmul fast float %5911, %5879
  %5915 = fmul fast float %5912, %5879
  %5916 = fmul fast float %5913, %5913
  %5917 = fmul fast float %5914, %5914
  %5918 = fadd fast float %5916, %5917
  %5919 = fmul fast float %5915, %5915
  %5920 = fadd fast float %5918, %5919
  %5921 = call float @dx.op.unary.f32(i32 24, float %5920)  ; Sqrt(value)
  %5922 = fsub fast float %5921, %5834
  %5923 = fmul fast float %5922, %5836
  %5924 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  br label %5925

; <label>:5925                                    ; preds = %5850, %5846
  %5926 = phi float [ %5924, %5850 ], [ 1.000000e+00, %5846 ]
  %5927 = fmul fast float %5843, 5.000000e-01
  %5928 = fadd fast float %5927, 5.000000e-01
  %5929 = call float @dx.op.unary.f32(i32 22, float %5928)  ; Frc(value)
  %5930 = call float @dx.op.unary.f32(i32 27, float %5929)  ; Round_ni(value)
  %5931 = call float @dx.op.unary.f32(i32 22, float %5929)  ; Frc(value)
  %5932 = fmul fast float %5931, 2.000000e+00
  %5933 = fadd fast float %5932, -1.000000e+00
  %5934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %5795, float %5796, float %5930, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.ResRet.f32 %5934, 2
  %5938 = extractvalue %dx.types.ResRet.f32 %5934, 3
  %5939 = fadd fast float %5935, -5.000000e-01
  %5940 = fadd fast float %5937, -5.000000e-01
  %5941 = fmul fast float %5939, 0xBFD5555560000000
  %5942 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5940, float %5941)  ; FMad(a,b,c)
  %5943 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5936, float 0.000000e+00)  ; FMad(a,b,c)
  %5944 = fadd fast float %5943, %5938
  %5945 = fmul fast float %5939, -7.500000e-01
  %5946 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5940, float %5945)  ; FMad(a,b,c)
  %5947 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5936, float 0.000000e+00)  ; FMad(a,b,c)
  %5948 = fadd fast float %5947, %5938
  %5949 = call float @dx.op.binary.f32(i32 35, float %5942, float -1.000000e+00)  ; FMax(a,b)
  %5950 = call float @dx.op.binary.f32(i32 35, float %5944, float -1.000000e+00)  ; FMax(a,b)
  %5951 = call float @dx.op.binary.f32(i32 35, float %5946, float -1.000000e+00)  ; FMax(a,b)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5948, float -1.000000e+00)  ; FMax(a,b)
  %5953 = call float @dx.op.binary.f32(i32 36, float %5949, float 1.000000e+00)  ; FMin(a,b)
  %5954 = call float @dx.op.binary.f32(i32 36, float %5950, float 1.000000e+00)  ; FMin(a,b)
  %5955 = call float @dx.op.binary.f32(i32 36, float %5951, float 1.000000e+00)  ; FMin(a,b)
  %5956 = call float @dx.op.binary.f32(i32 36, float %5952, float 1.000000e+00)  ; FMin(a,b)
  %5957 = fcmp fast olt float %5953, 0x3FEFFF8020000000
  br i1 %5957, label %5958, label %6073, !dx.controlflow.hints !163

; <label>:5958                                    ; preds = %5925
  %5959 = extractvalue %dx.types.CBufRet.f32 %5841, 3
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5964 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5965 = fsub fast float %5961, %5953
  %5966 = fsub fast float %5962, %5954
  %5967 = fsub fast float %5963, %5955
  %5968 = fsub fast float %5964, %5956
  %5969 = fmul fast float %5965, %5959
  %5970 = fmul fast float %5966, %5959
  %5971 = fmul fast float %5967, %5959
  %5972 = fmul fast float %5968, %5959
  %5973 = fadd fast float %5969, %5953
  %5974 = fadd fast float %5970, %5954
  %5975 = fsub fast float -0.000000e+00, %5974
  %5976 = fadd fast float %5971, %5955
  %5977 = fadd fast float %5972, %5956
  %5978 = fmul fast float %5973, %5973
  %5979 = fsub fast float %5974, %5978
  %5980 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5979)  ; FMax(a,b)
  %5981 = fdiv fast float 1.000000e+00, %5980
  %5982 = fmul fast float %5974, %5973
  %5983 = fsub fast float %5976, %5982
  %5984 = fsub fast float %5933, %5973
  %5985 = fmul fast float %5933, %5933
  %5986 = fsub fast float %5985, %5974
  %5987 = fmul fast float %5984, %5981
  %5988 = fmul fast float %5987, %5983
  %5989 = fsub fast float %5986, %5988
  %5990 = fmul fast float %5974, %5974
  %5991 = fsub fast float %5977, %5990
  %5992 = fmul fast float %5983, %5983
  %5993 = fmul fast float %5992, %5981
  %5994 = fsub fast float %5991, %5993
  %5995 = fdiv fast float %5989, %5994
  %5996 = fmul fast float %5983, %5995
  %5997 = fsub fast float %5984, %5996
  %5998 = fmul fast float %5997, %5981
  %5999 = fmul fast float %5998, %5973
  %6000 = fsub fast float 1.000000e+00, %5999
  %6001 = fmul fast float %5974, %5995
  %6002 = fsub fast float %6000, %6001
  %6003 = fmul fast float %5998, %5998
  %6004 = fmul fast float %5995, 4.000000e+00
  %6005 = fmul fast float %6004, %6002
  %6006 = fsub fast float %6003, %6005
  %6007 = call float @dx.op.unary.f32(i32 24, float %6006)  ; Sqrt(value)
  %6008 = fcmp fast oge float %5998, 0.000000e+00
  %6009 = fsub fast float -0.000000e+00, %6007
  %6010 = select i1 %6008, float %6009, float %6007
  %6011 = fsub fast float %6010, %5998
  %6012 = fdiv fast float %6011, %5995
  %6013 = fdiv fast float %6002, %6011
  %6014 = fmul fast float %6012, 5.000000e-01
  %6015 = fmul fast float %6013, 2.000000e+00
  %6016 = select i1 %6008, float %6014, float %6015
  %6017 = select i1 %6008, float %6015, float %6014
  %6018 = call float @dx.op.binary.f32(i32 35, float %6016, float %6017)  ; FMax(a,b)
  %6019 = call float @dx.op.binary.f32(i32 36, float %6016, float %6017)  ; FMin(a,b)
  %6020 = fcmp fast ogt float %5933, %6019
  br i1 %6020, label %6021, label %6031

; <label>:6021                                    ; preds = %5958
  %6022 = fsub fast float %5933, %6019
  %6023 = fsub fast float %6018, %6019
  %6024 = fmul fast float %6022, %6023
  %6025 = fmul fast float %6018, %5933
  %6026 = fadd fast float %6018, %5933
  %6027 = fmul fast float %6026, %5973
  %6028 = fadd fast float %6025, %5974
  %6029 = fsub fast float %6028, %6027
  %6030 = fdiv fast float %6029, %6024
  br label %6031

; <label>:6031                                    ; preds = %6021, %5958
  %6032 = phi float [ %6030, %6021 ], [ 0.000000e+00, %5958 ]
  %6033 = fcmp fast ogt float %5933, %6018
  %6034 = fsub fast float %5933, %6018
  br i1 %6033, label %6035, label %6045

; <label>:6035                                    ; preds = %6031
  %6036 = fsub fast float %6018, %6019
  %6037 = fmul fast float %6036, %6034
  %6038 = fmul fast float %6019, %5933
  %6039 = fadd fast float %6019, %5933
  %6040 = fmul fast float %6039, %5973
  %6041 = fsub fast float %5975, %6038
  %6042 = fadd fast float %6041, %6040
  %6043 = fdiv fast float %6042, %6037
  %6044 = fadd fast float %6043, %6032
  br label %6045

; <label>:6045                                    ; preds = %6035, %6031
  %6046 = phi float [ %6044, %6035 ], [ %6032, %6031 ]
  %6047 = fsub fast float %5933, %6019
  %6048 = fmul fast float %6047, %6034
  %6049 = fmul fast float %6019, %6018
  %6050 = fadd fast float %6019, %6018
  %6051 = fmul fast float %6050, %5973
  %6052 = fadd fast float %6049, %5974
  %6053 = fsub fast float %6052, %6051
  %6054 = fdiv fast float %6053, %6048
  %6055 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  %6056 = fcmp fast oeq float %4722, 0.000000e+00
  %6057 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  %6058 = fcmp fast oeq float %6057, 0.000000e+00
  %6059 = or i1 %6056, %6058
  %6060 = fmul fast float %6057, 2.000000e+00
  %6061 = fadd fast float %5842, %5843
  %6062 = fdiv fast float %6061, %6060
  %6063 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6064 = fmul fast float %6063, 2.000000e+00
  %6065 = fsub fast float 3.000000e+00, %6064
  %6066 = fmul fast float %6063, %6063
  %6067 = fmul fast float %6066, %6065
  %6068 = select i1 %6059, float 1.000000e+00, float %6067
  %6069 = fmul fast float %6054, %4722
  %6070 = fadd fast float %6055, %6069
  %6071 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6072 = fmul fast float %6068, %6071
  br label %6073

; <label>:6073                                    ; preds = %6045, %5925
  %6074 = phi float [ %6072, %6045 ], [ 0.000000e+00, %5925 ]
  %6075 = fsub fast float 1.000000e+00, %6074
  %6076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %5795, float %5796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.i32 %6078, 2
  %6080 = icmp eq i32 %6079, 0
  br i1 %6080, label %6086, label %6081

; <label>:6081                                    ; preds = %6073
  %6082 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  %6083 = fadd fast float %6077, -1.000000e+00
  %6084 = fmul fast float %6082, %6083
  %6085 = fadd fast float %6084, 1.000000e+00
  br label %6086

; <label>:6086                                    ; preds = %6081, %6073
  %6087 = phi float [ %6085, %6081 ], [ %6075, %6073 ]
  br i1 %5849, label %6088, label %6106

; <label>:6088                                    ; preds = %6086
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6091 = fsub fast float %5926, %6090
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = fsub fast float %5926, %5848
  %6094 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  %6095 = fsub fast float %6092, %6094
  %6096 = fsub fast float %5928, %6094
  %6097 = fdiv fast float %6096, %6095
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = fmul fast float %6098, 2.000000e+00
  %6100 = fsub fast float 3.000000e+00, %6099
  %6101 = fsub fast float %6077, %6087
  %6102 = fmul fast float %6098, %6098
  %6103 = fmul fast float %6102, %6101
  %6104 = fmul fast float %6103, %6100
  %6105 = fadd fast float %6104, %6087
  br label %6106

; <label>:6106                                    ; preds = %6088, %6086
  %6107 = phi float [ %6105, %6088 ], [ %6087, %6086 ]
  %6108 = call float @dx.op.binary.f32(i32 35, float %6077, float %6107)  ; FMax(a,b)
  %6109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.i32 %6109, 2
  %6111 = and i32 %6110, 1
  %6112 = icmp eq i32 %6111, 0
  %6113 = fcmp fast une float %6108, 1.000000e+00
  %6114 = and i1 %6113, %6112
  br i1 %6114, label %6115, label %6134

; <label>:6115                                    ; preds = %6106
  %6116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5795, float %5796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 1
  %6122 = fmul fast float %6121, %6117
  %6123 = fmul fast float %6121, %6118
  %6124 = fmul fast float %6121, %6119
  %6125 = fcmp fast ogt float %6077, 0x3FEFFF2E40000000
  %6126 = fsub fast float 1.000000e+00, %6108
  %6127 = fsub fast float 1.000000e+00, %6077
  %6128 = fdiv fast float %6126, %6127
  %6129 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6130 = select i1 %6125, float 0.000000e+00, float %6129
  %6131 = fmul fast float %6122, %6130
  %6132 = fmul fast float %6123, %6130
  %6133 = fmul fast float %6124, %6130
  br label %6134

; <label>:6134                                    ; preds = %6115, %6106
  %6135 = phi float [ 0.000000e+00, %6106 ], [ %6131, %6115 ]
  %6136 = phi float [ 0.000000e+00, %6106 ], [ %6132, %6115 ]
  %6137 = phi float [ 0.000000e+00, %6106 ], [ %6133, %6115 ]
  %6138 = fmul fast float %6135, %4706
  %6139 = fmul fast float %6136, %4708
  %6140 = fmul fast float %6137, %4710
  %6141 = fmul fast float %6108, %5770
  %6142 = call float @dx.op.dot3.f32(i32 55, float %6108, float %6108, float %6108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6143 = call float @dx.op.dot3.f32(i32 55, float %6138, float %6139, float %6140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6144 = select i1 %202, float %6142, float %6108
  %6145 = select i1 %202, float 1.000000e+00, float %6108
  %6146 = select i1 %202, float %6143, float %6138
  %6147 = select i1 %202, float 0.000000e+00, float %6139
  %6148 = select i1 %202, float 0.000000e+00, float %6140
  %6149 = fmul fast float %6144, %5782
  %6150 = fmul fast float %6144, %5783
  %6151 = fmul fast float %6145, %5784
  %6152 = fadd fast float %6149, %6146
  %6153 = fadd fast float %6150, %6147
  %6154 = fadd fast float %6148, %6151
  %6155 = fmul fast float %6144, %5785
  %6156 = fmul fast float %6144, %5786
  %6157 = fmul fast float %6145, %5787
  br label %6158

; <label>:6158                                    ; preds = %6134, %5791, %5760, %4992
  %6159 = phi float [ %4997, %4992 ], [ %5782, %5760 ], [ %6152, %6134 ], [ %5782, %5791 ]
  %6160 = phi float [ %4998, %4992 ], [ %5783, %5760 ], [ %6153, %6134 ], [ %5783, %5791 ]
  %6161 = phi float [ %4999, %4992 ], [ %5784, %5760 ], [ %6154, %6134 ], [ %5784, %5791 ]
  %6162 = phi float [ %5000, %4992 ], [ %5785, %5760 ], [ %6155, %6134 ], [ %5785, %5791 ]
  %6163 = phi float [ %5001, %4992 ], [ %5786, %5760 ], [ %6156, %6134 ], [ %5786, %5791 ]
  %6164 = phi float [ %5002, %4992 ], [ %5787, %5760 ], [ %6157, %6134 ], [ %5787, %5791 ]
  %6165 = phi float [ %5003, %4992 ], [ %5770, %5760 ], [ %6141, %6134 ], [ %5770, %5791 ]
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6169 = fmul fast float %6167, %85
  %6170 = fmul fast float %6168, %86
  %6171 = call float @dx.op.unary.f32(i32 7, float %6169)  ; Saturate(value)
  %6172 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6173 = select i1 %4732, i32 2, i32 0
  %6174 = or i32 %6173, 1
  %6175 = uitofp i32 %6174 to float
  %6176 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6171, float %6172, float %6175, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6177 = extractvalue %dx.types.ResRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.ResRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.ResRet.f32 %6176, 2
  %6180 = extractvalue %dx.types.ResRet.f32 %6176, 3
  %6181 = add nuw nsw i32 %6173, 2
  %6182 = uitofp i32 %6181 to float
  %6183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6171, float %6172, float %6182, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6187 = extractvalue %dx.types.ResRet.f32 %6183, 3
  %6188 = call float @dx.op.binary.f32(i32 35, float %6178, float %6179)  ; FMax(a,b)
  %6189 = call float @dx.op.binary.f32(i32 35, float %6177, float %6188)  ; FMax(a,b)
  %6190 = call float @dx.op.binary.f32(i32 35, float %6189, float %6180)  ; FMax(a,b)
  %6191 = call float @dx.op.binary.f32(i32 36, float %6185, float %6186)  ; FMin(a,b)
  %6192 = call float @dx.op.binary.f32(i32 36, float %6184, float %6191)  ; FMin(a,b)
  %6193 = call float @dx.op.binary.f32(i32 36, float %6192, float %6187)  ; FMin(a,b)
  %6194 = fmul fast float %6190, 2.550000e+02
  %6195 = fadd fast float %6194, 0x3F70101020000000
  %6196 = fptoui float %6195 to i32
  %6197 = fmul fast float %6193, 2.550000e+02
  %6198 = fadd fast float %6197, 0x3F70101020000000
  %6199 = fptoui float %6198 to i32
  %6200 = icmp ult i32 %6196, %6199
  br i1 %6200, label %6201, label %6370

; <label>:6201                                    ; preds = %6158
  %6202 = fcmp fast ogt float %75, 9.843750e-01
  %6203 = fadd fast float %4996, -4.000000e+00
  %6204 = select i1 %6202, float -4.000000e+00, float %6203
  %6205 = call float @dx.op.binary.f32(i32 35, float %6204, float 0.000000e+00)  ; FMax(a,b)
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = fadd fast float %6207, %6205
  %6209 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6210 = fmul fast float %6208, %6209
  %6211 = call float @dx.op.unary.f32(i32 23, float %6210)  ; Log(value)
  %6212 = extractvalue %dx.types.CBufRet.f32 %6206, 3
  %6213 = fmul fast float %6212, %6211
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6216 = fmul fast float %6213, %6215
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6218 = uitofp i32 %6196 to float
  %6219 = uitofp i32 %6199 to float
  %6220 = fadd fast float %6218, 5.000000e-01
  %6221 = fadd fast float %6219, 5.000000e-01
  %6222 = fmul fast float %6215, %6220
  %6223 = fmul fast float %6215, %6221
  %6224 = fadd fast float %6222, 0x3F0FFB4800000000
  %6225 = fadd fast float %6223, 0xBF0FFB4800000000
  %6226 = call float @dx.op.binary.f32(i32 35, float %6217, float %6224)  ; FMax(a,b)
  %6227 = call float @dx.op.binary.f32(i32 36, float %6226, float %6225)  ; FMin(a,b)
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6232 = select i1 %4732, float %6231, float 0.000000e+00
  %6233 = fmul fast float %6229, %6227
  %6234 = fadd fast float %6232, %6233
  %6235 = fadd fast float %6232, %6230
  %6236 = fsub fast float %6229, %6230
  %6237 = fadd fast float %6236, %6232
  %6238 = call float @dx.op.binary.f32(i32 35, float %6234, float %6235)  ; FMax(a,b)
  %6239 = call float @dx.op.binary.f32(i32 36, float %6238, float %6237)  ; FMin(a,b)
  %6240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %6171, float %6172, float %6239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6241 = extractvalue %dx.types.ResRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.ResRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.ResRet.f32 %6240, 2
  %6244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.i32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.i32 %6244, 1
  %6247 = uitofp i32 %6245 to float
  %6248 = uitofp i32 %6246 to float
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = fmul fast float %6247, %6171
  %6253 = fmul fast float %6248, %6172
  %6254 = fadd fast float %6252, -5.000000e-01
  %6255 = fadd fast float %6253, -5.000000e-01
  %6256 = call float @dx.op.unary.f32(i32 22, float %6254)  ; Frc(value)
  %6257 = call float @dx.op.unary.f32(i32 22, float %6255)  ; Frc(value)
  %6258 = fmul fast float %6256, %6256
  %6259 = fmul fast float %6258, %6256
  %6260 = fsub fast float 3.000000e+00, %6256
  %6261 = fmul fast float %6258, %6260
  %6262 = fmul fast float %6256, 3.000000e+00
  %6263 = fmul fast float %6259, 3.000000e+00
  %6264 = fmul fast float %6258, 6.000000e+00
  %6265 = fsub fast float %6263, %6264
  %6266 = fadd fast float %6265, 4.000000e+00
  %6267 = fmul fast float %6266, 0x3FC5555560000000
  %6268 = fmul fast float %6259, -3.000000e+00
  %6269 = fadd fast float %6258, %6256
  %6270 = fmul fast float %6269, 3.000000e+00
  %6271 = fadd fast float %6268, 1.000000e+00
  %6272 = fadd fast float %6271, %6270
  %6273 = fmul fast float %6259, 0x3FC5555560000000
  %6274 = fmul fast float %6257, %6257
  %6275 = fmul fast float %6274, %6257
  %6276 = fsub fast float 3.000000e+00, %6257
  %6277 = fmul fast float %6274, %6276
  %6278 = fmul fast float %6257, 3.000000e+00
  %6279 = fmul fast float %6275, 3.000000e+00
  %6280 = fmul fast float %6274, 6.000000e+00
  %6281 = fsub fast float %6279, %6280
  %6282 = fadd fast float %6281, 4.000000e+00
  %6283 = fmul fast float %6282, 0x3FC5555560000000
  %6284 = fmul fast float %6275, -3.000000e+00
  %6285 = fadd fast float %6274, %6257
  %6286 = fmul fast float %6285, 3.000000e+00
  %6287 = fadd fast float %6284, 1.000000e+00
  %6288 = fadd fast float %6287, %6286
  %6289 = fmul fast float %6275, 0x3FC5555560000000
  %6290 = fadd fast float %6256, 1.000000e+00
  %6291 = fsub fast float 1.000000e+00, %6262
  %6292 = fadd fast float %6291, %6261
  %6293 = fadd fast float %6292, %6266
  %6294 = fmul fast float %6293, 0x3FC5555560000000
  %6295 = fdiv fast float %6267, %6294
  %6296 = fsub fast float %6290, %6295
  %6297 = fsub fast float 1.000000e+00, %6256
  %6298 = fadd fast float %6272, %6259
  %6299 = fmul fast float %6298, 0x3FC5555560000000
  %6300 = fdiv fast float %6273, %6299
  %6301 = fadd fast float %6297, %6300
  %6302 = fadd fast float %6257, 1.000000e+00
  %6303 = fsub fast float 1.000000e+00, %6278
  %6304 = fadd fast float %6303, %6277
  %6305 = fadd fast float %6304, %6282
  %6306 = fmul fast float %6305, 0x3FC5555560000000
  %6307 = fdiv fast float %6283, %6306
  %6308 = fsub fast float %6302, %6307
  %6309 = fsub fast float 1.000000e+00, %6257
  %6310 = fadd fast float %6288, %6275
  %6311 = fmul fast float %6310, 0x3FC5555560000000
  %6312 = fdiv fast float %6289, %6311
  %6313 = fadd fast float %6312, %6309
  %6314 = fmul fast float %6296, %6250
  %6315 = fsub fast float %6171, %6314
  %6316 = fmul fast float %6301, %6250
  %6317 = fadd fast float %6316, %6171
  %6318 = fmul fast float %6313, %6251
  %6319 = fadd fast float %6318, %6172
  %6320 = fmul fast float %6308, %6251
  %6321 = fsub fast float %6172, %6320
  %6322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6315, float %6321, float %6239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.ResRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.ResRet.f32 %6322, 2
  %6326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6317, float %6321, float %6239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6327 = extractvalue %dx.types.ResRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.ResRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.ResRet.f32 %6326, 2
  %6330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6315, float %6319, float %6239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6331 = extractvalue %dx.types.ResRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.ResRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.ResRet.f32 %6330, 2
  %6334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6317, float %6319, float %6239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6335 = extractvalue %dx.types.ResRet.f32 %6334, 0
  %6336 = extractvalue %dx.types.ResRet.f32 %6334, 1
  %6337 = extractvalue %dx.types.ResRet.f32 %6334, 2
  %6338 = fsub fast float %6331, %6323
  %6339 = fsub fast float %6332, %6324
  %6340 = fsub fast float %6333, %6325
  %6341 = fmul fast float %6338, %6311
  %6342 = fmul fast float %6339, %6311
  %6343 = fmul fast float %6340, %6311
  %6344 = fadd fast float %6341, %6323
  %6345 = fadd fast float %6342, %6324
  %6346 = fadd fast float %6343, %6325
  %6347 = fsub fast float %6335, %6327
  %6348 = fsub fast float %6336, %6328
  %6349 = fsub fast float %6337, %6329
  %6350 = fmul fast float %6347, %6311
  %6351 = fmul fast float %6348, %6311
  %6352 = fmul fast float %6349, %6311
  %6353 = fsub fast float %6327, %6344
  %6354 = fadd fast float %6353, %6350
  %6355 = fsub fast float %6328, %6345
  %6356 = fadd fast float %6355, %6351
  %6357 = fsub fast float %6329, %6346
  %6358 = fadd fast float %6357, %6352
  %6359 = fmul fast float %6354, %6299
  %6360 = fmul fast float %6356, %6299
  %6361 = fmul fast float %6358, %6299
  %6362 = fadd fast float %6359, %6344
  %6363 = fadd fast float %6360, %6345
  %6364 = fadd fast float %6361, %6346
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6367 = fmul fast float %6362, %6366
  %6368 = fmul fast float %6363, %6366
  %6369 = fmul fast float %6364, %6366
  br label %6370

; <label>:6370                                    ; preds = %6201, %6158
  %6371 = phi float [ %6241, %6201 ], [ 1.000000e+00, %6158 ]
  %6372 = phi float [ %6242, %6201 ], [ 1.000000e+00, %6158 ]
  %6373 = phi float [ %6243, %6201 ], [ 1.000000e+00, %6158 ]
  %6374 = phi float [ %6367, %6201 ], [ 0.000000e+00, %6158 ]
  %6375 = phi float [ %6368, %6201 ], [ 0.000000e+00, %6158 ]
  %6376 = phi float [ %6369, %6201 ], [ 0.000000e+00, %6158 ]
  %6377 = fmul fast float %6374, %4706
  %6378 = fmul fast float %6375, %4708
  %6379 = fmul fast float %6376, %4710
  %6380 = fmul fast float %6371, %6165
  %6381 = call float @dx.op.dot3.f32(i32 55, float %6371, float %6372, float %6373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6382 = call float @dx.op.dot3.f32(i32 55, float %6377, float %6378, float %6379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6383 = select i1 %202, float %6381, float %6371
  %6384 = select i1 %202, float %6381, float %6372
  %6385 = select i1 %202, float 1.000000e+00, float %6373
  %6386 = select i1 %202, float %6382, float %6377
  %6387 = select i1 %202, float 0.000000e+00, float %6378
  %6388 = select i1 %202, float 0.000000e+00, float %6379
  %6389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.i32 %6389, 3
  %6391 = and i32 %6390, 3
  %6392 = icmp ne i32 %6391, 0
  %6393 = and i32 %6390, 4
  %6394 = icmp ne i32 %6393, 0
  %6395 = and i1 %6392, %6394
  %6396 = and i1 %202, %6395
  br i1 %6396, label %6397, label %6403

; <label>:6397                                    ; preds = %6370
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6400 = fadd fast float %6380, -1.000000e+00
  %6401 = fmul fast float %6399, %6400
  %6402 = fadd fast float %6401, 1.000000e+00
  br label %6403

; <label>:6403                                    ; preds = %6397, %6370
  %6404 = phi float [ %6402, %6397 ], [ %6380, %6370 ]
  %6405 = fadd fast float %6162, %6159
  %6406 = fmul fast float %6383, %6405
  %6407 = fadd fast float %6406, %6386
  %6408 = fadd fast float %6163, %6160
  %6409 = fmul fast float %6384, %6408
  %6410 = fadd fast float %6409, %6387
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  br i1 %202, label %6413, label %6428

; <label>:6413                                    ; preds = %6403
  %6414 = fadd fast float %6407, %6410
  %6415 = fmul fast float %6412, %6414
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6418 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %6419 = fsub fast float %4719, %4713
  %6420 = fadd fast float %6419, %4720
  %6421 = fsub fast float %6420, %6418
  %6422 = extractvalue %dx.types.CBufRet.f32 %4714, 2
  %6423 = fmul fast float %6421, %6422
  %6424 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6425 = fsub fast float %6424, %6417
  %6426 = fmul fast float %6425, %6404
  %6427 = fadd fast float %6426, %6417
  br label %6453

; <label>:6428                                    ; preds = %6403
  %6429 = fadd fast float %6164, %6161
  %6430 = fmul fast float %6385, %6429
  %6431 = fadd fast float %6430, %6388
  %6432 = fmul fast float %6412, %6407
  %6433 = fmul fast float %6412, %6410
  %6434 = fmul fast float %6412, %6431
  %6435 = call float @dx.op.binary.f32(i32 35, float %6433, float %6434)  ; FMax(a,b)
  %6436 = call float @dx.op.binary.f32(i32 35, float %6432, float %6435)  ; FMax(a,b)
  %6437 = call float @dx.op.binary.f32(i32 35, float %4708, float %4710)  ; FMax(a,b)
  %6438 = call float @dx.op.binary.f32(i32 35, float %4706, float %6437)  ; FMax(a,b)
  %6439 = call float @dx.op.binary.f32(i32 35, float %6436, float %6438)  ; FMax(a,b)
  %6440 = fcmp fast ugt float %6439, 0x3F10000000000000
  br i1 %6440, label %6442, label %6441

; <label>:6441                                    ; preds = %6428
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6442

; <label>:6442                                    ; preds = %6441, %6428
  %6443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.i32 %6443, 0
  %6445 = and i32 %6444, 32
  %6446 = icmp eq i32 %6445, 0
  br i1 %6446, label %6453, label %6447

; <label>:6447                                    ; preds = %6442
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  %6450 = fmul fast float %6449, 0x3FE99999A0000000
  %6451 = fadd fast float %6449, %6432
  %6452 = fadd fast float %6450, %6434
  br label %6453

; <label>:6453                                    ; preds = %6447, %6442, %6413
  %6454 = phi float [ 1.000000e+00, %6413 ], [ %4708, %6447 ], [ %4708, %6442 ]
  %6455 = phi float [ 1.000000e+00, %6413 ], [ %4710, %6447 ], [ %4710, %6442 ]
  %6456 = phi float [ %6415, %6413 ], [ %6451, %6447 ], [ %6432, %6442 ]
  %6457 = phi float [ %6427, %6413 ], [ %6433, %6447 ], [ %6433, %6442 ]
  %6458 = phi float [ 1.000000e+00, %6413 ], [ %6452, %6447 ], [ %6434, %6442 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6459 = call float @dx.op.binary.f32(i32 36, float %6456, float 3.225500e+04)  ; FMin(a,b)
  %6460 = call float @dx.op.binary.f32(i32 36, float %6457, float 3.225500e+04)  ; FMin(a,b)
  %6461 = call float @dx.op.binary.f32(i32 36, float %6458, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6460)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6461)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6462 = call float @dx.op.binary.f32(i32 36, float %4706, float 3.225500e+04)  ; FMin(a,b)
  %6463 = call float @dx.op.binary.f32(i32 36, float %6454, float 3.225500e+04)  ; FMin(a,b)
  %6464 = call float @dx.op.binary.f32(i32 36, float %6455, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6462)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6463)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6464)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!57 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!58 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!59 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !85}
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
!81 = !{!82, !83}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!83 = !{i32 1, !"SV_Target", i8 9, i8 16, !84, i8 0, i32 1, i8 4, i32 1, i8 0, !69}
!84 = !{i32 1}
!85 = !{i32 0, i64 16}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !98, !100, !102}
!96 = distinct !{!96, !97, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!97 = distinct !{!97, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!98 = distinct !{!98, !99, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!99 = distinct !{!99, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!100 = distinct !{!100, !101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!101 = distinct !{!101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!102 = distinct !{!102, !103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!103 = distinct !{!103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !93, i64 0}
!117 = !{!118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!118 = distinct !{!118, !119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!119 = distinct !{!119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!120 = distinct !{!120, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!121 = distinct !{!121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!122 = distinct !{!122, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!123 = distinct !{!123, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!124 = distinct !{!124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!125 = distinct !{!125, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!126 = distinct !{!126, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!127 = distinct !{!127, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!131 = distinct !{!131, !132, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!132 = distinct !{!132, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"\01?sort@@YAXAIAM00@Z: %c"}
!135 = distinct !{!135, !"\01?sort@@YAXAIAM00@Z"}
!136 = !{!137, !138, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!137 = distinct !{!137, !135, !"\01?sort@@YAXAIAM00@Z: %a"}
!138 = distinct !{!138, !135, !"\01?sort@@YAXAIAM00@Z: %b"}
!139 = !{!138}
!140 = !{!137, !134, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!141 = !{!137}
!142 = !{!138, !134, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!151 = !{!147}
!152 = !{!148, !144, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 2}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}

