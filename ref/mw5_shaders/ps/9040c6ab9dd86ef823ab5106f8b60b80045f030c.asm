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
; shader hash: 1c15e1dc1ebded7f0b547ec90a2421ba
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
;   [192 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %205 = extractvalue %dx.types.ResRet.f32 %203, 2
  %206 = fadd fast float %204, %198
  %207 = fadd fast float %205, %198
  %208 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %209 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = shl i32 %211, 4
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %211, 7
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %211, 22
  %219 = shl nuw nsw i32 %218, 5
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = lshr i32 %222, 8
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = lshr i32 %222, 16
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = fmul fast float %243, 0x3F50624DE0000000
  %247 = fmul fast float %245, 0x3F50624DE0000000
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %259, label %252

; <label>:252                                     ; preds = %194
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = add i32 %254, 0
  %256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %256, %dx.types.Handle %82, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 3
  br label %259

; <label>:259                                     ; preds = %252, %194
  %260 = phi float [ 1.000000e+00, %194 ], [ %258, %252 ]
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = or i32 %264, %262
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %880, label %267

; <label>:267                                     ; preds = %259
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = lshr i32 %269, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %271, 0x3F50624DE0000000
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  %277 = lshr i32 %274, 24
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = lshr i32 %285, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = shl i32 %285, 4
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 7
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %297 = fmul fast float %296, 1.000000e+03
  %298 = fmul fast float %246, %297
  %299 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %300 = fadd fast float %299, %237
  %301 = fmul fast float %247, %297
  %302 = call float @dx.op.unary.f32(i32 22, float %301)  ; Frc(value)
  %303 = fadd fast float %302, %239
  %304 = fmul fast float %272, %297
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = fmul fast float %305, 0x401921FB60000000
  %307 = fadd fast float %306, %288
  %308 = call float @dx.op.unary.f32(i32 13, float %307)  ; Sin(value)
  %309 = call float @dx.op.unary.f32(i32 12, float %307)  ; Cos(value)
  %310 = fsub fast float -0.000000e+00, %308
  %311 = fadd fast float %71, -5.000000e-01
  %312 = fadd fast float %72, -5.000000e-01
  %313 = fmul fast float %281, %311
  %314 = fmul fast float %283, %312
  %315 = fadd fast float %313, 5.000000e-01
  %316 = fadd fast float %314, 5.000000e-01
  %317 = fmul fast float %291, %315
  %318 = fmul fast float %294, %316
  %319 = fmul fast float %309, %317
  %320 = call float @dx.op.tertiary.f32(i32 46, float %310, float %318, float %319)  ; FMad(a,b,c)
  %321 = fmul fast float %308, %317
  %322 = call float @dx.op.tertiary.f32(i32 46, float %309, float %318, float %321)  ; FMad(a,b,c)
  %323 = fadd fast float %300, %320
  %324 = fadd fast float %303, %322
  %325 = icmp ugt i32 %276, 1
  %326 = icmp ugt i32 %274, 33554431
  %327 = or i1 %326, %325
  br i1 %327, label %328, label %352

; <label>:328                                     ; preds = %267
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = lshr i32 %330, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = fmul fast float %296, %332
  %334 = call float @dx.op.unary.f32(i32 22, float %333)  ; Frc(value)
  %335 = mul nuw nsw i32 %276, %277
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %334, %336
  %338 = call float @dx.op.unary.f32(i32 27, float %337)  ; Round_ni(value)
  %339 = fptoui float %338 to i32
  %340 = urem i32 %339, %276
  %341 = udiv i32 %339, %277
  %342 = call float @dx.op.unary.f32(i32 22, float %323)  ; Frc(value)
  %343 = call float @dx.op.unary.f32(i32 22, float %324)  ; Frc(value)
  %344 = uitofp i32 %340 to float
  %345 = uitofp i32 %341 to float
  %346 = fadd fast float %342, %344
  %347 = fadd fast float %343, %345
  %348 = uitofp i32 %276 to float
  %349 = uitofp i32 %277 to float
  %350 = fdiv fast float %346, %348
  %351 = fdiv fast float %347, %349
  br label %352

; <label>:352                                     ; preds = %328, %267
  %353 = phi float [ %350, %328 ], [ %323, %267 ]
  %354 = phi float [ %351, %328 ], [ %324, %267 ]
  %355 = and i32 %262, 256
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %401, label %357

; <label>:357                                     ; preds = %352
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = add i32 %359, 0
  %361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %361, %dx.types.Handle %82, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = shl i32 %365, 4
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %365, 7
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = fsub fast float 1.000000e+00, %260
  %373 = call float @dx.op.binary.f32(i32 35, float %372, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %374 = bitcast float %260 to i32
  %375 = sitofp i32 %374 to float
  %376 = fadd fast float %375, 0xC1CFBF8940000000
  %377 = fmul fast float %371, %376
  %378 = fadd fast float %377, 0x41CFBF8940000000
  %379 = fptosi float %378 to i32
  %380 = bitcast i32 %379 to float
  %381 = bitcast float %373 to i32
  %382 = sitofp i32 %381 to float
  %383 = fadd fast float %382, 0xC1CFBF8940000000
  %384 = fmul fast float %383, %371
  %385 = fadd fast float %384, 0x41CFBF8940000000
  %386 = fptosi float %385 to i32
  %387 = bitcast i32 %386 to float
  %388 = fmul fast float %380, %368
  %389 = fmul fast float %387, %368
  %390 = fsub fast float %373, %388
  %391 = fadd fast float %389, %373
  %392 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %393 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %394 = fsub fast float %363, %392
  %395 = fsub fast float %393, %392
  %396 = bitcast float %395 to i32
  %397 = sub nsw i32 2129859010, %396
  %398 = bitcast i32 %397 to float
  %399 = fmul fast float %398, %394
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  br label %401

; <label>:401                                     ; preds = %357, %352
  %402 = phi float [ %400, %357 ], [ %260, %352 ]
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 128
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %422, label %407

; <label>:407                                     ; preds = %401
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = add i32 %409, 0
  %411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %411, %dx.types.Handle %82, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 524288
  %417 = icmp ne i32 %416, 0
  %418 = fcmp fast ogt float %413, 0x3FE0101020000000
  %419 = select i1 %418, float 1.000000e+00, float 0.000000e+00
  %420 = select i1 %417, float %419, float %413
  %421 = fmul fast float %420, %402
  br label %422

; <label>:422                                     ; preds = %407, %401
  %423 = phi float [ %421, %407 ], [ %402, %401 ]
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 16
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %621, label %428

; <label>:428                                     ; preds = %422
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = add i32 %432, 0
  %434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %434, %dx.types.Handle %81, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = and i32 %430, 255
  %441 = uitofp i32 %440 to float
  %442 = lshr i32 %430, 8
  %443 = and i32 %442, 255
  %444 = uitofp i32 %443 to float
  %445 = fmul fast float %439, %441
  %446 = fadd fast float %445, %444
  %447 = fmul fast float %446, 0x3F70101000000000
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 512
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %459, label %452

; <label>:452                                     ; preds = %428
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = add i32 %454, 0
  %456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %456, %dx.types.Handle %82, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  br label %459

; <label>:459                                     ; preds = %452, %428
  %460 = phi float [ %458, %452 ], [ 1.000000e+00, %428 ]
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 33554432
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %568, label %465

; <label>:465                                     ; preds = %459
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 24
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = and i32 %477, 255
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %482, 0x3F70101020000000
  %484 = lshr i32 %477, 8
  %485 = and i32 %484, 255
  %486 = uitofp i32 %485 to float
  %487 = fmul fast float %486, 0x3F70101020000000
  %488 = lshr i32 %477, 16
  %489 = and i32 %488, 255
  %490 = uitofp i32 %489 to float
  %491 = fmul fast float %490, 0x3F70101020000000
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 24
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %495, 0x3F70101020000000
  %497 = and i32 %493, 255
  %498 = uitofp i32 %497 to float
  %499 = fmul fast float %498, 0x3F70101020000000
  %500 = lshr i32 %493, 8
  %501 = and i32 %500, 255
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101020000000
  %504 = lshr i32 %493, 16
  %505 = and i32 %504, 255
  %506 = uitofp i32 %505 to float
  %507 = fmul fast float %506, 0x3F70101020000000
  %508 = bitcast float %436 to i32
  %509 = ashr i32 %508, 1
  %510 = sub nsw i32 1597463174, %509
  %511 = bitcast i32 %510 to float
  %512 = fmul fast float %436, 5.000000e-01
  %513 = fmul fast float %511, %511
  %514 = fmul fast float %513, %512
  %515 = fsub fast float 1.500000e+00, %514
  %516 = fmul fast float %511, %436
  %517 = fmul fast float %516, %515
  %518 = bitcast float %437 to i32
  %519 = ashr i32 %518, 1
  %520 = sub nsw i32 1597463174, %519
  %521 = bitcast i32 %520 to float
  %522 = fmul fast float %437, 5.000000e-01
  %523 = fmul fast float %521, %521
  %524 = fmul fast float %523, %522
  %525 = fsub fast float 1.500000e+00, %524
  %526 = fmul fast float %521, %437
  %527 = fmul fast float %526, %525
  %528 = bitcast float %438 to i32
  %529 = ashr i32 %528, 1
  %530 = sub nsw i32 1597463174, %529
  %531 = bitcast i32 %530 to float
  %532 = fmul fast float %438, 5.000000e-01
  %533 = fmul fast float %531, %531
  %534 = fmul fast float %533, %532
  %535 = fsub fast float 1.500000e+00, %534
  %536 = fmul fast float %531, %438
  %537 = fmul fast float %536, %535
  %538 = fsub fast float %517, %499
  %539 = fsub fast float %527, %503
  %540 = fsub fast float %537, %507
  %541 = fmul fast float %538, %469
  %542 = fmul fast float %539, %471
  %543 = fmul fast float %540, %475
  %544 = fadd fast float %541, %483
  %545 = fadd fast float %542, %487
  %546 = fadd fast float %543, %491
  %547 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %548 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  %549 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  %550 = fmul fast float %547, %547
  %551 = fmul fast float %548, %548
  %552 = fmul fast float %549, %549
  %553 = fsub fast float %550, %436
  %554 = fsub fast float %551, %437
  %555 = fsub fast float %552, %438
  %556 = fmul fast float %553, %460
  %557 = fmul fast float %554, %460
  %558 = fmul fast float %555, %460
  %559 = fadd fast float %556, %436
  %560 = fadd fast float %557, %437
  %561 = fadd fast float %558, %438
  %562 = fadd fast float %480, %447
  %563 = fsub fast float %562, %496
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = fsub fast float %564, %447
  %566 = fmul fast float %565, %460
  %567 = fadd fast float %566, %447
  br label %621

; <label>:568                                     ; preds = %459
  %569 = and i32 %462, 134217728
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %605, label %571

; <label>:571                                     ; preds = %568
  %572 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %573 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %574 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %575 = fadd fast float %572, -5.000000e-01
  %576 = fadd fast float %573, -5.000000e-01
  %577 = fadd fast float %574, -5.000000e-01
  %578 = fmul fast float %575, %460
  %579 = fmul fast float %576, %460
  %580 = fmul fast float %577, %460
  %581 = fadd fast float %578, 5.000000e-01
  %582 = fadd fast float %579, 5.000000e-01
  %583 = fadd fast float %580, 5.000000e-01
  %584 = call float @dx.op.unary.f32(i32 24, float %436)  ; Sqrt(value)
  %585 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %586 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %587 = fmul fast float %581, 2.000000e+00
  %588 = fsub fast float 1.000000e+00, %587
  %589 = fmul fast float %588, %584
  %590 = fadd fast float %589, %587
  %591 = fmul fast float %590, %584
  %592 = fmul fast float %582, 2.000000e+00
  %593 = fsub fast float 1.000000e+00, %592
  %594 = fmul fast float %593, %585
  %595 = fadd fast float %594, %592
  %596 = fmul fast float %595, %585
  %597 = fmul fast float %583, 2.000000e+00
  %598 = fsub fast float 1.000000e+00, %597
  %599 = fmul fast float %598, %586
  %600 = fadd fast float %599, %597
  %601 = fmul fast float %600, %586
  %602 = fmul fast float %591, %591
  %603 = fmul fast float %596, %596
  %604 = fmul fast float %601, %601
  br label %621

; <label>:605                                     ; preds = %568
  %606 = fmul fast float %225, %225
  %607 = fmul fast float %229, %229
  %608 = fmul fast float %233, %233
  %609 = fadd fast float %606, -1.000000e+00
  %610 = fadd fast float %607, -1.000000e+00
  %611 = fadd fast float %608, -1.000000e+00
  %612 = fmul fast float %460, %609
  %613 = fmul fast float %460, %610
  %614 = fmul fast float %460, %611
  %615 = fadd fast float %612, 1.000000e+00
  %616 = fadd fast float %613, 1.000000e+00
  %617 = fadd fast float %614, 1.000000e+00
  %618 = fmul fast float %615, %436
  %619 = fmul fast float %616, %437
  %620 = fmul fast float %617, %438
  br label %621

; <label>:621                                     ; preds = %605, %571, %465, %422
  %622 = phi float [ %567, %465 ], [ %447, %571 ], [ %447, %605 ], [ 0x3FA23C0BE0000000, %422 ]
  %623 = phi float [ %559, %465 ], [ %602, %571 ], [ %618, %605 ], [ 1.000000e+00, %422 ]
  %624 = phi float [ %560, %465 ], [ %603, %571 ], [ %619, %605 ], [ 1.000000e+00, %422 ]
  %625 = phi float [ %561, %465 ], [ %604, %571 ], [ %620, %605 ], [ 1.000000e+00, %422 ]
  %626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.i32 %626, 1
  %628 = and i32 %627, 1
  %629 = icmp ne i32 %628, 0
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 32
  %633 = icmp ne i32 %632, 0
  %634 = and i1 %629, %633
  %635 = select i1 %634, float 1.000000e+00, float %623
  %636 = select i1 %634, float 0x3FD3333340000000, float %624
  %637 = select i1 %634, float 0x3FD3333340000000, float %625
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 32
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %711, label %642

; <label>:642                                     ; preds = %621
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %648, %dx.types.Handle %81, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = extractvalue %dx.types.ResRet.f32 %649, 3
  %654 = and i32 %644, 255
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %644, 8
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = lshr i32 %644, 16
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101000000000
  %663 = fmul fast float %650, %655
  %664 = fadd fast float %663, %658
  %665 = fmul fast float %664, 0x3F70101000000000
  %666 = fadd fast float %651, -5.000000e-01
  %667 = fadd fast float %653, -5.000000e-01
  %668 = fmul fast float %666, %662
  %669 = fmul fast float %667, %662
  %670 = fadd fast float %668, 5.000000e-01
  %671 = fadd fast float %669, 5.000000e-01
  %672 = fmul fast float %670, 2.000000e+00
  %673 = fadd fast float %672, -1.000000e+00
  %674 = fmul fast float %671, 2.000000e+00
  %675 = fadd fast float %674, -1.000000e+00
  %676 = fadd fast float %673, %675
  %677 = fmul fast float %676, 5.000000e-01
  %678 = fsub fast float %673, %675
  %679 = fmul fast float %678, 5.000000e-01
  %680 = call float @dx.op.unary.f32(i32 6, float %677)  ; FAbs(value)
  %681 = fsub fast float 1.000000e+00, %680
  %682 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %683 = fsub fast float %681, %682
  %684 = call float @dx.op.dot3.f32(i32 55, float %677, float %679, float %683, float %677, float %679, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = call float @dx.op.unary.f32(i32 25, float %684)  ; Rsqrt(value)
  %686 = fmul fast float %677, %685
  %687 = fmul fast float %679, %685
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 67108864
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %707, label %692

; <label>:692                                     ; preds = %642
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 65535
  %696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %695)  ; LegacyF16ToF32(value)
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 65535
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = lshr i32 %694, 16
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = fsub fast float %665, %702
  %704 = fmul fast float %703, %696
  %705 = fadd fast float %704, %700
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  br label %707

; <label>:707                                     ; preds = %692, %642
  %708 = phi float [ %706, %692 ], [ %665, %642 ]
  %709 = call float @dx.op.dot2.f32(i32 54, float %686, float %687, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %710 = call float @dx.op.dot2.f32(i32 54, float %686, float %687, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %711

; <label>:711                                     ; preds = %707, %621
  %712 = phi float [ %708, %707 ], [ 0x3FD6666660000000, %621 ]
  %713 = phi float [ %709, %707 ], [ 0.000000e+00, %621 ]
  %714 = phi float [ %710, %707 ], [ 0.000000e+00, %621 ]
  %715 = phi float [ %652, %707 ], [ 1.000000e+00, %621 ]
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = lshr i32 %717, 22
  %719 = shl nuw nsw i32 %718, 5
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 64
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %757, label %725

; <label>:725                                     ; preds = %711
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 131072
  %733 = icmp eq i32 %732, 0
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %81, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = fmul fast float %735, %214
  %739 = fmul fast float %736, %217
  %740 = fmul fast float %737, %220
  br i1 %733, label %747, label %741

; <label>:741                                     ; preds = %725
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = fmul fast float %743, %738
  %745 = fmul fast float %743, %739
  %746 = fmul fast float %743, %740
  br label %747

; <label>:747                                     ; preds = %741, %725
  %748 = phi float [ %744, %741 ], [ %738, %725 ]
  %749 = phi float [ %745, %741 ], [ %739, %725 ]
  %750 = phi float [ %746, %741 ], [ %740, %725 ]
  %751 = fmul fast float %748, %720
  %752 = select i1 %195, float %751, float %748
  %753 = call float @dx.op.dot3.f32(i32 55, float %752, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = select i1 %195, float 0.000000e+00, float %748
  %755 = select i1 %195, float %753, float %749
  %756 = select i1 %195, float 0.000000e+00, float %750
  br label %757

; <label>:757                                     ; preds = %747, %711
  %758 = phi float [ %754, %747 ], [ 0.000000e+00, %711 ]
  %759 = phi float [ %755, %747 ], [ 0.000000e+00, %711 ]
  %760 = phi float [ %756, %747 ], [ 0.000000e+00, %711 ]
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 1024
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %793, label %765

; <label>:765                                     ; preds = %757
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 255
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F70101020000000
  %771 = lshr i32 %767, 8
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %773, 0x3F70101020000000
  %775 = lshr i32 %767, 16
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %777, 0x3F70101020000000
  %779 = fmul fast float %770, %770
  %780 = fmul fast float %774, %774
  %781 = fmul fast float %778, %778
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = add i32 %783, 0
  %785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %785, %dx.types.Handle %82, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = fmul fast float %779, %787
  %791 = fmul fast float %780, %788
  %792 = fmul fast float %781, %789
  br label %793

; <label>:793                                     ; preds = %765, %757
  %794 = phi float [ %790, %765 ], [ 0.000000e+00, %757 ]
  %795 = phi float [ %791, %765 ], [ 0.000000e+00, %757 ]
  %796 = phi float [ %792, %765 ], [ 0.000000e+00, %757 ]
  %797 = fcmp fast ogt float %794, 0.000000e+00
  %798 = fcmp fast ogt float %795, 0.000000e+00
  %799 = fcmp fast ogt float %796, 0.000000e+00
  %800 = call float @dx.op.unary.f32(i32 23, float %794)  ; Log(value)
  %801 = call float @dx.op.unary.f32(i32 23, float %795)  ; Log(value)
  %802 = call float @dx.op.unary.f32(i32 23, float %796)  ; Log(value)
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = lshr i32 %804, 7
  %806 = and i32 %805, 32752
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = fmul fast float %800, 0xBFE62E4300000000
  %809 = fmul fast float %808, %807
  %810 = fmul fast float %801, 0xBFE62E4300000000
  %811 = fmul fast float %810, %807
  %812 = fmul fast float %802, 0xBFE62E4300000000
  %813 = fmul fast float %812, %807
  %814 = select i1 %797, float %809, float 1.270000e+02
  %815 = select i1 %798, float %811, float 1.270000e+02
  %816 = select i1 %799, float %813, float 1.270000e+02
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 10240
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %863, label %821

; <label>:821                                     ; preds = %793
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %82, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 1
  %828 = extractvalue %dx.types.ResRet.f32 %826, 3
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 1048576
  %832 = icmp ne i32 %831, 0
  %833 = and i32 %830, 8192
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %849, label %835

; <label>:835                                     ; preds = %821
  %836 = extractvalue %dx.types.ResRet.f32 %826, 2
  %837 = select i1 %832, float %836, float %827
  %838 = extractvalue %dx.types.ResRet.f32 %826, 0
  %839 = select i1 %832, float %838, float %827
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 16
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F80101020000000
  %846 = fmul fast float %845, %839
  %847 = fmul fast float %845, %827
  %848 = fmul fast float %845, %837
  br label %849

; <label>:849                                     ; preds = %835, %821
  %850 = phi float [ %846, %835 ], [ 0.000000e+00, %821 ]
  %851 = phi float [ %847, %835 ], [ 0.000000e+00, %821 ]
  %852 = phi float [ %848, %835 ], [ 0.000000e+00, %821 ]
  %853 = and i32 %830, 2048
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %863, label %855

; <label>:855                                     ; preds = %849
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = shl i32 %857, 4
  %859 = and i32 %858, 32752
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = fmul fast float %860, %828
  %862 = call float @dx.op.binary.f32(i32 35, float %861, float 0x3F70101020000000)  ; FMax(a,b)
  br label %863

; <label>:863                                     ; preds = %855, %849, %793
  %864 = phi float [ %850, %855 ], [ %850, %849 ], [ 0.000000e+00, %793 ]
  %865 = phi float [ %851, %855 ], [ %851, %849 ], [ 0.000000e+00, %793 ]
  %866 = phi float [ %852, %855 ], [ %852, %849 ], [ 0.000000e+00, %793 ]
  %867 = phi float [ %862, %855 ], [ 0x3F70101020000000, %849 ], [ 0x3F70101020000000, %793 ]
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = lshr i32 %869, 8
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = call float @dx.op.dot3.f32(i32 55, float %635, float %636, float %637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = fmul fast float %874, %875
  %877 = fadd fast float %876, %871
  %878 = fmul fast float %877, 0x3F70101020000000
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  br label %880

; <label>:880                                     ; preds = %863, %259
  %881 = phi float [ 0.000000e+00, %259 ], [ %713, %863 ]
  %882 = phi float [ 0.000000e+00, %259 ], [ %714, %863 ]
  %883 = phi float [ 0.000000e+00, %259 ], [ %635, %863 ]
  %884 = phi float [ 0.000000e+00, %259 ], [ %636, %863 ]
  %885 = phi float [ 0.000000e+00, %259 ], [ %637, %863 ]
  %886 = phi float [ 0.000000e+00, %259 ], [ %758, %863 ]
  %887 = phi float [ 0.000000e+00, %259 ], [ %759, %863 ]
  %888 = phi float [ 0.000000e+00, %259 ], [ %760, %863 ]
  %889 = phi float [ 0.000000e+00, %259 ], [ %864, %863 ]
  %890 = phi float [ 0.000000e+00, %259 ], [ %865, %863 ]
  %891 = phi float [ 0.000000e+00, %259 ], [ %866, %863 ]
  %892 = phi float [ 0.000000e+00, %259 ], [ %814, %863 ]
  %893 = phi float [ 0.000000e+00, %259 ], [ %815, %863 ]
  %894 = phi float [ 0.000000e+00, %259 ], [ %816, %863 ]
  %895 = phi float [ 0.000000e+00, %259 ], [ %622, %863 ]
  %896 = phi float [ 0.000000e+00, %259 ], [ %423, %863 ]
  %897 = phi float [ 0.000000e+00, %259 ], [ %712, %863 ]
  %898 = phi float [ 0.000000e+00, %259 ], [ %715, %863 ]
  %899 = phi float [ 0.000000e+00, %259 ], [ %867, %863 ]
  %900 = phi float [ 0.000000e+00, %259 ], [ %879, %863 ]
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = call float @dx.op.dot2.f32(i32 54, float %881, float %882, float %881, float %882)  ; Dot2(ax,ay,bx,by)
  %904 = fmul fast float %903, 0x3FE3333340000000
  %905 = fsub fast float 1.000000e+00, %904
  %906 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %905, float %881, float %882, float %905)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call float @dx.op.unary.f32(i32 25, float %906)  ; Rsqrt(value)
  %908 = fmul fast float %907, %881
  %909 = fmul fast float %907, %882
  %910 = fmul fast float %905, %907
  %911 = fmul fast float %910, %88
  %912 = fmul fast float %910, %89
  %913 = fmul fast float %910, %90
  %914 = fmul fast float %908, %64
  %915 = fmul fast float %908, %65
  %916 = fmul fast float %908, %66
  %917 = fmul fast float %93, %67
  %918 = fmul fast float %917, %909
  %919 = fmul fast float %96, %67
  %920 = fmul fast float %919, %909
  %921 = fmul fast float %99, %67
  %922 = fmul fast float %921, %909
  %923 = fadd fast float %918, %914
  %924 = fmul fast float %923, %87
  %925 = fadd fast float %924, %911
  %926 = fadd fast float %920, %915
  %927 = fmul fast float %926, %87
  %928 = fadd fast float %927, %912
  %929 = fadd fast float %922, %916
  %930 = fmul fast float %929, %87
  %931 = fadd fast float %930, %913
  %932 = call float @dx.op.dot3.f32(i32 55, float %925, float %928, float %931, float %925, float %928, float %931)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = call float @dx.op.unary.f32(i32 25, float %932)  ; Rsqrt(value)
  %934 = fmul fast float %925, %933
  %935 = fmul fast float %928, %933
  %936 = fmul fast float %931, %933
  %937 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %938 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %939 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %940 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %941 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %942 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %943 = fadd fast float %937, %133
  %944 = fadd fast float %938, %134
  %945 = fadd fast float %939, %135
  %946 = fadd fast float %940, %133
  %947 = fadd fast float %941, %134
  %948 = fadd fast float %942, %135
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %956 = fmul fast float %950, %85
  %957 = fmul fast float %956, %954
  %958 = fmul fast float %951, %86
  %959 = fmul fast float %958, %955
  %960 = fptoui float %957 to i32
  %961 = fptoui float %959 to i32
  %962 = fadd fast float %950, -1.000000e+00
  %963 = fadd fast float %951, -1.000000e+00
  %964 = fptoui float %962 to i32
  %965 = fptoui float %963 to i32
  %966 = call i32 @dx.op.binary.i32(i32 40, i32 %960, i32 %964)  ; UMin(a,b)
  %967 = call i32 @dx.op.binary.i32(i32 40, i32 %961, i32 %965)  ; UMin(a,b)
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %971 = fmul fast float %969, %76
  %972 = fsub fast float %971, %970
  %973 = fadd fast float %952, -1.000000e+00
  %974 = call float @dx.op.binary.f32(i32 36, float %972, float %973)  ; FMin(a,b)
  %975 = fptoui float %974 to i32
  %976 = fptoui float %950 to i32
  %977 = fptoui float %951 to i32
  %978 = mul i32 %975, %977
  %979 = add i32 %978, %967
  %980 = mul i32 %979, %976
  %981 = add i32 %980, %966
  %982 = shl i32 %981, 2
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 1023
  %986 = lshr i32 %984, 10
  %987 = icmp eq i32 %985, 0
  br i1 %987, label %1491, label %988

; <label>:988                                     ; preds = %880
  %989 = and i32 %984, 1023
  br label %990

; <label>:990                                     ; preds = %1122, %988
  %991 = phi float [ %1123, %1122 ], [ 0.000000e+00, %988 ]
  %992 = phi float [ %1124, %1122 ], [ %902, %988 ]
  %993 = phi float [ %1125, %1122 ], [ %900, %988 ]
  %994 = phi float [ %1126, %1122 ], [ %892, %988 ]
  %995 = phi float [ %1127, %1122 ], [ %893, %988 ]
  %996 = phi float [ %1128, %1122 ], [ %894, %988 ]
  %997 = phi float [ %1129, %1122 ], [ 0.000000e+00, %988 ]
  %998 = phi float [ %1130, %1122 ], [ 0.000000e+00, %988 ]
  %999 = phi float [ %1131, %1122 ], [ %889, %988 ]
  %1000 = phi float [ %1132, %1122 ], [ %890, %988 ]
  %1001 = phi float [ %1133, %1122 ], [ %891, %988 ]
  %1002 = phi float [ %1134, %1122 ], [ %886, %988 ]
  %1003 = phi float [ %1135, %1122 ], [ %887, %988 ]
  %1004 = phi float [ %1136, %1122 ], [ %888, %988 ]
  %1005 = phi float [ %1137, %1122 ], [ %934, %988 ]
  %1006 = phi float [ %1138, %1122 ], [ %935, %988 ]
  %1007 = phi float [ %1139, %1122 ], [ %936, %988 ]
  %1008 = phi float [ %1140, %1122 ], [ %898, %988 ]
  %1009 = phi float [ %1141, %1122 ], [ %897, %988 ]
  %1010 = phi float [ %1142, %1122 ], [ 0.000000e+00, %988 ]
  %1011 = phi float [ %1143, %1122 ], [ %895, %988 ]
  %1012 = phi float [ %1144, %1122 ], [ %883, %988 ]
  %1013 = phi float [ %1145, %1122 ], [ %884, %988 ]
  %1014 = phi float [ %1146, %1122 ], [ %885, %988 ]
  %1015 = phi i32 [ %1072, %1122 ], [ 0, %988 ]
  %1016 = add nuw nsw i32 %1015, %986
  %1017 = shl i32 %1016, 2
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = shl i32 %1019, 8
  %1021 = or i32 %1020, 48
  %1022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = extractvalue %dx.types.ResRet.f32 %1022, 3
  %1027 = or i32 %1020, 64
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.i32 %1028, 1
  %1031 = or i32 %1020, 80
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1035 = or i32 %1020, 96
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = or i32 %1020, 112
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1044 = or i32 %1020, 128
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = extractvalue %dx.types.ResRet.f32 %1045, 3
  %1050 = or i32 %1020, 144
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = extractvalue %dx.types.ResRet.f32 %1051, 3
  %1056 = or i32 %1020, 160
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1062 = or i32 %1020, 192
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = or i32 %1020, 208
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = or i32 %1020, 248
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = add nuw nsw i32 %1015, 1
  %1073 = bitcast float %1026 to i32
  %1074 = and i32 %1073, 512
  %1075 = icmp eq i32 %1074, 0
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1081 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1082 = or i32 %1020, 16
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1089 = or i32 %1020, 32
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = extractvalue %dx.types.ResRet.f32 %1090, 3
  %1095 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1081)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 6, float %1096)  ; FAbs(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1088)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 6, float %1098)  ; FAbs(value)
  %1100 = call float @dx.op.unary.f32(i32 6, float %1095)  ; FAbs(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1102 = fadd fast float %1099, %1097
  %1103 = fadd fast float %1102, %1101
  %1104 = fcmp fast oeq float %1103, 0.000000e+00
  %1105 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %943, float %944, float %945, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1106 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %943, float %944, float %945, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1107 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %946, float %947, float %948, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1108 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %946, float %947, float %948, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1109 = fsub fast float %1105, %1081
  %1110 = fsub fast float %1107, %1081
  %1111 = fsub fast float %1106, %1088
  %1112 = fsub fast float %1108, %1088
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1116 = fadd fast float %1115, %1113
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1119 = fcmp fast ogt float %1117, %1118
  %1120 = and i1 %1104, %1119
  %1121 = and i1 %1075, %1120
  br i1 %1121, label %1148, label %1122

; <label>:1122                                    ; preds = %1477, %1229, %1148, %990
  %1123 = phi float [ %991, %1148 ], [ %1232, %1229 ], [ %1232, %1477 ], [ %991, %990 ]
  %1124 = phi float [ %992, %1148 ], [ %992, %1229 ], [ %1453, %1477 ], [ %992, %990 ]
  %1125 = phi float [ %993, %1148 ], [ %993, %1229 ], [ %1451, %1477 ], [ %993, %990 ]
  %1126 = phi float [ %994, %1148 ], [ %994, %1229 ], [ %1429, %1477 ], [ %994, %990 ]
  %1127 = phi float [ %995, %1148 ], [ %995, %1229 ], [ %1430, %1477 ], [ %995, %990 ]
  %1128 = phi float [ %996, %1148 ], [ %996, %1229 ], [ %1431, %1477 ], [ %996, %990 ]
  %1129 = phi float [ %997, %1148 ], [ %997, %1229 ], [ %1356, %1477 ], [ %997, %990 ]
  %1130 = phi float [ %998, %1148 ], [ %998, %1229 ], [ %1354, %1477 ], [ %998, %990 ]
  %1131 = phi float [ %999, %1148 ], [ %999, %1229 ], [ %1399, %1477 ], [ %999, %990 ]
  %1132 = phi float [ %1000, %1148 ], [ %1000, %1229 ], [ %1400, %1477 ], [ %1000, %990 ]
  %1133 = phi float [ %1001, %1148 ], [ %1001, %1229 ], [ %1401, %1477 ], [ %1001, %990 ]
  %1134 = phi float [ %1002, %1148 ], [ %1002, %1229 ], [ %1487, %1477 ], [ %1002, %990 ]
  %1135 = phi float [ %1003, %1148 ], [ %1003, %1229 ], [ %1488, %1477 ], [ %1003, %990 ]
  %1136 = phi float [ %1004, %1148 ], [ %1004, %1229 ], [ %1489, %1477 ], [ %1004, %990 ]
  %1137 = phi float [ %1005, %1148 ], [ %1005, %1229 ], [ %1335, %1477 ], [ %1005, %990 ]
  %1138 = phi float [ %1006, %1148 ], [ %1006, %1229 ], [ %1336, %1477 ], [ %1006, %990 ]
  %1139 = phi float [ %1007, %1148 ], [ %1007, %1229 ], [ %1337, %1477 ], [ %1007, %990 ]
  %1140 = phi float [ %1008, %1148 ], [ %1008, %1229 ], [ %1409, %1477 ], [ %1008, %990 ]
  %1141 = phi float [ %1009, %1148 ], [ %1009, %1229 ], [ %1406, %1477 ], [ %1009, %990 ]
  %1142 = phi float [ %1010, %1148 ], [ %1010, %1229 ], [ %1403, %1477 ], [ %1010, %990 ]
  %1143 = phi float [ %1011, %1148 ], [ %1011, %1229 ], [ %1352, %1477 ], [ %1011, %990 ]
  %1144 = phi float [ %1012, %1148 ], [ %1012, %1229 ], [ %1347, %1477 ], [ %1012, %990 ]
  %1145 = phi float [ %1013, %1148 ], [ %1013, %1229 ], [ %1348, %1477 ], [ %1013, %990 ]
  %1146 = phi float [ %1014, %1148 ], [ %1014, %1229 ], [ %1349, %1477 ], [ %1014, %990 ]
  %1147 = icmp eq i32 %1072, %989
  br i1 %1147, label %1490, label %990

; <label>:1148                                    ; preds = %990
  %1149 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1150 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1151 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1154 = extractvalue %dx.types.ResRet.i32 %1028, 3
  %1155 = extractvalue %dx.types.ResRet.i32 %1028, 2
  %1156 = add i32 %1154, 0
  %1157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1156, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1159 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1157, %dx.types.Handle %1158, float %1081, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float %1109, float %1111, float undef, float %1110, float %1112, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = fmul fast float %1160, %1153
  %1162 = fadd fast float %1161, %1152
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = fmul fast float %1081, %1037
  %1165 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1088, float %1164)  ; FMad(a,b,c)
  %1166 = fadd fast float %1165, %1151
  %1167 = fmul fast float %1081, %1039
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1088, float %1167)  ; FMad(a,b,c)
  %1169 = fadd fast float %1168, %1150
  %1170 = fmul fast float %1109, %1037
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1111, float %1170)  ; FMad(a,b,c)
  %1172 = fmul fast float %1109, %1039
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1111, float %1172)  ; FMad(a,b,c)
  %1174 = fmul fast float %1110, %1037
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1112, float %1174)  ; FMad(a,b,c)
  %1176 = fmul fast float %1110, %1039
  %1177 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1112, float %1176)  ; FMad(a,b,c)
  %1178 = add i32 %1155, 0
  %1179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1178, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1180 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1179, %dx.types.Handle %1158, float %1166, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float %1171, float %1173, float undef, float %1175, float %1177, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = and i32 %1073, 1024
  %1183 = icmp ne i32 %1182, 0
  %1184 = fcmp fast ogt float %1181, 0x3FE0101020000000
  %1185 = uitofp i1 %1184 to float
  %1186 = select i1 %1183, float %1185, float %1181
  %1187 = and i32 %1073, 8192
  %1188 = icmp ne i32 %1187, 0
  %1189 = select i1 %1188, float %1149, float 1.000000e+00
  %1190 = fmul fast float %1081, 2.000000e+00
  %1191 = fadd fast float %1190, -1.000000e+00
  %1192 = call float @dx.op.unary.f32(i32 6, float %1191)  ; FAbs(value)
  %1193 = fmul fast float %1192, %1070
  %1194 = fsub fast float %1193, %1070
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fmul fast float %1088, 2.000000e+00
  %1197 = fadd fast float %1196, -1.000000e+00
  %1198 = call float @dx.op.unary.f32(i32 6, float %1197)  ; FAbs(value)
  %1199 = fmul fast float %1198, %1071
  %1200 = fsub fast float %1199, %1071
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = fmul fast float %1100, %1033
  %1203 = fsub fast float %1202, %1033
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = fmul fast float %1163, %1189
  %1206 = fmul fast float %1205, %1160
  %1207 = fmul fast float %1206, %1195
  %1208 = fmul fast float %1207, %1186
  %1209 = fmul fast float %1208, %1201
  %1210 = fmul fast float %1209, %1204
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1214 = fsub fast float %1117, %1213
  %1215 = fmul fast float %1214, %1212
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fmul fast float %1210, %1034
  %1218 = fadd fast float %1210, %1034
  %1219 = fmul fast float %1218, %1043
  %1220 = fsub fast float %1219, %1043
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = and i32 %1073, 128
  %1223 = icmp ne i32 %1222, 0
  %1224 = select i1 %1223, float %1221, float %1217
  %1225 = fmul fast float %1224, %1216
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = fcmp fast ugt float %1225, %1227
  br i1 %1228, label %1229, label %1122

; <label>:1229                                    ; preds = %1148
  %1230 = select i1 %1188, float %1225, float 0.000000e+00
  %1231 = fadd fast float %1230, %991
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  br i1 %1188, label %1122, label %1233

; <label>:1233                                    ; preds = %1229
  %1234 = and i32 %1073, 4
  %1235 = and i32 %1073, 8
  %1236 = add i32 %1029, 0
  %1237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1236, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1239 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1237, %dx.types.Handle %1238, float %1166, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float %1171, float %1173, float undef, float %1175, float %1177, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = extractvalue %dx.types.ResRet.f32 %1239, 3
  %1244 = bitcast float %1055 to i32
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = lshr i32 %1244, 8
  %1248 = and i32 %1247, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1243, %1246
  %1251 = fadd fast float %1250, %1249
  %1252 = fmul fast float %1251, 0x3F70101000000000
  %1253 = add i32 %1030, 0
  %1254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1253, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1255 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1254, %dx.types.Handle %1238, float %1166, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float %1171, float %1173, float undef, float %1175, float %1177, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.ResRet.f32 %1255, 3
  %1260 = bitcast float %1049 to i32
  %1261 = and i32 %1260, 255
  %1262 = uitofp i32 %1261 to float
  %1263 = lshr i32 %1260, 8
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = lshr i32 %1260, 16
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101000000000
  %1270 = fmul fast float %1256, %1262
  %1271 = fadd fast float %1270, %1265
  %1272 = fmul fast float %1271, 0x3F70101000000000
  %1273 = fadd fast float %1257, -5.000000e-01
  %1274 = fadd fast float %1259, -5.000000e-01
  %1275 = fmul fast float %1273, %1269
  %1276 = fmul fast float %1274, %1269
  %1277 = fadd fast float %1275, 5.000000e-01
  %1278 = fadd fast float %1276, 5.000000e-01
  %1279 = fmul fast float %1240, %1058
  %1280 = fmul fast float %1241, %1059
  %1281 = fmul fast float %1242, %1060
  %1282 = fmul fast float %1277, 2.000000e+00
  %1283 = fadd fast float %1282, -1.000000e+00
  %1284 = fmul fast float %1278, 2.000000e+00
  %1285 = fadd fast float %1284, -1.000000e+00
  %1286 = fadd fast float %1283, %1285
  %1287 = fmul fast float %1286, 5.000000e-01
  %1288 = fsub fast float %1283, %1285
  %1289 = fmul fast float %1288, 5.000000e-01
  %1290 = call float @dx.op.unary.f32(i32 6, float %1287)  ; FAbs(value)
  %1291 = fsub fast float 1.000000e+00, %1290
  %1292 = call float @dx.op.unary.f32(i32 6, float %1289)  ; FAbs(value)
  %1293 = fsub fast float %1291, %1292
  %1294 = call float @dx.op.dot3.f32(i32 55, float %1287, float %1289, float %1293, float %1287, float %1289, float %1293)  ; Dot3(ax,ay,az,bx,by,bz)
  %1295 = call float @dx.op.unary.f32(i32 25, float %1294)  ; Rsqrt(value)
  %1296 = fmul fast float %1287, %1295
  %1297 = fmul fast float %1289, %1295
  %1298 = fmul fast float %1295, %1293
  %1299 = fmul fast float %1298, %1023
  %1300 = fmul fast float %1298, %1024
  %1301 = fmul fast float %1298, %1025
  %1302 = fmul fast float %1296, %1046
  %1303 = fmul fast float %1296, %1047
  %1304 = fmul fast float %1296, %1048
  %1305 = fadd fast float %1302, %1299
  %1306 = fadd fast float %1303, %1300
  %1307 = fadd fast float %1304, %1301
  %1308 = fmul fast float %1297, %1052
  %1309 = fmul fast float %1297, %1053
  %1310 = fmul fast float %1297, %1054
  %1311 = fadd fast float %1305, %1308
  %1312 = fadd fast float %1306, %1309
  %1313 = fadd fast float %1307, %1310
  %1314 = call float @dx.op.dot3.f32(i32 55, float %1311, float %1312, float %1313, float %1311, float %1312, float %1313)  ; Dot3(ax,ay,az,bx,by,bz)
  %1315 = call float @dx.op.unary.f32(i32 25, float %1314)  ; Rsqrt(value)
  %1316 = fmul fast float %1311, %1315
  %1317 = fmul fast float %1312, %1315
  %1318 = fmul fast float %1313, %1315
  %1319 = icmp ne i32 %1235, 0
  %1320 = select i1 %1319, float 1.000000e+00, float 0.000000e+00
  %1321 = fmul fast float %1225, %1320
  %1322 = and i32 %1073, 1
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1324, label %1328

; <label>:1324                                    ; preds = %1233
  %1325 = fsub fast float %1316, %1005
  %1326 = fsub fast float %1317, %1006
  %1327 = fsub fast float %1318, %1007
  br label %1328

; <label>:1328                                    ; preds = %1324, %1233
  %1329 = phi float [ %1325, %1324 ], [ %1316, %1233 ]
  %1330 = phi float [ %1326, %1324 ], [ %1317, %1233 ]
  %1331 = phi float [ %1327, %1324 ], [ %1318, %1233 ]
  %1332 = fmul float %1331, %1321
  %1333 = fmul float %1330, %1321
  %1334 = fmul float %1329, %1321
  %1335 = fadd fast float %1334, %1005
  %1336 = fadd fast float %1333, %1006
  %1337 = fadd fast float %1332, %1007
  %1338 = icmp ne i32 %1234, 0
  %1339 = select i1 %1338, float 1.000000e+00, float 0.000000e+00
  %1340 = fmul fast float %1225, %1339
  %1341 = fsub fast float %1279, %1012
  %1342 = fsub fast float %1280, %1013
  %1343 = fsub fast float %1281, %1014
  %1344 = fmul fast float %1341, %1340
  %1345 = fmul fast float %1342, %1340
  %1346 = fmul fast float %1343, %1340
  %1347 = fadd fast float %1344, %1012
  %1348 = fadd fast float %1345, %1013
  %1349 = fadd fast float %1346, %1014
  %1350 = fsub fast float %1252, %1011
  %1351 = fmul fast float %1350, %1340
  %1352 = fadd fast float %1351, %1011
  %1353 = fmul fast float %1340, %998
  %1354 = fsub fast float %998, %1353
  %1355 = fmul fast float %1340, %997
  %1356 = fsub fast float %997, %1355
  %1357 = bitcast float %1067 to i32
  %1358 = lshr i32 %1357, 16
  %1359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1358)  ; LegacyF16ToF32(value)
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 1
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1364, label %1389

; <label>:1364                                    ; preds = %1328
  %1365 = fadd fast float %1252, 0xBFB99999A0000000
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1366, 0x3FF1C71C80000000
  %1368 = fsub fast float 1.000000e+00, %1367
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = fmul fast float %1369, %1279
  %1371 = fmul fast float %1369, %1280
  %1372 = fmul fast float %1369, %1281
  %1373 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1374 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1375 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1376 = call float @dx.op.binary.f32(i32 35, float %1374, float %1375)  ; FMax(a,b)
  %1377 = call float @dx.op.binary.f32(i32 35, float %1373, float %1376)  ; FMax(a,b)
  %1378 = fcmp fast ogt float %1377, 0.000000e+00
  %1379 = bitcast float %1377 to i32
  %1380 = sub nsw i32 2129859010, %1379
  %1381 = bitcast i32 %1380 to float
  %1382 = select i1 %1378, float %1381, float 0.000000e+00
  %1383 = fmul fast float %1373, %1359
  %1384 = fmul fast float %1374, %1359
  %1385 = fmul fast float %1375, %1359
  %1386 = fmul fast float %1383, %1382
  %1387 = fmul fast float %1384, %1382
  %1388 = fmul fast float %1385, %1382
  br label %1389

; <label>:1389                                    ; preds = %1364, %1328
  %1390 = phi float [ %1359, %1328 ], [ %1386, %1364 ]
  %1391 = phi float [ %1359, %1328 ], [ %1387, %1364 ]
  %1392 = phi float [ %1359, %1328 ], [ %1388, %1364 ]
  %1393 = fsub fast float %1390, %999
  %1394 = fsub fast float %1391, %1000
  %1395 = fsub fast float %1392, %1001
  %1396 = fmul fast float %1393, %1340
  %1397 = fmul fast float %1394, %1340
  %1398 = fmul fast float %1395, %1340
  %1399 = fadd fast float %1396, %999
  %1400 = fadd fast float %1397, %1000
  %1401 = fadd fast float %1398, %1001
  %1402 = fadd fast float %1225, %1010
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = fsub fast float %1272, %1009
  %1405 = fmul fast float %1404, %1321
  %1406 = fadd fast float %1405, %1009
  %1407 = fsub fast float %1258, %1008
  %1408 = fmul fast float %1407, %1321
  %1409 = fadd fast float %1408, %1008
  br i1 %1323, label %1418, label %1410

; <label>:1410                                    ; preds = %1389
  %1411 = and i32 %1073, 32768
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1428, label %1413

; <label>:1413                                    ; preds = %1410
  %1414 = fmul fast float %1321, 1.270000e+02
  %1415 = fadd fast float %1414, %994
  %1416 = fadd fast float %1414, %995
  %1417 = fadd fast float %1414, %996
  br label %1428

; <label>:1418                                    ; preds = %1389
  %1419 = fsub fast float 1.270000e+02, %994
  %1420 = fsub fast float 1.270000e+02, %995
  %1421 = fsub fast float 1.270000e+02, %996
  %1422 = fmul fast float %1321, %1419
  %1423 = fmul fast float %1321, %1420
  %1424 = fmul fast float %1321, %1421
  %1425 = fadd fast float %1422, %994
  %1426 = fadd fast float %1423, %995
  %1427 = fadd fast float %1424, %996
  br label %1428

; <label>:1428                                    ; preds = %1418, %1413, %1410
  %1429 = phi float [ %1415, %1413 ], [ %994, %1410 ], [ %1425, %1418 ]
  %1430 = phi float [ %1416, %1413 ], [ %995, %1410 ], [ %1426, %1418 ]
  %1431 = phi float [ %1417, %1413 ], [ %996, %1410 ], [ %1427, %1418 ]
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1436 = fmul fast float %1435, %1432
  %1437 = fadd fast float %1436, %1434
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = bitcast float %1061 to i32
  %1440 = and i32 %1439, 65535
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = lshr i32 %1439, 16
  %1443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1442)  ; LegacyF16ToF32(value)
  %1444 = fcmp fast oge float %1441, 0.000000e+00
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = select i1 %1444, float %1441, float %1446
  %1448 = fadd fast float %1447, %1443
  %1449 = fsub fast float %1438, %993
  %1450 = fmul fast float %1449, %1225
  %1451 = fadd fast float %1450, %993
  %1452 = fmul fast float %1448, %1225
  %1453 = call float @dx.op.binary.f32(i32 35, float %992, float %1452)  ; FMax(a,b)
  %1454 = and i32 %1073, 16
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1477, label %1456

; <label>:1456                                    ; preds = %1428
  %1457 = add i32 %1064, 0
  %1458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1457, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1459 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1458, %dx.types.Handle %1238, float %1166, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float %1171, float %1173, float undef, float %1175, float %1177, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = extractvalue %dx.types.ResRet.f32 %1459, 2
  %1463 = and i32 %1357, 65535
  %1464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1463)  ; LegacyF16ToF32(value)
  %1465 = fmul fast float %1460, %1058
  %1466 = fmul fast float %1461, %1059
  %1467 = fmul fast float %1462, %1060
  %1468 = and i32 %1073, 16384
  %1469 = icmp ne i32 %1468, 0
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = select i1 %1469, float %1471, float 1.000000e+00
  %1473 = fmul fast float %1472, %1464
  %1474 = fmul fast float %1465, %1473
  %1475 = fmul fast float %1466, %1473
  %1476 = fmul fast float %1467, %1473
  br label %1477

; <label>:1477                                    ; preds = %1456, %1428
  %1478 = phi float [ %1474, %1456 ], [ 0.000000e+00, %1428 ]
  %1479 = phi float [ %1475, %1456 ], [ 0.000000e+00, %1428 ]
  %1480 = phi float [ %1476, %1456 ], [ 0.000000e+00, %1428 ]
  %1481 = fsub fast float %1478, %1002
  %1482 = fsub fast float %1479, %1003
  %1483 = fsub fast float %1480, %1004
  %1484 = fmul fast float %1481, %1225
  %1485 = fmul fast float %1482, %1225
  %1486 = fmul fast float %1483, %1225
  %1487 = fadd fast float %1484, %1002
  %1488 = fadd fast float %1485, %1003
  %1489 = fadd fast float %1486, %1004
  br label %1122

; <label>:1490                                    ; preds = %1122
  br label %1491

; <label>:1491                                    ; preds = %1490, %880
  %1492 = phi float [ 0.000000e+00, %880 ], [ %1123, %1490 ]
  %1493 = phi float [ %902, %880 ], [ %1124, %1490 ]
  %1494 = phi float [ %900, %880 ], [ %1125, %1490 ]
  %1495 = phi float [ %892, %880 ], [ %1126, %1490 ]
  %1496 = phi float [ %893, %880 ], [ %1127, %1490 ]
  %1497 = phi float [ %894, %880 ], [ %1128, %1490 ]
  %1498 = phi float [ 0.000000e+00, %880 ], [ %1129, %1490 ]
  %1499 = phi float [ 0.000000e+00, %880 ], [ %1130, %1490 ]
  %1500 = phi float [ %889, %880 ], [ %1131, %1490 ]
  %1501 = phi float [ %890, %880 ], [ %1132, %1490 ]
  %1502 = phi float [ %891, %880 ], [ %1133, %1490 ]
  %1503 = phi float [ %886, %880 ], [ %1134, %1490 ]
  %1504 = phi float [ %887, %880 ], [ %1135, %1490 ]
  %1505 = phi float [ %888, %880 ], [ %1136, %1490 ]
  %1506 = phi float [ %934, %880 ], [ %1137, %1490 ]
  %1507 = phi float [ %935, %880 ], [ %1138, %1490 ]
  %1508 = phi float [ %936, %880 ], [ %1139, %1490 ]
  %1509 = phi float [ %898, %880 ], [ %1140, %1490 ]
  %1510 = phi float [ %897, %880 ], [ %1141, %1490 ]
  %1511 = phi float [ 0.000000e+00, %880 ], [ %1142, %1490 ]
  %1512 = phi float [ %895, %880 ], [ %1143, %1490 ]
  %1513 = phi float [ %883, %880 ], [ %1144, %1490 ]
  %1514 = phi float [ %884, %880 ], [ %1145, %1490 ]
  %1515 = phi float [ %885, %880 ], [ %1146, %1490 ]
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1507, float %1508, float %1506, float %1507, float %1508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = call float @dx.op.unary.f32(i32 25, float %1516)  ; Rsqrt(value)
  %1518 = fmul fast float %1517, %1506
  %1519 = fmul fast float %1517, %1507
  %1520 = fmul fast float %1517, %1508
  %1521 = fadd fast float %1511, %896
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1523 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1519, float %1520, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1524 = call float @dx.op.unary.f32(i32 25, float %1523)  ; Rsqrt(value)
  %1525 = fmul fast float %1524, %1518
  %1526 = fmul fast float %1524, %1519
  %1527 = fmul fast float %1524, %1520
  %1528 = fadd fast float %1512, 0xBFB99999A0000000
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = fmul fast float %1529, 0x3FF1C71C80000000
  %1531 = call float @dx.op.binary.f32(i32 36, float %1512, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1532 = fsub fast float 1.000000e+00, %1530
  %1533 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1534 = fmul fast float %1533, %1513
  %1535 = fmul fast float %1533, %1514
  %1536 = fmul fast float %1533, %1515
  %1537 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1538 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1539 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1540 = fmul fast float %1530, %1513
  %1541 = fmul fast float %1530, %1514
  %1542 = fmul fast float %1530, %1515
  %1543 = fadd fast float %1540, %1531
  %1544 = fadd fast float %1541, %1531
  %1545 = fadd fast float %1542, %1531
  %1546 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1547 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1549 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 1
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1568, label %1554

; <label>:1554                                    ; preds = %1491
  %1555 = call float @dx.op.binary.f32(i32 35, float %1538, float %1539)  ; FMax(a,b)
  %1556 = call float @dx.op.binary.f32(i32 35, float %1537, float %1555)  ; FMax(a,b)
  %1557 = fcmp fast ogt float %1556, 0.000000e+00
  %1558 = bitcast float %1556 to i32
  %1559 = sub nsw i32 2129859010, %1558
  %1560 = bitcast i32 %1559 to float
  %1561 = select i1 %1557, float %1560, float 0.000000e+00
  %1562 = fmul fast float %1537, %1500
  %1563 = fmul fast float %1538, %1501
  %1564 = fmul fast float %1539, %1502
  %1565 = fmul fast float %1562, %1561
  %1566 = fmul fast float %1563, %1561
  %1567 = fmul fast float %1564, %1561
  br label %1568

; <label>:1568                                    ; preds = %1554, %1491
  %1569 = phi float [ %1565, %1554 ], [ %1500, %1491 ]
  %1570 = phi float [ %1566, %1554 ], [ %1501, %1491 ]
  %1571 = phi float [ %1567, %1554 ], [ %1502, %1491 ]
  %1572 = call float @dx.op.binary.f32(i32 36, float %1495, float 1.270000e+02)  ; FMin(a,b)
  %1573 = call float @dx.op.binary.f32(i32 36, float %1496, float 1.270000e+02)  ; FMin(a,b)
  %1574 = call float @dx.op.binary.f32(i32 36, float %1497, float 1.270000e+02)  ; FMin(a,b)
  %1575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.i32 %1575, 3
  %1577 = and i32 %1576, 8
  %1578 = icmp ne i32 %1577, 0
  %1579 = call float @dx.op.binary.f32(i32 35, float %1537, float %1513)  ; FMax(a,b)
  %1580 = call float @dx.op.binary.f32(i32 35, float %1538, float %1513)  ; FMax(a,b)
  %1581 = call float @dx.op.binary.f32(i32 35, float %1539, float %1513)  ; FMax(a,b)
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1537, float %1538, float %1539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = select i1 %195, float %1513, float %1537
  %1584 = select i1 %195, float %1582, float %1538
  %1585 = select i1 %195, float 1.000000e+00, float %1539
  %1586 = select i1 %1578, float %1579, float %1583
  %1587 = select i1 %1578, float %1580, float %1584
  %1588 = select i1 %1578, float %1581, float %1585
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1569, float %1570, float %1571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = select i1 %195, float %1589, float %1569
  %1591 = select i1 %195, float %1589, float %1570
  %1592 = select i1 %195, float %1589, float %1571
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  %1597 = fadd fast float %1594, %133
  %1598 = fadd fast float %1595, %134
  %1599 = fadd fast float %1596, %135
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1603 = fsub fast float %1597, %1601
  %1604 = fsub fast float %1598, %1602
  %1605 = fmul fast float %1603, %1603
  %1606 = fmul fast float %1604, %1604
  %1607 = fadd fast float %1605, %1606
  %1608 = call float @dx.op.unary.f32(i32 24, float %1607)  ; Sqrt(value)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1600, 2
  %1610 = fcmp fast olt float %1608, %1609
  br i1 %1610, label %1611, label %1678

; <label>:1611                                    ; preds = %1568
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1619 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1621 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1622 = extractvalue %dx.types.CBufRet.f32 %1614, 3
  %1623 = extractvalue %dx.types.CBufRet.f32 %1616, 3
  %1624 = fadd fast float %1621, %1597
  %1625 = fadd fast float %1622, %1598
  %1626 = fadd fast float %1623, %1599
  %1627 = fmul fast float %1624, %1613
  %1628 = call float @dx.op.tertiary.f32(i32 46, float %1625, float %1615, float %1627)  ; FMad(a,b,c)
  %1629 = call float @dx.op.tertiary.f32(i32 46, float %1626, float %1617, float %1628)  ; FMad(a,b,c)
  %1630 = fmul fast float %1624, %1618
  %1631 = call float @dx.op.tertiary.f32(i32 46, float %1625, float %1619, float %1630)  ; FMad(a,b,c)
  %1632 = call float @dx.op.tertiary.f32(i32 46, float %1626, float %1620, float %1631)  ; FMad(a,b,c)
  %1633 = fsub fast float %1629, %1621
  %1634 = fsub fast float %1632, %1622
  %1635 = fsub fast float %1633, %1601
  %1636 = fadd fast float %1635, %1609
  %1637 = fsub fast float %1634, %1602
  %1638 = fadd fast float %1637, %1609
  %1639 = extractvalue %dx.types.CBufRet.f32 %1600, 3
  %1640 = fmul fast float %1636, %1639
  %1641 = fmul fast float %1638, %1639
  %1642 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1644 = fsub fast float 1.000000e+00, %1642
  %1645 = fsub fast float 1.000000e+00, %1643
  %1646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %1644, float %1645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1647 = extractvalue %dx.types.ResRet.f32 %1646, 0
  %1648 = fcmp fast ugt float %1647, 0.000000e+00
  br i1 %1648, label %1649, label %1952

; <label>:1649                                    ; preds = %1611
  %1650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1651 = extractvalue %dx.types.CBufRet.f32 %1650, 2
  %1652 = fmul fast float %1651, %1647
  %1653 = extractvalue %dx.types.CBufRet.f32 %1650, 3
  %1654 = fadd fast float %1653, %1652
  %1655 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1656 = fadd fast float %1654, %1623
  %1657 = fmul fast float %1629, %1617
  %1658 = call float @dx.op.tertiary.f32(i32 46, float %1632, float %1620, float %1657)  ; FMad(a,b,c)
  %1659 = call float @dx.op.tertiary.f32(i32 46, float %1656, float %1655, float %1658)  ; FMad(a,b,c)
  %1660 = fsub fast float %1659, %1623
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1663 = fsub fast float %1660, %1662
  %1664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %1644, float %1645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %1644, float %1645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = fadd fast float %1669, %1665
  %1673 = fmul fast float %1672, 0x3F847AE140000000
  %1674 = fadd fast float %1670, %1666
  %1675 = fmul fast float %1674, 0x3F847AE140000000
  %1676 = fadd fast float %1671, %1667
  %1677 = fmul fast float %1676, 0x3F847AE140000000
  br label %1952

; <label>:1678                                    ; preds = %1568
  %1679 = and i32 %171, 1
  %1680 = icmp eq i32 %1679, 0
  br i1 %1680, label %1952, label %1681

; <label>:1681                                    ; preds = %1678
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1690 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1691 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1692 = extractvalue %dx.types.CBufRet.f32 %1684, 3
  %1693 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1694 = fadd fast float %1691, %1597
  %1695 = fadd fast float %1692, %1598
  %1696 = fadd fast float %1693, %1599
  %1697 = fmul fast float %1694, %1683
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1695, float %1685, float %1697)  ; FMad(a,b,c)
  %1699 = call float @dx.op.tertiary.f32(i32 46, float %1696, float %1687, float %1698)  ; FMad(a,b,c)
  %1700 = fmul fast float %1694, %1688
  %1701 = call float @dx.op.tertiary.f32(i32 46, float %1695, float %1689, float %1700)  ; FMad(a,b,c)
  %1702 = call float @dx.op.tertiary.f32(i32 46, float %1696, float %1690, float %1701)  ; FMad(a,b,c)
  %1703 = fsub fast float %1699, %1691
  %1704 = fsub fast float %1702, %1692
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.CBufRet.f32 %1705, 1
  %1708 = extractvalue %dx.types.CBufRet.f32 %1705, 2
  %1709 = extractvalue %dx.types.CBufRet.f32 %1705, 3
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 3
  %1712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.i32 %1712, 0
  %1714 = extractvalue %dx.types.CBufRet.i32 %1712, 1
  %1715 = udiv i32 %1714, %1713
  %1716 = fsub fast float %1703, %1706
  %1717 = fsub fast float %1704, %1707
  %1718 = call float @dx.op.binary.f32(i32 35, float %1716, float 0.000000e+00)  ; FMax(a,b)
  %1719 = call float @dx.op.binary.f32(i32 35, float %1717, float 0.000000e+00)  ; FMax(a,b)
  %1720 = call float @dx.op.binary.f32(i32 36, float %1718, float %1708)  ; FMin(a,b)
  %1721 = call float @dx.op.binary.f32(i32 36, float %1719, float %1709)  ; FMin(a,b)
  %1722 = add i32 %1713, -1
  %1723 = add i32 %1715, -1
  %1724 = fmul fast float %1720, %1711
  %1725 = fmul fast float %1721, %1711
  %1726 = fptoui float %1724 to i32
  %1727 = fptoui float %1725 to i32
  %1728 = call i32 @dx.op.binary.i32(i32 40, i32 %1726, i32 %1722)  ; UMin(a,b)
  %1729 = call i32 @dx.op.binary.i32(i32 40, i32 %1727, i32 %1723)  ; UMin(a,b)
  %1730 = mul i32 %1729, %1713
  %1731 = add i32 %1730, %1728
  %1732 = shl i32 %1731, 2
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = icmp eq i32 %1734, -1
  br i1 %1735, label %1952, label %1736

; <label>:1736                                    ; preds = %1681
  %1737 = mul i32 %1734, 148
  %1738 = add i32 %1737, 4
  %1739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = add i32 %1737, 8
  %1742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = add i32 %1737, 36
  %1745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = add i32 %1737, 60
  %1748 = add i32 %1737, 92
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1737, 116
  %1752 = fsub fast float %1703, %1740
  %1753 = fsub fast float %1704, %1743
  %1754 = fmul fast float %1711, %1752
  %1755 = fmul fast float %1711, %1753
  %1756 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1757 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1758 = fsub fast float 1.000000e+00, %1757
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 2
  %1761 = call float @dx.op.unary.f32(i32 83, float %1756)  ; DerivCoarseX(value)
  %1762 = call float @dx.op.unary.f32(i32 83, float %1758)  ; DerivCoarseX(value)
  %1763 = call float @dx.op.unary.f32(i32 84, float %1756)  ; DerivCoarseY(value)
  %1764 = call float @dx.op.unary.f32(i32 84, float %1758)  ; DerivCoarseY(value)
  %1765 = fmul fast float %1761, %1760
  %1766 = fmul fast float %1762, %1760
  %1767 = fmul fast float %1763, %1760
  %1768 = fmul fast float %1764, %1760
  %1769 = call float @dx.op.dot2.f32(i32 54, float %1767, float %1768, float %1767, float %1768)  ; Dot2(ax,ay,bx,by)
  %1770 = call float @dx.op.dot2.f32(i32 54, float %1765, float %1766, float %1765, float %1766)  ; Dot2(ax,ay,bx,by)
  %1771 = call float @dx.op.binary.f32(i32 35, float %1770, float %1769)  ; FMax(a,b)
  %1772 = call float @dx.op.unary.f32(i32 23, float %1771)  ; Log(value)
  %1773 = fmul fast float %1772, 5.000000e-01
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 1
  %1776 = fadd fast float %1775, %1773
  %1777 = call float @dx.op.binary.f32(i32 35, float %1776, float 0.000000e+00)  ; FMax(a,b)
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1780 = fadd fast float %1779, %1777
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1783 = fadd fast float %1780, %1782
  %1784 = add i32 %1750, 0
  %1785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1786 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1785, i32 0)  ; GetDimensions(handle,mipLevel)
  %1787 = extractvalue %dx.types.Dimensions %1786, 0
  %1788 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1787)  ; FirstbitLo(value)
  %1789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.i32 %1789, 1
  %1791 = sub nsw i32 %1790, %1788
  %1792 = sitofp i32 %1791 to float
  %1793 = fsub fast float %1783, %1792
  %1794 = call float @dx.op.binary.f32(i32 35, float %1793, float 0.000000e+00)  ; FMax(a,b)
  %1795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1785, %dx.types.Handle %42, float %1756, float %1758, float %1746, float undef, i32 0, i32 0, i32 undef, float %1794)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = fcmp ule float %1796, 0x3FE0101020000000
  %1798 = extractvalue %dx.types.CBufRet.i32 %1789, 0
  %1799 = and i32 %1798, 128
  %1800 = icmp ne i32 %1799, 0
  %1801 = and i1 %1797, %1800
  br i1 %1801, label %1952, label %1802

; <label>:1802                                    ; preds = %1736
  %1803 = add i32 %1737, 20
  %1804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.f32 %1804, 0
  %1806 = add i32 %1737, 24
  %1807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = add i32 %1737, 40
  %1810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = add i32 %1737, 96
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1817 = fmul fast float %1816, %1756
  %1818 = fmul fast float %1816, %1758
  %1819 = extractvalue %dx.types.CBufRet.f32 %1815, 3
  %1820 = fadd fast float %1817, %1819
  %1821 = fadd fast float %1818, %1819
  %1822 = add i32 %1814, 0
  %1823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1822, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1824 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1823, i32 0)  ; GetDimensions(handle,mipLevel)
  %1825 = extractvalue %dx.types.Dimensions %1824, 0
  %1826 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1825)  ; FirstbitLo(value)
  %1827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.i32 %1827, 1
  %1829 = sub nsw i32 %1828, %1826
  %1830 = sitofp i32 %1829 to float
  %1831 = fsub fast float %1780, %1830
  %1832 = call float @dx.op.binary.f32(i32 35, float %1831, float 0.000000e+00)  ; FMax(a,b)
  %1833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1823, %dx.types.Handle %42, float %1820, float %1821, float %1811, float undef, i32 0, i32 0, i32 undef, float %1832)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = fmul fast float %1834, %1805
  %1836 = fadd fast float %1835, %1808
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1845 = extractvalue %dx.types.CBufRet.f32 %1837, 3
  %1846 = fadd fast float %1842, %1703
  %1847 = fadd fast float %1844, %1704
  %1848 = fadd fast float %1836, %1845
  %1849 = fmul fast float %1846, %1838
  %1850 = call float @dx.op.tertiary.f32(i32 46, float %1847, float %1839, float %1849)  ; FMad(a,b,c)
  %1851 = call float @dx.op.tertiary.f32(i32 46, float %1848, float %1840, float %1850)  ; FMad(a,b,c)
  %1852 = fsub fast float %1851, %1845
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 2
  %1855 = fsub fast float %1852, %1854
  %1856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.i32 %1856, 0
  %1858 = call i32 @dx.op.binary.i32(i32 40, i32 %1734, i32 %1857)  ; UMin(a,b)
  %1859 = mul i32 %1858, 36
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = add i32 %1859, 4
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = fmul fast float %1864, %1756
  %1866 = fmul fast float %1864, %1758
  %1867 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1868 = fadd fast float %1865, %1867
  %1869 = fadd fast float %1866, %1867
  %1870 = icmp eq i32 %1861, 0
  br i1 %1870, label %1939, label %1871

; <label>:1871                                    ; preds = %1802
  br label %1872

; <label>:1872                                    ; preds = %1929, %1871
  %1873 = phi float [ %1930, %1929 ], [ 0.000000e+00, %1871 ]
  %1874 = phi float [ %1931, %1929 ], [ 0.000000e+00, %1871 ]
  %1875 = phi float [ %1932, %1929 ], [ 0.000000e+00, %1871 ]
  %1876 = phi float [ %1933, %1929 ], [ 0.000000e+00, %1871 ]
  %1877 = phi float [ %1934, %1929 ], [ 0.000000e+00, %1871 ]
  %1878 = phi float [ %1935, %1929 ], [ 0.000000e+00, %1871 ]
  %1879 = phi i32 [ %1936, %1929 ], [ 0, %1871 ]
  %1880 = shl i32 %1879, 2
  %1881 = add i32 %1747, %1880
  %1882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = add i32 %1751, %1880
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = add i32 %1886, 0
  %1888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1887, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1889 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1888, i32 0)  ; GetDimensions(handle,mipLevel)
  %1890 = extractvalue %dx.types.Dimensions %1889, 0
  %1891 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1890)  ; FirstbitLo(value)
  %1892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.i32 %1892, 1
  %1894 = sub nsw i32 %1893, %1891
  %1895 = sitofp i32 %1894 to float
  %1896 = fsub fast float %1780, %1895
  %1897 = call float @dx.op.binary.f32(i32 35, float %1896, float 0.000000e+00)  ; FMax(a,b)
  %1898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1888, %dx.types.Handle %42, float %1868, float %1869, float %1883, float undef, i32 0, i32 0, i32 undef, float %1897)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = fcmp fast ogt float %1899, 0.000000e+00
  br i1 %1900, label %1901, label %1929

; <label>:1901                                    ; preds = %1872
  %1902 = add i32 %1862, %1880
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 32767
  %1906 = mul nuw nsw i32 %1905, 928
  %1907 = add nuw nsw i32 %1906, 48
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = add nuw nsw i32 %1906, 60
  %1913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = extractvalue %dx.types.ResRet.f32 %1913, 1
  %1916 = extractvalue %dx.types.ResRet.f32 %1913, 2
  %1917 = fmul fast float %1909, %1899
  %1918 = fmul fast float %1910, %1899
  %1919 = fmul fast float %1911, %1899
  %1920 = fadd fast float %1917, %1873
  %1921 = fadd fast float %1918, %1874
  %1922 = fadd fast float %1919, %1875
  %1923 = fmul fast float %1914, %1899
  %1924 = fmul fast float %1915, %1899
  %1925 = fmul fast float %1916, %1899
  %1926 = fadd fast float %1923, %1876
  %1927 = fadd fast float %1924, %1877
  %1928 = fadd fast float %1925, %1878
  br label %1929

; <label>:1929                                    ; preds = %1901, %1872
  %1930 = phi float [ %1920, %1901 ], [ %1873, %1872 ]
  %1931 = phi float [ %1921, %1901 ], [ %1874, %1872 ]
  %1932 = phi float [ %1922, %1901 ], [ %1875, %1872 ]
  %1933 = phi float [ %1926, %1901 ], [ %1876, %1872 ]
  %1934 = phi float [ %1927, %1901 ], [ %1877, %1872 ]
  %1935 = phi float [ %1928, %1901 ], [ %1878, %1872 ]
  %1936 = add nuw i32 %1879, 1
  %1937 = icmp eq i32 %1936, %1861
  br i1 %1937, label %1938, label %1872

; <label>:1938                                    ; preds = %1929
  br label %1939

; <label>:1939                                    ; preds = %1938, %1802
  %1940 = phi float [ 0.000000e+00, %1802 ], [ %1930, %1938 ]
  %1941 = phi float [ 0.000000e+00, %1802 ], [ %1931, %1938 ]
  %1942 = phi float [ 0.000000e+00, %1802 ], [ %1932, %1938 ]
  %1943 = phi float [ 0.000000e+00, %1802 ], [ %1933, %1938 ]
  %1944 = phi float [ 0.000000e+00, %1802 ], [ %1934, %1938 ]
  %1945 = phi float [ 0.000000e+00, %1802 ], [ %1935, %1938 ]
  %1946 = fadd fast float %1943, %1940
  %1947 = fmul fast float %1946, 0x3F847AE140000000
  %1948 = fadd fast float %1944, %1941
  %1949 = fmul fast float %1948, 0x3F847AE140000000
  %1950 = fadd fast float %1945, %1942
  %1951 = fmul fast float %1950, 0x3F847AE140000000
  br label %1952

; <label>:1952                                    ; preds = %1939, %1736, %1681, %1678, %1649, %1611
  %1953 = phi float [ %1663, %1649 ], [ -1.310720e+05, %1611 ], [ %1855, %1939 ], [ -1.310720e+05, %1681 ], [ -1.310720e+05, %1736 ], [ -1.310720e+05, %1678 ]
  %1954 = phi float [ %1673, %1649 ], [ 0.000000e+00, %1611 ], [ %1947, %1939 ], [ 0.000000e+00, %1681 ], [ 0.000000e+00, %1736 ], [ 0.000000e+00, %1678 ]
  %1955 = phi float [ %1675, %1649 ], [ 0.000000e+00, %1611 ], [ %1949, %1939 ], [ 0.000000e+00, %1681 ], [ 0.000000e+00, %1736 ], [ 0.000000e+00, %1678 ]
  %1956 = phi float [ %1677, %1649 ], [ 0.000000e+00, %1611 ], [ %1951, %1939 ], [ 0.000000e+00, %1681 ], [ 0.000000e+00, %1736 ], [ 0.000000e+00, %1678 ]
  %1957 = phi i1 [ true, %1649 ], [ false, %1611 ], [ true, %1939 ], [ false, %1681 ], [ false, %1736 ], [ false, %1678 ]
  %1958 = and i32 %171, 3
  %1959 = icmp eq i32 %1958, 1
  %1960 = select i1 %1959, float 1.000000e+00, float 0.000000e+00
  %1961 = fsub fast float %1953, %135
  %1962 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1963 = select i1 %1957, float %1962, float 1.000000e+00
  %1964 = fmul fast float %1963, %1960
  %1965 = icmp eq i32 %1958, 3
  %1966 = select i1 %1965, float 1.000000e+00, float %1964
  %1967 = call float @dx.op.binary.f32(i32 35, float %1492, float %1966)  ; FMax(a,b)
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fcmp fast une float %1968, 0.000000e+00
  %1970 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = call float @dx.op.unary.f32(i32 25, float %1970)  ; Rsqrt(value)
  br i1 %1969, label %1979, label %1972

; <label>:1972                                    ; preds = %1952
  %1973 = fmul fast float %1971, %133
  %1974 = fmul fast float %1971, %134
  %1975 = fmul fast float %1971, %135
  %1976 = fsub fast float -0.000000e+00, %1973
  %1977 = fsub fast float -0.000000e+00, %1974
  %1978 = fsub fast float -0.000000e+00, %1975
  br label %2147

; <label>:1979                                    ; preds = %1952
  %1980 = fmul fast float %133, %1971
  %1981 = fsub fast float -0.000000e+00, %1980
  %1982 = fmul fast float %134, %1971
  %1983 = fsub fast float -0.000000e+00, %1982
  %1984 = fmul fast float %135, %1971
  %1985 = fsub fast float -0.000000e+00, %1984
  %1986 = call float @dx.op.dot3.f32(i32 55, float %1981, float %1983, float %1985, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1987 = fmul fast float %1968, 2.500000e+00
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1989 = fmul fast float %1968, 0x4013FFFFE0000000
  %1990 = fadd fast float %1989, 0xBFFFFFFFE0000000
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fmul fast float %1968, 0x4004000020000000
  %1993 = fadd fast float %1992, 0xBFF8000040000000
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1996 = fmul fast float %1528, 1.000000e+01
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fmul fast float %1997, 2.000000e+00
  %1999 = fsub fast float 3.000000e+00, %1998
  %2000 = fmul fast float %1997, %1997
  %2001 = fmul fast float %2000, %1999
  %2002 = fsub fast float 1.000000e+00, %2001
  %2003 = fsub fast float 0x3FE3333340000000, %1549
  %2004 = fmul fast float %2003, 0x400AAAAAA0000000
  %2005 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2006 = fmul fast float %2002, %2005
  %2007 = fmul fast float %1586, 0x3FEA2B8620000000
  %2008 = fmul fast float %1587, 0x3FEA2B8620000000
  %2009 = fmul fast float %1588, 0x3FEA2B8620000000
  %2010 = fadd fast float %2007, 0x3FC81DFBA0000000
  %2011 = fmul fast float %2010, %1586
  %2012 = fadd fast float %2011, 0x3F910E6020000000
  %2013 = fadd fast float %2008, 0x3FC81DFBA0000000
  %2014 = fmul fast float %2013, %1587
  %2015 = fadd fast float %2014, 0x3F910E6020000000
  %2016 = fadd fast float %2009, 0x3FC81DFBA0000000
  %2017 = fmul fast float %2016, %1588
  %2018 = fadd fast float %2017, 0x3F910E6020000000
  %2019 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2020 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2021 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2022 = fsub fast float %2019, %1586
  %2023 = fsub fast float %2020, %1587
  %2024 = fsub fast float %2021, %1588
  %2025 = fmul fast float %2022, %1995
  %2026 = fmul fast float %2025, %2006
  %2027 = fmul fast float %2023, %1995
  %2028 = fmul fast float %2027, %2006
  %2029 = fmul fast float %2024, %1995
  %2030 = fmul fast float %2029, %2006
  %2031 = fadd fast float %2026, %1586
  %2032 = fadd fast float %2028, %1587
  %2033 = fadd fast float %2030, %1588
  %2034 = fmul fast float %1509, %1509
  %2035 = fmul fast float %2034, %2034
  %2036 = fadd fast float %1991, 1.000000e+00
  %2037 = fsub fast float %2036, %2006
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2041 = fsub fast float 1.000000e+00, %2035
  %2042 = call float @dx.op.binary.f32(i32 36, float %2038, float %2041)  ; FMin(a,b)
  %2043 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %2044 = call float @dx.op.binary.f32(i32 35, float %2042, float %2043)  ; FMax(a,b)
  %2045 = fadd fast float %2040, 0xBFE4CCCCC0000000
  %2046 = fmul fast float %2045, 0x4006DB6DA0000000
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = fmul fast float %2047, 2.000000e+00
  %2049 = fsub fast float 3.000000e+00, %2048
  %2050 = bitcast float %1546 to i32
  %2051 = ashr i32 %2050, 1
  %2052 = add nsw i32 %2051, 532487669
  %2053 = bitcast i32 %2052 to float
  %2054 = fsub fast float 1.000000e+00, %2053
  %2055 = bitcast float %2054 to i32
  %2056 = sub nsw i32 2129859010, %2055
  %2057 = bitcast i32 %2056 to float
  %2058 = fmul fast float %2057, 2.000000e+00
  %2059 = bitcast float %1547 to i32
  %2060 = ashr i32 %2059, 1
  %2061 = add nsw i32 %2060, 532487669
  %2062 = bitcast i32 %2061 to float
  %2063 = fsub fast float 1.000000e+00, %2062
  %2064 = bitcast float %2063 to i32
  %2065 = sub nsw i32 2129859010, %2064
  %2066 = bitcast i32 %2065 to float
  %2067 = fmul fast float %2066, 2.000000e+00
  %2068 = bitcast float %1548 to i32
  %2069 = ashr i32 %2068, 1
  %2070 = add nsw i32 %2069, 532487669
  %2071 = bitcast i32 %2070 to float
  %2072 = fsub fast float 1.000000e+00, %2071
  %2073 = bitcast float %2072 to i32
  %2074 = sub nsw i32 2129859010, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %2075, 2.000000e+00
  %2077 = fsub fast float 0x4002A9FBE0000000, %2058
  %2078 = fadd fast float %2058, 0x3FD54FDF00000000
  %2079 = bitcast float %2078 to i32
  %2080 = sub nsw i32 2129859010, %2079
  %2081 = bitcast i32 %2080 to float
  %2082 = fmul fast float %2081, %2077
  %2083 = fmul fast float %2082, %2082
  %2084 = fsub fast float 0x4002A9FBE0000000, %2067
  %2085 = fadd fast float %2067, 0x3FD54FDF00000000
  %2086 = bitcast float %2085 to i32
  %2087 = sub nsw i32 2129859010, %2086
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %2088, %2084
  %2090 = fmul fast float %2089, %2089
  %2091 = fsub fast float 0x4002A9FBE0000000, %2076
  %2092 = fadd fast float %2076, 0x3FD54FDF00000000
  %2093 = bitcast float %2092 to i32
  %2094 = sub nsw i32 2129859010, %2093
  %2095 = bitcast i32 %2094 to float
  %2096 = fmul fast float %2095, %2091
  %2097 = fmul fast float %2096, %2096
  %2098 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2083)  ; FMax(a,b)
  %2099 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2090)  ; FMax(a,b)
  %2100 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2097)  ; FMax(a,b)
  %2101 = fsub fast float 1.000000e+00, %1986
  %2102 = fadd fast float %2101, %2002
  %2103 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  %2104 = fsub fast float 1.000000e+00, %1966
  %2105 = fmul fast float %2044, %2104
  %2106 = fmul fast float %2047, %2047
  %2107 = fmul fast float %2106, %2105
  %2108 = fmul fast float %2107, %2049
  %2109 = fmul fast float %2104, 0xBFE99999A0000000
  %2110 = fmul fast float %2109, %1995
  %2111 = fmul fast float %2110, %2006
  %2112 = fadd fast float %2111, 1.000000e+00
  %2113 = fadd fast float %1549, -1.000000e+00
  %2114 = fmul fast float %2112, %2113
  %2115 = fadd fast float %2114, 1.000000e+00
  %2116 = fsub fast float %2098, %1546
  %2117 = fsub fast float %2099, %1547
  %2118 = fsub fast float %2100, %1548
  %2119 = fmul fast float %2108, %2116
  %2120 = fmul fast float %2108, %2117
  %2121 = fmul fast float %2108, %2118
  %2122 = fadd fast float %2119, %1546
  %2123 = fadd fast float %2120, %1547
  %2124 = fadd fast float %2121, %1548
  %2125 = fsub fast float %88, %1525
  %2126 = fsub fast float %89, %1526
  %2127 = fsub fast float %90, %1527
  %2128 = fmul fast float %2108, %2125
  %2129 = fmul fast float %2108, %2126
  %2130 = fmul fast float %2108, %2127
  %2131 = fadd fast float %2128, %1525
  %2132 = fadd fast float %2129, %1526
  %2133 = fadd fast float %2130, %1527
  %2134 = fmul fast float %2108, %2103
  %2135 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2134, %2136
  %2138 = fadd fast float %2137, %2135
  %2139 = fsub fast float 1.000000e+00, %1509
  %2140 = fmul fast float %2108, %2139
  %2141 = fadd fast float %2140, %1509
  %2142 = call float @dx.op.dot3.f32(i32 55, float %2131, float %2132, float %2133, float %2131, float %2132, float %2133)  ; Dot3(ax,ay,az,bx,by,bz)
  %2143 = call float @dx.op.unary.f32(i32 25, float %2142)  ; Rsqrt(value)
  %2144 = fmul fast float %2131, %2143
  %2145 = fmul fast float %2132, %2143
  %2146 = fmul fast float %2133, %2143
  br label %2147

; <label>:2147                                    ; preds = %1979, %1972
  %2148 = phi float [ %1978, %1972 ], [ %1985, %1979 ]
  %2149 = phi float [ %1977, %1972 ], [ %1983, %1979 ]
  %2150 = phi float [ %1976, %1972 ], [ %1981, %1979 ]
  %2151 = phi float [ %1975, %1972 ], [ %1984, %1979 ]
  %2152 = phi float [ %1974, %1972 ], [ %1982, %1979 ]
  %2153 = phi float [ %1973, %1972 ], [ %1980, %1979 ]
  %2154 = phi float [ %1586, %1972 ], [ %2031, %1979 ]
  %2155 = phi float [ %1587, %1972 ], [ %2032, %1979 ]
  %2156 = phi float [ %1588, %1972 ], [ %2033, %1979 ]
  %2157 = phi float [ %1546, %1972 ], [ %2122, %1979 ]
  %2158 = phi float [ %1547, %1972 ], [ %2123, %1979 ]
  %2159 = phi float [ %1548, %1972 ], [ %2124, %1979 ]
  %2160 = phi float [ %1525, %1972 ], [ %2144, %1979 ]
  %2161 = phi float [ %1526, %1972 ], [ %2145, %1979 ]
  %2162 = phi float [ %1527, %1972 ], [ %2146, %1979 ]
  %2163 = phi float [ %1549, %1972 ], [ %2138, %1979 ]
  %2164 = phi float [ %1509, %1972 ], [ %2141, %1979 ]
  %2165 = fsub fast float -0.000000e+00, %135
  %2166 = call float @dx.op.unary.f32(i32 84, float %76)  ; DerivCoarseY(value)
  %2167 = call float @dx.op.unary.f32(i32 6, float %2166)  ; FAbs(value)
  %2168 = call float @dx.op.unary.f32(i32 83, float %76)  ; DerivCoarseX(value)
  %2169 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2170 = call float @dx.op.binary.f32(i32 35, float %2169, float %2167)  ; FMax(a,b)
  %2171 = fcmp fast ogt float %75, 9.843750e-01
  %2172 = select i1 %195, float 0.000000e+00, float %2159
  %2173 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2161, float %2162, float %2150, float %2149, float %2148)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = call float @dx.op.dot3.f32(i32 55, float %2153, float %2152, float %2151, float %2160, float %2161, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2176 = fmul fast float %2175, 2.000000e+00
  %2177 = fmul fast float %2176, %2160
  %2178 = fmul fast float %2176, %2161
  %2179 = fmul fast float %2176, %2162
  %2180 = fsub fast float %2153, %2177
  %2181 = fsub fast float %2152, %2178
  %2182 = fsub fast float %2151, %2179
  %2183 = call float @dx.op.binary.f32(i32 36, float %2164, float 1.000000e+00)  ; FMin(a,b)
  %2184 = fsub fast float 1.000000e+00, %2164
  %2185 = bitcast float %2184 to i32
  %2186 = sub nsw i32 2129859010, %2185
  %2187 = bitcast i32 %2186 to float
  %2188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %2189 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %2190 = fcmp fast oeq float %2189, 0.000000e+00
  %2191 = fcmp fast oeq float %2188, 0.000000e+00
  %2192 = or i1 %2191, %2190
  br i1 %2192, label %2222, label %2193

; <label>:2193                                    ; preds = %2147
  %2194 = fsub fast float -0.000000e+00, %63
  %2195 = fsub fast float -0.000000e+00, %61
  %2196 = call float @dx.op.unary.f32(i32 24, float %2189)  ; Sqrt(value)
  %2197 = fdiv fast float %2196, %2188
  %2198 = fcmp fast ogt float %2197, 0x3FFB6F8900000000
  %2199 = select i1 %2198, float 0x3FFB6F8900000000, float %2197
  %2200 = fmul fast float %2199, 0x3FE8A23460000000
  %2201 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2202 = call float @dx.op.binary.f32(i32 35, float %2199, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2203 = fmul fast float %2201, %2188
  %2204 = fmul fast float %2202, 0x3FF279A740000000
  %2205 = fadd fast float %2204, -1.000000e+00
  %2206 = call float @dx.op.dot3.f32(i32 55, float %2194, float %2195, float %62, float %2194, float %2195, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %2207 = call float @dx.op.unary.f32(i32 25, float %2206)  ; Rsqrt(value)
  %2208 = fmul fast float %2207, %2194
  %2209 = fmul fast float %2207, %2195
  %2210 = fmul fast float %2207, %62
  %2211 = fmul fast float %2205, %2205
  %2212 = fsub fast float 1.000000e+00, %2211
  %2213 = fmul fast float %2202, 0x40005F8BE0000000
  %2214 = fsub fast float 0x400C5BF8A0000000, %2213
  %2215 = fdiv fast float %2203, %2214
  %2216 = fmul fast float %2215, 0x3FEE31C3C0000000
  %2217 = fmul fast float %2216, %2212
  %2218 = fmul fast float %2202, 0x3FDACB7480000000
  %2219 = fadd fast float %2218, 0xBFD7347680000000
  %2220 = fmul fast float %2219, %2215
  %2221 = fmul fast float %2220, %2212
  br label %2222

; <label>:2222                                    ; preds = %2193, %2147
  %2223 = phi float [ %2208, %2193 ], [ 0.000000e+00, %2147 ]
  %2224 = phi float [ %2209, %2193 ], [ 0.000000e+00, %2147 ]
  %2225 = phi float [ %2210, %2193 ], [ 0.000000e+00, %2147 ]
  %2226 = phi float [ %2217, %2193 ], [ 0.000000e+00, %2147 ]
  %2227 = phi float [ %2221, %2193 ], [ 0.000000e+00, %2147 ]
  %2228 = call float @dx.op.dot3.f32(i32 55, float %2223, float %2224, float %2225, float %2160, float %2161, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2229 = fmul fast float %2228, 0x3FDF454380000000
  %2230 = fmul fast float %2228, %2228
  %2231 = fmul fast float %2230, 0x3FEE471020000000
  %2232 = fadd fast float %2231, 0xBFD42F6020000000
  %2233 = fmul fast float %2188, 0x3FD20DD760000000
  %2234 = fmul fast float %2232, %2227
  %2235 = fadd fast float %2234, %2233
  %2236 = fmul fast float %2229, %2226
  %2237 = fadd fast float %2235, %2236
  %2238 = fsub fast float %2235, %2236
  %2239 = call float @dx.op.dot3.f32(i32 55, float %2223, float %2224, float %2225, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2240 = fmul fast float %2239, 0x3FDF454380000000
  %2241 = fmul fast float %2239, %2239
  %2242 = fmul fast float %2241, 0x3FEE471020000000
  %2243 = fadd fast float %2242, 0xBFD42F6020000000
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2188, float %2226, float %2227, float 0x3FD20DD760000000, float %2240, float %2243)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %2246 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = fcmp fast oeq float %2246, 0.000000e+00
  %2248 = fcmp fast oeq float %2245, 0.000000e+00
  %2249 = or i1 %2248, %2247
  br i1 %2249, label %2279, label %2250

; <label>:2250                                    ; preds = %2222
  %2251 = fsub fast float -0.000000e+00, %59
  %2252 = fsub fast float -0.000000e+00, %57
  %2253 = call float @dx.op.unary.f32(i32 24, float %2246)  ; Sqrt(value)
  %2254 = fdiv fast float %2253, %2245
  %2255 = fcmp fast ogt float %2254, 0x3FFB6F8900000000
  %2256 = select i1 %2255, float 0x3FFB6F8900000000, float %2254
  %2257 = fmul fast float %2256, 0x3FE8A23460000000
  %2258 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2259 = call float @dx.op.binary.f32(i32 35, float %2256, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2260 = fmul fast float %2258, %2245
  %2261 = fmul fast float %2259, 0x3FF279A740000000
  %2262 = fadd fast float %2261, -1.000000e+00
  %2263 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2252, float %58, float %2251, float %2252, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2264 = call float @dx.op.unary.f32(i32 25, float %2263)  ; Rsqrt(value)
  %2265 = fmul fast float %2264, %2251
  %2266 = fmul fast float %2264, %2252
  %2267 = fmul fast float %2264, %58
  %2268 = fmul fast float %2262, %2262
  %2269 = fsub fast float 1.000000e+00, %2268
  %2270 = fmul fast float %2259, 0x40005F8BE0000000
  %2271 = fsub fast float 0x400C5BF8A0000000, %2270
  %2272 = fdiv fast float %2260, %2271
  %2273 = fmul fast float %2272, 0x3FEE31C3C0000000
  %2274 = fmul fast float %2273, %2269
  %2275 = fmul fast float %2259, 0x3FDACB7480000000
  %2276 = fadd fast float %2275, 0xBFD7347680000000
  %2277 = fmul fast float %2276, %2272
  %2278 = fmul fast float %2277, %2269
  br label %2279

; <label>:2279                                    ; preds = %2250, %2222
  %2280 = phi float [ %2265, %2250 ], [ 0.000000e+00, %2222 ]
  %2281 = phi float [ %2266, %2250 ], [ 0.000000e+00, %2222 ]
  %2282 = phi float [ %2267, %2250 ], [ 0.000000e+00, %2222 ]
  %2283 = phi float [ %2274, %2250 ], [ 0.000000e+00, %2222 ]
  %2284 = phi float [ %2278, %2250 ], [ 0.000000e+00, %2222 ]
  %2285 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float %2160, float %2161, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2286 = fmul fast float %2285, 0x3FDF454380000000
  %2287 = fmul fast float %2285, %2285
  %2288 = fmul fast float %2287, 0x3FEE471020000000
  %2289 = fadd fast float %2288, 0xBFD42F6020000000
  %2290 = fmul fast float %2245, 0x3FD20DD760000000
  %2291 = fmul fast float %2289, %2284
  %2292 = fadd fast float %2291, %2290
  %2293 = fmul fast float %2286, %2283
  %2294 = fadd fast float %2292, %2293
  %2295 = fsub fast float %2292, %2293
  %2296 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2297 = fmul fast float %2296, 0x3FDF454380000000
  %2298 = fmul fast float %2296, %2296
  %2299 = fmul fast float %2298, 0x3FEE471020000000
  %2300 = fadd fast float %2299, 0xBFD42F6020000000
  %2301 = call float @dx.op.dot3.f32(i32 55, float %2245, float %2283, float %2284, float 0x3FD20DD760000000, float %2297, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %2303 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = fcmp fast oeq float %2303, 0.000000e+00
  %2305 = fcmp fast oeq float %2302, 0.000000e+00
  %2306 = or i1 %2305, %2304
  br i1 %2306, label %2336, label %2307

; <label>:2307                                    ; preds = %2279
  %2308 = fsub fast float -0.000000e+00, %55
  %2309 = fsub fast float -0.000000e+00, %53
  %2310 = call float @dx.op.unary.f32(i32 24, float %2303)  ; Sqrt(value)
  %2311 = fdiv fast float %2310, %2302
  %2312 = fcmp fast ogt float %2311, 0x3FFB6F8900000000
  %2313 = select i1 %2312, float 0x3FFB6F8900000000, float %2311
  %2314 = fmul fast float %2313, 0x3FE8A23460000000
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2316 = call float @dx.op.binary.f32(i32 35, float %2313, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2317 = fmul fast float %2315, %2302
  %2318 = fmul fast float %2316, 0x3FF279A740000000
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = call float @dx.op.dot3.f32(i32 55, float %2308, float %2309, float %54, float %2308, float %2309, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2321 = call float @dx.op.unary.f32(i32 25, float %2320)  ; Rsqrt(value)
  %2322 = fmul fast float %2321, %2308
  %2323 = fmul fast float %2321, %2309
  %2324 = fmul fast float %2321, %54
  %2325 = fmul fast float %2319, %2319
  %2326 = fsub fast float 1.000000e+00, %2325
  %2327 = fmul fast float %2316, 0x40005F8BE0000000
  %2328 = fsub fast float 0x400C5BF8A0000000, %2327
  %2329 = fdiv fast float %2317, %2328
  %2330 = fmul fast float %2329, 0x3FEE31C3C0000000
  %2331 = fmul fast float %2330, %2326
  %2332 = fmul fast float %2316, 0x3FDACB7480000000
  %2333 = fadd fast float %2332, 0xBFD7347680000000
  %2334 = fmul fast float %2333, %2329
  %2335 = fmul fast float %2334, %2326
  br label %2336

; <label>:2336                                    ; preds = %2307, %2279
  %2337 = phi float [ %2322, %2307 ], [ 0.000000e+00, %2279 ]
  %2338 = phi float [ %2323, %2307 ], [ 0.000000e+00, %2279 ]
  %2339 = phi float [ %2324, %2307 ], [ 0.000000e+00, %2279 ]
  %2340 = phi float [ %2331, %2307 ], [ 0.000000e+00, %2279 ]
  %2341 = phi float [ %2335, %2307 ], [ 0.000000e+00, %2279 ]
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %2160, float %2161, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = fmul fast float %2342, 0x3FDF454380000000
  %2344 = fmul fast float %2342, %2342
  %2345 = fmul fast float %2344, 0x3FEE471020000000
  %2346 = fadd fast float %2345, 0xBFD42F6020000000
  %2347 = fmul fast float %2302, 0x3FD20DD760000000
  %2348 = fmul fast float %2346, %2341
  %2349 = fadd fast float %2348, %2347
  %2350 = fmul fast float %2343, %2340
  %2351 = fadd fast float %2349, %2350
  %2352 = fsub fast float %2349, %2350
  %2353 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2354 = fmul fast float %2353, 0x3FDF454380000000
  %2355 = fmul fast float %2353, %2353
  %2356 = fmul fast float %2355, 0x3FEE471020000000
  %2357 = fadd fast float %2356, 0xBFD42F6020000000
  %2358 = call float @dx.op.dot3.f32(i32 55, float %2302, float %2340, float %2341, float 0x3FD20DD760000000, float %2354, float %2357)  ; Dot3(ax,ay,az,bx,by,bz)
  %2359 = call float @dx.op.binary.f32(i32 35, float %2237, float 0.000000e+00)  ; FMax(a,b)
  %2360 = call float @dx.op.binary.f32(i32 35, float %2294, float 0.000000e+00)  ; FMax(a,b)
  %2361 = call float @dx.op.binary.f32(i32 35, float %2351, float 0.000000e+00)  ; FMax(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2238, float 0.000000e+00)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 35, float %2295, float 0.000000e+00)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 35, float %2352, float 0.000000e+00)  ; FMax(a,b)
  %2365 = call float @dx.op.binary.f32(i32 35, float %2244, float 0.000000e+00)  ; FMax(a,b)
  %2366 = call float @dx.op.binary.f32(i32 35, float %2301, float 0.000000e+00)  ; FMax(a,b)
  %2367 = call float @dx.op.binary.f32(i32 35, float %2358, float 0.000000e+00)  ; FMax(a,b)
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = call float @dx.op.binary.f32(i32 36, float %2154, float %2369)  ; FMin(a,b)
  %2371 = fsub fast float 1.000000e+00, %2183
  %2372 = fmul fast float %2370, %2371
  %2373 = fsub fast float 1.000000e+00, %2372
  %2374 = bitcast float %2373 to i32
  %2375 = sub nsw i32 2129859010, %2374
  %2376 = bitcast i32 %2375 to float
  %2377 = call float @dx.op.binary.f32(i32 36, float %2155, float %2369)  ; FMin(a,b)
  %2378 = fmul fast float %2377, %2371
  %2379 = fsub fast float 1.000000e+00, %2378
  %2380 = bitcast float %2379 to i32
  %2381 = sub nsw i32 2129859010, %2380
  %2382 = bitcast i32 %2381 to float
  %2383 = call float @dx.op.binary.f32(i32 36, float %2156, float %2369)  ; FMin(a,b)
  %2384 = fmul fast float %2383, %2371
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = bitcast float %2385 to i32
  %2387 = sub nsw i32 2129859010, %2386
  %2388 = bitcast i32 %2387 to float
  %2389 = fmul fast float %2359, %2183
  %2390 = fmul fast float %2389, %2376
  %2391 = fmul fast float %2360, %2183
  %2392 = fmul fast float %2391, %2382
  %2393 = fmul fast float %2361, %2183
  %2394 = fmul fast float %2393, %2388
  %2395 = call float @dx.op.binary.f32(i32 36, float %2157, float %2369)  ; FMin(a,b)
  %2396 = fmul fast float %2395, %2371
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = bitcast float %2397 to i32
  %2399 = sub nsw i32 2129859010, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = call float @dx.op.binary.f32(i32 36, float %2158, float %2369)  ; FMin(a,b)
  %2402 = fmul fast float %2401, %2371
  %2403 = fsub fast float 1.000000e+00, %2402
  %2404 = bitcast float %2403 to i32
  %2405 = sub nsw i32 2129859010, %2404
  %2406 = bitcast i32 %2405 to float
  %2407 = call float @dx.op.binary.f32(i32 36, float %2172, float %2369)  ; FMin(a,b)
  %2408 = fmul fast float %2407, %2371
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = bitcast float %2409 to i32
  %2411 = sub nsw i32 2129859010, %2410
  %2412 = bitcast i32 %2411 to float
  %2413 = fmul fast float %2365, %2183
  %2414 = fmul fast float %2413, %2400
  %2415 = fmul fast float %2366, %2183
  %2416 = fmul fast float %2415, %2406
  %2417 = fmul fast float %2367, %2183
  %2418 = fmul fast float %2417, %2412
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2390, float %2392, float %2394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = select i1 %195, float 0.000000e+00, float %2390
  %2421 = select i1 %195, float %2419, float %2392
  %2422 = select i1 %195, float 0.000000e+00, float %2394
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2362, float %2363, float %2364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = select i1 %195, float 0.000000e+00, float %2362
  %2425 = select i1 %195, float %2423, float %2363
  %2426 = select i1 %195, float 0.000000e+00, float %2364
  %2427 = call float @dx.op.dot3.f32(i32 55, float %2414, float %2416, float %2418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2428 = select i1 %195, float 0.000000e+00, float %2414
  %2429 = select i1 %195, float %2427, float %2416
  %2430 = select i1 %195, float 0.000000e+00, float %2418
  %2431 = fmul fast float %899, %899
  %2432 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2433 = fmul fast float %2174, 9.843750e-01
  %2434 = fmul fast float %2163, 9.843750e-01
  %2435 = fadd fast float %2433, 7.812500e-03
  %2436 = fadd fast float %2434, 7.812500e-03
  %2437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %2435, float %2436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.ResRet.f32 %2437, 2
  %2441 = extractvalue %dx.types.ResRet.f32 %2437, 3
  %2442 = fsub fast float 1.000000e+00, %2432
  %2443 = fsub fast float %2440, %2438
  %2444 = fsub fast float %2441, %2439
  %2445 = fmul fast float %2443, %2442
  %2446 = fmul fast float %2444, %2442
  %2447 = fadd fast float %2445, %2438
  %2448 = fadd fast float %2446, %2439
  %2449 = fmul fast float %2447, %2157
  %2450 = fmul fast float %2447, %2158
  %2451 = fmul fast float %2447, %2172
  %2452 = fadd fast float %2449, %2448
  %2453 = fadd fast float %2450, %2448
  %2454 = fadd fast float %2451, %2448
  %2455 = fcmp fast ogt float %1499, 0.000000e+00
  br i1 %2455, label %2456, label %2482

; <label>:2456                                    ; preds = %2336
  %2457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1499, float %2174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2458 = extractvalue %dx.types.ResRet.f32 %2457, 0
  %2459 = extractvalue %dx.types.ResRet.f32 %2457, 1
  %2460 = extractvalue %dx.types.ResRet.f32 %2457, 2
  %2461 = fadd fast float %2458, -5.000000e-01
  %2462 = fadd fast float %2459, -5.000000e-01
  %2463 = fadd fast float %2460, -5.000000e-01
  %2464 = fsub fast float 1.000000e+00, %2157
  %2465 = fsub fast float 1.000000e+00, %2158
  %2466 = fsub fast float 1.000000e+00, %2172
  %2467 = fmul fast float %2157, 4.000000e+00
  %2468 = fmul fast float %2467, %2464
  %2469 = fmul fast float %2468, %2461
  %2470 = fmul fast float %2158, 4.000000e+00
  %2471 = fmul fast float %2470, %2465
  %2472 = fmul fast float %2471, %2462
  %2473 = fmul fast float %2172, 4.000000e+00
  %2474 = fmul fast float %2473, %2466
  %2475 = fmul fast float %2474, %2463
  %2476 = fadd fast float %2469, %2452
  %2477 = fadd fast float %2472, %2453
  %2478 = fadd fast float %2475, %2454
  %2479 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2480 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2481 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  br label %2482

; <label>:2482                                    ; preds = %2456, %2336
  %2483 = phi float [ %2479, %2456 ], [ %2452, %2336 ]
  %2484 = phi float [ %2480, %2456 ], [ %2453, %2336 ]
  %2485 = phi float [ %2481, %2456 ], [ %2454, %2336 ]
  %2486 = call float @dx.op.binary.f32(i32 35, float %2484, float %2485)  ; FMax(a,b)
  %2487 = call float @dx.op.binary.f32(i32 35, float %2483, float %2486)  ; FMax(a,b)
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2155, float %2156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2490 = fcmp fast ogt float %2489, 0x3E7FF19E20000000
  %2491 = fdiv fast float 1.000000e+00, %2489
  %2492 = select i1 %2490, float %2491, float 0.000000e+00
  %2493 = fmul fast float %2492, %2154
  %2494 = fmul fast float %2492, %2155
  %2495 = fmul fast float %2492, %2156
  %2496 = fadd fast float %2493, -1.000000e+00
  %2497 = fadd fast float %2494, -1.000000e+00
  %2498 = fadd fast float %2495, -1.000000e+00
  %2499 = fmul fast float %2496, 5.000000e-01
  %2500 = fmul fast float %2497, 5.000000e-01
  %2501 = fmul fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 1.000000e+00
  %2503 = fadd fast float %2500, 1.000000e+00
  %2504 = fadd fast float %2501, 1.000000e+00
  %2505 = call float @dx.op.binary.f32(i32 35, float %2174, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2506 = fdiv fast float %899, %2505
  %2507 = fcmp fast olt float %1572, 1.270000e+02
  %2508 = fcmp fast olt float %1573, 1.270000e+02
  %2509 = fcmp fast olt float %1574, 1.270000e+02
  %2510 = fmul fast float %1572, 0xBFF7154760000000
  %2511 = fmul fast float %2510, %2506
  %2512 = fmul fast float %1573, 0xBFF7154760000000
  %2513 = fmul fast float %2512, %2506
  %2514 = fmul fast float %1574, 0xBFF7154760000000
  %2515 = fmul fast float %2514, %2506
  %2516 = call float @dx.op.unary.f32(i32 21, float %2511)  ; Exp(value)
  %2517 = call float @dx.op.unary.f32(i32 21, float %2513)  ; Exp(value)
  %2518 = call float @dx.op.unary.f32(i32 21, float %2515)  ; Exp(value)
  %2519 = call float @dx.op.unary.f32(i32 7, float %2516)  ; Saturate(value)
  %2520 = call float @dx.op.unary.f32(i32 7, float %2517)  ; Saturate(value)
  %2521 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2522 = select i1 %2507, float %2519, float 0.000000e+00
  %2523 = select i1 %2508, float %2520, float 0.000000e+00
  %2524 = select i1 %2509, float %2521, float 0.000000e+00
  %2525 = fmul fast float %2522, %2488
  %2526 = fmul fast float %2523, %2488
  %2527 = fmul fast float %2524, %2488
  %2528 = fadd fast float %2525, -1.000000e+00
  %2529 = fadd fast float %2526, -1.000000e+00
  %2530 = fadd fast float %2527, -1.000000e+00
  %2531 = fmul fast float %2528, %1522
  %2532 = fmul fast float %2529, %1522
  %2533 = fmul fast float %2530, %1522
  %2534 = fmul fast float %2483, %2428
  %2535 = fmul fast float %2484, %2429
  %2536 = fmul fast float %2485, %2430
  %2537 = fsub fast float 1.000000e+00, %2174
  %2538 = bitcast float %2537 to i32
  %2539 = sitofp i32 %2538 to float
  %2540 = fmul fast float %2539, 5.000000e+00
  %2541 = fadd fast float %2540, 0xC1EFBF8940000000
  %2542 = fptosi float %2541 to i32
  %2543 = bitcast i32 %2542 to float
  %2544 = fmul fast float %2543, %1498
  %2545 = fmul fast float %2420, %2544
  %2546 = fmul fast float %2545, %2488
  %2547 = fmul fast float %2546, %2502
  %2548 = fmul fast float %2421, %2544
  %2549 = fmul fast float %2548, %2488
  %2550 = fmul fast float %2549, %2503
  %2551 = fmul fast float %2422, %2544
  %2552 = fmul fast float %2551, %2488
  %2553 = fmul fast float %2552, %2504
  %2554 = fadd fast float %2534, %1503
  %2555 = fadd fast float %2554, %2547
  %2556 = fmul fast float %2555, %1522
  %2557 = fadd fast float %2535, %1504
  %2558 = fadd fast float %2557, %2550
  %2559 = fmul fast float %2558, %1522
  %2560 = fadd fast float %2536, %1505
  %2561 = fadd fast float %2560, %2553
  %2562 = fmul fast float %2561, %1522
  %2563 = fmul fast float %2158, 0x4012D0A400000000
  %2564 = fadd fast float %2533, 1.000000e+00
  %2565 = fadd fast float %2532, 1.000000e+00
  %2566 = fadd fast float %2531, 1.000000e+00
  %2567 = fmul fast float %2488, %2422
  %2568 = fmul fast float %2488, %2421
  %2569 = fmul fast float %2488, %2420
  %2570 = fsub fast float 1.000000e+00, %2163
  %2571 = fmul fast float %2570, %1522
  %2572 = fsub fast float 1.000000e+00, %2571
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = fsub fast float 1.000000e+00, %2573
  %2575 = fadd fast float %2563, 0x3FDB6377A0000000
  %2576 = fmul fast float %2574, %2575
  %2577 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1591, float %1592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2578 = fadd fast float %2576, %2577
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2580 = call float @dx.op.binary.f32(i32 35, float %2579, float 0x3F847AE140000000)  ; FMax(a,b)
  %2581 = fmul fast float %2580, %2580
  %2582 = fmul fast float %2581, %2581
  %2583 = fmul fast float %2582, 0xC00A935000000000
  %2584 = call float @dx.op.unary.f32(i32 21, float %2583)  ; Exp(value)
  %2585 = fsub fast float 1.000000e+00, %2584
  %2586 = fmul fast float %2566, %2424
  %2587 = fmul fast float %2586, %2585
  %2588 = fmul fast float %2565, %2425
  %2589 = fmul fast float %2588, %2585
  %2590 = fmul fast float %2564, %2426
  %2591 = fmul fast float %2590, %2585
  %2592 = fadd fast float %2587, %2569
  %2593 = fmul fast float %2592, %1522
  %2594 = fadd fast float %2589, %2568
  %2595 = fmul fast float %2594, %1522
  %2596 = fadd fast float %2591, %2567
  %2597 = fmul fast float %2596, %1522
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 3
  %2600 = fcmp fast oeq float %2599, 0.000000e+00
  br i1 %2600, label %3996, label %2601

; <label>:2601                                    ; preds = %2482
  %2602 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2604 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.CBufRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.CBufRet.f32 %2605, 2
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.CBufRet.f32 %2609, 1
  %2612 = call float @dx.op.dot3.f32(i32 55, float %2606, float %2607, float %2608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2613 = select i1 %195, float %2610, float %2606
  %2614 = select i1 %195, float %2612, float %2607
  %2615 = select i1 %195, float %2611, float %2608
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2618 = fmul fast float %2617, %88
  %2619 = fmul fast float %2617, %89
  %2620 = fmul fast float %2617, %90
  %2621 = fadd fast float %2618, %133
  %2622 = fadd fast float %2619, %134
  %2623 = fadd fast float %2620, %135
  %2624 = fcmp fast olt float %2599, 0.000000e+00
  br i1 %2624, label %3249, label %2625

; <label>:2625                                    ; preds = %2601
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2630 = extractvalue %dx.types.CBufRet.f32 %2626, 3
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.CBufRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.CBufRet.f32 %2631, 2
  %2635 = extractvalue %dx.types.CBufRet.f32 %2631, 3
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.CBufRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.CBufRet.f32 %2636, 2
  %2640 = extractvalue %dx.types.CBufRet.f32 %2636, 3
  %2641 = fmul fast float %2627, %2621
  %2642 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2628, float %2641)  ; FMad(a,b,c)
  %2643 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2629, float %2642)  ; FMad(a,b,c)
  %2644 = fadd fast float %2643, %2630
  %2645 = fmul fast float %2632, %2621
  %2646 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2633, float %2645)  ; FMad(a,b,c)
  %2647 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2634, float %2646)  ; FMad(a,b,c)
  %2648 = fadd fast float %2647, %2635
  %2649 = fmul fast float %2637, %2621
  %2650 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2638, float %2649)  ; FMad(a,b,c)
  %2651 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2639, float %2650)  ; FMad(a,b,c)
  %2652 = fadd fast float %2651, %2640
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.CBufRet.f32 %2653, 3
  %2657 = fmul fast float %2656, %2644
  %2658 = fmul fast float %2656, %2648
  %2659 = fadd fast float %2657, %2654
  %2660 = fadd fast float %2658, %2655
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.CBufRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.CBufRet.f32 %2661, 3
  %2665 = fmul fast float %2664, %2644
  %2666 = fmul fast float %2664, %2648
  %2667 = fadd fast float %2665, %2662
  %2668 = fadd fast float %2666, %2663
  %2669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.f32 %2669, 1
  %2671 = fsub fast float %2670, %2652
  %2672 = extractvalue %dx.types.CBufRet.f32 %2669, 2
  %2673 = fmul fast float %2671, %2672
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2661, 2
  %2677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2677, 2
  %2679 = fadd fast float %2678, %2676
  %2680 = fcmp fast ogt float %2679, 0.000000e+00
  br i1 %2680, label %2681, label %2705

; <label>:2681                                    ; preds = %2625
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.CBufRet.f32 %2682, 1
  %2685 = fsub fast float %2667, %2683
  %2686 = fsub fast float %2668, %2684
  %2687 = fcmp fast olt float %2685, 0.000000e+00
  %2688 = fcmp fast olt float %2686, 0.000000e+00
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2693 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %2694 = select i1 %2687, float %2690, float %2692
  %2695 = select i1 %2688, float %2691, float %2693
  %2696 = fmul fast float %2694, %2685
  %2697 = fmul fast float %2695, %2686
  %2698 = call float @dx.op.unary.f32(i32 6, float %2696)  ; FAbs(value)
  %2699 = call float @dx.op.unary.f32(i32 6, float %2697)  ; FAbs(value)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2701 = call float @dx.op.binary.f32(i32 35, float %2698, float %2699)  ; FMax(a,b)
  %2702 = fsub fast float %2700, %2701
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = fmul fast float %2703, %2675
  br label %2705

; <label>:2705                                    ; preds = %2681, %2625
  %2706 = phi float [ %2704, %2681 ], [ 0.000000e+00, %2625 ]
  %2707 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2708 = extractvalue %dx.types.CBufRet.f32 %2677, 1
  %2709 = fadd fast float %2708, %2707
  %2710 = fcmp fast ogt float %2709, 0.000000e+00
  %2711 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  br i1 %2710, label %2712, label %2735

; <label>:2712                                    ; preds = %2705
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.CBufRet.f32 %2713, 1
  %2716 = fsub fast float %2659, %2714
  %2717 = fsub fast float %2660, %2715
  %2718 = fcmp fast olt float %2716, 0.000000e+00
  %2719 = fcmp fast olt float %2717, 0.000000e+00
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 0
  %2722 = extractvalue %dx.types.CBufRet.f32 %2720, 1
  %2723 = extractvalue %dx.types.CBufRet.f32 %2720, 2
  %2724 = extractvalue %dx.types.CBufRet.f32 %2720, 3
  %2725 = select i1 %2718, float %2721, float %2723
  %2726 = select i1 %2719, float %2722, float %2724
  %2727 = fmul fast float %2725, %2716
  %2728 = fmul fast float %2726, %2717
  %2729 = call float @dx.op.unary.f32(i32 6, float %2727)  ; FAbs(value)
  %2730 = call float @dx.op.unary.f32(i32 6, float %2728)  ; FAbs(value)
  %2731 = call float @dx.op.binary.f32(i32 35, float %2729, float %2730)  ; FMax(a,b)
  %2732 = fsub fast float %2711, %2731
  %2733 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2734 = fmul fast float %2733, %2675
  br label %2735

; <label>:2735                                    ; preds = %2712, %2705
  %2736 = phi float [ %2734, %2712 ], [ 0.000000e+00, %2705 ]
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2743 = fsub fast float %2644, %2741
  %2744 = fsub fast float %2648, %2742
  %2745 = fcmp fast olt float %2743, 0.000000e+00
  %2746 = fcmp fast olt float %2744, 0.000000e+00
  %2747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.CBufRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.CBufRet.f32 %2747, 2
  %2751 = extractvalue %dx.types.CBufRet.f32 %2747, 3
  %2752 = select i1 %2745, float %2748, float %2750
  %2753 = select i1 %2746, float %2749, float %2751
  %2754 = fmul fast float %2752, %2743
  %2755 = fmul fast float %2753, %2744
  %2756 = call float @dx.op.unary.f32(i32 6, float %2754)  ; FAbs(value)
  %2757 = call float @dx.op.unary.f32(i32 6, float %2755)  ; FAbs(value)
  %2758 = call float @dx.op.binary.f32(i32 35, float %2756, float %2757)  ; FMax(a,b)
  %2759 = fsub fast float %2711, %2758
  %2760 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2761 = call float @dx.op.binary.f32(i32 36, float %2760, float %2739)  ; FMin(a,b)
  %2762 = fmul fast float %2761, %2675
  %2763 = fsub fast float %2736, %2762
  %2764 = fsub fast float %2706, %2736
  %2765 = fsub fast float %2764, %2762
  %2766 = call float @dx.op.binary.f32(i32 35, float %2762, float %2736)  ; FMax(a,b)
  %2767 = call float @dx.op.binary.f32(i32 35, float %2766, float %2706)  ; FMax(a,b)
  %2768 = fcmp fast olt float %2767, 1.000000e+00
  br i1 %2768, label %2769, label %3167, !dx.controlflow.hints !84

; <label>:2769                                    ; preds = %2735
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = fcmp fast une float %2771, 0.000000e+00
  br i1 %2772, label %2773, label %3167, !dx.controlflow.hints !85

; <label>:2773                                    ; preds = %2769
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2777 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2778 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2783 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.CBufRet.f32 %2784, 2
  %2788 = extractvalue %dx.types.CBufRet.f32 %2784, 3
  %2789 = fmul fast float %2775, %2621
  %2790 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2776, float %2789)  ; FMad(a,b,c)
  %2791 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2777, float %2790)  ; FMad(a,b,c)
  %2792 = fadd fast float %2791, %2778
  %2793 = fmul fast float %2780, %2621
  %2794 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2781, float %2793)  ; FMad(a,b,c)
  %2795 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2782, float %2794)  ; FMad(a,b,c)
  %2796 = fadd fast float %2795, %2783
  %2797 = fmul fast float %2785, %2621
  %2798 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2786, float %2797)  ; FMad(a,b,c)
  %2799 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2787, float %2798)  ; FMad(a,b,c)
  %2800 = fadd fast float %2799, %2788
  %2801 = fcmp fast oge float %2792, 1.000000e+00
  %2802 = fcmp fast oge float %2796, 1.000000e+00
  %2803 = or i1 %2801, %2802
  %2804 = fcmp fast olt float %2792, 0.000000e+00
  %2805 = fcmp fast olt float %2796, 0.000000e+00
  %2806 = or i1 %2804, %2805
  %2807 = or i1 %2803, %2806
  br i1 %2807, label %3167, label %2808, !dx.controlflow.hints !86

; <label>:2808                                    ; preds = %2773
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.i32 %2813, 2
  %2815 = uitofp i32 %2814 to float
  %2816 = extractvalue %dx.types.CBufRet.i32 %2813, 3
  %2817 = uitofp i32 %2816 to float
  %2818 = extractvalue %dx.types.CBufRet.f32 %2809, 3
  %2819 = fmul fast float %2818, 2.000000e+00
  %2820 = fsub fast float %2792, %2810
  %2821 = fsub fast float %2796, %2811
  %2822 = fmul fast float %2819, %2820
  %2823 = fmul fast float %2819, %2821
  %2824 = fdiv fast float 1.000000e+00, %2604
  %2825 = fmul fast float %2823, %2824
  %2826 = call float @dx.op.unary.f32(i32 6, float %2825)  ; FAbs(value)
  %2827 = fmul fast float %2812, %2623
  %2828 = fmul fast float %2827, %2819
  %2829 = call float @dx.op.unary.f32(i32 6, float %2828)  ; FAbs(value)
  %2830 = call float @dx.op.unary.f32(i32 6, float %2822)  ; FAbs(value)
  %2831 = call float @dx.op.binary.f32(i32 35, float %2830, float %2829)  ; FMax(a,b)
  %2832 = call float @dx.op.binary.f32(i32 35, float %2831, float %2826)  ; FMax(a,b)
  %2833 = fmul fast float %2832, 2.000000e+00
  %2834 = call float @dx.op.unary.f32(i32 23, float %2833)  ; Log(value)
  %2835 = call float @dx.op.binary.f32(i32 35, float %2834, float %2815)  ; FMax(a,b)
  %2836 = call float @dx.op.unary.f32(i32 22, float %2835)  ; Frc(value)
  %2837 = fadd fast float %2836, 0xBFEA666660000000
  %2838 = fmul fast float %2837, 8.000000e+00
  %2839 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2840 = call float @dx.op.unary.f32(i32 27, float %2835)  ; Round_ni(value)
  %2841 = fadd fast float %2840, %2839
  %2842 = call float @dx.op.binary.f32(i32 36, float %2841, float %2817)  ; FMin(a,b)
  %2843 = call float @dx.op.unary.f32(i32 27, float %2842)  ; Round_ni(value)
  %2844 = fsub fast float -0.000000e+00, %2843
  %2845 = call float @dx.op.unary.f32(i32 21, float %2844)  ; Exp(value)
  %2846 = fmul fast float %2845, %2819
  %2847 = fmul fast float %2846, %2792
  %2848 = fmul fast float %2846, %2796
  %2849 = fmul fast float %2847, 2.500000e-01
  %2850 = fmul fast float %2848, 2.500000e-01
  %2851 = fadd fast float %2849, 5.000000e-01
  %2852 = fadd fast float %2850, 5.000000e-01
  %2853 = fsub fast float %2817, %2815
  %2854 = fptoui float %2853 to i32
  %2855 = add i32 %2854, 320
  %2856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2855)  ; CBufferLoadLegacy(handle,regIndex)
  %2857 = extractvalue %dx.types.CBufRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.CBufRet.f32 %2856, 1
  %2859 = fcmp fast une float %2842, %2817
  %2860 = fsub fast float %2792, %2857
  %2861 = fsub fast float %2796, %2858
  %2862 = call float @dx.op.unary.f32(i32 6, float %2860)  ; FAbs(value)
  %2863 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2864 = fmul fast float %2862, %2846
  %2865 = fmul fast float %2863, %2846
  %2866 = fcmp fast olt float %2864, 1.000000e+00
  %2867 = fcmp fast olt float %2865, 1.000000e+00
  %2868 = and i1 %2866, %2867
  %2869 = or i1 %2859, %2868
  br i1 %2869, label %2870, label %3167, !dx.controlflow.hints !87

; <label>:2870                                    ; preds = %2808
  %2871 = fmul fast float %2848, 5.000000e-01
  %2872 = fmul fast float %2847, 5.000000e-01
  %2873 = fadd fast float %2871, 5.000000e-01
  %2874 = fadd fast float %2872, 5.000000e-01
  %2875 = sitofp i32 %2814 to float
  %2876 = fsub fast float %2842, %2875
  %2877 = call float @dx.op.unary.f32(i32 27, float %2876)  ; Round_ni(value)
  %2878 = call float @dx.op.unary.f32(i32 22, float %2842)  ; Frc(value)
  %2879 = call float @dx.op.unary.f32(i32 22, float %2874)  ; Frc(value)
  %2880 = call float @dx.op.unary.f32(i32 22, float %2873)  ; Frc(value)
  %2881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2879, float %2880, float %2877, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.ResRet.f32 %2881, 1
  %2884 = extractvalue %dx.types.ResRet.f32 %2881, 2
  %2885 = extractvalue %dx.types.ResRet.f32 %2881, 3
  %2886 = fcmp fast ogt float %2878, 0.000000e+00
  br i1 %2886, label %2887, label %2908, !dx.controlflow.hints !88

; <label>:2887                                    ; preds = %2870
  %2888 = fadd fast float %2877, 1.000000e+00
  %2889 = call float @dx.op.unary.f32(i32 22, float %2851)  ; Frc(value)
  %2890 = call float @dx.op.unary.f32(i32 22, float %2852)  ; Frc(value)
  %2891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2889, float %2890, float %2888, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.ResRet.f32 %2891, 1
  %2894 = extractvalue %dx.types.ResRet.f32 %2891, 2
  %2895 = extractvalue %dx.types.ResRet.f32 %2891, 3
  %2896 = fsub fast float %2892, %2882
  %2897 = fsub fast float %2893, %2883
  %2898 = fsub fast float %2894, %2884
  %2899 = fsub fast float %2895, %2885
  %2900 = fmul fast float %2896, %2878
  %2901 = fmul fast float %2897, %2878
  %2902 = fmul fast float %2898, %2878
  %2903 = fmul fast float %2899, %2878
  %2904 = fadd fast float %2900, %2882
  %2905 = fadd fast float %2901, %2883
  %2906 = fadd fast float %2902, %2884
  %2907 = fadd fast float %2903, %2885
  br label %2908

; <label>:2908                                    ; preds = %2887, %2870
  %2909 = phi float [ %2904, %2887 ], [ %2882, %2870 ]
  %2910 = phi float [ %2905, %2887 ], [ %2883, %2870 ]
  %2911 = phi float [ %2906, %2887 ], [ %2884, %2870 ]
  %2912 = phi float [ %2907, %2887 ], [ %2885, %2870 ]
  %2913 = fadd fast float %2909, -5.000000e-01
  %2914 = fadd fast float %2911, -5.000000e-01
  %2915 = fmul fast float %2913, 0xBFD5555560000000
  %2916 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2914, float %2915)  ; FMad(a,b,c)
  %2917 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2910, float 0.000000e+00)  ; FMad(a,b,c)
  %2918 = fadd fast float %2917, %2912
  %2919 = fmul fast float %2913, -7.500000e-01
  %2920 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2914, float %2919)  ; FMad(a,b,c)
  %2921 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2910, float 0.000000e+00)  ; FMad(a,b,c)
  %2922 = fadd fast float %2921, %2912
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2929 = extractvalue %dx.types.CBufRet.f32 %2925, 3
  %2930 = fsub fast float %2926, %2916
  %2931 = fsub fast float %2927, %2918
  %2932 = fsub fast float %2928, %2920
  %2933 = fsub fast float %2929, %2922
  %2934 = fmul fast float %2930, %2924
  %2935 = fmul fast float %2931, %2924
  %2936 = fmul fast float %2932, %2924
  %2937 = fmul fast float %2933, %2924
  %2938 = fadd fast float %2934, %2916
  %2939 = fadd fast float %2935, %2918
  %2940 = fadd fast float %2936, %2920
  %2941 = fadd fast float %2937, %2922
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 536870911
  %2945 = uitofp i32 %2944 to float
  %2946 = fmul fast float %2945, %2792
  %2947 = fmul fast float %2945, %2796
  %2948 = fptoui float %2946 to i32
  %2949 = fptoui float %2947 to i32
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 31
  %2953 = lshr i32 %2948, %2952
  %2954 = lshr i32 %2949, %2952
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 31
  %2958 = shl i32 1, %2957
  %2959 = call i32 @dx.op.binary.i32(i32 40, i32 %2958, i32 4)  ; UMin(a,b)
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.i32 %2960, 1
  %2963 = icmp eq i32 %2959, 0
  br i1 %2963, label %3005, label %2964

; <label>:2964                                    ; preds = %2908
  br label %2965

; <label>:2965                                    ; preds = %2993, %2964
  %2966 = phi i32 [ %2996, %2993 ], [ 0, %2964 ]
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = lshr i32 %2968, 16
  %2970 = and i32 %2969, 31
  %2971 = shl i32 %2954, %2970
  %2972 = add i32 %2971, %2953
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 31
  %2976 = shl i32 %2972, %2975
  %2977 = add i32 %2976, %2966
  %2978 = shl i32 %2977, 2
  %2979 = add i32 %2978, 32
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = icmp slt i32 %2981, 0
  %2983 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2966
  %2984 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2966
  %2985 = bitcast float* %2983 to i32*
  %2986 = bitcast float* %2984 to i32*
  br i1 %2982, label %2987, label %2993

; <label>:2987                                    ; preds = %2965
  %2988 = and i32 %2981, 1073741823
  %2989 = add nuw nsw i32 %2988, 20
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.i32 %2990, 1
  br label %2993

; <label>:2993                                    ; preds = %2987, %2965
  %2994 = phi i32 [ %2991, %2987 ], [ %2961, %2965 ]
  %2995 = phi i32 [ %2992, %2987 ], [ %2962, %2965 ]
  store i32 %2994, i32* %2985, align 4
  store i32 %2995, i32* %2986, align 4
  %2996 = add nuw i32 %2966, 1
  %2997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.i32 %2997, 2
  %2999 = icmp eq i32 %2998, 0
  %3000 = icmp ugt i32 %2981, -1073741825
  %3001 = and i1 %3000, %2999
  %3002 = icmp ult i32 %2996, %2959
  %3003 = and i1 %3001, %3002
  br i1 %3003, label %2965, label %3004

; <label>:3004                                    ; preds = %2993
  br label %3005

; <label>:3005                                    ; preds = %3004, %2908
  %3006 = phi i32 [ 0, %2908 ], [ %2996, %3004 ]
  %3007 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %3008 = fptoui float %3007 to i32
  %3009 = icmp eq i32 %3008, 0
  br i1 %3009, label %3061, label %3010

; <label>:3010                                    ; preds = %3005
  br label %3011

; <label>:3011                                    ; preds = %3056, %3010
  %3012 = phi i32 [ %3057, %3056 ], [ %3006, %3010 ]
  %3013 = phi i32 [ %3058, %3056 ], [ 0, %3010 ]
  %3014 = lshr i32 %3013, 2
  %3015 = and i32 %3013, 3
  %3016 = add nuw nsw i32 %3014, 83
  %3017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %3016)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.i32 %3017, 0
  %3019 = extractvalue %dx.types.CBufRet.i32 %3017, 1
  %3020 = extractvalue %dx.types.CBufRet.i32 %3017, 2
  %3021 = extractvalue %dx.types.CBufRet.i32 %3017, 3
  %3022 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %3018, i32* %3022, align 4
  %3023 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %3019, i32* %3023, align 4
  %3024 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %3020, i32* %3024, align 4
  %3025 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %3021, i32* %3025, align 4
  %3026 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %3015
  %3027 = load i32, i32* %3026, align 4, !tbaa !89, !noalias !93
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = lshr i32 %3029, 16
  %3031 = and i32 %3030, 31
  %3032 = shl i32 %2954, %3031
  %3033 = add i32 %3032, %2953
  %3034 = shl i32 %3033, 2
  %3035 = add i32 %3034, %3027
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = icmp eq i32 %3037, 0
  br i1 %3038, label %3056, label %3039

; <label>:3039                                    ; preds = %3011
  %3040 = icmp slt i32 %3037, 0
  %3041 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3012
  %3042 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3012
  %3043 = bitcast float* %3041 to i32*
  %3044 = bitcast float* %3042 to i32*
  br i1 %3040, label %3045, label %3052

; <label>:3045                                    ; preds = %3039
  %3046 = and i32 %3037, 1073741823
  %3047 = add i32 %3027, 20
  %3048 = add i32 %3047, %3046
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.i32 %3049, 1
  br label %3052

; <label>:3052                                    ; preds = %3045, %3039
  %3053 = phi i32 [ %3050, %3045 ], [ %2961, %3039 ]
  %3054 = phi i32 [ %3051, %3045 ], [ %2962, %3039 ]
  store i32 %3053, i32* %3043, align 4
  store i32 %3054, i32* %3044, align 4
  %3055 = add i32 %3012, 1
  br label %3056

; <label>:3056                                    ; preds = %3052, %3011
  %3057 = phi i32 [ %3012, %3011 ], [ %3055, %3052 ]
  %3058 = add nuw i32 %3013, 1
  %3059 = icmp eq i32 %3058, %3008
  br i1 %3059, label %3060, label %3011

; <label>:3060                                    ; preds = %3056
  br label %3061

; <label>:3061                                    ; preds = %3060, %3005
  %3062 = phi i32 [ %3006, %3005 ], [ %3057, %3060 ]
  %3063 = icmp eq i32 %3062, 1
  %3064 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %3065 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %3063, label %3066, label %3069

; <label>:3066                                    ; preds = %3061
  %3067 = load float, float* %3064, align 4
  %3068 = load float, float* %3065, align 4
  br label %3096

; <label>:3069                                    ; preds = %3061
  %3070 = load float, float* %3064, align 4
  %3071 = load float, float* %3065, align 4
  %3072 = fdiv fast float 1.000000e+00, %3071
  %3073 = fsub fast float %3070, %3072
  %3074 = icmp ugt i32 %3062, 1
  br i1 %3074, label %3075, label %3091

; <label>:3075                                    ; preds = %3069
  br label %3076

; <label>:3076                                    ; preds = %3076, %3075
  %3077 = phi float [ %3086, %3076 ], [ %3073, %3075 ]
  %3078 = phi float [ %3087, %3076 ], [ %3070, %3075 ]
  %3079 = phi i32 [ %3088, %3076 ], [ 1, %3075 ]
  %3080 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3079
  %3081 = load float, float* %3080, align 4
  %3082 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3079
  %3083 = load float, float* %3082, align 4
  %3084 = fdiv fast float 1.000000e+00, %3083
  %3085 = fsub fast float %3081, %3084
  %3086 = call float @dx.op.binary.f32(i32 36, float %3077, float %3085)  ; FMin(a,b)
  %3087 = call float @dx.op.binary.f32(i32 35, float %3078, float %3081)  ; FMax(a,b)
  %3088 = add nuw i32 %3079, 1
  %3089 = icmp eq i32 %3088, %3062
  br i1 %3089, label %3090, label %3076

; <label>:3090                                    ; preds = %3076
  br label %3091

; <label>:3091                                    ; preds = %3090, %3069
  %3092 = phi float [ %3073, %3069 ], [ %3086, %3090 ]
  %3093 = phi float [ %3070, %3069 ], [ %3087, %3090 ]
  %3094 = fsub fast float %3093, %3092
  %3095 = fdiv fast float 1.000000e+00, %3094
  br label %3096

; <label>:3096                                    ; preds = %3091, %3066
  %3097 = phi float [ %3067, %3066 ], [ %3093, %3091 ]
  %3098 = phi float [ %3068, %3066 ], [ %3095, %3091 ]
  %3099 = fadd fast float %2800, %3097
  %3100 = fmul fast float %3099, %3098
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  %3102 = fmul fast float %3101, 2.000000e+00
  %3103 = fsub fast float 1.000000e+00, %3102
  %3104 = fmul fast float %2938, %2938
  %3105 = fsub fast float %2939, %3104
  %3106 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3105)  ; FMax(a,b)
  %3107 = fdiv fast float 1.000000e+00, %3106
  %3108 = fmul fast float %2939, %2938
  %3109 = fsub fast float %2940, %3108
  %3110 = fsub fast float %3103, %2938
  %3111 = fmul fast float %3103, %3103
  %3112 = fsub fast float %3111, %2939
  %3113 = fmul fast float %3107, %3109
  %3114 = fmul fast float %3113, %3110
  %3115 = fsub fast float %3112, %3114
  %3116 = fmul fast float %2939, %2939
  %3117 = fsub fast float %2941, %3116
  %3118 = fmul fast float %3109, %3109
  %3119 = fmul fast float %3118, %3107
  %3120 = fsub fast float %3117, %3119
  %3121 = fdiv fast float %3115, %3120
  %3122 = fmul fast float %3121, %3109
  %3123 = fsub fast float %3110, %3122
  %3124 = fmul fast float %3123, %3107
  %3125 = fmul fast float %3124, %2938
  %3126 = fsub fast float 1.000000e+00, %3125
  %3127 = fmul fast float %3121, %2939
  %3128 = fsub fast float %3126, %3127
  %3129 = fmul fast float %3124, %3124
  %3130 = fmul fast float %3121, 4.000000e+00
  %3131 = fmul fast float %3130, %3128
  %3132 = fsub fast float %3129, %3131
  %3133 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3134 = fcmp fast oge float %3124, 0.000000e+00
  %3135 = fsub fast float -0.000000e+00, %3133
  %3136 = select i1 %3134, float %3135, float %3133
  %3137 = fsub fast float %3136, %3124
  %3138 = fdiv fast float %3137, %3121
  %3139 = fdiv fast float %3128, %3137
  %3140 = fmul fast float %3138, 5.000000e-01
  %3141 = fmul fast float %3139, 2.000000e+00
  %3142 = select i1 %3134, float %3140, float %3141
  %3143 = select i1 %3134, float %3141, float %3140
  %3144 = call float @dx.op.binary.f32(i32 35, float %3142, float %3143)  ; FMax(a,b)
  %3145 = call float @dx.op.binary.f32(i32 36, float %3142, float %3143)  ; FMin(a,b)
  %3146 = fcmp fast ogt float %3103, %3144
  %3147 = fsub fast float %3103, %3145
  %3148 = fsub fast float %3103, %3144
  %3149 = fsub fast float %3144, %3145
  %3150 = select i1 %3146, float %3148, float %3149
  %3151 = fmul float %3147, %3150
  %3152 = select i1 %3146, float %3145, float %3103
  %3153 = fcmp fast ogt float %3103, %3145
  %3154 = fmul fast float %3152, %3144
  %3155 = fadd fast float %3152, %3144
  %3156 = fmul fast float %3155, %2938
  %3157 = fadd fast float %3154, %2939
  %3158 = fsub fast float %3157, %3156
  %3159 = fdiv fast float %3158, %3151
  %3160 = select i1 %3153, float %3159, float 0.000000e+00
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = select i1 %3146, float %3161, float %3160
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3164 = extractvalue %dx.types.CBufRet.f32 %2923, 3
  %3165 = fmul fast float %3164, %3163
  %3166 = fsub fast float 1.000000e+00, %3165
  br label %3167

; <label>:3167                                    ; preds = %3096, %2808, %2773, %2769, %2735
  %3168 = phi float [ 1.000000e+00, %2735 ], [ %3166, %3096 ], [ 1.000000e+00, %2773 ], [ 1.000000e+00, %2808 ], [ 1.000000e+00, %2769 ]
  %3169 = fcmp fast ogt float %2765, 0.000000e+00
  br i1 %3169, label %3170, label %3176, !dx.controlflow.hints !102

; <label>:3170                                    ; preds = %3167
  %3171 = fadd fast float %2678, %2652
  %3172 = call float @dx.op.binary.f32(i32 35, float %3171, float 0.000000e+00)  ; FMax(a,b)
  %3173 = fadd fast float %3172, 0x3F10000000000000
  %3174 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %2667, float %2668, float undef, float undef, i32 0, i32 0, i32 undef, float %3173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  br label %3176

; <label>:3176                                    ; preds = %3170, %3167
  %3177 = phi float [ %3175, %3170 ], [ 1.000000e+00, %3167 ]
  %3178 = fcmp fast ogt float %2763, 0.000000e+00
  br i1 %3178, label %3179, label %3185, !dx.controlflow.hints !103

; <label>:3179                                    ; preds = %3176
  %3180 = fadd fast float %2708, %2652
  %3181 = call float @dx.op.binary.f32(i32 35, float %3180, float 0.000000e+00)  ; FMax(a,b)
  %3182 = fadd fast float %3181, 0x3F10000000000000
  %3183 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %2659, float %2660, float undef, float undef, i32 0, i32 0, i32 undef, float %3182)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3184 = extractvalue %dx.types.ResRet.f32 %3183, 0
  br label %3185

; <label>:3185                                    ; preds = %3179, %3176
  %3186 = phi float [ %3184, %3179 ], [ 1.000000e+00, %3176 ]
  %3187 = fcmp fast ogt float %2762, 0.000000e+00
  br i1 %3187, label %3188, label %3195, !dx.controlflow.hints !104

; <label>:3188                                    ; preds = %3185
  %3189 = extractvalue %dx.types.CBufRet.f32 %2677, 0
  %3190 = fadd fast float %3189, %2652
  %3191 = call float @dx.op.binary.f32(i32 35, float %3190, float 0.000000e+00)  ; FMax(a,b)
  %3192 = fadd fast float %3191, 0x3F10000000000000
  %3193 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %2644, float %2648, float undef, float undef, i32 0, i32 0, i32 undef, float %3192)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3194 = extractvalue %dx.types.ResRet.f32 %3193, 0
  br label %3195

; <label>:3195                                    ; preds = %3188, %3185
  %3196 = phi float [ %3194, %3188 ], [ 1.000000e+00, %3185 ]
  %3197 = fsub fast float %3177, %3168
  %3198 = fmul fast float %3197, %2706
  %3199 = fadd fast float %3198, %3168
  %3200 = fsub fast float %3186, %3199
  %3201 = fmul fast float %3200, %2736
  %3202 = fadd fast float %3201, %3199
  %3203 = fsub fast float %3196, %3202
  %3204 = fmul fast float %3203, %2762
  %3205 = fadd fast float %3204, %3202
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 2
  %3208 = fcmp fast ogt float %3207, 0.000000e+00
  br i1 %3208, label %3209, label %3249, !dx.controlflow.hints !105

; <label>:3209                                    ; preds = %3195
  %3210 = fcmp fast ugt float %3207, 0.000000e+00
  br i1 %3210, label %3211, label %3246

; <label>:3211                                    ; preds = %3209
  %3212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3213 = extractvalue %dx.types.CBufRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.CBufRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.CBufRet.f32 %3212, 2
  %3216 = extractvalue %dx.types.CBufRet.f32 %3212, 3
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.CBufRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.CBufRet.f32 %3217, 2
  %3221 = extractvalue %dx.types.CBufRet.f32 %3217, 3
  %3222 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3223 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3228 = fadd fast float %3225, %2621
  %3229 = fadd fast float %3226, %2622
  %3230 = fadd fast float %3227, %2623
  %3231 = fmul fast float %3228, %3213
  %3232 = call float @dx.op.tertiary.f32(i32 46, float %3214, float %3229, float %3231)  ; FMad(a,b,c)
  %3233 = call float @dx.op.tertiary.f32(i32 46, float %3215, float %3230, float %3232)  ; FMad(a,b,c)
  %3234 = fadd fast float %3233, %3216
  %3235 = fmul fast float %3228, %3218
  %3236 = call float @dx.op.tertiary.f32(i32 46, float %3219, float %3229, float %3235)  ; FMad(a,b,c)
  %3237 = call float @dx.op.tertiary.f32(i32 46, float %3220, float %3230, float %3236)  ; FMad(a,b,c)
  %3238 = fadd fast float %3237, %3221
  %3239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %3234, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = fmul fast float %3240, %3223
  %3242 = fadd fast float %3241, %3222
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = fmul fast float %3243, %3207
  %3245 = fsub fast float 1.000000e+00, %3244
  br label %3246

; <label>:3246                                    ; preds = %3211, %3209
  %3247 = phi float [ %3245, %3211 ], [ 1.000000e+00, %3209 ]
  %3248 = fmul fast float %3247, %3205
  br label %3249

; <label>:3249                                    ; preds = %3246, %3195, %2601
  %3250 = phi float [ 1.000000e+00, %2601 ], [ %3248, %3246 ], [ %3205, %3195 ]
  %3251 = call float @dx.op.binary.f32(i32 36, float %3250, float %3250)  ; FMin(a,b)
  %3252 = call float @dx.op.binary.f32(i32 36, float %3250, float %3251)  ; FMin(a,b)
  %3253 = fcmp fast ogt float %3252, 0.000000e+00
  br i1 %3253, label %3254, label %3605, !dx.controlflow.hints !106

; <label>:3254                                    ; preds = %3249
  %3255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3256 = extractvalue %dx.types.CBufRet.f32 %3255, 0
  %3257 = extractvalue %dx.types.CBufRet.f32 %3255, 1
  %3258 = extractvalue %dx.types.CBufRet.f32 %3255, 2
  %3259 = extractvalue %dx.types.CBufRet.f32 %3255, 3
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.CBufRet.f32 %3260, 2
  %3264 = extractvalue %dx.types.CBufRet.f32 %3260, 3
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.CBufRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.CBufRet.f32 %3265, 2
  %3269 = extractvalue %dx.types.CBufRet.f32 %3265, 3
  %3270 = fmul fast float %3256, %2621
  %3271 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %3257, float %3270)  ; FMad(a,b,c)
  %3272 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %3258, float %3271)  ; FMad(a,b,c)
  %3273 = fadd fast float %3272, %3259
  %3274 = fmul fast float %3261, %2621
  %3275 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %3262, float %3274)  ; FMad(a,b,c)
  %3276 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %3263, float %3275)  ; FMad(a,b,c)
  %3277 = fadd fast float %3276, %3264
  %3278 = fmul fast float %3266, %2621
  %3279 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %3267, float %3278)  ; FMad(a,b,c)
  %3280 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %3268, float %3279)  ; FMad(a,b,c)
  %3281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3282 = extractvalue %dx.types.CBufRet.f32 %3281, 0
  %3283 = extractvalue %dx.types.CBufRet.f32 %3281, 1
  %3284 = extractvalue %dx.types.CBufRet.f32 %3281, 3
  %3285 = fmul fast float %3284, %3273
  %3286 = fmul fast float %3284, %3277
  %3287 = fadd fast float %3285, %3282
  %3288 = fadd fast float %3286, %3283
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.CBufRet.f32 %3289, 1
  %3292 = fsub fast float %3287, %3290
  %3293 = fsub fast float %3288, %3291
  %3294 = fcmp fast olt float %3292, 0.000000e+00
  %3295 = fcmp fast olt float %3293, 0.000000e+00
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.CBufRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.CBufRet.f32 %3296, 2
  %3300 = extractvalue %dx.types.CBufRet.f32 %3296, 3
  %3301 = select i1 %3294, float %3297, float %3299
  %3302 = select i1 %3295, float %3298, float %3300
  %3303 = fmul fast float %3301, %3292
  %3304 = fmul fast float %3302, %3293
  %3305 = call float @dx.op.unary.f32(i32 6, float %3303)  ; FAbs(value)
  %3306 = call float @dx.op.unary.f32(i32 6, float %3304)  ; FAbs(value)
  %3307 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %3308 = call float @dx.op.binary.f32(i32 35, float %3305, float %3306)  ; FMax(a,b)
  %3309 = fsub fast float %3307, %3308
  %3310 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  %3311 = fcmp fast ogt float %3310, 0.000000e+00
  br i1 %3311, label %3312, label %3353, !dx.controlflow.hints !107

; <label>:3312                                    ; preds = %3254
  %3313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %3287, float %3288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 1
  %3315 = fcmp fast ogt float %3314, 0.000000e+00
  br i1 %3315, label %3316, label %3348

; <label>:3316                                    ; preds = %3312
  %3317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %3287, float %3288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.ResRet.f32 %3317, 2
  %3321 = extractvalue %dx.types.ResRet.f32 %3317, 3
  %3322 = fsub fast float 1.000000e+00, %3269
  %3323 = fsub fast float %3322, %3280
  %3324 = fmul fast float %3323, 0x400921FB60000000
  %3325 = fadd fast float %3324, 0x3FF921FB60000000
  %3326 = call float @dx.op.unary.f32(i32 13, float %3325)  ; Sin(value)
  %3327 = fadd fast float %3326, -1.000000e+00
  %3328 = fmul fast float %3327, 0x3FD45F3060000000
  %3329 = fmul fast float %3323, 0x401921FB60000000
  %3330 = fadd fast float %3329, 0x400921FB60000000
  %3331 = call float @dx.op.unary.f32(i32 13, float %3330)  ; Sin(value)
  %3332 = fadd fast float %3331, 0x3E7777A5C0000000
  %3333 = fmul fast float %3332, 0x3FC45F3060000000
  %3334 = fmul fast float %3323, 0x4022D97C80000000
  %3335 = fadd fast float %3334, 0x4012D97C80000000
  %3336 = call float @dx.op.unary.f32(i32 13, float %3335)  ; Sin(value)
  %3337 = fadd fast float %3336, 1.000000e+00
  %3338 = fmul fast float %3337, 0x3FBB2995E0000000
  %3339 = fmul fast float %3323, 0x402921FB60000000
  %3340 = fadd fast float %3339, 0x401921FB60000000
  %3341 = call float @dx.op.unary.f32(i32 13, float %3340)  ; Sin(value)
  %3342 = fadd fast float %3341, 0xBE8777A5C0000000
  %3343 = fmul fast float %3342, 0x3FB45F3060000000
  %3344 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %3328, float %3333, float %3338, float %3343)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3345 = fmul fast float %3344, 0xBFF7154760000000
  %3346 = call float @dx.op.unary.f32(i32 21, float %3345)  ; Exp(value)
  %3347 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  br label %3348

; <label>:3348                                    ; preds = %3316, %3312
  %3349 = phi float [ %3347, %3316 ], [ 1.000000e+00, %3312 ]
  %3350 = fadd fast float %3349, -1.000000e+00
  %3351 = fmul fast float %3350, %3310
  %3352 = fadd fast float %3351, 1.000000e+00
  br label %3353

; <label>:3353                                    ; preds = %3348, %3254
  %3354 = phi float [ %3352, %3348 ], [ 1.000000e+00, %3254 ]
  %3355 = fmul fast float %3354, %3250
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.CBufRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.CBufRet.f32 %3356, 2
  %3360 = fadd fast float %3357, %133
  %3361 = fadd fast float %3358, %134
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 1
  %3364 = fsub fast float -0.000000e+00, %3360
  %3365 = fsub fast float -0.000000e+00, %3361
  %3366 = fsub fast float %2165, %3359
  %3367 = fadd fast float %3366, %3363
  %3368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3364, float %3365, float %3367)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2602, float %2603, float %2604)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = fdiv fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3370, %3368
  %3372 = fmul fast float %2602, %3371
  %3373 = fmul fast float %2603, %3371
  %3374 = fadd fast float %3372, %3360
  %3375 = fadd fast float %3373, %3361
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.CBufRet.f32 %3376, 1
  %3379 = fsub fast float %3374, %3377
  %3380 = fsub fast float %3375, %3378
  %3381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.f32 %3381, 2
  %3383 = extractvalue %dx.types.CBufRet.f32 %3381, 3
  %3384 = fmul fast float %3379, %3382
  %3385 = fmul fast float %3380, %3383
  %3386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3387 = extractvalue %dx.types.CBufRet.i32 %3386, 3
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3394, label %3389

; <label>:3389                                    ; preds = %3353
  %3390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %3384, float %3385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.ResRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3390, 2
  br label %3399

; <label>:3394                                    ; preds = %3353
  %3395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %3384, float %3385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = extractvalue %dx.types.ResRet.f32 %3395, 1
  %3398 = extractvalue %dx.types.ResRet.f32 %3395, 2
  br label %3399

; <label>:3399                                    ; preds = %3394, %3389
  %3400 = phi float [ %3391, %3389 ], [ %3396, %3394 ]
  %3401 = phi float [ %3392, %3389 ], [ %3397, %3394 ]
  %3402 = phi float [ %3393, %3389 ], [ %3398, %3394 ]
  %3403 = extractvalue %dx.types.CBufRet.f32 %3362, 2
  %3404 = fmul fast float %3403, %3400
  %3405 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3406 = fsub fast float %3371, %3405
  %3407 = fsub fast float %3406, %3404
  %3408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3407)  ; FMax(a,b)
  %3409 = fmul fast float %3408, %3401
  %3410 = call float @dx.op.binary.f32(i32 36, float %3402, float %3409)  ; FMin(a,b)
  %3411 = fmul fast float %3410, 0xBFF7154760000000
  %3412 = call float @dx.op.unary.f32(i32 21, float %3411)  ; Exp(value)
  %3413 = fmul fast float %3355, %3412
  %3414 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %2602, float %2603, float %2604)  ; Dot3(ax,ay,az,bx,by,bz)
  %3415 = fcmp fast ogt float %3414, 0.000000e+00
  br i1 %3415, label %3416, label %3605, !dx.controlflow.hints !108

; <label>:3416                                    ; preds = %3399
  %3417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3417, 1
  %3419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %3420 = extractvalue %dx.types.CBufRet.f32 %3419, 1
  %3421 = select i1 %2171, float %3418, float %3420
  %3422 = extractvalue %dx.types.CBufRet.f32 %3417, 2
  %3423 = extractvalue %dx.types.CBufRet.f32 %3419, 2
  %3424 = select i1 %2171, float %3422, float %3423
  %3425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %3426 = extractvalue %dx.types.CBufRet.i32 %3425, 0
  %3427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.i32 %3427, 0
  %3429 = select i1 %2171, i32 %3426, i32 %3428
  %3430 = fcmp fast olt float %3421, 5.000000e-01
  %3431 = icmp eq i32 %3429, 0
  %3432 = or i1 %3430, %3431
  br i1 %3432, label %3602, label %3433

; <label>:3433                                    ; preds = %3416
  %3434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.i32 %3434, 0
  %3436 = uitofp i32 %3435 to float
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.CBufRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.CBufRet.f32 %3437, 2
  %3441 = extractvalue %dx.types.CBufRet.f32 %3437, 3
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.CBufRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.CBufRet.f32 %3442, 2
  %3446 = extractvalue %dx.types.CBufRet.f32 %3442, 3
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.CBufRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.CBufRet.f32 %3447, 2
  %3451 = extractvalue %dx.types.CBufRet.f32 %3447, 3
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 0
  %3454 = extractvalue %dx.types.CBufRet.f32 %3452, 1
  %3455 = extractvalue %dx.types.CBufRet.f32 %3452, 2
  %3456 = extractvalue %dx.types.CBufRet.f32 %3452, 3
  %3457 = fdiv fast float 1.000000e+00, %76
  %3458 = fmul fast float %3455, %85
  %3459 = fmul fast float %3456, %86
  %3460 = fmul fast float %3421, %2602
  %3461 = fmul fast float %3421, %2603
  %3462 = fmul fast float %3421, %2604
  %3463 = fadd fast float %3460, %133
  %3464 = fadd fast float %3461, %134
  %3465 = fadd fast float %3462, %135
  %3466 = fmul fast float %3438, %3463
  %3467 = call float @dx.op.tertiary.f32(i32 46, float %3464, float %3439, float %3466)  ; FMad(a,b,c)
  %3468 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3440, float %3467)  ; FMad(a,b,c)
  %3469 = fadd fast float %3468, %3441
  %3470 = fmul fast float %3443, %3463
  %3471 = call float @dx.op.tertiary.f32(i32 46, float %3464, float %3444, float %3470)  ; FMad(a,b,c)
  %3472 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3445, float %3471)  ; FMad(a,b,c)
  %3473 = fadd fast float %3472, %3446
  %3474 = fmul fast float %3448, %3463
  %3475 = call float @dx.op.tertiary.f32(i32 46, float %3464, float %3449, float %3474)  ; FMad(a,b,c)
  %3476 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3450, float %3475)  ; FMad(a,b,c)
  %3477 = fadd fast float %3476, %3451
  %3478 = fdiv fast float 1.000000e+00, %3477
  %3479 = fmul fast float %3469, 5.000000e-01
  %3480 = fmul fast float %3473, -5.000000e-01
  %3481 = fmul fast float %3479, %3478
  %3482 = fmul fast float %3480, %3478
  %3483 = fsub fast float 5.000000e-01, %3458
  %3484 = fadd fast float %3483, %3481
  %3485 = fsub fast float 5.000000e-01, %3459
  %3486 = fadd fast float %3485, %3482
  %3487 = fsub fast float %3478, %3457
  %3488 = call float @dx.op.dot2.f32(i32 54, float %3484, float %3486, float %3484, float %3486)  ; Dot2(ax,ay,bx,by)
  %3489 = call float @dx.op.binary.f32(i32 35, float %3488, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %3490 = call float @dx.op.dot2.f32(i32 54, float %3453, float %3454, float %3453, float %3454)  ; Dot2(ax,ay,bx,by)
  %3491 = fmul fast float %3490, %3489
  %3492 = call float @dx.op.unary.f32(i32 25, float %3491)  ; Rsqrt(value)
  %3493 = fmul fast float %3492, %3484
  %3494 = fmul fast float %3492, %3486
  %3495 = fadd fast float %3493, %3458
  %3496 = fadd fast float %3494, %3459
  %3497 = fmul fast float %3484, %3453
  %3498 = fmul fast float %3486, %3454
  %3499 = fmul fast float %3497, %3497
  %3500 = fmul fast float %3498, %3498
  %3501 = fadd fast float %3499, %3500
  %3502 = call float @dx.op.unary.f32(i32 24, float %3501)  ; Sqrt(value)
  %3503 = fdiv fast float 1.000000e+00, %3502
  %3504 = fmul fast float %3502, 3.906250e-03
  %3505 = fmul fast float %2170, 0x3F70624DE0000000
  %3506 = fadd fast float %3505, 0x3F70624DE0000000
  %3507 = icmp sgt i32 %3429, -1
  br i1 %3507, label %3508, label %3567

; <label>:3508                                    ; preds = %3433
  br label %3509

; <label>:3509                                    ; preds = %3563, %3508
  %3510 = phi float [ %3541, %3563 ], [ %76, %3508 ]
  %3511 = phi float [ %3528, %3563 ], [ %76, %3508 ]
  %3512 = phi float [ %3511, %3563 ], [ %76, %3508 ]
  %3513 = phi i32 [ %3564, %3563 ], [ 0, %3508 ]
  %3514 = sitofp i32 %3513 to float
  %3515 = fadd fast float %209, 5.000000e-01
  %3516 = call float @dx.op.unary.f32(i32 22, float %3515)  ; Frc(value)
  %3517 = fadd fast float %3514, %3516
  %3518 = sitofp i32 %3429 to float
  %3519 = fdiv fast float %3517, %3518
  %3520 = fmul fast float %3519, %3519
  %3521 = call float @dx.op.binary.f32(i32 36, float %3520, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %3522 = fmul fast float %3521, %3484
  %3523 = fmul fast float %3521, %3486
  %3524 = fmul fast float %3521, %3487
  %3525 = fadd fast float %3522, %3495
  %3526 = fadd fast float %3523, %3496
  %3527 = fadd fast float %3524, %3457
  %3528 = fdiv fast float 1.000000e+00, %3527
  %3529 = icmp ne i32 %3435, 0
  %3530 = fmul fast float %3504, %3521
  %3531 = call float @dx.op.binary.f32(i32 36, float %3530, float %3436)  ; FMin(a,b)
  %3532 = select i1 %3529, float %3531, float 0.000000e+00
  %3533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %3525, float %3526, float undef, float undef, i32 0, i32 0, i32 undef, float %3532)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = fcmp fast ogt float %3534, -1.000000e+00
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 1
  %3538 = select i1 %3535, float %3537, float 1.000000e+00
  %3539 = fadd fast float %3534, 1.000000e+00
  %3540 = fmul fast float %3538, %3539
  %3541 = call float @dx.op.unary.f32(i32 6, float %3540)  ; FAbs(value)
  %3542 = fmul fast float %3541, %3506
  %3543 = fsub fast float %3528, %3541
  %3544 = fsub fast float %3543, %3542
  %3545 = fcmp fast ogt float %3544, 0.000000e+00
  %3546 = fcmp fast ogt float %3424, 0.000000e+00
  br i1 %3546, label %3547, label %3550

; <label>:3547                                    ; preds = %3509
  %3548 = fsub fast float %3528, %3512
  %3549 = call float @dx.op.binary.f32(i32 35, float %3548, float %3424)  ; FMax(a,b)
  br label %3550

; <label>:3550                                    ; preds = %3547, %3509
  %3551 = phi float [ %3549, %3547 ], [ %3421, %3509 ]
  %3552 = fcmp fast olt float %3544, %3551
  %3553 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3554 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3555 = fcmp fast oeq float %3525, %3553
  %3556 = fcmp fast oeq float %3526, %3554
  %3557 = and i1 %3555, %3556
  %3558 = and i1 %3545, %3552
  %3559 = and i1 %3558, %3557
  %3560 = fcmp fast ogt float %3521, %3503
  %3561 = and i1 %3560, %3559
  %3562 = zext i1 %3561 to i32
  br i1 %3561, label %3566, label %3563

; <label>:3563                                    ; preds = %3550
  %3564 = add nuw nsw i32 %3513, 1
  %3565 = icmp slt i32 %3513, %3429
  br i1 %3565, label %3509, label %3566

; <label>:3566                                    ; preds = %3563, %3550
  br label %3567

; <label>:3567                                    ; preds = %3566, %3433
  %3568 = phi i32 [ 0, %3433 ], [ %3562, %3566 ]
  %3569 = phi float [ %76, %3433 ], [ %3541, %3566 ]
  %3570 = phi float [ %76, %3433 ], [ %3510, %3566 ]
  %3571 = phi float [ %76, %3433 ], [ %3528, %3566 ]
  %3572 = phi float [ %76, %3433 ], [ %3511, %3566 ]
  %3573 = fsub fast float %3572, %3570
  %3574 = fsub fast float %3571, %3569
  %3575 = fsub fast float %3573, %3574
  %3576 = fcmp fast une float %3575, 0.000000e+00
  %3577 = fmul fast float %3573, %3571
  %3578 = fmul fast float %3572, %3574
  %3579 = fsub fast float %3577, %3578
  %3580 = fdiv fast float 1.000000e+00, %3575
  %3581 = fmul fast float %3579, %3580
  %3582 = select i1 %3576, float %3581, float %3571
  %3583 = fdiv fast float 1.000000e+00, %3582
  %3584 = fsub fast float %3583, %3457
  %3585 = fdiv fast float %3584, %3487
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3587 = fmul fast float %3586, %3484
  %3588 = fmul fast float %3586, %3486
  %3589 = fadd fast float %3495, -5.000000e-01
  %3590 = fadd fast float %3589, %3587
  %3591 = fadd fast float %3496, -5.000000e-01
  %3592 = fadd fast float %3591, %3588
  %3593 = call float @dx.op.unary.f32(i32 6, float %3590)  ; FAbs(value)
  %3594 = call float @dx.op.unary.f32(i32 6, float %3592)  ; FAbs(value)
  %3595 = fadd fast float %3593, -5.000000e-01
  %3596 = fadd fast float %3594, -5.000000e-01
  %3597 = call float @dx.op.binary.f32(i32 35, float %3595, float %3596)  ; FMax(a,b)
  %3598 = fcmp fast olt float %3597, 0.000000e+00
  %3599 = icmp ne i32 %3568, 0
  %3600 = and i1 %3599, %3598
  %3601 = select i1 %3600, float 0.000000e+00, float 1.000000e+00
  br label %3602

; <label>:3602                                    ; preds = %3567, %3416
  %3603 = phi float [ %3601, %3567 ], [ 1.000000e+00, %3416 ]
  %3604 = fmul fast float %3603, %3413
  br label %3605

; <label>:3605                                    ; preds = %3602, %3399, %3249
  %3606 = phi float [ %3604, %3602 ], [ %3413, %3399 ], [ %3250, %3249 ]
  %3607 = call float @dx.op.binary.f32(i32 36, float %3606, float %3606)  ; FMin(a,b)
  %3608 = call float @dx.op.binary.f32(i32 36, float %3606, float %3607)  ; FMin(a,b)
  %3609 = fcmp fast ogt float %3608, 0.000000e+00
  br i1 %3609, label %3610, label %3996, !dx.controlflow.hints !109

; <label>:3610                                    ; preds = %3605
  %3611 = fmul fast float %3606, %2613
  %3612 = fmul fast float %3606, %2614
  %3613 = fmul fast float %3606, %2615
  %3614 = fsub fast float %135, %1953
  %3615 = fcmp fast ogt float %3614, 0.000000e+00
  %3616 = fmul fast float %2602, 5.120000e+02
  %3617 = fmul fast float %2603, 5.120000e+02
  %3618 = fmul fast float %2604, 5.120000e+02
  %3619 = fadd fast float %3618, %135
  %3620 = fsub fast float %1953, %3619
  %3621 = fmul fast float %3620, 2.000000e+00
  %3622 = fadd fast float %3621, %3619
  %3623 = select i1 %3615, float %3622, float %3619
  %3624 = fsub fast float %3623, %135
  %3625 = call float @dx.op.dot3.f32(i32 55, float %3616, float %3617, float %3624, float %3616, float %3617, float %3624)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = call float @dx.op.unary.f32(i32 25, float %3625)  ; Rsqrt(value)
  %3627 = fmul fast float %3626, %3616
  %3628 = fmul fast float %3626, %3617
  %3629 = fmul fast float %3626, %3624
  %3630 = fsub fast float %1953, %135
  %3631 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3630)  ; Dot3(ax,ay,az,bx,by,bz)
  %3632 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3627, float %3628, float %3629)  ; Dot3(ax,ay,az,bx,by,bz)
  %3633 = fdiv fast float 1.000000e+00, %3632
  %3634 = fmul fast float %3633, %3631
  %3635 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3614, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3636 = fcmp fast ogt float %3635, 0.000000e+00
  %3637 = fcmp fast olt float %3635, 0.000000e+00
  %3638 = zext i1 %3636 to i32
  %3639 = zext i1 %3637 to i32
  %3640 = sub nsw i32 %3638, %3639
  %3641 = sitofp i32 %3640 to float
  %3642 = fsub fast float %3623, %1953
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3616, float %3617, float %3642, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = fcmp fast ogt float %3643, 0.000000e+00
  %3645 = fcmp fast olt float %3643, 0.000000e+00
  %3646 = zext i1 %3644 to i32
  %3647 = zext i1 %3645 to i32
  %3648 = sub nsw i32 %3646, %3647
  %3649 = sitofp i32 %3648 to float
  %3650 = fcmp fast une float %3641, %3649
  br i1 %3650, label %3651, label %3661

; <label>:3651                                    ; preds = %3610
  %3652 = fmul fast float %3634, %3629
  %3653 = fmul fast float %3634, %3628
  %3654 = fmul fast float %3634, %3627
  %3655 = fmul fast float %3654, %3654
  %3656 = fmul fast float %3653, %3653
  %3657 = fadd fast float %3655, %3656
  %3658 = fmul fast float %3652, %3652
  %3659 = fadd fast float %3657, %3658
  %3660 = call float @dx.op.unary.f32(i32 24, float %3659)  ; Sqrt(value)
  br label %3671

; <label>:3661                                    ; preds = %3610
  %3662 = icmp slt i32 %3640, 0
  br i1 %3662, label %3663, label %3671

; <label>:3663                                    ; preds = %3661
  %3664 = fsub fast float %135, %3623
  %3665 = fmul fast float %3616, %3616
  %3666 = fmul fast float %3617, %3617
  %3667 = fadd fast float %3665, %3666
  %3668 = fmul fast float %3664, %3664
  %3669 = fadd fast float %3667, %3668
  %3670 = call float @dx.op.unary.f32(i32 24, float %3669)  ; Sqrt(value)
  br label %3671

; <label>:3671                                    ; preds = %3663, %3661, %3651
  %3672 = phi float [ %3660, %3651 ], [ %3670, %3663 ], [ 0.000000e+00, %3661 ]
  %3673 = fsub fast float -0.000000e+00, %3672
  %3674 = select i1 %3615, float -0.000000e+00, float %3673
  %3675 = fmul fast float %1954, 0x3FF7154760000000
  %3676 = fmul fast float %3675, %3674
  %3677 = fmul fast float %1955, 0x3FF7154760000000
  %3678 = fmul fast float %3677, %3674
  %3679 = fmul fast float %1956, 0x3FF7154760000000
  %3680 = fmul fast float %3679, %3674
  %3681 = call float @dx.op.unary.f32(i32 21, float %3676)  ; Exp(value)
  %3682 = call float @dx.op.unary.f32(i32 21, float %3678)  ; Exp(value)
  %3683 = call float @dx.op.unary.f32(i32 21, float %3680)  ; Exp(value)
  %3684 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3685 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  %3686 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3687 = fmul fast float %3611, %3684
  %3688 = fmul fast float %3612, %3685
  %3689 = fmul fast float %3613, %3686
  %3690 = fsub fast float %2602, %2153
  %3691 = fsub fast float %2603, %2152
  %3692 = fsub fast float %2604, %2151
  %3693 = call float @dx.op.dot3.f32(i32 55, float %3690, float %3691, float %3692, float %3690, float %3691, float %3692)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = call float @dx.op.unary.f32(i32 25, float %3693)  ; Rsqrt(value)
  %3695 = fmul fast float %3694, %3690
  %3696 = fmul fast float %3694, %3691
  %3697 = fmul fast float %3694, %3692
  %3698 = call float @dx.op.dot3.f32(i32 55, float %2602, float %2603, float %2604, float %2160, float %2161, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %3699 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2149, float %2148, float %3695, float %3696, float %3697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3700 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3701 = fmul fast float %3700, %3700
  %3702 = fmul fast float %3701, %2187
  %3703 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3704 = fmul fast float %3703, %3700
  %3705 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2161, float %2162, float %3695, float %3696, float %3697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = fmul fast float %3705, %3705
  %3707 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3708 = call float @dx.op.binary.f32(i32 35, float %2570, float 0x3F847AE140000000)  ; FMax(a,b)
  %3709 = fmul fast float %3708, %3708
  %3710 = fmul fast float %3709, %3709
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = fmul fast float %2174, %2174
  %3713 = fmul fast float %3712, %3711
  %3714 = fadd fast float %3713, %3710
  %3715 = bitcast float %3714 to i32
  %3716 = ashr i32 %3715, 1
  %3717 = add nsw i32 %3716, 532487669
  %3718 = bitcast i32 %3717 to float
  %3719 = fadd fast float %3718, %2174
  %3720 = fmul fast float %3710, %3706
  %3721 = fsub fast float 1.000000e+00, %3706
  %3722 = fadd fast float %3721, %3720
  %3723 = fmul fast float %3707, %3707
  %3724 = fmul fast float %3723, %3711
  %3725 = fadd fast float %3724, %3710
  %3726 = bitcast float %3725 to i32
  %3727 = ashr i32 %3726, 1
  %3728 = add nsw i32 %3727, 532487669
  %3729 = bitcast i32 %3728 to float
  %3730 = fadd fast float %3729, %3707
  %3731 = fmul fast float %3722, %3722
  %3732 = fmul fast float %3731, %3719
  %3733 = fmul fast float %3732, %3730
  %3734 = fdiv fast float 0x3FF0A00000000000, %3733
  %3735 = fmul fast float %3734, %3710
  %3736 = fmul fast float %2432, 0x3FF9999980000000
  %3737 = fsub fast float 5.000000e+00, %3736
  %3738 = call float @dx.op.unary.f32(i32 6, float %3699)  ; FAbs(value)
  %3739 = fsub fast float 1.000000e+00, %3738
  %3740 = fmul fast float %2432, 0x41D9660740000000
  %3741 = fadd fast float %3740, 0xC1EFBF8940000000
  %3742 = bitcast float %3739 to i32
  %3743 = sitofp i32 %3742 to float
  %3744 = fmul fast float %3743, %3737
  %3745 = fadd fast float %3741, %3744
  %3746 = fptosi float %3745 to i32
  %3747 = bitcast i32 %3746 to float
  %3748 = fsub fast float 1.000000e+00, %2157
  %3749 = fsub fast float 1.000000e+00, %2158
  %3750 = fsub fast float 1.000000e+00, %2172
  %3751 = fmul fast float %3747, %3748
  %3752 = fmul fast float %3747, %3749
  %3753 = fmul fast float %3747, %3750
  %3754 = fadd fast float %3751, %2157
  %3755 = fadd fast float %3752, %2158
  %3756 = fadd fast float %3753, %2172
  br i1 %2455, label %3757, label %3780

; <label>:3757                                    ; preds = %3671
  %3758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1499, float %3738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = fadd fast float %3759, -5.000000e-01
  %3763 = fadd fast float %3760, -5.000000e-01
  %3764 = fadd fast float %3761, -5.000000e-01
  %3765 = fmul fast float %2157, 4.000000e+00
  %3766 = fmul fast float %3765, %3748
  %3767 = fmul fast float %3766, %3762
  %3768 = fmul fast float %2158, 4.000000e+00
  %3769 = fmul fast float %3768, %3749
  %3770 = fmul fast float %3769, %3763
  %3771 = fmul fast float %2172, 4.000000e+00
  %3772 = fmul fast float %3771, %3750
  %3773 = fmul fast float %3772, %3764
  %3774 = fadd fast float %3767, %3754
  %3775 = fadd fast float %3770, %3755
  %3776 = fadd fast float %3773, %3756
  %3777 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3778 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3779 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  br label %3780

; <label>:3780                                    ; preds = %3757, %3671
  %3781 = phi float [ %3777, %3757 ], [ %3754, %3671 ]
  %3782 = phi float [ %3778, %3757 ], [ %3755, %3671 ]
  %3783 = phi float [ %3779, %3757 ], [ %3756, %3671 ]
  %3784 = fmul fast float %3698, 9.843750e-01
  %3785 = fadd fast float %3784, 7.812500e-03
  %3786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3785, float %2436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3791 = fsub fast float %3789, %3787
  %3792 = fsub fast float %3790, %3788
  %3793 = fmul fast float %3791, %2442
  %3794 = fmul fast float %3792, %2442
  %3795 = fadd fast float %3793, %3787
  %3796 = fadd fast float %3794, %3788
  %3797 = fmul fast float %3795, %2157
  %3798 = fmul fast float %3795, %2158
  %3799 = fmul fast float %3795, %2172
  %3800 = fadd fast float %3797, %3796
  %3801 = fadd fast float %3798, %3796
  %3802 = fadd fast float %3799, %3796
  br i1 %2455, label %3803, label %3826

; <label>:3803                                    ; preds = %3780
  %3804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1499, float %3698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3808 = fadd fast float %3805, -5.000000e-01
  %3809 = fadd fast float %3806, -5.000000e-01
  %3810 = fadd fast float %3807, -5.000000e-01
  %3811 = fmul fast float %2157, 4.000000e+00
  %3812 = fmul fast float %3811, %3748
  %3813 = fmul fast float %3812, %3808
  %3814 = fmul fast float %2158, 4.000000e+00
  %3815 = fmul fast float %3814, %3749
  %3816 = fmul fast float %3815, %3809
  %3817 = fmul fast float %2172, 4.000000e+00
  %3818 = fmul fast float %3817, %3750
  %3819 = fmul fast float %3818, %3810
  %3820 = fadd fast float %3813, %3800
  %3821 = fadd fast float %3816, %3801
  %3822 = fadd fast float %3819, %3802
  %3823 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  br label %3826

; <label>:3826                                    ; preds = %3803, %3780
  %3827 = phi float [ %3823, %3803 ], [ %3800, %3780 ]
  %3828 = phi float [ %3824, %3803 ], [ %3801, %3780 ]
  %3829 = phi float [ %3825, %3803 ], [ %3802, %3780 ]
  %3830 = call float @dx.op.binary.f32(i32 35, float %3828, float %3829)  ; FMax(a,b)
  %3831 = call float @dx.op.binary.f32(i32 35, float %3827, float %3830)  ; FMax(a,b)
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = call float @dx.op.binary.f32(i32 35, float %3707, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3834 = fdiv fast float %899, %3833
  %3835 = fmul fast float %2510, %3834
  %3836 = fmul fast float %2512, %3834
  %3837 = fmul fast float %2514, %3834
  %3838 = call float @dx.op.unary.f32(i32 21, float %3835)  ; Exp(value)
  %3839 = call float @dx.op.unary.f32(i32 21, float %3836)  ; Exp(value)
  %3840 = call float @dx.op.unary.f32(i32 21, float %3837)  ; Exp(value)
  %3841 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3842 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3843 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3844 = select i1 %2507, float %3841, float 0.000000e+00
  %3845 = select i1 %2508, float %3842, float 0.000000e+00
  %3846 = select i1 %2509, float %3843, float 0.000000e+00
  %3847 = fsub fast float -0.000000e+00, %2160
  %3848 = fsub fast float -0.000000e+00, %2161
  %3849 = fsub fast float -0.000000e+00, %2162
  %3850 = call float @dx.op.dot3.f32(i32 55, float %2602, float %2603, float %2604, float %3847, float %3848, float %3849)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3852 = fmul fast float %3851, 9.843750e-01
  %3853 = fadd fast float %3852, 7.812500e-03
  %3854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3853, float %2436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = fsub fast float %3857, %3855
  %3860 = fsub fast float %3858, %3856
  %3861 = fmul fast float %3859, %2442
  %3862 = fmul fast float %3860, %2442
  %3863 = fadd fast float %3861, %3855
  %3864 = fadd fast float %3862, %3856
  %3865 = fmul fast float %3863, %2157
  %3866 = fmul fast float %3863, %2158
  %3867 = fmul fast float %3863, %2172
  %3868 = fadd fast float %3865, %3864
  %3869 = fadd fast float %3866, %3864
  %3870 = fadd fast float %3867, %3864
  br i1 %2455, label %3871, label %3894

; <label>:3871                                    ; preds = %3826
  %3872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1499, float %3851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = fadd fast float %3873, -5.000000e-01
  %3877 = fadd fast float %3874, -5.000000e-01
  %3878 = fadd fast float %3875, -5.000000e-01
  %3879 = fmul fast float %2157, 4.000000e+00
  %3880 = fmul fast float %3879, %3748
  %3881 = fmul fast float %3880, %3876
  %3882 = fmul fast float %2158, 4.000000e+00
  %3883 = fmul fast float %3882, %3749
  %3884 = fmul fast float %3883, %3877
  %3885 = fmul fast float %2172, 4.000000e+00
  %3886 = fmul fast float %3885, %3750
  %3887 = fmul fast float %3886, %3878
  %3888 = fadd fast float %3881, %3868
  %3889 = fadd fast float %3884, %3869
  %3890 = fadd fast float %3887, %3870
  %3891 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3892 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3893 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  br label %3894

; <label>:3894                                    ; preds = %3871, %3826
  %3895 = phi float [ %3891, %3871 ], [ %3868, %3826 ]
  %3896 = phi float [ %3892, %3871 ], [ %3869, %3826 ]
  %3897 = phi float [ %3893, %3871 ], [ %3870, %3826 ]
  %3898 = call float @dx.op.binary.f32(i32 35, float %3896, float %3897)  ; FMax(a,b)
  %3899 = call float @dx.op.binary.f32(i32 35, float %3895, float %3898)  ; FMax(a,b)
  %3900 = fsub fast float 1.000000e+00, %3899
  %3901 = fmul fast float %2570, %2575
  %3902 = fadd fast float %2577, %3901
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fsub fast float %2602, %2180
  %3905 = fsub fast float %2603, %2181
  %3906 = fsub fast float %2604, %2182
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3905, float %3906, float %3904, float %3905, float %3906)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = call float @dx.op.unary.f32(i32 25, float %3907)  ; Rsqrt(value)
  %3909 = fmul fast float %3908, %3904
  %3910 = fmul fast float %3908, %3905
  %3911 = fmul fast float %3908, %3906
  %3912 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float %3909, float %3910, float %3911)  ; Dot3(ax,ay,az,bx,by,bz)
  %3913 = fmul fast float %3912, %3912
  %3914 = call float @dx.op.unary.f32(i32 6, float %3851)  ; FAbs(value)
  %3915 = call float @dx.op.binary.f32(i32 35, float %3903, float 0x3F847AE140000000)  ; FMax(a,b)
  %3916 = fmul fast float %3915, %3915
  %3917 = fmul fast float %3916, %3916
  %3918 = fsub fast float 1.000000e+00, %3917
  %3919 = fmul fast float %3712, %3918
  %3920 = fadd fast float %3919, %3917
  %3921 = bitcast float %3920 to i32
  %3922 = ashr i32 %3921, 1
  %3923 = add nsw i32 %3922, 532487669
  %3924 = bitcast i32 %3923 to float
  %3925 = fadd fast float %3924, %2174
  %3926 = fmul fast float %3917, %3913
  %3927 = fsub fast float 1.000000e+00, %3913
  %3928 = fadd fast float %3927, %3926
  %3929 = fmul fast float %3914, %3914
  %3930 = fmul fast float %3929, %3918
  %3931 = fadd fast float %3930, %3917
  %3932 = bitcast float %3931 to i32
  %3933 = ashr i32 %3932, 1
  %3934 = add nsw i32 %3933, 532487669
  %3935 = bitcast i32 %3934 to float
  %3936 = fadd fast float %3935, %3914
  %3937 = fmul fast float %3928, %3928
  %3938 = fmul fast float %3937, %3925
  %3939 = fmul fast float %3938, %3936
  %3940 = fdiv fast float 0x3FF0A00000000000, %3939
  %3941 = fmul fast float %3940, %3917
  %3942 = fmul fast float %3851, %3844
  %3943 = fmul fast float %3851, %3845
  %3944 = fmul fast float %3851, %3846
  %3945 = fmul fast float %3942, %3900
  %3946 = fmul fast float %3945, %3941
  %3947 = fmul fast float %3943, %3900
  %3948 = fmul fast float %3947, %3941
  %3949 = fmul fast float %3944, %3900
  %3950 = fmul fast float %3949, %3941
  %3951 = fmul fast float %3781, %3735
  %3952 = fmul fast float %3782, %3735
  %3953 = fmul fast float %3783, %3735
  %3954 = fsub fast float 1.000000e+00, %3699
  %3955 = bitcast float %3954 to i32
  %3956 = sitofp i32 %3955 to float
  %3957 = fmul fast float %3956, 5.000000e+00
  %3958 = fadd fast float %3957, 0xC1EFBF8940000000
  %3959 = fptosi float %3958 to i32
  %3960 = bitcast i32 %3959 to float
  %3961 = fmul fast float %3960, %1498
  %3962 = fmul fast float %3832, %3961
  %3963 = fmul fast float %3962, %2502
  %3964 = fmul fast float %3962, %2503
  %3965 = fmul fast float %3962, %2504
  %3966 = fadd fast float %3963, %3951
  %3967 = fadd fast float %3964, %3952
  %3968 = fadd fast float %3965, %3953
  %3969 = fmul fast float %3966, %3704
  %3970 = fmul fast float %3967, %3704
  %3971 = fmul fast float %3968, %3704
  %3972 = fmul fast float %3704, %3687
  %3973 = fmul fast float %3972, %3832
  %3974 = fmul fast float %3704, %3688
  %3975 = fmul fast float %3974, %3832
  %3976 = fmul fast float %3704, %3689
  %3977 = fmul fast float %3976, %3832
  %3978 = fadd fast float %3969, %3946
  %3979 = fadd fast float %3970, %3948
  %3980 = fadd fast float %3971, %3950
  %3981 = fmul fast float %3978, %3687
  %3982 = fmul fast float %3979, %3688
  %3983 = fmul fast float %3980, %3689
  %3984 = fadd fast float %3973, %2592
  %3985 = fmul fast float %3984, %1522
  %3986 = fadd fast float %3975, %2594
  %3987 = fmul fast float %3986, %1522
  %3988 = fadd fast float %3977, %2596
  %3989 = fmul fast float %3988, %1522
  %3990 = fadd fast float %3981, %2555
  %3991 = fmul fast float %3990, %1522
  %3992 = fadd fast float %3982, %2558
  %3993 = fmul fast float %3992, %1522
  %3994 = fadd fast float %3983, %2561
  %3995 = fmul fast float %3994, %1522
  br label %3996

; <label>:3996                                    ; preds = %3894, %3605, %2482
  %3997 = phi float [ %2556, %2482 ], [ %2556, %3605 ], [ %3991, %3894 ]
  %3998 = phi float [ %2559, %2482 ], [ %2559, %3605 ], [ %3993, %3894 ]
  %3999 = phi float [ %2562, %2482 ], [ %2562, %3605 ], [ %3995, %3894 ]
  %4000 = phi float [ %2593, %2482 ], [ %2593, %3605 ], [ %3985, %3894 ]
  %4001 = phi float [ %2595, %2482 ], [ %2595, %3605 ], [ %3987, %3894 ]
  %4002 = phi float [ %2597, %2482 ], [ %2597, %3605 ], [ %3989, %3894 ]
  %4003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.i32 %4003, 0
  %4005 = icmp eq i32 %4004, 0
  br i1 %4005, label %5026, label %4006

; <label>:4006                                    ; preds = %3996
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 2
  %4009 = extractvalue %dx.types.CBufRet.f32 %4007, 3
  %4010 = fmul fast float %4008, %85
  %4011 = fmul fast float %4009, %86
  %4012 = fptoui float %4010 to i32
  %4013 = fptoui float %4011 to i32
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4017 = extractvalue %dx.types.CBufRet.f32 %4014, 3
  %4018 = fadd fast float %76, -4.000000e+00
  %4019 = call float @dx.op.binary.f32(i32 35, float %4018, float 0.000000e+00)  ; FMax(a,b)
  %4020 = fadd fast float %4019, %4015
  %4021 = fmul fast float %4020, %4016
  %4022 = call float @dx.op.unary.f32(i32 23, float %4021)  ; Log(value)
  %4023 = fmul fast float %4022, %4017
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4026 = fmul fast float %4023, %4025
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.i32 %4028, 1
  %4030 = add i32 %4029, -1
  %4031 = uitofp i32 %4029 to float
  %4032 = fmul fast float %4031, %4027
  %4033 = fptoui float %4032 to i32
  %4034 = call i32 @dx.op.binary.i32(i32 40, i32 %4033, i32 %4030)  ; UMin(a,b)
  %4035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.i32 %4035, 2
  %4037 = extractvalue %dx.types.CBufRet.i32 %4035, 3
  %4038 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4013, i32 %4036, i32 %4012)  ; UMad(a,b,c)
  %4039 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4034, i32 %4037, i32 %4038)  ; UMad(a,b,c)
  %4040 = add nsw i32 %4004, -1
  %4041 = call i32 @dx.op.binary.i32(i32 37, i32 %4040, i32 0)  ; IMax(a,b)
  %4042 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %4043 = fptoui float %4042 to i32
  %4044 = lshr i32 %4043, 5
  %4045 = call i32 @dx.op.binary.i32(i32 40, i32 %4044, i32 8191)  ; UMin(a,b)
  %4046 = shl i32 %4045, 2
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = lshr i32 %4048, 16
  %4050 = and i32 %4048, 65535
  %4051 = lshr i32 %4048, 21
  %4052 = lshr i32 %4050, 5
  %4053 = call i32 @dx.op.binary.i32(i32 40, i32 %4052, i32 %4041)  ; UMin(a,b)
  %4054 = icmp ugt i32 %4051, %4053
  br i1 %4054, label %5026, label %4055

; <label>:4055                                    ; preds = %4006
  br label %4056

; <label>:4056                                    ; preds = %5016, %4055
  %4057 = phi i32 [ %5023, %5016 ], [ %4051, %4055 ]
  %4058 = phi float [ %5017, %5016 ], [ %3997, %4055 ]
  %4059 = phi float [ %5018, %5016 ], [ %3998, %4055 ]
  %4060 = phi float [ %5019, %5016 ], [ %3999, %4055 ]
  %4061 = phi float [ %5020, %5016 ], [ %4000, %4055 ]
  %4062 = phi float [ %5021, %5016 ], [ %4001, %4055 ]
  %4063 = phi float [ %5022, %5016 ], [ %4002, %4055 ]
  %4064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.i32 %4064, 0
  %4066 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4039, i32 %4065, i32 %4057)  ; UMad(a,b,c)
  %4067 = shl i32 %4066, 2
  %4068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.i32 %4068, 0
  %4070 = shl i32 %4057, 5
  %4071 = sub nsw i32 %4049, %4070
  %4072 = call i32 @dx.op.binary.i32(i32 37, i32 %4071, i32 0)  ; IMax(a,b)
  %4073 = call i32 @dx.op.binary.i32(i32 38, i32 %4072, i32 31)  ; IMin(a,b)
  %4074 = sub nsw i32 1, %4049
  %4075 = add nsw i32 %4074, %4050
  %4076 = call i32 @dx.op.binary.i32(i32 37, i32 %4075, i32 0)  ; IMax(a,b)
  %4077 = call i32 @dx.op.binary.i32(i32 38, i32 %4076, i32 32)  ; IMin(a,b)
  %4078 = and i32 %4077, 31
  %4079 = shl i32 -1, %4078
  %4080 = xor i32 %4079, -1
  %4081 = and i32 %4073, 31
  %4082 = shl i32 %4080, %4081
  %4083 = icmp eq i32 %4077, 32
  %4084 = select i1 %4083, i32 -1, i32 %4082
  %4085 = and i32 %4084, %4069
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %5016, label %4087

; <label>:4087                                    ; preds = %4056
  br label %4088

; <label>:4088                                    ; preds = %4223, %4087
  %4089 = phi i32 [ %4100, %4223 ], [ %4085, %4087 ]
  %4090 = phi float [ %4224, %4223 ], [ %4058, %4087 ]
  %4091 = phi float [ %4225, %4223 ], [ %4059, %4087 ]
  %4092 = phi float [ %4226, %4223 ], [ %4060, %4087 ]
  %4093 = phi float [ %4227, %4223 ], [ %4061, %4087 ]
  %4094 = phi float [ %4228, %4223 ], [ %4062, %4087 ]
  %4095 = phi float [ %4229, %4223 ], [ %4063, %4087 ]
  %4096 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4089)  ; FirstbitLo(value)
  %4097 = add i32 %4096, %4070
  %4098 = and i32 %4096, 31
  %4099 = shl i32 1, %4098
  %4100 = xor i32 %4099, %4089
  %4101 = mul i32 %4097, 112
  %4102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.ResRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.ResRet.f32 %4102, 2
  %4106 = or i32 %4101, 12
  %4107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4106, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4109 = add i32 %4101, 16
  %4110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = add i32 %4101, 28
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = add i32 %4101, 44
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = add i32 %4101, 48
  %4121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.ResRet.f32 %4121, 1
  %4124 = extractvalue %dx.types.ResRet.f32 %4121, 2
  %4125 = extractvalue %dx.types.ResRet.f32 %4121, 3
  %4126 = add i32 %4101, 64
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = extractvalue %dx.types.ResRet.f32 %4127, 3
  %4132 = add i32 %4101, 80
  %4133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4133, 2
  %4136 = add i32 %4101, 92
  %4137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.i32 %4137, 0
  %4139 = call float @dx.op.dot3.f32(i32 55, float %4103, float %4104, float %4105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = select i1 %195, float %4134, float %4103
  %4141 = select i1 %195, float %4139, float %4104
  %4142 = select i1 %195, float %4135, float %4105
  %4143 = and i32 %4138, 65535
  %4144 = uitofp i32 %4143 to float
  %4145 = lshr i32 %4138, 16
  %4146 = uitofp i32 %4145 to float
  %4147 = and i32 %4116, 65535
  %4148 = and i32 %4116, 50331648
  %4149 = icmp slt i32 %4116, 0
  %4150 = icmp eq i32 %4148, 33554432
  %4151 = fsub fast float %4122, %133
  %4152 = fsub fast float %4123, %134
  %4153 = fsub fast float %4124, %135
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4153, float %4151, float %4152, float %4153)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call float @dx.op.unary.f32(i32 24, float %4154)  ; Sqrt(value)
  %4156 = fdiv fast float 1.000000e+00, %4155
  %4157 = fmul fast float %4156, %4151
  %4158 = fmul fast float %4156, %4152
  %4159 = fmul fast float %4156, %4153
  %4160 = fadd fast float %4155, %4108
  %4161 = fdiv fast float 1.000000e+00, %4160
  %4162 = fmul float %4119, %4161
  %4163 = fmul float %4162, %4162
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  br i1 %4150, label %4165, label %4186

; <label>:4165                                    ; preds = %4088
  %4166 = fmul fast float %4130, %4111
  %4167 = fmul fast float %4130, %4112
  %4168 = fmul fast float %4130, %4113
  %4169 = fadd fast float %4151, %4166
  %4170 = fadd fast float %4152, %4167
  %4171 = fadd fast float %4153, %4168
  %4172 = call float @dx.op.dot3.f32(i32 55, float %4169, float %4170, float %4171, float %4169, float %4170, float %4171)  ; Dot3(ax,ay,az,bx,by,bz)
  %4173 = call float @dx.op.unary.f32(i32 25, float %4172)  ; Rsqrt(value)
  %4174 = fmul fast float %4173, %4169
  %4175 = fmul fast float %4173, %4170
  %4176 = fmul fast float %4173, %4171
  %4177 = fsub fast float %133, %4122
  %4178 = fsub fast float %134, %4123
  %4179 = fsub fast float %135, %4124
  %4180 = fsub fast float -0.000000e+00, %4177
  %4181 = fsub fast float -0.000000e+00, %4178
  %4182 = fsub fast float -0.000000e+00, %4179
  %4183 = call float @dx.op.dot3.f32(i32 55, float %4180, float %4181, float %4182, float %4111, float %4112, float %4113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4184 = fcmp fast ogt float %4183, 0.000000e+00
  %4185 = uitofp i1 %4184 to float
  br label %4186

; <label>:4186                                    ; preds = %4165, %4088
  %4187 = phi float [ %4185, %4165 ], [ 1.000000e+00, %4088 ]
  %4188 = phi float [ %4174, %4165 ], [ %4157, %4088 ]
  %4189 = phi float [ %4175, %4165 ], [ %4158, %4088 ]
  %4190 = phi float [ %4176, %4165 ], [ %4159, %4088 ]
  %4191 = call float @dx.op.dot3.f32(i32 55, float %4111, float %4112, float %4113, float %4188, float %4189, float %4190)  ; Dot3(ax,ay,az,bx,by,bz)
  %4192 = fmul fast float %4191, %4191
  %4193 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4194 = fsub fast float 1.000000e+00, %4193
  %4195 = fmul fast float %4194, 5.000000e-01
  %4196 = fcmp fast ogt float %4191, 0.000000e+00
  %4197 = fsub fast float 1.000000e+00, %4195
  %4198 = select i1 %4196, float %4195, float %4197
  %4199 = fmul fast float %4198, %4146
  %4200 = fadd fast float %4199, %4144
  %4201 = fmul fast float %4200, 0x3EF0001000000000
  %4202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %4201, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = fmul fast float %4191, %4128
  %4205 = fadd fast float %4204, %4129
  %4206 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4207 = select i1 %4150, float 1.000000e+00, float %4206
  %4208 = select i1 %4150, float %4206, float 1.000000e+00
  %4209 = fmul fast float %4155, %4125
  %4210 = fsub fast float 1.000000e+00, %4209
  %4211 = fmul fast float %4210, %4131
  %4212 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4213 = fmul fast float %4212, %4208
  %4214 = fmul fast float %4213, 2.000000e+00
  %4215 = fsub fast float 3.000000e+00, %4214
  %4216 = fmul fast float %4203, %4187
  %4217 = fmul fast float %4213, %4213
  %4218 = fmul fast float %4217, %4216
  %4219 = fmul fast float %4218, %4215
  %4220 = call float @dx.op.binary.f32(i32 36, float %4219, float %4219)  ; FMin(a,b)
  %4221 = call float @dx.op.binary.f32(i32 36, float %4219, float %4220)  ; FMin(a,b)
  %4222 = fcmp fast ogt float %4221, 0.000000e+00
  br i1 %4222, label %4231, label %4223, !dx.controlflow.hints !110

; <label>:4223                                    ; preds = %4969, %4575, %4186
  %4224 = phi float [ %4090, %4575 ], [ %4090, %4186 ], [ %5012, %4969 ]
  %4225 = phi float [ %4091, %4575 ], [ %4091, %4186 ], [ %5013, %4969 ]
  %4226 = phi float [ %4092, %4575 ], [ %4092, %4186 ], [ %5014, %4969 ]
  %4227 = phi float [ %4093, %4575 ], [ %4093, %4186 ], [ %5006, %4969 ]
  %4228 = phi float [ %4094, %4575 ], [ %4094, %4186 ], [ %5007, %4969 ]
  %4229 = phi float [ %4095, %4575 ], [ %4095, %4186 ], [ %5008, %4969 ]
  %4230 = icmp eq i32 %4089, %4099
  br i1 %4230, label %5015, label %4088

; <label>:4231                                    ; preds = %4186
  %4232 = icmp eq i32 %4147, 255
  br i1 %4232, label %4331, label %4233, !dx.controlflow.hints !111

; <label>:4233                                    ; preds = %4231
  %4234 = mul nuw nsw i32 %4147, 176
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.ResRet.f32 %4235, 3
  %4240 = add nuw nsw i32 %4234, 16
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = add nuw nsw i32 %4234, 32
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = add nuw nsw i32 %4234, 48
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = extractvalue %dx.types.ResRet.f32 %4250, 3
  %4255 = add nuw nsw i32 %4234, 64
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = extractvalue %dx.types.ResRet.f32 %4256, 1
  %4259 = extractvalue %dx.types.ResRet.f32 %4256, 2
  %4260 = extractvalue %dx.types.ResRet.f32 %4256, 3
  %4261 = add nuw nsw i32 %4234, 80
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = extractvalue %dx.types.ResRet.f32 %4262, 3
  %4267 = add nuw nsw i32 %4234, 96
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = extractvalue %dx.types.ResRet.f32 %4268, 1
  %4271 = extractvalue %dx.types.ResRet.f32 %4268, 2
  %4272 = extractvalue %dx.types.ResRet.f32 %4268, 3
  %4273 = bitcast float %4243 to i32
  %4274 = fmul fast float %4248, %88
  %4275 = fmul fast float %4248, %89
  %4276 = fmul fast float %4248, %90
  %4277 = fadd fast float %4274, %133
  %4278 = fadd fast float %4275, %134
  %4279 = fadd fast float %4276, %135
  %4280 = fmul fast float %4277, %4251
  %4281 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4257, float %4280)  ; FMad(a,b,c)
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4263, float %4281)  ; FMad(a,b,c)
  %4283 = fadd fast float %4282, %4269
  %4284 = fmul fast float %4277, %4252
  %4285 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4258, float %4284)  ; FMad(a,b,c)
  %4286 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4264, float %4285)  ; FMad(a,b,c)
  %4287 = fadd fast float %4286, %4270
  %4288 = fmul fast float %4277, %4253
  %4289 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4259, float %4288)  ; FMad(a,b,c)
  %4290 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4265, float %4289)  ; FMad(a,b,c)
  %4291 = fadd fast float %4290, %4271
  %4292 = fmul fast float %4277, %4254
  %4293 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4260, float %4292)  ; FMad(a,b,c)
  %4294 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4266, float %4293)  ; FMad(a,b,c)
  %4295 = fadd fast float %4294, %4272
  %4296 = fdiv fast float %4283, %4295
  %4297 = fdiv fast float %4287, %4295
  %4298 = fdiv fast float %4291, %4295
  %4299 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4298)  ; FMax(a,b)
  %4300 = fmul fast float %208, 0x401921FB60000000
  %4301 = call float @dx.op.unary.f32(i32 13, float %4300)  ; Sin(value)
  %4302 = call float @dx.op.unary.f32(i32 12, float %4300)  ; Cos(value)
  %4303 = fsub fast float -0.000000e+00, %4301
  %4304 = fmul fast float %4238, 5.000000e-01
  %4305 = call float @dx.op.dot2.f32(i32 54, float %208, float %208, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4306 = call float @dx.op.unary.f32(i32 22, float %4305)  ; Frc(value)
  %4307 = fmul fast float %4306, 0x404A7DD040000000
  %4308 = call float @dx.op.unary.f32(i32 22, float %4307)  ; Frc(value)
  %4309 = fmul fast float %4308, %4247
  %4310 = fadd fast float %4309, %4304
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4303, float 0.000000e+00)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4302, float 0.000000e+00)  ; FMad(a,b,c)
  %4313 = fadd fast float %4311, %4296
  %4314 = fadd fast float %4312, %4297
  %4315 = fmul fast float %4313, %4242
  %4316 = fmul fast float %4314, %4242
  %4317 = call float @dx.op.binary.f32(i32 35, float %4315, float %4238)  ; FMax(a,b)
  %4318 = call float @dx.op.binary.f32(i32 35, float %4316, float %4238)  ; FMax(a,b)
  %4319 = call float @dx.op.binary.f32(i32 36, float %4317, float %4239)  ; FMin(a,b)
  %4320 = call float @dx.op.binary.f32(i32 36, float %4318, float %4239)  ; FMin(a,b)
  %4321 = fadd fast float %4319, %4236
  %4322 = fadd fast float %4320, %4237
  %4323 = uitofp i32 %4273 to float
  %4324 = fadd fast float %4299, %4246
  %4325 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %4321, float %4322, float %4323, float undef, i32 0, i32 0, i32 undef, float %4324)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = fadd fast float %4326, -1.000000e+00
  %4328 = fmul fast float %4327, %4207
  %4329 = fadd fast float %4328, 1.000000e+00
  %4330 = fmul fast float %4329, %4219
  br label %4331

; <label>:4331                                    ; preds = %4233, %4231
  %4332 = phi float [ %4330, %4233 ], [ %4219, %4231 ]
  %4333 = call float @dx.op.binary.f32(i32 36, float %4332, float %4332)  ; FMin(a,b)
  %4334 = call float @dx.op.binary.f32(i32 36, float %4332, float %4333)  ; FMin(a,b)
  %4335 = fcmp fast ogt float %4334, 0.000000e+00
  %4336 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %4157, float %4158, float %4159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4337 = fcmp fast ogt float %4336, 0.000000e+00
  %4338 = and i1 %4335, %4337
  br i1 %4338, label %4339, label %4575, !dx.controlflow.hints !112

; <label>:4339                                    ; preds = %4331
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4344 = select i1 %2171, float %4341, float %4343
  %4345 = extractvalue %dx.types.CBufRet.f32 %4340, 2
  %4346 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4347 = select i1 %2171, float %4345, float %4346
  %4348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.i32 %4348, 0
  %4350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.i32 %4350, 0
  %4352 = select i1 %2171, i32 %4349, i32 %4351
  %4353 = fcmp fast olt float %4344, 5.000000e-01
  %4354 = icmp eq i32 %4352, 0
  %4355 = or i1 %4353, %4354
  br i1 %4355, label %4570, label %4356

; <label>:4356                                    ; preds = %4339
  %4357 = fmul fast float %4151, %4151
  %4358 = fmul fast float %4152, %4152
  %4359 = fadd fast float %4357, %4358
  %4360 = fmul fast float %4153, %4153
  %4361 = fadd fast float %4359, %4360
  %4362 = call float @dx.op.unary.f32(i32 24, float %4361)  ; Sqrt(value)
  %4363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.i32 %4363, 0
  %4365 = uitofp i32 %4364 to float
  %4366 = fmul fast float %4344, %4119
  %4367 = fdiv fast float %4366, %4362
  %4368 = call float @dx.op.binary.f32(i32 36, float %4367, float 1.000000e+01)  ; FMin(a,b)
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.CBufRet.f32 %4369, 2
  %4373 = extractvalue %dx.types.CBufRet.f32 %4369, 3
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4377 = extractvalue %dx.types.CBufRet.f32 %4374, 2
  %4378 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.CBufRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4379, 2
  %4383 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4384 = fmul fast float %209, 0x401061CAC0000000
  %4385 = fmul fast float %209, 0x4023E1D7E0000000
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.CBufRet.f32 %4386, 2
  %4390 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4391 = fsub fast float -0.000000e+00, %4157
  %4392 = fmul fast float %4159, %4391
  %4393 = fmul fast float %4157, %4391
  %4394 = fmul fast float %4158, %4158
  %4395 = fsub fast float %4393, %4394
  %4396 = fdiv fast float 1.000000e+00, %76
  %4397 = fmul fast float %4389, %85
  %4398 = fmul fast float %4390, %86
  %4399 = fmul fast float %4344, %4157
  %4400 = fmul fast float %4344, %4159
  %4401 = fadd fast float %4399, %133
  %4402 = fadd fast float %4400, %135
  %4403 = fadd fast float %4385, 5.000000e-01
  %4404 = call float @dx.op.unary.f32(i32 22, float %4403)  ; Frc(value)
  %4405 = bitcast float %4404 to i32
  %4406 = ashr i32 %4405, 1
  %4407 = add nsw i32 %4406, 532487669
  %4408 = bitcast i32 %4407 to float
  %4409 = fmul fast float %4408, %4368
  %4410 = fadd fast float %4384, 5.000000e-01
  %4411 = call float @dx.op.unary.f32(i32 22, float %4410)  ; Frc(value)
  %4412 = fmul fast float %4411, 0x401921FB60000000
  %4413 = call float @dx.op.unary.f32(i32 12, float %4412)  ; Cos(value)
  %4414 = fmul fast float %4413, %4413
  %4415 = fsub fast float 1.000000e+00, %4414
  %4416 = bitcast float %4415 to i32
  %4417 = ashr i32 %4416, 1
  %4418 = add nsw i32 %4417, 532487669
  %4419 = bitcast i32 %4418 to float
  %4420 = fmul fast float %4409, %4413
  %4421 = fmul fast float %4420, %4158
  %4422 = fmul fast float %4420, %4391
  %4423 = fadd fast float %4401, %4421
  %4424 = fmul fast float %4419, %4409
  %4425 = fmul fast float %4392, %4424
  %4426 = fmul fast float %4424, %4159
  %4427 = fmul fast float %4424, %4395
  %4428 = fsub fast float %4423, %4425
  %4429 = fadd fast float %4426, %4344
  %4430 = fmul fast float %4429, %4158
  %4431 = fadd fast float %4422, %134
  %4432 = fadd fast float %4431, %4430
  %4433 = fadd fast float %4402, %4427
  %4434 = fmul fast float %4428, %4370
  %4435 = call float @dx.op.tertiary.f32(i32 46, float %4432, float %4371, float %4434)  ; FMad(a,b,c)
  %4436 = call float @dx.op.tertiary.f32(i32 46, float %4433, float %4372, float %4435)  ; FMad(a,b,c)
  %4437 = fadd fast float %4436, %4373
  %4438 = fmul fast float %4428, %4375
  %4439 = call float @dx.op.tertiary.f32(i32 46, float %4432, float %4376, float %4438)  ; FMad(a,b,c)
  %4440 = call float @dx.op.tertiary.f32(i32 46, float %4433, float %4377, float %4439)  ; FMad(a,b,c)
  %4441 = fadd fast float %4440, %4378
  %4442 = fmul fast float %4428, %4380
  %4443 = call float @dx.op.tertiary.f32(i32 46, float %4432, float %4381, float %4442)  ; FMad(a,b,c)
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4433, float %4382, float %4443)  ; FMad(a,b,c)
  %4445 = fadd fast float %4444, %4383
  %4446 = fdiv fast float 1.000000e+00, %4445
  %4447 = fmul fast float %4437, 5.000000e-01
  %4448 = fmul fast float %4441, -5.000000e-01
  %4449 = fmul fast float %4447, %4446
  %4450 = fmul fast float %4448, %4446
  %4451 = fsub fast float 5.000000e-01, %4397
  %4452 = fadd fast float %4451, %4449
  %4453 = fsub fast float 5.000000e-01, %4398
  %4454 = fadd fast float %4453, %4450
  %4455 = fsub fast float %4446, %4396
  %4456 = call float @dx.op.dot2.f32(i32 54, float %4452, float %4454, float %4452, float %4454)  ; Dot2(ax,ay,bx,by)
  %4457 = call float @dx.op.binary.f32(i32 35, float %4456, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4458 = call float @dx.op.dot2.f32(i32 54, float %4387, float %4388, float %4387, float %4388)  ; Dot2(ax,ay,bx,by)
  %4459 = fmul fast float %4458, %4457
  %4460 = call float @dx.op.unary.f32(i32 25, float %4459)  ; Rsqrt(value)
  %4461 = fmul fast float %4460, %4452
  %4462 = fmul fast float %4460, %4454
  %4463 = fadd fast float %4461, %4397
  %4464 = fadd fast float %4462, %4398
  %4465 = fmul fast float %4452, %4387
  %4466 = fmul fast float %4454, %4388
  %4467 = fmul fast float %4465, %4465
  %4468 = fmul fast float %4466, %4466
  %4469 = fadd fast float %4467, %4468
  %4470 = call float @dx.op.unary.f32(i32 24, float %4469)  ; Sqrt(value)
  %4471 = fdiv fast float 1.000000e+00, %4470
  %4472 = fmul fast float %4470, 3.906250e-03
  %4473 = fmul fast float %2170, 0x3F70624DE0000000
  %4474 = fadd fast float %4473, 0x3F70624DE0000000
  %4475 = icmp sgt i32 %4352, -1
  br i1 %4475, label %4476, label %4535

; <label>:4476                                    ; preds = %4356
  br label %4477

; <label>:4477                                    ; preds = %4531, %4476
  %4478 = phi float [ %4509, %4531 ], [ %76, %4476 ]
  %4479 = phi float [ %4496, %4531 ], [ %76, %4476 ]
  %4480 = phi float [ %4479, %4531 ], [ %76, %4476 ]
  %4481 = phi i32 [ %4532, %4531 ], [ 0, %4476 ]
  %4482 = sitofp i32 %4481 to float
  %4483 = fadd fast float %209, 5.000000e-01
  %4484 = call float @dx.op.unary.f32(i32 22, float %4483)  ; Frc(value)
  %4485 = fadd fast float %4482, %4484
  %4486 = sitofp i32 %4352 to float
  %4487 = fdiv fast float %4485, %4486
  %4488 = fmul fast float %4487, %4487
  %4489 = call float @dx.op.binary.f32(i32 36, float %4488, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %4490 = fmul fast float %4489, %4452
  %4491 = fmul fast float %4489, %4454
  %4492 = fmul fast float %4489, %4455
  %4493 = fadd fast float %4490, %4463
  %4494 = fadd fast float %4491, %4464
  %4495 = fadd fast float %4492, %4396
  %4496 = fdiv fast float 1.000000e+00, %4495
  %4497 = icmp ne i32 %4364, 0
  %4498 = fmul fast float %4472, %4489
  %4499 = call float @dx.op.binary.f32(i32 36, float %4498, float %4365)  ; FMin(a,b)
  %4500 = select i1 %4497, float %4499, float 0.000000e+00
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %4493, float %4494, float undef, float undef, i32 0, i32 0, i32 undef, float %4500)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fcmp fast ogt float %4502, -1.000000e+00
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 1
  %4506 = select i1 %4503, float %4505, float 1.000000e+00
  %4507 = fadd fast float %4502, 1.000000e+00
  %4508 = fmul fast float %4506, %4507
  %4509 = call float @dx.op.unary.f32(i32 6, float %4508)  ; FAbs(value)
  %4510 = fmul fast float %4509, %4474
  %4511 = fsub fast float %4496, %4509
  %4512 = fsub fast float %4511, %4510
  %4513 = fcmp fast ogt float %4512, 0.000000e+00
  %4514 = fcmp fast ogt float %4347, 0.000000e+00
  br i1 %4514, label %4515, label %4518

; <label>:4515                                    ; preds = %4477
  %4516 = fsub fast float %4496, %4480
  %4517 = call float @dx.op.binary.f32(i32 35, float %4516, float %4347)  ; FMax(a,b)
  br label %4518

; <label>:4518                                    ; preds = %4515, %4477
  %4519 = phi float [ %4517, %4515 ], [ %4344, %4477 ]
  %4520 = fcmp fast olt float %4512, %4519
  %4521 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4523 = fcmp fast oeq float %4493, %4521
  %4524 = fcmp fast oeq float %4494, %4522
  %4525 = and i1 %4523, %4524
  %4526 = and i1 %4513, %4520
  %4527 = and i1 %4526, %4525
  %4528 = fcmp fast ogt float %4489, %4471
  %4529 = and i1 %4528, %4527
  %4530 = zext i1 %4529 to i32
  br i1 %4529, label %4534, label %4531

; <label>:4531                                    ; preds = %4518
  %4532 = add nuw nsw i32 %4481, 1
  %4533 = icmp slt i32 %4481, %4352
  br i1 %4533, label %4477, label %4534

; <label>:4534                                    ; preds = %4531, %4518
  br label %4535

; <label>:4535                                    ; preds = %4534, %4356
  %4536 = phi i32 [ 0, %4356 ], [ %4530, %4534 ]
  %4537 = phi float [ %76, %4356 ], [ %4509, %4534 ]
  %4538 = phi float [ %76, %4356 ], [ %4478, %4534 ]
  %4539 = phi float [ %76, %4356 ], [ %4496, %4534 ]
  %4540 = phi float [ %76, %4356 ], [ %4479, %4534 ]
  %4541 = fsub fast float %4540, %4538
  %4542 = fsub fast float %4539, %4537
  %4543 = fsub fast float %4541, %4542
  %4544 = fcmp fast une float %4543, 0.000000e+00
  %4545 = fmul fast float %4541, %4539
  %4546 = fmul fast float %4540, %4542
  %4547 = fsub fast float %4545, %4546
  %4548 = fdiv fast float 1.000000e+00, %4543
  %4549 = fmul fast float %4547, %4548
  %4550 = select i1 %4544, float %4549, float %4539
  %4551 = fdiv fast float 1.000000e+00, %4550
  %4552 = fsub fast float %4551, %4396
  %4553 = fdiv fast float %4552, %4455
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fmul fast float %4554, %4452
  %4556 = fmul fast float %4554, %4454
  %4557 = fadd fast float %4555, %4463
  %4558 = fadd fast float %4556, %4464
  %4559 = fadd fast float %4557, -5.000000e-01
  %4560 = fadd fast float %4558, -5.000000e-01
  %4561 = call float @dx.op.unary.f32(i32 6, float %4559)  ; FAbs(value)
  %4562 = call float @dx.op.unary.f32(i32 6, float %4560)  ; FAbs(value)
  %4563 = fadd fast float %4561, -5.000000e-01
  %4564 = fadd fast float %4562, -5.000000e-01
  %4565 = call float @dx.op.binary.f32(i32 35, float %4563, float %4564)  ; FMax(a,b)
  %4566 = fcmp fast olt float %4565, 0.000000e+00
  %4567 = icmp ne i32 %4536, 0
  %4568 = and i1 %4567, %4566
  %4569 = select i1 %4568, float 0.000000e+00, float 1.000000e+00
  br label %4570

; <label>:4570                                    ; preds = %4535, %4339
  %4571 = phi float [ %4569, %4535 ], [ 1.000000e+00, %4339 ]
  %4572 = fmul fast float %4571, %4332
  %4573 = fmul fast float %4571, %4332
  %4574 = fmul fast float %4571, %4332
  br label %4575

; <label>:4575                                    ; preds = %4570, %4331
  %4576 = phi float [ %4572, %4570 ], [ %4332, %4331 ]
  %4577 = phi float [ %4573, %4570 ], [ %4332, %4331 ]
  %4578 = phi float [ %4574, %4570 ], [ %4332, %4331 ]
  %4579 = call float @dx.op.binary.f32(i32 36, float %4577, float %4578)  ; FMin(a,b)
  %4580 = call float @dx.op.binary.f32(i32 36, float %4576, float %4579)  ; FMin(a,b)
  %4581 = fcmp fast ogt float %4580, 0.000000e+00
  br i1 %4581, label %4582, label %4223, !dx.controlflow.hints !113

; <label>:4582                                    ; preds = %4575
  %4583 = fmul fast float %4576, %4140
  %4584 = fmul fast float %4576, %4141
  %4585 = fmul fast float %4576, %4142
  %4586 = fsub fast float %4124, %1953
  %4587 = fcmp fast ogt float %4586, 0.000000e+00
  %4588 = fsub fast float %135, %1953
  %4589 = fcmp fast ogt float %4588, 0.000000e+00
  %4590 = xor i1 %4589, %4587
  %4591 = fsub fast float %1953, %4124
  %4592 = fmul fast float %4591, 2.000000e+00
  %4593 = fadd fast float %4592, %4124
  %4594 = select i1 %4590, float %4124, float %4593
  %4595 = fsub fast float %4594, %135
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4595, float %4151, float %4152, float %4595)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.unary.f32(i32 25, float %4596)  ; Rsqrt(value)
  %4598 = fmul fast float %4597, %4151
  %4599 = fmul fast float %4597, %4152
  %4600 = fmul fast float %4597, %4595
  %4601 = fsub fast float %1953, %135
  %4602 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4598, float %4599, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = fdiv fast float 1.000000e+00, %4603
  %4605 = fmul fast float %4604, %4602
  %4606 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4588, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = fcmp fast ogt float %4606, 0.000000e+00
  %4608 = fcmp fast olt float %4606, 0.000000e+00
  %4609 = zext i1 %4607 to i32
  %4610 = zext i1 %4608 to i32
  %4611 = sub nsw i32 %4609, %4610
  %4612 = sitofp i32 %4611 to float
  %4613 = fsub fast float %4594, %1953
  %4614 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4613, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4615 = fcmp fast ogt float %4614, 0.000000e+00
  %4616 = fcmp fast olt float %4614, 0.000000e+00
  %4617 = zext i1 %4615 to i32
  %4618 = zext i1 %4616 to i32
  %4619 = sub nsw i32 %4617, %4618
  %4620 = sitofp i32 %4619 to float
  %4621 = fcmp fast une float %4612, %4620
  br i1 %4621, label %4622, label %4632

; <label>:4622                                    ; preds = %4582
  %4623 = fmul fast float %4605, %4600
  %4624 = fmul fast float %4605, %4599
  %4625 = fmul fast float %4605, %4598
  %4626 = fmul fast float %4625, %4625
  %4627 = fmul fast float %4624, %4624
  %4628 = fadd fast float %4626, %4627
  %4629 = fmul fast float %4623, %4623
  %4630 = fadd fast float %4628, %4629
  %4631 = call float @dx.op.unary.f32(i32 24, float %4630)  ; Sqrt(value)
  br label %4644

; <label>:4632                                    ; preds = %4582
  %4633 = icmp slt i32 %4611, 0
  br i1 %4633, label %4634, label %4644

; <label>:4634                                    ; preds = %4632
  %4635 = fsub fast float %133, %4122
  %4636 = fsub fast float %134, %4123
  %4637 = fsub fast float %135, %4594
  %4638 = fmul fast float %4635, %4635
  %4639 = fmul fast float %4636, %4636
  %4640 = fadd fast float %4638, %4639
  %4641 = fmul fast float %4637, %4637
  %4642 = fadd fast float %4640, %4641
  %4643 = call float @dx.op.unary.f32(i32 24, float %4642)  ; Sqrt(value)
  br label %4644

; <label>:4644                                    ; preds = %4634, %4632, %4622
  %4645 = phi float [ %4631, %4622 ], [ %4643, %4634 ], [ 0.000000e+00, %4632 ]
  %4646 = and i1 %4589, %4587
  %4647 = fsub fast float -0.000000e+00, %4645
  %4648 = select i1 %4646, float -0.000000e+00, float %4647
  %4649 = fmul fast float %1954, 0x3FF7154760000000
  %4650 = fmul fast float %4649, %4648
  %4651 = fmul fast float %1955, 0x3FF7154760000000
  %4652 = fmul fast float %4651, %4648
  %4653 = fmul fast float %1956, 0x3FF7154760000000
  %4654 = fmul fast float %4653, %4648
  %4655 = call float @dx.op.unary.f32(i32 21, float %4650)  ; Exp(value)
  %4656 = call float @dx.op.unary.f32(i32 21, float %4652)  ; Exp(value)
  %4657 = call float @dx.op.unary.f32(i32 21, float %4654)  ; Exp(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4661 = fmul fast float %4583, %4658
  %4662 = fmul fast float %4584, %4659
  %4663 = fmul fast float %4585, %4660
  %4664 = fsub fast float %4157, %2153
  %4665 = fsub fast float %4158, %2152
  %4666 = fsub fast float %4159, %2151
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = call float @dx.op.unary.f32(i32 25, float %4667)  ; Rsqrt(value)
  %4669 = fmul fast float %4668, %4664
  %4670 = fmul fast float %4668, %4665
  %4671 = fmul fast float %4668, %4666
  %4672 = call float @dx.op.dot3.f32(i32 55, float %4157, float %4158, float %4159, float %2160, float %2161, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2149, float %2148, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4675 = fmul fast float %4674, %4164
  %4676 = fmul fast float %4674, %4674
  %4677 = fmul fast float %4676, %2187
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = fmul fast float %4675, %4678
  %4680 = bitcast float %4154 to i32
  %4681 = ashr i32 %4680, 1
  %4682 = sub nsw i32 1597463007, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4683, %4151
  %4685 = fmul fast float %4683, %4152
  %4686 = fmul fast float %4683, %4153
  %4687 = fsub fast float %4684, %2153
  %4688 = fsub fast float %4685, %2152
  %4689 = fsub fast float %4686, %2151
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float %4687, float %4688, float %4689)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 25, float %4690)  ; Rsqrt(value)
  %4692 = fmul fast float %4687, %4691
  %4693 = fmul fast float %4688, %4691
  %4694 = fmul fast float %4689, %4691
  %4695 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2161, float %2162, float %4692, float %4693, float %4694)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = fmul fast float %4695, %4695
  %4697 = call float @dx.op.unary.f32(i32 6, float %4672)  ; FAbs(value)
  %4698 = call float @dx.op.binary.f32(i32 35, float %2570, float 0x3F847AE140000000)  ; FMax(a,b)
  %4699 = fmul fast float %4698, %4698
  %4700 = fmul fast float %4699, %4699
  %4701 = fsub fast float 1.000000e+00, %4700
  %4702 = fmul fast float %2174, %2174
  %4703 = fmul fast float %4702, %4701
  %4704 = fadd fast float %4703, %4700
  %4705 = bitcast float %4704 to i32
  %4706 = ashr i32 %4705, 1
  %4707 = add nsw i32 %4706, 532487669
  %4708 = bitcast i32 %4707 to float
  %4709 = fadd fast float %4708, %2174
  %4710 = fmul fast float %4700, %4696
  %4711 = fsub fast float 1.000000e+00, %4696
  %4712 = fadd fast float %4711, %4710
  %4713 = fmul fast float %4697, %4697
  %4714 = fmul fast float %4713, %4701
  %4715 = fadd fast float %4714, %4700
  %4716 = bitcast float %4715 to i32
  %4717 = ashr i32 %4716, 1
  %4718 = add nsw i32 %4717, 532487669
  %4719 = bitcast i32 %4718 to float
  %4720 = fadd fast float %4719, %4697
  %4721 = fmul fast float %4712, %4712
  %4722 = fmul fast float %4721, %4709
  %4723 = fmul fast float %4722, %4720
  %4724 = fdiv fast float 1.000000e+00, %4723
  %4725 = bitcast float %4700 to i32
  %4726 = sitofp i32 %4725 to float
  %4727 = fmul fast float %4726, 0x3FE7F73180000000
  %4728 = fadd fast float %4727, 0x41AFE27C40000000
  %4729 = fptosi float %4728 to i32
  %4730 = bitcast i32 %4729 to float
  %4731 = fmul fast float %4119, 0x3FD80E9D60000000
  %4732 = fmul fast float %4731, %4683
  %4733 = fadd fast float %4730, %4732
  %4734 = bitcast float %4733 to i32
  %4735 = sub nsw i32 2129859010, %4734
  %4736 = bitcast i32 %4735 to float
  %4737 = fmul fast float %4700, %4724
  %4738 = fmul fast float %4737, %4730
  %4739 = fmul fast float %4738, %4736
  %4740 = fmul fast float %2432, 0x3FF9999980000000
  %4741 = fsub fast float 5.000000e+00, %4740
  %4742 = call float @dx.op.unary.f32(i32 6, float %4673)  ; FAbs(value)
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = fmul fast float %2432, 0x41D9660740000000
  %4745 = fadd fast float %4744, 0xC1EFBF8940000000
  %4746 = bitcast float %4743 to i32
  %4747 = sitofp i32 %4746 to float
  %4748 = fmul fast float %4747, %4741
  %4749 = fadd fast float %4745, %4748
  %4750 = fptosi float %4749 to i32
  %4751 = bitcast i32 %4750 to float
  %4752 = fsub fast float 1.000000e+00, %2157
  %4753 = fsub fast float 1.000000e+00, %2158
  %4754 = fsub fast float 1.000000e+00, %2172
  %4755 = fmul fast float %4751, %4752
  %4756 = fmul fast float %4751, %4753
  %4757 = fmul fast float %4751, %4754
  %4758 = fadd fast float %4755, %2157
  %4759 = fadd fast float %4756, %2158
  %4760 = fadd fast float %4757, %2172
  br i1 %2455, label %4761, label %4784

; <label>:4761                                    ; preds = %4644
  %4762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1499, float %4742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4763 = extractvalue %dx.types.ResRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.ResRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.ResRet.f32 %4762, 2
  %4766 = fadd fast float %4763, -5.000000e-01
  %4767 = fadd fast float %4764, -5.000000e-01
  %4768 = fadd fast float %4765, -5.000000e-01
  %4769 = fmul fast float %2157, 4.000000e+00
  %4770 = fmul fast float %4769, %4752
  %4771 = fmul fast float %4770, %4766
  %4772 = fmul fast float %2158, 4.000000e+00
  %4773 = fmul fast float %4772, %4753
  %4774 = fmul fast float %4773, %4767
  %4775 = fmul fast float %2172, 4.000000e+00
  %4776 = fmul fast float %4775, %4754
  %4777 = fmul fast float %4776, %4768
  %4778 = fadd fast float %4771, %4758
  %4779 = fadd fast float %4774, %4759
  %4780 = fadd fast float %4777, %4760
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4783 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  br label %4784

; <label>:4784                                    ; preds = %4761, %4644
  %4785 = phi float [ %4781, %4761 ], [ %4758, %4644 ]
  %4786 = phi float [ %4782, %4761 ], [ %4759, %4644 ]
  %4787 = phi float [ %4783, %4761 ], [ %4760, %4644 ]
  %4788 = fmul fast float %4672, 9.843750e-01
  %4789 = fadd fast float %4788, 7.812500e-03
  %4790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4789, float %2436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 0
  %4792 = extractvalue %dx.types.ResRet.f32 %4790, 1
  %4793 = extractvalue %dx.types.ResRet.f32 %4790, 2
  %4794 = extractvalue %dx.types.ResRet.f32 %4790, 3
  %4795 = fsub fast float %4793, %4791
  %4796 = fsub fast float %4794, %4792
  %4797 = fmul fast float %4795, %2442
  %4798 = fmul fast float %4796, %2442
  %4799 = fadd fast float %4797, %4791
  %4800 = fadd fast float %4798, %4792
  %4801 = fmul fast float %4799, %2157
  %4802 = fmul fast float %4799, %2158
  %4803 = fmul fast float %4799, %2172
  %4804 = fadd fast float %4801, %4800
  %4805 = fadd fast float %4802, %4800
  %4806 = fadd fast float %4803, %4800
  br i1 %2455, label %4807, label %4830

; <label>:4807                                    ; preds = %4784
  %4808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1499, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.ResRet.f32 %4808, 2
  %4812 = fadd fast float %4809, -5.000000e-01
  %4813 = fadd fast float %4810, -5.000000e-01
  %4814 = fadd fast float %4811, -5.000000e-01
  %4815 = fmul fast float %2157, 4.000000e+00
  %4816 = fmul fast float %4815, %4752
  %4817 = fmul fast float %4816, %4812
  %4818 = fmul fast float %2158, 4.000000e+00
  %4819 = fmul fast float %4818, %4753
  %4820 = fmul fast float %4819, %4813
  %4821 = fmul fast float %2172, 4.000000e+00
  %4822 = fmul fast float %4821, %4754
  %4823 = fmul fast float %4822, %4814
  %4824 = fadd fast float %4817, %4804
  %4825 = fadd fast float %4820, %4805
  %4826 = fadd fast float %4823, %4806
  %4827 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4828 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4829 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  br label %4830

; <label>:4830                                    ; preds = %4807, %4784
  %4831 = phi float [ %4827, %4807 ], [ %4804, %4784 ]
  %4832 = phi float [ %4828, %4807 ], [ %4805, %4784 ]
  %4833 = phi float [ %4829, %4807 ], [ %4806, %4784 ]
  %4834 = call float @dx.op.binary.f32(i32 35, float %4832, float %4833)  ; FMax(a,b)
  %4835 = call float @dx.op.binary.f32(i32 35, float %4831, float %4834)  ; FMax(a,b)
  %4836 = fsub fast float 1.000000e+00, %4835
  %4837 = call float @dx.op.binary.f32(i32 35, float %4697, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4838 = fdiv fast float %899, %4837
  %4839 = fmul fast float %2510, %4838
  %4840 = fmul fast float %2512, %4838
  %4841 = fmul fast float %2514, %4838
  %4842 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4843 = call float @dx.op.unary.f32(i32 21, float %4840)  ; Exp(value)
  %4844 = call float @dx.op.unary.f32(i32 21, float %4841)  ; Exp(value)
  %4845 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4848 = select i1 %2507, float %4845, float 0.000000e+00
  %4849 = select i1 %2508, float %4846, float 0.000000e+00
  %4850 = select i1 %2509, float %4847, float 0.000000e+00
  %4851 = fsub fast float -0.000000e+00, %2160
  %4852 = fsub fast float -0.000000e+00, %2161
  %4853 = fsub fast float -0.000000e+00, %2162
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4157, float %4158, float %4159, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4856 = fmul fast float %4855, %4164
  %4857 = fmul fast float %4855, 9.843750e-01
  %4858 = fadd fast float %4857, 7.812500e-03
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4858, float %2436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = extractvalue %dx.types.ResRet.f32 %4859, 3
  %4864 = fsub fast float %4862, %4860
  %4865 = fsub fast float %4863, %4861
  %4866 = fmul fast float %4864, %2442
  %4867 = fmul fast float %4865, %2442
  %4868 = fadd fast float %4866, %4860
  %4869 = fadd fast float %4867, %4861
  %4870 = fmul fast float %4868, %2157
  %4871 = fmul fast float %4868, %2158
  %4872 = fmul fast float %4868, %2172
  %4873 = fadd fast float %4870, %4869
  %4874 = fadd fast float %4871, %4869
  %4875 = fadd fast float %4872, %4869
  br i1 %2455, label %4876, label %4899

; <label>:4876                                    ; preds = %4830
  %4877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1499, float %4855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4878 = extractvalue %dx.types.ResRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.ResRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.ResRet.f32 %4877, 2
  %4881 = fadd fast float %4878, -5.000000e-01
  %4882 = fadd fast float %4879, -5.000000e-01
  %4883 = fadd fast float %4880, -5.000000e-01
  %4884 = fmul fast float %2157, 4.000000e+00
  %4885 = fmul fast float %4884, %4752
  %4886 = fmul fast float %4885, %4881
  %4887 = fmul fast float %2158, 4.000000e+00
  %4888 = fmul fast float %4887, %4753
  %4889 = fmul fast float %4888, %4882
  %4890 = fmul fast float %2172, 4.000000e+00
  %4891 = fmul fast float %4890, %4754
  %4892 = fmul fast float %4891, %4883
  %4893 = fadd fast float %4886, %4873
  %4894 = fadd fast float %4889, %4874
  %4895 = fadd fast float %4892, %4875
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  br label %4899

; <label>:4899                                    ; preds = %4876, %4830
  %4900 = phi float [ %4896, %4876 ], [ %4873, %4830 ]
  %4901 = phi float [ %4897, %4876 ], [ %4874, %4830 ]
  %4902 = phi float [ %4898, %4876 ], [ %4875, %4830 ]
  %4903 = call float @dx.op.binary.f32(i32 35, float %4901, float %4902)  ; FMax(a,b)
  %4904 = call float @dx.op.binary.f32(i32 35, float %4900, float %4903)  ; FMax(a,b)
  %4905 = fsub fast float 1.000000e+00, %4904
  %4906 = fmul fast float %2570, %2575
  %4907 = fadd fast float %2577, %4906
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fsub fast float %4684, %2180
  %4910 = fsub fast float %4685, %2181
  %4911 = fsub fast float %4686, %2182
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4910, float %4911, float %4909, float %4910, float %4911)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = call float @dx.op.unary.f32(i32 25, float %4912)  ; Rsqrt(value)
  %4914 = fmul fast float %4909, %4913
  %4915 = fmul fast float %4910, %4913
  %4916 = fmul fast float %4911, %4913
  %4917 = call float @dx.op.dot3.f32(i32 55, float %4851, float %4852, float %4853, float %4914, float %4915, float %4916)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = fmul fast float %4917, %4917
  %4919 = call float @dx.op.unary.f32(i32 6, float %4855)  ; FAbs(value)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4908, float 0x3F847AE140000000)  ; FMax(a,b)
  %4921 = fmul fast float %4920, %4920
  %4922 = fmul fast float %4921, %4921
  %4923 = fsub fast float 1.000000e+00, %4922
  %4924 = fmul fast float %4702, %4923
  %4925 = fadd fast float %4924, %4922
  %4926 = bitcast float %4925 to i32
  %4927 = ashr i32 %4926, 1
  %4928 = add nsw i32 %4927, 532487669
  %4929 = bitcast i32 %4928 to float
  %4930 = fadd fast float %4929, %2174
  %4931 = fmul fast float %4922, %4918
  %4932 = fsub fast float 1.000000e+00, %4918
  %4933 = fadd fast float %4932, %4931
  %4934 = fmul fast float %4919, %4919
  %4935 = fmul fast float %4934, %4923
  %4936 = fadd fast float %4935, %4922
  %4937 = bitcast float %4936 to i32
  %4938 = ashr i32 %4937, 1
  %4939 = add nsw i32 %4938, 532487669
  %4940 = bitcast i32 %4939 to float
  %4941 = fadd fast float %4940, %4919
  %4942 = fmul fast float %4933, %4933
  %4943 = fmul fast float %4942, %4930
  %4944 = fmul fast float %4943, %4941
  %4945 = fdiv fast float 1.000000e+00, %4944
  %4946 = bitcast float %4922 to i32
  %4947 = sitofp i32 %4946 to float
  %4948 = fmul fast float %4947, 0x3FE7F73180000000
  %4949 = fadd fast float %4948, 0x41AFE27C40000000
  %4950 = fptosi float %4949 to i32
  %4951 = bitcast i32 %4950 to float
  %4952 = fadd fast float %4951, %4732
  %4953 = bitcast float %4952 to i32
  %4954 = sub nsw i32 2129859010, %4953
  %4955 = bitcast i32 %4954 to float
  %4956 = fmul fast float %4922, %4945
  %4957 = fmul fast float %4956, %4951
  %4958 = fmul fast float %4957, %4955
  br i1 %4149, label %4959, label %4969

; <label>:4959                                    ; preds = %4899
  %4960 = fmul fast float %4856, %4848
  %4961 = fmul fast float %4856, %4849
  %4962 = fmul fast float %4856, %4850
  %4963 = fmul fast float %4960, %4905
  %4964 = fmul fast float %4963, %4958
  %4965 = fmul fast float %4961, %4905
  %4966 = fmul fast float %4965, %4958
  %4967 = fmul fast float %4962, %4905
  %4968 = fmul fast float %4967, %4958
  br label %4969

; <label>:4969                                    ; preds = %4959, %4899
  %4970 = phi float [ %4964, %4959 ], [ 0.000000e+00, %4899 ]
  %4971 = phi float [ %4966, %4959 ], [ 0.000000e+00, %4899 ]
  %4972 = phi float [ %4968, %4959 ], [ 0.000000e+00, %4899 ]
  %4973 = fmul fast float %4785, %4739
  %4974 = fmul fast float %4786, %4739
  %4975 = fmul fast float %4787, %4739
  %4976 = fsub fast float 1.000000e+00, %4673
  %4977 = bitcast float %4976 to i32
  %4978 = sitofp i32 %4977 to float
  %4979 = fmul fast float %4978, 5.000000e+00
  %4980 = fadd fast float %4979, 0xC1EFBF8940000000
  %4981 = fptosi float %4980 to i32
  %4982 = bitcast i32 %4981 to float
  %4983 = fmul fast float %4982, %1498
  %4984 = fmul fast float %4836, %4983
  %4985 = fmul fast float %4984, %2502
  %4986 = fmul fast float %4984, %2503
  %4987 = fmul fast float %4984, %2504
  %4988 = fadd fast float %4985, %4973
  %4989 = fadd fast float %4986, %4974
  %4990 = fadd fast float %4987, %4975
  %4991 = fmul fast float %4988, %4679
  %4992 = fmul fast float %4989, %4679
  %4993 = fmul fast float %4990, %4679
  %4994 = fadd fast float %4991, %4970
  %4995 = fadd fast float %4992, %4971
  %4996 = fadd fast float %4993, %4972
  %4997 = fmul fast float %4661, %1522
  %4998 = fmul fast float %4997, %4679
  %4999 = fmul fast float %4998, %4836
  %5000 = fmul fast float %4662, %1522
  %5001 = fmul fast float %5000, %4679
  %5002 = fmul fast float %5001, %4836
  %5003 = fmul fast float %4663, %1522
  %5004 = fmul fast float %5003, %4679
  %5005 = fmul fast float %5004, %4836
  %5006 = fadd fast float %4999, %4093
  %5007 = fadd fast float %5002, %4094
  %5008 = fadd fast float %5005, %4095
  %5009 = fmul fast float %4997, %4994
  %5010 = fmul fast float %5000, %4995
  %5011 = fmul fast float %5003, %4996
  %5012 = fadd fast float %5009, %4090
  %5013 = fadd fast float %5010, %4091
  %5014 = fadd fast float %5011, %4092
  br label %4223

; <label>:5015                                    ; preds = %4223
  br label %5016

; <label>:5016                                    ; preds = %5015, %4056
  %5017 = phi float [ %4058, %4056 ], [ %4224, %5015 ]
  %5018 = phi float [ %4059, %4056 ], [ %4225, %5015 ]
  %5019 = phi float [ %4060, %4056 ], [ %4226, %5015 ]
  %5020 = phi float [ %4061, %4056 ], [ %4227, %5015 ]
  %5021 = phi float [ %4062, %4056 ], [ %4228, %5015 ]
  %5022 = phi float [ %4063, %4056 ], [ %4229, %5015 ]
  %5023 = add i32 %4057, 1
  %5024 = icmp ugt i32 %5023, %4053
  br i1 %5024, label %5025, label %4056

; <label>:5025                                    ; preds = %5016
  br label %5026

; <label>:5026                                    ; preds = %5025, %4006, %3996
  %5027 = phi float [ %3997, %3996 ], [ %3997, %4006 ], [ %5017, %5025 ]
  %5028 = phi float [ %3998, %3996 ], [ %3998, %4006 ], [ %5018, %5025 ]
  %5029 = phi float [ %3999, %3996 ], [ %3999, %4006 ], [ %5019, %5025 ]
  %5030 = phi float [ %4000, %3996 ], [ %4000, %4006 ], [ %5020, %5025 ]
  %5031 = phi float [ %4001, %3996 ], [ %4001, %4006 ], [ %5021, %5025 ]
  %5032 = phi float [ %4002, %3996 ], [ %4002, %4006 ], [ %5022, %5025 ]
  %5033 = fmul fast float %2531, %1522
  %5034 = fmul fast float %2532, %1522
  %5035 = fmul fast float %2533, %1522
  %5036 = fadd fast float %5033, 1.000000e+00
  %5037 = fadd fast float %5034, 1.000000e+00
  %5038 = fadd fast float %5035, 1.000000e+00
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5037, float %5038, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = fsub fast float 1.000000e+00, %5039
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 0
  %5043 = fmul fast float %5042, %2537
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5046 = fsub fast float 1.000000e+00, %1494
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fadd fast float %5032, %1493
  %5049 = fmul fast float %5048, %1494
  %5050 = fmul fast float %5047, %5045
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 3
  %5053 = fmul fast float %5030, %2154
  %5054 = fmul fast float %5031, %2155
  %5055 = fmul fast float %5032, %2156
  %5056 = fcmp fast ogt float %76, %155
  %5057 = and i1 %5056, %1959
  %5058 = or i1 %1965, %5057
  %5059 = icmp eq i32 %1958, 2
  %5060 = fcmp fast ole float %76, %155
  %5061 = and i1 %5060, %5059
  %5062 = or i1 %5061, %5058
  br i1 %5057, label %5063, label %5321

; <label>:5063                                    ; preds = %5026
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5067 = fmul fast float %5065, %85
  %5068 = fmul fast float %5066, %86
  %5069 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5071 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %5069, float %5070, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.ResRet.f32 %5071, 1
  %5074 = extractvalue %dx.types.ResRet.f32 %5071, 2
  %5075 = extractvalue %dx.types.ResRet.f32 %5071, 3
  %5076 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %5069, float %5070, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5077 = extractvalue %dx.types.ResRet.f32 %5076, 0
  %5078 = extractvalue %dx.types.ResRet.f32 %5076, 1
  %5079 = extractvalue %dx.types.ResRet.f32 %5076, 2
  %5080 = extractvalue %dx.types.ResRet.f32 %5076, 3
  %5081 = call float @dx.op.binary.f32(i32 35, float %5073, float %5074)  ; FMax(a,b)
  %5082 = call float @dx.op.binary.f32(i32 35, float %5072, float %5081)  ; FMax(a,b)
  %5083 = call float @dx.op.binary.f32(i32 35, float %5082, float %5075)  ; FMax(a,b)
  %5084 = call float @dx.op.binary.f32(i32 36, float %5078, float %5079)  ; FMin(a,b)
  %5085 = call float @dx.op.binary.f32(i32 36, float %5077, float %5084)  ; FMin(a,b)
  %5086 = call float @dx.op.binary.f32(i32 36, float %5085, float %5080)  ; FMin(a,b)
  %5087 = fmul fast float %5083, 2.550000e+02
  %5088 = fadd fast float %5087, 0x3F70101020000000
  %5089 = fptoui float %5088 to i32
  %5090 = fmul fast float %5086, 2.550000e+02
  %5091 = fadd fast float %5090, 0x3F70101020000000
  %5092 = fptoui float %5091 to i32
  %5093 = icmp ult i32 %5089, %5092
  br i1 %5093, label %5094, label %5261

; <label>:5094                                    ; preds = %5063
  %5095 = fadd fast float %76, -4.000000e+00
  %5096 = select i1 %2171, float -4.000000e+00, float %5095
  %5097 = call float @dx.op.binary.f32(i32 35, float %5096, float 0.000000e+00)  ; FMax(a,b)
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 0
  %5100 = fadd fast float %5099, %5097
  %5101 = extractvalue %dx.types.CBufRet.f32 %5098, 2
  %5102 = fmul fast float %5100, %5101
  %5103 = call float @dx.op.unary.f32(i32 23, float %5102)  ; Log(value)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5098, 3
  %5105 = fmul fast float %5104, %5103
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5108 = fmul fast float %5105, %5107
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = uitofp i32 %5089 to float
  %5111 = uitofp i32 %5092 to float
  %5112 = fadd fast float %5110, 5.000000e-01
  %5113 = fadd fast float %5111, 5.000000e-01
  %5114 = fmul fast float %5107, %5112
  %5115 = fmul fast float %5107, %5113
  %5116 = fadd fast float %5114, 0x3F0FFB4800000000
  %5117 = fadd fast float %5115, 0xBF0FFB4800000000
  %5118 = call float @dx.op.binary.f32(i32 35, float %5109, float %5116)  ; FMax(a,b)
  %5119 = call float @dx.op.binary.f32(i32 36, float %5118, float %5117)  ; FMin(a,b)
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 1
  %5122 = extractvalue %dx.types.CBufRet.f32 %5120, 2
  %5123 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5124 = fmul fast float %5121, %5119
  %5125 = fadd fast float %5123, %5124
  %5126 = fadd fast float %5123, %5122
  %5127 = fsub fast float %5121, %5122
  %5128 = fadd fast float %5127, %5123
  %5129 = call float @dx.op.binary.f32(i32 35, float %5125, float %5126)  ; FMax(a,b)
  %5130 = call float @dx.op.binary.f32(i32 36, float %5129, float %5128)  ; FMin(a,b)
  %5131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %5069, float %5070, float %5130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5132 = extractvalue %dx.types.ResRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.ResRet.f32 %5131, 1
  %5134 = extractvalue %dx.types.ResRet.f32 %5131, 2
  %5135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.i32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.i32 %5135, 1
  %5138 = uitofp i32 %5136 to float
  %5139 = uitofp i32 %5137 to float
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = fmul fast float %5138, %5069
  %5144 = fmul fast float %5139, %5070
  %5145 = fadd fast float %5143, -5.000000e-01
  %5146 = fadd fast float %5144, -5.000000e-01
  %5147 = call float @dx.op.unary.f32(i32 22, float %5145)  ; Frc(value)
  %5148 = call float @dx.op.unary.f32(i32 22, float %5146)  ; Frc(value)
  %5149 = fmul fast float %5147, %5147
  %5150 = fmul fast float %5149, %5147
  %5151 = fsub fast float 3.000000e+00, %5147
  %5152 = fmul fast float %5149, %5151
  %5153 = fmul fast float %5147, 3.000000e+00
  %5154 = fmul fast float %5150, 3.000000e+00
  %5155 = fmul fast float %5149, 6.000000e+00
  %5156 = fsub fast float %5154, %5155
  %5157 = fadd fast float %5156, 4.000000e+00
  %5158 = fmul fast float %5157, 0x3FC5555560000000
  %5159 = fmul fast float %5150, -3.000000e+00
  %5160 = fadd fast float %5149, %5147
  %5161 = fmul fast float %5160, 3.000000e+00
  %5162 = fadd fast float %5159, 1.000000e+00
  %5163 = fadd fast float %5162, %5161
  %5164 = fmul fast float %5150, 0x3FC5555560000000
  %5165 = fmul fast float %5148, %5148
  %5166 = fmul fast float %5165, %5148
  %5167 = fsub fast float 3.000000e+00, %5148
  %5168 = fmul fast float %5165, %5167
  %5169 = fmul fast float %5148, 3.000000e+00
  %5170 = fmul fast float %5166, 3.000000e+00
  %5171 = fmul fast float %5165, 6.000000e+00
  %5172 = fsub fast float %5170, %5171
  %5173 = fadd fast float %5172, 4.000000e+00
  %5174 = fmul fast float %5173, 0x3FC5555560000000
  %5175 = fmul fast float %5166, -3.000000e+00
  %5176 = fadd fast float %5165, %5148
  %5177 = fmul fast float %5176, 3.000000e+00
  %5178 = fadd fast float %5175, 1.000000e+00
  %5179 = fadd fast float %5178, %5177
  %5180 = fmul fast float %5166, 0x3FC5555560000000
  %5181 = fadd fast float %5147, 1.000000e+00
  %5182 = fsub fast float 1.000000e+00, %5153
  %5183 = fadd fast float %5182, %5152
  %5184 = fadd fast float %5183, %5157
  %5185 = fmul fast float %5184, 0x3FC5555560000000
  %5186 = fdiv fast float %5158, %5185
  %5187 = fsub fast float %5181, %5186
  %5188 = fsub fast float 1.000000e+00, %5147
  %5189 = fadd fast float %5163, %5150
  %5190 = fmul fast float %5189, 0x3FC5555560000000
  %5191 = fdiv fast float %5164, %5190
  %5192 = fadd fast float %5188, %5191
  %5193 = fadd fast float %5148, 1.000000e+00
  %5194 = fsub fast float 1.000000e+00, %5169
  %5195 = fadd fast float %5194, %5168
  %5196 = fadd fast float %5195, %5173
  %5197 = fmul fast float %5196, 0x3FC5555560000000
  %5198 = fdiv fast float %5174, %5197
  %5199 = fsub fast float %5193, %5198
  %5200 = fsub fast float 1.000000e+00, %5148
  %5201 = fadd fast float %5179, %5166
  %5202 = fmul fast float %5201, 0x3FC5555560000000
  %5203 = fdiv fast float %5180, %5202
  %5204 = fadd fast float %5203, %5200
  %5205 = fmul fast float %5187, %5141
  %5206 = fsub fast float %5069, %5205
  %5207 = fmul fast float %5192, %5141
  %5208 = fadd fast float %5207, %5069
  %5209 = fmul fast float %5204, %5142
  %5210 = fadd fast float %5209, %5070
  %5211 = fmul fast float %5199, %5142
  %5212 = fsub fast float %5070, %5211
  %5213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5206, float %5212, float %5130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5214 = extractvalue %dx.types.ResRet.f32 %5213, 0
  %5215 = extractvalue %dx.types.ResRet.f32 %5213, 1
  %5216 = extractvalue %dx.types.ResRet.f32 %5213, 2
  %5217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5208, float %5212, float %5130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5206, float %5210, float %5130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5222 = extractvalue %dx.types.ResRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.ResRet.f32 %5221, 1
  %5224 = extractvalue %dx.types.ResRet.f32 %5221, 2
  %5225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5208, float %5210, float %5130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = fsub fast float %5222, %5214
  %5230 = fsub fast float %5223, %5215
  %5231 = fsub fast float %5224, %5216
  %5232 = fmul fast float %5229, %5202
  %5233 = fmul fast float %5230, %5202
  %5234 = fmul fast float %5231, %5202
  %5235 = fadd fast float %5232, %5214
  %5236 = fadd fast float %5233, %5215
  %5237 = fadd fast float %5234, %5216
  %5238 = fsub fast float %5226, %5218
  %5239 = fsub fast float %5227, %5219
  %5240 = fsub fast float %5228, %5220
  %5241 = fmul fast float %5238, %5202
  %5242 = fmul fast float %5239, %5202
  %5243 = fmul fast float %5240, %5202
  %5244 = fsub fast float %5218, %5235
  %5245 = fadd fast float %5244, %5241
  %5246 = fsub fast float %5219, %5236
  %5247 = fadd fast float %5246, %5242
  %5248 = fsub fast float %5220, %5237
  %5249 = fadd fast float %5248, %5243
  %5250 = fmul fast float %5245, %5190
  %5251 = fmul fast float %5247, %5190
  %5252 = fmul fast float %5249, %5190
  %5253 = fadd fast float %5250, %5235
  %5254 = fadd fast float %5251, %5236
  %5255 = fadd fast float %5252, %5237
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 1
  %5258 = fmul fast float %5253, %5257
  %5259 = fmul fast float %5254, %5257
  %5260 = fmul fast float %5255, %5257
  br label %5261

; <label>:5261                                    ; preds = %5094, %5063
  %5262 = phi float [ %5132, %5094 ], [ 1.000000e+00, %5063 ]
  %5263 = phi float [ %5133, %5094 ], [ 1.000000e+00, %5063 ]
  %5264 = phi float [ %5134, %5094 ], [ 1.000000e+00, %5063 ]
  %5265 = phi float [ %5258, %5094 ], [ 0.000000e+00, %5063 ]
  %5266 = phi float [ %5259, %5094 ], [ 0.000000e+00, %5063 ]
  %5267 = phi float [ %5260, %5094 ], [ 0.000000e+00, %5063 ]
  %5268 = fmul fast float %5265, %5040
  %5269 = fmul fast float %5266, %5040
  %5270 = fmul fast float %5267, %5040
  %5271 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5269, float %5270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = select i1 %195, float %5271, float %5262
  %5274 = select i1 %195, float %5271, float %5263
  %5275 = select i1 %195, float 1.000000e+00, float %5264
  %5276 = select i1 %195, float %5272, float %5268
  %5277 = select i1 %195, float 0.000000e+00, float %5269
  %5278 = select i1 %195, float 0.000000e+00, float %5270
  %5279 = fmul fast float %5273, %5053
  %5280 = fmul fast float %5274, %5054
  %5281 = fmul fast float %5275, %5055
  %5282 = fadd fast float %5279, %5276
  %5283 = fadd fast float %5280, %5277
  %5284 = fadd fast float %5278, %5281
  %5285 = fmul fast float %5273, %5027
  %5286 = fmul fast float %5274, %5028
  %5287 = fmul fast float %5275, %5029
  %5288 = fmul fast float %85, 2.000000e+00
  %5289 = fmul fast float %5288, %5065
  %5290 = fmul fast float %86, 2.000000e+00
  %5291 = fmul fast float %5290, %5066
  %5292 = fsub fast float 1.000000e+00, %5289
  %5293 = fsub fast float 1.000000e+00, %5291
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5298 = fmul fast float %5292, %5295
  %5299 = fmul fast float %5292, %5296
  %5300 = fmul fast float %5292, %5297
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5305 = fmul fast float %5293, %5302
  %5306 = fmul fast float %5293, %5303
  %5307 = fmul fast float %5293, %5304
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5308, 2
  %5312 = fadd fast float %5305, %5309
  %5313 = fadd fast float %5312, %5298
  %5314 = fadd fast float %5306, %5310
  %5315 = fadd fast float %5314, %5299
  %5316 = fadd fast float %5307, %5311
  %5317 = fadd fast float %5316, %5300
  %5318 = fmul fast float %5313, %155
  %5319 = fmul fast float %5315, %155
  %5320 = fmul fast float %5317, %155
  br label %5321

; <label>:5321                                    ; preds = %5261, %5026
  %5322 = phi float [ %5318, %5261 ], [ %133, %5026 ]
  %5323 = phi float [ %5319, %5261 ], [ %134, %5026 ]
  %5324 = phi float [ %5320, %5261 ], [ %135, %5026 ]
  %5325 = phi float [ %155, %5261 ], [ %76, %5026 ]
  %5326 = phi float [ %5282, %5261 ], [ %5053, %5026 ]
  %5327 = phi float [ %5283, %5261 ], [ %5054, %5026 ]
  %5328 = phi float [ %5284, %5261 ], [ %5055, %5026 ]
  %5329 = phi float [ %5285, %5261 ], [ %5027, %5026 ]
  %5330 = phi float [ %5286, %5261 ], [ %5028, %5026 ]
  %5331 = phi float [ %5287, %5261 ], [ %5029, %5026 ]
  %5332 = phi float [ %5262, %5261 ], [ 1.000000e+00, %5026 ]
  br i1 %5062, label %6483, label %5333

; <label>:5333                                    ; preds = %5321
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5337 = extractvalue %dx.types.CBufRet.f32 %5334, 2
  %5338 = extractvalue %dx.types.CBufRet.f32 %5334, 3
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.CBufRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.CBufRet.f32 %5339, 2
  %5343 = extractvalue %dx.types.CBufRet.f32 %5339, 3
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 0
  %5346 = extractvalue %dx.types.CBufRet.f32 %5344, 1
  %5347 = extractvalue %dx.types.CBufRet.f32 %5344, 2
  %5348 = extractvalue %dx.types.CBufRet.f32 %5344, 3
  %5349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.CBufRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.CBufRet.f32 %5349, 2
  %5353 = extractvalue %dx.types.CBufRet.f32 %5349, 3
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 3
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 3
  %5358 = extractvalue %dx.types.CBufRet.f32 %5356, 0
  %5359 = extractvalue %dx.types.CBufRet.f32 %5356, 1
  %5360 = extractvalue %dx.types.CBufRet.f32 %5356, 2
  %5361 = fcmp fast olt float %5360, -5.000000e-01
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = call float @dx.op.unary.f32(i32 25, float %5362)  ; Rsqrt(value)
  %5364 = fmul fast float %5363, %5362
  %5365 = fmul fast float %5363, %5322
  %5366 = fmul fast float %5363, %5323
  %5367 = fmul fast float %5363, %5324
  %5368 = fadd fast float %5364, %5338
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5365, float %5366, float %5367, float %5335, float %5336, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.i32 %5370, 1
  %5372 = and i32 %5371, 1
  %5373 = icmp ne i32 %5372, 0
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5376 = fcmp fast ogt float %5375, 0.000000e+00
  %5377 = and i1 %5373, %5376
  br i1 %5377, label %5378, label %5780, !dx.controlflow.hints !114

; <label>:5378                                    ; preds = %5333
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 2
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5385 = fsub fast float %5382, %5384
  %5386 = and i32 %5371, 2
  %5387 = extractvalue %dx.types.CBufRet.i32 %5370, 0
  %5388 = call i32 @dx.op.binary.i32(i32 40, i32 %5387, i32 3)  ; UMin(a,b)
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5393 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5394 = fsub fast float %5390, %5392
  %5395 = fsub fast float %5391, %5393
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5398 = fcmp fast ogt float %5397, 0.000000e+00
  %5399 = fsub fast float -0.000000e+00, %5394
  %5400 = fsub fast float -0.000000e+00, %5395
  %5401 = call float @dx.op.dot2.f32(i32 54, float %5365, float %5366, float %5365, float %5366)  ; Dot2(ax,ay,bx,by)
  %5402 = call float @dx.op.dot2.f32(i32 54, float %5365, float %5366, float %5399, float %5400)  ; Dot2(ax,ay,bx,by)
  %5403 = fmul fast float %5402, 2.000000e+00
  %5404 = call float @dx.op.dot2.f32(i32 54, float %5399, float %5400, float %5399, float %5400)  ; Dot2(ax,ay,bx,by)
  %5405 = fmul fast float %5397, %5397
  %5406 = fsub fast float %5404, %5405
  %5407 = fmul fast float %5403, %5403
  %5408 = fmul fast float %5401, 4.000000e+00
  %5409 = fmul fast float %5408, %5406
  %5410 = fsub fast float %5407, %5409
  %5411 = fcmp fast ogt float %5410, 0.000000e+00
  br i1 %5411, label %5412, label %5427

; <label>:5412                                    ; preds = %5378
  %5413 = fcmp fast ogt float %5403, 0.000000e+00
  %5414 = call float @dx.op.unary.f32(i32 24, float %5410)  ; Sqrt(value)
  %5415 = fsub fast float -0.000000e+00, %5414
  %5416 = select i1 %5413, float %5414, float %5415
  %5417 = fadd fast float %5416, %5403
  %5418 = fmul float %5417, -5.000000e-01
  %5419 = fdiv fast float %5418, %5401
  %5420 = call float @dx.op.binary.f32(i32 35, float %5419, float 0.000000e+00)  ; FMax(a,b)
  %5421 = call float @dx.op.binary.f32(i32 36, float %5364, float %5420)  ; FMin(a,b)
  %5422 = fdiv fast float %5406, %5418
  %5423 = call float @dx.op.binary.f32(i32 35, float %5422, float 0.000000e+00)  ; FMax(a,b)
  %5424 = call float @dx.op.binary.f32(i32 36, float %5364, float %5423)  ; FMin(a,b)
  %5425 = call float @dx.op.binary.f32(i32 36, float %5421, float %5424)  ; FMin(a,b)
  %5426 = call float @dx.op.binary.f32(i32 35, float %5421, float %5424)  ; FMax(a,b)
  br label %5427

; <label>:5427                                    ; preds = %5412, %5378
  %5428 = phi float [ %5426, %5412 ], [ -1.000000e+00, %5378 ]
  %5429 = phi float [ %5425, %5412 ], [ -1.000000e+00, %5378 ]
  %5430 = phi i1 [ true, %5412 ], [ false, %5378 ]
  %5431 = and i1 %5398, %5430
  br i1 %5431, label %5432, label %5434

; <label>:5432                                    ; preds = %5427
  %5433 = fcmp fast oeq float %5429, %5428
  br i1 %5433, label %5733, label %5435

; <label>:5434                                    ; preds = %5427
  br i1 %5398, label %5733, label %5435

; <label>:5435                                    ; preds = %5434, %5432
  %5436 = phi float [ %5364, %5434 ], [ %5428, %5432 ]
  %5437 = phi float [ 0.000000e+00, %5434 ], [ %5429, %5432 ]
  %5438 = icmp ne i32 %5386, 0
  %5439 = fmul fast float %5436, %5367
  %5440 = fadd fast float %5439, %5380
  %5441 = fmul fast float %5440, %5436
  %5442 = select i1 %5438, float 0.000000e+00, float %5441
  %5443 = fcmp fast oeq float %5367, 0.000000e+00
  %5444 = fdiv fast float %5385, %5367
  %5445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5444)  ; FMax(a,b)
  %5446 = select i1 %5443, float %5436, float %5445
  %5447 = call float @dx.op.binary.f32(i32 36, float %5436, float %5446)  ; FMin(a,b)
  %5448 = fcmp fast ogt float %5367, 0.000000e+00
  %5449 = fcmp fast olt float %5385, 0.000000e+00
  br i1 %5448, label %5450, label %5507

; <label>:5450                                    ; preds = %5435
  %5451 = icmp eq i32 %5386, 0
  br i1 %5449, label %5452, label %5496

; <label>:5452                                    ; preds = %5450
  %5453 = select i1 %5451, float %5436, float 0.000000e+00
  %5454 = fsub fast float -0.000000e+00, %5453
  %5455 = call float @dx.op.unary.f32(i32 6, float %5454)  ; FAbs(value)
  %5456 = fmul fast float %5453, %5367
  %5457 = fadd fast float %5456, %5380
  %5458 = fmul fast float %5455, %5457
  %5459 = fsub fast float %5442, %5458
  %5460 = fsub fast float %5436, %5455
  %5461 = select i1 %5451, float %5460, float 0.000000e+00
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.CBufRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.CBufRet.f32 %5466, 2
  %5470 = extractvalue %dx.types.CBufRet.f32 %5466, 3
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 3
  %5473 = call float @dx.op.binary.f32(i32 36, float %5459, float %5472)  ; FMin(a,b)
  %5474 = fmul fast float %5470, %5461
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fsub fast float %5467, %5463
  %5477 = fsub fast float %5468, %5464
  %5478 = fsub fast float %5469, %5465
  %5479 = fmul fast float %5475, %5476
  %5480 = fmul fast float %5475, %5477
  %5481 = fmul fast float %5475, %5478
  %5482 = fadd fast float %5479, %5463
  %5483 = fadd fast float %5480, %5464
  %5484 = fadd fast float %5481, %5465
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.CBufRet.f32 %5485, 1
  %5488 = fadd fast float %5487, %5486
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5485, 2
  %5491 = extractvalue %dx.types.CBufRet.f32 %5485, 3
  %5492 = fadd fast float %5491, %5490
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5489, %5473
  %5495 = fmul fast float %5494, %5493
  br label %5733

; <label>:5496                                    ; preds = %5450
  br i1 %5451, label %5497, label %5518

; <label>:5497                                    ; preds = %5496
  %5498 = call float @dx.op.binary.f32(i32 36, float %5447, float %5437)  ; FMin(a,b)
  %5499 = fsub fast float %5447, %5498
  %5500 = fsub fast float %5499, %5436
  %5501 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5502 = fadd fast float %5499, %5436
  %5503 = fmul fast float %5502, %5367
  %5504 = fadd fast float %5503, %5380
  %5505 = fmul fast float %5504, %5501
  %5506 = fsub fast float %5442, %5505
  br label %5518

; <label>:5507                                    ; preds = %5435
  br i1 %5449, label %5508, label %5518

; <label>:5508                                    ; preds = %5507
  %5509 = call float @dx.op.binary.f32(i32 35, float %5437, float %5447)  ; FMax(a,b)
  %5510 = icmp eq i32 %5386, 0
  %5511 = select i1 %5510, float %5447, float 0.000000e+00
  %5512 = fsub fast float -0.000000e+00, %5511
  %5513 = call float @dx.op.unary.f32(i32 6, float %5512)  ; FAbs(value)
  %5514 = fmul fast float %5511, %5367
  %5515 = fadd fast float %5514, %5380
  %5516 = fmul fast float %5513, %5515
  %5517 = fsub fast float %5442, %5516
  br label %5518

; <label>:5518                                    ; preds = %5508, %5507, %5497, %5496
  %5519 = phi float [ %5437, %5496 ], [ %5437, %5497 ], [ %5509, %5508 ], [ %5437, %5507 ]
  %5520 = phi float [ 0.000000e+00, %5496 ], [ %5501, %5497 ], [ %5513, %5508 ], [ 0.000000e+00, %5507 ]
  %5521 = phi float [ %5442, %5496 ], [ %5506, %5497 ], [ %5517, %5508 ], [ %5442, %5507 ]
  %5522 = phi float [ %5447, %5496 ], [ %5447, %5497 ], [ %5436, %5508 ], [ %5436, %5507 ]
  %5523 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5523, align 4, !tbaa !115, !noalias !117
  %5524 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5524, align 4, !tbaa !115, !noalias !117
  %5525 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5525, align 4, !tbaa !115, !noalias !117
  %5526 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %5526, align 4, !tbaa !115, !noalias !117
  %5527 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %5527, align 4, !tbaa !115, !noalias !117
  %5528 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %5528, align 4, !tbaa !115, !noalias !117
  %5529 = icmp sgt i32 %5388, 0
  br i1 %5529, label %5530, label %5591

; <label>:5530                                    ; preds = %5518
  br label %5531

; <label>:5531                                    ; preds = %5580, %5530
  %5532 = phi i32 [ %5581, %5580 ], [ 0, %5530 ]
  %5533 = phi i32 [ %5582, %5580 ], [ 0, %5530 ]
  %5534 = add nuw i32 %5533, 171
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %5534)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 0
  %5537 = extractvalue %dx.types.CBufRet.f32 %5535, 1
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.CBufRet.f32 %5538, 1
  %5541 = fsub fast float %5536, %5539
  %5542 = fsub fast float %5537, %5540
  %5543 = extractvalue %dx.types.CBufRet.f32 %5535, 2
  %5544 = fsub fast float -0.000000e+00, %5541
  %5545 = fsub fast float -0.000000e+00, %5542
  %5546 = call float @dx.op.dot2.f32(i32 54, float %5365, float %5366, float %5544, float %5545)  ; Dot2(ax,ay,bx,by)
  %5547 = fmul fast float %5546, 2.000000e+00
  %5548 = call float @dx.op.dot2.f32(i32 54, float %5544, float %5545, float %5544, float %5545)  ; Dot2(ax,ay,bx,by)
  %5549 = fmul fast float %5543, %5543
  %5550 = fsub fast float %5548, %5549
  %5551 = fmul fast float %5547, %5547
  %5552 = fmul fast float %5408, %5550
  %5553 = fsub fast float %5551, %5552
  %5554 = fcmp fast ogt float %5553, 0.000000e+00
  br i1 %5554, label %5555, label %5570

; <label>:5555                                    ; preds = %5531
  %5556 = fcmp fast ogt float %5547, 0.000000e+00
  %5557 = call float @dx.op.unary.f32(i32 24, float %5553)  ; Sqrt(value)
  %5558 = fsub fast float -0.000000e+00, %5557
  %5559 = select i1 %5556, float %5557, float %5558
  %5560 = fadd fast float %5559, %5547
  %5561 = fmul float %5560, -5.000000e-01
  %5562 = fdiv fast float %5561, %5401
  %5563 = call float @dx.op.binary.f32(i32 35, float %5562, float 0.000000e+00)  ; FMax(a,b)
  %5564 = call float @dx.op.binary.f32(i32 36, float %5436, float %5563)  ; FMin(a,b)
  %5565 = fdiv fast float %5550, %5561
  %5566 = call float @dx.op.binary.f32(i32 35, float %5565, float 0.000000e+00)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 36, float %5436, float %5566)  ; FMin(a,b)
  %5568 = call float @dx.op.binary.f32(i32 36, float %5564, float %5567)  ; FMin(a,b)
  %5569 = call float @dx.op.binary.f32(i32 35, float %5564, float %5567)  ; FMax(a,b)
  br label %5570

; <label>:5570                                    ; preds = %5555, %5531
  %5571 = phi float [ %5569, %5555 ], [ -1.000000e+00, %5531 ]
  %5572 = phi float [ %5568, %5555 ], [ -1.000000e+00, %5531 ]
  %5573 = phi i1 [ true, %5555 ], [ false, %5531 ]
  br i1 %5573, label %5574, label %5580

; <label>:5574                                    ; preds = %5570
  %5575 = call float @dx.op.binary.f32(i32 35, float %5519, float %5572)  ; FMax(a,b)
  %5576 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5533
  store float %5575, float* %5576, align 4, !tbaa !115, !noalias !117
  %5577 = call float @dx.op.binary.f32(i32 35, float %5519, float %5571)  ; FMax(a,b)
  %5578 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5533
  store float %5577, float* %5578, align 4, !tbaa !115, !noalias !117
  %5579 = add nsw i32 %5532, 1
  br label %5580

; <label>:5580                                    ; preds = %5574, %5570
  %5581 = phi i32 [ %5579, %5574 ], [ %5532, %5570 ]
  %5582 = add nuw nsw i32 %5533, 1
  %5583 = icmp eq i32 %5582, %5388
  br i1 %5583, label %5584, label %5531

; <label>:5584                                    ; preds = %5580
  %5585 = load float, float* %5525, align 4, !tbaa !115, !alias.scope !133, !noalias !136
  %5586 = load float, float* %5524, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  %5587 = load float, float* %5523, align 4, !tbaa !115, !alias.scope !141, !noalias !142
  %5588 = load float, float* %5528, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %5589 = load float, float* %5527, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  %5590 = load float, float* %5526, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  br label %5591

; <label>:5591                                    ; preds = %5584, %5518
  %5592 = phi float [ -1.000000e+00, %5518 ], [ %5590, %5584 ]
  %5593 = phi float [ -1.000000e+00, %5518 ], [ %5589, %5584 ]
  %5594 = phi float [ -1.000000e+00, %5518 ], [ %5588, %5584 ]
  %5595 = phi float [ -1.000000e+00, %5518 ], [ %5587, %5584 ]
  %5596 = phi float [ -1.000000e+00, %5518 ], [ %5586, %5584 ]
  %5597 = phi float [ -1.000000e+00, %5518 ], [ %5585, %5584 ]
  %5598 = phi i32 [ 0, %5518 ], [ %5581, %5584 ]
  %5599 = call float @dx.op.binary.f32(i32 36, float %5595, float %5596)  ; FMin(a,b)
  %5600 = call float @dx.op.binary.f32(i32 36, float %5599, float %5597)  ; FMin(a,b)
  %5601 = call float @dx.op.binary.f32(i32 35, float %5595, float %5596)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 36, float %5601, float %5597)  ; FMin(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5599, float %5602)  ; FMax(a,b)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5601, float %5597)  ; FMax(a,b)
  store float %5600, float* %5523, align 4, !tbaa !115, !alias.scope !141, !noalias !142
  store float %5603, float* %5524, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  store float %5604, float* %5525, align 4, !tbaa !115, !alias.scope !133, !noalias !136
  %5605 = call float @dx.op.binary.f32(i32 36, float %5592, float %5593)  ; FMin(a,b)
  %5606 = call float @dx.op.binary.f32(i32 36, float %5605, float %5594)  ; FMin(a,b)
  %5607 = call float @dx.op.binary.f32(i32 35, float %5592, float %5593)  ; FMax(a,b)
  %5608 = call float @dx.op.binary.f32(i32 36, float %5607, float %5594)  ; FMin(a,b)
  %5609 = call float @dx.op.binary.f32(i32 35, float %5605, float %5608)  ; FMax(a,b)
  %5610 = call float @dx.op.binary.f32(i32 35, float %5607, float %5594)  ; FMax(a,b)
  store float %5606, float* %5526, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  store float %5609, float* %5527, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  store float %5610, float* %5528, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %5611 = sub nsw i32 3, %5598
  %5612 = icmp sgt i32 %5611, 2
  br i1 %5612, label %5613, label %5651

; <label>:5613                                    ; preds = %5591
  %5614 = icmp eq i32 %5386, 0
  %5615 = fsub fast float %5436, %5520
  %5616 = select i1 %5614, float %5615, float %5520
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.CBufRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.CBufRet.f32 %5621, 2
  %5625 = extractvalue %dx.types.CBufRet.f32 %5621, 3
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 3
  %5628 = call float @dx.op.binary.f32(i32 36, float %5521, float %5627)  ; FMin(a,b)
  %5629 = fmul fast float %5625, %5616
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = fsub fast float %5622, %5618
  %5632 = fsub fast float %5623, %5619
  %5633 = fsub fast float %5624, %5620
  %5634 = fmul fast float %5630, %5631
  %5635 = fmul fast float %5630, %5632
  %5636 = fmul fast float %5630, %5633
  %5637 = fadd fast float %5634, %5618
  %5638 = fadd fast float %5635, %5619
  %5639 = fadd fast float %5636, %5620
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.CBufRet.f32 %5640, 1
  %5643 = fadd fast float %5642, %5641
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5640, 2
  %5646 = extractvalue %dx.types.CBufRet.f32 %5640, 3
  %5647 = fadd fast float %5646, %5645
  %5648 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5649 = fmul fast float %5644, %5628
  %5650 = fmul fast float %5649, %5648
  br label %5733

; <label>:5651                                    ; preds = %5591
  %5652 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5611
  %5653 = load float, float* %5652, align 4, !tbaa !115, !noalias !117
  %5654 = fcmp fast olt float %5653, %5522
  %5655 = icmp sgt i32 %5598, 0
  %5656 = and i1 %5655, %5654
  br i1 %5656, label %5657, label %5694

; <label>:5657                                    ; preds = %5651
  br label %5658

; <label>:5658                                    ; preds = %5687, %5657
  %5659 = phi float [ %5688, %5687 ], [ %5520, %5657 ]
  %5660 = phi float [ %5689, %5687 ], [ %5521, %5657 ]
  %5661 = phi float [ %5669, %5687 ], [ %5653, %5657 ]
  %5662 = phi i32 [ %5666, %5687 ], [ %5611, %5657 ]
  %5663 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5662
  %5664 = load float, float* %5663, align 4, !tbaa !115, !noalias !117
  %5665 = icmp slt i32 %5662, 2
  %5666 = add nsw i32 %5662, 1
  %5667 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5666
  %5668 = load float, float* %5667, align 4, !tbaa !115, !noalias !117
  %5669 = select i1 %5665, float %5668, float %5436
  %5670 = call float @dx.op.binary.f32(i32 36, float %5669, float %5664)  ; FMin(a,b)
  %5671 = call float @dx.op.binary.f32(i32 36, float %5522, float %5670)  ; FMin(a,b)
  %5672 = icmp eq i32 %5386, 0
  %5673 = fadd fast float %5671, %5661
  %5674 = fmul fast float %5673, %5367
  %5675 = fadd fast float %5674, %5380
  br i1 %5672, label %5681, label %5676

; <label>:5676                                    ; preds = %5658
  %5677 = fsub fast float %5671, %5661
  %5678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5677)  ; FMax(a,b)
  %5679 = fmul fast float %5678, %5675
  %5680 = fadd fast float %5679, %5660
  br label %5687

; <label>:5681                                    ; preds = %5658
  %5682 = fsub fast float %5661, %5671
  %5683 = call float @dx.op.unary.f32(i32 6, float %5682)  ; FAbs(value)
  %5684 = fadd fast float %5683, %5659
  %5685 = fmul fast float %5683, %5675
  %5686 = fsub fast float %5660, %5685
  br label %5687

; <label>:5687                                    ; preds = %5681, %5676
  %5688 = phi float [ %5678, %5676 ], [ %5684, %5681 ]
  %5689 = phi float [ %5680, %5676 ], [ %5686, %5681 ]
  %5690 = fcmp fast olt float %5669, %5522
  %5691 = icmp slt i32 %5666, 3
  %5692 = and i1 %5691, %5690
  br i1 %5692, label %5658, label %5693

; <label>:5693                                    ; preds = %5687
  br label %5694

; <label>:5694                                    ; preds = %5693, %5651
  %5695 = phi float [ %5520, %5651 ], [ %5688, %5693 ]
  %5696 = phi float [ %5521, %5651 ], [ %5689, %5693 ]
  %5697 = fsub fast float %5436, %5695
  %5698 = select i1 %5438, float %5695, float %5697
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 0
  %5701 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5702 = extractvalue %dx.types.CBufRet.f32 %5699, 2
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 0
  %5705 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5706 = extractvalue %dx.types.CBufRet.f32 %5703, 2
  %5707 = extractvalue %dx.types.CBufRet.f32 %5703, 3
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 3
  %5710 = call float @dx.op.binary.f32(i32 36, float %5696, float %5709)  ; FMin(a,b)
  %5711 = fmul fast float %5707, %5698
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = fsub fast float %5704, %5700
  %5714 = fsub fast float %5705, %5701
  %5715 = fsub fast float %5706, %5702
  %5716 = fmul fast float %5712, %5713
  %5717 = fmul fast float %5712, %5714
  %5718 = fmul fast float %5712, %5715
  %5719 = fadd fast float %5716, %5700
  %5720 = fadd fast float %5717, %5701
  %5721 = fadd fast float %5718, %5702
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.CBufRet.f32 %5722, 1
  %5725 = fadd fast float %5724, %5723
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5722, 2
  %5728 = extractvalue %dx.types.CBufRet.f32 %5722, 3
  %5729 = fadd fast float %5728, %5727
  %5730 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5731 = fmul fast float %5726, %5710
  %5732 = fmul fast float %5731, %5730
  br label %5733

; <label>:5733                                    ; preds = %5694, %5613, %5452, %5434, %5432
  %5734 = phi float [ %5461, %5452 ], [ %5616, %5613 ], [ %5698, %5694 ], [ 0.000000e+00, %5432 ], [ 0.000000e+00, %5434 ]
  %5735 = phi float [ %5495, %5452 ], [ %5650, %5613 ], [ %5732, %5694 ], [ 0.000000e+00, %5432 ], [ 0.000000e+00, %5434 ]
  %5736 = phi float [ %5482, %5452 ], [ %5637, %5613 ], [ %5719, %5694 ], [ 0.000000e+00, %5432 ], [ 0.000000e+00, %5434 ]
  %5737 = phi float [ %5483, %5452 ], [ %5638, %5613 ], [ %5720, %5694 ], [ 0.000000e+00, %5432 ], [ 0.000000e+00, %5434 ]
  %5738 = phi float [ %5484, %5452 ], [ %5639, %5613 ], [ %5721, %5694 ], [ 0.000000e+00, %5432 ], [ 0.000000e+00, %5434 ]
  %5739 = fmul fast float %5375, %5735
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5742 = fsub fast float %5382, %5741
  %5743 = fcmp fast olt float %5739, -2.000000e+01
  %5744 = call float @dx.op.unary.f32(i32 21, float %5739)  ; Exp(value)
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5750 = fmul fast float %5747, %5742
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = fmul fast float %5367, 5.000000e-01
  %5754 = fadd fast float %5753, 5.000000e-01
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5752)  ; FMax(a,b)
  %5758 = fdiv fast float %5756, %5757
  %5759 = fsub fast float %5742, %5324
  %5760 = call float @dx.op.unary.f32(i32 6, float %5759)  ; FAbs(value)
  %5761 = fmul fast float %5760, %5746
  %5762 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  %5763 = fsub fast float 1.000000e+00, %5761
  %5764 = fmul fast float %5763, %5762
  %5765 = fadd fast float %5764, %5761
  %5766 = fmul fast float %5749, %5742
  %5767 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  %5768 = fsub fast float 1.000000e+00, %5765
  %5769 = fmul fast float %5768, %5767
  %5770 = fadd fast float %5769, %5765
  %5771 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5772 = fadd fast float %5744, -1.000000e+00
  %5773 = select i1 %5743, float -1.000000e+00, float %5772
  %5774 = fmul fast float %5771, %5773
  %5775 = fadd fast float %5774, 1.000000e+00
  %5776 = fsub fast float -0.000000e+00, %5774
  %5777 = fmul fast float %5736, %5776
  %5778 = fmul fast float %5737, %5776
  %5779 = fmul fast float %5738, %5776
  br label %5780

; <label>:5780                                    ; preds = %5733, %5333
  %5781 = phi float [ %5734, %5733 ], [ 0.000000e+00, %5333 ]
  %5782 = phi float [ %5775, %5733 ], [ 1.000000e+00, %5333 ]
  %5783 = phi float [ %5777, %5733 ], [ 0.000000e+00, %5333 ]
  %5784 = phi float [ %5778, %5733 ], [ 0.000000e+00, %5333 ]
  %5785 = phi float [ %5779, %5733 ], [ 0.000000e+00, %5333 ]
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5788 = fsub fast float 1.000000e+00, %5782
  %5789 = fmul fast float %5788, %5368
  %5790 = fmul fast float %5789, %5787
  %5791 = fsub fast float %5368, %5790
  br i1 %5361, label %5792, label %5821, !dx.controlflow.hints !153

; <label>:5792                                    ; preds = %5780
  %5793 = fmul fast float %5369, %5358
  %5794 = fadd fast float %5793, %5359
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = fmul fast float %5340, %5791
  %5797 = fsub fast float -0.000000e+00, %5796
  %5798 = fmul fast float %5341, %5791
  %5799 = fsub fast float -0.000000e+00, %5798
  %5800 = call float @dx.op.unary.f32(i32 21, float %5797)  ; Exp(value)
  %5801 = call float @dx.op.unary.f32(i32 21, float %5799)  ; Exp(value)
  %5802 = call float @dx.op.binary.f32(i32 35, float %5348, float %5800)  ; FMax(a,b)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5348, float %5801)  ; FMax(a,b)
  %5804 = fsub fast float %5803, %5802
  %5805 = fmul fast float %5804, %5795
  %5806 = fadd fast float %5805, %5802
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = fsub fast float %5345, %5350
  %5809 = fsub fast float %5346, %5351
  %5810 = fsub fast float %5347, %5352
  %5811 = fmul fast float %5795, %5808
  %5812 = fmul fast float %5795, %5809
  %5813 = fmul fast float %5795, %5810
  %5814 = fadd fast float %5811, %5350
  %5815 = fadd fast float %5812, %5351
  %5816 = fadd fast float %5813, %5352
  %5817 = fsub fast float 1.000000e+00, %5807
  %5818 = fmul fast float %5817, %5814
  %5819 = fmul fast float %5817, %5815
  %5820 = fmul fast float %5817, %5816
  br label %5880

; <label>:5821                                    ; preds = %5780
  %5822 = fmul fast float %5791, %5357
  %5823 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5824 = fsub fast float 2.000000e+00, %5823
  %5825 = fmul fast float %5823, 9.921875e-01
  %5826 = fmul fast float %5825, %5824
  %5827 = fadd fast float %5826, 3.906250e-03
  %5828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %5827, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5829 = extractvalue %dx.types.ResRet.f32 %5828, 0
  %5830 = fsub fast float %5823, %5829
  %5831 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5830)  ; FMax(a,b)
  %5832 = fmul fast float %5343, %5324
  %5833 = call float @dx.op.unary.f32(i32 6, float %5832)  ; FAbs(value)
  %5834 = fcmp fast ogt float %5833, 0x3EB0C6F7A0000000
  br i1 %5834, label %5835, label %5841, !dx.controlflow.hints !154

; <label>:5835                                    ; preds = %5821
  %5836 = fmul fast float %5832, 0xBFF7154760000000
  %5837 = call float @dx.op.unary.f32(i32 21, float %5836)  ; Exp(value)
  %5838 = fsub fast float 1.000000e+00, %5837
  %5839 = fdiv fast float %5838, %5832
  %5840 = fmul fast float %5839, %5353
  br label %5841

; <label>:5841                                    ; preds = %5835, %5821
  %5842 = phi float [ %5840, %5835 ], [ %5353, %5821 ]
  %5843 = fadd fast float %5842, %5355
  %5844 = fmul fast float %5843, %5831
  %5845 = fmul fast float %5340, %5844
  %5846 = fsub fast float -0.000000e+00, %5845
  %5847 = fmul fast float %5341, %5844
  %5848 = fsub fast float -0.000000e+00, %5847
  %5849 = fmul fast float %5342, %5844
  %5850 = fsub fast float -0.000000e+00, %5849
  %5851 = call float @dx.op.unary.f32(i32 21, float %5846)  ; Exp(value)
  %5852 = call float @dx.op.unary.f32(i32 21, float %5848)  ; Exp(value)
  %5853 = call float @dx.op.unary.f32(i32 21, float %5850)  ; Exp(value)
  %5854 = fmul fast float %5369, %5369
  %5855 = fadd fast float %5854, 1.000000e+00
  %5856 = fmul fast float %5855, 0x3FAE8EC8A0000000
  %5857 = fmul fast float %5856, %5350
  %5858 = fmul fast float %5856, %5351
  %5859 = fmul fast float %5856, %5352
  %5860 = fmul fast float %5369, %5348
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = fmul fast float %5348, %5348
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = fmul fast float %5863, 0x3FB45F3060000000
  %5865 = fmul fast float %5861, %5861
  %5866 = fdiv fast float 1.000000e+00, %5865
  %5867 = fmul fast float %5864, %5866
  %5868 = fmul fast float %5867, %5345
  %5869 = fmul fast float %5867, %5346
  %5870 = fmul fast float %5867, %5347
  %5871 = fadd fast float %5868, %5857
  %5872 = fadd fast float %5869, %5858
  %5873 = fadd fast float %5870, %5859
  %5874 = fsub fast float 1.000000e+00, %5851
  %5875 = fsub fast float 1.000000e+00, %5852
  %5876 = fsub fast float 1.000000e+00, %5853
  %5877 = fmul fast float %5871, %5874
  %5878 = fmul fast float %5872, %5875
  %5879 = fmul fast float %5873, %5876
  br label %5880

; <label>:5880                                    ; preds = %5841, %5792
  %5881 = phi float [ %5818, %5792 ], [ %5877, %5841 ]
  %5882 = phi float [ %5819, %5792 ], [ %5878, %5841 ]
  %5883 = phi float [ %5820, %5792 ], [ %5879, %5841 ]
  %5884 = phi float [ %5807, %5792 ], [ %5851, %5841 ]
  %5885 = phi float [ %5807, %5792 ], [ %5852, %5841 ]
  %5886 = phi float [ %5807, %5792 ], [ %5853, %5841 ]
  br i1 %5377, label %5887, label %6085, !dx.controlflow.hints !155

; <label>:5887                                    ; preds = %5880
  %5888 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5889 = fmul fast float %5888, %5788
  %5890 = fsub fast float %5783, %5881
  %5891 = fsub fast float %5784, %5882
  %5892 = fsub fast float %5785, %5883
  %5893 = fmul fast float %5889, %5890
  %5894 = fmul fast float %5889, %5891
  %5895 = fmul fast float %5889, %5892
  %5896 = fadd fast float %5893, %5881
  %5897 = fadd fast float %5894, %5882
  %5898 = fadd fast float %5895, %5883
  %5899 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5884)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5885)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5886)  ; FMax(a,b)
  %5902 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5782)  ; FMax(a,b)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5781, float %5791)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5903)  ; FMax(a,b)
  %5905 = fdiv fast float %5781, %5904
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = fdiv fast float %5791, %5904
  %5908 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5909 = fcmp fast une float %5902, 1.000000e+00
  br i1 %5909, label %5910, label %5923, !dx.controlflow.hints !156

; <label>:5910                                    ; preds = %5887
  %5911 = call float @dx.op.unary.f32(i32 23, float %5902)  ; Log(value)
  %5912 = fmul fast float %5911, 0x3FE62E4300000000
  %5913 = fmul fast float %5783, %5912
  %5914 = fsub fast float -0.000000e+00, %5913
  %5915 = fmul fast float %5784, %5912
  %5916 = fsub fast float -0.000000e+00, %5915
  %5917 = fmul fast float %5785, %5912
  %5918 = fsub fast float -0.000000e+00, %5917
  %5919 = fsub fast float 1.000000e+00, %5902
  %5920 = fdiv fast float %5914, %5919
  %5921 = fdiv fast float %5916, %5919
  %5922 = fdiv fast float %5918, %5919
  br label %5923

; <label>:5923                                    ; preds = %5910, %5887
  %5924 = phi float [ %5920, %5910 ], [ %5783, %5887 ]
  %5925 = phi float [ %5921, %5910 ], [ %5784, %5887 ]
  %5926 = phi float [ %5922, %5910 ], [ %5785, %5887 ]
  %5927 = phi float [ %5912, %5910 ], [ 0.000000e+00, %5887 ]
  %5928 = fcmp fast une float %5899, 1.000000e+00
  br i1 %5928, label %5929, label %5936, !dx.controlflow.hints !157

; <label>:5929                                    ; preds = %5923
  %5930 = call float @dx.op.unary.f32(i32 23, float %5899)  ; Log(value)
  %5931 = fmul fast float %5930, 0x3FE62E4300000000
  %5932 = fmul fast float %5896, %5931
  %5933 = fsub fast float -0.000000e+00, %5932
  %5934 = fsub fast float 1.000000e+00, %5899
  %5935 = fdiv fast float %5933, %5934
  br label %5936

; <label>:5936                                    ; preds = %5929, %5923
  %5937 = phi float [ %5935, %5929 ], [ %5896, %5923 ]
  %5938 = phi float [ %5931, %5929 ], [ 0.000000e+00, %5923 ]
  %5939 = fcmp fast une float %5900, 1.000000e+00
  br i1 %5939, label %5940, label %5947, !dx.controlflow.hints !157

; <label>:5940                                    ; preds = %5936
  %5941 = call float @dx.op.unary.f32(i32 23, float %5900)  ; Log(value)
  %5942 = fmul fast float %5941, 0x3FE62E4300000000
  %5943 = fmul fast float %5897, %5942
  %5944 = fsub fast float -0.000000e+00, %5943
  %5945 = fsub fast float 1.000000e+00, %5900
  %5946 = fdiv fast float %5944, %5945
  br label %5947

; <label>:5947                                    ; preds = %5940, %5936
  %5948 = phi float [ %5946, %5940 ], [ %5897, %5936 ]
  %5949 = phi float [ %5942, %5940 ], [ 0.000000e+00, %5936 ]
  %5950 = fcmp fast une float %5901, 1.000000e+00
  br i1 %5950, label %5951, label %5958, !dx.controlflow.hints !157

; <label>:5951                                    ; preds = %5947
  %5952 = call float @dx.op.unary.f32(i32 23, float %5901)  ; Log(value)
  %5953 = fmul fast float %5952, 0x3FE62E4300000000
  %5954 = fmul fast float %5898, %5953
  %5955 = fsub fast float -0.000000e+00, %5954
  %5956 = fsub fast float 1.000000e+00, %5901
  %5957 = fdiv fast float %5955, %5956
  br label %5958

; <label>:5958                                    ; preds = %5951, %5947
  %5959 = phi float [ %5957, %5951 ], [ %5898, %5947 ]
  %5960 = phi float [ %5953, %5951 ], [ 0.000000e+00, %5947 ]
  %5961 = fmul fast float %5924, %5908
  %5962 = fmul fast float %5925, %5908
  %5963 = fmul fast float %5926, %5908
  %5964 = fmul fast float %5927, %5908
  %5965 = fmul fast float %5937, %5906
  %5966 = fmul fast float %5948, %5906
  %5967 = fmul fast float %5959, %5906
  %5968 = fmul fast float %5938, %5906
  %5969 = fmul fast float %5949, %5906
  %5970 = fmul fast float %5960, %5906
  %5971 = fadd fast float %5965, %5961
  %5972 = fadd fast float %5966, %5962
  %5973 = fadd fast float %5967, %5963
  %5974 = fadd fast float %5968, %5964
  %5975 = fadd fast float %5969, %5964
  %5976 = fadd fast float %5970, %5964
  %5977 = fcmp fast une float %5974, 0.000000e+00
  br i1 %5977, label %5978, label %5985, !dx.controlflow.hints !158

; <label>:5978                                    ; preds = %5958
  %5979 = fmul fast float %5974, 0x3FF7154760000000
  %5980 = call float @dx.op.unary.f32(i32 21, float %5979)  ; Exp(value)
  %5981 = fsub fast float 1.000000e+00, %5980
  %5982 = fmul fast float %5971, %5981
  %5983 = fsub fast float -0.000000e+00, %5982
  %5984 = fdiv fast float %5983, %5974
  br label %5985

; <label>:5985                                    ; preds = %5978, %5958
  %5986 = phi float [ %5980, %5978 ], [ 1.000000e+00, %5958 ]
  %5987 = phi float [ %5984, %5978 ], [ %5971, %5958 ]
  %5988 = fcmp fast une float %5975, 0.000000e+00
  br i1 %5988, label %5989, label %5996, !dx.controlflow.hints !158

; <label>:5989                                    ; preds = %5985
  %5990 = fmul fast float %5975, 0x3FF7154760000000
  %5991 = call float @dx.op.unary.f32(i32 21, float %5990)  ; Exp(value)
  %5992 = fsub fast float 1.000000e+00, %5991
  %5993 = fmul fast float %5972, %5992
  %5994 = fsub fast float -0.000000e+00, %5993
  %5995 = fdiv fast float %5994, %5975
  br label %5996

; <label>:5996                                    ; preds = %5989, %5985
  %5997 = phi float [ %5991, %5989 ], [ 1.000000e+00, %5985 ]
  %5998 = phi float [ %5995, %5989 ], [ %5972, %5985 ]
  %5999 = fcmp fast une float %5976, 0.000000e+00
  br i1 %5999, label %6000, label %6007, !dx.controlflow.hints !158

; <label>:6000                                    ; preds = %5996
  %6001 = fmul fast float %5976, 0x3FF7154760000000
  %6002 = call float @dx.op.unary.f32(i32 21, float %6001)  ; Exp(value)
  %6003 = fsub fast float 1.000000e+00, %6002
  %6004 = fmul fast float %5973, %6003
  %6005 = fsub fast float -0.000000e+00, %6004
  %6006 = fdiv fast float %6005, %5976
  br label %6007

; <label>:6007                                    ; preds = %6000, %5996
  %6008 = phi float [ %6002, %6000 ], [ 1.000000e+00, %5996 ]
  %6009 = phi float [ %6006, %6000 ], [ %5973, %5996 ]
  %6010 = fcmp fast ogt float %5906, %5908
  br i1 %6010, label %6011, label %6031

; <label>:6011                                    ; preds = %6007
  %6012 = fsub fast float 1.000000e+00, %5908
  %6013 = fmul fast float %5924, %6012
  %6014 = fmul fast float %5925, %6012
  %6015 = fmul fast float %5926, %6012
  %6016 = fmul fast float %5927, %6012
  %6017 = fcmp fast une float %6016, 0.000000e+00
  br i1 %6017, label %6018, label %6069, !dx.controlflow.hints !159

; <label>:6018                                    ; preds = %6011
  %6019 = fmul fast float %6016, 0x3FF7154760000000
  %6020 = call float @dx.op.unary.f32(i32 21, float %6019)  ; Exp(value)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fmul fast float %6013, %6021
  %6023 = fsub fast float -0.000000e+00, %6022
  %6024 = fmul fast float %6014, %6021
  %6025 = fsub fast float -0.000000e+00, %6024
  %6026 = fmul fast float %6015, %6021
  %6027 = fsub fast float -0.000000e+00, %6026
  %6028 = fdiv fast float %6023, %6016
  %6029 = fdiv fast float %6025, %6016
  %6030 = fdiv fast float %6027, %6016
  br label %6069

; <label>:6031                                    ; preds = %6007
  %6032 = fsub fast float 1.000000e+00, %5906
  %6033 = fmul fast float %5937, %6032
  %6034 = fmul fast float %5948, %6032
  %6035 = fmul fast float %5959, %6032
  %6036 = fmul fast float %5938, %6032
  %6037 = fmul fast float %5949, %6032
  %6038 = fmul fast float %5960, %6032
  %6039 = fcmp fast une float %6036, 0.000000e+00
  br i1 %6039, label %6040, label %6047, !dx.controlflow.hints !158

; <label>:6040                                    ; preds = %6031
  %6041 = fmul fast float %6036, 0x3FF7154760000000
  %6042 = call float @dx.op.unary.f32(i32 21, float %6041)  ; Exp(value)
  %6043 = fsub fast float 1.000000e+00, %6042
  %6044 = fmul fast float %6033, %6043
  %6045 = fsub fast float -0.000000e+00, %6044
  %6046 = fdiv fast float %6045, %6036
  br label %6047

; <label>:6047                                    ; preds = %6040, %6031
  %6048 = phi float [ %6046, %6040 ], [ %6033, %6031 ]
  %6049 = phi float [ %6042, %6040 ], [ 1.000000e+00, %6031 ]
  %6050 = fcmp fast une float %6037, 0.000000e+00
  br i1 %6050, label %6051, label %6058, !dx.controlflow.hints !158

; <label>:6051                                    ; preds = %6047
  %6052 = fmul fast float %6037, 0x3FF7154760000000
  %6053 = call float @dx.op.unary.f32(i32 21, float %6052)  ; Exp(value)
  %6054 = fsub fast float 1.000000e+00, %6053
  %6055 = fmul fast float %6034, %6054
  %6056 = fsub fast float -0.000000e+00, %6055
  %6057 = fdiv fast float %6056, %6037
  br label %6058

; <label>:6058                                    ; preds = %6051, %6047
  %6059 = phi float [ %6057, %6051 ], [ %6034, %6047 ]
  %6060 = phi float [ %6053, %6051 ], [ 1.000000e+00, %6047 ]
  %6061 = fcmp fast une float %6038, 0.000000e+00
  br i1 %6061, label %6062, label %6069, !dx.controlflow.hints !158

; <label>:6062                                    ; preds = %6058
  %6063 = fmul fast float %6038, 0x3FF7154760000000
  %6064 = call float @dx.op.unary.f32(i32 21, float %6063)  ; Exp(value)
  %6065 = fsub fast float 1.000000e+00, %6064
  %6066 = fmul fast float %6035, %6065
  %6067 = fsub fast float -0.000000e+00, %6066
  %6068 = fdiv fast float %6067, %6038
  br label %6069

; <label>:6069                                    ; preds = %6062, %6058, %6018, %6011
  %6070 = phi float [ %6068, %6062 ], [ %6030, %6018 ], [ %6015, %6011 ], [ %6035, %6058 ]
  %6071 = phi float [ %6059, %6062 ], [ %6029, %6018 ], [ %6014, %6011 ], [ %6059, %6058 ]
  %6072 = phi float [ %6048, %6062 ], [ %6028, %6018 ], [ %6013, %6011 ], [ %6048, %6058 ]
  %6073 = phi float [ %6064, %6062 ], [ %6020, %6018 ], [ 1.000000e+00, %6011 ], [ 1.000000e+00, %6058 ]
  %6074 = phi float [ %6060, %6062 ], [ %6020, %6018 ], [ 1.000000e+00, %6011 ], [ %6060, %6058 ]
  %6075 = phi float [ %6049, %6062 ], [ %6020, %6018 ], [ 1.000000e+00, %6011 ], [ %6049, %6058 ]
  %6076 = fmul fast float %6075, %5987
  %6077 = fmul fast float %6074, %5998
  %6078 = fmul fast float %6073, %6009
  %6079 = fadd fast float %6076, %6072
  %6080 = fadd fast float %6077, %6071
  %6081 = fadd fast float %6078, %6070
  %6082 = fmul fast float %6075, %5986
  %6083 = fmul fast float %6074, %5997
  %6084 = fmul fast float %6073, %6008
  br label %6085

; <label>:6085                                    ; preds = %6069, %5880
  %6086 = phi float [ %6084, %6069 ], [ %5886, %5880 ]
  %6087 = phi float [ %6083, %6069 ], [ %5885, %5880 ]
  %6088 = phi float [ %6082, %6069 ], [ %5884, %5880 ]
  %6089 = phi float [ %6081, %6069 ], [ %5883, %5880 ]
  %6090 = phi float [ %6080, %6069 ], [ %5882, %5880 ]
  %6091 = phi float [ %6079, %6069 ], [ %5881, %5880 ]
  %6092 = fmul fast float %6091, %5040
  %6093 = fmul fast float %6090, %5040
  %6094 = fmul fast float %6089, %5040
  %6095 = fmul fast float %6088, %5332
  %6096 = call float @dx.op.dot3.f32(i32 55, float %6088, float %6087, float %6086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = call float @dx.op.dot3.f32(i32 55, float %6092, float %6093, float %6094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6098 = select i1 %195, float %6096, float %6088
  %6099 = select i1 %195, float %6096, float %6087
  %6100 = select i1 %195, float 1.000000e+00, float %6086
  %6101 = select i1 %195, float %6097, float %6092
  %6102 = select i1 %195, float 0.000000e+00, float %6093
  %6103 = select i1 %195, float 0.000000e+00, float %6094
  %6104 = fmul fast float %6098, %5326
  %6105 = fmul fast float %6099, %5327
  %6106 = fmul fast float %6100, %5328
  %6107 = fadd fast float %6104, %6101
  %6108 = fadd fast float %6105, %6102
  %6109 = fadd fast float %6103, %6106
  %6110 = fmul fast float %6098, %5329
  %6111 = fmul fast float %6099, %5330
  %6112 = fmul fast float %6100, %5331
  %6113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.i32 %6113, 0
  %6115 = icmp eq i32 %6114, 0
  br i1 %6115, label %6483, label %6116, !dx.controlflow.hints !160

; <label>:6116                                    ; preds = %6085
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 3
  %6120 = fmul fast float %6118, %85
  %6121 = fmul fast float %6119, %86
  %6122 = fmul fast float %6120, 2.000000e+00
  %6123 = fmul fast float %6121, 2.000000e+00
  %6124 = fsub fast float 1.000000e+00, %6122
  %6125 = fsub fast float 1.000000e+00, %6123
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.CBufRet.f32 %6126, 2
  %6130 = fmul fast float %6124, %6127
  %6131 = fmul fast float %6124, %6128
  %6132 = fmul fast float %6124, %6129
  %6133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.f32 %6133, 0
  %6135 = extractvalue %dx.types.CBufRet.f32 %6133, 1
  %6136 = extractvalue %dx.types.CBufRet.f32 %6133, 2
  %6137 = fmul fast float %6125, %6134
  %6138 = fmul fast float %6125, %6135
  %6139 = fmul fast float %6125, %6136
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6144 = fadd fast float %6137, %6141
  %6145 = fadd fast float %6144, %6130
  %6146 = fadd fast float %6138, %6142
  %6147 = fadd fast float %6146, %6131
  %6148 = fadd fast float %6139, %6143
  %6149 = fadd fast float %6148, %6132
  %6150 = fmul fast float %6145, %5325
  %6151 = fmul fast float %6147, %5325
  %6152 = fmul fast float %6149, %5325
  %6153 = fmul fast float %6150, %6150
  %6154 = fmul fast float %6151, %6151
  %6155 = fadd fast float %6153, %6154
  %6156 = fmul fast float %6152, %6152
  %6157 = fadd fast float %6155, %6156
  %6158 = call float @dx.op.unary.f32(i32 24, float %6157)  ; Sqrt(value)
  %6159 = extractvalue %dx.types.CBufRet.f32 %5051, 0
  %6160 = fsub fast float %6158, %6159
  %6161 = extractvalue %dx.types.CBufRet.f32 %5051, 2
  %6162 = fmul fast float %6160, %6161
  %6163 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6164 = fadd fast float %6163, -5.000000e-01
  %6165 = fmul fast float %6164, 2.000000e+00
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6168 = call float @dx.op.binary.f32(i32 36, float %6167, float %6165)  ; FMin(a,b)
  %6169 = fsub fast float -0.000000e+00, %6167
  %6170 = fcmp fast ogt float %6168, %6169
  br i1 %6170, label %6171, label %6483, !dx.controlflow.hints !161

; <label>:6171                                    ; preds = %6116
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 3
  %6174 = fcmp fast ogt float %6173, 0.000000e+00
  br i1 %6174, label %6175, label %6250, !dx.controlflow.hints !162

; <label>:6175                                    ; preds = %6171
  %6176 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6177 = extractvalue %dx.types.Dimensions %6176, 0
  %6178 = sitofp i32 %6177 to float
  %6179 = extractvalue %dx.types.Dimensions %6176, 1
  %6180 = sitofp i32 %6179 to float
  %6181 = fmul fast float %6120, %6178
  %6182 = fmul fast float %6121, %6180
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6185 = fsub fast float -0.000000e+00, %6184
  %6186 = fptoui float %6185 to i32
  %6187 = fptoui float %6181 to i32
  %6188 = fptoui float %6182 to i32
  %6189 = and i32 %6186, 31
  %6190 = lshr i32 %6187, %6189
  %6191 = lshr i32 %6188, %6189
  %6192 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6186, i32 %6190, i32 %6191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6193 = extractvalue %dx.types.ResRet.f32 %6192, 0
  %6194 = fcmp fast olt float %6193, -1.000000e+00
  %6195 = fcmp fast ogt float %6193, -1.000000e+00
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6198 = select i1 %6195, float %6197, float 1.000000e+00
  %6199 = fadd fast float %6193, 1.000000e+00
  %6200 = fmul fast float %6198, %6199
  %6201 = call float @dx.op.unary.f32(i32 6, float %6200)  ; FAbs(value)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6203 = fcmp fast oge float %6201, %6202
  %6204 = select i1 %6203, float 0x4197782600000000, float %6201
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6209 = select i1 %6194, float %6206, float %6127
  %6210 = select i1 %6194, float %6207, float %6128
  %6211 = select i1 %6194, float %6208, float %6129
  %6212 = fmul fast float %6209, %6124
  %6213 = fmul fast float %6210, %6124
  %6214 = fmul fast float %6211, %6124
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6219 = select i1 %6194, float %6216, float %6134
  %6220 = select i1 %6194, float %6217, float %6135
  %6221 = select i1 %6194, float %6218, float %6136
  %6222 = fmul fast float %6219, %6125
  %6223 = fmul fast float %6220, %6125
  %6224 = fmul fast float %6221, %6125
  %6225 = fadd fast float %6222, %6212
  %6226 = fadd fast float %6223, %6213
  %6227 = fadd fast float %6224, %6214
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = select i1 %6194, float %6229, float %6141
  %6233 = select i1 %6194, float %6230, float %6142
  %6234 = select i1 %6194, float %6231, float %6143
  %6235 = fadd fast float %6225, %6232
  %6236 = fadd fast float %6226, %6233
  %6237 = fadd fast float %6227, %6234
  %6238 = fmul fast float %6235, %6204
  %6239 = fmul fast float %6236, %6204
  %6240 = fmul fast float %6237, %6204
  %6241 = fmul fast float %6238, %6238
  %6242 = fmul fast float %6239, %6239
  %6243 = fadd fast float %6241, %6242
  %6244 = fmul fast float %6240, %6240
  %6245 = fadd fast float %6243, %6244
  %6246 = call float @dx.op.unary.f32(i32 24, float %6245)  ; Sqrt(value)
  %6247 = fsub fast float %6246, %6159
  %6248 = fmul fast float %6247, %6161
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  br label %6250

; <label>:6250                                    ; preds = %6175, %6171
  %6251 = phi float [ %6249, %6175 ], [ 1.000000e+00, %6171 ]
  %6252 = fmul fast float %6168, 5.000000e-01
  %6253 = fadd fast float %6252, 5.000000e-01
  %6254 = call float @dx.op.unary.f32(i32 22, float %6253)  ; Frc(value)
  %6255 = call float @dx.op.unary.f32(i32 27, float %6254)  ; Round_ni(value)
  %6256 = call float @dx.op.unary.f32(i32 22, float %6254)  ; Frc(value)
  %6257 = fmul fast float %6256, 2.000000e+00
  %6258 = fadd fast float %6257, -1.000000e+00
  %6259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %6120, float %6121, float %6255, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.ResRet.f32 %6259, 3
  %6264 = fadd fast float %6260, -5.000000e-01
  %6265 = fadd fast float %6262, -5.000000e-01
  %6266 = fmul fast float %6264, 0xBFD5555560000000
  %6267 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6265, float %6266)  ; FMad(a,b,c)
  %6268 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6261, float 0.000000e+00)  ; FMad(a,b,c)
  %6269 = fadd fast float %6268, %6263
  %6270 = fmul fast float %6264, -7.500000e-01
  %6271 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6265, float %6270)  ; FMad(a,b,c)
  %6272 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6261, float 0.000000e+00)  ; FMad(a,b,c)
  %6273 = fadd fast float %6272, %6263
  %6274 = call float @dx.op.binary.f32(i32 35, float %6267, float -1.000000e+00)  ; FMax(a,b)
  %6275 = call float @dx.op.binary.f32(i32 35, float %6269, float -1.000000e+00)  ; FMax(a,b)
  %6276 = call float @dx.op.binary.f32(i32 35, float %6271, float -1.000000e+00)  ; FMax(a,b)
  %6277 = call float @dx.op.binary.f32(i32 35, float %6273, float -1.000000e+00)  ; FMax(a,b)
  %6278 = call float @dx.op.binary.f32(i32 36, float %6274, float 1.000000e+00)  ; FMin(a,b)
  %6279 = call float @dx.op.binary.f32(i32 36, float %6275, float 1.000000e+00)  ; FMin(a,b)
  %6280 = call float @dx.op.binary.f32(i32 36, float %6276, float 1.000000e+00)  ; FMin(a,b)
  %6281 = call float @dx.op.binary.f32(i32 36, float %6277, float 1.000000e+00)  ; FMin(a,b)
  %6282 = fcmp fast olt float %6278, 0x3FEFFF8020000000
  br i1 %6282, label %6283, label %6398, !dx.controlflow.hints !163

; <label>:6283                                    ; preds = %6250
  %6284 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6289 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6290 = fsub fast float %6286, %6278
  %6291 = fsub fast float %6287, %6279
  %6292 = fsub fast float %6288, %6280
  %6293 = fsub fast float %6289, %6281
  %6294 = fmul fast float %6290, %6284
  %6295 = fmul fast float %6291, %6284
  %6296 = fmul fast float %6292, %6284
  %6297 = fmul fast float %6293, %6284
  %6298 = fadd fast float %6294, %6278
  %6299 = fadd fast float %6295, %6279
  %6300 = fsub fast float -0.000000e+00, %6299
  %6301 = fadd fast float %6296, %6280
  %6302 = fadd fast float %6297, %6281
  %6303 = fmul fast float %6298, %6298
  %6304 = fsub fast float %6299, %6303
  %6305 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6304)  ; FMax(a,b)
  %6306 = fdiv fast float 1.000000e+00, %6305
  %6307 = fmul fast float %6299, %6298
  %6308 = fsub fast float %6301, %6307
  %6309 = fsub fast float %6258, %6298
  %6310 = fmul fast float %6258, %6258
  %6311 = fsub fast float %6310, %6299
  %6312 = fmul fast float %6309, %6306
  %6313 = fmul fast float %6312, %6308
  %6314 = fsub fast float %6311, %6313
  %6315 = fmul fast float %6299, %6299
  %6316 = fsub fast float %6302, %6315
  %6317 = fmul fast float %6308, %6308
  %6318 = fmul fast float %6317, %6306
  %6319 = fsub fast float %6316, %6318
  %6320 = fdiv fast float %6314, %6319
  %6321 = fmul fast float %6308, %6320
  %6322 = fsub fast float %6309, %6321
  %6323 = fmul fast float %6322, %6306
  %6324 = fmul fast float %6323, %6298
  %6325 = fsub fast float 1.000000e+00, %6324
  %6326 = fmul fast float %6299, %6320
  %6327 = fsub fast float %6325, %6326
  %6328 = fmul fast float %6323, %6323
  %6329 = fmul fast float %6320, 4.000000e+00
  %6330 = fmul fast float %6329, %6327
  %6331 = fsub fast float %6328, %6330
  %6332 = call float @dx.op.unary.f32(i32 24, float %6331)  ; Sqrt(value)
  %6333 = fcmp fast oge float %6323, 0.000000e+00
  %6334 = fsub fast float -0.000000e+00, %6332
  %6335 = select i1 %6333, float %6334, float %6332
  %6336 = fsub fast float %6335, %6323
  %6337 = fdiv fast float %6336, %6320
  %6338 = fdiv fast float %6327, %6336
  %6339 = fmul fast float %6337, 5.000000e-01
  %6340 = fmul fast float %6338, 2.000000e+00
  %6341 = select i1 %6333, float %6339, float %6340
  %6342 = select i1 %6333, float %6340, float %6339
  %6343 = call float @dx.op.binary.f32(i32 35, float %6341, float %6342)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 36, float %6341, float %6342)  ; FMin(a,b)
  %6345 = fcmp fast ogt float %6258, %6344
  br i1 %6345, label %6346, label %6356

; <label>:6346                                    ; preds = %6283
  %6347 = fsub fast float %6258, %6344
  %6348 = fsub fast float %6343, %6344
  %6349 = fmul fast float %6347, %6348
  %6350 = fmul fast float %6343, %6258
  %6351 = fadd fast float %6343, %6258
  %6352 = fmul fast float %6351, %6298
  %6353 = fadd fast float %6350, %6299
  %6354 = fsub fast float %6353, %6352
  %6355 = fdiv fast float %6354, %6349
  br label %6356

; <label>:6356                                    ; preds = %6346, %6283
  %6357 = phi float [ %6355, %6346 ], [ 0.000000e+00, %6283 ]
  %6358 = fcmp fast ogt float %6258, %6343
  %6359 = fsub fast float %6258, %6343
  br i1 %6358, label %6360, label %6370

; <label>:6360                                    ; preds = %6356
  %6361 = fsub fast float %6343, %6344
  %6362 = fmul fast float %6361, %6359
  %6363 = fmul fast float %6344, %6258
  %6364 = fadd fast float %6344, %6258
  %6365 = fmul fast float %6364, %6298
  %6366 = fsub fast float %6300, %6363
  %6367 = fadd fast float %6366, %6365
  %6368 = fdiv fast float %6367, %6362
  %6369 = fadd fast float %6368, %6357
  br label %6370

; <label>:6370                                    ; preds = %6360, %6356
  %6371 = phi float [ %6369, %6360 ], [ %6357, %6356 ]
  %6372 = fsub fast float %6258, %6344
  %6373 = fmul fast float %6372, %6359
  %6374 = fmul fast float %6344, %6343
  %6375 = fadd fast float %6344, %6343
  %6376 = fmul fast float %6375, %6298
  %6377 = fadd fast float %6374, %6299
  %6378 = fsub fast float %6377, %6376
  %6379 = fdiv fast float %6378, %6373
  %6380 = call float @dx.op.unary.f32(i32 7, float %6371)  ; Saturate(value)
  %6381 = fcmp fast oeq float %5052, 0.000000e+00
  %6382 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6383 = fcmp fast oeq float %6382, 0.000000e+00
  %6384 = or i1 %6381, %6383
  %6385 = fmul fast float %6382, 2.000000e+00
  %6386 = fadd fast float %6167, %6168
  %6387 = fdiv fast float %6386, %6385
  %6388 = call float @dx.op.unary.f32(i32 7, float %6387)  ; Saturate(value)
  %6389 = fmul fast float %6388, 2.000000e+00
  %6390 = fsub fast float 3.000000e+00, %6389
  %6391 = fmul fast float %6388, %6388
  %6392 = fmul fast float %6391, %6390
  %6393 = select i1 %6384, float 1.000000e+00, float %6392
  %6394 = fmul fast float %6379, %5052
  %6395 = fadd fast float %6380, %6394
  %6396 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  %6397 = fmul fast float %6393, %6396
  br label %6398

; <label>:6398                                    ; preds = %6370, %6250
  %6399 = phi float [ %6397, %6370 ], [ 0.000000e+00, %6250 ]
  %6400 = fsub fast float 1.000000e+00, %6399
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %6120, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.i32 %6403, 2
  %6405 = icmp eq i32 %6404, 0
  br i1 %6405, label %6411, label %6406

; <label>:6406                                    ; preds = %6398
  %6407 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6408 = fadd fast float %6402, -1.000000e+00
  %6409 = fmul fast float %6407, %6408
  %6410 = fadd fast float %6409, 1.000000e+00
  br label %6411

; <label>:6411                                    ; preds = %6406, %6398
  %6412 = phi float [ %6410, %6406 ], [ %6400, %6398 ]
  br i1 %6174, label %6413, label %6431

; <label>:6413                                    ; preds = %6411
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 1
  %6416 = fsub fast float %6251, %6415
  %6417 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  %6418 = fsub fast float %6251, %6173
  %6419 = call float @dx.op.unary.f32(i32 7, float %6418)  ; Saturate(value)
  %6420 = fsub fast float %6417, %6419
  %6421 = fsub fast float %6253, %6419
  %6422 = fdiv fast float %6421, %6420
  %6423 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6424 = fmul fast float %6423, 2.000000e+00
  %6425 = fsub fast float 3.000000e+00, %6424
  %6426 = fsub fast float %6402, %6412
  %6427 = fmul fast float %6423, %6423
  %6428 = fmul fast float %6427, %6426
  %6429 = fmul fast float %6428, %6425
  %6430 = fadd fast float %6429, %6412
  br label %6431

; <label>:6431                                    ; preds = %6413, %6411
  %6432 = phi float [ %6430, %6413 ], [ %6412, %6411 ]
  %6433 = call float @dx.op.binary.f32(i32 35, float %6402, float %6432)  ; FMax(a,b)
  %6434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.i32 %6434, 2
  %6436 = and i32 %6435, 1
  %6437 = icmp eq i32 %6436, 0
  %6438 = fcmp fast une float %6433, 1.000000e+00
  %6439 = and i1 %6438, %6437
  br i1 %6439, label %6440, label %6459

; <label>:6440                                    ; preds = %6431
  %6441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %6120, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = extractvalue %dx.types.ResRet.f32 %6441, 1
  %6444 = extractvalue %dx.types.ResRet.f32 %6441, 2
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6447 = fmul fast float %6446, %6442
  %6448 = fmul fast float %6446, %6443
  %6449 = fmul fast float %6446, %6444
  %6450 = fcmp fast ogt float %6402, 0x3FEFFF2E40000000
  %6451 = fsub fast float 1.000000e+00, %6433
  %6452 = fsub fast float 1.000000e+00, %6402
  %6453 = fdiv fast float %6451, %6452
  %6454 = call float @dx.op.unary.f32(i32 7, float %6453)  ; Saturate(value)
  %6455 = select i1 %6450, float 0.000000e+00, float %6454
  %6456 = fmul fast float %6447, %6455
  %6457 = fmul fast float %6448, %6455
  %6458 = fmul fast float %6449, %6455
  br label %6459

; <label>:6459                                    ; preds = %6440, %6431
  %6460 = phi float [ 0.000000e+00, %6431 ], [ %6456, %6440 ]
  %6461 = phi float [ 0.000000e+00, %6431 ], [ %6457, %6440 ]
  %6462 = phi float [ 0.000000e+00, %6431 ], [ %6458, %6440 ]
  %6463 = fmul fast float %6460, %5040
  %6464 = fmul fast float %6461, %5040
  %6465 = fmul fast float %6462, %5040
  %6466 = fmul fast float %6433, %6095
  %6467 = call float @dx.op.dot3.f32(i32 55, float %6433, float %6433, float %6433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = select i1 %195, float %6467, float %6433
  %6470 = select i1 %195, float 1.000000e+00, float %6433
  %6471 = select i1 %195, float %6468, float %6463
  %6472 = select i1 %195, float 0.000000e+00, float %6464
  %6473 = select i1 %195, float 0.000000e+00, float %6465
  %6474 = fmul fast float %6469, %6107
  %6475 = fmul fast float %6469, %6108
  %6476 = fmul fast float %6470, %6109
  %6477 = fadd fast float %6474, %6471
  %6478 = fadd fast float %6475, %6472
  %6479 = fadd fast float %6473, %6476
  %6480 = fmul fast float %6469, %6110
  %6481 = fmul fast float %6469, %6111
  %6482 = fmul fast float %6470, %6112
  br label %6483

; <label>:6483                                    ; preds = %6459, %6116, %6085, %5321
  %6484 = phi float [ %5326, %5321 ], [ %6107, %6085 ], [ %6477, %6459 ], [ %6107, %6116 ]
  %6485 = phi float [ %5327, %5321 ], [ %6108, %6085 ], [ %6478, %6459 ], [ %6108, %6116 ]
  %6486 = phi float [ %5328, %5321 ], [ %6109, %6085 ], [ %6479, %6459 ], [ %6109, %6116 ]
  %6487 = phi float [ %5329, %5321 ], [ %6110, %6085 ], [ %6480, %6459 ], [ %6110, %6116 ]
  %6488 = phi float [ %5330, %5321 ], [ %6111, %6085 ], [ %6481, %6459 ], [ %6111, %6116 ]
  %6489 = phi float [ %5331, %5321 ], [ %6112, %6085 ], [ %6482, %6459 ], [ %6112, %6116 ]
  %6490 = phi float [ %5332, %5321 ], [ %6095, %6085 ], [ %6466, %6459 ], [ %6095, %6116 ]
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 3
  %6494 = fmul fast float %6492, %85
  %6495 = fmul fast float %6493, %86
  %6496 = call float @dx.op.unary.f32(i32 7, float %6494)  ; Saturate(value)
  %6497 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6498 = select i1 %5062, i32 2, i32 0
  %6499 = or i32 %6498, 1
  %6500 = uitofp i32 %6499 to float
  %6501 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6496, float %6497, float %6500, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.ResRet.f32 %6501, 1
  %6504 = extractvalue %dx.types.ResRet.f32 %6501, 2
  %6505 = extractvalue %dx.types.ResRet.f32 %6501, 3
  %6506 = add nuw nsw i32 %6498, 2
  %6507 = uitofp i32 %6506 to float
  %6508 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6496, float %6497, float %6507, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = extractvalue %dx.types.ResRet.f32 %6508, 1
  %6511 = extractvalue %dx.types.ResRet.f32 %6508, 2
  %6512 = extractvalue %dx.types.ResRet.f32 %6508, 3
  %6513 = call float @dx.op.binary.f32(i32 35, float %6503, float %6504)  ; FMax(a,b)
  %6514 = call float @dx.op.binary.f32(i32 35, float %6502, float %6513)  ; FMax(a,b)
  %6515 = call float @dx.op.binary.f32(i32 35, float %6514, float %6505)  ; FMax(a,b)
  %6516 = call float @dx.op.binary.f32(i32 36, float %6510, float %6511)  ; FMin(a,b)
  %6517 = call float @dx.op.binary.f32(i32 36, float %6509, float %6516)  ; FMin(a,b)
  %6518 = call float @dx.op.binary.f32(i32 36, float %6517, float %6512)  ; FMin(a,b)
  %6519 = fmul fast float %6515, 2.550000e+02
  %6520 = fadd fast float %6519, 0x3F70101020000000
  %6521 = fptoui float %6520 to i32
  %6522 = fmul fast float %6518, 2.550000e+02
  %6523 = fadd fast float %6522, 0x3F70101020000000
  %6524 = fptoui float %6523 to i32
  %6525 = icmp ult i32 %6521, %6524
  br i1 %6525, label %6526, label %6694

; <label>:6526                                    ; preds = %6483
  %6527 = fadd fast float %5325, -4.000000e+00
  %6528 = select i1 %2171, float -4.000000e+00, float %6527
  %6529 = call float @dx.op.binary.f32(i32 35, float %6528, float 0.000000e+00)  ; FMax(a,b)
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = fadd fast float %6531, %6529
  %6533 = extractvalue %dx.types.CBufRet.f32 %6530, 2
  %6534 = fmul fast float %6532, %6533
  %6535 = call float @dx.op.unary.f32(i32 23, float %6534)  ; Log(value)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6530, 3
  %6537 = fmul fast float %6536, %6535
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 2
  %6540 = fmul fast float %6537, %6539
  %6541 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6542 = uitofp i32 %6521 to float
  %6543 = uitofp i32 %6524 to float
  %6544 = fadd fast float %6542, 5.000000e-01
  %6545 = fadd fast float %6543, 5.000000e-01
  %6546 = fmul fast float %6539, %6544
  %6547 = fmul fast float %6539, %6545
  %6548 = fadd fast float %6546, 0x3F0FFB4800000000
  %6549 = fadd fast float %6547, 0xBF0FFB4800000000
  %6550 = call float @dx.op.binary.f32(i32 35, float %6541, float %6548)  ; FMax(a,b)
  %6551 = call float @dx.op.binary.f32(i32 36, float %6550, float %6549)  ; FMin(a,b)
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6556 = select i1 %5062, float %6555, float 0.000000e+00
  %6557 = fmul fast float %6553, %6551
  %6558 = fadd fast float %6556, %6557
  %6559 = fadd fast float %6556, %6554
  %6560 = fsub fast float %6553, %6554
  %6561 = fadd fast float %6560, %6556
  %6562 = call float @dx.op.binary.f32(i32 35, float %6558, float %6559)  ; FMax(a,b)
  %6563 = call float @dx.op.binary.f32(i32 36, float %6562, float %6561)  ; FMin(a,b)
  %6564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %6496, float %6497, float %6563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6565 = extractvalue %dx.types.ResRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.ResRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.ResRet.f32 %6564, 2
  %6568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.i32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.i32 %6568, 1
  %6571 = uitofp i32 %6569 to float
  %6572 = uitofp i32 %6570 to float
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = fmul fast float %6571, %6496
  %6577 = fmul fast float %6572, %6497
  %6578 = fadd fast float %6576, -5.000000e-01
  %6579 = fadd fast float %6577, -5.000000e-01
  %6580 = call float @dx.op.unary.f32(i32 22, float %6578)  ; Frc(value)
  %6581 = call float @dx.op.unary.f32(i32 22, float %6579)  ; Frc(value)
  %6582 = fmul fast float %6580, %6580
  %6583 = fmul fast float %6582, %6580
  %6584 = fsub fast float 3.000000e+00, %6580
  %6585 = fmul fast float %6582, %6584
  %6586 = fmul fast float %6580, 3.000000e+00
  %6587 = fmul fast float %6583, 3.000000e+00
  %6588 = fmul fast float %6582, 6.000000e+00
  %6589 = fsub fast float %6587, %6588
  %6590 = fadd fast float %6589, 4.000000e+00
  %6591 = fmul fast float %6590, 0x3FC5555560000000
  %6592 = fmul fast float %6583, -3.000000e+00
  %6593 = fadd fast float %6582, %6580
  %6594 = fmul fast float %6593, 3.000000e+00
  %6595 = fadd fast float %6592, 1.000000e+00
  %6596 = fadd fast float %6595, %6594
  %6597 = fmul fast float %6583, 0x3FC5555560000000
  %6598 = fmul fast float %6581, %6581
  %6599 = fmul fast float %6598, %6581
  %6600 = fsub fast float 3.000000e+00, %6581
  %6601 = fmul fast float %6598, %6600
  %6602 = fmul fast float %6581, 3.000000e+00
  %6603 = fmul fast float %6599, 3.000000e+00
  %6604 = fmul fast float %6598, 6.000000e+00
  %6605 = fsub fast float %6603, %6604
  %6606 = fadd fast float %6605, 4.000000e+00
  %6607 = fmul fast float %6606, 0x3FC5555560000000
  %6608 = fmul fast float %6599, -3.000000e+00
  %6609 = fadd fast float %6598, %6581
  %6610 = fmul fast float %6609, 3.000000e+00
  %6611 = fadd fast float %6608, 1.000000e+00
  %6612 = fadd fast float %6611, %6610
  %6613 = fmul fast float %6599, 0x3FC5555560000000
  %6614 = fadd fast float %6580, 1.000000e+00
  %6615 = fsub fast float 1.000000e+00, %6586
  %6616 = fadd fast float %6615, %6585
  %6617 = fadd fast float %6616, %6590
  %6618 = fmul fast float %6617, 0x3FC5555560000000
  %6619 = fdiv fast float %6591, %6618
  %6620 = fsub fast float %6614, %6619
  %6621 = fsub fast float 1.000000e+00, %6580
  %6622 = fadd fast float %6596, %6583
  %6623 = fmul fast float %6622, 0x3FC5555560000000
  %6624 = fdiv fast float %6597, %6623
  %6625 = fadd fast float %6621, %6624
  %6626 = fadd fast float %6581, 1.000000e+00
  %6627 = fsub fast float 1.000000e+00, %6602
  %6628 = fadd fast float %6627, %6601
  %6629 = fadd fast float %6628, %6606
  %6630 = fmul fast float %6629, 0x3FC5555560000000
  %6631 = fdiv fast float %6607, %6630
  %6632 = fsub fast float %6626, %6631
  %6633 = fsub fast float 1.000000e+00, %6581
  %6634 = fadd fast float %6612, %6599
  %6635 = fmul fast float %6634, 0x3FC5555560000000
  %6636 = fdiv fast float %6613, %6635
  %6637 = fadd fast float %6636, %6633
  %6638 = fmul fast float %6620, %6574
  %6639 = fsub fast float %6496, %6638
  %6640 = fmul fast float %6625, %6574
  %6641 = fadd fast float %6640, %6496
  %6642 = fmul fast float %6637, %6575
  %6643 = fadd fast float %6642, %6497
  %6644 = fmul fast float %6632, %6575
  %6645 = fsub fast float %6497, %6644
  %6646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6639, float %6645, float %6563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6647 = extractvalue %dx.types.ResRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.ResRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.ResRet.f32 %6646, 2
  %6650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6641, float %6645, float %6563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6651 = extractvalue %dx.types.ResRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.ResRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.ResRet.f32 %6650, 2
  %6654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6639, float %6643, float %6563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.ResRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.ResRet.f32 %6654, 2
  %6658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6641, float %6643, float %6563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6659 = extractvalue %dx.types.ResRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.ResRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.ResRet.f32 %6658, 2
  %6662 = fsub fast float %6655, %6647
  %6663 = fsub fast float %6656, %6648
  %6664 = fsub fast float %6657, %6649
  %6665 = fmul fast float %6662, %6635
  %6666 = fmul fast float %6663, %6635
  %6667 = fmul fast float %6664, %6635
  %6668 = fadd fast float %6665, %6647
  %6669 = fadd fast float %6666, %6648
  %6670 = fadd fast float %6667, %6649
  %6671 = fsub fast float %6659, %6651
  %6672 = fsub fast float %6660, %6652
  %6673 = fsub fast float %6661, %6653
  %6674 = fmul fast float %6671, %6635
  %6675 = fmul fast float %6672, %6635
  %6676 = fmul fast float %6673, %6635
  %6677 = fsub fast float %6651, %6668
  %6678 = fadd fast float %6677, %6674
  %6679 = fsub fast float %6652, %6669
  %6680 = fadd fast float %6679, %6675
  %6681 = fsub fast float %6653, %6670
  %6682 = fadd fast float %6681, %6676
  %6683 = fmul fast float %6678, %6623
  %6684 = fmul fast float %6680, %6623
  %6685 = fmul fast float %6682, %6623
  %6686 = fadd fast float %6683, %6668
  %6687 = fadd fast float %6684, %6669
  %6688 = fadd fast float %6685, %6670
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6691 = fmul fast float %6686, %6690
  %6692 = fmul fast float %6687, %6690
  %6693 = fmul fast float %6688, %6690
  br label %6694

; <label>:6694                                    ; preds = %6526, %6483
  %6695 = phi float [ %6565, %6526 ], [ 1.000000e+00, %6483 ]
  %6696 = phi float [ %6566, %6526 ], [ 1.000000e+00, %6483 ]
  %6697 = phi float [ %6567, %6526 ], [ 1.000000e+00, %6483 ]
  %6698 = phi float [ %6691, %6526 ], [ 0.000000e+00, %6483 ]
  %6699 = phi float [ %6692, %6526 ], [ 0.000000e+00, %6483 ]
  %6700 = phi float [ %6693, %6526 ], [ 0.000000e+00, %6483 ]
  %6701 = fmul fast float %6698, %5040
  %6702 = fmul fast float %6699, %5040
  %6703 = fmul fast float %6700, %5040
  %6704 = fmul fast float %6695, %6490
  %6705 = call float @dx.op.dot3.f32(i32 55, float %6695, float %6696, float %6697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6706 = call float @dx.op.dot3.f32(i32 55, float %6701, float %6702, float %6703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6707 = select i1 %195, float %6705, float %6695
  %6708 = select i1 %195, float %6705, float %6696
  %6709 = select i1 %195, float 1.000000e+00, float %6697
  %6710 = select i1 %195, float %6706, float %6701
  %6711 = select i1 %195, float 0.000000e+00, float %6702
  %6712 = select i1 %195, float 0.000000e+00, float %6703
  %6713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.i32 %6713, 3
  %6715 = and i32 %6714, 3
  %6716 = icmp ne i32 %6715, 0
  %6717 = and i32 %6714, 4
  %6718 = icmp ne i32 %6717, 0
  %6719 = and i1 %6716, %6718
  %6720 = and i1 %195, %6719
  br i1 %6720, label %6721, label %6727

; <label>:6721                                    ; preds = %6694
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6724 = fadd fast float %6704, -1.000000e+00
  %6725 = fmul fast float %6723, %6724
  %6726 = fadd fast float %6725, 1.000000e+00
  br label %6727

; <label>:6727                                    ; preds = %6721, %6694
  %6728 = phi float [ %6726, %6721 ], [ %6704, %6694 ]
  %6729 = fadd fast float %6487, %6484
  %6730 = fmul fast float %6707, %6729
  %6731 = fadd fast float %6730, %6710
  %6732 = fadd fast float %6488, %6485
  %6733 = fmul fast float %6708, %6732
  %6734 = fadd fast float %6733, %6711
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  br i1 %195, label %6737, label %6760

; <label>:6737                                    ; preds = %6727
  %6738 = fadd fast float %6731, %6734
  %6739 = fmul fast float %6736, %6738
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 3
  %6742 = extractvalue %dx.types.CBufRet.f32 %5044, 1
  %6743 = fsub fast float %5049, %5043
  %6744 = fadd fast float %6743, %5050
  %6745 = fsub fast float %6744, %6742
  %6746 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %6747 = fmul fast float %6745, %6746
  %6748 = call float @dx.op.unary.f32(i32 7, float %6747)  ; Saturate(value)
  %6749 = fsub fast float %6748, %6741
  %6750 = fmul fast float %6749, %6728
  %6751 = fadd fast float %6750, %6741
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = fsub fast float %6751, %6753
  %6755 = fmul fast float %6754, 1.000000e+01
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6757 = fmul fast float %6756, %5039
  %6758 = fadd fast float %6757, %5040
  %6759 = fmul fast float %6758, %6751
  br label %6783

; <label>:6760                                    ; preds = %6727
  %6761 = fadd fast float %6489, %6486
  %6762 = fmul fast float %6709, %6761
  %6763 = fadd fast float %6762, %6712
  %6764 = fmul fast float %6736, %6731
  %6765 = fmul fast float %6736, %6734
  %6766 = fmul fast float %6736, %6763
  %6767 = call float @dx.op.binary.f32(i32 35, float %6764, float %6765)  ; FMax(a,b)
  %6768 = call float @dx.op.binary.f32(i32 35, float %6767, float %6766)  ; FMax(a,b)
  %6769 = call float @dx.op.binary.f32(i32 35, float %6768, float %5040)  ; FMax(a,b)
  %6770 = fcmp fast ugt float %6769, 0x3F10000000000000
  br i1 %6770, label %6772, label %6771

; <label>:6771                                    ; preds = %6760
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6772

; <label>:6772                                    ; preds = %6771, %6760
  %6773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6774 = extractvalue %dx.types.ResRet.i32 %6773, 0
  %6775 = and i32 %6774, 32
  %6776 = icmp eq i32 %6775, 0
  br i1 %6776, label %6783, label %6777

; <label>:6777                                    ; preds = %6772
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 0
  %6780 = fmul fast float %6779, 0x3FE99999A0000000
  %6781 = fadd fast float %6779, %6764
  %6782 = fadd fast float %6780, %6766
  br label %6783

; <label>:6783                                    ; preds = %6777, %6772, %6737
  %6784 = phi float [ %6739, %6737 ], [ %6781, %6777 ], [ %6764, %6772 ]
  %6785 = phi float [ %6759, %6737 ], [ %6765, %6777 ], [ %6765, %6772 ]
  %6786 = phi float [ %6758, %6737 ], [ %6782, %6777 ], [ %6766, %6772 ]
  %6787 = phi float [ %6758, %6737 ], [ %5040, %6777 ], [ %5040, %6772 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6788 = call float @dx.op.binary.f32(i32 36, float %6784, float 3.225500e+04)  ; FMin(a,b)
  %6789 = call float @dx.op.binary.f32(i32 36, float %6785, float 3.225500e+04)  ; FMin(a,b)
  %6790 = call float @dx.op.binary.f32(i32 36, float %6786, float 3.225500e+04)  ; FMin(a,b)
  %6791 = call float @dx.op.binary.f32(i32 36, float %6787, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6788)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6789)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6790)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6791)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
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
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !91, i64 0}
!117 = !{!118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!118 = distinct !{!118, !119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!119 = distinct !{!119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!120 = distinct !{!120, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!121 = distinct !{!121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!122 = distinct !{!122, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!123 = distinct !{!123, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!124 = distinct !{!124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!125 = distinct !{!125, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!126 = distinct !{!126, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!127 = distinct !{!127, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

